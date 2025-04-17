; ModuleID = '/home/raj/coturn/src/apps/relay/prom_server.c'
source_filename = "/home/raj/coturn/src/apps/relay/prom_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._turn_params_ = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [1025 x i8], [33 x i8], [1025 x i8], [1025 x i8], [1025 x i8], [513 x i8], [1025 x i8], i32, i32, i32, i32, i32, ptr, %union.pthread_mutex_t, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, %struct.listener_server, %struct._ip_range_list, %struct._ip_range_list, i32, [4 x ptr], i16, i16, i32, i32, i32, [1025 x i8], i64, ptr, i32, ptr, i8, i8, [1025 x i8], [1025 x i8], i32, %struct._turn_server_addrs_list, i32, %struct._turn_server_addrs_list, %struct._turn_server_addrs_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, %struct._default_users_db_t, i64, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.listener_server = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr }
%struct._ip_range_list = type { ptr, i64 }
%struct._turn_server_addrs_list = type { ptr, i64, %struct._turn_mutex }
%struct._turn_mutex = type { i32, ptr }
%struct._default_users_db_t = type { i32, %struct._persistent_users_db_t, %struct._ram_users_db_t }
%struct._persistent_users_db_t = type { [1025 x i8] }
%struct._ram_users_db_t = type { i64, ptr, %struct._secrets_list }
%struct._secrets_list = type { ptr, i64 }

@turn_params = external global %struct._turn_params_, align 8
@.str = private unnamed_addr constant [6 x i8] c"realm\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !7
@__const.start_prometheus_server.label = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr @.str.1], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"turn_traffic_rcvp\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [46 x i8] c"Represents finished sessions received packets\00", align 1, !dbg !17
@turn_traffic_rcvp = dso_local global ptr null, align 8, !dbg !22
@.str.4 = private unnamed_addr constant [18 x i8] c"turn_traffic_rcvb\00", align 1, !dbg !68
@.str.5 = private unnamed_addr constant [44 x i8] c"Represents finished sessions received bytes\00", align 1, !dbg !70
@turn_traffic_rcvb = dso_local global ptr null, align 8, !dbg !185
@.str.6 = private unnamed_addr constant [19 x i8] c"turn_traffic_sentp\00", align 1, !dbg !75
@.str.7 = private unnamed_addr constant [42 x i8] c"Represents finished sessions sent packets\00", align 1, !dbg !80
@turn_traffic_sentp = dso_local global ptr null, align 8, !dbg !193
@.str.8 = private unnamed_addr constant [19 x i8] c"turn_traffic_sentb\00", align 1, !dbg !85
@.str.9 = private unnamed_addr constant [40 x i8] c"Represents finished sessions sent bytes\00", align 1, !dbg !87
@turn_traffic_sentb = dso_local global ptr null, align 8, !dbg !195
@.str.10 = private unnamed_addr constant [23 x i8] c"turn_traffic_peer_rcvp\00", align 1, !dbg !92
@.str.11 = private unnamed_addr constant [51 x i8] c"Represents finished sessions peer received packets\00", align 1, !dbg !97
@turn_traffic_peer_rcvp = dso_local global ptr null, align 8, !dbg !197
@.str.12 = private unnamed_addr constant [23 x i8] c"turn_traffic_peer_rcvb\00", align 1, !dbg !102
@.str.13 = private unnamed_addr constant [49 x i8] c"Represents finished sessions peer received bytes\00", align 1, !dbg !104
@turn_traffic_peer_rcvb = dso_local global ptr null, align 8, !dbg !199
@.str.14 = private unnamed_addr constant [24 x i8] c"turn_traffic_peer_sentp\00", align 1, !dbg !109
@.str.15 = private unnamed_addr constant [47 x i8] c"Represents finished sessions peer sent packets\00", align 1, !dbg !114
@turn_traffic_peer_sentp = dso_local global ptr null, align 8, !dbg !201
@.str.16 = private unnamed_addr constant [24 x i8] c"turn_traffic_peer_sentb\00", align 1, !dbg !119
@.str.17 = private unnamed_addr constant [45 x i8] c"Represents finished sessions peer sent bytes\00", align 1, !dbg !121
@turn_traffic_peer_sentb = dso_local global ptr null, align 8, !dbg !203
@.str.18 = private unnamed_addr constant [24 x i8] c"turn_total_traffic_rcvp\00", align 1, !dbg !126
@.str.19 = private unnamed_addr constant [52 x i8] c"Represents total finished sessions received packets\00", align 1, !dbg !128
@turn_total_traffic_rcvp = dso_local global ptr null, align 8, !dbg !205
@.str.20 = private unnamed_addr constant [24 x i8] c"turn_total_traffic_rcvb\00", align 1, !dbg !133
@.str.21 = private unnamed_addr constant [50 x i8] c"Represents total finished sessions received bytes\00", align 1, !dbg !135
@turn_total_traffic_rcvb = dso_local global ptr null, align 8, !dbg !207
@.str.22 = private unnamed_addr constant [25 x i8] c"turn_total_traffic_sentp\00", align 1, !dbg !140
@.str.23 = private unnamed_addr constant [48 x i8] c"Represents total finished sessions sent packets\00", align 1, !dbg !145
@turn_total_traffic_sentp = dso_local global ptr null, align 8, !dbg !209
@.str.24 = private unnamed_addr constant [25 x i8] c"turn_total_traffic_sentb\00", align 1, !dbg !150
@.str.25 = private unnamed_addr constant [46 x i8] c"Represents total finished sessions sent bytes\00", align 1, !dbg !152
@turn_total_traffic_sentb = dso_local global ptr null, align 8, !dbg !211
@.str.26 = private unnamed_addr constant [29 x i8] c"turn_total_traffic_peer_rcvp\00", align 1, !dbg !154
@.str.27 = private unnamed_addr constant [57 x i8] c"Represents total finished sessions peer received packets\00", align 1, !dbg !159
@turn_total_traffic_peer_rcvp = dso_local global ptr null, align 8, !dbg !213
@.str.28 = private unnamed_addr constant [29 x i8] c"turn_total_traffic_peer_rcvb\00", align 1, !dbg !164
@.str.29 = private unnamed_addr constant [55 x i8] c"Represents total finished sessions peer received bytes\00", align 1, !dbg !166
@turn_total_traffic_peer_rcvb = dso_local global ptr null, align 8, !dbg !215
@.str.30 = private unnamed_addr constant [30 x i8] c"turn_total_traffic_peer_sentp\00", align 1, !dbg !171
@.str.31 = private unnamed_addr constant [53 x i8] c"Represents total finished sessions peer sent packets\00", align 1, !dbg !176
@turn_total_traffic_peer_sentp = dso_local global ptr null, align 8, !dbg !217
@.str.32 = private unnamed_addr constant [30 x i8] c"turn_total_traffic_peer_sentb\00", align 1, !dbg !181
@.str.33 = private unnamed_addr constant [51 x i8] c"Represents total finished sessions peer sent bytes\00", align 1, !dbg !183
@turn_total_traffic_peer_sentb = dso_local global ptr null, align 8, !dbg !219

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_prometheus_server() #0 !dbg !229 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x ptr], align 16
  %3 = alloca ptr, align 8
  %4 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 85), align 8, !dbg !234
  %5 = icmp eq i32 %4, 0, !dbg !236
  br i1 %5, label %6, label %7, !dbg !237

6:                                                ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !238
  br label %54, !dbg !238

7:                                                ; preds = %0
  %8 = call i32 @prom_collector_registry_default_init(), !dbg !240
  call void @llvm.dbg.declare(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !247
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.start_prometheus_server.label, i64 16, i1 false), !dbg !247
  %9 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !248
  %10 = call ptr @prom_counter_new(ptr noundef @.str.2, ptr noundef @.str.3, i64 noundef 2, ptr noundef %9), !dbg !249
  %11 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %10), !dbg !250
  store ptr %11, ptr @turn_traffic_rcvp, align 8, !dbg !251
  %12 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !252
  %13 = call ptr @prom_counter_new(ptr noundef @.str.4, ptr noundef @.str.5, i64 noundef 2, ptr noundef %12), !dbg !253
  %14 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %13), !dbg !254
  store ptr %14, ptr @turn_traffic_rcvb, align 8, !dbg !255
  %15 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !256
  %16 = call ptr @prom_counter_new(ptr noundef @.str.6, ptr noundef @.str.7, i64 noundef 2, ptr noundef %15), !dbg !257
  %17 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %16), !dbg !258
  store ptr %17, ptr @turn_traffic_sentp, align 8, !dbg !259
  %18 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !260
  %19 = call ptr @prom_counter_new(ptr noundef @.str.8, ptr noundef @.str.9, i64 noundef 2, ptr noundef %18), !dbg !261
  %20 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %19), !dbg !262
  store ptr %20, ptr @turn_traffic_sentb, align 8, !dbg !263
  %21 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !264
  %22 = call ptr @prom_counter_new(ptr noundef @.str.10, ptr noundef @.str.11, i64 noundef 2, ptr noundef %21), !dbg !265
  %23 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %22), !dbg !266
  store ptr %23, ptr @turn_traffic_peer_rcvp, align 8, !dbg !267
  %24 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !268
  %25 = call ptr @prom_counter_new(ptr noundef @.str.12, ptr noundef @.str.13, i64 noundef 2, ptr noundef %24), !dbg !269
  %26 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %25), !dbg !270
  store ptr %26, ptr @turn_traffic_peer_rcvb, align 8, !dbg !271
  %27 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !272
  %28 = call ptr @prom_counter_new(ptr noundef @.str.14, ptr noundef @.str.15, i64 noundef 2, ptr noundef %27), !dbg !273
  %29 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %28), !dbg !274
  store ptr %29, ptr @turn_traffic_peer_sentp, align 8, !dbg !275
  %30 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !276
  %31 = call ptr @prom_counter_new(ptr noundef @.str.16, ptr noundef @.str.17, i64 noundef 2, ptr noundef %30), !dbg !277
  %32 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %31), !dbg !278
  store ptr %32, ptr @turn_traffic_peer_sentb, align 8, !dbg !279
  %33 = call ptr @prom_counter_new(ptr noundef @.str.18, ptr noundef @.str.19, i64 noundef 0, ptr noundef null), !dbg !280
  %34 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %33), !dbg !281
  store ptr %34, ptr @turn_total_traffic_rcvp, align 8, !dbg !282
  %35 = call ptr @prom_counter_new(ptr noundef @.str.20, ptr noundef @.str.21, i64 noundef 0, ptr noundef null), !dbg !283
  %36 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %35), !dbg !284
  store ptr %36, ptr @turn_total_traffic_rcvb, align 8, !dbg !285
  %37 = call ptr @prom_counter_new(ptr noundef @.str.22, ptr noundef @.str.23, i64 noundef 0, ptr noundef null), !dbg !286
  %38 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %37), !dbg !287
  store ptr %38, ptr @turn_total_traffic_sentp, align 8, !dbg !288
  %39 = call ptr @prom_counter_new(ptr noundef @.str.24, ptr noundef @.str.25, i64 noundef 0, ptr noundef null), !dbg !289
  %40 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %39), !dbg !290
  store ptr %40, ptr @turn_total_traffic_sentb, align 8, !dbg !291
  %41 = call ptr @prom_counter_new(ptr noundef @.str.26, ptr noundef @.str.27, i64 noundef 0, ptr noundef null), !dbg !292
  %42 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %41), !dbg !293
  store ptr %42, ptr @turn_total_traffic_peer_rcvp, align 8, !dbg !294
  %43 = call ptr @prom_counter_new(ptr noundef @.str.28, ptr noundef @.str.29, i64 noundef 0, ptr noundef null), !dbg !295
  %44 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %43), !dbg !296
  store ptr %44, ptr @turn_total_traffic_peer_rcvb, align 8, !dbg !297
  %45 = call ptr @prom_counter_new(ptr noundef @.str.30, ptr noundef @.str.31, i64 noundef 0, ptr noundef null), !dbg !298
  %46 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %45), !dbg !299
  store ptr %46, ptr @turn_total_traffic_peer_sentp, align 8, !dbg !300
  %47 = call ptr @prom_counter_new(ptr noundef @.str.32, ptr noundef @.str.33, i64 noundef 0, ptr noundef null), !dbg !301
  %48 = call ptr @prom_collector_registry_must_register_metric(ptr noundef %47), !dbg !302
  store ptr %48, ptr @turn_total_traffic_peer_sentb, align 8, !dbg !303
  call void @promhttp_set_active_collector_registry(ptr noundef null), !dbg !304
  call void @llvm.dbg.declare(metadata ptr %3, metadata !305, metadata !DIExpression()), !dbg !308
  %49 = call ptr @promhttp_start_daemon(i32 noundef 8, i16 noundef zeroext 9641, ptr noundef null, ptr noundef null), !dbg !309
  store ptr %49, ptr %3, align 8, !dbg !308
  %50 = load ptr, ptr %3, align 8, !dbg !310
  %51 = icmp eq ptr %50, null, !dbg !312
  br i1 %51, label %52, label %53, !dbg !313

52:                                               ; preds = %7
  store i32 1, ptr %1, align 4, !dbg !314
  br label %54, !dbg !314

53:                                               ; preds = %7
  store i32 0, ptr %1, align 4, !dbg !316
  br label %54, !dbg !316

54:                                               ; preds = %53, %52, %6
  %55 = load i32, ptr %1, align 4, !dbg !317
  ret i32 %55, !dbg !317
}

declare i32 @prom_collector_registry_default_init() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @prom_collector_registry_must_register_metric(ptr noundef) #1

declare ptr @prom_counter_new(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare void @promhttp_set_active_collector_registry(ptr noundef) #1

declare ptr @promhttp_start_daemon(i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_set_finished_traffic(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) #0 !dbg !318 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca [2 x ptr], align 16
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !323, metadata !DIExpression()), !dbg !324
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !325, metadata !DIExpression()), !dbg !326
  store i64 %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !327, metadata !DIExpression()), !dbg !328
  store i64 %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !329, metadata !DIExpression()), !dbg !330
  store i64 %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !331, metadata !DIExpression()), !dbg !332
  store i64 %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !333, metadata !DIExpression()), !dbg !334
  %16 = zext i1 %6 to i8
  store i8 %16, ptr %14, align 1
  call void @llvm.dbg.declare(metadata ptr %14, metadata !335, metadata !DIExpression()), !dbg !336
  %17 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 85), align 8, !dbg !337
  %18 = icmp eq i32 %17, 1, !dbg !339
  br i1 %18, label %19, label %101, !dbg !340

19:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %15, metadata !341, metadata !DIExpression()), !dbg !343
  %20 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !344
  %21 = load ptr, ptr %8, align 8, !dbg !345
  store ptr %21, ptr %20, align 8, !dbg !344
  %22 = getelementptr inbounds ptr, ptr %20, i64 1, !dbg !344
  %23 = load ptr, ptr %9, align 8, !dbg !346
  store ptr %23, ptr %22, align 8, !dbg !344
  %24 = load i8, ptr %14, align 1, !dbg !347
  %25 = trunc i8 %24 to i1, !dbg !347
  br i1 %25, label %26, label %63, !dbg !349

26:                                               ; preds = %19
  %27 = load ptr, ptr @turn_traffic_peer_rcvp, align 8, !dbg !350
  %28 = load i64, ptr %10, align 8, !dbg !352
  %29 = uitofp i64 %28 to double, !dbg !352
  %30 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !353
  %31 = call i32 @prom_counter_add(ptr noundef %27, double noundef %29, ptr noundef %30), !dbg !354
  %32 = load ptr, ptr @turn_traffic_peer_rcvb, align 8, !dbg !355
  %33 = load i64, ptr %11, align 8, !dbg !356
  %34 = uitofp i64 %33 to double, !dbg !356
  %35 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !357
  %36 = call i32 @prom_counter_add(ptr noundef %32, double noundef %34, ptr noundef %35), !dbg !358
  %37 = load ptr, ptr @turn_traffic_peer_sentp, align 8, !dbg !359
  %38 = load i64, ptr %12, align 8, !dbg !360
  %39 = uitofp i64 %38 to double, !dbg !360
  %40 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !361
  %41 = call i32 @prom_counter_add(ptr noundef %37, double noundef %39, ptr noundef %40), !dbg !362
  %42 = load ptr, ptr @turn_traffic_peer_sentb, align 8, !dbg !363
  %43 = load i64, ptr %13, align 8, !dbg !364
  %44 = uitofp i64 %43 to double, !dbg !364
  %45 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !365
  %46 = call i32 @prom_counter_add(ptr noundef %42, double noundef %44, ptr noundef %45), !dbg !366
  %47 = load ptr, ptr @turn_total_traffic_peer_rcvp, align 8, !dbg !367
  %48 = load i64, ptr %10, align 8, !dbg !368
  %49 = uitofp i64 %48 to double, !dbg !368
  %50 = call i32 @prom_counter_add(ptr noundef %47, double noundef %49, ptr noundef null), !dbg !369
  %51 = load ptr, ptr @turn_total_traffic_peer_rcvb, align 8, !dbg !370
  %52 = load i64, ptr %11, align 8, !dbg !371
  %53 = uitofp i64 %52 to double, !dbg !371
  %54 = call i32 @prom_counter_add(ptr noundef %51, double noundef %53, ptr noundef null), !dbg !372
  %55 = load ptr, ptr @turn_total_traffic_peer_sentp, align 8, !dbg !373
  %56 = load i64, ptr %12, align 8, !dbg !374
  %57 = uitofp i64 %56 to double, !dbg !374
  %58 = call i32 @prom_counter_add(ptr noundef %55, double noundef %57, ptr noundef null), !dbg !375
  %59 = load ptr, ptr @turn_total_traffic_peer_sentb, align 8, !dbg !376
  %60 = load i64, ptr %13, align 8, !dbg !377
  %61 = uitofp i64 %60 to double, !dbg !377
  %62 = call i32 @prom_counter_add(ptr noundef %59, double noundef %61, ptr noundef null), !dbg !378
  br label %100, !dbg !379

63:                                               ; preds = %19
  %64 = load ptr, ptr @turn_traffic_rcvp, align 8, !dbg !380
  %65 = load i64, ptr %10, align 8, !dbg !382
  %66 = uitofp i64 %65 to double, !dbg !382
  %67 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !383
  %68 = call i32 @prom_counter_add(ptr noundef %64, double noundef %66, ptr noundef %67), !dbg !384
  %69 = load ptr, ptr @turn_traffic_rcvb, align 8, !dbg !385
  %70 = load i64, ptr %11, align 8, !dbg !386
  %71 = uitofp i64 %70 to double, !dbg !386
  %72 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !387
  %73 = call i32 @prom_counter_add(ptr noundef %69, double noundef %71, ptr noundef %72), !dbg !388
  %74 = load ptr, ptr @turn_traffic_sentp, align 8, !dbg !389
  %75 = load i64, ptr %12, align 8, !dbg !390
  %76 = uitofp i64 %75 to double, !dbg !390
  %77 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !391
  %78 = call i32 @prom_counter_add(ptr noundef %74, double noundef %76, ptr noundef %77), !dbg !392
  %79 = load ptr, ptr @turn_traffic_sentb, align 8, !dbg !393
  %80 = load i64, ptr %13, align 8, !dbg !394
  %81 = uitofp i64 %80 to double, !dbg !394
  %82 = getelementptr inbounds [2 x ptr], ptr %15, i64 0, i64 0, !dbg !395
  %83 = call i32 @prom_counter_add(ptr noundef %79, double noundef %81, ptr noundef %82), !dbg !396
  %84 = load ptr, ptr @turn_total_traffic_rcvp, align 8, !dbg !397
  %85 = load i64, ptr %10, align 8, !dbg !398
  %86 = uitofp i64 %85 to double, !dbg !398
  %87 = call i32 @prom_counter_add(ptr noundef %84, double noundef %86, ptr noundef null), !dbg !399
  %88 = load ptr, ptr @turn_total_traffic_rcvb, align 8, !dbg !400
  %89 = load i64, ptr %11, align 8, !dbg !401
  %90 = uitofp i64 %89 to double, !dbg !401
  %91 = call i32 @prom_counter_add(ptr noundef %88, double noundef %90, ptr noundef null), !dbg !402
  %92 = load ptr, ptr @turn_total_traffic_sentp, align 8, !dbg !403
  %93 = load i64, ptr %12, align 8, !dbg !404
  %94 = uitofp i64 %93 to double, !dbg !404
  %95 = call i32 @prom_counter_add(ptr noundef %92, double noundef %94, ptr noundef null), !dbg !405
  %96 = load ptr, ptr @turn_total_traffic_sentb, align 8, !dbg !406
  %97 = load i64, ptr %13, align 8, !dbg !407
  %98 = uitofp i64 %97 to double, !dbg !407
  %99 = call i32 @prom_counter_add(ptr noundef %96, double noundef %98, ptr noundef null), !dbg !408
  br label %100

100:                                              ; preds = %63, %26
  br label %101, !dbg !409

101:                                              ; preds = %100, %7
  ret void, !dbg !410
}

declare i32 @prom_counter_add(ptr noundef, double noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/relay/prom_server.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "d62d255d421c08035b42f405ddda743e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 18)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 46)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "turn_traffic_rcvp", scope: !24, file: !2, line: 7, type: !187, isLocal: false, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !25, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !65, globals: !67, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/prom_server.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "d62d255d421c08035b42f405ddda743e")
!26 = !{!27}
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MHD_FLAG", file: !28, line: 1223, baseType: !29, size: 32, elements: !30)
!28 = !DIFile(filename: "/usr/include/microhttpd.h", directory: "", checksumkind: CSK_MD5, checksum: "d847d9130570de8278466ccba6f8d49e")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!31 = !DIEnumerator(name: "MHD_NO_FLAG", value: 0)
!32 = !DIEnumerator(name: "MHD_USE_ERROR_LOG", value: 1)
!33 = !DIEnumerator(name: "MHD_USE_DEBUG", value: 1)
!34 = !DIEnumerator(name: "MHD_USE_TLS", value: 2)
!35 = !DIEnumerator(name: "MHD_USE_SSL", value: 2)
!36 = !DIEnumerator(name: "MHD_USE_THREAD_PER_CONNECTION", value: 4)
!37 = !DIEnumerator(name: "MHD_USE_INTERNAL_POLLING_THREAD", value: 8)
!38 = !DIEnumerator(name: "MHD_USE_SELECT_INTERNALLY", value: 8)
!39 = !DIEnumerator(name: "MHD_USE_IPv6", value: 16)
!40 = !DIEnumerator(name: "MHD_USE_PEDANTIC_CHECKS", value: 32)
!41 = !DIEnumerator(name: "MHD_USE_POLL", value: 64)
!42 = !DIEnumerator(name: "MHD_USE_POLL_INTERNAL_THREAD", value: 72)
!43 = !DIEnumerator(name: "MHD_USE_POLL_INTERNALLY", value: 72)
!44 = !DIEnumerator(name: "MHD_USE_SUPPRESS_DATE_NO_CLOCK", value: 128)
!45 = !DIEnumerator(name: "MHD_SUPPRESS_DATE_NO_CLOCK", value: 128)
!46 = !DIEnumerator(name: "MHD_USE_NO_LISTEN_SOCKET", value: 256)
!47 = !DIEnumerator(name: "MHD_USE_EPOLL", value: 512)
!48 = !DIEnumerator(name: "MHD_USE_EPOLL_LINUX_ONLY", value: 512)
!49 = !DIEnumerator(name: "MHD_USE_EPOLL_INTERNAL_THREAD", value: 520)
!50 = !DIEnumerator(name: "MHD_USE_EPOLL_INTERNALLY", value: 520)
!51 = !DIEnumerator(name: "MHD_USE_EPOLL_INTERNALLY_LINUX_ONLY", value: 520)
!52 = !DIEnumerator(name: "MHD_USE_ITC", value: 1024)
!53 = !DIEnumerator(name: "MHD_USE_PIPE_FOR_SHUTDOWN", value: 1024)
!54 = !DIEnumerator(name: "MHD_USE_DUAL_STACK", value: 2064)
!55 = !DIEnumerator(name: "MHD_USE_TURBO", value: 4096)
!56 = !DIEnumerator(name: "MHD_USE_EPOLL_TURBO", value: 4096)
!57 = !DIEnumerator(name: "MHD_ALLOW_SUSPEND_RESUME", value: 9216)
!58 = !DIEnumerator(name: "MHD_USE_SUSPEND_RESUME", value: 9216)
!59 = !DIEnumerator(name: "MHD_USE_TCP_FASTOPEN", value: 16384)
!60 = !DIEnumerator(name: "MHD_ALLOW_UPGRADE", value: 32768)
!61 = !DIEnumerator(name: "MHD_USE_AUTO", value: 65536)
!62 = !DIEnumerator(name: "MHD_USE_AUTO_INTERNAL_THREAD", value: 65544)
!63 = !DIEnumerator(name: "MHD_USE_POST_HANDSHAKE_AUTH_SUPPORT", value: 131072)
!64 = !DIEnumerator(name: "MHD_USE_INSECURE_TLS_EARLY_DATA", value: 262144)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !{!0, !7, !12, !17, !68, !70, !75, !80, !85, !87, !92, !97, !102, !104, !109, !114, !119, !121, !126, !128, !133, !135, !140, !145, !150, !152, !154, !159, !164, !166, !171, !176, !181, !183, !22, !185, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !14, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 44)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 19)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 42)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !77, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 40)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 23)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 51)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !94, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 49)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 24)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 47)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !111, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 45)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !111, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 52)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !111, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 50)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 25)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 48)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !142, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !19, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 29)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 57)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !156, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 55)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 30)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 53)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !173, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !99, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "turn_traffic_rcvb", scope: !24, file: !2, line: 8, type: !187, isLocal: false, isDefinition: true)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "prom_counter_t", file: !189, line: 35, baseType: !190)
!189 = !DIFile(filename: "/usr/local/include/prom_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "f0eb31e8e13c240f86581a2d7777d7d8")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "prom_metric_t", file: !191, line: 34, baseType: !192)
!191 = !DIFile(filename: "/usr/local/include/prom_metric.h", directory: "", checksumkind: CSK_MD5, checksum: "be1bbf83efcaad8238d129c1909442e8")
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "prom_metric", file: !191, line: 28, flags: DIFlagFwdDecl)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "turn_traffic_sentp", scope: !24, file: !2, line: 9, type: !187, isLocal: false, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "turn_traffic_sentb", scope: !24, file: !2, line: 10, type: !187, isLocal: false, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "turn_traffic_peer_rcvp", scope: !24, file: !2, line: 12, type: !187, isLocal: false, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "turn_traffic_peer_rcvb", scope: !24, file: !2, line: 13, type: !187, isLocal: false, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "turn_traffic_peer_sentp", scope: !24, file: !2, line: 14, type: !187, isLocal: false, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "turn_traffic_peer_sentb", scope: !24, file: !2, line: 15, type: !187, isLocal: false, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "turn_total_traffic_rcvp", scope: !24, file: !2, line: 17, type: !187, isLocal: false, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "turn_total_traffic_rcvb", scope: !24, file: !2, line: 18, type: !187, isLocal: false, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "turn_total_traffic_sentp", scope: !24, file: !2, line: 19, type: !187, isLocal: false, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "turn_total_traffic_sentb", scope: !24, file: !2, line: 20, type: !187, isLocal: false, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "turn_total_traffic_peer_rcvp", scope: !24, file: !2, line: 22, type: !187, isLocal: false, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "turn_total_traffic_peer_rcvb", scope: !24, file: !2, line: 23, type: !187, isLocal: false, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "turn_total_traffic_peer_sentp", scope: !24, file: !2, line: 24, type: !187, isLocal: false, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "turn_total_traffic_peer_sentb", scope: !24, file: !2, line: 25, type: !187, isLocal: false, isDefinition: true)
!221 = !{i32 7, !"Dwarf Version", i32 5}
!222 = !{i32 2, !"Debug Info Version", i32 3}
!223 = !{i32 1, !"wchar_size", i32 4}
!224 = !{i32 8, !"PIC Level", i32 2}
!225 = !{i32 7, !"PIE Level", i32 2}
!226 = !{i32 7, !"uwtable", i32 2}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 16.0.0"}
!229 = distinct !DISubprogram(name: "start_prometheus_server", scope: !2, file: !2, line: 28, type: !230, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !233)
!230 = !DISubroutineType(types: !231)
!231 = !{!232}
!232 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!233 = !{}
!234 = !DILocation(line: 29, column: 19, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !2, line: 29, column: 7)
!236 = !DILocation(line: 29, column: 30, scope: !235)
!237 = !DILocation(line: 29, column: 7, scope: !229)
!238 = !DILocation(line: 30, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !2, line: 29, column: 35)
!240 = !DILocation(line: 32, column: 3, scope: !229)
!241 = !DILocalVariable(name: "label", scope: !229, file: !2, line: 34, type: !242)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 128, elements: !245)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!245 = !{!246}
!246 = !DISubrange(count: 2)
!247 = !DILocation(line: 34, column: 15, scope: !229)
!248 = !DILocation(line: 37, column: 158, scope: !229)
!249 = !DILocation(line: 37, column: 68, scope: !229)
!250 = !DILocation(line: 37, column: 23, scope: !229)
!251 = !DILocation(line: 37, column: 21, scope: !229)
!252 = !DILocation(line: 38, column: 156, scope: !229)
!253 = !DILocation(line: 38, column: 68, scope: !229)
!254 = !DILocation(line: 38, column: 23, scope: !229)
!255 = !DILocation(line: 38, column: 21, scope: !229)
!256 = !DILocation(line: 39, column: 156, scope: !229)
!257 = !DILocation(line: 39, column: 69, scope: !229)
!258 = !DILocation(line: 39, column: 24, scope: !229)
!259 = !DILocation(line: 39, column: 22, scope: !229)
!260 = !DILocation(line: 40, column: 154, scope: !229)
!261 = !DILocation(line: 40, column: 69, scope: !229)
!262 = !DILocation(line: 40, column: 24, scope: !229)
!263 = !DILocation(line: 40, column: 22, scope: !229)
!264 = !DILocation(line: 43, column: 173, scope: !229)
!265 = !DILocation(line: 43, column: 73, scope: !229)
!266 = !DILocation(line: 43, column: 28, scope: !229)
!267 = !DILocation(line: 43, column: 26, scope: !229)
!268 = !DILocation(line: 44, column: 171, scope: !229)
!269 = !DILocation(line: 44, column: 73, scope: !229)
!270 = !DILocation(line: 44, column: 28, scope: !229)
!271 = !DILocation(line: 44, column: 26, scope: !229)
!272 = !DILocation(line: 45, column: 171, scope: !229)
!273 = !DILocation(line: 45, column: 74, scope: !229)
!274 = !DILocation(line: 45, column: 29, scope: !229)
!275 = !DILocation(line: 45, column: 27, scope: !229)
!276 = !DILocation(line: 46, column: 169, scope: !229)
!277 = !DILocation(line: 46, column: 74, scope: !229)
!278 = !DILocation(line: 46, column: 29, scope: !229)
!279 = !DILocation(line: 46, column: 27, scope: !229)
!280 = !DILocation(line: 49, column: 74, scope: !229)
!281 = !DILocation(line: 49, column: 29, scope: !229)
!282 = !DILocation(line: 49, column: 27, scope: !229)
!283 = !DILocation(line: 50, column: 74, scope: !229)
!284 = !DILocation(line: 50, column: 29, scope: !229)
!285 = !DILocation(line: 50, column: 27, scope: !229)
!286 = !DILocation(line: 51, column: 75, scope: !229)
!287 = !DILocation(line: 51, column: 30, scope: !229)
!288 = !DILocation(line: 51, column: 28, scope: !229)
!289 = !DILocation(line: 52, column: 75, scope: !229)
!290 = !DILocation(line: 52, column: 30, scope: !229)
!291 = !DILocation(line: 52, column: 28, scope: !229)
!292 = !DILocation(line: 55, column: 79, scope: !229)
!293 = !DILocation(line: 55, column: 34, scope: !229)
!294 = !DILocation(line: 55, column: 32, scope: !229)
!295 = !DILocation(line: 56, column: 79, scope: !229)
!296 = !DILocation(line: 56, column: 34, scope: !229)
!297 = !DILocation(line: 56, column: 32, scope: !229)
!298 = !DILocation(line: 57, column: 80, scope: !229)
!299 = !DILocation(line: 57, column: 35, scope: !229)
!300 = !DILocation(line: 57, column: 33, scope: !229)
!301 = !DILocation(line: 58, column: 80, scope: !229)
!302 = !DILocation(line: 58, column: 35, scope: !229)
!303 = !DILocation(line: 58, column: 33, scope: !229)
!304 = !DILocation(line: 60, column: 3, scope: !229)
!305 = !DILocalVariable(name: "daemon", scope: !229, file: !2, line: 63, type: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "MHD_Daemon", file: !28, line: 1186, flags: DIFlagFwdDecl)
!308 = !DILocation(line: 63, column: 22, scope: !229)
!309 = !DILocation(line: 63, column: 31, scope: !229)
!310 = !DILocation(line: 64, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !229, file: !2, line: 64, column: 7)
!312 = !DILocation(line: 64, column: 14, scope: !311)
!313 = !DILocation(line: 64, column: 7, scope: !229)
!314 = !DILocation(line: 65, column: 5, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !2, line: 64, column: 23)
!316 = !DILocation(line: 67, column: 3, scope: !229)
!317 = !DILocation(line: 68, column: 1, scope: !229)
!318 = distinct !DISubprogram(name: "prom_set_finished_traffic", scope: !2, file: !2, line: 70, type: !319, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !233)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !243, !243, !321, !321, !321, !321, !322}
!321 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!322 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!323 = !DILocalVariable(name: "realm", arg: 1, scope: !318, file: !2, line: 70, type: !243)
!324 = !DILocation(line: 70, column: 44, scope: !318)
!325 = !DILocalVariable(name: "user", arg: 2, scope: !318, file: !2, line: 70, type: !243)
!326 = !DILocation(line: 70, column: 63, scope: !318)
!327 = !DILocalVariable(name: "rsvp", arg: 3, scope: !318, file: !2, line: 70, type: !321)
!328 = !DILocation(line: 70, column: 83, scope: !318)
!329 = !DILocalVariable(name: "rsvb", arg: 4, scope: !318, file: !2, line: 70, type: !321)
!330 = !DILocation(line: 70, column: 103, scope: !318)
!331 = !DILocalVariable(name: "sentp", arg: 5, scope: !318, file: !2, line: 70, type: !321)
!332 = !DILocation(line: 70, column: 123, scope: !318)
!333 = !DILocalVariable(name: "sentb", arg: 6, scope: !318, file: !2, line: 70, type: !321)
!334 = !DILocation(line: 70, column: 144, scope: !318)
!335 = !DILocalVariable(name: "peer", arg: 7, scope: !318, file: !2, line: 70, type: !322)
!336 = !DILocation(line: 70, column: 156, scope: !318)
!337 = !DILocation(line: 71, column: 19, scope: !338)
!338 = distinct !DILexicalBlock(scope: !318, file: !2, line: 71, column: 7)
!339 = !DILocation(line: 71, column: 30, scope: !338)
!340 = !DILocation(line: 71, column: 7, scope: !318)
!341 = !DILocalVariable(name: "label", scope: !342, file: !2, line: 73, type: !242)
!342 = distinct !DILexicalBlock(scope: !338, file: !2, line: 71, column: 35)
!343 = !DILocation(line: 73, column: 17, scope: !342)
!344 = !DILocation(line: 73, column: 27, scope: !342)
!345 = !DILocation(line: 73, column: 28, scope: !342)
!346 = !DILocation(line: 73, column: 35, scope: !342)
!347 = !DILocation(line: 75, column: 9, scope: !348)
!348 = distinct !DILexicalBlock(scope: !342, file: !2, line: 75, column: 9)
!349 = !DILocation(line: 75, column: 9, scope: !342)
!350 = !DILocation(line: 76, column: 24, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !2, line: 75, column: 14)
!352 = !DILocation(line: 76, column: 48, scope: !351)
!353 = !DILocation(line: 76, column: 54, scope: !351)
!354 = !DILocation(line: 76, column: 7, scope: !351)
!355 = !DILocation(line: 77, column: 24, scope: !351)
!356 = !DILocation(line: 77, column: 48, scope: !351)
!357 = !DILocation(line: 77, column: 54, scope: !351)
!358 = !DILocation(line: 77, column: 7, scope: !351)
!359 = !DILocation(line: 78, column: 24, scope: !351)
!360 = !DILocation(line: 78, column: 49, scope: !351)
!361 = !DILocation(line: 78, column: 56, scope: !351)
!362 = !DILocation(line: 78, column: 7, scope: !351)
!363 = !DILocation(line: 79, column: 24, scope: !351)
!364 = !DILocation(line: 79, column: 49, scope: !351)
!365 = !DILocation(line: 79, column: 56, scope: !351)
!366 = !DILocation(line: 79, column: 7, scope: !351)
!367 = !DILocation(line: 81, column: 24, scope: !351)
!368 = !DILocation(line: 81, column: 54, scope: !351)
!369 = !DILocation(line: 81, column: 7, scope: !351)
!370 = !DILocation(line: 82, column: 24, scope: !351)
!371 = !DILocation(line: 82, column: 54, scope: !351)
!372 = !DILocation(line: 82, column: 7, scope: !351)
!373 = !DILocation(line: 83, column: 24, scope: !351)
!374 = !DILocation(line: 83, column: 55, scope: !351)
!375 = !DILocation(line: 83, column: 7, scope: !351)
!376 = !DILocation(line: 84, column: 24, scope: !351)
!377 = !DILocation(line: 84, column: 55, scope: !351)
!378 = !DILocation(line: 84, column: 7, scope: !351)
!379 = !DILocation(line: 85, column: 5, scope: !351)
!380 = !DILocation(line: 86, column: 24, scope: !381)
!381 = distinct !DILexicalBlock(scope: !348, file: !2, line: 85, column: 12)
!382 = !DILocation(line: 86, column: 43, scope: !381)
!383 = !DILocation(line: 86, column: 49, scope: !381)
!384 = !DILocation(line: 86, column: 7, scope: !381)
!385 = !DILocation(line: 87, column: 24, scope: !381)
!386 = !DILocation(line: 87, column: 43, scope: !381)
!387 = !DILocation(line: 87, column: 49, scope: !381)
!388 = !DILocation(line: 87, column: 7, scope: !381)
!389 = !DILocation(line: 88, column: 24, scope: !381)
!390 = !DILocation(line: 88, column: 44, scope: !381)
!391 = !DILocation(line: 88, column: 51, scope: !381)
!392 = !DILocation(line: 88, column: 7, scope: !381)
!393 = !DILocation(line: 89, column: 24, scope: !381)
!394 = !DILocation(line: 89, column: 44, scope: !381)
!395 = !DILocation(line: 89, column: 51, scope: !381)
!396 = !DILocation(line: 89, column: 7, scope: !381)
!397 = !DILocation(line: 91, column: 24, scope: !381)
!398 = !DILocation(line: 91, column: 49, scope: !381)
!399 = !DILocation(line: 91, column: 7, scope: !381)
!400 = !DILocation(line: 92, column: 24, scope: !381)
!401 = !DILocation(line: 92, column: 49, scope: !381)
!402 = !DILocation(line: 92, column: 7, scope: !381)
!403 = !DILocation(line: 93, column: 24, scope: !381)
!404 = !DILocation(line: 93, column: 50, scope: !381)
!405 = !DILocation(line: 93, column: 7, scope: !381)
!406 = !DILocation(line: 94, column: 24, scope: !381)
!407 = !DILocation(line: 94, column: 50, scope: !381)
!408 = !DILocation(line: 94, column: 7, scope: !381)
!409 = !DILocation(line: 96, column: 3, scope: !342)
!410 = !DILocation(line: 97, column: 1, scope: !318)
