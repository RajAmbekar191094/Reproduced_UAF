; ModuleID = '/home/raj/coturn/src/server/ns_turn_allocation.c'
source_filename = "/home/raj/coturn/src/server/ns_turn_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._allocation = type { i32, %struct.stun_tid, %struct._turn_permission_hashtable, [2 x %struct.relay_endpoint_session], [2 x i32], %struct._ch_map, ptr, ptr, %struct._tcp_connection_list }
%struct.stun_tid = type { [12 x i8] }
%struct._turn_permission_hashtable = type { [8 x %struct._turn_permission_array] }
%struct._turn_permission_array = type { [3 x %struct._turn_permission_slot], i64, ptr }
%struct._turn_permission_slot = type { %struct._turn_permission_info }
%struct._turn_permission_info = type { i32, %struct._lm_map, %union.ioa_addr, i32, ptr, ptr, i32, i64 }
%struct._lm_map = type { [8 x %struct._lm_map_array] }
%struct._lm_map_array = type { [3 x i64], [3 x i64], i64, ptr, ptr }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.relay_endpoint_session = type { ptr, i32, ptr }
%struct._ch_map = type { [8 x %struct._chn_map_array] }
%struct._chn_map_array = type { [3 x %struct._ch_info], i64, ptr }
%struct._ch_info = type { i16, i32, i16, %union.ioa_addr, i32, ptr, ptr, ptr }
%struct._tcp_connection_list = type { i64, ptr }
%struct._tcp_connection = type { i32, i32, %union.ioa_addr, ptr, ptr, ptr, ptr, %struct.stun_tid, ptr, i32, %struct.unsent_buffer }
%struct.unsent_buffer = type { i64, ptr }

@.str = private unnamed_addr constant [34 x i8] c"session %018llu: peer %s deleted\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [46 x i8] c"!!! %s: strange (1) permission to be cleaned\0A\00", align 1, !dbg !7
@__FUNCTION__.turn_permission_clean = private unnamed_addr constant [22 x i8] c"turn_permission_clean\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [62 x i8] c"!!! %s: strange (1) channel to be cleaned: port is empty: %s\0A\00", align 1, !dbg !18
@__FUNCTION__.turn_channel_delete = private unnamed_addr constant [20 x i8] c"turn_channel_delete\00", align 1, !dbg !23
@.str.3 = private unnamed_addr constant [64 x i8] c"!!! %s: strange (2) channel to be cleaned: permission is empty\0A\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [60 x i8] c"!!! %s: check on already closed tcp data connection: 0x%lx\0A\00", align 1, !dbg !33
@__FUNCTION__.delete_tcp_connection = private unnamed_addr constant [22 x i8] c"delete_tcp_connection\00", align 1, !dbg !38
@.str.5 = private unnamed_addr constant [52 x i8] c"!!! %s: strange (0) channel to be cleaned: chnum<1\0A\00", align 1, !dbg !40
@__FUNCTION__.delete_channel_info_from_allocation_map = private unnamed_addr constant [40 x i8] c"delete_channel_info_from_allocation_map\00", align 1, !dbg !45

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_allocation(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !308 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !312, metadata !DIExpression()), !dbg !313
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !314, metadata !DIExpression()), !dbg !315
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !316, metadata !DIExpression()), !dbg !317
  %7 = load ptr, ptr %5, align 8, !dbg !318
  %8 = icmp ne ptr %7, null, !dbg !318
  br i1 %8, label %9, label %19, !dbg !320

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8, !dbg !321
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 17640, i1 false), !dbg !323
  %11 = load ptr, ptr %4, align 8, !dbg !324
  %12 = load ptr, ptr %5, align 8, !dbg !325
  %13 = getelementptr inbounds %struct._allocation, ptr %12, i32 0, i32 6, !dbg !326
  store ptr %11, ptr %13, align 8, !dbg !327
  %14 = load ptr, ptr %6, align 8, !dbg !328
  %15 = load ptr, ptr %5, align 8, !dbg !329
  %16 = getelementptr inbounds %struct._allocation, ptr %15, i32 0, i32 7, !dbg !330
  store ptr %14, ptr %16, align 8, !dbg !331
  %17 = load ptr, ptr %5, align 8, !dbg !332
  %18 = getelementptr inbounds %struct._allocation, ptr %17, i32 0, i32 2, !dbg !333
  call void @init_turn_permission_hashtable(ptr noundef %18), !dbg !334
  br label %19, !dbg !335

19:                                               ; preds = %9, %3
  ret void, !dbg !336
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_turn_permission_hashtable(ptr noundef %0) #0 !dbg !337 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !342
  %3 = load ptr, ptr %2, align 8, !dbg !343
  %4 = icmp ne ptr %3, null, !dbg !343
  br i1 %4, label %5, label %7, !dbg !345

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !346
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 15680, i1 false), !dbg !347
  br label %7, !dbg !347

7:                                                ; preds = %5, %1
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_allocation(ptr noundef %0) #0 !dbg !349 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !352, metadata !DIExpression()), !dbg !353
  %7 = load ptr, ptr %2, align 8, !dbg !354
  %8 = icmp ne ptr %7, null, !dbg !354
  br i1 %8, label %9, label %119, !dbg !356

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !357
  %11 = getelementptr inbounds %struct._allocation, ptr %10, i32 0, i32 0, !dbg !360
  %12 = load i32, ptr %11, align 8, !dbg !360
  %13 = icmp ne i32 %12, 0, !dbg !357
  br i1 %13, label %14, label %16, !dbg !361

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !362
  call void @turn_report_allocation_delete(ptr noundef %15), !dbg !363
  br label %16, !dbg !363

16:                                               ; preds = %14, %9
  %17 = load ptr, ptr %2, align 8, !dbg !364
  %18 = getelementptr inbounds %struct._allocation, ptr %17, i32 0, i32 8, !dbg !366
  %19 = getelementptr inbounds %struct._tcp_connection_list, ptr %18, i32 0, i32 1, !dbg !367
  %20 = load ptr, ptr %19, align 8, !dbg !367
  %21 = icmp ne ptr %20, null, !dbg !364
  br i1 %21, label %22, label %61, !dbg !368

22:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %3, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata ptr %4, metadata !372, metadata !DIExpression()), !dbg !373
  %23 = load ptr, ptr %2, align 8, !dbg !374
  %24 = getelementptr inbounds %struct._allocation, ptr %23, i32 0, i32 8, !dbg !375
  %25 = getelementptr inbounds %struct._tcp_connection_list, ptr %24, i32 0, i32 0, !dbg !376
  %26 = load i64, ptr %25, align 8, !dbg !376
  store i64 %26, ptr %4, align 8, !dbg !373
  store i64 0, ptr %3, align 8, !dbg !377
  br label %27, !dbg !379

27:                                               ; preds = %50, %22
  %28 = load i64, ptr %3, align 8, !dbg !380
  %29 = load i64, ptr %4, align 8, !dbg !382
  %30 = icmp ult i64 %28, %29, !dbg !383
  br i1 %30, label %31, label %53, !dbg !384

31:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %5, metadata !385, metadata !DIExpression()), !dbg !387
  %32 = load ptr, ptr %2, align 8, !dbg !388
  %33 = getelementptr inbounds %struct._allocation, ptr %32, i32 0, i32 8, !dbg !389
  %34 = getelementptr inbounds %struct._tcp_connection_list, ptr %33, i32 0, i32 1, !dbg !390
  %35 = load ptr, ptr %34, align 8, !dbg !390
  %36 = load i64, ptr %3, align 8, !dbg !391
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36, !dbg !388
  %38 = load ptr, ptr %37, align 8, !dbg !388
  store ptr %38, ptr %5, align 8, !dbg !387
  %39 = load ptr, ptr %5, align 8, !dbg !392
  %40 = icmp ne ptr %39, null, !dbg !392
  br i1 %40, label %41, label %49, !dbg !394

41:                                               ; preds = %31
  %42 = load ptr, ptr %5, align 8, !dbg !395
  call void @delete_tcp_connection(ptr noundef %42), !dbg !397
  %43 = load ptr, ptr %2, align 8, !dbg !398
  %44 = getelementptr inbounds %struct._allocation, ptr %43, i32 0, i32 8, !dbg !399
  %45 = getelementptr inbounds %struct._tcp_connection_list, ptr %44, i32 0, i32 1, !dbg !400
  %46 = load ptr, ptr %45, align 8, !dbg !400
  %47 = load i64, ptr %3, align 8, !dbg !401
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47, !dbg !398
  store ptr null, ptr %48, align 8, !dbg !402
  br label %49, !dbg !403

49:                                               ; preds = %41, %31
  br label %50, !dbg !404

50:                                               ; preds = %49
  %51 = load i64, ptr %3, align 8, !dbg !405
  %52 = add i64 %51, 1, !dbg !405
  store i64 %52, ptr %3, align 8, !dbg !405
  br label %27, !dbg !406, !llvm.loop !407

53:                                               ; preds = %27
  %54 = load ptr, ptr %2, align 8, !dbg !410
  %55 = getelementptr inbounds %struct._allocation, ptr %54, i32 0, i32 8, !dbg !411
  %56 = getelementptr inbounds %struct._tcp_connection_list, ptr %55, i32 0, i32 1, !dbg !412
  %57 = load ptr, ptr %56, align 8, !dbg !412
  call void @free(ptr noundef %57) #7, !dbg !413
  %58 = load ptr, ptr %2, align 8, !dbg !414
  %59 = getelementptr inbounds %struct._allocation, ptr %58, i32 0, i32 8, !dbg !415
  %60 = getelementptr inbounds %struct._tcp_connection_list, ptr %59, i32 0, i32 1, !dbg !416
  store ptr null, ptr %60, align 8, !dbg !417
  br label %61, !dbg !418

61:                                               ; preds = %53, %16
  %62 = load ptr, ptr %2, align 8, !dbg !419
  %63 = getelementptr inbounds %struct._allocation, ptr %62, i32 0, i32 8, !dbg !420
  %64 = getelementptr inbounds %struct._tcp_connection_list, ptr %63, i32 0, i32 0, !dbg !421
  store i64 0, ptr %64, align 8, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %6, metadata !423, metadata !DIExpression()), !dbg !425
  store i32 0, ptr %6, align 4, !dbg !426
  br label %65, !dbg !428

65:                                               ; preds = %109, %61
  %66 = load i32, ptr %6, align 4, !dbg !429
  %67 = icmp slt i32 %66, 2, !dbg !431
  br i1 %67, label %68, label %112, !dbg !432

68:                                               ; preds = %65
  %69 = load ptr, ptr %2, align 8, !dbg !433
  %70 = getelementptr inbounds %struct._allocation, ptr %69, i32 0, i32 3, !dbg !435
  %71 = load i32, ptr %6, align 4, !dbg !436
  %72 = sext i32 %71 to i64, !dbg !433
  %73 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %70, i64 0, i64 %72, !dbg !433
  %74 = getelementptr inbounds %struct.relay_endpoint_session, ptr %73, i32 0, i32 0, !dbg !437
  %75 = load ptr, ptr %74, align 8, !dbg !437
  %76 = load ptr, ptr %2, align 8, !dbg !438
  %77 = getelementptr inbounds %struct._allocation, ptr %76, i32 0, i32 6, !dbg !439
  %78 = load ptr, ptr %77, align 8, !dbg !439
  call void @clear_ioa_socket_session_if(ptr noundef %75, ptr noundef %78), !dbg !440
  %79 = load ptr, ptr %2, align 8, !dbg !441
  %80 = getelementptr inbounds %struct._allocation, ptr %79, i32 0, i32 3, !dbg !442
  %81 = load i32, ptr %6, align 4, !dbg !443
  %82 = sext i32 %81 to i64, !dbg !441
  %83 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %80, i64 0, i64 %82, !dbg !441
  call void @clear_relay_endpoint_session_data(ptr noundef %83), !dbg !444
  br label %84, !dbg !445

84:                                               ; preds = %68
  %85 = load ptr, ptr %2, align 8, !dbg !446
  %86 = getelementptr inbounds %struct._allocation, ptr %85, i32 0, i32 3, !dbg !446
  %87 = load i32, ptr %6, align 4, !dbg !446
  %88 = sext i32 %87 to i64, !dbg !446
  %89 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %86, i64 0, i64 %88, !dbg !446
  %90 = getelementptr inbounds %struct.relay_endpoint_session, ptr %89, i32 0, i32 2, !dbg !446
  %91 = load ptr, ptr %90, align 8, !dbg !446
  %92 = icmp ne ptr %91, null, !dbg !446
  br i1 %92, label %93, label %107, !dbg !449

93:                                               ; preds = %84
  %94 = load ptr, ptr %2, align 8, !dbg !450
  %95 = getelementptr inbounds %struct._allocation, ptr %94, i32 0, i32 3, !dbg !450
  %96 = load i32, ptr %6, align 4, !dbg !450
  %97 = sext i32 %96 to i64, !dbg !450
  %98 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %95, i64 0, i64 %97, !dbg !450
  %99 = getelementptr inbounds %struct.relay_endpoint_session, ptr %98, i32 0, i32 2, !dbg !450
  %100 = load ptr, ptr %99, align 8, !dbg !450
  call void @delete_ioa_timer(ptr noundef %100), !dbg !450
  %101 = load ptr, ptr %2, align 8, !dbg !450
  %102 = getelementptr inbounds %struct._allocation, ptr %101, i32 0, i32 3, !dbg !450
  %103 = load i32, ptr %6, align 4, !dbg !450
  %104 = sext i32 %103 to i64, !dbg !450
  %105 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %102, i64 0, i64 %104, !dbg !450
  %106 = getelementptr inbounds %struct.relay_endpoint_session, ptr %105, i32 0, i32 2, !dbg !450
  store ptr null, ptr %106, align 8, !dbg !450
  br label %107, !dbg !450

107:                                              ; preds = %93, %84
  br label %108, !dbg !449

108:                                              ; preds = %107
  br label %109, !dbg !452

109:                                              ; preds = %108
  %110 = load i32, ptr %6, align 4, !dbg !453
  %111 = add nsw i32 %110, 1, !dbg !453
  store i32 %111, ptr %6, align 4, !dbg !453
  br label %65, !dbg !454, !llvm.loop !455

112:                                              ; preds = %65
  %113 = load ptr, ptr %2, align 8, !dbg !457
  %114 = getelementptr inbounds %struct._allocation, ptr %113, i32 0, i32 2, !dbg !458
  call void @free_turn_permission_hashtable(ptr noundef %114), !dbg !459
  %115 = load ptr, ptr %2, align 8, !dbg !460
  %116 = getelementptr inbounds %struct._allocation, ptr %115, i32 0, i32 5, !dbg !461
  call void @ch_map_clean(ptr noundef %116), !dbg !462
  %117 = load ptr, ptr %2, align 8, !dbg !463
  %118 = getelementptr inbounds %struct._allocation, ptr %117, i32 0, i32 0, !dbg !464
  store i32 0, ptr %118, align 8, !dbg !465
  br label %119, !dbg !466

119:                                              ; preds = %112, %1
  ret void, !dbg !467
}

declare void @turn_report_allocation_delete(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_tcp_connection(ptr noundef %0) #0 !dbg !468 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !471, metadata !DIExpression()), !dbg !472
  %7 = load ptr, ptr %2, align 8, !dbg !473
  %8 = icmp ne ptr %7, null, !dbg !473
  br i1 %8, label %9, label %129, !dbg !475

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !476
  %11 = getelementptr inbounds %struct._tcp_connection, ptr %10, i32 0, i32 9, !dbg !479
  %12 = load i32, ptr %11, align 8, !dbg !479
  %13 = icmp ne i32 %12, 0, !dbg !476
  br i1 %13, label %14, label %17, !dbg !480

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !481
  %16 = ptrtoint ptr %15 to i64, !dbg !483
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef @__FUNCTION__.delete_tcp_connection, i64 noundef %16), !dbg !484
  br label %129, !dbg !485

17:                                               ; preds = %9
  %18 = load ptr, ptr %2, align 8, !dbg !486
  %19 = getelementptr inbounds %struct._tcp_connection, ptr %18, i32 0, i32 9, !dbg !487
  store i32 1, ptr %19, align 8, !dbg !488
  %20 = load ptr, ptr %2, align 8, !dbg !489
  %21 = getelementptr inbounds %struct._tcp_connection, ptr %20, i32 0, i32 10, !dbg !490
  call void @clear_unsent_buffer(ptr noundef %21), !dbg !491
  br label %22, !dbg !492

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8, !dbg !493
  %24 = getelementptr inbounds %struct._tcp_connection, ptr %23, i32 0, i32 5, !dbg !493
  %25 = load ptr, ptr %24, align 8, !dbg !493
  %26 = icmp ne ptr %25, null, !dbg !493
  br i1 %26, label %27, label %33, !dbg !496

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 8, !dbg !497
  %29 = getelementptr inbounds %struct._tcp_connection, ptr %28, i32 0, i32 5, !dbg !497
  %30 = load ptr, ptr %29, align 8, !dbg !497
  call void @delete_ioa_timer(ptr noundef %30), !dbg !497
  %31 = load ptr, ptr %2, align 8, !dbg !497
  %32 = getelementptr inbounds %struct._tcp_connection, ptr %31, i32 0, i32 5, !dbg !497
  store ptr null, ptr %32, align 8, !dbg !497
  br label %33, !dbg !497

33:                                               ; preds = %27, %22
  br label %34, !dbg !496

34:                                               ; preds = %33
  br label %35, !dbg !499

35:                                               ; preds = %34
  %36 = load ptr, ptr %2, align 8, !dbg !500
  %37 = getelementptr inbounds %struct._tcp_connection, ptr %36, i32 0, i32 6, !dbg !500
  %38 = load ptr, ptr %37, align 8, !dbg !500
  %39 = icmp ne ptr %38, null, !dbg !500
  br i1 %39, label %40, label %46, !dbg !503

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 8, !dbg !504
  %42 = getelementptr inbounds %struct._tcp_connection, ptr %41, i32 0, i32 6, !dbg !504
  %43 = load ptr, ptr %42, align 8, !dbg !504
  call void @delete_ioa_timer(ptr noundef %43), !dbg !504
  %44 = load ptr, ptr %2, align 8, !dbg !504
  %45 = getelementptr inbounds %struct._tcp_connection, ptr %44, i32 0, i32 6, !dbg !504
  store ptr null, ptr %45, align 8, !dbg !504
  br label %46, !dbg !504

46:                                               ; preds = %40, %35
  br label %47, !dbg !503

47:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %3, metadata !506, metadata !DIExpression()), !dbg !507
  %48 = load ptr, ptr %2, align 8, !dbg !508
  %49 = getelementptr inbounds %struct._tcp_connection, ptr %48, i32 0, i32 8, !dbg !509
  %50 = load ptr, ptr %49, align 8, !dbg !509
  store ptr %50, ptr %3, align 8, !dbg !507
  %51 = load ptr, ptr %3, align 8, !dbg !510
  %52 = icmp ne ptr %51, null, !dbg !510
  br i1 %52, label %53, label %101, !dbg !512

53:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %4, metadata !513, metadata !DIExpression()), !dbg !515
  %54 = load ptr, ptr %3, align 8, !dbg !516
  %55 = getelementptr inbounds %struct._allocation, ptr %54, i32 0, i32 7, !dbg !517
  %56 = load ptr, ptr %55, align 8, !dbg !517
  store ptr %56, ptr %4, align 8, !dbg !515
  %57 = load ptr, ptr %4, align 8, !dbg !518
  %58 = icmp ne ptr %57, null, !dbg !518
  br i1 %58, label %59, label %66, !dbg !520

59:                                               ; preds = %53
  %60 = load ptr, ptr %4, align 8, !dbg !521
  %61 = load ptr, ptr %2, align 8, !dbg !523
  %62 = getelementptr inbounds %struct._tcp_connection, ptr %61, i32 0, i32 1, !dbg !524
  %63 = load i32, ptr %62, align 4, !dbg !524
  %64 = zext i32 %63 to i64, !dbg !525
  %65 = call i32 @ur_map_del(ptr noundef %60, i64 noundef %64, ptr noundef null), !dbg !526
  br label %66, !dbg !527

66:                                               ; preds = %59, %53
  call void @llvm.dbg.declare(metadata ptr %5, metadata !528, metadata !DIExpression()), !dbg !530
  %67 = load ptr, ptr %3, align 8, !dbg !531
  %68 = getelementptr inbounds %struct._allocation, ptr %67, i32 0, i32 8, !dbg !532
  store ptr %68, ptr %5, align 8, !dbg !530
  %69 = load ptr, ptr %5, align 8, !dbg !533
  %70 = getelementptr inbounds %struct._tcp_connection_list, ptr %69, i32 0, i32 1, !dbg !535
  %71 = load ptr, ptr %70, align 8, !dbg !535
  %72 = icmp ne ptr %71, null, !dbg !533
  br i1 %72, label %73, label %100, !dbg !536

73:                                               ; preds = %66
  call void @llvm.dbg.declare(metadata ptr %6, metadata !537, metadata !DIExpression()), !dbg !539
  store i64 0, ptr %6, align 8, !dbg !540
  br label %74, !dbg !542

74:                                               ; preds = %96, %73
  %75 = load i64, ptr %6, align 8, !dbg !543
  %76 = load ptr, ptr %5, align 8, !dbg !545
  %77 = getelementptr inbounds %struct._tcp_connection_list, ptr %76, i32 0, i32 0, !dbg !546
  %78 = load i64, ptr %77, align 8, !dbg !546
  %79 = icmp ult i64 %75, %78, !dbg !547
  br i1 %79, label %80, label %99, !dbg !548

80:                                               ; preds = %74
  %81 = load ptr, ptr %5, align 8, !dbg !549
  %82 = getelementptr inbounds %struct._tcp_connection_list, ptr %81, i32 0, i32 1, !dbg !552
  %83 = load ptr, ptr %82, align 8, !dbg !552
  %84 = load i64, ptr %6, align 8, !dbg !553
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84, !dbg !549
  %86 = load ptr, ptr %85, align 8, !dbg !549
  %87 = load ptr, ptr %2, align 8, !dbg !554
  %88 = icmp eq ptr %86, %87, !dbg !555
  br i1 %88, label %89, label %95, !dbg !556

89:                                               ; preds = %80
  %90 = load ptr, ptr %5, align 8, !dbg !557
  %91 = getelementptr inbounds %struct._tcp_connection_list, ptr %90, i32 0, i32 1, !dbg !559
  %92 = load ptr, ptr %91, align 8, !dbg !559
  %93 = load i64, ptr %6, align 8, !dbg !560
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93, !dbg !557
  store ptr null, ptr %94, align 8, !dbg !561
  br label %99, !dbg !562

95:                                               ; preds = %80
  br label %96, !dbg !563

96:                                               ; preds = %95
  %97 = load i64, ptr %6, align 8, !dbg !564
  %98 = add i64 %97, 1, !dbg !564
  store i64 %98, ptr %6, align 8, !dbg !564
  br label %74, !dbg !565, !llvm.loop !566

99:                                               ; preds = %89, %74
  br label %100, !dbg !568

100:                                              ; preds = %99, %66
  br label %101, !dbg !569

101:                                              ; preds = %100, %47
  br label %102, !dbg !570

102:                                              ; preds = %101
  %103 = load ptr, ptr %2, align 8, !dbg !571
  %104 = getelementptr inbounds %struct._tcp_connection, ptr %103, i32 0, i32 3, !dbg !571
  %105 = load ptr, ptr %104, align 8, !dbg !571
  %106 = icmp ne ptr %105, null, !dbg !571
  br i1 %106, label %107, label %113, !dbg !574

107:                                              ; preds = %102
  %108 = load ptr, ptr %2, align 8, !dbg !575
  %109 = getelementptr inbounds %struct._tcp_connection, ptr %108, i32 0, i32 3, !dbg !575
  %110 = load ptr, ptr %109, align 8, !dbg !575
  call void @close_ioa_socket(ptr noundef %110), !dbg !575
  %111 = load ptr, ptr %2, align 8, !dbg !575
  %112 = getelementptr inbounds %struct._tcp_connection, ptr %111, i32 0, i32 3, !dbg !575
  store ptr null, ptr %112, align 8, !dbg !575
  br label %113, !dbg !575

113:                                              ; preds = %107, %102
  br label %114, !dbg !574

114:                                              ; preds = %113
  br label %115, !dbg !577

115:                                              ; preds = %114
  %116 = load ptr, ptr %2, align 8, !dbg !578
  %117 = getelementptr inbounds %struct._tcp_connection, ptr %116, i32 0, i32 4, !dbg !578
  %118 = load ptr, ptr %117, align 8, !dbg !578
  %119 = icmp ne ptr %118, null, !dbg !578
  br i1 %119, label %120, label %126, !dbg !581

120:                                              ; preds = %115
  %121 = load ptr, ptr %2, align 8, !dbg !582
  %122 = getelementptr inbounds %struct._tcp_connection, ptr %121, i32 0, i32 4, !dbg !582
  %123 = load ptr, ptr %122, align 8, !dbg !582
  call void @close_ioa_socket(ptr noundef %123), !dbg !582
  %124 = load ptr, ptr %2, align 8, !dbg !582
  %125 = getelementptr inbounds %struct._tcp_connection, ptr %124, i32 0, i32 4, !dbg !582
  store ptr null, ptr %125, align 8, !dbg !582
  br label %126, !dbg !582

126:                                              ; preds = %120, %115
  br label %127, !dbg !581

127:                                              ; preds = %126
  %128 = load ptr, ptr %2, align 8, !dbg !584
  call void @free(ptr noundef %128) #7, !dbg !585
  br label %129, !dbg !586

129:                                              ; preds = %14, %127, %1
  ret void, !dbg !587
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare void @clear_ioa_socket_session_if(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_relay_endpoint_session_data(ptr noundef %0) #0 !dbg !588 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !592, metadata !DIExpression()), !dbg !593
  %3 = load ptr, ptr %2, align 8, !dbg !594
  %4 = icmp ne ptr %3, null, !dbg !594
  br i1 %4, label %5, label %19, !dbg !596

5:                                                ; preds = %1
  br label %6, !dbg !597

6:                                                ; preds = %5
  %7 = load ptr, ptr %2, align 8, !dbg !598
  %8 = getelementptr inbounds %struct.relay_endpoint_session, ptr %7, i32 0, i32 0, !dbg !598
  %9 = load ptr, ptr %8, align 8, !dbg !598
  %10 = icmp ne ptr %9, null, !dbg !598
  br i1 %10, label %11, label %17, !dbg !601

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !dbg !602
  %13 = getelementptr inbounds %struct.relay_endpoint_session, ptr %12, i32 0, i32 0, !dbg !602
  %14 = load ptr, ptr %13, align 8, !dbg !602
  call void @close_ioa_socket(ptr noundef %14), !dbg !602
  %15 = load ptr, ptr %2, align 8, !dbg !602
  %16 = getelementptr inbounds %struct.relay_endpoint_session, ptr %15, i32 0, i32 0, !dbg !602
  store ptr null, ptr %16, align 8, !dbg !602
  br label %17, !dbg !602

17:                                               ; preds = %11, %6
  br label %18, !dbg !601

18:                                               ; preds = %17
  br label %19, !dbg !601

19:                                               ; preds = %18, %1
  ret void, !dbg !604
}

declare void @delete_ioa_timer(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_turn_permission_hashtable(ptr noundef %0) #0 !dbg !605 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !606, metadata !DIExpression()), !dbg !607
  %9 = load ptr, ptr %2, align 8, !dbg !608
  %10 = icmp ne ptr %9, null, !dbg !608
  br i1 %10, label %11, label %89, !dbg !610

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !611, metadata !DIExpression()), !dbg !613
  store i64 0, ptr %3, align 8, !dbg !614
  br label %12, !dbg !616

12:                                               ; preds = %85, %11
  %13 = load i64, ptr %3, align 8, !dbg !617
  %14 = icmp ult i64 %13, 8, !dbg !619
  br i1 %14, label %15, label %88, !dbg !620

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !621, metadata !DIExpression()), !dbg !624
  %16 = load ptr, ptr %2, align 8, !dbg !625
  %17 = getelementptr inbounds %struct._turn_permission_hashtable, ptr %16, i32 0, i32 0, !dbg !626
  %18 = load i64, ptr %3, align 8, !dbg !627
  %19 = getelementptr inbounds [8 x %struct._turn_permission_array], ptr %17, i64 0, i64 %18, !dbg !625
  store ptr %19, ptr %4, align 8, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %5, metadata !628, metadata !DIExpression()), !dbg !630
  store i64 0, ptr %5, align 8, !dbg !631
  br label %20, !dbg !633

20:                                               ; preds = %37, %15
  %21 = load i64, ptr %5, align 8, !dbg !634
  %22 = icmp ult i64 %21, 3, !dbg !636
  br i1 %22, label %23, label %40, !dbg !637

23:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %6, metadata !638, metadata !DIExpression()), !dbg !640
  %24 = load ptr, ptr %4, align 8, !dbg !641
  %25 = getelementptr inbounds %struct._turn_permission_array, ptr %24, i32 0, i32 0, !dbg !642
  %26 = load i64, ptr %5, align 8, !dbg !643
  %27 = getelementptr inbounds [3 x %struct._turn_permission_slot], ptr %25, i64 0, i64 %26, !dbg !641
  store ptr %27, ptr %6, align 8, !dbg !640
  %28 = load ptr, ptr %6, align 8, !dbg !644
  %29 = getelementptr inbounds %struct._turn_permission_slot, ptr %28, i32 0, i32 0, !dbg !646
  %30 = getelementptr inbounds %struct._turn_permission_info, ptr %29, i32 0, i32 0, !dbg !647
  %31 = load i32, ptr %30, align 8, !dbg !647
  %32 = icmp ne i32 %31, 0, !dbg !644
  br i1 %32, label %33, label %36, !dbg !648

33:                                               ; preds = %23
  %34 = load ptr, ptr %6, align 8, !dbg !649
  %35 = getelementptr inbounds %struct._turn_permission_slot, ptr %34, i32 0, i32 0, !dbg !651
  call void @turn_permission_clean(ptr noundef %35), !dbg !652
  br label %36, !dbg !653

36:                                               ; preds = %33, %23
  br label %37, !dbg !654

37:                                               ; preds = %36
  %38 = load i64, ptr %5, align 8, !dbg !655
  %39 = add i64 %38, 1, !dbg !655
  store i64 %39, ptr %5, align 8, !dbg !655
  br label %20, !dbg !656, !llvm.loop !657

40:                                               ; preds = %20
  %41 = load ptr, ptr %4, align 8, !dbg !659
  %42 = getelementptr inbounds %struct._turn_permission_array, ptr %41, i32 0, i32 2, !dbg !661
  %43 = load ptr, ptr %42, align 8, !dbg !661
  %44 = icmp ne ptr %43, null, !dbg !659
  br i1 %44, label %45, label %82, !dbg !662

45:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %7, metadata !663, metadata !DIExpression()), !dbg !665
  store i64 0, ptr %7, align 8, !dbg !666
  br label %46, !dbg !668

46:                                               ; preds = %73, %45
  %47 = load i64, ptr %7, align 8, !dbg !669
  %48 = load ptr, ptr %4, align 8, !dbg !671
  %49 = getelementptr inbounds %struct._turn_permission_array, ptr %48, i32 0, i32 1, !dbg !672
  %50 = load i64, ptr %49, align 8, !dbg !672
  %51 = icmp ult i64 %47, %50, !dbg !673
  br i1 %51, label %52, label %76, !dbg !674

52:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %8, metadata !675, metadata !DIExpression()), !dbg !677
  %53 = load ptr, ptr %4, align 8, !dbg !678
  %54 = getelementptr inbounds %struct._turn_permission_array, ptr %53, i32 0, i32 2, !dbg !679
  %55 = load ptr, ptr %54, align 8, !dbg !679
  %56 = load i64, ptr %7, align 8, !dbg !680
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56, !dbg !678
  %58 = load ptr, ptr %57, align 8, !dbg !678
  store ptr %58, ptr %8, align 8, !dbg !677
  %59 = load ptr, ptr %8, align 8, !dbg !681
  %60 = icmp ne ptr %59, null, !dbg !681
  br i1 %60, label %61, label %72, !dbg !683

61:                                               ; preds = %52
  %62 = load ptr, ptr %8, align 8, !dbg !684
  %63 = getelementptr inbounds %struct._turn_permission_slot, ptr %62, i32 0, i32 0, !dbg !687
  %64 = getelementptr inbounds %struct._turn_permission_info, ptr %63, i32 0, i32 0, !dbg !688
  %65 = load i32, ptr %64, align 8, !dbg !688
  %66 = icmp ne i32 %65, 0, !dbg !684
  br i1 %66, label %67, label %70, !dbg !689

67:                                               ; preds = %61
  %68 = load ptr, ptr %8, align 8, !dbg !690
  %69 = getelementptr inbounds %struct._turn_permission_slot, ptr %68, i32 0, i32 0, !dbg !692
  call void @turn_permission_clean(ptr noundef %69), !dbg !693
  br label %70, !dbg !694

70:                                               ; preds = %67, %61
  %71 = load ptr, ptr %8, align 8, !dbg !695
  call void @free(ptr noundef %71) #7, !dbg !696
  br label %72, !dbg !697

72:                                               ; preds = %70, %52
  br label %73, !dbg !698

73:                                               ; preds = %72
  %74 = load i64, ptr %7, align 8, !dbg !699
  %75 = add i64 %74, 1, !dbg !699
  store i64 %75, ptr %7, align 8, !dbg !699
  br label %46, !dbg !700, !llvm.loop !701

76:                                               ; preds = %46
  %77 = load ptr, ptr %4, align 8, !dbg !703
  %78 = getelementptr inbounds %struct._turn_permission_array, ptr %77, i32 0, i32 2, !dbg !704
  %79 = load ptr, ptr %78, align 8, !dbg !704
  call void @free(ptr noundef %79) #7, !dbg !705
  %80 = load ptr, ptr %4, align 8, !dbg !706
  %81 = getelementptr inbounds %struct._turn_permission_array, ptr %80, i32 0, i32 2, !dbg !707
  store ptr null, ptr %81, align 8, !dbg !708
  br label %82, !dbg !709

82:                                               ; preds = %76, %40
  %83 = load ptr, ptr %4, align 8, !dbg !710
  %84 = getelementptr inbounds %struct._turn_permission_array, ptr %83, i32 0, i32 1, !dbg !711
  store i64 0, ptr %84, align 8, !dbg !712
  br label %85, !dbg !713

85:                                               ; preds = %82
  %86 = load i64, ptr %3, align 8, !dbg !714
  %87 = add i64 %86, 1, !dbg !714
  store i64 %87, ptr %3, align 8, !dbg !714
  br label %12, !dbg !715, !llvm.loop !716

88:                                               ; preds = %12
  br label %89, !dbg !718

89:                                               ; preds = %88, %1
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ch_map_clean(ptr noundef %0) #0 !dbg !720 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !724, metadata !DIExpression()), !dbg !725
  %9 = load ptr, ptr %2, align 8, !dbg !726
  %10 = icmp ne ptr %9, null, !dbg !726
  br i1 %10, label %11, label %91, !dbg !728

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !729, metadata !DIExpression()), !dbg !731
  store i64 0, ptr %3, align 8, !dbg !732
  br label %12, !dbg !734

12:                                               ; preds = %87, %11
  %13 = load i64, ptr %3, align 8, !dbg !735
  %14 = icmp ult i64 %13, 8, !dbg !737
  br i1 %14, label %15, label %90, !dbg !738

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !739, metadata !DIExpression()), !dbg !742
  %16 = load ptr, ptr %2, align 8, !dbg !743
  %17 = getelementptr inbounds %struct._ch_map, ptr %16, i32 0, i32 0, !dbg !744
  %18 = load i64, ptr %3, align 8, !dbg !745
  %19 = getelementptr inbounds [8 x %struct._chn_map_array], ptr %17, i64 0, i64 %18, !dbg !743
  store ptr %19, ptr %4, align 8, !dbg !742
  call void @llvm.dbg.declare(metadata ptr %5, metadata !746, metadata !DIExpression()), !dbg !747
  store i64 0, ptr %5, align 8, !dbg !748
  br label %20, !dbg !750

20:                                               ; preds = %35, %15
  %21 = load i64, ptr %5, align 8, !dbg !751
  %22 = icmp ult i64 %21, 3, !dbg !753
  br i1 %22, label %23, label %38, !dbg !754

23:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %6, metadata !755, metadata !DIExpression()), !dbg !757
  %24 = load ptr, ptr %4, align 8, !dbg !758
  %25 = getelementptr inbounds %struct._chn_map_array, ptr %24, i32 0, i32 0, !dbg !759
  %26 = load i64, ptr %5, align 8, !dbg !760
  %27 = getelementptr inbounds [3 x %struct._ch_info], ptr %25, i64 0, i64 %26, !dbg !758
  store ptr %27, ptr %6, align 8, !dbg !757
  %28 = load ptr, ptr %6, align 8, !dbg !761
  %29 = getelementptr inbounds %struct._ch_info, ptr %28, i32 0, i32 1, !dbg !763
  %30 = load i32, ptr %29, align 4, !dbg !763
  %31 = icmp ne i32 %30, 0, !dbg !761
  br i1 %31, label %32, label %34, !dbg !764

32:                                               ; preds = %23
  %33 = load ptr, ptr %6, align 8, !dbg !765
  call void @ch_info_clean(ptr noundef %33), !dbg !767
  br label %34, !dbg !768

34:                                               ; preds = %32, %23
  br label %35, !dbg !769

35:                                               ; preds = %34
  %36 = load i64, ptr %5, align 8, !dbg !770
  %37 = add i64 %36, 1, !dbg !770
  store i64 %37, ptr %5, align 8, !dbg !770
  br label %20, !dbg !771, !llvm.loop !772

38:                                               ; preds = %20
  %39 = load ptr, ptr %4, align 8, !dbg !774
  %40 = getelementptr inbounds %struct._chn_map_array, ptr %39, i32 0, i32 2, !dbg !776
  %41 = load ptr, ptr %40, align 8, !dbg !776
  %42 = icmp ne ptr %41, null, !dbg !774
  br i1 %42, label %43, label %84, !dbg !777

43:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %7, metadata !778, metadata !DIExpression()), !dbg !780
  %44 = load ptr, ptr %4, align 8, !dbg !781
  %45 = getelementptr inbounds %struct._chn_map_array, ptr %44, i32 0, i32 1, !dbg !782
  %46 = load i64, ptr %45, align 8, !dbg !782
  store i64 %46, ptr %7, align 8, !dbg !780
  store i64 0, ptr %5, align 8, !dbg !783
  br label %47, !dbg !785

47:                                               ; preds = %75, %43
  %48 = load i64, ptr %5, align 8, !dbg !786
  %49 = load i64, ptr %7, align 8, !dbg !788
  %50 = icmp ult i64 %48, %49, !dbg !789
  br i1 %50, label %51, label %78, !dbg !790

51:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %8, metadata !791, metadata !DIExpression()), !dbg !793
  %52 = load ptr, ptr %4, align 8, !dbg !794
  %53 = getelementptr inbounds %struct._chn_map_array, ptr %52, i32 0, i32 2, !dbg !795
  %54 = load ptr, ptr %53, align 8, !dbg !795
  %55 = load i64, ptr %5, align 8, !dbg !796
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55, !dbg !794
  %57 = load ptr, ptr %56, align 8, !dbg !794
  store ptr %57, ptr %8, align 8, !dbg !793
  %58 = load ptr, ptr %8, align 8, !dbg !797
  %59 = icmp ne ptr %58, null, !dbg !797
  br i1 %59, label %60, label %74, !dbg !799

60:                                               ; preds = %51
  %61 = load ptr, ptr %8, align 8, !dbg !800
  %62 = getelementptr inbounds %struct._ch_info, ptr %61, i32 0, i32 1, !dbg !803
  %63 = load i32, ptr %62, align 4, !dbg !803
  %64 = icmp ne i32 %63, 0, !dbg !800
  br i1 %64, label %65, label %67, !dbg !804

65:                                               ; preds = %60
  %66 = load ptr, ptr %8, align 8, !dbg !805
  call void @ch_info_clean(ptr noundef %66), !dbg !807
  br label %67, !dbg !808

67:                                               ; preds = %65, %60
  %68 = load ptr, ptr %8, align 8, !dbg !809
  call void @free(ptr noundef %68) #7, !dbg !810
  %69 = load ptr, ptr %4, align 8, !dbg !811
  %70 = getelementptr inbounds %struct._chn_map_array, ptr %69, i32 0, i32 2, !dbg !812
  %71 = load ptr, ptr %70, align 8, !dbg !812
  %72 = load i64, ptr %5, align 8, !dbg !813
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72, !dbg !811
  store ptr null, ptr %73, align 8, !dbg !814
  br label %74, !dbg !815

74:                                               ; preds = %67, %51
  br label %75, !dbg !816

75:                                               ; preds = %74
  %76 = load i64, ptr %5, align 8, !dbg !817
  %77 = add i64 %76, 1, !dbg !817
  store i64 %77, ptr %5, align 8, !dbg !817
  br label %47, !dbg !818, !llvm.loop !819

78:                                               ; preds = %47
  %79 = load ptr, ptr %4, align 8, !dbg !821
  %80 = getelementptr inbounds %struct._chn_map_array, ptr %79, i32 0, i32 2, !dbg !822
  %81 = load ptr, ptr %80, align 8, !dbg !822
  call void @free(ptr noundef %81) #7, !dbg !823
  %82 = load ptr, ptr %4, align 8, !dbg !824
  %83 = getelementptr inbounds %struct._chn_map_array, ptr %82, i32 0, i32 2, !dbg !825
  store ptr null, ptr %83, align 8, !dbg !826
  br label %84, !dbg !827

84:                                               ; preds = %78, %38
  %85 = load ptr, ptr %4, align 8, !dbg !828
  %86 = getelementptr inbounds %struct._chn_map_array, ptr %85, i32 0, i32 1, !dbg !829
  store i64 0, ptr %86, align 8, !dbg !830
  br label %87, !dbg !831

87:                                               ; preds = %84
  %88 = load i64, ptr %3, align 8, !dbg !832
  %89 = add i64 %88, 1, !dbg !832
  store i64 %89, ptr %3, align 8, !dbg !832
  br label %12, !dbg !833, !llvm.loop !834

90:                                               ; preds = %12
  br label %91, !dbg !836

91:                                               ; preds = %90, %1
  ret void, !dbg !837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_relay_session(ptr noundef %0, i32 noundef %1) #0 !dbg !838 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !841, metadata !DIExpression()), !dbg !842
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !843, metadata !DIExpression()), !dbg !844
  %6 = load ptr, ptr %4, align 8, !dbg !845
  %7 = icmp ne ptr %6, null, !dbg !845
  br i1 %7, label %8, label %17, !dbg !847

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !848
  %10 = getelementptr inbounds %struct._allocation, ptr %9, i32 0, i32 3, !dbg !849
  %11 = load i32, ptr %5, align 4, !dbg !850
  %12 = icmp eq i32 %11, 10, !dbg !850
  %13 = zext i1 %12 to i64, !dbg !850
  %14 = select i1 %12, i32 1, i32 0, !dbg !850
  %15 = sext i32 %14 to i64, !dbg !848
  %16 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %10, i64 0, i64 %15, !dbg !848
  store ptr %16, ptr %3, align 8, !dbg !851
  br label %18, !dbg !851

17:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !852
  br label %18, !dbg !852

18:                                               ; preds = %17, %8
  %19 = load ptr, ptr %3, align 8, !dbg !853
  ret ptr %19, !dbg !853
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_relay_session_failure(ptr noundef %0, i32 noundef %1) #0 !dbg !854 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !857, metadata !DIExpression()), !dbg !858
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !859, metadata !DIExpression()), !dbg !860
  %6 = load ptr, ptr %4, align 8, !dbg !861
  %7 = icmp ne ptr %6, null, !dbg !861
  br i1 %7, label %8, label %18, !dbg !863

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !864
  %10 = getelementptr inbounds %struct._allocation, ptr %9, i32 0, i32 4, !dbg !865
  %11 = load i32, ptr %5, align 4, !dbg !866
  %12 = icmp eq i32 %11, 10, !dbg !866
  %13 = zext i1 %12 to i64, !dbg !866
  %14 = select i1 %12, i32 1, i32 0, !dbg !866
  %15 = sext i32 %14 to i64, !dbg !864
  %16 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 %15, !dbg !864
  %17 = load i32, ptr %16, align 4, !dbg !864
  store i32 %17, ptr %3, align 4, !dbg !867
  br label %19, !dbg !867

18:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !868
  br label %19, !dbg !868

19:                                               ; preds = %18, %8
  %20 = load i32, ptr %3, align 4, !dbg !869
  ret i32 %20, !dbg !869
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_relay_session_failure(ptr noundef %0, i32 noundef %1) #0 !dbg !870 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !873, metadata !DIExpression()), !dbg !874
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !875, metadata !DIExpression()), !dbg !876
  %5 = load ptr, ptr %3, align 8, !dbg !877
  %6 = icmp ne ptr %5, null, !dbg !877
  br i1 %6, label %7, label %16, !dbg !879

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !880
  %9 = getelementptr inbounds %struct._allocation, ptr %8, i32 0, i32 4, !dbg !881
  %10 = load i32, ptr %4, align 4, !dbg !882
  %11 = icmp eq i32 %10, 10, !dbg !882
  %12 = zext i1 %11 to i64, !dbg !882
  %13 = select i1 %11, i32 1, i32 0, !dbg !882
  %14 = sext i32 %13 to i64, !dbg !880
  %15 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 %14, !dbg !880
  store i32 1, ptr %15, align 4, !dbg !883
  br label %16, !dbg !880

16:                                               ; preds = %7, %2
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_relay_socket(ptr noundef %0, i32 noundef %1) #0 !dbg !885 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !888, metadata !DIExpression()), !dbg !889
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !890, metadata !DIExpression()), !dbg !891
  %6 = load ptr, ptr %4, align 8, !dbg !892
  %7 = icmp ne ptr %6, null, !dbg !892
  br i1 %7, label %8, label %19, !dbg !894

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !895
  %10 = getelementptr inbounds %struct._allocation, ptr %9, i32 0, i32 3, !dbg !896
  %11 = load i32, ptr %5, align 4, !dbg !897
  %12 = icmp eq i32 %11, 10, !dbg !897
  %13 = zext i1 %12 to i64, !dbg !897
  %14 = select i1 %12, i32 1, i32 0, !dbg !897
  %15 = sext i32 %14 to i64, !dbg !895
  %16 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %10, i64 0, i64 %15, !dbg !895
  %17 = getelementptr inbounds %struct.relay_endpoint_session, ptr %16, i32 0, i32 0, !dbg !898
  %18 = load ptr, ptr %17, align 8, !dbg !898
  store ptr %18, ptr %3, align 8, !dbg !899
  br label %20, !dbg !899

19:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !900
  br label %20, !dbg !900

20:                                               ; preds = %19, %8
  %21 = load ptr, ptr %3, align 8, !dbg !901
  ret ptr %21, !dbg !901
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_allocation_family_invalid(ptr noundef %0, i32 noundef %1) #0 !dbg !902 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !903, metadata !DIExpression()), !dbg !904
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !905, metadata !DIExpression()), !dbg !906
  %9 = load ptr, ptr %3, align 8, !dbg !907
  %10 = icmp ne ptr %9, null, !dbg !907
  br i1 %10, label %11, label %112, !dbg !909

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !910, metadata !DIExpression()), !dbg !912
  %12 = load i32, ptr %4, align 4, !dbg !913
  %13 = icmp eq i32 %12, 10, !dbg !913
  %14 = zext i1 %13 to i64, !dbg !913
  %15 = select i1 %13, i32 1, i32 0, !dbg !913
  %16 = sext i32 %15 to i64, !dbg !913
  store i64 %16, ptr %5, align 8, !dbg !912
  %17 = load ptr, ptr %3, align 8, !dbg !914
  %18 = getelementptr inbounds %struct._allocation, ptr %17, i32 0, i32 3, !dbg !916
  %19 = load i64, ptr %5, align 8, !dbg !917
  %20 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %18, i64 0, i64 %19, !dbg !914
  %21 = getelementptr inbounds %struct.relay_endpoint_session, ptr %20, i32 0, i32 0, !dbg !918
  %22 = load ptr, ptr %21, align 8, !dbg !918
  %23 = icmp ne ptr %22, null, !dbg !914
  br i1 %23, label %24, label %111, !dbg !919

24:                                               ; preds = %11
  %25 = load ptr, ptr %3, align 8, !dbg !920
  %26 = getelementptr inbounds %struct._allocation, ptr %25, i32 0, i32 8, !dbg !923
  %27 = getelementptr inbounds %struct._tcp_connection_list, ptr %26, i32 0, i32 1, !dbg !924
  %28 = load ptr, ptr %27, align 8, !dbg !924
  %29 = icmp ne ptr %28, null, !dbg !920
  br i1 %29, label %30, label %75, !dbg !925

30:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %6, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata ptr %7, metadata !929, metadata !DIExpression()), !dbg !930
  %31 = load ptr, ptr %3, align 8, !dbg !931
  %32 = getelementptr inbounds %struct._allocation, ptr %31, i32 0, i32 8, !dbg !932
  %33 = getelementptr inbounds %struct._tcp_connection_list, ptr %32, i32 0, i32 0, !dbg !933
  %34 = load i64, ptr %33, align 8, !dbg !933
  store i64 %34, ptr %7, align 8, !dbg !930
  store i64 0, ptr %6, align 8, !dbg !934
  br label %35, !dbg !936

35:                                               ; preds = %71, %30
  %36 = load i64, ptr %6, align 8, !dbg !937
  %37 = load i64, ptr %7, align 8, !dbg !939
  %38 = icmp ult i64 %36, %37, !dbg !940
  br i1 %38, label %39, label %74, !dbg !941

39:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %8, metadata !942, metadata !DIExpression()), !dbg !944
  %40 = load ptr, ptr %3, align 8, !dbg !945
  %41 = getelementptr inbounds %struct._allocation, ptr %40, i32 0, i32 8, !dbg !946
  %42 = getelementptr inbounds %struct._tcp_connection_list, ptr %41, i32 0, i32 1, !dbg !947
  %43 = load ptr, ptr %42, align 8, !dbg !947
  %44 = load i64, ptr %6, align 8, !dbg !948
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44, !dbg !945
  %46 = load ptr, ptr %45, align 8, !dbg !945
  store ptr %46, ptr %8, align 8, !dbg !944
  %47 = load ptr, ptr %8, align 8, !dbg !949
  %48 = icmp ne ptr %47, null, !dbg !949
  br i1 %48, label %49, label %70, !dbg !951

49:                                               ; preds = %39
  %50 = load ptr, ptr %8, align 8, !dbg !952
  %51 = getelementptr inbounds %struct._tcp_connection, ptr %50, i32 0, i32 4, !dbg !955
  %52 = load ptr, ptr %51, align 8, !dbg !955
  %53 = icmp ne ptr %52, null, !dbg !952
  br i1 %53, label %54, label %69, !dbg !956

54:                                               ; preds = %49
  %55 = load ptr, ptr %8, align 8, !dbg !957
  %56 = getelementptr inbounds %struct._tcp_connection, ptr %55, i32 0, i32 4, !dbg !958
  %57 = load ptr, ptr %56, align 8, !dbg !958
  %58 = call i32 @get_ioa_socket_address_family(ptr noundef %57), !dbg !959
  %59 = load i32, ptr %4, align 4, !dbg !960
  %60 = icmp eq i32 %58, %59, !dbg !961
  br i1 %60, label %61, label %69, !dbg !962

61:                                               ; preds = %54
  %62 = load ptr, ptr %8, align 8, !dbg !963
  call void @delete_tcp_connection(ptr noundef %62), !dbg !965
  %63 = load ptr, ptr %3, align 8, !dbg !966
  %64 = getelementptr inbounds %struct._allocation, ptr %63, i32 0, i32 8, !dbg !967
  %65 = getelementptr inbounds %struct._tcp_connection_list, ptr %64, i32 0, i32 1, !dbg !968
  %66 = load ptr, ptr %65, align 8, !dbg !968
  %67 = load i64, ptr %6, align 8, !dbg !969
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67, !dbg !966
  store ptr null, ptr %68, align 8, !dbg !970
  br label %69, !dbg !971

69:                                               ; preds = %61, %54, %49
  br label %70, !dbg !972

70:                                               ; preds = %69, %39
  br label %71, !dbg !973

71:                                               ; preds = %70
  %72 = load i64, ptr %6, align 8, !dbg !974
  %73 = add i64 %72, 1, !dbg !974
  store i64 %73, ptr %6, align 8, !dbg !974
  br label %35, !dbg !975, !llvm.loop !976

74:                                               ; preds = %35
  br label %75, !dbg !978

75:                                               ; preds = %74, %24
  %76 = load ptr, ptr %3, align 8, !dbg !979
  %77 = getelementptr inbounds %struct._allocation, ptr %76, i32 0, i32 3, !dbg !980
  %78 = load i64, ptr %5, align 8, !dbg !981
  %79 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %77, i64 0, i64 %78, !dbg !979
  %80 = getelementptr inbounds %struct.relay_endpoint_session, ptr %79, i32 0, i32 0, !dbg !982
  %81 = load ptr, ptr %80, align 8, !dbg !982
  %82 = load ptr, ptr %3, align 8, !dbg !983
  %83 = getelementptr inbounds %struct._allocation, ptr %82, i32 0, i32 6, !dbg !984
  %84 = load ptr, ptr %83, align 8, !dbg !984
  call void @clear_ioa_socket_session_if(ptr noundef %81, ptr noundef %84), !dbg !985
  %85 = load ptr, ptr %3, align 8, !dbg !986
  %86 = getelementptr inbounds %struct._allocation, ptr %85, i32 0, i32 3, !dbg !987
  %87 = load i64, ptr %5, align 8, !dbg !988
  %88 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %86, i64 0, i64 %87, !dbg !986
  call void @clear_relay_endpoint_session_data(ptr noundef %88), !dbg !989
  br label %89, !dbg !990

89:                                               ; preds = %75
  %90 = load ptr, ptr %3, align 8, !dbg !991
  %91 = getelementptr inbounds %struct._allocation, ptr %90, i32 0, i32 3, !dbg !991
  %92 = load i64, ptr %5, align 8, !dbg !991
  %93 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %91, i64 0, i64 %92, !dbg !991
  %94 = getelementptr inbounds %struct.relay_endpoint_session, ptr %93, i32 0, i32 2, !dbg !991
  %95 = load ptr, ptr %94, align 8, !dbg !991
  %96 = icmp ne ptr %95, null, !dbg !991
  br i1 %96, label %97, label %109, !dbg !994

97:                                               ; preds = %89
  %98 = load ptr, ptr %3, align 8, !dbg !995
  %99 = getelementptr inbounds %struct._allocation, ptr %98, i32 0, i32 3, !dbg !995
  %100 = load i64, ptr %5, align 8, !dbg !995
  %101 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %99, i64 0, i64 %100, !dbg !995
  %102 = getelementptr inbounds %struct.relay_endpoint_session, ptr %101, i32 0, i32 2, !dbg !995
  %103 = load ptr, ptr %102, align 8, !dbg !995
  call void @delete_ioa_timer(ptr noundef %103), !dbg !995
  %104 = load ptr, ptr %3, align 8, !dbg !995
  %105 = getelementptr inbounds %struct._allocation, ptr %104, i32 0, i32 3, !dbg !995
  %106 = load i64, ptr %5, align 8, !dbg !995
  %107 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %105, i64 0, i64 %106, !dbg !995
  %108 = getelementptr inbounds %struct.relay_endpoint_session, ptr %107, i32 0, i32 2, !dbg !995
  store ptr null, ptr %108, align 8, !dbg !995
  br label %109, !dbg !995

109:                                              ; preds = %97, %89
  br label %110, !dbg !994

110:                                              ; preds = %109
  br label %111, !dbg !997

111:                                              ; preds = %110, %11
  br label %112, !dbg !998

112:                                              ; preds = %111, %2
  ret void, !dbg !999
}

declare i32 @get_ioa_socket_address_family(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_allocation_lifetime_ev(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1000 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1003, metadata !DIExpression()), !dbg !1004
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1005, metadata !DIExpression()), !dbg !1006
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1007, metadata !DIExpression()), !dbg !1008
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1009, metadata !DIExpression()), !dbg !1010
  %9 = load ptr, ptr %5, align 8, !dbg !1011
  %10 = icmp ne ptr %9, null, !dbg !1011
  br i1 %10, label %11, label %66, !dbg !1013

11:                                               ; preds = %4
  br label %12, !dbg !1014

12:                                               ; preds = %11
  %13 = load ptr, ptr %5, align 8, !dbg !1016
  %14 = getelementptr inbounds %struct._allocation, ptr %13, i32 0, i32 3, !dbg !1016
  %15 = load i32, ptr %8, align 4, !dbg !1016
  %16 = icmp eq i32 %15, 10, !dbg !1016
  %17 = zext i1 %16 to i64, !dbg !1016
  %18 = select i1 %16, i32 1, i32 0, !dbg !1016
  %19 = sext i32 %18 to i64, !dbg !1016
  %20 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %14, i64 0, i64 %19, !dbg !1016
  %21 = getelementptr inbounds %struct.relay_endpoint_session, ptr %20, i32 0, i32 2, !dbg !1016
  %22 = load ptr, ptr %21, align 8, !dbg !1016
  %23 = icmp ne ptr %22, null, !dbg !1016
  br i1 %23, label %24, label %44, !dbg !1019

24:                                               ; preds = %12
  %25 = load ptr, ptr %5, align 8, !dbg !1020
  %26 = getelementptr inbounds %struct._allocation, ptr %25, i32 0, i32 3, !dbg !1020
  %27 = load i32, ptr %8, align 4, !dbg !1020
  %28 = icmp eq i32 %27, 10, !dbg !1020
  %29 = zext i1 %28 to i64, !dbg !1020
  %30 = select i1 %28, i32 1, i32 0, !dbg !1020
  %31 = sext i32 %30 to i64, !dbg !1020
  %32 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %26, i64 0, i64 %31, !dbg !1020
  %33 = getelementptr inbounds %struct.relay_endpoint_session, ptr %32, i32 0, i32 2, !dbg !1020
  %34 = load ptr, ptr %33, align 8, !dbg !1020
  call void @delete_ioa_timer(ptr noundef %34), !dbg !1020
  %35 = load ptr, ptr %5, align 8, !dbg !1020
  %36 = getelementptr inbounds %struct._allocation, ptr %35, i32 0, i32 3, !dbg !1020
  %37 = load i32, ptr %8, align 4, !dbg !1020
  %38 = icmp eq i32 %37, 10, !dbg !1020
  %39 = zext i1 %38 to i64, !dbg !1020
  %40 = select i1 %38, i32 1, i32 0, !dbg !1020
  %41 = sext i32 %40 to i64, !dbg !1020
  %42 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %36, i64 0, i64 %41, !dbg !1020
  %43 = getelementptr inbounds %struct.relay_endpoint_session, ptr %42, i32 0, i32 2, !dbg !1020
  store ptr null, ptr %43, align 8, !dbg !1020
  br label %44, !dbg !1020

44:                                               ; preds = %24, %12
  br label %45, !dbg !1019

45:                                               ; preds = %44
  %46 = load i32, ptr %6, align 4, !dbg !1022
  %47 = load ptr, ptr %5, align 8, !dbg !1023
  %48 = getelementptr inbounds %struct._allocation, ptr %47, i32 0, i32 3, !dbg !1024
  %49 = load i32, ptr %8, align 4, !dbg !1025
  %50 = icmp eq i32 %49, 10, !dbg !1025
  %51 = zext i1 %50 to i64, !dbg !1025
  %52 = select i1 %50, i32 1, i32 0, !dbg !1025
  %53 = sext i32 %52 to i64, !dbg !1023
  %54 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %48, i64 0, i64 %53, !dbg !1023
  %55 = getelementptr inbounds %struct.relay_endpoint_session, ptr %54, i32 0, i32 1, !dbg !1026
  store i32 %46, ptr %55, align 8, !dbg !1027
  %56 = load ptr, ptr %7, align 8, !dbg !1028
  %57 = load ptr, ptr %5, align 8, !dbg !1029
  %58 = getelementptr inbounds %struct._allocation, ptr %57, i32 0, i32 3, !dbg !1030
  %59 = load i32, ptr %8, align 4, !dbg !1031
  %60 = icmp eq i32 %59, 10, !dbg !1031
  %61 = zext i1 %60 to i64, !dbg !1031
  %62 = select i1 %60, i32 1, i32 0, !dbg !1031
  %63 = sext i32 %62 to i64, !dbg !1029
  %64 = getelementptr inbounds [2 x %struct.relay_endpoint_session], ptr %58, i64 0, i64 %63, !dbg !1029
  %65 = getelementptr inbounds %struct.relay_endpoint_session, ptr %64, i32 0, i32 2, !dbg !1032
  store ptr %56, ptr %65, align 8, !dbg !1033
  br label %66, !dbg !1034

66:                                               ; preds = %45, %4
  ret void, !dbg !1035
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_allocation_valid(ptr noundef %0) #0 !dbg !1036 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1041, metadata !DIExpression()), !dbg !1042
  %4 = load ptr, ptr %3, align 8, !dbg !1043
  %5 = icmp ne ptr %4, null, !dbg !1043
  br i1 %5, label %6, label %10, !dbg !1045

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !1046
  %8 = getelementptr inbounds %struct._allocation, ptr %7, i32 0, i32 0, !dbg !1047
  %9 = load i32, ptr %8, align 8, !dbg !1047
  store i32 %9, ptr %2, align 4, !dbg !1048
  br label %11, !dbg !1048

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !1049
  br label %11, !dbg !1049

11:                                               ; preds = %10, %6
  %12 = load i32, ptr %2, align 4, !dbg !1050
  ret i32 %12, !dbg !1050
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_allocation_valid(ptr noundef %0, i32 noundef %1) #0 !dbg !1051 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1052, metadata !DIExpression()), !dbg !1053
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1054, metadata !DIExpression()), !dbg !1055
  %5 = load ptr, ptr %3, align 8, !dbg !1056
  %6 = icmp ne ptr %5, null, !dbg !1056
  br i1 %6, label %7, label %11, !dbg !1058

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !dbg !1059
  %9 = load ptr, ptr %3, align 8, !dbg !1060
  %10 = getelementptr inbounds %struct._allocation, ptr %9, i32 0, i32 0, !dbg !1061
  store i32 %8, ptr %10, align 8, !dbg !1062
  br label %11, !dbg !1060

11:                                               ; preds = %7, %2
  ret void, !dbg !1063
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @allocation_get_permission(ptr noundef %0, ptr noundef %1) #0 !dbg !1064 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1069, metadata !DIExpression()), !dbg !1070
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1071, metadata !DIExpression()), !dbg !1072
  %6 = load ptr, ptr %4, align 8, !dbg !1073
  %7 = icmp ne ptr %6, null, !dbg !1073
  br i1 %7, label %8, label %13, !dbg !1075

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !1076
  %10 = getelementptr inbounds %struct._allocation, ptr %9, i32 0, i32 2, !dbg !1078
  %11 = load ptr, ptr %5, align 8, !dbg !1079
  %12 = call ptr @get_from_turn_permission_hashtable(ptr noundef %10, ptr noundef %11), !dbg !1080
  store ptr %12, ptr %3, align 8, !dbg !1081
  br label %14, !dbg !1081

13:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !1082
  br label %14, !dbg !1082

14:                                               ; preds = %13, %8
  %15 = load ptr, ptr %3, align 8, !dbg !1083
  ret ptr %15, !dbg !1083
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_from_turn_permission_hashtable(ptr noundef %0, ptr noundef %1) #0 !dbg !1084 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1087, metadata !DIExpression()), !dbg !1088
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1089, metadata !DIExpression()), !dbg !1090
  %13 = load ptr, ptr %5, align 8, !dbg !1091
  %14 = icmp ne ptr %13, null, !dbg !1091
  br i1 %14, label %15, label %18, !dbg !1093

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8, !dbg !1094
  %17 = icmp ne ptr %16, null, !dbg !1094
  br i1 %17, label %19, label %18, !dbg !1095

18:                                               ; preds = %15, %2
  store ptr null, ptr %3, align 8, !dbg !1096
  br label %96, !dbg !1096

19:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1097, metadata !DIExpression()), !dbg !1098
  %20 = load ptr, ptr %5, align 8, !dbg !1099
  %21 = call i32 @addr_hash_no_port(ptr noundef %20), !dbg !1100
  %22 = and i32 %21, 7, !dbg !1101
  store i32 %22, ptr %6, align 4, !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1102, metadata !DIExpression()), !dbg !1103
  %23 = load ptr, ptr %4, align 8, !dbg !1104
  %24 = getelementptr inbounds %struct._turn_permission_hashtable, ptr %23, i32 0, i32 0, !dbg !1105
  %25 = load i32, ptr %6, align 4, !dbg !1106
  %26 = zext i32 %25 to i64, !dbg !1104
  %27 = getelementptr inbounds [8 x %struct._turn_permission_array], ptr %24, i64 0, i64 %26, !dbg !1104
  store ptr %27, ptr %7, align 8, !dbg !1103
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1107, metadata !DIExpression()), !dbg !1109
  store i64 0, ptr %8, align 8, !dbg !1110
  br label %28, !dbg !1112

28:                                               ; preds = %52, %19
  %29 = load i64, ptr %8, align 8, !dbg !1113
  %30 = icmp ult i64 %29, 3, !dbg !1115
  br i1 %30, label %31, label %55, !dbg !1116

31:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1117, metadata !DIExpression()), !dbg !1119
  %32 = load ptr, ptr %7, align 8, !dbg !1120
  %33 = getelementptr inbounds %struct._turn_permission_array, ptr %32, i32 0, i32 0, !dbg !1121
  %34 = load i64, ptr %8, align 8, !dbg !1122
  %35 = getelementptr inbounds [3 x %struct._turn_permission_slot], ptr %33, i64 0, i64 %34, !dbg !1120
  store ptr %35, ptr %9, align 8, !dbg !1119
  %36 = load ptr, ptr %9, align 8, !dbg !1123
  %37 = getelementptr inbounds %struct._turn_permission_slot, ptr %36, i32 0, i32 0, !dbg !1125
  %38 = getelementptr inbounds %struct._turn_permission_info, ptr %37, i32 0, i32 0, !dbg !1126
  %39 = load i32, ptr %38, align 8, !dbg !1126
  %40 = icmp ne i32 %39, 0, !dbg !1123
  br i1 %40, label %41, label %51, !dbg !1127

41:                                               ; preds = %31
  %42 = load ptr, ptr %9, align 8, !dbg !1128
  %43 = getelementptr inbounds %struct._turn_permission_slot, ptr %42, i32 0, i32 0, !dbg !1129
  %44 = getelementptr inbounds %struct._turn_permission_info, ptr %43, i32 0, i32 2, !dbg !1130
  %45 = load ptr, ptr %5, align 8, !dbg !1131
  %46 = call i32 @addr_eq_no_port(ptr noundef %44, ptr noundef %45), !dbg !1132
  %47 = icmp ne i32 %46, 0, !dbg !1132
  br i1 %47, label %48, label %51, !dbg !1133

48:                                               ; preds = %41
  %49 = load ptr, ptr %9, align 8, !dbg !1134
  %50 = getelementptr inbounds %struct._turn_permission_slot, ptr %49, i32 0, i32 0, !dbg !1136
  store ptr %50, ptr %3, align 8, !dbg !1137
  br label %96, !dbg !1137

51:                                               ; preds = %41, %31
  br label %52, !dbg !1138

52:                                               ; preds = %51
  %53 = load i64, ptr %8, align 8, !dbg !1139
  %54 = add i64 %53, 1, !dbg !1139
  store i64 %54, ptr %8, align 8, !dbg !1139
  br label %28, !dbg !1140, !llvm.loop !1141

55:                                               ; preds = %28
  %56 = load ptr, ptr %7, align 8, !dbg !1143
  %57 = getelementptr inbounds %struct._turn_permission_array, ptr %56, i32 0, i32 2, !dbg !1145
  %58 = load ptr, ptr %57, align 8, !dbg !1145
  %59 = icmp ne ptr %58, null, !dbg !1143
  br i1 %59, label %60, label %95, !dbg !1146

60:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1147, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1150, metadata !DIExpression()), !dbg !1151
  %61 = load ptr, ptr %7, align 8, !dbg !1152
  %62 = getelementptr inbounds %struct._turn_permission_array, ptr %61, i32 0, i32 1, !dbg !1153
  %63 = load i64, ptr %62, align 8, !dbg !1153
  store i64 %63, ptr %11, align 8, !dbg !1151
  store i64 0, ptr %10, align 8, !dbg !1154
  br label %64, !dbg !1156

64:                                               ; preds = %91, %60
  %65 = load i64, ptr %10, align 8, !dbg !1157
  %66 = load i64, ptr %11, align 8, !dbg !1159
  %67 = icmp ult i64 %65, %66, !dbg !1160
  br i1 %67, label %68, label %94, !dbg !1161

68:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1162, metadata !DIExpression()), !dbg !1164
  %69 = load ptr, ptr %7, align 8, !dbg !1165
  %70 = getelementptr inbounds %struct._turn_permission_array, ptr %69, i32 0, i32 2, !dbg !1166
  %71 = load ptr, ptr %70, align 8, !dbg !1166
  %72 = load i64, ptr %10, align 8, !dbg !1167
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72, !dbg !1165
  %74 = load ptr, ptr %73, align 8, !dbg !1165
  store ptr %74, ptr %12, align 8, !dbg !1164
  %75 = load ptr, ptr %12, align 8, !dbg !1168
  %76 = getelementptr inbounds %struct._turn_permission_slot, ptr %75, i32 0, i32 0, !dbg !1170
  %77 = getelementptr inbounds %struct._turn_permission_info, ptr %76, i32 0, i32 0, !dbg !1171
  %78 = load i32, ptr %77, align 8, !dbg !1171
  %79 = icmp ne i32 %78, 0, !dbg !1168
  br i1 %79, label %80, label %90, !dbg !1172

80:                                               ; preds = %68
  %81 = load ptr, ptr %12, align 8, !dbg !1173
  %82 = getelementptr inbounds %struct._turn_permission_slot, ptr %81, i32 0, i32 0, !dbg !1174
  %83 = getelementptr inbounds %struct._turn_permission_info, ptr %82, i32 0, i32 2, !dbg !1175
  %84 = load ptr, ptr %5, align 8, !dbg !1176
  %85 = call i32 @addr_eq_no_port(ptr noundef %83, ptr noundef %84), !dbg !1177
  %86 = icmp ne i32 %85, 0, !dbg !1177
  br i1 %86, label %87, label %90, !dbg !1178

87:                                               ; preds = %80
  %88 = load ptr, ptr %12, align 8, !dbg !1179
  %89 = getelementptr inbounds %struct._turn_permission_slot, ptr %88, i32 0, i32 0, !dbg !1181
  store ptr %89, ptr %3, align 8, !dbg !1182
  br label %96, !dbg !1182

90:                                               ; preds = %80, %68
  br label %91, !dbg !1183

91:                                               ; preds = %90
  %92 = load i64, ptr %10, align 8, !dbg !1184
  %93 = add i64 %92, 1, !dbg !1184
  store i64 %93, ptr %10, align 8, !dbg !1184
  br label %64, !dbg !1185, !llvm.loop !1186

94:                                               ; preds = %64
  br label %95, !dbg !1188

95:                                               ; preds = %94, %55
  store ptr null, ptr %3, align 8, !dbg !1189
  br label %96, !dbg !1189

96:                                               ; preds = %95, %87, %48, %18
  %97 = load ptr, ptr %3, align 8, !dbg !1190
  ret ptr %97, !dbg !1190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turn_permission_clean(ptr noundef %0) #0 !dbg !1191 {
  %2 = alloca ptr, align 8
  %3 = alloca [257 x i8], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1194, metadata !DIExpression()), !dbg !1195
  %4 = load ptr, ptr %2, align 8, !dbg !1196
  %5 = icmp ne ptr %4, null, !dbg !1196
  br i1 %5, label %6, label %51, !dbg !1198

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !1199
  %8 = getelementptr inbounds %struct._turn_permission_info, ptr %7, i32 0, i32 0, !dbg !1200
  %9 = load i32, ptr %8, align 8, !dbg !1200
  %10 = icmp ne i32 %9, 0, !dbg !1199
  br i1 %10, label %11, label %51, !dbg !1201

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !dbg !1202
  %13 = getelementptr inbounds %struct._turn_permission_info, ptr %12, i32 0, i32 6, !dbg !1205
  %14 = load i32, ptr %13, align 8, !dbg !1205
  %15 = icmp ne i32 %14, 0, !dbg !1202
  br i1 %15, label %16, label %25, !dbg !1206

16:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1207, metadata !DIExpression()), !dbg !1212
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 257, i1 false), !dbg !1212
  %17 = load ptr, ptr %2, align 8, !dbg !1213
  %18 = getelementptr inbounds %struct._turn_permission_info, ptr %17, i32 0, i32 2, !dbg !1214
  %19 = getelementptr inbounds [257 x i8], ptr %3, i64 0, i64 0, !dbg !1215
  %20 = call i32 @addr_to_string(ptr noundef %18, ptr noundef %19), !dbg !1216
  %21 = load ptr, ptr %2, align 8, !dbg !1217
  %22 = getelementptr inbounds %struct._turn_permission_info, ptr %21, i32 0, i32 7, !dbg !1218
  %23 = load i64, ptr %22, align 8, !dbg !1218
  %24 = getelementptr inbounds [257 x i8], ptr %3, i64 0, i64 0, !dbg !1219
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str, i64 noundef %23, ptr noundef %24), !dbg !1220
  br label %25, !dbg !1221

25:                                               ; preds = %16, %11
  %26 = load ptr, ptr %2, align 8, !dbg !1222
  %27 = getelementptr inbounds %struct._turn_permission_info, ptr %26, i32 0, i32 4, !dbg !1224
  %28 = load ptr, ptr %27, align 8, !dbg !1224
  %29 = icmp ne ptr %28, null, !dbg !1225
  br i1 %29, label %31, label %30, !dbg !1226

30:                                               ; preds = %25
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef @__FUNCTION__.turn_permission_clean), !dbg !1227
  br label %31, !dbg !1229

31:                                               ; preds = %30, %25
  br label %32, !dbg !1230

32:                                               ; preds = %31
  %33 = load ptr, ptr %2, align 8, !dbg !1231
  %34 = getelementptr inbounds %struct._turn_permission_info, ptr %33, i32 0, i32 4, !dbg !1231
  %35 = load ptr, ptr %34, align 8, !dbg !1231
  %36 = icmp ne ptr %35, null, !dbg !1231
  br i1 %36, label %37, label %43, !dbg !1234

37:                                               ; preds = %32
  %38 = load ptr, ptr %2, align 8, !dbg !1235
  %39 = getelementptr inbounds %struct._turn_permission_info, ptr %38, i32 0, i32 4, !dbg !1235
  %40 = load ptr, ptr %39, align 8, !dbg !1235
  call void @delete_ioa_timer(ptr noundef %40), !dbg !1235
  %41 = load ptr, ptr %2, align 8, !dbg !1235
  %42 = getelementptr inbounds %struct._turn_permission_info, ptr %41, i32 0, i32 4, !dbg !1235
  store ptr null, ptr %42, align 8, !dbg !1235
  br label %43, !dbg !1235

43:                                               ; preds = %37, %32
  br label %44, !dbg !1234

44:                                               ; preds = %43
  %45 = load ptr, ptr %2, align 8, !dbg !1237
  %46 = getelementptr inbounds %struct._turn_permission_info, ptr %45, i32 0, i32 1, !dbg !1238
  %47 = call i32 @lm_map_foreach(ptr noundef %46, ptr noundef @delete_channel_info_from_allocation_map), !dbg !1239
  %48 = load ptr, ptr %2, align 8, !dbg !1240
  %49 = getelementptr inbounds %struct._turn_permission_info, ptr %48, i32 0, i32 1, !dbg !1241
  call void @lm_map_clean(ptr noundef %49), !dbg !1242
  %50 = load ptr, ptr %2, align 8, !dbg !1243
  call void @llvm.memset.p0.i64(ptr align 8 %50, i8 0, i64 648, i1 false), !dbg !1244
  br label %51, !dbg !1245

51:                                               ; preds = %44, %6, %1
  ret void, !dbg !1246
}

declare i32 @addr_to_string(ptr noundef, ptr noundef) #3

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #3

declare i32 @lm_map_foreach(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_channel_info_from_allocation_map(i64 noundef %0, i64 noundef %1) #0 !dbg !1247 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1248, metadata !DIExpression()), !dbg !1249
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1250, metadata !DIExpression()), !dbg !1251
  br label %6, !dbg !1252

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !dbg !1253
  store i64 %7, ptr %3, align 8, !dbg !1253
  br label %8, !dbg !1253

8:                                                ; preds = %6
  %9 = load i64, ptr %4, align 8, !dbg !1255
  %10 = icmp ne i64 %9, 0, !dbg !1255
  br i1 %10, label %11, label %22, !dbg !1257

11:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1258, metadata !DIExpression()), !dbg !1260
  %12 = load i64, ptr %4, align 8, !dbg !1261
  %13 = inttoptr i64 %12 to ptr, !dbg !1262
  store ptr %13, ptr %5, align 8, !dbg !1260
  %14 = load ptr, ptr %5, align 8, !dbg !1263
  %15 = getelementptr inbounds %struct._ch_info, ptr %14, i32 0, i32 0, !dbg !1265
  %16 = load i16, ptr %15, align 8, !dbg !1265
  %17 = zext i16 %16 to i32, !dbg !1263
  %18 = icmp slt i32 %17, 1, !dbg !1266
  br i1 %18, label %19, label %20, !dbg !1267

19:                                               ; preds = %11
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.5, ptr noundef @__FUNCTION__.delete_channel_info_from_allocation_map), !dbg !1268
  br label %20, !dbg !1270

20:                                               ; preds = %19, %11
  %21 = load ptr, ptr %5, align 8, !dbg !1271
  call void @ch_info_clean(ptr noundef %21), !dbg !1272
  br label %22, !dbg !1273

22:                                               ; preds = %20, %8
  ret i32 0, !dbg !1274
}

declare void @lm_map_clean(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turn_channel_delete(ptr noundef %0) #0 !dbg !1275 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [129 x i8], align 16
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1278, metadata !DIExpression()), !dbg !1279
  %6 = load ptr, ptr %2, align 8, !dbg !1280
  %7 = icmp ne ptr %6, null, !dbg !1280
  br i1 %7, label %8, label %39, !dbg !1282

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1283, metadata !DIExpression()), !dbg !1285
  %9 = load ptr, ptr %2, align 8, !dbg !1286
  %10 = getelementptr inbounds %struct._ch_info, ptr %9, i32 0, i32 3, !dbg !1287
  %11 = call i32 @addr_get_port(ptr noundef %10), !dbg !1288
  store i32 %11, ptr %3, align 4, !dbg !1285
  %12 = load i32, ptr %3, align 4, !dbg !1289
  %13 = icmp slt i32 %12, 1, !dbg !1291
  br i1 %13, label %14, label %20, !dbg !1292

14:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1293, metadata !DIExpression()), !dbg !1298
  %15 = load ptr, ptr %2, align 8, !dbg !1299
  %16 = getelementptr inbounds %struct._ch_info, ptr %15, i32 0, i32 3, !dbg !1300
  %17 = getelementptr inbounds [129 x i8], ptr %4, i64 0, i64 0, !dbg !1301
  %18 = call i32 @addr_to_string(ptr noundef %16, ptr noundef %17), !dbg !1302
  %19 = getelementptr inbounds [129 x i8], ptr %4, i64 0, i64 0, !dbg !1303
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.2, ptr noundef @__FUNCTION__.turn_channel_delete, ptr noundef %19), !dbg !1304
  br label %20, !dbg !1305

20:                                               ; preds = %14, %8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1306, metadata !DIExpression()), !dbg !1308
  %21 = load ptr, ptr %2, align 8, !dbg !1309
  %22 = getelementptr inbounds %struct._ch_info, ptr %21, i32 0, i32 6, !dbg !1310
  %23 = load ptr, ptr %22, align 8, !dbg !1310
  store ptr %23, ptr %5, align 8, !dbg !1308
  %24 = load ptr, ptr %5, align 8, !dbg !1311
  %25 = icmp ne ptr %24, null, !dbg !1311
  br i1 %25, label %26, label %32, !dbg !1313

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 8, !dbg !1314
  %28 = getelementptr inbounds %struct._turn_permission_info, ptr %27, i32 0, i32 1, !dbg !1316
  %29 = load i32, ptr %3, align 4, !dbg !1317
  %30 = sext i32 %29 to i64, !dbg !1318
  %31 = call i32 @lm_map_del(ptr noundef %28, i64 noundef %30, ptr noundef null), !dbg !1319
  br label %33, !dbg !1320

32:                                               ; preds = %20
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.3, ptr noundef @__FUNCTION__.turn_channel_delete), !dbg !1321
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, ptr %3, align 4, !dbg !1323
  %35 = sext i32 %34 to i64, !dbg !1324
  %36 = load ptr, ptr %2, align 8, !dbg !1325
  %37 = ptrtoint ptr %36 to i64, !dbg !1326
  %38 = call i32 @delete_channel_info_from_allocation_map(i64 noundef %35, i64 noundef %37), !dbg !1327
  br label %39, !dbg !1328

39:                                               ; preds = %33, %1
  ret void, !dbg !1329
}

declare i32 @addr_get_port(ptr noundef) #3

declare i32 @lm_map_del(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @allocation_get_new_ch_info(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 !dbg !1330 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1334, metadata !DIExpression()), !dbg !1335
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1336, metadata !DIExpression()), !dbg !1337
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1338, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1340, metadata !DIExpression()), !dbg !1341
  %9 = load ptr, ptr %4, align 8, !dbg !1342
  %10 = getelementptr inbounds %struct._allocation, ptr %9, i32 0, i32 2, !dbg !1343
  %11 = load ptr, ptr %6, align 8, !dbg !1344
  %12 = call ptr @get_from_turn_permission_hashtable(ptr noundef %10, ptr noundef %11), !dbg !1345
  store ptr %12, ptr %7, align 8, !dbg !1341
  %13 = load ptr, ptr %7, align 8, !dbg !1346
  %14 = icmp ne ptr %13, null, !dbg !1346
  br i1 %14, label %19, label %15, !dbg !1348

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 8, !dbg !1349
  %17 = load ptr, ptr %6, align 8, !dbg !1350
  %18 = call ptr @allocation_add_permission(ptr noundef %16, ptr noundef %17), !dbg !1351
  store ptr %18, ptr %7, align 8, !dbg !1352
  br label %19, !dbg !1353

19:                                               ; preds = %15, %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1354, metadata !DIExpression()), !dbg !1355
  %20 = load ptr, ptr %4, align 8, !dbg !1356
  %21 = getelementptr inbounds %struct._allocation, ptr %20, i32 0, i32 5, !dbg !1357
  %22 = load i16, ptr %5, align 2, !dbg !1358
  %23 = call ptr @ch_map_get(ptr noundef %21, i16 noundef zeroext %22, i32 noundef 1), !dbg !1359
  store ptr %23, ptr %8, align 8, !dbg !1355
  %24 = load ptr, ptr %8, align 8, !dbg !1360
  %25 = getelementptr inbounds %struct._ch_info, ptr %24, i32 0, i32 1, !dbg !1361
  store i32 1, ptr %25, align 4, !dbg !1362
  %26 = load i16, ptr %5, align 2, !dbg !1363
  %27 = load ptr, ptr %8, align 8, !dbg !1364
  %28 = getelementptr inbounds %struct._ch_info, ptr %27, i32 0, i32 0, !dbg !1365
  store i16 %26, ptr %28, align 8, !dbg !1366
  %29 = load ptr, ptr %6, align 8, !dbg !1367
  %30 = call i32 @addr_get_port(ptr noundef %29), !dbg !1368
  %31 = trunc i32 %30 to i16, !dbg !1368
  %32 = load ptr, ptr %8, align 8, !dbg !1369
  %33 = getelementptr inbounds %struct._ch_info, ptr %32, i32 0, i32 2, !dbg !1370
  store i16 %31, ptr %33, align 8, !dbg !1371
  %34 = load ptr, ptr %8, align 8, !dbg !1372
  %35 = getelementptr inbounds %struct._ch_info, ptr %34, i32 0, i32 3, !dbg !1373
  %36 = load ptr, ptr %6, align 8, !dbg !1374
  call void @addr_cpy(ptr noundef %35, ptr noundef %36), !dbg !1375
  %37 = load ptr, ptr %7, align 8, !dbg !1376
  %38 = load ptr, ptr %8, align 8, !dbg !1377
  %39 = getelementptr inbounds %struct._ch_info, ptr %38, i32 0, i32 6, !dbg !1378
  store ptr %37, ptr %39, align 8, !dbg !1379
  %40 = load ptr, ptr %7, align 8, !dbg !1380
  %41 = getelementptr inbounds %struct._turn_permission_info, ptr %40, i32 0, i32 1, !dbg !1381
  %42 = load ptr, ptr %6, align 8, !dbg !1382
  %43 = call i32 @addr_get_port(ptr noundef %42), !dbg !1383
  %44 = sext i32 %43 to i64, !dbg !1384
  %45 = load ptr, ptr %8, align 8, !dbg !1385
  %46 = ptrtoint ptr %45 to i64, !dbg !1386
  %47 = call i32 @lm_map_put(ptr noundef %41, i64 noundef %44, i64 noundef %46), !dbg !1387
  %48 = load ptr, ptr %8, align 8, !dbg !1388
  ret ptr %48, !dbg !1389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @allocation_add_permission(ptr noundef %0, ptr noundef %1) #0 !dbg !1390 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1391, metadata !DIExpression()), !dbg !1392
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1393, metadata !DIExpression()), !dbg !1394
  %17 = load ptr, ptr %4, align 8, !dbg !1395
  %18 = icmp ne ptr %17, null, !dbg !1395
  br i1 %18, label %19, label %131, !dbg !1397

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 8, !dbg !1398
  %21 = icmp ne ptr %20, null, !dbg !1398
  br i1 %21, label %22, label %131, !dbg !1399

22:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1400, metadata !DIExpression()), !dbg !1402
  %23 = load ptr, ptr %4, align 8, !dbg !1403
  %24 = getelementptr inbounds %struct._allocation, ptr %23, i32 0, i32 2, !dbg !1404
  store ptr %24, ptr %6, align 8, !dbg !1402
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1405, metadata !DIExpression()), !dbg !1406
  %25 = load ptr, ptr %5, align 8, !dbg !1407
  %26 = call i32 @addr_hash_no_port(ptr noundef %25), !dbg !1408
  store i32 %26, ptr %7, align 4, !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1409, metadata !DIExpression()), !dbg !1410
  %27 = load i32, ptr %7, align 4, !dbg !1411
  %28 = and i32 %27, 7, !dbg !1412
  %29 = zext i32 %28 to i64, !dbg !1413
  store i64 %29, ptr %8, align 8, !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1414, metadata !DIExpression()), !dbg !1415
  %30 = load ptr, ptr %6, align 8, !dbg !1416
  %31 = getelementptr inbounds %struct._turn_permission_hashtable, ptr %30, i32 0, i32 0, !dbg !1417
  %32 = load i64, ptr %8, align 8, !dbg !1418
  %33 = getelementptr inbounds [8 x %struct._turn_permission_array], ptr %31, i64 0, i64 %32, !dbg !1416
  store ptr %33, ptr %9, align 8, !dbg !1415
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1419, metadata !DIExpression()), !dbg !1420
  store ptr null, ptr %10, align 8, !dbg !1420
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1421, metadata !DIExpression()), !dbg !1423
  store i64 0, ptr %11, align 8, !dbg !1424
  br label %34, !dbg !1426

34:                                               ; preds = %50, %22
  %35 = load i64, ptr %11, align 8, !dbg !1427
  %36 = icmp ult i64 %35, 3, !dbg !1429
  br i1 %36, label %37, label %53, !dbg !1430

37:                                               ; preds = %34
  %38 = load ptr, ptr %9, align 8, !dbg !1431
  %39 = getelementptr inbounds %struct._turn_permission_array, ptr %38, i32 0, i32 0, !dbg !1433
  %40 = load i64, ptr %11, align 8, !dbg !1434
  %41 = getelementptr inbounds [3 x %struct._turn_permission_slot], ptr %39, i64 0, i64 %40, !dbg !1431
  store ptr %41, ptr %10, align 8, !dbg !1435
  %42 = load ptr, ptr %10, align 8, !dbg !1436
  %43 = getelementptr inbounds %struct._turn_permission_slot, ptr %42, i32 0, i32 0, !dbg !1438
  %44 = getelementptr inbounds %struct._turn_permission_info, ptr %43, i32 0, i32 0, !dbg !1439
  %45 = load i32, ptr %44, align 8, !dbg !1439
  %46 = icmp ne i32 %45, 0, !dbg !1440
  br i1 %46, label %48, label %47, !dbg !1441

47:                                               ; preds = %37
  br label %53, !dbg !1442

48:                                               ; preds = %37
  store ptr null, ptr %10, align 8, !dbg !1444
  br label %49

49:                                               ; preds = %48
  br label %50, !dbg !1446

50:                                               ; preds = %49
  %51 = load i64, ptr %11, align 8, !dbg !1447
  %52 = add i64 %51, 1, !dbg !1447
  store i64 %52, ptr %11, align 8, !dbg !1447
  br label %34, !dbg !1448, !llvm.loop !1449

53:                                               ; preds = %47, %34
  %54 = load ptr, ptr %10, align 8, !dbg !1451
  %55 = icmp ne ptr %54, null, !dbg !1451
  br i1 %55, label %117, label %56, !dbg !1453

56:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1454, metadata !DIExpression()), !dbg !1456
  %57 = load ptr, ptr %9, align 8, !dbg !1457
  %58 = getelementptr inbounds %struct._turn_permission_array, ptr %57, i32 0, i32 1, !dbg !1458
  %59 = load i64, ptr %58, align 8, !dbg !1458
  store i64 %59, ptr %12, align 8, !dbg !1456
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1459, metadata !DIExpression()), !dbg !1460
  %60 = load ptr, ptr %9, align 8, !dbg !1461
  %61 = getelementptr inbounds %struct._turn_permission_array, ptr %60, i32 0, i32 2, !dbg !1462
  %62 = load ptr, ptr %61, align 8, !dbg !1462
  store ptr %62, ptr %13, align 8, !dbg !1460
  %63 = load ptr, ptr %13, align 8, !dbg !1463
  %64 = icmp ne ptr %63, null, !dbg !1463
  br i1 %64, label %65, label %87, !dbg !1465

65:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1466, metadata !DIExpression()), !dbg !1468
  store i64 0, ptr %14, align 8, !dbg !1469
  br label %66, !dbg !1471

66:                                               ; preds = %83, %65
  %67 = load i64, ptr %14, align 8, !dbg !1472
  %68 = load i64, ptr %12, align 8, !dbg !1474
  %69 = icmp ult i64 %67, %68, !dbg !1475
  br i1 %69, label %70, label %86, !dbg !1476

70:                                               ; preds = %66
  %71 = load ptr, ptr %13, align 8, !dbg !1477
  %72 = load i64, ptr %14, align 8, !dbg !1479
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72, !dbg !1477
  %74 = load ptr, ptr %73, align 8, !dbg !1477
  store ptr %74, ptr %10, align 8, !dbg !1480
  %75 = load ptr, ptr %10, align 8, !dbg !1481
  %76 = getelementptr inbounds %struct._turn_permission_slot, ptr %75, i32 0, i32 0, !dbg !1483
  %77 = getelementptr inbounds %struct._turn_permission_info, ptr %76, i32 0, i32 0, !dbg !1484
  %78 = load i32, ptr %77, align 8, !dbg !1484
  %79 = icmp ne i32 %78, 0, !dbg !1485
  br i1 %79, label %81, label %80, !dbg !1486

80:                                               ; preds = %70
  br label %86, !dbg !1487

81:                                               ; preds = %70
  store ptr null, ptr %10, align 8, !dbg !1489
  br label %82

82:                                               ; preds = %81
  br label %83, !dbg !1491

83:                                               ; preds = %82
  %84 = load i64, ptr %14, align 8, !dbg !1492
  %85 = add i64 %84, 1, !dbg !1492
  store i64 %85, ptr %14, align 8, !dbg !1492
  br label %66, !dbg !1493, !llvm.loop !1494

86:                                               ; preds = %80, %66
  br label %87, !dbg !1496

87:                                               ; preds = %86, %56
  %88 = load ptr, ptr %10, align 8, !dbg !1497
  %89 = icmp ne ptr %88, null, !dbg !1497
  br i1 %89, label %116, label %90, !dbg !1499

90:                                               ; preds = %87
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1500, metadata !DIExpression()), !dbg !1502
  %91 = load i64, ptr %12, align 8, !dbg !1503
  %92 = mul i64 %91, 8, !dbg !1504
  store i64 %92, ptr %15, align 8, !dbg !1502
  %93 = load ptr, ptr %9, align 8, !dbg !1505
  %94 = getelementptr inbounds %struct._turn_permission_array, ptr %93, i32 0, i32 2, !dbg !1506
  %95 = load ptr, ptr %94, align 8, !dbg !1506
  %96 = load i64, ptr %15, align 8, !dbg !1507
  %97 = add i64 %96, 8, !dbg !1508
  %98 = call ptr @realloc(ptr noundef %95, i64 noundef %97) #8, !dbg !1509
  %99 = load ptr, ptr %9, align 8, !dbg !1510
  %100 = getelementptr inbounds %struct._turn_permission_array, ptr %99, i32 0, i32 2, !dbg !1511
  store ptr %98, ptr %100, align 8, !dbg !1512
  %101 = load ptr, ptr %9, align 8, !dbg !1513
  %102 = getelementptr inbounds %struct._turn_permission_array, ptr %101, i32 0, i32 2, !dbg !1514
  %103 = load ptr, ptr %102, align 8, !dbg !1514
  store ptr %103, ptr %13, align 8, !dbg !1515
  %104 = load i64, ptr %12, align 8, !dbg !1516
  %105 = add i64 %104, 1, !dbg !1517
  %106 = load ptr, ptr %9, align 8, !dbg !1518
  %107 = getelementptr inbounds %struct._turn_permission_array, ptr %106, i32 0, i32 1, !dbg !1519
  store i64 %105, ptr %107, align 8, !dbg !1520
  %108 = call noalias ptr @malloc(i64 noundef 648) #9, !dbg !1521
  %109 = load ptr, ptr %13, align 8, !dbg !1522
  %110 = load i64, ptr %12, align 8, !dbg !1523
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110, !dbg !1522
  store ptr %108, ptr %111, align 8, !dbg !1524
  %112 = load ptr, ptr %13, align 8, !dbg !1525
  %113 = load i64, ptr %12, align 8, !dbg !1526
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113, !dbg !1525
  %115 = load ptr, ptr %114, align 8, !dbg !1525
  store ptr %115, ptr %10, align 8, !dbg !1527
  br label %116, !dbg !1528

116:                                              ; preds = %90, %87
  br label %117, !dbg !1529

117:                                              ; preds = %116, %53
  %118 = load ptr, ptr %10, align 8, !dbg !1530
  call void @llvm.memset.p0.i64(ptr align 8 %118, i8 0, i64 648, i1 false), !dbg !1531
  %119 = load ptr, ptr %10, align 8, !dbg !1532
  %120 = getelementptr inbounds %struct._turn_permission_slot, ptr %119, i32 0, i32 0, !dbg !1533
  %121 = getelementptr inbounds %struct._turn_permission_info, ptr %120, i32 0, i32 0, !dbg !1534
  store i32 1, ptr %121, align 8, !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1536, metadata !DIExpression()), !dbg !1537
  %122 = load ptr, ptr %10, align 8, !dbg !1538
  %123 = getelementptr inbounds %struct._turn_permission_slot, ptr %122, i32 0, i32 0, !dbg !1539
  store ptr %123, ptr %16, align 8, !dbg !1537
  %124 = load ptr, ptr %16, align 8, !dbg !1540
  %125 = getelementptr inbounds %struct._turn_permission_info, ptr %124, i32 0, i32 2, !dbg !1541
  %126 = load ptr, ptr %5, align 8, !dbg !1542
  call void @addr_cpy(ptr noundef %125, ptr noundef %126), !dbg !1543
  %127 = load ptr, ptr %4, align 8, !dbg !1544
  %128 = load ptr, ptr %16, align 8, !dbg !1545
  %129 = getelementptr inbounds %struct._turn_permission_info, ptr %128, i32 0, i32 5, !dbg !1546
  store ptr %127, ptr %129, align 8, !dbg !1547
  %130 = load ptr, ptr %16, align 8, !dbg !1548
  store ptr %130, ptr %3, align 8, !dbg !1549
  br label %132, !dbg !1549

131:                                              ; preds = %19, %2
  store ptr null, ptr %3, align 8, !dbg !1550
  br label %132, !dbg !1550

132:                                              ; preds = %131, %117
  %133 = load ptr, ptr %3, align 8, !dbg !1552
  ret ptr %133, !dbg !1552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @ch_map_get(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 !dbg !1553 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1556, metadata !DIExpression()), !dbg !1557
  store i16 %1, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1558, metadata !DIExpression()), !dbg !1559
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1560, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1562, metadata !DIExpression()), !dbg !1563
  store ptr null, ptr %8, align 8, !dbg !1563
  %16 = load ptr, ptr %5, align 8, !dbg !1564
  %17 = icmp ne ptr %16, null, !dbg !1564
  br i1 %17, label %18, label %156, !dbg !1566

18:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1567, metadata !DIExpression()), !dbg !1569
  %19 = load i16, ptr %6, align 2, !dbg !1570
  %20 = zext i16 %19 to i32, !dbg !1570
  %21 = and i32 %20, 7, !dbg !1571
  %22 = sext i32 %21 to i64, !dbg !1572
  store i64 %22, ptr %9, align 8, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1573, metadata !DIExpression()), !dbg !1574
  %23 = load ptr, ptr %5, align 8, !dbg !1575
  %24 = getelementptr inbounds %struct._ch_map, ptr %23, i32 0, i32 0, !dbg !1576
  %25 = load i64, ptr %9, align 8, !dbg !1577
  %26 = getelementptr inbounds [8 x %struct._chn_map_array], ptr %24, i64 0, i64 %25, !dbg !1575
  store ptr %26, ptr %10, align 8, !dbg !1574
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1578, metadata !DIExpression()), !dbg !1579
  store i64 0, ptr %11, align 8, !dbg !1580
  br label %27, !dbg !1582

27:                                               ; preds = %60, %18
  %28 = load i64, ptr %11, align 8, !dbg !1583
  %29 = icmp ult i64 %28, 3, !dbg !1585
  br i1 %29, label %30, label %63, !dbg !1586

30:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1587, metadata !DIExpression()), !dbg !1589
  %31 = load ptr, ptr %10, align 8, !dbg !1590
  %32 = getelementptr inbounds %struct._chn_map_array, ptr %31, i32 0, i32 0, !dbg !1591
  %33 = load i64, ptr %11, align 8, !dbg !1592
  %34 = getelementptr inbounds [3 x %struct._ch_info], ptr %32, i64 0, i64 %33, !dbg !1590
  store ptr %34, ptr %12, align 8, !dbg !1589
  %35 = load ptr, ptr %12, align 8, !dbg !1593
  %36 = getelementptr inbounds %struct._ch_info, ptr %35, i32 0, i32 1, !dbg !1595
  %37 = load i32, ptr %36, align 4, !dbg !1595
  %38 = icmp ne i32 %37, 0, !dbg !1593
  br i1 %38, label %39, label %53, !dbg !1596

39:                                               ; preds = %30
  %40 = load i32, ptr %7, align 4, !dbg !1597
  %41 = icmp ne i32 %40, 0, !dbg !1597
  br i1 %41, label %52, label %42, !dbg !1600

42:                                               ; preds = %39
  %43 = load ptr, ptr %12, align 8, !dbg !1601
  %44 = getelementptr inbounds %struct._ch_info, ptr %43, i32 0, i32 0, !dbg !1602
  %45 = load i16, ptr %44, align 8, !dbg !1602
  %46 = zext i16 %45 to i32, !dbg !1601
  %47 = load i16, ptr %6, align 2, !dbg !1603
  %48 = zext i16 %47 to i32, !dbg !1603
  %49 = icmp eq i32 %46, %48, !dbg !1604
  br i1 %49, label %50, label %52, !dbg !1605

50:                                               ; preds = %42
  %51 = load ptr, ptr %12, align 8, !dbg !1606
  store ptr %51, ptr %4, align 8, !dbg !1608
  br label %158, !dbg !1608

52:                                               ; preds = %42, %39
  br label %59, !dbg !1609

53:                                               ; preds = %30
  %54 = load i32, ptr %7, align 4, !dbg !1610
  %55 = icmp ne i32 %54, 0, !dbg !1610
  br i1 %55, label %56, label %58, !dbg !1612

56:                                               ; preds = %53
  %57 = load ptr, ptr %12, align 8, !dbg !1613
  store ptr %57, ptr %4, align 8, !dbg !1615
  br label %158, !dbg !1615

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %52
  br label %60, !dbg !1616

60:                                               ; preds = %59
  %61 = load i64, ptr %11, align 8, !dbg !1617
  %62 = add i64 %61, 1, !dbg !1617
  store i64 %62, ptr %11, align 8, !dbg !1617
  br label %27, !dbg !1618, !llvm.loop !1619

63:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1621, metadata !DIExpression()), !dbg !1622
  %64 = load ptr, ptr %10, align 8, !dbg !1623
  %65 = getelementptr inbounds %struct._chn_map_array, ptr %64, i32 0, i32 1, !dbg !1624
  %66 = load i64, ptr %65, align 8, !dbg !1624
  store i64 %66, ptr %13, align 8, !dbg !1622
  %67 = load i64, ptr %13, align 8, !dbg !1625
  %68 = icmp ne i64 %67, 0, !dbg !1625
  br i1 %68, label %69, label %119, !dbg !1627

69:                                               ; preds = %63
  %70 = load ptr, ptr %10, align 8, !dbg !1628
  %71 = getelementptr inbounds %struct._chn_map_array, ptr %70, i32 0, i32 2, !dbg !1629
  %72 = load ptr, ptr %71, align 8, !dbg !1629
  %73 = icmp ne ptr %72, null, !dbg !1628
  br i1 %73, label %74, label %119, !dbg !1630

74:                                               ; preds = %69
  store i64 0, ptr %11, align 8, !dbg !1631
  br label %75, !dbg !1634

75:                                               ; preds = %115, %74
  %76 = load i64, ptr %11, align 8, !dbg !1635
  %77 = load i64, ptr %13, align 8, !dbg !1637
  %78 = icmp ult i64 %76, %77, !dbg !1638
  br i1 %78, label %79, label %118, !dbg !1639

79:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1640, metadata !DIExpression()), !dbg !1642
  %80 = load ptr, ptr %10, align 8, !dbg !1643
  %81 = getelementptr inbounds %struct._chn_map_array, ptr %80, i32 0, i32 2, !dbg !1644
  %82 = load ptr, ptr %81, align 8, !dbg !1644
  %83 = load i64, ptr %11, align 8, !dbg !1645
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83, !dbg !1643
  %85 = load ptr, ptr %84, align 8, !dbg !1643
  store ptr %85, ptr %14, align 8, !dbg !1642
  %86 = load ptr, ptr %14, align 8, !dbg !1646
  %87 = icmp ne ptr %86, null, !dbg !1646
  br i1 %87, label %88, label %114, !dbg !1648

88:                                               ; preds = %79
  %89 = load ptr, ptr %14, align 8, !dbg !1649
  %90 = getelementptr inbounds %struct._ch_info, ptr %89, i32 0, i32 1, !dbg !1652
  %91 = load i32, ptr %90, align 4, !dbg !1652
  %92 = icmp ne i32 %91, 0, !dbg !1649
  br i1 %92, label %93, label %107, !dbg !1653

93:                                               ; preds = %88
  %94 = load i32, ptr %7, align 4, !dbg !1654
  %95 = icmp ne i32 %94, 0, !dbg !1654
  br i1 %95, label %106, label %96, !dbg !1657

96:                                               ; preds = %93
  %97 = load ptr, ptr %14, align 8, !dbg !1658
  %98 = getelementptr inbounds %struct._ch_info, ptr %97, i32 0, i32 0, !dbg !1659
  %99 = load i16, ptr %98, align 8, !dbg !1659
  %100 = zext i16 %99 to i32, !dbg !1658
  %101 = load i16, ptr %6, align 2, !dbg !1660
  %102 = zext i16 %101 to i32, !dbg !1660
  %103 = icmp eq i32 %100, %102, !dbg !1661
  br i1 %103, label %104, label %106, !dbg !1662

104:                                              ; preds = %96
  %105 = load ptr, ptr %14, align 8, !dbg !1663
  store ptr %105, ptr %4, align 8, !dbg !1665
  br label %158, !dbg !1665

106:                                              ; preds = %96, %93
  br label %113, !dbg !1666

107:                                              ; preds = %88
  %108 = load i32, ptr %7, align 4, !dbg !1667
  %109 = icmp ne i32 %108, 0, !dbg !1667
  br i1 %109, label %110, label %112, !dbg !1669

110:                                              ; preds = %107
  %111 = load ptr, ptr %14, align 8, !dbg !1670
  store ptr %111, ptr %4, align 8, !dbg !1672
  br label %158, !dbg !1672

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %106
  br label %114, !dbg !1673

114:                                              ; preds = %113, %79
  br label %115, !dbg !1674

115:                                              ; preds = %114
  %116 = load i64, ptr %11, align 8, !dbg !1675
  %117 = add i64 %116, 1, !dbg !1675
  store i64 %117, ptr %11, align 8, !dbg !1675
  br label %75, !dbg !1676, !llvm.loop !1677

118:                                              ; preds = %75
  br label %119, !dbg !1679

119:                                              ; preds = %118, %69, %63
  %120 = load i32, ptr %7, align 4, !dbg !1680
  %121 = icmp ne i32 %120, 0, !dbg !1680
  br i1 %121, label %122, label %155, !dbg !1682

122:                                              ; preds = %119
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1683, metadata !DIExpression()), !dbg !1685
  %123 = load i64, ptr %13, align 8, !dbg !1686
  %124 = mul i64 %123, 8, !dbg !1687
  store i64 %124, ptr %15, align 8, !dbg !1685
  %125 = load ptr, ptr %10, align 8, !dbg !1688
  %126 = getelementptr inbounds %struct._chn_map_array, ptr %125, i32 0, i32 2, !dbg !1689
  %127 = load ptr, ptr %126, align 8, !dbg !1689
  %128 = load i64, ptr %15, align 8, !dbg !1690
  %129 = add i64 %128, 8, !dbg !1691
  %130 = call ptr @realloc(ptr noundef %127, i64 noundef %129) #8, !dbg !1692
  %131 = load ptr, ptr %10, align 8, !dbg !1693
  %132 = getelementptr inbounds %struct._chn_map_array, ptr %131, i32 0, i32 2, !dbg !1694
  store ptr %130, ptr %132, align 8, !dbg !1695
  %133 = call noalias ptr @malloc(i64 noundef 72) #9, !dbg !1696
  %134 = load ptr, ptr %10, align 8, !dbg !1697
  %135 = getelementptr inbounds %struct._chn_map_array, ptr %134, i32 0, i32 2, !dbg !1698
  %136 = load ptr, ptr %135, align 8, !dbg !1698
  %137 = load i64, ptr %13, align 8, !dbg !1699
  %138 = getelementptr inbounds ptr, ptr %136, i64 %137, !dbg !1697
  store ptr %133, ptr %138, align 8, !dbg !1700
  %139 = load ptr, ptr %10, align 8, !dbg !1701
  %140 = getelementptr inbounds %struct._chn_map_array, ptr %139, i32 0, i32 2, !dbg !1702
  %141 = load ptr, ptr %140, align 8, !dbg !1702
  %142 = load i64, ptr %13, align 8, !dbg !1703
  %143 = getelementptr inbounds ptr, ptr %141, i64 %142, !dbg !1701
  %144 = load ptr, ptr %143, align 8, !dbg !1701
  call void @llvm.memset.p0.i64(ptr align 8 %144, i8 0, i64 72, i1 false), !dbg !1704
  %145 = load ptr, ptr %10, align 8, !dbg !1705
  %146 = getelementptr inbounds %struct._chn_map_array, ptr %145, i32 0, i32 1, !dbg !1706
  %147 = load i64, ptr %146, align 8, !dbg !1707
  %148 = add i64 %147, 1, !dbg !1707
  store i64 %148, ptr %146, align 8, !dbg !1707
  %149 = load ptr, ptr %10, align 8, !dbg !1708
  %150 = getelementptr inbounds %struct._chn_map_array, ptr %149, i32 0, i32 2, !dbg !1709
  %151 = load ptr, ptr %150, align 8, !dbg !1709
  %152 = load i64, ptr %13, align 8, !dbg !1710
  %153 = getelementptr inbounds ptr, ptr %151, i64 %152, !dbg !1708
  %154 = load ptr, ptr %153, align 8, !dbg !1708
  store ptr %154, ptr %4, align 8, !dbg !1711
  br label %158, !dbg !1711

155:                                              ; preds = %119
  br label %156, !dbg !1712

156:                                              ; preds = %155, %3
  %157 = load ptr, ptr %8, align 8, !dbg !1713
  store ptr %157, ptr %4, align 8, !dbg !1714
  br label %158, !dbg !1714

158:                                              ; preds = %156, %122, %110, %104, %56, %50
  %159 = load ptr, ptr %4, align 8, !dbg !1715
  ret ptr %159, !dbg !1715
}

declare void @addr_cpy(ptr noundef, ptr noundef) #3

declare i32 @lm_map_put(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @allocation_get_ch_info(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !1716 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1719, metadata !DIExpression()), !dbg !1720
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1721, metadata !DIExpression()), !dbg !1722
  %5 = load ptr, ptr %3, align 8, !dbg !1723
  %6 = getelementptr inbounds %struct._allocation, ptr %5, i32 0, i32 5, !dbg !1724
  %7 = load i16, ptr %4, align 2, !dbg !1725
  %8 = call ptr @ch_map_get(ptr noundef %6, i16 noundef zeroext %7, i32 noundef 0), !dbg !1726
  ret ptr %8, !dbg !1727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @allocation_get_ch_info_by_peer_addr(ptr noundef %0, ptr noundef %1) #0 !dbg !1728 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1731, metadata !DIExpression()), !dbg !1732
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1733, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1735, metadata !DIExpression()), !dbg !1736
  %7 = load ptr, ptr %4, align 8, !dbg !1737
  %8 = getelementptr inbounds %struct._allocation, ptr %7, i32 0, i32 2, !dbg !1738
  %9 = load ptr, ptr %5, align 8, !dbg !1739
  %10 = call ptr @get_from_turn_permission_hashtable(ptr noundef %8, ptr noundef %9), !dbg !1740
  store ptr %10, ptr %6, align 8, !dbg !1736
  %11 = load ptr, ptr %6, align 8, !dbg !1741
  %12 = icmp ne ptr %11, null, !dbg !1741
  br i1 %12, label %13, label %17, !dbg !1743

13:                                               ; preds = %2
  %14 = load ptr, ptr %6, align 8, !dbg !1744
  %15 = load ptr, ptr %5, align 8, !dbg !1746
  %16 = call ptr @get_turn_channel(ptr noundef %14, ptr noundef %15), !dbg !1747
  store ptr %16, ptr %3, align 8, !dbg !1748
  br label %18, !dbg !1748

17:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !1749
  br label %18, !dbg !1749

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %3, align 8, !dbg !1750
  ret ptr %19, !dbg !1750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_turn_channel(ptr noundef %0, ptr noundef %1) #0 !dbg !1751 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1754, metadata !DIExpression()), !dbg !1755
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1756, metadata !DIExpression()), !dbg !1757
  %8 = load ptr, ptr %4, align 8, !dbg !1758
  %9 = icmp ne ptr %8, null, !dbg !1758
  br i1 %9, label %10, label %39, !dbg !1760

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1761, metadata !DIExpression()), !dbg !1763
  store i64 0, ptr %6, align 8, !dbg !1763
  %11 = load ptr, ptr %4, align 8, !dbg !1764
  %12 = getelementptr inbounds %struct._turn_permission_info, ptr %11, i32 0, i32 1, !dbg !1766
  %13 = load ptr, ptr %5, align 8, !dbg !1767
  %14 = call i32 @addr_get_port(ptr noundef %13), !dbg !1768
  %15 = sext i32 %14 to i64, !dbg !1769
  %16 = call i32 @lm_map_get(ptr noundef %12, i64 noundef %15, ptr noundef %6), !dbg !1770
  %17 = icmp ne i32 %16, 0, !dbg !1770
  br i1 %17, label %18, label %38, !dbg !1771

18:                                               ; preds = %10
  %19 = load i64, ptr %6, align 8, !dbg !1772
  %20 = icmp ne i64 %19, 0, !dbg !1772
  br i1 %20, label %21, label %38, !dbg !1773

21:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1774, metadata !DIExpression()), !dbg !1776
  %22 = load i64, ptr %6, align 8, !dbg !1777
  %23 = inttoptr i64 %22 to ptr, !dbg !1778
  store ptr %23, ptr %7, align 8, !dbg !1776
  %24 = load ptr, ptr %7, align 8, !dbg !1779
  %25 = getelementptr inbounds %struct._ch_info, ptr %24, i32 0, i32 0, !dbg !1779
  %26 = load i16, ptr %25, align 8, !dbg !1779
  %27 = zext i16 %26 to i32, !dbg !1779
  %28 = icmp sge i32 %27, 16384, !dbg !1779
  br i1 %28, label %29, label %37, !dbg !1779

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 8, !dbg !1779
  %31 = getelementptr inbounds %struct._ch_info, ptr %30, i32 0, i32 0, !dbg !1779
  %32 = load i16, ptr %31, align 8, !dbg !1779
  %33 = zext i16 %32 to i32, !dbg !1779
  %34 = icmp sle i32 %33, 32767, !dbg !1779
  br i1 %34, label %35, label %37, !dbg !1781

35:                                               ; preds = %29
  %36 = load ptr, ptr %7, align 8, !dbg !1782
  store ptr %36, ptr %3, align 8, !dbg !1784
  br label %40, !dbg !1784

37:                                               ; preds = %29, %21
  br label %38, !dbg !1785

38:                                               ; preds = %37, %18, %10
  br label %39, !dbg !1786

39:                                               ; preds = %38, %2
  store ptr null, ptr %3, align 8, !dbg !1787
  br label %40, !dbg !1787

40:                                               ; preds = %39, %35
  %41 = load ptr, ptr %3, align 8, !dbg !1788
  ret ptr %41, !dbg !1788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @get_turn_channel_number(ptr noundef %0, ptr noundef %1) #0 !dbg !1789 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1792, metadata !DIExpression()), !dbg !1793
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1794, metadata !DIExpression()), !dbg !1795
  %8 = load ptr, ptr %4, align 8, !dbg !1796
  %9 = icmp ne ptr %8, null, !dbg !1796
  br i1 %9, label %10, label %41, !dbg !1798

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1799, metadata !DIExpression()), !dbg !1801
  store i64 0, ptr %6, align 8, !dbg !1801
  %11 = load ptr, ptr %4, align 8, !dbg !1802
  %12 = getelementptr inbounds %struct._turn_permission_info, ptr %11, i32 0, i32 1, !dbg !1804
  %13 = load ptr, ptr %5, align 8, !dbg !1805
  %14 = call i32 @addr_get_port(ptr noundef %13), !dbg !1806
  %15 = sext i32 %14 to i64, !dbg !1807
  %16 = call i32 @lm_map_get(ptr noundef %12, i64 noundef %15, ptr noundef %6), !dbg !1808
  %17 = icmp ne i32 %16, 0, !dbg !1808
  br i1 %17, label %18, label %40, !dbg !1809

18:                                               ; preds = %10
  %19 = load i64, ptr %6, align 8, !dbg !1810
  %20 = icmp ne i64 %19, 0, !dbg !1810
  br i1 %20, label %21, label %40, !dbg !1811

21:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1812, metadata !DIExpression()), !dbg !1814
  %22 = load i64, ptr %6, align 8, !dbg !1815
  %23 = inttoptr i64 %22 to ptr, !dbg !1816
  store ptr %23, ptr %7, align 8, !dbg !1814
  %24 = load ptr, ptr %7, align 8, !dbg !1817
  %25 = getelementptr inbounds %struct._ch_info, ptr %24, i32 0, i32 0, !dbg !1817
  %26 = load i16, ptr %25, align 8, !dbg !1817
  %27 = zext i16 %26 to i32, !dbg !1817
  %28 = icmp sge i32 %27, 16384, !dbg !1817
  br i1 %28, label %29, label %39, !dbg !1817

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 8, !dbg !1817
  %31 = getelementptr inbounds %struct._ch_info, ptr %30, i32 0, i32 0, !dbg !1817
  %32 = load i16, ptr %31, align 8, !dbg !1817
  %33 = zext i16 %32 to i32, !dbg !1817
  %34 = icmp sle i32 %33, 32767, !dbg !1817
  br i1 %34, label %35, label %39, !dbg !1819

35:                                               ; preds = %29
  %36 = load ptr, ptr %7, align 8, !dbg !1820
  %37 = getelementptr inbounds %struct._ch_info, ptr %36, i32 0, i32 0, !dbg !1822
  %38 = load i16, ptr %37, align 8, !dbg !1822
  store i16 %38, ptr %3, align 2, !dbg !1823
  br label %42, !dbg !1823

39:                                               ; preds = %29, %21
  br label %40, !dbg !1824

40:                                               ; preds = %39, %18, %10
  br label %41, !dbg !1825

41:                                               ; preds = %40, %2
  store i16 0, ptr %3, align 2, !dbg !1826
  br label %42, !dbg !1826

42:                                               ; preds = %41, %35
  %43 = load i16, ptr %3, align 2, !dbg !1827
  ret i16 %43, !dbg !1827
}

declare i32 @lm_map_get(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @allocation_get_turn_permission_hashtable(ptr noundef %0) #0 !dbg !1828 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1831, metadata !DIExpression()), !dbg !1832
  %3 = load ptr, ptr %2, align 8, !dbg !1833
  %4 = getelementptr inbounds %struct._allocation, ptr %3, i32 0, i32 2, !dbg !1834
  ret ptr %4, !dbg !1835
}

declare i32 @addr_hash_no_port(ptr noundef) #3

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch_info_clean(ptr noundef %0) #0 !dbg !1836 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1837, metadata !DIExpression()), !dbg !1838
  %3 = load ptr, ptr %2, align 8, !dbg !1839
  %4 = icmp ne ptr %3, null, !dbg !1839
  br i1 %4, label %5, label %28, !dbg !1841

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !1842
  %7 = getelementptr inbounds %struct._ch_info, ptr %6, i32 0, i32 7, !dbg !1845
  %8 = load ptr, ptr %7, align 8, !dbg !1845
  %9 = icmp ne ptr %8, null, !dbg !1842
  br i1 %9, label %10, label %13, !dbg !1846

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !1847
  %12 = getelementptr inbounds %struct._ch_info, ptr %11, i32 0, i32 7, !dbg !1849
  store ptr null, ptr %12, align 8, !dbg !1850
  br label %13, !dbg !1851

13:                                               ; preds = %10, %5
  br label %14, !dbg !1852

14:                                               ; preds = %13
  %15 = load ptr, ptr %2, align 8, !dbg !1853
  %16 = getelementptr inbounds %struct._ch_info, ptr %15, i32 0, i32 5, !dbg !1853
  %17 = load ptr, ptr %16, align 8, !dbg !1853
  %18 = icmp ne ptr %17, null, !dbg !1853
  br i1 %18, label %19, label %25, !dbg !1856

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !dbg !1857
  %21 = getelementptr inbounds %struct._ch_info, ptr %20, i32 0, i32 5, !dbg !1857
  %22 = load ptr, ptr %21, align 8, !dbg !1857
  call void @delete_ioa_timer(ptr noundef %22), !dbg !1857
  %23 = load ptr, ptr %2, align 8, !dbg !1857
  %24 = getelementptr inbounds %struct._ch_info, ptr %23, i32 0, i32 5, !dbg !1857
  store ptr null, ptr %24, align 8, !dbg !1857
  br label %25, !dbg !1857

25:                                               ; preds = %19, %14
  br label %26, !dbg !1856

26:                                               ; preds = %25
  %27 = load ptr, ptr %2, align 8, !dbg !1859
  call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 72, i1 false), !dbg !1860
  br label %28, !dbg !1861

28:                                               ; preds = %26, %1
  ret void, !dbg !1862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @create_tcp_connection(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !1863 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  store i8 %0, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1868, metadata !DIExpression()), !dbg !1869
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1870, metadata !DIExpression()), !dbg !1871
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1872, metadata !DIExpression()), !dbg !1873
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1874, metadata !DIExpression()), !dbg !1875
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1876, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1878, metadata !DIExpression()), !dbg !1879
  %20 = load ptr, ptr %8, align 8, !dbg !1880
  %21 = getelementptr inbounds %struct._allocation, ptr %20, i32 0, i32 8, !dbg !1881
  store ptr %21, ptr %12, align 8, !dbg !1879
  %22 = load ptr, ptr %12, align 8, !dbg !1882
  %23 = getelementptr inbounds %struct._tcp_connection_list, ptr %22, i32 0, i32 1, !dbg !1884
  %24 = load ptr, ptr %23, align 8, !dbg !1884
  %25 = icmp ne ptr %24, null, !dbg !1882
  br i1 %25, label %26, label %56, !dbg !1885

26:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1886, metadata !DIExpression()), !dbg !1888
  store i64 0, ptr %13, align 8, !dbg !1889
  br label %27, !dbg !1891

27:                                               ; preds = %52, %26
  %28 = load i64, ptr %13, align 8, !dbg !1892
  %29 = load ptr, ptr %12, align 8, !dbg !1894
  %30 = getelementptr inbounds %struct._tcp_connection_list, ptr %29, i32 0, i32 0, !dbg !1895
  %31 = load i64, ptr %30, align 8, !dbg !1895
  %32 = icmp ult i64 %28, %31, !dbg !1896
  br i1 %32, label %33, label %55, !dbg !1897

33:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1898, metadata !DIExpression()), !dbg !1900
  %34 = load ptr, ptr %12, align 8, !dbg !1901
  %35 = getelementptr inbounds %struct._tcp_connection_list, ptr %34, i32 0, i32 1, !dbg !1902
  %36 = load ptr, ptr %35, align 8, !dbg !1902
  %37 = load i64, ptr %13, align 8, !dbg !1903
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37, !dbg !1901
  %39 = load ptr, ptr %38, align 8, !dbg !1901
  store ptr %39, ptr %14, align 8, !dbg !1900
  %40 = load ptr, ptr %14, align 8, !dbg !1904
  %41 = icmp ne ptr %40, null, !dbg !1904
  br i1 %41, label %42, label %51, !dbg !1906

42:                                               ; preds = %33
  %43 = load ptr, ptr %14, align 8, !dbg !1907
  %44 = getelementptr inbounds %struct._tcp_connection, ptr %43, i32 0, i32 2, !dbg !1910
  %45 = load ptr, ptr %10, align 8, !dbg !1911
  %46 = call i32 @addr_eq(ptr noundef %44, ptr noundef %45), !dbg !1912
  %47 = icmp ne i32 %46, 0, !dbg !1912
  br i1 %47, label %48, label %50, !dbg !1913

48:                                               ; preds = %42
  %49 = load ptr, ptr %11, align 8, !dbg !1914
  store i32 446, ptr %49, align 4, !dbg !1916
  store ptr null, ptr %6, align 8, !dbg !1917
  br label %145, !dbg !1917

50:                                               ; preds = %42
  br label %51, !dbg !1918

51:                                               ; preds = %50, %33
  br label %52, !dbg !1919

52:                                               ; preds = %51
  %53 = load i64, ptr %13, align 8, !dbg !1920
  %54 = add i64 %53, 1, !dbg !1920
  store i64 %54, ptr %13, align 8, !dbg !1920
  br label %27, !dbg !1921, !llvm.loop !1922

55:                                               ; preds = %27
  br label %56, !dbg !1924

56:                                               ; preds = %55, %5
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1925, metadata !DIExpression()), !dbg !1926
  %57 = call noalias ptr @malloc(i64 noundef 120) #9, !dbg !1927
  store ptr %57, ptr %15, align 8, !dbg !1926
  %58 = load ptr, ptr %15, align 8, !dbg !1928
  call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 120, i1 false), !dbg !1929
  %59 = load ptr, ptr %15, align 8, !dbg !1930
  %60 = getelementptr inbounds %struct._tcp_connection, ptr %59, i32 0, i32 2, !dbg !1931
  %61 = load ptr, ptr %10, align 8, !dbg !1932
  call void @addr_cpy(ptr noundef %60, ptr noundef %61), !dbg !1933
  %62 = load ptr, ptr %9, align 8, !dbg !1934
  %63 = icmp ne ptr %62, null, !dbg !1934
  br i1 %63, label %64, label %68, !dbg !1936

64:                                               ; preds = %56
  %65 = load ptr, ptr %9, align 8, !dbg !1937
  %66 = load ptr, ptr %15, align 8, !dbg !1938
  %67 = getelementptr inbounds %struct._tcp_connection, ptr %66, i32 0, i32 7, !dbg !1939
  call void @bcopy(ptr noundef %65, ptr noundef %67, i64 noundef 12) #7, !dbg !1940
  br label %68, !dbg !1940

68:                                               ; preds = %64, %56
  %69 = load ptr, ptr %8, align 8, !dbg !1941
  %70 = load ptr, ptr %15, align 8, !dbg !1942
  %71 = getelementptr inbounds %struct._tcp_connection, ptr %70, i32 0, i32 8, !dbg !1943
  store ptr %69, ptr %71, align 8, !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1945, metadata !DIExpression()), !dbg !1946
  store i32 0, ptr %16, align 4, !dbg !1946
  %72 = load ptr, ptr %8, align 8, !dbg !1947
  %73 = getelementptr inbounds %struct._allocation, ptr %72, i32 0, i32 8, !dbg !1949
  %74 = getelementptr inbounds %struct._tcp_connection_list, ptr %73, i32 0, i32 1, !dbg !1950
  %75 = load ptr, ptr %74, align 8, !dbg !1950
  %76 = icmp ne ptr %75, null, !dbg !1947
  br i1 %76, label %77, label %105, !dbg !1951

77:                                               ; preds = %68
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1952, metadata !DIExpression()), !dbg !1954
  store i64 0, ptr %17, align 8, !dbg !1955
  br label %78, !dbg !1957

78:                                               ; preds = %101, %77
  %79 = load i64, ptr %17, align 8, !dbg !1958
  %80 = load ptr, ptr %12, align 8, !dbg !1960
  %81 = getelementptr inbounds %struct._tcp_connection_list, ptr %80, i32 0, i32 0, !dbg !1961
  %82 = load i64, ptr %81, align 8, !dbg !1961
  %83 = icmp ult i64 %79, %82, !dbg !1962
  br i1 %83, label %84, label %104, !dbg !1963

84:                                               ; preds = %78
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1964, metadata !DIExpression()), !dbg !1966
  %85 = load ptr, ptr %12, align 8, !dbg !1967
  %86 = getelementptr inbounds %struct._tcp_connection_list, ptr %85, i32 0, i32 1, !dbg !1968
  %87 = load ptr, ptr %86, align 8, !dbg !1968
  %88 = load i64, ptr %17, align 8, !dbg !1969
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88, !dbg !1967
  %90 = load ptr, ptr %89, align 8, !dbg !1967
  store ptr %90, ptr %18, align 8, !dbg !1966
  %91 = load ptr, ptr %18, align 8, !dbg !1970
  %92 = icmp ne ptr %91, null, !dbg !1970
  br i1 %92, label %100, label %93, !dbg !1972

93:                                               ; preds = %84
  %94 = load ptr, ptr %15, align 8, !dbg !1973
  %95 = load ptr, ptr %12, align 8, !dbg !1975
  %96 = getelementptr inbounds %struct._tcp_connection_list, ptr %95, i32 0, i32 1, !dbg !1976
  %97 = load ptr, ptr %96, align 8, !dbg !1976
  %98 = load i64, ptr %17, align 8, !dbg !1977
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98, !dbg !1975
  store ptr %94, ptr %99, align 8, !dbg !1978
  store i32 1, ptr %16, align 4, !dbg !1979
  br label %104, !dbg !1980

100:                                              ; preds = %84
  br label %101, !dbg !1981

101:                                              ; preds = %100
  %102 = load i64, ptr %17, align 8, !dbg !1982
  %103 = add i64 %102, 1, !dbg !1982
  store i64 %103, ptr %17, align 8, !dbg !1982
  br label %78, !dbg !1983, !llvm.loop !1984

104:                                              ; preds = %93, %78
  br label %105, !dbg !1986

105:                                              ; preds = %104, %68
  %106 = load i32, ptr %16, align 4, !dbg !1987
  %107 = icmp ne i32 %106, 0, !dbg !1987
  br i1 %107, label %141, label %108, !dbg !1989

108:                                              ; preds = %105
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1990, metadata !DIExpression()), !dbg !1992
  %109 = load ptr, ptr %8, align 8, !dbg !1993
  %110 = getelementptr inbounds %struct._allocation, ptr %109, i32 0, i32 8, !dbg !1994
  %111 = getelementptr inbounds %struct._tcp_connection_list, ptr %110, i32 0, i32 0, !dbg !1995
  %112 = load i64, ptr %111, align 8, !dbg !1995
  %113 = mul i64 %112, 8, !dbg !1996
  store i64 %113, ptr %19, align 8, !dbg !1992
  %114 = load ptr, ptr %8, align 8, !dbg !1997
  %115 = getelementptr inbounds %struct._allocation, ptr %114, i32 0, i32 8, !dbg !1998
  %116 = getelementptr inbounds %struct._tcp_connection_list, ptr %115, i32 0, i32 1, !dbg !1999
  %117 = load ptr, ptr %116, align 8, !dbg !1999
  %118 = load i64, ptr %19, align 8, !dbg !2000
  %119 = add i64 %118, 8, !dbg !2001
  %120 = call ptr @realloc(ptr noundef %117, i64 noundef %119) #8, !dbg !2002
  %121 = load ptr, ptr %8, align 8, !dbg !2003
  %122 = getelementptr inbounds %struct._allocation, ptr %121, i32 0, i32 8, !dbg !2004
  %123 = getelementptr inbounds %struct._tcp_connection_list, ptr %122, i32 0, i32 1, !dbg !2005
  store ptr %120, ptr %123, align 8, !dbg !2006
  %124 = load ptr, ptr %15, align 8, !dbg !2007
  %125 = load ptr, ptr %8, align 8, !dbg !2008
  %126 = getelementptr inbounds %struct._allocation, ptr %125, i32 0, i32 8, !dbg !2009
  %127 = getelementptr inbounds %struct._tcp_connection_list, ptr %126, i32 0, i32 1, !dbg !2010
  %128 = load ptr, ptr %127, align 8, !dbg !2010
  %129 = load ptr, ptr %8, align 8, !dbg !2011
  %130 = getelementptr inbounds %struct._allocation, ptr %129, i32 0, i32 8, !dbg !2012
  %131 = getelementptr inbounds %struct._tcp_connection_list, ptr %130, i32 0, i32 0, !dbg !2013
  %132 = load i64, ptr %131, align 8, !dbg !2013
  %133 = getelementptr inbounds ptr, ptr %128, i64 %132, !dbg !2008
  store ptr %124, ptr %133, align 8, !dbg !2014
  %134 = load ptr, ptr %8, align 8, !dbg !2015
  %135 = getelementptr inbounds %struct._allocation, ptr %134, i32 0, i32 8, !dbg !2016
  %136 = getelementptr inbounds %struct._tcp_connection_list, ptr %135, i32 0, i32 0, !dbg !2017
  %137 = load i64, ptr %136, align 8, !dbg !2018
  %138 = add i64 %137, 1, !dbg !2018
  store i64 %138, ptr %136, align 8, !dbg !2018
  %139 = load ptr, ptr %8, align 8, !dbg !2019
  %140 = getelementptr inbounds %struct._allocation, ptr %139, i32 0, i32 8, !dbg !2020
  store ptr %140, ptr %12, align 8, !dbg !2021
  br label %141, !dbg !2022

141:                                              ; preds = %108, %105
  %142 = load i8, ptr %7, align 1, !dbg !2023
  %143 = load ptr, ptr %15, align 8, !dbg !2024
  call void @set_new_tc_id(i8 noundef zeroext %142, ptr noundef %143), !dbg !2025
  %144 = load ptr, ptr %15, align 8, !dbg !2026
  store ptr %144, ptr %6, align 8, !dbg !2027
  br label %145, !dbg !2027

145:                                              ; preds = %141, %48
  %146 = load ptr, ptr %6, align 8, !dbg !2028
  ret ptr %146, !dbg !2028
}

declare i32 @addr_eq(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_new_tc_id(i8 noundef zeroext %0, ptr noundef %1) #0 !dbg !2029 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2032, metadata !DIExpression()), !dbg !2033
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2034, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2036, metadata !DIExpression()), !dbg !2037
  %9 = load ptr, ptr %4, align 8, !dbg !2038
  %10 = getelementptr inbounds %struct._tcp_connection, ptr %9, i32 0, i32 8, !dbg !2039
  %11 = load ptr, ptr %10, align 8, !dbg !2039
  store ptr %11, ptr %5, align 8, !dbg !2037
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2040, metadata !DIExpression()), !dbg !2041
  %12 = load ptr, ptr %5, align 8, !dbg !2042
  %13 = getelementptr inbounds %struct._allocation, ptr %12, i32 0, i32 7, !dbg !2043
  %14 = load ptr, ptr %13, align 8, !dbg !2043
  store ptr %14, ptr %6, align 8, !dbg !2041
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2044, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2046, metadata !DIExpression()), !dbg !2047
  %15 = load i8, ptr %3, align 1, !dbg !2048
  %16 = zext i8 %15 to i32, !dbg !2048
  store i32 %16, ptr %8, align 4, !dbg !2047
  %17 = load i32, ptr %8, align 4, !dbg !2049
  %18 = shl i32 %17, 24, !dbg !2050
  store i32 %18, ptr %8, align 4, !dbg !2051
  br label %19, !dbg !2052

19:                                               ; preds = %41, %2
  store i32 0, ptr %7, align 4, !dbg !2053
  br label %20, !dbg !2055

20:                                               ; preds = %36, %35, %29, %19
  %21 = load i32, ptr %7, align 4, !dbg !2056
  %22 = icmp ne i32 %21, 0, !dbg !2057
  %23 = xor i1 %22, true, !dbg !2057
  br i1 %23, label %24, label %40, !dbg !2055

24:                                               ; preds = %20
  %25 = call i64 @turn_random(), !dbg !2058
  %26 = trunc i64 %25 to i32, !dbg !2060
  store i32 %26, ptr %7, align 4, !dbg !2061
  %27 = load i32, ptr %7, align 4, !dbg !2062
  %28 = icmp ne i32 %27, 0, !dbg !2062
  br i1 %28, label %30, label %29, !dbg !2064

29:                                               ; preds = %24
  br label %20, !dbg !2065, !llvm.loop !2067

30:                                               ; preds = %24
  %31 = load i32, ptr %7, align 4, !dbg !2069
  %32 = and i32 %31, 16777215, !dbg !2070
  store i32 %32, ptr %7, align 4, !dbg !2071
  %33 = load i32, ptr %7, align 4, !dbg !2072
  %34 = icmp ne i32 %33, 0, !dbg !2072
  br i1 %34, label %36, label %35, !dbg !2074

35:                                               ; preds = %30
  br label %20, !dbg !2075, !llvm.loop !2067

36:                                               ; preds = %30
  %37 = load i32, ptr %7, align 4, !dbg !2077
  %38 = load i32, ptr %8, align 4, !dbg !2078
  %39 = or i32 %37, %38, !dbg !2079
  store i32 %39, ptr %7, align 4, !dbg !2080
  br label %20, !dbg !2055, !llvm.loop !2067

40:                                               ; preds = %20
  br label %41, !dbg !2081

41:                                               ; preds = %40
  %42 = load ptr, ptr %6, align 8, !dbg !2082
  %43 = load i32, ptr %7, align 4, !dbg !2083
  %44 = zext i32 %43 to i64, !dbg !2084
  %45 = call i32 @ur_map_get(ptr noundef %42, i64 noundef %44, ptr noundef null), !dbg !2085
  %46 = icmp ne i32 %45, 0, !dbg !2081
  br i1 %46, label %19, label %47, !dbg !2081, !llvm.loop !2086

47:                                               ; preds = %41
  %48 = load i32, ptr %7, align 4, !dbg !2088
  %49 = load ptr, ptr %4, align 8, !dbg !2089
  %50 = getelementptr inbounds %struct._tcp_connection, ptr %49, i32 0, i32 1, !dbg !2090
  store i32 %48, ptr %50, align 4, !dbg !2091
  %51 = load ptr, ptr %6, align 8, !dbg !2092
  %52 = load i32, ptr %7, align 4, !dbg !2093
  %53 = zext i32 %52 to i64, !dbg !2094
  %54 = load ptr, ptr %4, align 8, !dbg !2095
  %55 = ptrtoint ptr %54 to i64, !dbg !2096
  %56 = call i32 @ur_map_put(ptr noundef %51, i64 noundef %53, i64 noundef %55), !dbg !2097
  ret void, !dbg !2098
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_unsent_buffer(ptr noundef %0) #0 !dbg !2099 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2103, metadata !DIExpression()), !dbg !2104
  %5 = load ptr, ptr %2, align 8, !dbg !2105
  %6 = icmp ne ptr %5, null, !dbg !2105
  br i1 %6, label %7, label %48, !dbg !2107

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !2108
  %9 = getelementptr inbounds %struct.unsent_buffer, ptr %8, i32 0, i32 1, !dbg !2111
  %10 = load ptr, ptr %9, align 8, !dbg !2111
  %11 = icmp ne ptr %10, null, !dbg !2108
  br i1 %11, label %12, label %45, !dbg !2112

12:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2113, metadata !DIExpression()), !dbg !2115
  store i64 0, ptr %3, align 8, !dbg !2116
  br label %13, !dbg !2118

13:                                               ; preds = %36, %12
  %14 = load i64, ptr %3, align 8, !dbg !2119
  %15 = load ptr, ptr %2, align 8, !dbg !2121
  %16 = getelementptr inbounds %struct.unsent_buffer, ptr %15, i32 0, i32 0, !dbg !2122
  %17 = load i64, ptr %16, align 8, !dbg !2122
  %18 = icmp ult i64 %14, %17, !dbg !2123
  br i1 %18, label %19, label %39, !dbg !2124

19:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2125, metadata !DIExpression()), !dbg !2127
  %20 = load ptr, ptr %2, align 8, !dbg !2128
  %21 = getelementptr inbounds %struct.unsent_buffer, ptr %20, i32 0, i32 1, !dbg !2129
  %22 = load ptr, ptr %21, align 8, !dbg !2129
  %23 = load i64, ptr %3, align 8, !dbg !2130
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23, !dbg !2128
  %25 = load ptr, ptr %24, align 8, !dbg !2128
  store ptr %25, ptr %4, align 8, !dbg !2127
  %26 = load ptr, ptr %4, align 8, !dbg !2131
  %27 = icmp ne ptr %26, null, !dbg !2131
  br i1 %27, label %28, label %35, !dbg !2133

28:                                               ; preds = %19
  %29 = load ptr, ptr %4, align 8, !dbg !2134
  call void @ioa_network_buffer_delete(ptr noundef null, ptr noundef %29), !dbg !2136
  %30 = load ptr, ptr %2, align 8, !dbg !2137
  %31 = getelementptr inbounds %struct.unsent_buffer, ptr %30, i32 0, i32 1, !dbg !2138
  %32 = load ptr, ptr %31, align 8, !dbg !2138
  %33 = load i64, ptr %3, align 8, !dbg !2139
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33, !dbg !2137
  store ptr null, ptr %34, align 8, !dbg !2140
  br label %35, !dbg !2141

35:                                               ; preds = %28, %19
  br label %36, !dbg !2142

36:                                               ; preds = %35
  %37 = load i64, ptr %3, align 8, !dbg !2143
  %38 = add i64 %37, 1, !dbg !2143
  store i64 %38, ptr %3, align 8, !dbg !2143
  br label %13, !dbg !2144, !llvm.loop !2145

39:                                               ; preds = %13
  %40 = load ptr, ptr %2, align 8, !dbg !2147
  %41 = getelementptr inbounds %struct.unsent_buffer, ptr %40, i32 0, i32 1, !dbg !2148
  %42 = load ptr, ptr %41, align 8, !dbg !2148
  call void @free(ptr noundef %42) #7, !dbg !2149
  %43 = load ptr, ptr %2, align 8, !dbg !2150
  %44 = getelementptr inbounds %struct.unsent_buffer, ptr %43, i32 0, i32 1, !dbg !2151
  store ptr null, ptr %44, align 8, !dbg !2152
  br label %45, !dbg !2153

45:                                               ; preds = %39, %7
  %46 = load ptr, ptr %2, align 8, !dbg !2154
  %47 = getelementptr inbounds %struct.unsent_buffer, ptr %46, i32 0, i32 0, !dbg !2155
  store i64 0, ptr %47, align 8, !dbg !2156
  br label %48, !dbg !2157

48:                                               ; preds = %45, %1
  ret void, !dbg !2158
}

declare i32 @ur_map_del(ptr noundef, i64 noundef, ptr noundef) #3

declare void @close_ioa_socket(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_and_clean_tcp_connection_by_id(ptr noundef %0, i32 noundef %1) #0 !dbg !2159 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2162, metadata !DIExpression()), !dbg !2163
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2164, metadata !DIExpression()), !dbg !2165
  %7 = load ptr, ptr %4, align 8, !dbg !2166
  %8 = icmp ne ptr %7, null, !dbg !2166
  br i1 %8, label %9, label %26, !dbg !2168

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2169, metadata !DIExpression()), !dbg !2171
  store i64 0, ptr %6, align 8, !dbg !2171
  %10 = load ptr, ptr %4, align 8, !dbg !2172
  %11 = load i32, ptr %5, align 4, !dbg !2174
  %12 = zext i32 %11 to i64, !dbg !2175
  %13 = call i32 @ur_map_get(ptr noundef %10, i64 noundef %12, ptr noundef %6), !dbg !2176
  %14 = icmp ne i32 %13, 0, !dbg !2176
  br i1 %14, label %15, label %25, !dbg !2177

15:                                               ; preds = %9
  %16 = load i64, ptr %6, align 8, !dbg !2178
  %17 = icmp ne i64 %16, 0, !dbg !2178
  br i1 %17, label %18, label %25, !dbg !2179

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !dbg !2180
  %20 = load i32, ptr %5, align 4, !dbg !2182
  %21 = zext i32 %20 to i64, !dbg !2183
  %22 = call i32 @ur_map_del(ptr noundef %19, i64 noundef %21, ptr noundef null), !dbg !2184
  %23 = load i64, ptr %6, align 8, !dbg !2185
  %24 = inttoptr i64 %23 to ptr, !dbg !2186
  store ptr %24, ptr %3, align 8, !dbg !2187
  br label %27, !dbg !2187

25:                                               ; preds = %15, %9
  br label %26, !dbg !2188

26:                                               ; preds = %25, %2
  store ptr null, ptr %3, align 8, !dbg !2189
  br label %27, !dbg !2189

27:                                               ; preds = %26, %18
  %28 = load ptr, ptr %3, align 8, !dbg !2190
  ret ptr %28, !dbg !2190
}

declare i32 @ur_map_get(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_tcp_connection_by_id(ptr noundef %0, i32 noundef %1) #0 !dbg !2191 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2192, metadata !DIExpression()), !dbg !2193
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2194, metadata !DIExpression()), !dbg !2195
  %7 = load ptr, ptr %4, align 8, !dbg !2196
  %8 = icmp ne ptr %7, null, !dbg !2196
  br i1 %8, label %9, label %22, !dbg !2198

9:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2199, metadata !DIExpression()), !dbg !2201
  store i64 0, ptr %6, align 8, !dbg !2201
  %10 = load ptr, ptr %4, align 8, !dbg !2202
  %11 = load i32, ptr %5, align 4, !dbg !2204
  %12 = zext i32 %11 to i64, !dbg !2205
  %13 = call i32 @ur_map_get(ptr noundef %10, i64 noundef %12, ptr noundef %6), !dbg !2206
  %14 = icmp ne i32 %13, 0, !dbg !2206
  br i1 %14, label %15, label %21, !dbg !2207

15:                                               ; preds = %9
  %16 = load i64, ptr %6, align 8, !dbg !2208
  %17 = icmp ne i64 %16, 0, !dbg !2208
  br i1 %17, label %18, label %21, !dbg !2209

18:                                               ; preds = %15
  %19 = load i64, ptr %6, align 8, !dbg !2210
  %20 = inttoptr i64 %19 to ptr, !dbg !2212
  store ptr %20, ptr %3, align 8, !dbg !2213
  br label %23, !dbg !2213

21:                                               ; preds = %15, %9
  br label %22, !dbg !2214

22:                                               ; preds = %21, %2
  store ptr null, ptr %3, align 8, !dbg !2215
  br label %23, !dbg !2215

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %3, align 8, !dbg !2216
  ret ptr %24, !dbg !2216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_tcp_connection_by_peer(ptr noundef %0, ptr noundef %1) #0 !dbg !2217 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2220, metadata !DIExpression()), !dbg !2221
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2222, metadata !DIExpression()), !dbg !2223
  %10 = load ptr, ptr %4, align 8, !dbg !2224
  %11 = icmp ne ptr %10, null, !dbg !2224
  br i1 %11, label %12, label %54, !dbg !2226

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !dbg !2227
  %14 = icmp ne ptr %13, null, !dbg !2227
  br i1 %14, label %15, label %54, !dbg !2228

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2229, metadata !DIExpression()), !dbg !2231
  %16 = load ptr, ptr %4, align 8, !dbg !2232
  %17 = getelementptr inbounds %struct._allocation, ptr %16, i32 0, i32 8, !dbg !2233
  store ptr %17, ptr %6, align 8, !dbg !2231
  %18 = load ptr, ptr %6, align 8, !dbg !2234
  %19 = getelementptr inbounds %struct._tcp_connection_list, ptr %18, i32 0, i32 1, !dbg !2236
  %20 = load ptr, ptr %19, align 8, !dbg !2236
  %21 = icmp ne ptr %20, null, !dbg !2234
  br i1 %21, label %22, label %53, !dbg !2237

22:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2238, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2241, metadata !DIExpression()), !dbg !2242
  %23 = load ptr, ptr %6, align 8, !dbg !2243
  %24 = getelementptr inbounds %struct._tcp_connection_list, ptr %23, i32 0, i32 0, !dbg !2244
  %25 = load i64, ptr %24, align 8, !dbg !2244
  store i64 %25, ptr %8, align 8, !dbg !2242
  store i64 0, ptr %7, align 8, !dbg !2245
  br label %26, !dbg !2247

26:                                               ; preds = %49, %22
  %27 = load i64, ptr %7, align 8, !dbg !2248
  %28 = load i64, ptr %8, align 8, !dbg !2250
  %29 = icmp ult i64 %27, %28, !dbg !2251
  br i1 %29, label %30, label %52, !dbg !2252

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2253, metadata !DIExpression()), !dbg !2255
  %31 = load ptr, ptr %6, align 8, !dbg !2256
  %32 = getelementptr inbounds %struct._tcp_connection_list, ptr %31, i32 0, i32 1, !dbg !2257
  %33 = load ptr, ptr %32, align 8, !dbg !2257
  %34 = load i64, ptr %7, align 8, !dbg !2258
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34, !dbg !2256
  %36 = load ptr, ptr %35, align 8, !dbg !2256
  store ptr %36, ptr %9, align 8, !dbg !2255
  %37 = load ptr, ptr %9, align 8, !dbg !2259
  %38 = icmp ne ptr %37, null, !dbg !2259
  br i1 %38, label %39, label %48, !dbg !2261

39:                                               ; preds = %30
  %40 = load ptr, ptr %9, align 8, !dbg !2262
  %41 = getelementptr inbounds %struct._tcp_connection, ptr %40, i32 0, i32 2, !dbg !2265
  %42 = load ptr, ptr %5, align 8, !dbg !2266
  %43 = call i32 @addr_eq(ptr noundef %41, ptr noundef %42), !dbg !2267
  %44 = icmp ne i32 %43, 0, !dbg !2267
  br i1 %44, label %45, label %47, !dbg !2268

45:                                               ; preds = %39
  %46 = load ptr, ptr %9, align 8, !dbg !2269
  store ptr %46, ptr %3, align 8, !dbg !2271
  br label %55, !dbg !2271

47:                                               ; preds = %39
  br label %48, !dbg !2272

48:                                               ; preds = %47, %30
  br label %49, !dbg !2273

49:                                               ; preds = %48
  %50 = load i64, ptr %7, align 8, !dbg !2274
  %51 = add i64 %50, 1, !dbg !2274
  store i64 %51, ptr %7, align 8, !dbg !2274
  br label %26, !dbg !2275, !llvm.loop !2276

52:                                               ; preds = %26
  br label %53, !dbg !2278

53:                                               ; preds = %52, %15
  br label %54, !dbg !2279

54:                                               ; preds = %53, %12, %2
  store ptr null, ptr %3, align 8, !dbg !2280
  br label %55, !dbg !2280

55:                                               ; preds = %54, %45
  %56 = load ptr, ptr %3, align 8, !dbg !2281
  ret ptr %56, !dbg !2281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_accept_tcp_connection_from_peer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2282 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2285, metadata !DIExpression()), !dbg !2286
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2287, metadata !DIExpression()), !dbg !2288
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2289, metadata !DIExpression()), !dbg !2290
  %8 = load i32, ptr %7, align 4, !dbg !2291
  %9 = icmp ne i32 %8, 0, !dbg !2291
  br i1 %9, label %10, label %11, !dbg !2293

10:                                               ; preds = %3
  store i32 1, ptr %4, align 4, !dbg !2294
  br label %25, !dbg !2294

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !dbg !2295
  %13 = icmp ne ptr %12, null, !dbg !2295
  br i1 %13, label %14, label %24, !dbg !2297

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 8, !dbg !2298
  %16 = icmp ne ptr %15, null, !dbg !2298
  br i1 %16, label %17, label %24, !dbg !2299

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 8, !dbg !2300
  %19 = getelementptr inbounds %struct._allocation, ptr %18, i32 0, i32 2, !dbg !2302
  %20 = load ptr, ptr %6, align 8, !dbg !2303
  %21 = call ptr @get_from_turn_permission_hashtable(ptr noundef %19, ptr noundef %20), !dbg !2304
  %22 = icmp ne ptr %21, null, !dbg !2305
  %23 = zext i1 %22 to i32, !dbg !2305
  store i32 %23, ptr %4, align 4, !dbg !2306
  br label %25, !dbg !2306

24:                                               ; preds = %14, %11
  store i32 0, ptr %4, align 4, !dbg !2307
  br label %25, !dbg !2307

25:                                               ; preds = %24, %17, %10
  %26 = load i32, ptr %4, align 4, !dbg !2308
  ret i32 %26, !dbg !2308
}

declare void @ioa_network_buffer_delete(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_unsent_buffer(ptr noundef %0, ptr noundef %1) #0 !dbg !2309 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2312, metadata !DIExpression()), !dbg !2313
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2314, metadata !DIExpression()), !dbg !2315
  %5 = load ptr, ptr %3, align 8, !dbg !2316
  %6 = icmp ne ptr %5, null, !dbg !2316
  br i1 %6, label %7, label %12, !dbg !2318

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !2319
  %9 = getelementptr inbounds %struct.unsent_buffer, ptr %8, i32 0, i32 0, !dbg !2320
  %10 = load i64, ptr %9, align 8, !dbg !2320
  %11 = icmp uge i64 %10, 16, !dbg !2321
  br i1 %11, label %12, label %14, !dbg !2322

12:                                               ; preds = %7, %2
  %13 = load ptr, ptr %4, align 8, !dbg !2323
  call void @ioa_network_buffer_delete(ptr noundef null, ptr noundef %13), !dbg !2325
  br label %38, !dbg !2326

14:                                               ; preds = %7
  %15 = load ptr, ptr %3, align 8, !dbg !2327
  %16 = getelementptr inbounds %struct.unsent_buffer, ptr %15, i32 0, i32 1, !dbg !2329
  %17 = load ptr, ptr %16, align 8, !dbg !2329
  %18 = load ptr, ptr %3, align 8, !dbg !2330
  %19 = getelementptr inbounds %struct.unsent_buffer, ptr %18, i32 0, i32 0, !dbg !2331
  %20 = load i64, ptr %19, align 8, !dbg !2331
  %21 = add i64 %20, 1, !dbg !2332
  %22 = mul i64 8, %21, !dbg !2333
  %23 = call ptr @realloc(ptr noundef %17, i64 noundef %22) #8, !dbg !2334
  %24 = load ptr, ptr %3, align 8, !dbg !2335
  %25 = getelementptr inbounds %struct.unsent_buffer, ptr %24, i32 0, i32 1, !dbg !2336
  store ptr %23, ptr %25, align 8, !dbg !2337
  %26 = load ptr, ptr %4, align 8, !dbg !2338
  %27 = load ptr, ptr %3, align 8, !dbg !2339
  %28 = getelementptr inbounds %struct.unsent_buffer, ptr %27, i32 0, i32 1, !dbg !2340
  %29 = load ptr, ptr %28, align 8, !dbg !2340
  %30 = load ptr, ptr %3, align 8, !dbg !2341
  %31 = getelementptr inbounds %struct.unsent_buffer, ptr %30, i32 0, i32 0, !dbg !2342
  %32 = load i64, ptr %31, align 8, !dbg !2342
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32, !dbg !2339
  store ptr %26, ptr %33, align 8, !dbg !2343
  %34 = load ptr, ptr %3, align 8, !dbg !2344
  %35 = getelementptr inbounds %struct.unsent_buffer, ptr %34, i32 0, i32 0, !dbg !2345
  %36 = load i64, ptr %35, align 8, !dbg !2346
  %37 = add i64 %36, 1, !dbg !2346
  store i64 %37, ptr %35, align 8, !dbg !2346
  br label %38

38:                                               ; preds = %14, %12
  ret void, !dbg !2347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @top_unsent_buffer(ptr noundef %0) #0 !dbg !2348 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2353, metadata !DIExpression()), !dbg !2354
  store ptr null, ptr %3, align 8, !dbg !2354
  %5 = load ptr, ptr %2, align 8, !dbg !2355
  %6 = icmp ne ptr %5, null, !dbg !2355
  br i1 %6, label %7, label %44, !dbg !2357

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !2358
  %9 = getelementptr inbounds %struct.unsent_buffer, ptr %8, i32 0, i32 1, !dbg !2359
  %10 = load ptr, ptr %9, align 8, !dbg !2359
  %11 = icmp ne ptr %10, null, !dbg !2358
  br i1 %11, label %12, label %44, !dbg !2360

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !dbg !2361
  %14 = getelementptr inbounds %struct.unsent_buffer, ptr %13, i32 0, i32 0, !dbg !2362
  %15 = load i64, ptr %14, align 8, !dbg !2362
  %16 = icmp ne i64 %15, 0, !dbg !2361
  br i1 %16, label %17, label %44, !dbg !2363

17:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2364, metadata !DIExpression()), !dbg !2366
  store i64 0, ptr %4, align 8, !dbg !2367
  br label %18, !dbg !2369

18:                                               ; preds = %40, %17
  %19 = load i64, ptr %4, align 8, !dbg !2370
  %20 = load ptr, ptr %2, align 8, !dbg !2372
  %21 = getelementptr inbounds %struct.unsent_buffer, ptr %20, i32 0, i32 0, !dbg !2373
  %22 = load i64, ptr %21, align 8, !dbg !2373
  %23 = icmp ult i64 %19, %22, !dbg !2374
  br i1 %23, label %24, label %43, !dbg !2375

24:                                               ; preds = %18
  %25 = load ptr, ptr %2, align 8, !dbg !2376
  %26 = getelementptr inbounds %struct.unsent_buffer, ptr %25, i32 0, i32 1, !dbg !2379
  %27 = load ptr, ptr %26, align 8, !dbg !2379
  %28 = load i64, ptr %4, align 8, !dbg !2380
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28, !dbg !2376
  %30 = load ptr, ptr %29, align 8, !dbg !2376
  %31 = icmp ne ptr %30, null, !dbg !2376
  br i1 %31, label %32, label %39, !dbg !2381

32:                                               ; preds = %24
  %33 = load ptr, ptr %2, align 8, !dbg !2382
  %34 = getelementptr inbounds %struct.unsent_buffer, ptr %33, i32 0, i32 1, !dbg !2384
  %35 = load ptr, ptr %34, align 8, !dbg !2384
  %36 = load i64, ptr %4, align 8, !dbg !2385
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36, !dbg !2382
  %38 = load ptr, ptr %37, align 8, !dbg !2382
  store ptr %38, ptr %3, align 8, !dbg !2386
  br label %43, !dbg !2387

39:                                               ; preds = %24
  br label %40, !dbg !2388

40:                                               ; preds = %39
  %41 = load i64, ptr %4, align 8, !dbg !2389
  %42 = add i64 %41, 1, !dbg !2389
  store i64 %42, ptr %4, align 8, !dbg !2389
  br label %18, !dbg !2390, !llvm.loop !2391

43:                                               ; preds = %32, %18
  br label %44, !dbg !2393

44:                                               ; preds = %43, %12, %7, %1
  %45 = load ptr, ptr %3, align 8, !dbg !2394
  ret ptr %45, !dbg !2395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop_unsent_buffer(ptr noundef %0) #0 !dbg !2396 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2397, metadata !DIExpression()), !dbg !2398
  %4 = load ptr, ptr %2, align 8, !dbg !2399
  %5 = icmp ne ptr %4, null, !dbg !2399
  br i1 %5, label %6, label %42, !dbg !2401

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !2402
  %8 = getelementptr inbounds %struct.unsent_buffer, ptr %7, i32 0, i32 1, !dbg !2403
  %9 = load ptr, ptr %8, align 8, !dbg !2403
  %10 = icmp ne ptr %9, null, !dbg !2402
  br i1 %10, label %11, label %42, !dbg !2404

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !dbg !2405
  %13 = getelementptr inbounds %struct.unsent_buffer, ptr %12, i32 0, i32 0, !dbg !2406
  %14 = load i64, ptr %13, align 8, !dbg !2406
  %15 = icmp ne i64 %14, 0, !dbg !2405
  br i1 %15, label %16, label %42, !dbg !2407

16:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2408, metadata !DIExpression()), !dbg !2410
  store i64 0, ptr %3, align 8, !dbg !2411
  br label %17, !dbg !2413

17:                                               ; preds = %38, %16
  %18 = load i64, ptr %3, align 8, !dbg !2414
  %19 = load ptr, ptr %2, align 8, !dbg !2416
  %20 = getelementptr inbounds %struct.unsent_buffer, ptr %19, i32 0, i32 0, !dbg !2417
  %21 = load i64, ptr %20, align 8, !dbg !2417
  %22 = icmp ult i64 %18, %21, !dbg !2418
  br i1 %22, label %23, label %41, !dbg !2419

23:                                               ; preds = %17
  %24 = load ptr, ptr %2, align 8, !dbg !2420
  %25 = getelementptr inbounds %struct.unsent_buffer, ptr %24, i32 0, i32 1, !dbg !2423
  %26 = load ptr, ptr %25, align 8, !dbg !2423
  %27 = load i64, ptr %3, align 8, !dbg !2424
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27, !dbg !2420
  %29 = load ptr, ptr %28, align 8, !dbg !2420
  %30 = icmp ne ptr %29, null, !dbg !2420
  br i1 %30, label %31, label %37, !dbg !2425

31:                                               ; preds = %23
  %32 = load ptr, ptr %2, align 8, !dbg !2426
  %33 = getelementptr inbounds %struct.unsent_buffer, ptr %32, i32 0, i32 1, !dbg !2428
  %34 = load ptr, ptr %33, align 8, !dbg !2428
  %35 = load i64, ptr %3, align 8, !dbg !2429
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35, !dbg !2426
  store ptr null, ptr %36, align 8, !dbg !2430
  br label %41, !dbg !2431

37:                                               ; preds = %23
  br label %38, !dbg !2432

38:                                               ; preds = %37
  %39 = load i64, ptr %3, align 8, !dbg !2433
  %40 = add i64 %39, 1, !dbg !2433
  store i64 %40, ptr %3, align 8, !dbg !2433
  br label %17, !dbg !2434, !llvm.loop !2435

41:                                               ; preds = %31, %17
  br label %42, !dbg !2437

42:                                               ; preds = %41, %11, %6, %1
  ret void, !dbg !2438
}

declare i32 @addr_eq_no_port(ptr noundef, ptr noundef) #3

declare i64 @turn_random() #3

declare i32 @ur_map_put(ptr noundef, i64 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(1) }
attributes #9 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!50}
!llvm.module.flags = !{!300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/server/ns_turn_allocation.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8047f23c0c79d27e9f4fd57e487c0bad")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 34)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 46)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 22)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 62)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 20)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 64)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 60)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 613, type: !14, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 52)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 40)
!50 = distinct !DICompileUnit(language: DW_LANG_C11, file: !51, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !70, globals: !299, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "/home/raj/coturn/src/server/ns_turn_allocation.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "8047f23c0c79d27e9f4fd57e487c0bad")
!52 = !{!53, !63}
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TC_STATE", file: !54, line: 67, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "src/server/ns_turn_allocation.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0cb2cf61c9ec5dd3030a6e5a6f8d4af1")
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !{!57, !58, !59, !60, !61, !62}
!57 = !DIEnumerator(name: "TC_STATE_UNKNOWN", value: 0)
!58 = !DIEnumerator(name: "TC_STATE_CLIENT_TO_PEER_CONNECTING", value: 1)
!59 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTING", value: 2)
!60 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTED", value: 3)
!61 = !DIEnumerator(name: "TC_STATE_READY", value: 4)
!62 = !DIEnumerator(name: "TC_STATE_FAILED", value: 5)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 47, baseType: !55, size: 32, elements: !65)
!64 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!65 = !{!66, !67, !68, !69}
!66 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!67 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!68 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!69 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!70 = !{!71, !72, !78, !89, !84, !88, !188, !110, !200, !201, !206, !207, !243, !87, !244, !241, !151}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !74, line: 24, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !76, line: 38, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "foreachcb_type", file: !79, line: 52, baseType: !80)
!79 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !84, !88}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_key_type", file: !79, line: 47, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !74, line: 27, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !76, line: 45, baseType: !87)
!87 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_value_type", file: !79, line: 48, baseType: !87)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_info", file: !54, line: 152, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_info", file: !54, line: 143, size: 5184, elements: !92)
!92 = !{!93, !94, !120, !178, !181, !184, !185, !186}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !91, file: !54, line: 144, baseType: !83, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !91, file: !54, line: 145, baseType: !95, size: 4608, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map", file: !79, line: 117, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map", file: !79, line: 115, size: 4608, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !96, file: !79, line: 116, baseType: !99, size: 4608)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 4608, elements: !118)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map_array", file: !79, line: 113, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map_array", file: !79, line: 107, size: 576, elements: !102)
!102 = !{!103, !107, !109, !112, !115}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "main_keys", scope: !101, file: !79, line: 108, baseType: !104, size: 192)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 192, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 3)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "main_values", scope: !101, file: !79, line: 109, baseType: !108, size: 192, offset: 192)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 192, elements: !105)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !101, file: !79, line: 110, baseType: !110, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 46, baseType: !87)
!111 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "extra_keys", scope: !101, file: !79, line: 111, baseType: !113, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !101, file: !79, line: 112, baseType: !116, size: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!118 = !{!119}
!119 = !DISubrange(count: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !91, file: !54, line: 146, baseType: !121, size: 224, offset: 4672)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !122, line: 48, baseType: !123)
!122 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !122, line: 44, size: 224, elements: !124)
!124 = !{!125, !137, !155}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !123, file: !122, line: 45, baseType: !126, size: 128)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !127, line: 180, size: 128, elements: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!128 = !{!129, !133}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !126, file: !127, line: 182, baseType: !130, size: 16)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !131, line: 28, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !126, file: !127, line: 183, baseType: !134, size: 112, offset: 16)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 14)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !123, file: !122, line: 46, baseType: !138, size: 128)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !139, line: 245, size: 128, elements: !140)
!139 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!140 = !{!141, !142, !146, !153}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !138, file: !139, line: 247, baseType: !130, size: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !138, file: !139, line: 248, baseType: !143, size: 16, offset: 16)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !139, line: 123, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !74, line: 25, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !76, line: 40, baseType: !132)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !138, file: !139, line: 249, baseType: !147, size: 32, offset: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !139, line: 31, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !147, file: !139, line: 33, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !139, line: 30, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !74, line: 26, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !76, line: 42, baseType: !55)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !138, file: !139, line: 252, baseType: !154, size: 64, offset: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !118)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !123, file: !122, line: 47, baseType: !156, size: 224)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !139, line: 260, size: 224, elements: !157)
!157 = !{!158, !159, !160, !161, !177}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !156, file: !139, line: 262, baseType: !130, size: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !156, file: !139, line: 263, baseType: !143, size: 16, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !156, file: !139, line: 264, baseType: !151, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !156, file: !139, line: 265, baseType: !162, size: 128, offset: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !139, line: 219, size: 128, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !162, file: !139, line: 226, baseType: !165, size: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !139, line: 221, size: 128, elements: !166)
!166 = !{!167, !171, !173}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !165, file: !139, line: 223, baseType: !168, size: 128)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !165, file: !139, line: 224, baseType: !172, size: 128)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !118)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !165, file: !139, line: 225, baseType: !174, size: 128)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 4)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !156, file: !139, line: 266, baseType: !151, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !91, file: !54, line: 147, baseType: !179, size: 32, offset: 4896)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !180, line: 108, baseType: !151)
!180 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!181 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !91, file: !54, line: 148, baseType: !182, size: 64, offset: 4928)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_timer_handle", file: !183, line: 122, baseType: !71)
!183 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !91, file: !54, line: 149, baseType: !71, size: 64, offset: 4992)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !91, file: !54, line: 150, baseType: !83, size: 32, offset: 5056)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !91, file: !54, line: 151, baseType: !187, size: 64, offset: 5120)
!187 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_info", file: !54, line: 121, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_info", file: !54, line: 112, size: 576, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "chnum", scope: !190, file: !54, line: 113, baseType: !144, size: 16)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !190, file: !54, line: 114, baseType: !83, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !190, file: !54, line: 115, baseType: !144, size: 16, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !190, file: !54, line: 116, baseType: !121, size: 224, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !190, file: !54, line: 117, baseType: !179, size: 32, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !190, file: !54, line: 118, baseType: !182, size: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !190, file: !54, line: 119, baseType: !71, size: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_channel", scope: !190, file: !54, line: 120, baseType: !71, size: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_slot", file: !54, line: 156, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_slot", file: !54, line: 154, size: 5184, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !203, file: !54, line: 155, baseType: !90, size: 5184)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection", file: !183, line: 50, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection", file: !54, line: 85, size: 960, elements: !210)
!210 = !{!211, !213, !215, !216, !221, !222, !223, !224, !233, !234, !235}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !209, file: !54, line: 87, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "TC_STATE", file: !54, line: 76, baseType: !53)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !209, file: !54, line: 88, baseType: !214, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_id", file: !54, line: 78, baseType: !151)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !209, file: !54, line: 89, baseType: !121, size: 224, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "client_s", scope: !209, file: !54, line: 90, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket_handle", file: !183, line: 116, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket", file: !183, line: 115, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_socket", file: !183, line: 114, flags: DIFlagFwdDecl)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "peer_s", scope: !209, file: !54, line: 91, baseType: !217, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "peer_conn_timeout", scope: !209, file: !54, line: 92, baseType: !182, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bind_timeout", scope: !209, file: !54, line: 93, baseType: !182, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !209, file: !54, line: 94, baseType: !225, size: 96, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !226, line: 52, baseType: !227)
!226 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 47, size: 96, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !227, file: !226, line: 51, baseType: !230, size: 96)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 96, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 12)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !209, file: !54, line: 95, baseType: !71, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !209, file: !54, line: 96, baseType: !83, size: 32, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ub_to_client", scope: !209, file: !54, line: 97, baseType: !236, size: 128, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "unsent_buffer", file: !54, line: 83, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 80, size: 128, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !237, file: !54, line: 81, baseType: !110, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !237, file: !54, line: 82, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_network_buffer_handle", file: !183, line: 124, baseType: !71)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocation", file: !54, line: 186, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_allocation", file: !54, line: 176, size: 141120, elements: !247)
!247 = !{!248, !249, !250, !263, !273, !275, !288, !289, !293}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !246, file: !54, line: 177, baseType: !83, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !246, file: !54, line: 178, baseType: !225, size: 96, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_perm", scope: !246, file: !54, line: 179, baseType: !251, size: 125440, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_hashtable", file: !54, line: 166, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_hashtable", file: !54, line: 164, size: 125440, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !252, file: !54, line: 165, baseType: !255, size: 125440)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 125440, elements: !118)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_array", file: !54, line: 162, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_array", file: !54, line: 158, size: 15680, elements: !258)
!258 = !{!259, !261, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "main_slots", scope: !257, file: !54, line: 159, baseType: !260, size: 15552)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 15552, elements: !105)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !257, file: !54, line: 160, baseType: !110, size: 64, offset: 15552)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "extra_slots", scope: !257, file: !54, line: 161, baseType: !200, size: 64, offset: 15616)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions", scope: !246, file: !54, line: 180, baseType: !264, size: 384, offset: 125568)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 384, elements: !271)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "relay_endpoint_session", file: !54, line: 55, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 50, size: 192, elements: !267)
!267 = !{!268, !269, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !266, file: !54, line: 52, baseType: !217, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !266, file: !54, line: 53, baseType: !179, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !266, file: !54, line: 54, baseType: !182, size: 64, offset: 128)
!271 = !{!272}
!272 = !DISubrange(count: 2)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions_failure", scope: !246, file: !54, line: 181, baseType: !274, size: 64, offset: 125952)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !271)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !246, file: !54, line: 182, baseType: !276, size: 14848, offset: 126016)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map", file: !54, line: 136, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_map", file: !54, line: 134, size: 14848, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !277, file: !54, line: 135, baseType: !280, size: 14848)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 14848, elements: !118)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map_array", file: !54, line: 132, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_chn_map_array", file: !54, line: 128, size: 1856, elements: !283)
!283 = !{!284, !286, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "main_chns", scope: !282, file: !54, line: 129, baseType: !285, size: 1728)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1728, elements: !105)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !282, file: !54, line: 130, baseType: !110, size: 64, offset: 1728)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "extra_chns", scope: !282, file: !54, line: 131, baseType: !206, size: 64, offset: 1792)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !246, file: !54, line: 183, baseType: !71, size: 64, offset: 140864)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_connections", scope: !246, file: !54, line: 184, baseType: !290, size: 64, offset: 140928)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map", file: !79, line: 43, baseType: !292)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_map", file: !79, line: 42, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tcs", scope: !246, file: !54, line: 185, baseType: !294, size: 128, offset: 140992)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_list", file: !54, line: 103, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection_list", file: !54, line: 100, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !295, file: !54, line: 101, baseType: !110, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !295, file: !54, line: 102, baseType: !243, size: 64, offset: 64)
!299 = !{!0, !7, !12, !18, !23, !28, !33, !38, !40, !45}
!300 = !{i32 7, !"Dwarf Version", i32 5}
!301 = !{i32 2, !"Debug Info Version", i32 3}
!302 = !{i32 1, !"wchar_size", i32 4}
!303 = !{i32 8, !"PIC Level", i32 2}
!304 = !{i32 7, !"PIE Level", i32 2}
!305 = !{i32 7, !"uwtable", i32 2}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 16.0.0"}
!308 = distinct !DISubprogram(name: "init_allocation", scope: !2, file: !2, line: 41, type: !309, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !71, !244, !290}
!311 = !{}
!312 = !DILocalVariable(name: "owner", arg: 1, scope: !308, file: !2, line: 41, type: !71)
!313 = !DILocation(line: 41, column: 28, scope: !308)
!314 = !DILocalVariable(name: "a", arg: 2, scope: !308, file: !2, line: 41, type: !244)
!315 = !DILocation(line: 41, column: 47, scope: !308)
!316 = !DILocalVariable(name: "tcp_connections", arg: 3, scope: !308, file: !2, line: 41, type: !290)
!317 = !DILocation(line: 41, column: 58, scope: !308)
!318 = !DILocation(line: 42, column: 6, scope: !319)
!319 = distinct !DILexicalBlock(scope: !308, file: !2, line: 42, column: 6)
!320 = !DILocation(line: 42, column: 6, scope: !308)
!321 = !DILocation(line: 43, column: 11, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !2, line: 42, column: 9)
!323 = !DILocation(line: 43, column: 5, scope: !322)
!324 = !DILocation(line: 44, column: 16, scope: !322)
!325 = !DILocation(line: 44, column: 5, scope: !322)
!326 = !DILocation(line: 44, column: 8, scope: !322)
!327 = !DILocation(line: 44, column: 14, scope: !322)
!328 = !DILocation(line: 45, column: 26, scope: !322)
!329 = !DILocation(line: 45, column: 5, scope: !322)
!330 = !DILocation(line: 45, column: 8, scope: !322)
!331 = !DILocation(line: 45, column: 24, scope: !322)
!332 = !DILocation(line: 46, column: 38, scope: !322)
!333 = !DILocation(line: 46, column: 41, scope: !322)
!334 = !DILocation(line: 46, column: 5, scope: !322)
!335 = !DILocation(line: 47, column: 3, scope: !322)
!336 = !DILocation(line: 48, column: 1, scope: !308)
!337 = distinct !DISubprogram(name: "init_turn_permission_hashtable", scope: !2, file: !2, line: 192, type: !338, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !311)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!341 = !DILocalVariable(name: "map", arg: 1, scope: !337, file: !2, line: 192, type: !340)
!342 = !DILocation(line: 192, column: 71, scope: !337)
!343 = !DILocation(line: 194, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !337, file: !2, line: 194, column: 6)
!345 = !DILocation(line: 194, column: 6, scope: !337)
!346 = !DILocation(line: 195, column: 9, scope: !344)
!347 = !DILocation(line: 195, column: 3, scope: !344)
!348 = !DILocation(line: 196, column: 1, scope: !337)
!349 = distinct !DISubprogram(name: "clear_allocation", scope: !2, file: !2, line: 50, type: !350, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !244}
!352 = !DILocalVariable(name: "a", arg: 1, scope: !349, file: !2, line: 50, type: !244)
!353 = !DILocation(line: 50, column: 35, scope: !349)
!354 = !DILocation(line: 52, column: 6, scope: !355)
!355 = distinct !DILexicalBlock(scope: !349, file: !2, line: 52, column: 6)
!356 = !DILocation(line: 52, column: 6, scope: !349)
!357 = !DILocation(line: 54, column: 6, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 54, column: 6)
!359 = distinct !DILexicalBlock(scope: !355, file: !2, line: 52, column: 9)
!360 = !DILocation(line: 54, column: 9, scope: !358)
!361 = !DILocation(line: 54, column: 6, scope: !359)
!362 = !DILocation(line: 55, column: 34, scope: !358)
!363 = !DILocation(line: 55, column: 4, scope: !358)
!364 = !DILocation(line: 57, column: 6, scope: !365)
!365 = distinct !DILexicalBlock(scope: !359, file: !2, line: 57, column: 6)
!366 = !DILocation(line: 57, column: 9, scope: !365)
!367 = !DILocation(line: 57, column: 13, scope: !365)
!368 = !DILocation(line: 57, column: 6, scope: !359)
!369 = !DILocalVariable(name: "i", scope: !370, file: !2, line: 58, type: !110)
!370 = distinct !DILexicalBlock(scope: !365, file: !2, line: 57, column: 20)
!371 = !DILocation(line: 58, column: 11, scope: !370)
!372 = !DILocalVariable(name: "sz", scope: !370, file: !2, line: 59, type: !110)
!373 = !DILocation(line: 59, column: 11, scope: !370)
!374 = !DILocation(line: 59, column: 16, scope: !370)
!375 = !DILocation(line: 59, column: 19, scope: !370)
!376 = !DILocation(line: 59, column: 23, scope: !370)
!377 = !DILocation(line: 60, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !2, line: 60, column: 4)
!379 = !DILocation(line: 60, column: 8, scope: !378)
!380 = !DILocation(line: 60, column: 12, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !2, line: 60, column: 4)
!382 = !DILocation(line: 60, column: 14, scope: !381)
!383 = !DILocation(line: 60, column: 13, scope: !381)
!384 = !DILocation(line: 60, column: 4, scope: !378)
!385 = !DILocalVariable(name: "tc", scope: !386, file: !2, line: 61, type: !207)
!386 = distinct !DILexicalBlock(scope: !381, file: !2, line: 60, column: 22)
!387 = !DILocation(line: 61, column: 21, scope: !386)
!388 = !DILocation(line: 61, column: 26, scope: !386)
!389 = !DILocation(line: 61, column: 29, scope: !386)
!390 = !DILocation(line: 61, column: 33, scope: !386)
!391 = !DILocation(line: 61, column: 39, scope: !386)
!392 = !DILocation(line: 62, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !386, file: !2, line: 62, column: 8)
!394 = !DILocation(line: 62, column: 8, scope: !386)
!395 = !DILocation(line: 63, column: 28, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !2, line: 62, column: 12)
!397 = !DILocation(line: 63, column: 6, scope: !396)
!398 = !DILocation(line: 64, column: 6, scope: !396)
!399 = !DILocation(line: 64, column: 9, scope: !396)
!400 = !DILocation(line: 64, column: 13, scope: !396)
!401 = !DILocation(line: 64, column: 19, scope: !396)
!402 = !DILocation(line: 64, column: 22, scope: !396)
!403 = !DILocation(line: 65, column: 5, scope: !396)
!404 = !DILocation(line: 66, column: 4, scope: !386)
!405 = !DILocation(line: 60, column: 17, scope: !381)
!406 = !DILocation(line: 60, column: 4, scope: !381)
!407 = distinct !{!407, !384, !408, !409}
!408 = !DILocation(line: 66, column: 4, scope: !378)
!409 = !{!"llvm.loop.mustprogress"}
!410 = !DILocation(line: 67, column: 9, scope: !370)
!411 = !DILocation(line: 67, column: 12, scope: !370)
!412 = !DILocation(line: 67, column: 16, scope: !370)
!413 = !DILocation(line: 67, column: 4, scope: !370)
!414 = !DILocation(line: 68, column: 4, scope: !370)
!415 = !DILocation(line: 68, column: 7, scope: !370)
!416 = !DILocation(line: 68, column: 11, scope: !370)
!417 = !DILocation(line: 68, column: 17, scope: !370)
!418 = !DILocation(line: 69, column: 3, scope: !370)
!419 = !DILocation(line: 70, column: 3, scope: !359)
!420 = !DILocation(line: 70, column: 6, scope: !359)
!421 = !DILocation(line: 70, column: 10, scope: !359)
!422 = !DILocation(line: 70, column: 13, scope: !359)
!423 = !DILocalVariable(name: "i", scope: !424, file: !2, line: 73, type: !83)
!424 = distinct !DILexicalBlock(scope: !359, file: !2, line: 72, column: 3)
!425 = !DILocation(line: 73, column: 8, scope: !424)
!426 = !DILocation(line: 74, column: 10, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !2, line: 74, column: 4)
!428 = !DILocation(line: 74, column: 8, scope: !427)
!429 = !DILocation(line: 74, column: 14, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !2, line: 74, column: 4)
!431 = !DILocation(line: 74, column: 15, scope: !430)
!432 = !DILocation(line: 74, column: 4, scope: !427)
!433 = !DILocation(line: 75, column: 33, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !2, line: 74, column: 45)
!435 = !DILocation(line: 75, column: 36, scope: !434)
!436 = !DILocation(line: 75, column: 51, scope: !434)
!437 = !DILocation(line: 75, column: 54, scope: !434)
!438 = !DILocation(line: 75, column: 57, scope: !434)
!439 = !DILocation(line: 75, column: 60, scope: !434)
!440 = !DILocation(line: 75, column: 5, scope: !434)
!441 = !DILocation(line: 76, column: 41, scope: !434)
!442 = !DILocation(line: 76, column: 44, scope: !434)
!443 = !DILocation(line: 76, column: 59, scope: !434)
!444 = !DILocation(line: 76, column: 5, scope: !434)
!445 = !DILocation(line: 77, column: 5, scope: !434)
!446 = !DILocation(line: 77, column: 5, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 77, column: 5)
!448 = distinct !DILexicalBlock(scope: !434, file: !2, line: 77, column: 5)
!449 = !DILocation(line: 77, column: 5, scope: !448)
!450 = !DILocation(line: 77, column: 5, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !2, line: 77, column: 5)
!452 = !DILocation(line: 78, column: 4, scope: !434)
!453 = !DILocation(line: 74, column: 40, scope: !430)
!454 = !DILocation(line: 74, column: 4, scope: !430)
!455 = distinct !{!455, !432, !456, !409}
!456 = !DILocation(line: 78, column: 4, scope: !427)
!457 = !DILocation(line: 82, column: 36, scope: !359)
!458 = !DILocation(line: 82, column: 39, scope: !359)
!459 = !DILocation(line: 82, column: 3, scope: !359)
!460 = !DILocation(line: 83, column: 18, scope: !359)
!461 = !DILocation(line: 83, column: 21, scope: !359)
!462 = !DILocation(line: 83, column: 3, scope: !359)
!463 = !DILocation(line: 85, column: 3, scope: !359)
!464 = !DILocation(line: 85, column: 6, scope: !359)
!465 = !DILocation(line: 85, column: 14, scope: !359)
!466 = !DILocation(line: 86, column: 2, scope: !359)
!467 = !DILocation(line: 87, column: 1, scope: !349)
!468 = distinct !DISubprogram(name: "delete_tcp_connection", scope: !2, file: !2, line: 609, type: !469, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !207}
!471 = !DILocalVariable(name: "tc", arg: 1, scope: !468, file: !2, line: 609, type: !207)
!472 = !DILocation(line: 609, column: 44, scope: !468)
!473 = !DILocation(line: 611, column: 5, scope: !474)
!474 = distinct !DILexicalBlock(scope: !468, file: !2, line: 611, column: 5)
!475 = !DILocation(line: 611, column: 5, scope: !468)
!476 = !DILocation(line: 612, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 612, column: 6)
!478 = distinct !DILexicalBlock(scope: !474, file: !2, line: 611, column: 9)
!479 = !DILocation(line: 612, column: 10, scope: !477)
!480 = !DILocation(line: 612, column: 6, scope: !478)
!481 = !DILocation(line: 613, column: 130, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !2, line: 612, column: 16)
!483 = !DILocation(line: 613, column: 115, scope: !482)
!484 = !DILocation(line: 613, column: 4, scope: !482)
!485 = !DILocation(line: 614, column: 4, scope: !482)
!486 = !DILocation(line: 616, column: 3, scope: !478)
!487 = !DILocation(line: 616, column: 7, scope: !478)
!488 = !DILocation(line: 616, column: 12, scope: !478)
!489 = !DILocation(line: 618, column: 25, scope: !478)
!490 = !DILocation(line: 618, column: 29, scope: !478)
!491 = !DILocation(line: 618, column: 3, scope: !478)
!492 = !DILocation(line: 620, column: 3, scope: !478)
!493 = !DILocation(line: 620, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !2, line: 620, column: 3)
!495 = distinct !DILexicalBlock(scope: !478, file: !2, line: 620, column: 3)
!496 = !DILocation(line: 620, column: 3, scope: !495)
!497 = !DILocation(line: 620, column: 3, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !2, line: 620, column: 3)
!499 = !DILocation(line: 621, column: 3, scope: !478)
!500 = !DILocation(line: 621, column: 3, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !2, line: 621, column: 3)
!502 = distinct !DILexicalBlock(scope: !478, file: !2, line: 621, column: 3)
!503 = !DILocation(line: 621, column: 3, scope: !502)
!504 = !DILocation(line: 621, column: 3, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !2, line: 621, column: 3)
!506 = !DILocalVariable(name: "a", scope: !478, file: !2, line: 622, type: !244)
!507 = !DILocation(line: 622, column: 15, scope: !478)
!508 = !DILocation(line: 622, column: 33, scope: !478)
!509 = !DILocation(line: 622, column: 37, scope: !478)
!510 = !DILocation(line: 623, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !478, file: !2, line: 623, column: 6)
!512 = !DILocation(line: 623, column: 6, scope: !478)
!513 = !DILocalVariable(name: "map", scope: !514, file: !2, line: 624, type: !290)
!514 = distinct !DILexicalBlock(scope: !511, file: !2, line: 623, column: 9)
!515 = !DILocation(line: 624, column: 12, scope: !514)
!516 = !DILocation(line: 624, column: 18, scope: !514)
!517 = !DILocation(line: 624, column: 21, scope: !514)
!518 = !DILocation(line: 625, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !2, line: 625, column: 7)
!520 = !DILocation(line: 625, column: 7, scope: !514)
!521 = !DILocation(line: 626, column: 16, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !2, line: 625, column: 12)
!523 = !DILocation(line: 626, column: 39, scope: !522)
!524 = !DILocation(line: 626, column: 43, scope: !522)
!525 = !DILocation(line: 626, column: 21, scope: !522)
!526 = !DILocation(line: 626, column: 5, scope: !522)
!527 = !DILocation(line: 627, column: 4, scope: !522)
!528 = !DILocalVariable(name: "tcl", scope: !514, file: !2, line: 628, type: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!530 = !DILocation(line: 628, column: 25, scope: !514)
!531 = !DILocation(line: 628, column: 33, scope: !514)
!532 = !DILocation(line: 628, column: 36, scope: !514)
!533 = !DILocation(line: 629, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !514, file: !2, line: 629, column: 7)
!535 = !DILocation(line: 629, column: 12, scope: !534)
!536 = !DILocation(line: 629, column: 7, scope: !514)
!537 = !DILocalVariable(name: "i", scope: !538, file: !2, line: 630, type: !110)
!538 = distinct !DILexicalBlock(scope: !534, file: !2, line: 629, column: 19)
!539 = !DILocation(line: 630, column: 12, scope: !538)
!540 = !DILocation(line: 631, column: 10, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !2, line: 631, column: 5)
!542 = !DILocation(line: 631, column: 9, scope: !541)
!543 = !DILocation(line: 631, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !2, line: 631, column: 5)
!545 = !DILocation(line: 631, column: 15, scope: !544)
!546 = !DILocation(line: 631, column: 20, scope: !544)
!547 = !DILocation(line: 631, column: 14, scope: !544)
!548 = !DILocation(line: 631, column: 5, scope: !541)
!549 = !DILocation(line: 632, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 632, column: 9)
!551 = distinct !DILexicalBlock(scope: !544, file: !2, line: 631, column: 28)
!552 = !DILocation(line: 632, column: 14, scope: !550)
!553 = !DILocation(line: 632, column: 20, scope: !550)
!554 = !DILocation(line: 632, column: 26, scope: !550)
!555 = !DILocation(line: 632, column: 23, scope: !550)
!556 = !DILocation(line: 632, column: 9, scope: !551)
!557 = !DILocation(line: 633, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !550, file: !2, line: 632, column: 30)
!559 = !DILocation(line: 633, column: 12, scope: !558)
!560 = !DILocation(line: 633, column: 18, scope: !558)
!561 = !DILocation(line: 633, column: 21, scope: !558)
!562 = !DILocation(line: 634, column: 7, scope: !558)
!563 = !DILocation(line: 636, column: 5, scope: !551)
!564 = !DILocation(line: 631, column: 23, scope: !544)
!565 = !DILocation(line: 631, column: 5, scope: !544)
!566 = distinct !{!566, !548, !567, !409}
!567 = !DILocation(line: 636, column: 5, scope: !541)
!568 = !DILocation(line: 637, column: 4, scope: !538)
!569 = !DILocation(line: 638, column: 3, scope: !514)
!570 = !DILocation(line: 639, column: 3, scope: !478)
!571 = !DILocation(line: 639, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 639, column: 3)
!573 = distinct !DILexicalBlock(scope: !478, file: !2, line: 639, column: 3)
!574 = !DILocation(line: 639, column: 3, scope: !573)
!575 = !DILocation(line: 639, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !2, line: 639, column: 3)
!577 = !DILocation(line: 640, column: 3, scope: !478)
!578 = !DILocation(line: 640, column: 3, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !2, line: 640, column: 3)
!580 = distinct !DILexicalBlock(scope: !478, file: !2, line: 640, column: 3)
!581 = !DILocation(line: 640, column: 3, scope: !580)
!582 = !DILocation(line: 640, column: 3, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !2, line: 640, column: 3)
!584 = !DILocation(line: 641, column: 8, scope: !478)
!585 = !DILocation(line: 641, column: 3, scope: !478)
!586 = !DILocation(line: 642, column: 2, scope: !478)
!587 = !DILocation(line: 643, column: 1, scope: !468)
!588 = distinct !DISubprogram(name: "clear_relay_endpoint_session_data", scope: !54, file: !54, line: 57, type: !589, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !311)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!592 = !DILocalVariable(name: "cdi", arg: 1, scope: !588, file: !54, line: 57, type: !591)
!593 = !DILocation(line: 57, column: 78, scope: !588)
!594 = !DILocation(line: 59, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !588, file: !54, line: 59, column: 6)
!596 = !DILocation(line: 59, column: 6, scope: !588)
!597 = !DILocation(line: 60, column: 3, scope: !595)
!598 = !DILocation(line: 60, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !54, line: 60, column: 3)
!600 = distinct !DILexicalBlock(scope: !595, file: !54, line: 60, column: 3)
!601 = !DILocation(line: 60, column: 3, scope: !600)
!602 = !DILocation(line: 60, column: 3, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !54, line: 60, column: 3)
!604 = !DILocation(line: 61, column: 1, scope: !588)
!605 = distinct !DISubprogram(name: "free_turn_permission_hashtable", scope: !2, file: !2, line: 198, type: !338, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !311)
!606 = !DILocalVariable(name: "map", arg: 1, scope: !605, file: !2, line: 198, type: !340)
!607 = !DILocation(line: 198, column: 71, scope: !605)
!608 = !DILocation(line: 200, column: 5, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !2, line: 200, column: 5)
!610 = !DILocation(line: 200, column: 5, scope: !605)
!611 = !DILocalVariable(name: "i", scope: !612, file: !2, line: 202, type: !110)
!612 = distinct !DILexicalBlock(scope: !609, file: !2, line: 200, column: 10)
!613 = !DILocation(line: 202, column: 10, scope: !612)
!614 = !DILocation(line: 203, column: 8, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !2, line: 203, column: 3)
!616 = !DILocation(line: 203, column: 7, scope: !615)
!617 = !DILocation(line: 203, column: 11, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !2, line: 203, column: 3)
!619 = !DILocation(line: 203, column: 12, scope: !618)
!620 = !DILocation(line: 203, column: 3, scope: !615)
!621 = !DILocalVariable(name: "parray", scope: !622, file: !2, line: 205, type: !623)
!622 = distinct !DILexicalBlock(scope: !618, file: !2, line: 203, column: 49)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!624 = !DILocation(line: 205, column: 27, scope: !622)
!625 = !DILocation(line: 205, column: 38, scope: !622)
!626 = !DILocation(line: 205, column: 43, scope: !622)
!627 = !DILocation(line: 205, column: 49, scope: !622)
!628 = !DILocalVariable(name: "j", scope: !629, file: !2, line: 208, type: !110)
!629 = distinct !DILexicalBlock(scope: !622, file: !2, line: 207, column: 4)
!630 = !DILocation(line: 208, column: 12, scope: !629)
!631 = !DILocation(line: 209, column: 10, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !2, line: 209, column: 5)
!633 = !DILocation(line: 209, column: 9, scope: !632)
!634 = !DILocation(line: 209, column: 13, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !2, line: 209, column: 5)
!636 = !DILocation(line: 209, column: 14, scope: !635)
!637 = !DILocation(line: 209, column: 5, scope: !632)
!638 = !DILocalVariable(name: "slot", scope: !639, file: !2, line: 210, type: !201)
!639 = distinct !DILexicalBlock(scope: !635, file: !2, line: 209, column: 47)
!640 = !DILocation(line: 210, column: 28, scope: !639)
!641 = !DILocation(line: 210, column: 37, scope: !639)
!642 = !DILocation(line: 210, column: 45, scope: !639)
!643 = !DILocation(line: 210, column: 56, scope: !639)
!644 = !DILocation(line: 211, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !639, file: !2, line: 211, column: 9)
!646 = !DILocation(line: 211, column: 15, scope: !645)
!647 = !DILocation(line: 211, column: 20, scope: !645)
!648 = !DILocation(line: 211, column: 9, scope: !639)
!649 = !DILocation(line: 212, column: 31, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !2, line: 211, column: 31)
!651 = !DILocation(line: 212, column: 37, scope: !650)
!652 = !DILocation(line: 212, column: 7, scope: !650)
!653 = !DILocation(line: 213, column: 6, scope: !650)
!654 = !DILocation(line: 214, column: 5, scope: !639)
!655 = !DILocation(line: 209, column: 42, scope: !635)
!656 = !DILocation(line: 209, column: 5, scope: !635)
!657 = distinct !{!657, !637, !658, !409}
!658 = !DILocation(line: 214, column: 5, scope: !632)
!659 = !DILocation(line: 217, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !622, file: !2, line: 217, column: 7)
!661 = !DILocation(line: 217, column: 15, scope: !660)
!662 = !DILocation(line: 217, column: 7, scope: !622)
!663 = !DILocalVariable(name: "j", scope: !664, file: !2, line: 218, type: !110)
!664 = distinct !DILexicalBlock(scope: !660, file: !2, line: 217, column: 28)
!665 = !DILocation(line: 218, column: 12, scope: !664)
!666 = !DILocation(line: 219, column: 10, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !2, line: 219, column: 5)
!668 = !DILocation(line: 219, column: 9, scope: !667)
!669 = !DILocation(line: 219, column: 13, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !2, line: 219, column: 5)
!671 = !DILocation(line: 219, column: 15, scope: !670)
!672 = !DILocation(line: 219, column: 23, scope: !670)
!673 = !DILocation(line: 219, column: 14, scope: !670)
!674 = !DILocation(line: 219, column: 5, scope: !667)
!675 = !DILocalVariable(name: "slot", scope: !676, file: !2, line: 220, type: !201)
!676 = distinct !DILexicalBlock(scope: !670, file: !2, line: 219, column: 37)
!677 = !DILocation(line: 220, column: 28, scope: !676)
!678 = !DILocation(line: 220, column: 35, scope: !676)
!679 = !DILocation(line: 220, column: 43, scope: !676)
!680 = !DILocation(line: 220, column: 55, scope: !676)
!681 = !DILocation(line: 221, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !676, file: !2, line: 221, column: 9)
!683 = !DILocation(line: 221, column: 9, scope: !676)
!684 = !DILocation(line: 222, column: 10, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !2, line: 222, column: 10)
!686 = distinct !DILexicalBlock(scope: !682, file: !2, line: 221, column: 15)
!687 = !DILocation(line: 222, column: 16, scope: !685)
!688 = !DILocation(line: 222, column: 21, scope: !685)
!689 = !DILocation(line: 222, column: 10, scope: !686)
!690 = !DILocation(line: 223, column: 32, scope: !691)
!691 = distinct !DILexicalBlock(scope: !685, file: !2, line: 222, column: 32)
!692 = !DILocation(line: 223, column: 38, scope: !691)
!693 = !DILocation(line: 223, column: 8, scope: !691)
!694 = !DILocation(line: 224, column: 7, scope: !691)
!695 = !DILocation(line: 225, column: 12, scope: !686)
!696 = !DILocation(line: 225, column: 7, scope: !686)
!697 = !DILocation(line: 226, column: 6, scope: !686)
!698 = !DILocation(line: 227, column: 5, scope: !676)
!699 = !DILocation(line: 219, column: 32, scope: !670)
!700 = !DILocation(line: 219, column: 5, scope: !670)
!701 = distinct !{!701, !674, !702, !409}
!702 = !DILocation(line: 227, column: 5, scope: !667)
!703 = !DILocation(line: 228, column: 10, scope: !664)
!704 = !DILocation(line: 228, column: 18, scope: !664)
!705 = !DILocation(line: 228, column: 5, scope: !664)
!706 = !DILocation(line: 229, column: 5, scope: !664)
!707 = !DILocation(line: 229, column: 13, scope: !664)
!708 = !DILocation(line: 229, column: 25, scope: !664)
!709 = !DILocation(line: 230, column: 4, scope: !664)
!710 = !DILocation(line: 231, column: 4, scope: !622)
!711 = !DILocation(line: 231, column: 12, scope: !622)
!712 = !DILocation(line: 231, column: 21, scope: !622)
!713 = !DILocation(line: 232, column: 3, scope: !622)
!714 = !DILocation(line: 203, column: 44, scope: !618)
!715 = !DILocation(line: 203, column: 3, scope: !618)
!716 = distinct !{!716, !620, !717, !409}
!717 = !DILocation(line: 232, column: 3, scope: !615)
!718 = !DILocation(line: 233, column: 2, scope: !612)
!719 = !DILocation(line: 234, column: 1, scope: !605)
!720 = distinct !DISubprogram(name: "ch_map_clean", scope: !2, file: !2, line: 500, type: !721, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!724 = !DILocalVariable(name: "map", arg: 1, scope: !720, file: !2, line: 500, type: !723)
!725 = !DILocation(line: 500, column: 27, scope: !720)
!726 = !DILocation(line: 502, column: 5, scope: !727)
!727 = distinct !DILexicalBlock(scope: !720, file: !2, line: 502, column: 5)
!728 = !DILocation(line: 502, column: 5, scope: !720)
!729 = !DILocalVariable(name: "index", scope: !730, file: !2, line: 503, type: !110)
!730 = distinct !DILexicalBlock(scope: !727, file: !2, line: 502, column: 10)
!731 = !DILocation(line: 503, column: 10, scope: !730)
!732 = !DILocation(line: 504, column: 13, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !2, line: 504, column: 3)
!734 = !DILocation(line: 504, column: 7, scope: !733)
!735 = !DILocation(line: 504, column: 18, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !2, line: 504, column: 3)
!737 = !DILocation(line: 504, column: 24, scope: !736)
!738 = !DILocation(line: 504, column: 3, scope: !733)
!739 = !DILocalVariable(name: "a", scope: !740, file: !2, line: 506, type: !741)
!740 = distinct !DILexicalBlock(scope: !736, file: !2, line: 504, column: 53)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!742 = !DILocation(line: 506, column: 18, scope: !740)
!743 = !DILocation(line: 506, column: 24, scope: !740)
!744 = !DILocation(line: 506, column: 29, scope: !740)
!745 = !DILocation(line: 506, column: 35, scope: !740)
!746 = !DILocalVariable(name: "i", scope: !740, file: !2, line: 508, type: !110)
!747 = !DILocation(line: 508, column: 11, scope: !740)
!748 = !DILocation(line: 509, column: 9, scope: !749)
!749 = distinct !DILexicalBlock(scope: !740, file: !2, line: 509, column: 4)
!750 = !DILocation(line: 509, column: 8, scope: !749)
!751 = !DILocation(line: 509, column: 12, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !2, line: 509, column: 4)
!753 = !DILocation(line: 509, column: 13, scope: !752)
!754 = !DILocation(line: 509, column: 4, scope: !749)
!755 = !DILocalVariable(name: "chi", scope: !756, file: !2, line: 510, type: !188)
!756 = distinct !DILexicalBlock(scope: !752, file: !2, line: 509, column: 37)
!757 = !DILocation(line: 510, column: 14, scope: !756)
!758 = !DILocation(line: 510, column: 22, scope: !756)
!759 = !DILocation(line: 510, column: 25, scope: !756)
!760 = !DILocation(line: 510, column: 35, scope: !756)
!761 = !DILocation(line: 511, column: 8, scope: !762)
!762 = distinct !DILexicalBlock(scope: !756, file: !2, line: 511, column: 8)
!763 = !DILocation(line: 511, column: 13, scope: !762)
!764 = !DILocation(line: 511, column: 8, scope: !756)
!765 = !DILocation(line: 512, column: 20, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !2, line: 511, column: 24)
!767 = !DILocation(line: 512, column: 6, scope: !766)
!768 = !DILocation(line: 513, column: 5, scope: !766)
!769 = !DILocation(line: 514, column: 4, scope: !756)
!770 = !DILocation(line: 509, column: 32, scope: !752)
!771 = !DILocation(line: 509, column: 4, scope: !752)
!772 = distinct !{!772, !754, !773, !409}
!773 = !DILocation(line: 514, column: 4, scope: !749)
!774 = !DILocation(line: 516, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !740, file: !2, line: 516, column: 7)
!776 = !DILocation(line: 516, column: 10, scope: !775)
!777 = !DILocation(line: 516, column: 7, scope: !740)
!778 = !DILocalVariable(name: "sz", scope: !779, file: !2, line: 517, type: !110)
!779 = distinct !DILexicalBlock(scope: !775, file: !2, line: 516, column: 22)
!780 = !DILocation(line: 517, column: 12, scope: !779)
!781 = !DILocation(line: 517, column: 17, scope: !779)
!782 = !DILocation(line: 517, column: 20, scope: !779)
!783 = !DILocation(line: 518, column: 10, scope: !784)
!784 = distinct !DILexicalBlock(scope: !779, file: !2, line: 518, column: 5)
!785 = !DILocation(line: 518, column: 9, scope: !784)
!786 = !DILocation(line: 518, column: 13, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !2, line: 518, column: 5)
!788 = !DILocation(line: 518, column: 15, scope: !787)
!789 = !DILocation(line: 518, column: 14, scope: !787)
!790 = !DILocation(line: 518, column: 5, scope: !784)
!791 = !DILocalVariable(name: "chi", scope: !792, file: !2, line: 519, type: !188)
!792 = distinct !DILexicalBlock(scope: !787, file: !2, line: 518, column: 23)
!793 = !DILocation(line: 519, column: 15, scope: !792)
!794 = !DILocation(line: 519, column: 21, scope: !792)
!795 = !DILocation(line: 519, column: 24, scope: !792)
!796 = !DILocation(line: 519, column: 35, scope: !792)
!797 = !DILocation(line: 520, column: 9, scope: !798)
!798 = distinct !DILexicalBlock(scope: !792, file: !2, line: 520, column: 9)
!799 = !DILocation(line: 520, column: 9, scope: !792)
!800 = !DILocation(line: 521, column: 10, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !2, line: 521, column: 10)
!802 = distinct !DILexicalBlock(scope: !798, file: !2, line: 520, column: 14)
!803 = !DILocation(line: 521, column: 15, scope: !801)
!804 = !DILocation(line: 521, column: 10, scope: !802)
!805 = !DILocation(line: 522, column: 22, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !2, line: 521, column: 26)
!807 = !DILocation(line: 522, column: 8, scope: !806)
!808 = !DILocation(line: 523, column: 7, scope: !806)
!809 = !DILocation(line: 524, column: 12, scope: !802)
!810 = !DILocation(line: 524, column: 7, scope: !802)
!811 = !DILocation(line: 525, column: 7, scope: !802)
!812 = !DILocation(line: 525, column: 10, scope: !802)
!813 = !DILocation(line: 525, column: 21, scope: !802)
!814 = !DILocation(line: 525, column: 24, scope: !802)
!815 = !DILocation(line: 526, column: 6, scope: !802)
!816 = !DILocation(line: 527, column: 5, scope: !792)
!817 = !DILocation(line: 518, column: 18, scope: !787)
!818 = !DILocation(line: 518, column: 5, scope: !787)
!819 = distinct !{!819, !790, !820, !409}
!820 = !DILocation(line: 527, column: 5, scope: !784)
!821 = !DILocation(line: 528, column: 10, scope: !779)
!822 = !DILocation(line: 528, column: 13, scope: !779)
!823 = !DILocation(line: 528, column: 5, scope: !779)
!824 = !DILocation(line: 529, column: 5, scope: !779)
!825 = !DILocation(line: 529, column: 8, scope: !779)
!826 = !DILocation(line: 529, column: 19, scope: !779)
!827 = !DILocation(line: 530, column: 4, scope: !779)
!828 = !DILocation(line: 531, column: 4, scope: !740)
!829 = !DILocation(line: 531, column: 7, scope: !740)
!830 = !DILocation(line: 531, column: 16, scope: !740)
!831 = !DILocation(line: 532, column: 3, scope: !740)
!832 = !DILocation(line: 504, column: 44, scope: !736)
!833 = !DILocation(line: 504, column: 3, scope: !736)
!834 = distinct !{!834, !738, !835, !409}
!835 = !DILocation(line: 532, column: 3, scope: !733)
!836 = !DILocation(line: 533, column: 2, scope: !730)
!837 = !DILocation(line: 534, column: 1, scope: !720)
!838 = distinct !DISubprogram(name: "get_relay_session", scope: !2, file: !2, line: 89, type: !839, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!839 = !DISubroutineType(types: !840)
!840 = !{!591, !244, !83}
!841 = !DILocalVariable(name: "a", arg: 1, scope: !838, file: !2, line: 89, type: !244)
!842 = !DILocation(line: 89, column: 55, scope: !838)
!843 = !DILocalVariable(name: "family", arg: 2, scope: !838, file: !2, line: 89, type: !83)
!844 = !DILocation(line: 89, column: 62, scope: !838)
!845 = !DILocation(line: 91, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !838, file: !2, line: 91, column: 5)
!847 = !DILocation(line: 91, column: 5, scope: !838)
!848 = !DILocation(line: 92, column: 12, scope: !846)
!849 = !DILocation(line: 92, column: 15, scope: !846)
!850 = !DILocation(line: 92, column: 30, scope: !846)
!851 = !DILocation(line: 92, column: 3, scope: !846)
!852 = !DILocation(line: 93, column: 2, scope: !838)
!853 = !DILocation(line: 94, column: 1, scope: !838)
!854 = distinct !DISubprogram(name: "get_relay_session_failure", scope: !2, file: !2, line: 96, type: !855, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!855 = !DISubroutineType(types: !856)
!856 = !{!83, !244, !83}
!857 = !DILocalVariable(name: "a", arg: 1, scope: !854, file: !2, line: 96, type: !244)
!858 = !DILocation(line: 96, column: 43, scope: !854)
!859 = !DILocalVariable(name: "family", arg: 2, scope: !854, file: !2, line: 96, type: !83)
!860 = !DILocation(line: 96, column: 50, scope: !854)
!861 = !DILocation(line: 98, column: 5, scope: !862)
!862 = distinct !DILexicalBlock(scope: !854, file: !2, line: 98, column: 5)
!863 = !DILocation(line: 98, column: 5, scope: !854)
!864 = !DILocation(line: 99, column: 10, scope: !862)
!865 = !DILocation(line: 99, column: 13, scope: !862)
!866 = !DILocation(line: 99, column: 36, scope: !862)
!867 = !DILocation(line: 99, column: 3, scope: !862)
!868 = !DILocation(line: 100, column: 2, scope: !854)
!869 = !DILocation(line: 101, column: 1, scope: !854)
!870 = distinct !DISubprogram(name: "set_relay_session_failure", scope: !2, file: !2, line: 103, type: !871, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !244, !83}
!873 = !DILocalVariable(name: "a", arg: 1, scope: !870, file: !2, line: 103, type: !244)
!874 = !DILocation(line: 103, column: 44, scope: !870)
!875 = !DILocalVariable(name: "family", arg: 2, scope: !870, file: !2, line: 103, type: !83)
!876 = !DILocation(line: 103, column: 51, scope: !870)
!877 = !DILocation(line: 105, column: 5, scope: !878)
!878 = distinct !DILexicalBlock(scope: !870, file: !2, line: 105, column: 5)
!879 = !DILocation(line: 105, column: 5, scope: !870)
!880 = !DILocation(line: 106, column: 3, scope: !878)
!881 = !DILocation(line: 106, column: 6, scope: !878)
!882 = !DILocation(line: 106, column: 29, scope: !878)
!883 = !DILocation(line: 106, column: 50, scope: !878)
!884 = !DILocation(line: 107, column: 1, scope: !870)
!885 = distinct !DISubprogram(name: "get_relay_socket", scope: !2, file: !2, line: 109, type: !886, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!886 = !DISubroutineType(types: !887)
!887 = !{!217, !244, !83}
!888 = !DILocalVariable(name: "a", arg: 1, scope: !885, file: !2, line: 109, type: !244)
!889 = !DILocation(line: 109, column: 48, scope: !885)
!890 = !DILocalVariable(name: "family", arg: 2, scope: !885, file: !2, line: 109, type: !83)
!891 = !DILocation(line: 109, column: 55, scope: !885)
!892 = !DILocation(line: 111, column: 5, scope: !893)
!893 = distinct !DILexicalBlock(scope: !885, file: !2, line: 111, column: 5)
!894 = !DILocation(line: 111, column: 5, scope: !885)
!895 = !DILocation(line: 112, column: 10, scope: !893)
!896 = !DILocation(line: 112, column: 13, scope: !893)
!897 = !DILocation(line: 112, column: 28, scope: !893)
!898 = !DILocation(line: 112, column: 49, scope: !893)
!899 = !DILocation(line: 112, column: 3, scope: !893)
!900 = !DILocation(line: 113, column: 2, scope: !885)
!901 = !DILocation(line: 114, column: 1, scope: !885)
!902 = distinct !DISubprogram(name: "set_allocation_family_invalid", scope: !2, file: !2, line: 116, type: !871, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!903 = !DILocalVariable(name: "a", arg: 1, scope: !902, file: !2, line: 116, type: !244)
!904 = !DILocation(line: 116, column: 48, scope: !902)
!905 = !DILocalVariable(name: "family", arg: 2, scope: !902, file: !2, line: 116, type: !83)
!906 = !DILocation(line: 116, column: 55, scope: !902)
!907 = !DILocation(line: 118, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !902, file: !2, line: 118, column: 5)
!909 = !DILocation(line: 118, column: 5, scope: !902)
!910 = !DILocalVariable(name: "index", scope: !911, file: !2, line: 119, type: !110)
!911 = distinct !DILexicalBlock(scope: !908, file: !2, line: 118, column: 8)
!912 = !DILocation(line: 119, column: 10, scope: !911)
!913 = !DILocation(line: 119, column: 18, scope: !911)
!914 = !DILocation(line: 120, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !2, line: 120, column: 6)
!916 = !DILocation(line: 120, column: 9, scope: !915)
!917 = !DILocation(line: 120, column: 24, scope: !915)
!918 = !DILocation(line: 120, column: 31, scope: !915)
!919 = !DILocation(line: 120, column: 6, scope: !911)
!920 = !DILocation(line: 121, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 121, column: 7)
!922 = distinct !DILexicalBlock(scope: !915, file: !2, line: 120, column: 34)
!923 = !DILocation(line: 121, column: 10, scope: !921)
!924 = !DILocation(line: 121, column: 14, scope: !921)
!925 = !DILocation(line: 121, column: 7, scope: !922)
!926 = !DILocalVariable(name: "i", scope: !927, file: !2, line: 122, type: !110)
!927 = distinct !DILexicalBlock(scope: !921, file: !2, line: 121, column: 21)
!928 = !DILocation(line: 122, column: 12, scope: !927)
!929 = !DILocalVariable(name: "sz", scope: !927, file: !2, line: 123, type: !110)
!930 = !DILocation(line: 123, column: 12, scope: !927)
!931 = !DILocation(line: 123, column: 17, scope: !927)
!932 = !DILocation(line: 123, column: 20, scope: !927)
!933 = !DILocation(line: 123, column: 24, scope: !927)
!934 = !DILocation(line: 124, column: 10, scope: !935)
!935 = distinct !DILexicalBlock(scope: !927, file: !2, line: 124, column: 5)
!936 = !DILocation(line: 124, column: 9, scope: !935)
!937 = !DILocation(line: 124, column: 13, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !2, line: 124, column: 5)
!939 = !DILocation(line: 124, column: 15, scope: !938)
!940 = !DILocation(line: 124, column: 14, scope: !938)
!941 = !DILocation(line: 124, column: 5, scope: !935)
!942 = !DILocalVariable(name: "tc", scope: !943, file: !2, line: 125, type: !207)
!943 = distinct !DILexicalBlock(scope: !938, file: !2, line: 124, column: 23)
!944 = !DILocation(line: 125, column: 22, scope: !943)
!945 = !DILocation(line: 125, column: 27, scope: !943)
!946 = !DILocation(line: 125, column: 30, scope: !943)
!947 = !DILocation(line: 125, column: 34, scope: !943)
!948 = !DILocation(line: 125, column: 40, scope: !943)
!949 = !DILocation(line: 126, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !943, file: !2, line: 126, column: 9)
!951 = !DILocation(line: 126, column: 9, scope: !943)
!952 = !DILocation(line: 127, column: 10, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !2, line: 127, column: 10)
!954 = distinct !DILexicalBlock(scope: !950, file: !2, line: 126, column: 13)
!955 = !DILocation(line: 127, column: 14, scope: !953)
!956 = !DILocation(line: 127, column: 21, scope: !953)
!957 = !DILocation(line: 127, column: 55, scope: !953)
!958 = !DILocation(line: 127, column: 59, scope: !953)
!959 = !DILocation(line: 127, column: 25, scope: !953)
!960 = !DILocation(line: 127, column: 70, scope: !953)
!961 = !DILocation(line: 127, column: 67, scope: !953)
!962 = !DILocation(line: 127, column: 10, scope: !954)
!963 = !DILocation(line: 128, column: 30, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !2, line: 127, column: 79)
!965 = !DILocation(line: 128, column: 8, scope: !964)
!966 = !DILocation(line: 129, column: 8, scope: !964)
!967 = !DILocation(line: 129, column: 11, scope: !964)
!968 = !DILocation(line: 129, column: 15, scope: !964)
!969 = !DILocation(line: 129, column: 21, scope: !964)
!970 = !DILocation(line: 129, column: 24, scope: !964)
!971 = !DILocation(line: 130, column: 7, scope: !964)
!972 = !DILocation(line: 131, column: 6, scope: !954)
!973 = !DILocation(line: 132, column: 5, scope: !943)
!974 = !DILocation(line: 124, column: 18, scope: !938)
!975 = !DILocation(line: 124, column: 5, scope: !938)
!976 = distinct !{!976, !941, !977, !409}
!977 = !DILocation(line: 132, column: 5, scope: !935)
!978 = !DILocation(line: 133, column: 4, scope: !927)
!979 = !DILocation(line: 135, column: 32, scope: !922)
!980 = !DILocation(line: 135, column: 35, scope: !922)
!981 = !DILocation(line: 135, column: 50, scope: !922)
!982 = !DILocation(line: 135, column: 57, scope: !922)
!983 = !DILocation(line: 135, column: 60, scope: !922)
!984 = !DILocation(line: 135, column: 63, scope: !922)
!985 = !DILocation(line: 135, column: 4, scope: !922)
!986 = !DILocation(line: 136, column: 40, scope: !922)
!987 = !DILocation(line: 136, column: 43, scope: !922)
!988 = !DILocation(line: 136, column: 58, scope: !922)
!989 = !DILocation(line: 136, column: 4, scope: !922)
!990 = !DILocation(line: 137, column: 4, scope: !922)
!991 = !DILocation(line: 137, column: 4, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !2, line: 137, column: 4)
!993 = distinct !DILexicalBlock(scope: !922, file: !2, line: 137, column: 4)
!994 = !DILocation(line: 137, column: 4, scope: !993)
!995 = !DILocation(line: 137, column: 4, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !2, line: 137, column: 4)
!997 = !DILocation(line: 138, column: 3, scope: !922)
!998 = !DILocation(line: 139, column: 2, scope: !911)
!999 = !DILocation(line: 140, column: 1, scope: !902)
!1000 = distinct !DISubprogram(name: "set_allocation_lifetime_ev", scope: !2, file: !2, line: 142, type: !1001, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !244, !179, !182, !83}
!1003 = !DILocalVariable(name: "a", arg: 1, scope: !1000, file: !2, line: 142, type: !244)
!1004 = !DILocation(line: 142, column: 45, scope: !1000)
!1005 = !DILocalVariable(name: "exp_time", arg: 2, scope: !1000, file: !2, line: 142, type: !179)
!1006 = !DILocation(line: 142, column: 60, scope: !1000)
!1007 = !DILocalVariable(name: "ev", arg: 3, scope: !1000, file: !2, line: 142, type: !182)
!1008 = !DILocation(line: 142, column: 87, scope: !1000)
!1009 = !DILocalVariable(name: "family", arg: 4, scope: !1000, file: !2, line: 142, type: !83)
!1010 = !DILocation(line: 142, column: 95, scope: !1000)
!1011 = !DILocation(line: 144, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 144, column: 6)
!1013 = !DILocation(line: 144, column: 6, scope: !1000)
!1014 = !DILocation(line: 145, column: 3, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 144, column: 9)
!1016 = !DILocation(line: 145, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 145, column: 3)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 145, column: 3)
!1019 = !DILocation(line: 145, column: 3, scope: !1018)
!1020 = !DILocation(line: 145, column: 3, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 145, column: 3)
!1022 = !DILocation(line: 146, column: 60, scope: !1015)
!1023 = !DILocation(line: 146, column: 3, scope: !1015)
!1024 = !DILocation(line: 146, column: 6, scope: !1015)
!1025 = !DILocation(line: 146, column: 21, scope: !1015)
!1026 = !DILocation(line: 146, column: 42, scope: !1015)
!1027 = !DILocation(line: 146, column: 58, scope: !1015)
!1028 = !DILocation(line: 147, column: 56, scope: !1015)
!1029 = !DILocation(line: 147, column: 3, scope: !1015)
!1030 = !DILocation(line: 147, column: 6, scope: !1015)
!1031 = !DILocation(line: 147, column: 21, scope: !1015)
!1032 = !DILocation(line: 147, column: 42, scope: !1015)
!1033 = !DILocation(line: 147, column: 54, scope: !1015)
!1034 = !DILocation(line: 148, column: 2, scope: !1015)
!1035 = !DILocation(line: 149, column: 1, scope: !1000)
!1036 = distinct !DISubprogram(name: "is_allocation_valid", scope: !2, file: !2, line: 151, type: !1037, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!83, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!1041 = !DILocalVariable(name: "a", arg: 1, scope: !1036, file: !2, line: 151, type: !1039)
!1042 = !DILocation(line: 151, column: 43, scope: !1036)
!1043 = !DILocation(line: 152, column: 6, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 152, column: 6)
!1045 = !DILocation(line: 152, column: 6, scope: !1036)
!1046 = !DILocation(line: 152, column: 16, scope: !1044)
!1047 = !DILocation(line: 152, column: 19, scope: !1044)
!1048 = !DILocation(line: 152, column: 9, scope: !1044)
!1049 = !DILocation(line: 153, column: 8, scope: !1044)
!1050 = !DILocation(line: 154, column: 1, scope: !1036)
!1051 = distinct !DISubprogram(name: "set_allocation_valid", scope: !2, file: !2, line: 156, type: !871, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1052 = !DILocalVariable(name: "a", arg: 1, scope: !1051, file: !2, line: 156, type: !244)
!1053 = !DILocation(line: 156, column: 39, scope: !1051)
!1054 = !DILocalVariable(name: "value", arg: 2, scope: !1051, file: !2, line: 156, type: !83)
!1055 = !DILocation(line: 156, column: 46, scope: !1051)
!1056 = !DILocation(line: 157, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 157, column: 6)
!1058 = !DILocation(line: 157, column: 6, scope: !1051)
!1059 = !DILocation(line: 157, column: 21, scope: !1057)
!1060 = !DILocation(line: 157, column: 9, scope: !1057)
!1061 = !DILocation(line: 157, column: 12, scope: !1057)
!1062 = !DILocation(line: 157, column: 20, scope: !1057)
!1063 = !DILocation(line: 158, column: 1, scope: !1051)
!1064 = distinct !DISubprogram(name: "allocation_get_permission", scope: !2, file: !2, line: 160, type: !1065, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!89, !244, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!1069 = !DILocalVariable(name: "a", arg: 1, scope: !1064, file: !2, line: 160, type: !244)
!1070 = !DILocation(line: 160, column: 61, scope: !1064)
!1071 = !DILocalVariable(name: "addr", arg: 2, scope: !1064, file: !2, line: 160, type: !1067)
!1072 = !DILocation(line: 160, column: 80, scope: !1064)
!1073 = !DILocation(line: 161, column: 6, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 161, column: 6)
!1075 = !DILocation(line: 161, column: 6, scope: !1064)
!1076 = !DILocation(line: 162, column: 49, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 161, column: 9)
!1078 = !DILocation(line: 162, column: 52, scope: !1077)
!1079 = !DILocation(line: 162, column: 67, scope: !1077)
!1080 = !DILocation(line: 162, column: 12, scope: !1077)
!1081 = !DILocation(line: 162, column: 5, scope: !1077)
!1082 = !DILocation(line: 164, column: 3, scope: !1064)
!1083 = !DILocation(line: 165, column: 1, scope: !1064)
!1084 = distinct !DISubprogram(name: "get_from_turn_permission_hashtable", scope: !2, file: !2, line: 236, type: !1085, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!89, !340, !1067}
!1087 = !DILocalVariable(name: "map", arg: 1, scope: !1084, file: !2, line: 236, type: !340)
!1088 = !DILocation(line: 236, column: 92, scope: !1084)
!1089 = !DILocalVariable(name: "addr", arg: 2, scope: !1084, file: !2, line: 236, type: !1067)
!1090 = !DILocation(line: 236, column: 113, scope: !1084)
!1091 = !DILocation(line: 238, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 238, column: 6)
!1093 = !DILocation(line: 238, column: 12, scope: !1092)
!1094 = !DILocation(line: 238, column: 16, scope: !1092)
!1095 = !DILocation(line: 238, column: 6, scope: !1084)
!1096 = !DILocation(line: 239, column: 3, scope: !1092)
!1097 = !DILocalVariable(name: "index", scope: !1084, file: !2, line: 241, type: !151)
!1098 = !DILocation(line: 241, column: 11, scope: !1084)
!1099 = !DILocation(line: 241, column: 37, scope: !1084)
!1100 = !DILocation(line: 241, column: 19, scope: !1084)
!1101 = !DILocation(line: 241, column: 43, scope: !1084)
!1102 = !DILocalVariable(name: "parray", scope: !1084, file: !2, line: 242, type: !623)
!1103 = !DILocation(line: 242, column: 25, scope: !1084)
!1104 = !DILocation(line: 242, column: 36, scope: !1084)
!1105 = !DILocation(line: 242, column: 41, scope: !1084)
!1106 = !DILocation(line: 242, column: 47, scope: !1084)
!1107 = !DILocalVariable(name: "i", scope: !1108, file: !2, line: 245, type: !110)
!1108 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 244, column: 2)
!1109 = !DILocation(line: 245, column: 10, scope: !1108)
!1110 = !DILocation(line: 246, column: 10, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 246, column: 3)
!1112 = !DILocation(line: 246, column: 8, scope: !1111)
!1113 = !DILocation(line: 246, column: 15, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 246, column: 3)
!1115 = !DILocation(line: 246, column: 17, scope: !1114)
!1116 = !DILocation(line: 246, column: 3, scope: !1111)
!1117 = !DILocalVariable(name: "slot", scope: !1118, file: !2, line: 247, type: !201)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 246, column: 52)
!1119 = !DILocation(line: 247, column: 26, scope: !1118)
!1120 = !DILocation(line: 247, column: 35, scope: !1118)
!1121 = !DILocation(line: 247, column: 43, scope: !1118)
!1122 = !DILocation(line: 247, column: 54, scope: !1118)
!1123 = !DILocation(line: 248, column: 8, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 248, column: 8)
!1125 = !DILocation(line: 248, column: 14, scope: !1124)
!1126 = !DILocation(line: 248, column: 19, scope: !1124)
!1127 = !DILocation(line: 248, column: 29, scope: !1124)
!1128 = !DILocation(line: 248, column: 50, scope: !1124)
!1129 = !DILocation(line: 248, column: 56, scope: !1124)
!1130 = !DILocation(line: 248, column: 61, scope: !1124)
!1131 = !DILocation(line: 248, column: 68, scope: !1124)
!1132 = !DILocation(line: 248, column: 32, scope: !1124)
!1133 = !DILocation(line: 248, column: 8, scope: !1118)
!1134 = !DILocation(line: 249, column: 14, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 248, column: 75)
!1136 = !DILocation(line: 249, column: 20, scope: !1135)
!1137 = !DILocation(line: 249, column: 5, scope: !1135)
!1138 = !DILocation(line: 251, column: 3, scope: !1118)
!1139 = !DILocation(line: 246, column: 47, scope: !1114)
!1140 = !DILocation(line: 246, column: 3, scope: !1114)
!1141 = distinct !{!1141, !1116, !1142, !409}
!1142 = !DILocation(line: 251, column: 3, scope: !1111)
!1143 = !DILocation(line: 254, column: 5, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 254, column: 5)
!1145 = !DILocation(line: 254, column: 13, scope: !1144)
!1146 = !DILocation(line: 254, column: 5, scope: !1084)
!1147 = !DILocalVariable(name: "i", scope: !1148, file: !2, line: 256, type: !110)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 254, column: 26)
!1149 = !DILocation(line: 256, column: 10, scope: !1148)
!1150 = !DILocalVariable(name: "sz", scope: !1148, file: !2, line: 257, type: !110)
!1151 = !DILocation(line: 257, column: 10, scope: !1148)
!1152 = !DILocation(line: 257, column: 15, scope: !1148)
!1153 = !DILocation(line: 257, column: 23, scope: !1148)
!1154 = !DILocation(line: 258, column: 10, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 258, column: 3)
!1156 = !DILocation(line: 258, column: 8, scope: !1155)
!1157 = !DILocation(line: 258, column: 15, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 258, column: 3)
!1159 = !DILocation(line: 258, column: 19, scope: !1158)
!1160 = !DILocation(line: 258, column: 17, scope: !1158)
!1161 = !DILocation(line: 258, column: 3, scope: !1155)
!1162 = !DILocalVariable(name: "slot", scope: !1163, file: !2, line: 259, type: !201)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 258, column: 28)
!1164 = !DILocation(line: 259, column: 26, scope: !1163)
!1165 = !DILocation(line: 259, column: 33, scope: !1163)
!1166 = !DILocation(line: 259, column: 41, scope: !1163)
!1167 = !DILocation(line: 259, column: 53, scope: !1163)
!1168 = !DILocation(line: 260, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 260, column: 8)
!1170 = !DILocation(line: 260, column: 14, scope: !1169)
!1171 = !DILocation(line: 260, column: 19, scope: !1169)
!1172 = !DILocation(line: 260, column: 29, scope: !1169)
!1173 = !DILocation(line: 260, column: 50, scope: !1169)
!1174 = !DILocation(line: 260, column: 56, scope: !1169)
!1175 = !DILocation(line: 260, column: 61, scope: !1169)
!1176 = !DILocation(line: 260, column: 68, scope: !1169)
!1177 = !DILocation(line: 260, column: 32, scope: !1169)
!1178 = !DILocation(line: 260, column: 8, scope: !1163)
!1179 = !DILocation(line: 261, column: 14, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 260, column: 75)
!1181 = !DILocation(line: 261, column: 20, scope: !1180)
!1182 = !DILocation(line: 261, column: 5, scope: !1180)
!1183 = !DILocation(line: 263, column: 3, scope: !1163)
!1184 = !DILocation(line: 258, column: 23, scope: !1158)
!1185 = !DILocation(line: 258, column: 3, scope: !1158)
!1186 = distinct !{!1186, !1161, !1187, !409}
!1187 = !DILocation(line: 263, column: 3, scope: !1155)
!1188 = !DILocation(line: 264, column: 2, scope: !1148)
!1189 = !DILocation(line: 266, column: 2, scope: !1084)
!1190 = !DILocation(line: 267, column: 1, scope: !1084)
!1191 = distinct !DISubprogram(name: "turn_permission_clean", scope: !2, file: !2, line: 171, type: !1192, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !89}
!1194 = !DILocalVariable(name: "tinfo", arg: 1, scope: !1191, file: !2, line: 171, type: !89)
!1195 = !DILocation(line: 171, column: 50, scope: !1191)
!1196 = !DILocation(line: 173, column: 6, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 173, column: 6)
!1198 = !DILocation(line: 173, column: 12, scope: !1197)
!1199 = !DILocation(line: 173, column: 15, scope: !1197)
!1200 = !DILocation(line: 173, column: 22, scope: !1197)
!1201 = !DILocation(line: 173, column: 6, scope: !1191)
!1202 = !DILocation(line: 175, column: 6, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 175, column: 6)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 173, column: 33)
!1205 = !DILocation(line: 175, column: 13, scope: !1203)
!1206 = !DILocation(line: 175, column: 6, scope: !1204)
!1207 = !DILocalVariable(name: "s", scope: !1208, file: !2, line: 176, type: !1209)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 175, column: 22)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 257)
!1212 = !DILocation(line: 176, column: 9, scope: !1208)
!1213 = !DILocation(line: 177, column: 21, scope: !1208)
!1214 = !DILocation(line: 177, column: 28, scope: !1208)
!1215 = !DILocation(line: 177, column: 44, scope: !1208)
!1216 = !DILocation(line: 177, column: 4, scope: !1208)
!1217 = !DILocation(line: 178, column: 76, scope: !1208)
!1218 = !DILocation(line: 178, column: 83, scope: !1208)
!1219 = !DILocation(line: 178, column: 94, scope: !1208)
!1220 = !DILocation(line: 178, column: 4, scope: !1208)
!1221 = !DILocation(line: 179, column: 3, scope: !1208)
!1222 = !DILocation(line: 181, column: 8, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 181, column: 6)
!1224 = !DILocation(line: 181, column: 15, scope: !1223)
!1225 = !DILocation(line: 181, column: 7, scope: !1223)
!1226 = !DILocation(line: 181, column: 6, scope: !1204)
!1227 = !DILocation(line: 182, column: 4, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 181, column: 29)
!1229 = !DILocation(line: 183, column: 3, scope: !1228)
!1230 = !DILocation(line: 185, column: 3, scope: !1204)
!1231 = !DILocation(line: 185, column: 3, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 185, column: 3)
!1233 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 185, column: 3)
!1234 = !DILocation(line: 185, column: 3, scope: !1233)
!1235 = !DILocation(line: 185, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 185, column: 3)
!1237 = !DILocation(line: 186, column: 20, scope: !1204)
!1238 = !DILocation(line: 186, column: 27, scope: !1204)
!1239 = !DILocation(line: 186, column: 3, scope: !1204)
!1240 = !DILocation(line: 187, column: 18, scope: !1204)
!1241 = !DILocation(line: 187, column: 25, scope: !1204)
!1242 = !DILocation(line: 187, column: 3, scope: !1204)
!1243 = !DILocation(line: 188, column: 9, scope: !1204)
!1244 = !DILocation(line: 188, column: 3, scope: !1204)
!1245 = !DILocation(line: 189, column: 2, scope: !1204)
!1246 = !DILocation(line: 190, column: 1, scope: !1191)
!1247 = distinct !DISubprogram(name: "delete_channel_info_from_allocation_map", scope: !2, file: !2, line: 280, type: !81, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1248 = !DILocalVariable(name: "key", arg: 1, scope: !1247, file: !2, line: 280, type: !84)
!1249 = !DILocation(line: 280, column: 68, scope: !1247)
!1250 = !DILocalVariable(name: "value", arg: 2, scope: !1247, file: !2, line: 280, type: !88)
!1251 = !DILocation(line: 280, column: 91, scope: !1247)
!1252 = !DILocation(line: 282, column: 2, scope: !1247)
!1253 = !DILocation(line: 282, column: 2, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 282, column: 2)
!1255 = !DILocation(line: 284, column: 5, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 284, column: 5)
!1257 = !DILocation(line: 284, column: 5, scope: !1247)
!1258 = !DILocalVariable(name: "chn", scope: !1259, file: !2, line: 285, type: !188)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 284, column: 12)
!1260 = !DILocation(line: 285, column: 12, scope: !1259)
!1261 = !DILocation(line: 285, column: 28, scope: !1259)
!1262 = !DILocation(line: 285, column: 18, scope: !1259)
!1263 = !DILocation(line: 287, column: 6, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 287, column: 6)
!1265 = !DILocation(line: 287, column: 11, scope: !1264)
!1266 = !DILocation(line: 287, column: 17, scope: !1264)
!1267 = !DILocation(line: 287, column: 6, scope: !1259)
!1268 = !DILocation(line: 288, column: 4, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 287, column: 21)
!1270 = !DILocation(line: 289, column: 3, scope: !1269)
!1271 = !DILocation(line: 291, column: 17, scope: !1259)
!1272 = !DILocation(line: 291, column: 3, scope: !1259)
!1273 = !DILocation(line: 292, column: 2, scope: !1259)
!1274 = !DILocation(line: 294, column: 2, scope: !1247)
!1275 = distinct !DISubprogram(name: "turn_channel_delete", scope: !2, file: !2, line: 297, type: !1276, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !188}
!1278 = !DILocalVariable(name: "chn", arg: 1, scope: !1275, file: !2, line: 297, type: !188)
!1279 = !DILocation(line: 297, column: 35, scope: !1275)
!1280 = !DILocation(line: 299, column: 5, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 299, column: 5)
!1282 = !DILocation(line: 299, column: 5, scope: !1275)
!1283 = !DILocalVariable(name: "port", scope: !1284, file: !2, line: 300, type: !83)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 299, column: 10)
!1285 = !DILocation(line: 300, column: 7, scope: !1284)
!1286 = !DILocation(line: 300, column: 30, scope: !1284)
!1287 = !DILocation(line: 300, column: 35, scope: !1284)
!1288 = !DILocation(line: 300, column: 14, scope: !1284)
!1289 = !DILocation(line: 301, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 301, column: 6)
!1291 = !DILocation(line: 301, column: 10, scope: !1290)
!1292 = !DILocation(line: 301, column: 6, scope: !1284)
!1293 = !DILocalVariable(name: "s", scope: !1294, file: !2, line: 302, type: !1295)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 301, column: 14)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 129)
!1298 = !DILocation(line: 302, column: 9, scope: !1294)
!1299 = !DILocation(line: 303, column: 21, scope: !1294)
!1300 = !DILocation(line: 303, column: 26, scope: !1294)
!1301 = !DILocation(line: 303, column: 47, scope: !1294)
!1302 = !DILocation(line: 303, column: 4, scope: !1294)
!1303 = !DILocation(line: 304, column: 118, scope: !1294)
!1304 = !DILocation(line: 304, column: 4, scope: !1294)
!1305 = !DILocation(line: 305, column: 3, scope: !1294)
!1306 = !DILocalVariable(name: "tinfo", scope: !1307, file: !2, line: 307, type: !89)
!1307 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 306, column: 3)
!1308 = !DILocation(line: 307, column: 26, scope: !1307)
!1309 = !DILocation(line: 307, column: 57, scope: !1307)
!1310 = !DILocation(line: 307, column: 62, scope: !1307)
!1311 = !DILocation(line: 308, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 308, column: 7)
!1313 = !DILocation(line: 308, column: 7, scope: !1307)
!1314 = !DILocation(line: 309, column: 18, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 308, column: 14)
!1316 = !DILocation(line: 309, column: 25, scope: !1315)
!1317 = !DILocation(line: 309, column: 49, scope: !1315)
!1318 = !DILocation(line: 309, column: 32, scope: !1315)
!1319 = !DILocation(line: 309, column: 5, scope: !1315)
!1320 = !DILocation(line: 310, column: 4, scope: !1315)
!1321 = !DILocation(line: 311, column: 5, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 310, column: 11)
!1323 = !DILocation(line: 314, column: 60, scope: !1284)
!1324 = !DILocation(line: 314, column: 43, scope: !1284)
!1325 = !DILocation(line: 314, column: 84, scope: !1284)
!1326 = !DILocation(line: 314, column: 65, scope: !1284)
!1327 = !DILocation(line: 314, column: 3, scope: !1284)
!1328 = !DILocation(line: 315, column: 2, scope: !1284)
!1329 = !DILocation(line: 316, column: 1, scope: !1275)
!1330 = distinct !DISubprogram(name: "allocation_get_new_ch_info", scope: !2, file: !2, line: 318, type: !1331, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!188, !244, !144, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1334 = !DILocalVariable(name: "a", arg: 1, scope: !1330, file: !2, line: 318, type: !244)
!1335 = !DILocation(line: 318, column: 49, scope: !1330)
!1336 = !DILocalVariable(name: "chnum", arg: 2, scope: !1330, file: !2, line: 318, type: !144)
!1337 = !DILocation(line: 318, column: 61, scope: !1330)
!1338 = !DILocalVariable(name: "peer_addr", arg: 3, scope: !1330, file: !2, line: 318, type: !1333)
!1339 = !DILocation(line: 318, column: 78, scope: !1330)
!1340 = !DILocalVariable(name: "tinfo", scope: !1330, file: !2, line: 321, type: !89)
!1341 = !DILocation(line: 321, column: 24, scope: !1330)
!1342 = !DILocation(line: 321, column: 69, scope: !1330)
!1343 = !DILocation(line: 321, column: 72, scope: !1330)
!1344 = !DILocation(line: 321, column: 87, scope: !1330)
!1345 = !DILocation(line: 321, column: 32, scope: !1330)
!1346 = !DILocation(line: 323, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 323, column: 6)
!1348 = !DILocation(line: 323, column: 6, scope: !1330)
!1349 = !DILocation(line: 324, column: 37, scope: !1347)
!1350 = !DILocation(line: 324, column: 40, scope: !1347)
!1351 = !DILocation(line: 324, column: 11, scope: !1347)
!1352 = !DILocation(line: 324, column: 9, scope: !1347)
!1353 = !DILocation(line: 324, column: 3, scope: !1347)
!1354 = !DILocalVariable(name: "chn", scope: !1330, file: !2, line: 326, type: !188)
!1355 = !DILocation(line: 326, column: 11, scope: !1330)
!1356 = !DILocation(line: 326, column: 30, scope: !1330)
!1357 = !DILocation(line: 326, column: 33, scope: !1330)
!1358 = !DILocation(line: 326, column: 40, scope: !1330)
!1359 = !DILocation(line: 326, column: 17, scope: !1330)
!1360 = !DILocation(line: 328, column: 2, scope: !1330)
!1361 = !DILocation(line: 328, column: 7, scope: !1330)
!1362 = !DILocation(line: 328, column: 17, scope: !1330)
!1363 = !DILocation(line: 329, column: 15, scope: !1330)
!1364 = !DILocation(line: 329, column: 2, scope: !1330)
!1365 = !DILocation(line: 329, column: 7, scope: !1330)
!1366 = !DILocation(line: 329, column: 13, scope: !1330)
!1367 = !DILocation(line: 330, column: 28, scope: !1330)
!1368 = !DILocation(line: 330, column: 14, scope: !1330)
!1369 = !DILocation(line: 330, column: 2, scope: !1330)
!1370 = !DILocation(line: 330, column: 7, scope: !1330)
!1371 = !DILocation(line: 330, column: 12, scope: !1330)
!1372 = !DILocation(line: 331, column: 13, scope: !1330)
!1373 = !DILocation(line: 331, column: 18, scope: !1330)
!1374 = !DILocation(line: 331, column: 30, scope: !1330)
!1375 = !DILocation(line: 331, column: 2, scope: !1330)
!1376 = !DILocation(line: 332, column: 15, scope: !1330)
!1377 = !DILocation(line: 332, column: 2, scope: !1330)
!1378 = !DILocation(line: 332, column: 7, scope: !1330)
!1379 = !DILocation(line: 332, column: 13, scope: !1330)
!1380 = !DILocation(line: 334, column: 15, scope: !1330)
!1381 = !DILocation(line: 334, column: 22, scope: !1330)
!1382 = !DILocation(line: 334, column: 61, scope: !1330)
!1383 = !DILocation(line: 334, column: 47, scope: !1330)
!1384 = !DILocation(line: 334, column: 29, scope: !1330)
!1385 = !DILocation(line: 334, column: 93, scope: !1330)
!1386 = !DILocation(line: 334, column: 73, scope: !1330)
!1387 = !DILocation(line: 334, column: 2, scope: !1330)
!1388 = !DILocation(line: 336, column: 9, scope: !1330)
!1389 = !DILocation(line: 336, column: 2, scope: !1330)
!1390 = distinct !DISubprogram(name: "allocation_add_permission", scope: !2, file: !2, line: 386, type: !1065, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1391 = !DILocalVariable(name: "a", arg: 1, scope: !1390, file: !2, line: 386, type: !244)
!1392 = !DILocation(line: 386, column: 61, scope: !1390)
!1393 = !DILocalVariable(name: "addr", arg: 2, scope: !1390, file: !2, line: 386, type: !1067)
!1394 = !DILocation(line: 386, column: 80, scope: !1390)
!1395 = !DILocation(line: 388, column: 6, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 388, column: 6)
!1397 = !DILocation(line: 388, column: 8, scope: !1396)
!1398 = !DILocation(line: 388, column: 11, scope: !1396)
!1399 = !DILocation(line: 388, column: 6, scope: !1390)
!1400 = !DILocalVariable(name: "map", scope: !1401, file: !2, line: 390, type: !340)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 388, column: 17)
!1402 = !DILocation(line: 390, column: 30, scope: !1401)
!1403 = !DILocation(line: 390, column: 38, scope: !1401)
!1404 = !DILocation(line: 390, column: 41, scope: !1401)
!1405 = !DILocalVariable(name: "hash", scope: !1401, file: !2, line: 391, type: !151)
!1406 = !DILocation(line: 391, column: 12, scope: !1401)
!1407 = !DILocation(line: 391, column: 37, scope: !1401)
!1408 = !DILocation(line: 391, column: 19, scope: !1401)
!1409 = !DILocalVariable(name: "fds", scope: !1401, file: !2, line: 392, type: !110)
!1410 = !DILocation(line: 392, column: 10, scope: !1401)
!1411 = !DILocation(line: 392, column: 26, scope: !1401)
!1412 = !DILocation(line: 392, column: 31, scope: !1401)
!1413 = !DILocation(line: 392, column: 16, scope: !1401)
!1414 = !DILocalVariable(name: "parray", scope: !1401, file: !2, line: 394, type: !623)
!1415 = !DILocation(line: 394, column: 26, scope: !1401)
!1416 = !DILocation(line: 394, column: 37, scope: !1401)
!1417 = !DILocation(line: 394, column: 42, scope: !1401)
!1418 = !DILocation(line: 394, column: 48, scope: !1401)
!1419 = !DILocalVariable(name: "slot", scope: !1401, file: !2, line: 396, type: !201)
!1420 = !DILocation(line: 396, column: 25, scope: !1401)
!1421 = !DILocalVariable(name: "i", scope: !1422, file: !2, line: 399, type: !110)
!1422 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 398, column: 3)
!1423 = !DILocation(line: 399, column: 11, scope: !1422)
!1424 = !DILocation(line: 400, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 400, column: 4)
!1426 = !DILocation(line: 400, column: 8, scope: !1425)
!1427 = !DILocation(line: 400, column: 12, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 400, column: 4)
!1429 = !DILocation(line: 400, column: 13, scope: !1428)
!1430 = !DILocation(line: 400, column: 4, scope: !1425)
!1431 = !DILocation(line: 401, column: 14, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 400, column: 46)
!1433 = !DILocation(line: 401, column: 22, scope: !1432)
!1434 = !DILocation(line: 401, column: 33, scope: !1432)
!1435 = !DILocation(line: 401, column: 10, scope: !1432)
!1436 = !DILocation(line: 402, column: 10, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 402, column: 8)
!1438 = !DILocation(line: 402, column: 16, scope: !1437)
!1439 = !DILocation(line: 402, column: 21, scope: !1437)
!1440 = !DILocation(line: 402, column: 9, scope: !1437)
!1441 = !DILocation(line: 402, column: 8, scope: !1432)
!1442 = !DILocation(line: 403, column: 6, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 402, column: 33)
!1444 = !DILocation(line: 405, column: 10, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 404, column: 12)
!1446 = !DILocation(line: 407, column: 4, scope: !1432)
!1447 = !DILocation(line: 400, column: 41, scope: !1428)
!1448 = !DILocation(line: 400, column: 4, scope: !1428)
!1449 = distinct !{!1449, !1430, !1450, !409}
!1450 = !DILocation(line: 407, column: 4, scope: !1425)
!1451 = !DILocation(line: 410, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 410, column: 6)
!1453 = !DILocation(line: 410, column: 6, scope: !1401)
!1454 = !DILocalVariable(name: "old_sz", scope: !1455, file: !2, line: 412, type: !110)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 410, column: 13)
!1456 = !DILocation(line: 412, column: 11, scope: !1455)
!1457 = !DILocation(line: 412, column: 20, scope: !1455)
!1458 = !DILocation(line: 412, column: 28, scope: !1455)
!1459 = !DILocalVariable(name: "slots", scope: !1455, file: !2, line: 414, type: !200)
!1460 = !DILocation(line: 414, column: 27, scope: !1455)
!1461 = !DILocation(line: 414, column: 35, scope: !1455)
!1462 = !DILocation(line: 414, column: 43, scope: !1455)
!1463 = !DILocation(line: 416, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 416, column: 7)
!1465 = !DILocation(line: 416, column: 7, scope: !1455)
!1466 = !DILocalVariable(name: "i", scope: !1467, file: !2, line: 417, type: !110)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 416, column: 14)
!1468 = !DILocation(line: 417, column: 12, scope: !1467)
!1469 = !DILocation(line: 418, column: 10, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 418, column: 5)
!1471 = !DILocation(line: 418, column: 9, scope: !1470)
!1472 = !DILocation(line: 418, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 418, column: 5)
!1474 = !DILocation(line: 418, column: 15, scope: !1473)
!1475 = !DILocation(line: 418, column: 14, scope: !1473)
!1476 = !DILocation(line: 418, column: 5, scope: !1470)
!1477 = !DILocation(line: 419, column: 13, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 418, column: 27)
!1479 = !DILocation(line: 419, column: 19, scope: !1478)
!1480 = !DILocation(line: 419, column: 11, scope: !1478)
!1481 = !DILocation(line: 420, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 420, column: 9)
!1483 = !DILocation(line: 420, column: 17, scope: !1482)
!1484 = !DILocation(line: 420, column: 22, scope: !1482)
!1485 = !DILocation(line: 420, column: 10, scope: !1482)
!1486 = !DILocation(line: 420, column: 9, scope: !1478)
!1487 = !DILocation(line: 421, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 420, column: 34)
!1489 = !DILocation(line: 423, column: 11, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 422, column: 13)
!1491 = !DILocation(line: 425, column: 5, scope: !1478)
!1492 = !DILocation(line: 418, column: 22, scope: !1473)
!1493 = !DILocation(line: 418, column: 5, scope: !1473)
!1494 = distinct !{!1494, !1476, !1495, !409}
!1495 = !DILocation(line: 425, column: 5, scope: !1470)
!1496 = !DILocation(line: 426, column: 4, scope: !1467)
!1497 = !DILocation(line: 428, column: 8, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 428, column: 7)
!1499 = !DILocation(line: 428, column: 7, scope: !1455)
!1500 = !DILocalVariable(name: "old_sz_mem", scope: !1501, file: !2, line: 429, type: !110)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 428, column: 14)
!1502 = !DILocation(line: 429, column: 12, scope: !1501)
!1503 = !DILocation(line: 429, column: 25, scope: !1501)
!1504 = !DILocation(line: 429, column: 32, scope: !1501)
!1505 = !DILocation(line: 430, column: 61, scope: !1501)
!1506 = !DILocation(line: 430, column: 69, scope: !1501)
!1507 = !DILocation(line: 431, column: 7, scope: !1501)
!1508 = !DILocation(line: 431, column: 18, scope: !1501)
!1509 = !DILocation(line: 430, column: 53, scope: !1501)
!1510 = !DILocation(line: 430, column: 5, scope: !1501)
!1511 = !DILocation(line: 430, column: 13, scope: !1501)
!1512 = !DILocation(line: 430, column: 25, scope: !1501)
!1513 = !DILocation(line: 432, column: 13, scope: !1501)
!1514 = !DILocation(line: 432, column: 21, scope: !1501)
!1515 = !DILocation(line: 432, column: 11, scope: !1501)
!1516 = !DILocation(line: 433, column: 24, scope: !1501)
!1517 = !DILocation(line: 433, column: 31, scope: !1501)
!1518 = !DILocation(line: 433, column: 5, scope: !1501)
!1519 = !DILocation(line: 433, column: 13, scope: !1501)
!1520 = !DILocation(line: 433, column: 22, scope: !1501)
!1521 = !DILocation(line: 434, column: 45, scope: !1501)
!1522 = !DILocation(line: 434, column: 5, scope: !1501)
!1523 = !DILocation(line: 434, column: 11, scope: !1501)
!1524 = !DILocation(line: 434, column: 19, scope: !1501)
!1525 = !DILocation(line: 435, column: 12, scope: !1501)
!1526 = !DILocation(line: 435, column: 18, scope: !1501)
!1527 = !DILocation(line: 435, column: 10, scope: !1501)
!1528 = !DILocation(line: 436, column: 4, scope: !1501)
!1529 = !DILocation(line: 437, column: 3, scope: !1455)
!1530 = !DILocation(line: 439, column: 9, scope: !1401)
!1531 = !DILocation(line: 439, column: 3, scope: !1401)
!1532 = !DILocation(line: 440, column: 3, scope: !1401)
!1533 = !DILocation(line: 440, column: 9, scope: !1401)
!1534 = !DILocation(line: 440, column: 14, scope: !1401)
!1535 = !DILocation(line: 440, column: 24, scope: !1401)
!1536 = !DILocalVariable(name: "elem", scope: !1401, file: !2, line: 441, type: !89)
!1537 = !DILocation(line: 441, column: 25, scope: !1401)
!1538 = !DILocation(line: 441, column: 34, scope: !1401)
!1539 = !DILocation(line: 441, column: 40, scope: !1401)
!1540 = !DILocation(line: 442, column: 14, scope: !1401)
!1541 = !DILocation(line: 442, column: 20, scope: !1401)
!1542 = !DILocation(line: 442, column: 27, scope: !1401)
!1543 = !DILocation(line: 442, column: 3, scope: !1401)
!1544 = !DILocation(line: 443, column: 17, scope: !1401)
!1545 = !DILocation(line: 443, column: 3, scope: !1401)
!1546 = !DILocation(line: 443, column: 9, scope: !1401)
!1547 = !DILocation(line: 443, column: 15, scope: !1401)
!1548 = !DILocation(line: 445, column: 10, scope: !1401)
!1549 = !DILocation(line: 445, column: 3, scope: !1401)
!1550 = !DILocation(line: 447, column: 3, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 446, column: 9)
!1552 = !DILocation(line: 449, column: 1, scope: !1390)
!1553 = distinct !DISubprogram(name: "ch_map_get", scope: !2, file: !2, line: 451, type: !1554, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!188, !723, !144, !83}
!1556 = !DILocalVariable(name: "map", arg: 1, scope: !1553, file: !2, line: 451, type: !723)
!1557 = !DILocation(line: 451, column: 29, scope: !1553)
!1558 = !DILocalVariable(name: "chnum", arg: 2, scope: !1553, file: !2, line: 451, type: !144)
!1559 = !DILocation(line: 451, column: 43, scope: !1553)
!1560 = !DILocalVariable(name: "new_chn", arg: 3, scope: !1553, file: !2, line: 451, type: !83)
!1561 = !DILocation(line: 451, column: 54, scope: !1553)
!1562 = !DILocalVariable(name: "ret", scope: !1553, file: !2, line: 453, type: !188)
!1563 = !DILocation(line: 453, column: 11, scope: !1553)
!1564 = !DILocation(line: 454, column: 5, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 454, column: 5)
!1566 = !DILocation(line: 454, column: 5, scope: !1553)
!1567 = !DILocalVariable(name: "index", scope: !1568, file: !2, line: 455, type: !110)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 454, column: 10)
!1569 = !DILocation(line: 455, column: 10, scope: !1568)
!1570 = !DILocation(line: 455, column: 27, scope: !1568)
!1571 = !DILocation(line: 455, column: 33, scope: !1568)
!1572 = !DILocation(line: 455, column: 18, scope: !1568)
!1573 = !DILocalVariable(name: "a", scope: !1568, file: !2, line: 456, type: !741)
!1574 = !DILocation(line: 456, column: 17, scope: !1568)
!1575 = !DILocation(line: 456, column: 23, scope: !1568)
!1576 = !DILocation(line: 456, column: 28, scope: !1568)
!1577 = !DILocation(line: 456, column: 34, scope: !1568)
!1578 = !DILocalVariable(name: "i", scope: !1568, file: !2, line: 458, type: !110)
!1579 = !DILocation(line: 458, column: 10, scope: !1568)
!1580 = !DILocation(line: 459, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 459, column: 3)
!1582 = !DILocation(line: 459, column: 7, scope: !1581)
!1583 = !DILocation(line: 459, column: 11, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 459, column: 3)
!1585 = !DILocation(line: 459, column: 12, scope: !1584)
!1586 = !DILocation(line: 459, column: 3, scope: !1581)
!1587 = !DILocalVariable(name: "chi", scope: !1588, file: !2, line: 460, type: !188)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 459, column: 36)
!1589 = !DILocation(line: 460, column: 13, scope: !1588)
!1590 = !DILocation(line: 460, column: 21, scope: !1588)
!1591 = !DILocation(line: 460, column: 24, scope: !1588)
!1592 = !DILocation(line: 460, column: 34, scope: !1588)
!1593 = !DILocation(line: 461, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 461, column: 7)
!1595 = !DILocation(line: 461, column: 12, scope: !1594)
!1596 = !DILocation(line: 461, column: 7, scope: !1588)
!1597 = !DILocation(line: 462, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 462, column: 8)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 461, column: 23)
!1600 = !DILocation(line: 462, column: 17, scope: !1598)
!1601 = !DILocation(line: 462, column: 21, scope: !1598)
!1602 = !DILocation(line: 462, column: 26, scope: !1598)
!1603 = !DILocation(line: 462, column: 35, scope: !1598)
!1604 = !DILocation(line: 462, column: 32, scope: !1598)
!1605 = !DILocation(line: 462, column: 8, scope: !1599)
!1606 = !DILocation(line: 463, column: 13, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 462, column: 43)
!1608 = !DILocation(line: 463, column: 6, scope: !1607)
!1609 = !DILocation(line: 465, column: 4, scope: !1599)
!1610 = !DILocation(line: 465, column: 14, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 465, column: 14)
!1612 = !DILocation(line: 465, column: 14, scope: !1594)
!1613 = !DILocation(line: 466, column: 12, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 465, column: 23)
!1615 = !DILocation(line: 466, column: 5, scope: !1614)
!1616 = !DILocation(line: 468, column: 3, scope: !1588)
!1617 = !DILocation(line: 459, column: 31, scope: !1584)
!1618 = !DILocation(line: 459, column: 3, scope: !1584)
!1619 = distinct !{!1619, !1586, !1620, !409}
!1620 = !DILocation(line: 468, column: 3, scope: !1581)
!1621 = !DILocalVariable(name: "old_sz", scope: !1568, file: !2, line: 470, type: !110)
!1622 = !DILocation(line: 470, column: 10, scope: !1568)
!1623 = !DILocation(line: 470, column: 19, scope: !1568)
!1624 = !DILocation(line: 470, column: 22, scope: !1568)
!1625 = !DILocation(line: 471, column: 6, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 471, column: 6)
!1627 = !DILocation(line: 471, column: 13, scope: !1626)
!1628 = !DILocation(line: 471, column: 16, scope: !1626)
!1629 = !DILocation(line: 471, column: 19, scope: !1626)
!1630 = !DILocation(line: 471, column: 6, scope: !1568)
!1631 = !DILocation(line: 472, column: 9, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 472, column: 4)
!1633 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 471, column: 31)
!1634 = !DILocation(line: 472, column: 8, scope: !1632)
!1635 = !DILocation(line: 472, column: 12, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 472, column: 4)
!1637 = !DILocation(line: 472, column: 14, scope: !1636)
!1638 = !DILocation(line: 472, column: 13, scope: !1636)
!1639 = !DILocation(line: 472, column: 4, scope: !1632)
!1640 = !DILocalVariable(name: "chi", scope: !1641, file: !2, line: 473, type: !188)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 472, column: 26)
!1642 = !DILocation(line: 473, column: 14, scope: !1641)
!1643 = !DILocation(line: 473, column: 20, scope: !1641)
!1644 = !DILocation(line: 473, column: 23, scope: !1641)
!1645 = !DILocation(line: 473, column: 34, scope: !1641)
!1646 = !DILocation(line: 474, column: 8, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 474, column: 8)
!1648 = !DILocation(line: 474, column: 8, scope: !1641)
!1649 = !DILocation(line: 475, column: 9, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !2, line: 475, column: 9)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !2, line: 474, column: 13)
!1652 = !DILocation(line: 475, column: 14, scope: !1650)
!1653 = !DILocation(line: 475, column: 9, scope: !1651)
!1654 = !DILocation(line: 476, column: 11, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 476, column: 10)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 475, column: 25)
!1657 = !DILocation(line: 476, column: 19, scope: !1655)
!1658 = !DILocation(line: 476, column: 23, scope: !1655)
!1659 = !DILocation(line: 476, column: 28, scope: !1655)
!1660 = !DILocation(line: 476, column: 37, scope: !1655)
!1661 = !DILocation(line: 476, column: 34, scope: !1655)
!1662 = !DILocation(line: 476, column: 10, scope: !1656)
!1663 = !DILocation(line: 477, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 476, column: 45)
!1665 = !DILocation(line: 477, column: 8, scope: !1664)
!1666 = !DILocation(line: 479, column: 6, scope: !1656)
!1667 = !DILocation(line: 479, column: 16, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 479, column: 16)
!1669 = !DILocation(line: 479, column: 16, scope: !1650)
!1670 = !DILocation(line: 480, column: 14, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 479, column: 25)
!1672 = !DILocation(line: 480, column: 7, scope: !1671)
!1673 = !DILocation(line: 482, column: 5, scope: !1651)
!1674 = !DILocation(line: 483, column: 4, scope: !1641)
!1675 = !DILocation(line: 472, column: 21, scope: !1636)
!1676 = !DILocation(line: 472, column: 4, scope: !1636)
!1677 = distinct !{!1677, !1639, !1678, !409}
!1678 = !DILocation(line: 483, column: 4, scope: !1632)
!1679 = !DILocation(line: 484, column: 3, scope: !1633)
!1680 = !DILocation(line: 486, column: 6, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 486, column: 6)
!1682 = !DILocation(line: 486, column: 6, scope: !1568)
!1683 = !DILocalVariable(name: "old_sz_mem", scope: !1684, file: !2, line: 487, type: !110)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 486, column: 15)
!1685 = !DILocation(line: 487, column: 11, scope: !1684)
!1686 = !DILocation(line: 487, column: 24, scope: !1684)
!1687 = !DILocation(line: 487, column: 31, scope: !1684)
!1688 = !DILocation(line: 488, column: 39, scope: !1684)
!1689 = !DILocation(line: 488, column: 42, scope: !1684)
!1690 = !DILocation(line: 488, column: 53, scope: !1684)
!1691 = !DILocation(line: 488, column: 64, scope: !1684)
!1692 = !DILocation(line: 488, column: 31, scope: !1684)
!1693 = !DILocation(line: 488, column: 4, scope: !1684)
!1694 = !DILocation(line: 488, column: 7, scope: !1684)
!1695 = !DILocation(line: 488, column: 18, scope: !1684)
!1696 = !DILocation(line: 489, column: 38, scope: !1684)
!1697 = !DILocation(line: 489, column: 4, scope: !1684)
!1698 = !DILocation(line: 489, column: 7, scope: !1684)
!1699 = !DILocation(line: 489, column: 18, scope: !1684)
!1700 = !DILocation(line: 489, column: 26, scope: !1684)
!1701 = !DILocation(line: 490, column: 10, scope: !1684)
!1702 = !DILocation(line: 490, column: 13, scope: !1684)
!1703 = !DILocation(line: 490, column: 24, scope: !1684)
!1704 = !DILocation(line: 490, column: 4, scope: !1684)
!1705 = !DILocation(line: 491, column: 4, scope: !1684)
!1706 = !DILocation(line: 491, column: 7, scope: !1684)
!1707 = !DILocation(line: 491, column: 16, scope: !1684)
!1708 = !DILocation(line: 493, column: 11, scope: !1684)
!1709 = !DILocation(line: 493, column: 14, scope: !1684)
!1710 = !DILocation(line: 493, column: 25, scope: !1684)
!1711 = !DILocation(line: 493, column: 4, scope: !1684)
!1712 = !DILocation(line: 495, column: 2, scope: !1568)
!1713 = !DILocation(line: 497, column: 9, scope: !1553)
!1714 = !DILocation(line: 497, column: 2, scope: !1553)
!1715 = !DILocation(line: 498, column: 1, scope: !1553)
!1716 = distinct !DISubprogram(name: "allocation_get_ch_info", scope: !2, file: !2, line: 339, type: !1717, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!188, !244, !144}
!1719 = !DILocalVariable(name: "a", arg: 1, scope: !1716, file: !2, line: 339, type: !244)
!1720 = !DILocation(line: 339, column: 45, scope: !1716)
!1721 = !DILocalVariable(name: "chnum", arg: 2, scope: !1716, file: !2, line: 339, type: !144)
!1722 = !DILocation(line: 339, column: 57, scope: !1716)
!1723 = !DILocation(line: 340, column: 22, scope: !1716)
!1724 = !DILocation(line: 340, column: 25, scope: !1716)
!1725 = !DILocation(line: 340, column: 32, scope: !1716)
!1726 = !DILocation(line: 340, column: 9, scope: !1716)
!1727 = !DILocation(line: 340, column: 2, scope: !1716)
!1728 = distinct !DISubprogram(name: "allocation_get_ch_info_by_peer_addr", scope: !2, file: !2, line: 343, type: !1729, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!188, !244, !1333}
!1731 = !DILocalVariable(name: "a", arg: 1, scope: !1728, file: !2, line: 343, type: !244)
!1732 = !DILocation(line: 343, column: 58, scope: !1728)
!1733 = !DILocalVariable(name: "peer_addr", arg: 2, scope: !1728, file: !2, line: 343, type: !1333)
!1734 = !DILocation(line: 343, column: 71, scope: !1728)
!1735 = !DILocalVariable(name: "tinfo", scope: !1728, file: !2, line: 344, type: !89)
!1736 = !DILocation(line: 344, column: 24, scope: !1728)
!1737 = !DILocation(line: 344, column: 69, scope: !1728)
!1738 = !DILocation(line: 344, column: 72, scope: !1728)
!1739 = !DILocation(line: 344, column: 87, scope: !1728)
!1740 = !DILocation(line: 344, column: 32, scope: !1728)
!1741 = !DILocation(line: 345, column: 5, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 345, column: 5)
!1743 = !DILocation(line: 345, column: 5, scope: !1728)
!1744 = !DILocation(line: 346, column: 27, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 345, column: 12)
!1746 = !DILocation(line: 346, column: 33, scope: !1745)
!1747 = !DILocation(line: 346, column: 10, scope: !1745)
!1748 = !DILocation(line: 346, column: 3, scope: !1745)
!1749 = !DILocation(line: 348, column: 2, scope: !1728)
!1750 = !DILocation(line: 349, column: 1, scope: !1728)
!1751 = distinct !DISubprogram(name: "get_turn_channel", scope: !2, file: !2, line: 366, type: !1752, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!188, !89, !1333}
!1754 = !DILocalVariable(name: "tinfo", arg: 1, scope: !1751, file: !2, line: 366, type: !89)
!1755 = !DILocation(line: 366, column: 49, scope: !1751)
!1756 = !DILocalVariable(name: "addr", arg: 2, scope: !1751, file: !2, line: 366, type: !1333)
!1757 = !DILocation(line: 366, column: 66, scope: !1751)
!1758 = !DILocation(line: 368, column: 6, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 368, column: 6)
!1760 = !DILocation(line: 368, column: 6, scope: !1751)
!1761 = !DILocalVariable(name: "t", scope: !1762, file: !2, line: 369, type: !88)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 368, column: 13)
!1763 = !DILocation(line: 369, column: 21, scope: !1762)
!1764 = !DILocation(line: 370, column: 20, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 370, column: 7)
!1766 = !DILocation(line: 370, column: 27, scope: !1765)
!1767 = !DILocation(line: 370, column: 65, scope: !1765)
!1768 = !DILocation(line: 370, column: 51, scope: !1765)
!1769 = !DILocation(line: 370, column: 34, scope: !1765)
!1770 = !DILocation(line: 370, column: 7, scope: !1765)
!1771 = !DILocation(line: 370, column: 76, scope: !1765)
!1772 = !DILocation(line: 370, column: 79, scope: !1765)
!1773 = !DILocation(line: 370, column: 7, scope: !1762)
!1774 = !DILocalVariable(name: "chn", scope: !1775, file: !2, line: 371, type: !188)
!1775 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 370, column: 82)
!1776 = !DILocation(line: 371, column: 13, scope: !1775)
!1777 = !DILocation(line: 371, column: 30, scope: !1775)
!1778 = !DILocation(line: 371, column: 19, scope: !1775)
!1779 = !DILocation(line: 372, column: 8, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 372, column: 8)
!1781 = !DILocation(line: 372, column: 8, scope: !1775)
!1782 = !DILocation(line: 373, column: 12, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 372, column: 40)
!1784 = !DILocation(line: 373, column: 5, scope: !1783)
!1785 = !DILocation(line: 375, column: 3, scope: !1775)
!1786 = !DILocation(line: 376, column: 2, scope: !1762)
!1787 = !DILocation(line: 378, column: 2, scope: !1751)
!1788 = !DILocation(line: 379, column: 1, scope: !1751)
!1789 = distinct !DISubprogram(name: "get_turn_channel_number", scope: !2, file: !2, line: 351, type: !1790, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!144, !89, !1333}
!1792 = !DILocalVariable(name: "tinfo", arg: 1, scope: !1789, file: !2, line: 351, type: !89)
!1793 = !DILocation(line: 351, column: 56, scope: !1789)
!1794 = !DILocalVariable(name: "addr", arg: 2, scope: !1789, file: !2, line: 351, type: !1333)
!1795 = !DILocation(line: 351, column: 73, scope: !1789)
!1796 = !DILocation(line: 353, column: 6, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 353, column: 6)
!1798 = !DILocation(line: 353, column: 6, scope: !1789)
!1799 = !DILocalVariable(name: "t", scope: !1800, file: !2, line: 354, type: !88)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 353, column: 13)
!1801 = !DILocation(line: 354, column: 21, scope: !1800)
!1802 = !DILocation(line: 355, column: 20, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 355, column: 7)
!1804 = !DILocation(line: 355, column: 27, scope: !1803)
!1805 = !DILocation(line: 355, column: 65, scope: !1803)
!1806 = !DILocation(line: 355, column: 51, scope: !1803)
!1807 = !DILocation(line: 355, column: 34, scope: !1803)
!1808 = !DILocation(line: 355, column: 7, scope: !1803)
!1809 = !DILocation(line: 355, column: 76, scope: !1803)
!1810 = !DILocation(line: 355, column: 79, scope: !1803)
!1811 = !DILocation(line: 355, column: 7, scope: !1800)
!1812 = !DILocalVariable(name: "chn", scope: !1813, file: !2, line: 356, type: !188)
!1813 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 355, column: 82)
!1814 = !DILocation(line: 356, column: 13, scope: !1813)
!1815 = !DILocation(line: 356, column: 30, scope: !1813)
!1816 = !DILocation(line: 356, column: 19, scope: !1813)
!1817 = !DILocation(line: 357, column: 8, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 357, column: 8)
!1819 = !DILocation(line: 357, column: 8, scope: !1813)
!1820 = !DILocation(line: 358, column: 12, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 357, column: 40)
!1822 = !DILocation(line: 358, column: 17, scope: !1821)
!1823 = !DILocation(line: 358, column: 5, scope: !1821)
!1824 = !DILocation(line: 360, column: 3, scope: !1813)
!1825 = !DILocation(line: 361, column: 2, scope: !1800)
!1826 = !DILocation(line: 363, column: 2, scope: !1789)
!1827 = !DILocation(line: 364, column: 1, scope: !1789)
!1828 = distinct !DISubprogram(name: "allocation_get_turn_permission_hashtable", scope: !2, file: !2, line: 381, type: !1829, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!340, !244}
!1831 = !DILocalVariable(name: "a", arg: 1, scope: !1828, file: !2, line: 381, type: !244)
!1832 = !DILocation(line: 381, column: 81, scope: !1828)
!1833 = !DILocation(line: 383, column: 12, scope: !1828)
!1834 = !DILocation(line: 383, column: 15, scope: !1828)
!1835 = !DILocation(line: 383, column: 3, scope: !1828)
!1836 = distinct !DISubprogram(name: "ch_info_clean", scope: !2, file: !2, line: 269, type: !1276, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1837 = !DILocalVariable(name: "c", arg: 1, scope: !1836, file: !2, line: 269, type: !188)
!1838 = !DILocation(line: 269, column: 36, scope: !1836)
!1839 = !DILocation(line: 270, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 270, column: 7)
!1841 = !DILocation(line: 270, column: 7, scope: !1836)
!1842 = !DILocation(line: 271, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !2, line: 271, column: 7)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 270, column: 10)
!1845 = !DILocation(line: 271, column: 10, scope: !1843)
!1846 = !DILocation(line: 271, column: 7, scope: !1844)
!1847 = !DILocation(line: 273, column: 4, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !2, line: 271, column: 26)
!1849 = !DILocation(line: 273, column: 7, scope: !1848)
!1850 = !DILocation(line: 273, column: 22, scope: !1848)
!1851 = !DILocation(line: 274, column: 3, scope: !1848)
!1852 = !DILocation(line: 275, column: 3, scope: !1844)
!1853 = !DILocation(line: 275, column: 3, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 275, column: 3)
!1855 = distinct !DILexicalBlock(scope: !1844, file: !2, line: 275, column: 3)
!1856 = !DILocation(line: 275, column: 3, scope: !1855)
!1857 = !DILocation(line: 275, column: 3, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 275, column: 3)
!1859 = !DILocation(line: 276, column: 9, scope: !1844)
!1860 = !DILocation(line: 276, column: 3, scope: !1844)
!1861 = !DILocation(line: 277, column: 2, scope: !1844)
!1862 = !DILocation(line: 278, column: 1, scope: !1836)
!1863 = distinct !DISubprogram(name: "create_tcp_connection", scope: !2, file: !2, line: 562, type: !1864, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!207, !73, !244, !1866, !1333, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1868 = !DILocalVariable(name: "server_id", arg: 1, scope: !1863, file: !2, line: 562, type: !73)
!1869 = !DILocation(line: 562, column: 47, scope: !1863)
!1870 = !DILocalVariable(name: "a", arg: 2, scope: !1863, file: !2, line: 562, type: !244)
!1871 = !DILocation(line: 562, column: 70, scope: !1863)
!1872 = !DILocalVariable(name: "tid", arg: 3, scope: !1863, file: !2, line: 562, type: !1866)
!1873 = !DILocation(line: 562, column: 83, scope: !1863)
!1874 = !DILocalVariable(name: "peer_addr", arg: 4, scope: !1863, file: !2, line: 562, type: !1333)
!1875 = !DILocation(line: 562, column: 98, scope: !1863)
!1876 = !DILocalVariable(name: "err_code", arg: 5, scope: !1863, file: !2, line: 562, type: !1867)
!1877 = !DILocation(line: 562, column: 114, scope: !1863)
!1878 = !DILocalVariable(name: "tcl", scope: !1863, file: !2, line: 564, type: !529)
!1879 = !DILocation(line: 564, column: 23, scope: !1863)
!1880 = !DILocation(line: 564, column: 31, scope: !1863)
!1881 = !DILocation(line: 564, column: 34, scope: !1863)
!1882 = !DILocation(line: 565, column: 5, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 565, column: 5)
!1884 = !DILocation(line: 565, column: 10, scope: !1883)
!1885 = !DILocation(line: 565, column: 5, scope: !1863)
!1886 = !DILocalVariable(name: "i", scope: !1887, file: !2, line: 566, type: !110)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 565, column: 17)
!1888 = !DILocation(line: 566, column: 10, scope: !1887)
!1889 = !DILocation(line: 567, column: 8, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 567, column: 3)
!1891 = !DILocation(line: 567, column: 7, scope: !1890)
!1892 = !DILocation(line: 567, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !2, line: 567, column: 3)
!1894 = !DILocation(line: 567, column: 13, scope: !1893)
!1895 = !DILocation(line: 567, column: 18, scope: !1893)
!1896 = !DILocation(line: 567, column: 12, scope: !1893)
!1897 = !DILocation(line: 567, column: 3, scope: !1890)
!1898 = !DILocalVariable(name: "otc", scope: !1899, file: !2, line: 568, type: !207)
!1899 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 567, column: 26)
!1900 = !DILocation(line: 568, column: 20, scope: !1899)
!1901 = !DILocation(line: 568, column: 26, scope: !1899)
!1902 = !DILocation(line: 568, column: 31, scope: !1899)
!1903 = !DILocation(line: 568, column: 37, scope: !1899)
!1904 = !DILocation(line: 569, column: 7, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 569, column: 7)
!1906 = !DILocation(line: 569, column: 7, scope: !1899)
!1907 = !DILocation(line: 570, column: 18, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 570, column: 8)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 569, column: 12)
!1910 = !DILocation(line: 570, column: 23, scope: !1908)
!1911 = !DILocation(line: 570, column: 34, scope: !1908)
!1912 = !DILocation(line: 570, column: 8, scope: !1908)
!1913 = !DILocation(line: 570, column: 8, scope: !1909)
!1914 = !DILocation(line: 571, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 570, column: 46)
!1916 = !DILocation(line: 571, column: 16, scope: !1915)
!1917 = !DILocation(line: 572, column: 6, scope: !1915)
!1918 = !DILocation(line: 574, column: 4, scope: !1909)
!1919 = !DILocation(line: 575, column: 3, scope: !1899)
!1920 = !DILocation(line: 567, column: 21, scope: !1893)
!1921 = !DILocation(line: 567, column: 3, scope: !1893)
!1922 = distinct !{!1922, !1897, !1923, !409}
!1923 = !DILocation(line: 575, column: 3, scope: !1890)
!1924 = !DILocation(line: 576, column: 2, scope: !1887)
!1925 = !DILocalVariable(name: "tc", scope: !1863, file: !2, line: 577, type: !207)
!1926 = !DILocation(line: 577, column: 18, scope: !1863)
!1927 = !DILocation(line: 577, column: 40, scope: !1863)
!1928 = !DILocation(line: 578, column: 8, scope: !1863)
!1929 = !DILocation(line: 578, column: 2, scope: !1863)
!1930 = !DILocation(line: 579, column: 13, scope: !1863)
!1931 = !DILocation(line: 579, column: 17, scope: !1863)
!1932 = !DILocation(line: 579, column: 28, scope: !1863)
!1933 = !DILocation(line: 579, column: 2, scope: !1863)
!1934 = !DILocation(line: 580, column: 5, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 580, column: 5)
!1936 = !DILocation(line: 580, column: 5, scope: !1863)
!1937 = !DILocation(line: 581, column: 9, scope: !1935)
!1938 = !DILocation(line: 581, column: 15, scope: !1935)
!1939 = !DILocation(line: 581, column: 19, scope: !1935)
!1940 = !DILocation(line: 581, column: 3, scope: !1935)
!1941 = !DILocation(line: 582, column: 14, scope: !1863)
!1942 = !DILocation(line: 582, column: 2, scope: !1863)
!1943 = !DILocation(line: 582, column: 6, scope: !1863)
!1944 = !DILocation(line: 582, column: 12, scope: !1863)
!1945 = !DILocalVariable(name: "found", scope: !1863, file: !2, line: 584, type: !83)
!1946 = !DILocation(line: 584, column: 6, scope: !1863)
!1947 = !DILocation(line: 585, column: 5, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 585, column: 5)
!1949 = !DILocation(line: 585, column: 8, scope: !1948)
!1950 = !DILocation(line: 585, column: 12, scope: !1948)
!1951 = !DILocation(line: 585, column: 5, scope: !1863)
!1952 = !DILocalVariable(name: "i", scope: !1953, file: !2, line: 586, type: !110)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 585, column: 19)
!1954 = !DILocation(line: 586, column: 10, scope: !1953)
!1955 = !DILocation(line: 587, column: 8, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 587, column: 3)
!1957 = !DILocation(line: 587, column: 7, scope: !1956)
!1958 = !DILocation(line: 587, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 587, column: 3)
!1960 = !DILocation(line: 587, column: 13, scope: !1959)
!1961 = !DILocation(line: 587, column: 18, scope: !1959)
!1962 = !DILocation(line: 587, column: 12, scope: !1959)
!1963 = !DILocation(line: 587, column: 3, scope: !1956)
!1964 = !DILocalVariable(name: "otc", scope: !1965, file: !2, line: 588, type: !207)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 587, column: 26)
!1966 = !DILocation(line: 588, column: 20, scope: !1965)
!1967 = !DILocation(line: 588, column: 26, scope: !1965)
!1968 = !DILocation(line: 588, column: 31, scope: !1965)
!1969 = !DILocation(line: 588, column: 37, scope: !1965)
!1970 = !DILocation(line: 589, column: 8, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1965, file: !2, line: 589, column: 7)
!1972 = !DILocation(line: 589, column: 7, scope: !1965)
!1973 = !DILocation(line: 590, column: 21, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !2, line: 589, column: 13)
!1975 = !DILocation(line: 590, column: 5, scope: !1974)
!1976 = !DILocation(line: 590, column: 10, scope: !1974)
!1977 = !DILocation(line: 590, column: 16, scope: !1974)
!1978 = !DILocation(line: 590, column: 19, scope: !1974)
!1979 = !DILocation(line: 591, column: 11, scope: !1974)
!1980 = !DILocation(line: 592, column: 5, scope: !1974)
!1981 = !DILocation(line: 594, column: 3, scope: !1965)
!1982 = !DILocation(line: 587, column: 21, scope: !1959)
!1983 = !DILocation(line: 587, column: 3, scope: !1959)
!1984 = distinct !{!1984, !1963, !1985, !409}
!1985 = !DILocation(line: 594, column: 3, scope: !1956)
!1986 = !DILocation(line: 595, column: 2, scope: !1953)
!1987 = !DILocation(line: 597, column: 6, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 597, column: 5)
!1989 = !DILocation(line: 597, column: 5, scope: !1863)
!1990 = !DILocalVariable(name: "old_sz_mem", scope: !1991, file: !2, line: 598, type: !110)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 597, column: 13)
!1992 = !DILocation(line: 598, column: 10, scope: !1991)
!1993 = !DILocation(line: 598, column: 23, scope: !1991)
!1994 = !DILocation(line: 598, column: 26, scope: !1991)
!1995 = !DILocation(line: 598, column: 30, scope: !1991)
!1996 = !DILocation(line: 598, column: 33, scope: !1991)
!1997 = !DILocation(line: 599, column: 44, scope: !1991)
!1998 = !DILocation(line: 599, column: 47, scope: !1991)
!1999 = !DILocation(line: 599, column: 51, scope: !1991)
!2000 = !DILocation(line: 599, column: 57, scope: !1991)
!2001 = !DILocation(line: 599, column: 67, scope: !1991)
!2002 = !DILocation(line: 599, column: 36, scope: !1991)
!2003 = !DILocation(line: 599, column: 3, scope: !1991)
!2004 = !DILocation(line: 599, column: 6, scope: !1991)
!2005 = !DILocation(line: 599, column: 10, scope: !1991)
!2006 = !DILocation(line: 599, column: 16, scope: !1991)
!2007 = !DILocation(line: 600, column: 29, scope: !1991)
!2008 = !DILocation(line: 600, column: 3, scope: !1991)
!2009 = !DILocation(line: 600, column: 6, scope: !1991)
!2010 = !DILocation(line: 600, column: 10, scope: !1991)
!2011 = !DILocation(line: 600, column: 16, scope: !1991)
!2012 = !DILocation(line: 600, column: 19, scope: !1991)
!2013 = !DILocation(line: 600, column: 23, scope: !1991)
!2014 = !DILocation(line: 600, column: 27, scope: !1991)
!2015 = !DILocation(line: 601, column: 3, scope: !1991)
!2016 = !DILocation(line: 601, column: 6, scope: !1991)
!2017 = !DILocation(line: 601, column: 10, scope: !1991)
!2018 = !DILocation(line: 601, column: 13, scope: !1991)
!2019 = !DILocation(line: 602, column: 11, scope: !1991)
!2020 = !DILocation(line: 602, column: 14, scope: !1991)
!2021 = !DILocation(line: 602, column: 7, scope: !1991)
!2022 = !DILocation(line: 603, column: 2, scope: !1991)
!2023 = !DILocation(line: 605, column: 16, scope: !1863)
!2024 = !DILocation(line: 605, column: 27, scope: !1863)
!2025 = !DILocation(line: 605, column: 2, scope: !1863)
!2026 = !DILocation(line: 606, column: 9, scope: !1863)
!2027 = !DILocation(line: 606, column: 2, scope: !1863)
!2028 = !DILocation(line: 607, column: 1, scope: !1863)
!2029 = distinct !DISubprogram(name: "set_new_tc_id", scope: !2, file: !2, line: 538, type: !2030, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !73, !207}
!2032 = !DILocalVariable(name: "server_id", arg: 1, scope: !2029, file: !2, line: 538, type: !73)
!2033 = !DILocation(line: 538, column: 35, scope: !2029)
!2034 = !DILocalVariable(name: "tc", arg: 2, scope: !2029, file: !2, line: 538, type: !207)
!2035 = !DILocation(line: 538, column: 62, scope: !2029)
!2036 = !DILocalVariable(name: "a", scope: !2029, file: !2, line: 539, type: !244)
!2037 = !DILocation(line: 539, column: 14, scope: !2029)
!2038 = !DILocation(line: 539, column: 32, scope: !2029)
!2039 = !DILocation(line: 539, column: 36, scope: !2029)
!2040 = !DILocalVariable(name: "map", scope: !2029, file: !2, line: 540, type: !290)
!2041 = !DILocation(line: 540, column: 10, scope: !2029)
!2042 = !DILocation(line: 540, column: 16, scope: !2029)
!2043 = !DILocation(line: 540, column: 19, scope: !2029)
!2044 = !DILocalVariable(name: "newid", scope: !2029, file: !2, line: 541, type: !151)
!2045 = !DILocation(line: 541, column: 11, scope: !2029)
!2046 = !DILocalVariable(name: "sid", scope: !2029, file: !2, line: 542, type: !151)
!2047 = !DILocation(line: 542, column: 11, scope: !2029)
!2048 = !DILocation(line: 542, column: 17, scope: !2029)
!2049 = !DILocation(line: 543, column: 8, scope: !2029)
!2050 = !DILocation(line: 543, column: 11, scope: !2029)
!2051 = !DILocation(line: 543, column: 6, scope: !2029)
!2052 = !DILocation(line: 544, column: 2, scope: !2029)
!2053 = !DILocation(line: 545, column: 9, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 544, column: 5)
!2055 = !DILocation(line: 546, column: 3, scope: !2054)
!2056 = !DILocation(line: 546, column: 11, scope: !2054)
!2057 = !DILocation(line: 546, column: 10, scope: !2054)
!2058 = !DILocation(line: 547, column: 22, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 546, column: 18)
!2060 = !DILocation(line: 547, column: 12, scope: !2059)
!2061 = !DILocation(line: 547, column: 10, scope: !2059)
!2062 = !DILocation(line: 548, column: 8, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 548, column: 7)
!2064 = !DILocation(line: 548, column: 7, scope: !2059)
!2065 = !DILocation(line: 549, column: 5, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 548, column: 15)
!2067 = distinct !{!2067, !2055, !2068, !409}
!2068 = !DILocation(line: 556, column: 3, scope: !2054)
!2069 = !DILocation(line: 551, column: 12, scope: !2059)
!2070 = !DILocation(line: 551, column: 18, scope: !2059)
!2071 = !DILocation(line: 551, column: 10, scope: !2059)
!2072 = !DILocation(line: 552, column: 8, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 552, column: 7)
!2074 = !DILocation(line: 552, column: 7, scope: !2059)
!2075 = !DILocation(line: 553, column: 5, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 552, column: 15)
!2077 = !DILocation(line: 555, column: 12, scope: !2059)
!2078 = !DILocation(line: 555, column: 20, scope: !2059)
!2079 = !DILocation(line: 555, column: 18, scope: !2059)
!2080 = !DILocation(line: 555, column: 10, scope: !2059)
!2081 = !DILocation(line: 557, column: 2, scope: !2054)
!2082 = !DILocation(line: 557, column: 21, scope: !2029)
!2083 = !DILocation(line: 557, column: 43, scope: !2029)
!2084 = !DILocation(line: 557, column: 26, scope: !2029)
!2085 = !DILocation(line: 557, column: 10, scope: !2029)
!2086 = distinct !{!2086, !2052, !2087, !409}
!2087 = !DILocation(line: 557, column: 55, scope: !2029)
!2088 = !DILocation(line: 558, column: 11, scope: !2029)
!2089 = !DILocation(line: 558, column: 2, scope: !2029)
!2090 = !DILocation(line: 558, column: 6, scope: !2029)
!2091 = !DILocation(line: 558, column: 9, scope: !2029)
!2092 = !DILocation(line: 559, column: 13, scope: !2029)
!2093 = !DILocation(line: 559, column: 35, scope: !2029)
!2094 = !DILocation(line: 559, column: 18, scope: !2029)
!2095 = !DILocation(line: 559, column: 61, scope: !2029)
!2096 = !DILocation(line: 559, column: 42, scope: !2029)
!2097 = !DILocation(line: 559, column: 2, scope: !2029)
!2098 = !DILocation(line: 560, column: 1, scope: !2029)
!2099 = distinct !DISubprogram(name: "clear_unsent_buffer", scope: !2, file: !2, line: 702, type: !2100, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!2103 = !DILocalVariable(name: "ub", arg: 1, scope: !2099, file: !2, line: 702, type: !2102)
!2104 = !DILocation(line: 702, column: 41, scope: !2099)
!2105 = !DILocation(line: 704, column: 5, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !2, line: 704, column: 5)
!2107 = !DILocation(line: 704, column: 5, scope: !2099)
!2108 = !DILocation(line: 705, column: 6, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 705, column: 6)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !2, line: 704, column: 9)
!2111 = !DILocation(line: 705, column: 10, scope: !2109)
!2112 = !DILocation(line: 705, column: 6, scope: !2110)
!2113 = !DILocalVariable(name: "sz", scope: !2114, file: !2, line: 706, type: !110)
!2114 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 705, column: 16)
!2115 = !DILocation(line: 706, column: 11, scope: !2114)
!2116 = !DILocation(line: 707, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !2, line: 707, column: 4)
!2118 = !DILocation(line: 707, column: 8, scope: !2117)
!2119 = !DILocation(line: 707, column: 16, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 707, column: 4)
!2121 = !DILocation(line: 707, column: 19, scope: !2120)
!2122 = !DILocation(line: 707, column: 23, scope: !2120)
!2123 = !DILocation(line: 707, column: 18, scope: !2120)
!2124 = !DILocation(line: 707, column: 4, scope: !2117)
!2125 = !DILocalVariable(name: "nbh", scope: !2126, file: !2, line: 708, type: !242)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !2, line: 707, column: 33)
!2127 = !DILocation(line: 708, column: 31, scope: !2126)
!2128 = !DILocation(line: 708, column: 37, scope: !2126)
!2129 = !DILocation(line: 708, column: 41, scope: !2126)
!2130 = !DILocation(line: 708, column: 46, scope: !2126)
!2131 = !DILocation(line: 709, column: 8, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2126, file: !2, line: 709, column: 8)
!2133 = !DILocation(line: 709, column: 8, scope: !2126)
!2134 = !DILocation(line: 710, column: 38, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 709, column: 13)
!2136 = !DILocation(line: 710, column: 6, scope: !2135)
!2137 = !DILocation(line: 711, column: 6, scope: !2135)
!2138 = !DILocation(line: 711, column: 10, scope: !2135)
!2139 = !DILocation(line: 711, column: 15, scope: !2135)
!2140 = !DILocation(line: 711, column: 19, scope: !2135)
!2141 = !DILocation(line: 712, column: 5, scope: !2135)
!2142 = !DILocation(line: 713, column: 4, scope: !2126)
!2143 = !DILocation(line: 707, column: 29, scope: !2120)
!2144 = !DILocation(line: 707, column: 4, scope: !2120)
!2145 = distinct !{!2145, !2124, !2146, !409}
!2146 = !DILocation(line: 713, column: 4, scope: !2117)
!2147 = !DILocation(line: 714, column: 9, scope: !2114)
!2148 = !DILocation(line: 714, column: 13, scope: !2114)
!2149 = !DILocation(line: 714, column: 4, scope: !2114)
!2150 = !DILocation(line: 715, column: 4, scope: !2114)
!2151 = !DILocation(line: 715, column: 8, scope: !2114)
!2152 = !DILocation(line: 715, column: 13, scope: !2114)
!2153 = !DILocation(line: 716, column: 3, scope: !2114)
!2154 = !DILocation(line: 717, column: 3, scope: !2110)
!2155 = !DILocation(line: 717, column: 7, scope: !2110)
!2156 = !DILocation(line: 717, column: 10, scope: !2110)
!2157 = !DILocation(line: 718, column: 2, scope: !2110)
!2158 = !DILocation(line: 719, column: 1, scope: !2099)
!2159 = distinct !DISubprogram(name: "get_and_clean_tcp_connection_by_id", scope: !2, file: !2, line: 645, type: !2160, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!207, !290, !214}
!2162 = !DILocalVariable(name: "map", arg: 1, scope: !2159, file: !2, line: 645, type: !290)
!2163 = !DILocation(line: 645, column: 60, scope: !2159)
!2164 = !DILocalVariable(name: "id", arg: 2, scope: !2159, file: !2, line: 645, type: !214)
!2165 = !DILocation(line: 645, column: 83, scope: !2159)
!2166 = !DILocation(line: 647, column: 5, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 647, column: 5)
!2168 = !DILocation(line: 647, column: 5, scope: !2159)
!2169 = !DILocalVariable(name: "t", scope: !2170, file: !2, line: 648, type: !88)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !2, line: 647, column: 10)
!2171 = !DILocation(line: 648, column: 21, scope: !2170)
!2172 = !DILocation(line: 649, column: 18, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 649, column: 7)
!2174 = !DILocation(line: 649, column: 40, scope: !2173)
!2175 = !DILocation(line: 649, column: 23, scope: !2173)
!2176 = !DILocation(line: 649, column: 7, scope: !2173)
!2177 = !DILocation(line: 649, column: 48, scope: !2173)
!2178 = !DILocation(line: 649, column: 51, scope: !2173)
!2179 = !DILocation(line: 649, column: 7, scope: !2170)
!2180 = !DILocation(line: 650, column: 15, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2173, file: !2, line: 649, column: 54)
!2182 = !DILocation(line: 650, column: 37, scope: !2181)
!2183 = !DILocation(line: 650, column: 20, scope: !2181)
!2184 = !DILocation(line: 650, column: 4, scope: !2181)
!2185 = !DILocation(line: 651, column: 28, scope: !2181)
!2186 = !DILocation(line: 651, column: 11, scope: !2181)
!2187 = !DILocation(line: 651, column: 4, scope: !2181)
!2188 = !DILocation(line: 653, column: 2, scope: !2170)
!2189 = !DILocation(line: 654, column: 2, scope: !2159)
!2190 = !DILocation(line: 655, column: 1, scope: !2159)
!2191 = distinct !DISubprogram(name: "get_tcp_connection_by_id", scope: !2, file: !2, line: 657, type: !2160, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2192 = !DILocalVariable(name: "map", arg: 1, scope: !2191, file: !2, line: 657, type: !290)
!2193 = !DILocation(line: 657, column: 50, scope: !2191)
!2194 = !DILocalVariable(name: "id", arg: 2, scope: !2191, file: !2, line: 657, type: !214)
!2195 = !DILocation(line: 657, column: 73, scope: !2191)
!2196 = !DILocation(line: 659, column: 5, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 659, column: 5)
!2198 = !DILocation(line: 659, column: 5, scope: !2191)
!2199 = !DILocalVariable(name: "t", scope: !2200, file: !2, line: 660, type: !88)
!2200 = distinct !DILexicalBlock(scope: !2197, file: !2, line: 659, column: 10)
!2201 = !DILocation(line: 660, column: 21, scope: !2200)
!2202 = !DILocation(line: 661, column: 18, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 661, column: 7)
!2204 = !DILocation(line: 661, column: 40, scope: !2203)
!2205 = !DILocation(line: 661, column: 23, scope: !2203)
!2206 = !DILocation(line: 661, column: 7, scope: !2203)
!2207 = !DILocation(line: 661, column: 48, scope: !2203)
!2208 = !DILocation(line: 661, column: 51, scope: !2203)
!2209 = !DILocation(line: 661, column: 7, scope: !2200)
!2210 = !DILocation(line: 662, column: 28, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 661, column: 54)
!2212 = !DILocation(line: 662, column: 11, scope: !2211)
!2213 = !DILocation(line: 662, column: 4, scope: !2211)
!2214 = !DILocation(line: 664, column: 2, scope: !2200)
!2215 = !DILocation(line: 665, column: 2, scope: !2191)
!2216 = !DILocation(line: 666, column: 1, scope: !2191)
!2217 = distinct !DISubprogram(name: "get_tcp_connection_by_peer", scope: !2, file: !2, line: 668, type: !2218, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!207, !244, !1333}
!2220 = !DILocalVariable(name: "a", arg: 1, scope: !2217, file: !2, line: 668, type: !244)
!2221 = !DILocation(line: 668, column: 56, scope: !2217)
!2222 = !DILocalVariable(name: "peer_addr", arg: 2, scope: !2217, file: !2, line: 668, type: !1333)
!2223 = !DILocation(line: 668, column: 69, scope: !2217)
!2224 = !DILocation(line: 670, column: 5, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 670, column: 5)
!2226 = !DILocation(line: 670, column: 7, scope: !2225)
!2227 = !DILocation(line: 670, column: 10, scope: !2225)
!2228 = !DILocation(line: 670, column: 5, scope: !2217)
!2229 = !DILocalVariable(name: "tcl", scope: !2230, file: !2, line: 671, type: !529)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 670, column: 21)
!2231 = !DILocation(line: 671, column: 24, scope: !2230)
!2232 = !DILocation(line: 671, column: 32, scope: !2230)
!2233 = !DILocation(line: 671, column: 35, scope: !2230)
!2234 = !DILocation(line: 672, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 672, column: 6)
!2236 = !DILocation(line: 672, column: 11, scope: !2235)
!2237 = !DILocation(line: 672, column: 6, scope: !2230)
!2238 = !DILocalVariable(name: "i", scope: !2239, file: !2, line: 673, type: !110)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 672, column: 18)
!2240 = !DILocation(line: 673, column: 11, scope: !2239)
!2241 = !DILocalVariable(name: "sz", scope: !2239, file: !2, line: 674, type: !110)
!2242 = !DILocation(line: 674, column: 11, scope: !2239)
!2243 = !DILocation(line: 674, column: 16, scope: !2239)
!2244 = !DILocation(line: 674, column: 21, scope: !2239)
!2245 = !DILocation(line: 675, column: 9, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 675, column: 4)
!2247 = !DILocation(line: 675, column: 8, scope: !2246)
!2248 = !DILocation(line: 675, column: 12, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 675, column: 4)
!2250 = !DILocation(line: 675, column: 14, scope: !2249)
!2251 = !DILocation(line: 675, column: 13, scope: !2249)
!2252 = !DILocation(line: 675, column: 4, scope: !2246)
!2253 = !DILocalVariable(name: "tc", scope: !2254, file: !2, line: 676, type: !207)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 675, column: 22)
!2255 = !DILocation(line: 676, column: 21, scope: !2254)
!2256 = !DILocation(line: 676, column: 26, scope: !2254)
!2257 = !DILocation(line: 676, column: 31, scope: !2254)
!2258 = !DILocation(line: 676, column: 37, scope: !2254)
!2259 = !DILocation(line: 677, column: 8, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 677, column: 8)
!2261 = !DILocation(line: 677, column: 8, scope: !2254)
!2262 = !DILocation(line: 678, column: 19, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !2, line: 678, column: 9)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 677, column: 12)
!2265 = !DILocation(line: 678, column: 23, scope: !2263)
!2266 = !DILocation(line: 678, column: 34, scope: !2263)
!2267 = !DILocation(line: 678, column: 9, scope: !2263)
!2268 = !DILocation(line: 678, column: 9, scope: !2264)
!2269 = !DILocation(line: 679, column: 14, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2263, file: !2, line: 678, column: 46)
!2271 = !DILocation(line: 679, column: 7, scope: !2270)
!2272 = !DILocation(line: 681, column: 5, scope: !2264)
!2273 = !DILocation(line: 682, column: 4, scope: !2254)
!2274 = !DILocation(line: 675, column: 17, scope: !2249)
!2275 = !DILocation(line: 675, column: 4, scope: !2249)
!2276 = distinct !{!2276, !2252, !2277, !409}
!2277 = !DILocation(line: 682, column: 4, scope: !2246)
!2278 = !DILocation(line: 683, column: 3, scope: !2239)
!2279 = !DILocation(line: 684, column: 2, scope: !2230)
!2280 = !DILocation(line: 685, column: 2, scope: !2217)
!2281 = !DILocation(line: 686, column: 1, scope: !2217)
!2282 = distinct !DISubprogram(name: "can_accept_tcp_connection_from_peer", scope: !2, file: !2, line: 688, type: !2283, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!83, !244, !1333, !83}
!2285 = !DILocalVariable(name: "a", arg: 1, scope: !2282, file: !2, line: 688, type: !244)
!2286 = !DILocation(line: 688, column: 53, scope: !2282)
!2287 = !DILocalVariable(name: "peer_addr", arg: 2, scope: !2282, file: !2, line: 688, type: !1333)
!2288 = !DILocation(line: 688, column: 66, scope: !2282)
!2289 = !DILocalVariable(name: "server_relay", arg: 3, scope: !2282, file: !2, line: 688, type: !83)
!2290 = !DILocation(line: 688, column: 81, scope: !2282)
!2291 = !DILocation(line: 690, column: 5, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 690, column: 5)
!2293 = !DILocation(line: 690, column: 5, scope: !2282)
!2294 = !DILocation(line: 691, column: 3, scope: !2292)
!2295 = !DILocation(line: 693, column: 5, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 693, column: 5)
!2297 = !DILocation(line: 693, column: 7, scope: !2296)
!2298 = !DILocation(line: 693, column: 10, scope: !2296)
!2299 = !DILocation(line: 693, column: 5, scope: !2282)
!2300 = !DILocation(line: 694, column: 48, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !2, line: 693, column: 21)
!2302 = !DILocation(line: 694, column: 51, scope: !2301)
!2303 = !DILocation(line: 694, column: 66, scope: !2301)
!2304 = !DILocation(line: 694, column: 11, scope: !2301)
!2305 = !DILocation(line: 694, column: 77, scope: !2301)
!2306 = !DILocation(line: 694, column: 3, scope: !2301)
!2307 = !DILocation(line: 697, column: 2, scope: !2282)
!2308 = !DILocation(line: 698, column: 1, scope: !2282)
!2309 = distinct !DISubprogram(name: "add_unsent_buffer", scope: !2, file: !2, line: 721, type: !2310, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null, !2102, !242}
!2312 = !DILocalVariable(name: "ub", arg: 1, scope: !2309, file: !2, line: 721, type: !2102)
!2313 = !DILocation(line: 721, column: 39, scope: !2309)
!2314 = !DILocalVariable(name: "nbh", arg: 2, scope: !2309, file: !2, line: 721, type: !242)
!2315 = !DILocation(line: 721, column: 69, scope: !2309)
!2316 = !DILocation(line: 723, column: 6, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 723, column: 5)
!2318 = !DILocation(line: 723, column: 9, scope: !2317)
!2319 = !DILocation(line: 723, column: 13, scope: !2317)
!2320 = !DILocation(line: 723, column: 17, scope: !2317)
!2321 = !DILocation(line: 723, column: 20, scope: !2317)
!2322 = !DILocation(line: 723, column: 5, scope: !2309)
!2323 = !DILocation(line: 724, column: 35, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2317, file: !2, line: 723, column: 48)
!2325 = !DILocation(line: 724, column: 3, scope: !2324)
!2326 = !DILocation(line: 725, column: 2, scope: !2324)
!2327 = !DILocation(line: 726, column: 50, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2317, file: !2, line: 725, column: 9)
!2329 = !DILocation(line: 726, column: 54, scope: !2328)
!2330 = !DILocation(line: 726, column: 97, scope: !2328)
!2331 = !DILocation(line: 726, column: 101, scope: !2328)
!2332 = !DILocation(line: 726, column: 103, scope: !2328)
!2333 = !DILocation(line: 726, column: 94, scope: !2328)
!2334 = !DILocation(line: 726, column: 42, scope: !2328)
!2335 = !DILocation(line: 726, column: 3, scope: !2328)
!2336 = !DILocation(line: 726, column: 7, scope: !2328)
!2337 = !DILocation(line: 726, column: 12, scope: !2328)
!2338 = !DILocation(line: 727, column: 22, scope: !2328)
!2339 = !DILocation(line: 727, column: 3, scope: !2328)
!2340 = !DILocation(line: 727, column: 7, scope: !2328)
!2341 = !DILocation(line: 727, column: 12, scope: !2328)
!2342 = !DILocation(line: 727, column: 16, scope: !2328)
!2343 = !DILocation(line: 727, column: 20, scope: !2328)
!2344 = !DILocation(line: 728, column: 3, scope: !2328)
!2345 = !DILocation(line: 728, column: 7, scope: !2328)
!2346 = !DILocation(line: 728, column: 10, scope: !2328)
!2347 = !DILocation(line: 730, column: 1, scope: !2309)
!2348 = distinct !DISubprogram(name: "top_unsent_buffer", scope: !2, file: !2, line: 732, type: !2349, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!242, !2102}
!2351 = !DILocalVariable(name: "ub", arg: 1, scope: !2348, file: !2, line: 732, type: !2102)
!2352 = !DILocation(line: 732, column: 60, scope: !2348)
!2353 = !DILocalVariable(name: "ret", scope: !2348, file: !2, line: 734, type: !242)
!2354 = !DILocation(line: 734, column: 28, scope: !2348)
!2355 = !DILocation(line: 735, column: 5, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2348, file: !2, line: 735, column: 5)
!2357 = !DILocation(line: 735, column: 8, scope: !2356)
!2358 = !DILocation(line: 735, column: 11, scope: !2356)
!2359 = !DILocation(line: 735, column: 15, scope: !2356)
!2360 = !DILocation(line: 735, column: 20, scope: !2356)
!2361 = !DILocation(line: 735, column: 23, scope: !2356)
!2362 = !DILocation(line: 735, column: 27, scope: !2356)
!2363 = !DILocation(line: 735, column: 5, scope: !2348)
!2364 = !DILocalVariable(name: "sz", scope: !2365, file: !2, line: 736, type: !110)
!2365 = distinct !DILexicalBlock(scope: !2356, file: !2, line: 735, column: 31)
!2366 = !DILocation(line: 736, column: 10, scope: !2365)
!2367 = !DILocation(line: 737, column: 9, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 737, column: 3)
!2369 = !DILocation(line: 737, column: 7, scope: !2368)
!2370 = !DILocation(line: 737, column: 13, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 737, column: 3)
!2372 = !DILocation(line: 737, column: 16, scope: !2371)
!2373 = !DILocation(line: 737, column: 20, scope: !2371)
!2374 = !DILocation(line: 737, column: 15, scope: !2371)
!2375 = !DILocation(line: 737, column: 3, scope: !2368)
!2376 = !DILocation(line: 738, column: 7, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !2, line: 738, column: 7)
!2378 = distinct !DILexicalBlock(scope: !2371, file: !2, line: 737, column: 30)
!2379 = !DILocation(line: 738, column: 11, scope: !2377)
!2380 = !DILocation(line: 738, column: 16, scope: !2377)
!2381 = !DILocation(line: 738, column: 7, scope: !2378)
!2382 = !DILocation(line: 739, column: 11, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !2, line: 738, column: 21)
!2384 = !DILocation(line: 739, column: 15, scope: !2383)
!2385 = !DILocation(line: 739, column: 20, scope: !2383)
!2386 = !DILocation(line: 739, column: 9, scope: !2383)
!2387 = !DILocation(line: 740, column: 5, scope: !2383)
!2388 = !DILocation(line: 742, column: 3, scope: !2378)
!2389 = !DILocation(line: 737, column: 24, scope: !2371)
!2390 = !DILocation(line: 737, column: 3, scope: !2371)
!2391 = distinct !{!2391, !2375, !2392, !409}
!2392 = !DILocation(line: 742, column: 3, scope: !2368)
!2393 = !DILocation(line: 743, column: 2, scope: !2365)
!2394 = !DILocation(line: 744, column: 9, scope: !2348)
!2395 = !DILocation(line: 744, column: 2, scope: !2348)
!2396 = distinct !DISubprogram(name: "pop_unsent_buffer", scope: !2, file: !2, line: 747, type: !2100, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !311)
!2397 = !DILocalVariable(name: "ub", arg: 1, scope: !2396, file: !2, line: 747, type: !2102)
!2398 = !DILocation(line: 747, column: 39, scope: !2396)
!2399 = !DILocation(line: 749, column: 5, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 749, column: 5)
!2401 = !DILocation(line: 749, column: 8, scope: !2400)
!2402 = !DILocation(line: 749, column: 11, scope: !2400)
!2403 = !DILocation(line: 749, column: 15, scope: !2400)
!2404 = !DILocation(line: 749, column: 20, scope: !2400)
!2405 = !DILocation(line: 749, column: 23, scope: !2400)
!2406 = !DILocation(line: 749, column: 27, scope: !2400)
!2407 = !DILocation(line: 749, column: 5, scope: !2396)
!2408 = !DILocalVariable(name: "sz", scope: !2409, file: !2, line: 750, type: !110)
!2409 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 749, column: 31)
!2410 = !DILocation(line: 750, column: 10, scope: !2409)
!2411 = !DILocation(line: 751, column: 9, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 751, column: 3)
!2413 = !DILocation(line: 751, column: 7, scope: !2412)
!2414 = !DILocation(line: 751, column: 13, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !2, line: 751, column: 3)
!2416 = !DILocation(line: 751, column: 16, scope: !2415)
!2417 = !DILocation(line: 751, column: 20, scope: !2415)
!2418 = !DILocation(line: 751, column: 15, scope: !2415)
!2419 = !DILocation(line: 751, column: 3, scope: !2412)
!2420 = !DILocation(line: 752, column: 7, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !2, line: 752, column: 7)
!2422 = distinct !DILexicalBlock(scope: !2415, file: !2, line: 751, column: 30)
!2423 = !DILocation(line: 752, column: 11, scope: !2421)
!2424 = !DILocation(line: 752, column: 16, scope: !2421)
!2425 = !DILocation(line: 752, column: 7, scope: !2422)
!2426 = !DILocation(line: 753, column: 5, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 752, column: 21)
!2428 = !DILocation(line: 753, column: 9, scope: !2427)
!2429 = !DILocation(line: 753, column: 14, scope: !2427)
!2430 = !DILocation(line: 753, column: 18, scope: !2427)
!2431 = !DILocation(line: 754, column: 5, scope: !2427)
!2432 = !DILocation(line: 756, column: 3, scope: !2422)
!2433 = !DILocation(line: 751, column: 24, scope: !2415)
!2434 = !DILocation(line: 751, column: 3, scope: !2415)
!2435 = distinct !{!2435, !2419, !2436, !409}
!2436 = !DILocation(line: 756, column: 3, scope: !2412)
!2437 = !DILocation(line: 757, column: 2, scope: !2409)
!2438 = !DILocation(line: 758, column: 1, scope: !2396)
