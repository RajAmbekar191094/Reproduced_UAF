; ModuleID = '/home/raj/coturn/src/apps/peer/udpserver.c'
source_filename = "/home/raj/coturn/src/apps/peer/udpserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_info = type { [1025 x i8], ptr, i32 }
%struct.timeval = type { i64, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._stun_buffer = type { [4 x i8], [65507 x i8], i64, i16, i8 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%union.__SOCKADDR_ARG = type { ptr }
%union.__CONST_SOCKADDR_ARG = type { ptr }

@.str = private unnamed_addr constant [13 x i8] c"%s:%d:start\0A\00", align 1, !dbg !0
@__FUNCTION__.udp_create_server_socket = private unnamed_addr constant [25 x i8] c"udp_create_server_socket\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [44 x i8] c"Cannot bind udp server socket to device %s\0A\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [11 x i8] c"%s:%d:end\0A\00", align 1, !dbg !23

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @start_udp_server(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #0 !dbg !195 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !203, metadata !DIExpression()), !dbg !204
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !205, metadata !DIExpression()), !dbg !206
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !207, metadata !DIExpression()), !dbg !208
  store i64 %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !209, metadata !DIExpression()), !dbg !210
  store i32 %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !211, metadata !DIExpression()), !dbg !212
  %11 = load i32, ptr %6, align 4, !dbg !213
  %12 = load ptr, ptr %7, align 8, !dbg !214
  %13 = load ptr, ptr %8, align 8, !dbg !215
  %14 = load i64, ptr %9, align 8, !dbg !216
  %15 = load i32, ptr %10, align 4, !dbg !217
  %16 = call ptr @init_server(i32 noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14, i32 noundef %15), !dbg !218
  ret ptr %16, !dbg !219
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @init_server(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #0 !dbg !220 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !221, metadata !DIExpression()), !dbg !222
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !223, metadata !DIExpression()), !dbg !224
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !225, metadata !DIExpression()), !dbg !226
  store i64 %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !227, metadata !DIExpression()), !dbg !228
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata ptr %12, metadata !231, metadata !DIExpression()), !dbg !232
  %13 = call noalias ptr @malloc(i64 noundef 1048) #7, !dbg !233
  store ptr %13, ptr %12, align 8, !dbg !232
  %14 = load ptr, ptr %12, align 8, !dbg !234
  %15 = icmp ne ptr %14, null, !dbg !234
  br i1 %15, label %18, label %16, !dbg !236

16:                                               ; preds = %5
  %17 = load ptr, ptr %12, align 8, !dbg !237
  store ptr %17, ptr %6, align 8, !dbg !238
  br label %50, !dbg !238

18:                                               ; preds = %5
  %19 = load ptr, ptr %12, align 8, !dbg !239
  call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 1048, i1 false), !dbg !240
  %20 = load i32, ptr %7, align 4, !dbg !241
  %21 = load ptr, ptr %12, align 8, !dbg !242
  %22 = getelementptr inbounds %struct.server_info, ptr %21, i32 0, i32 2, !dbg !243
  store i32 %20, ptr %22, align 8, !dbg !244
  %23 = call ptr @turn_event_base_new(), !dbg !245
  %24 = load ptr, ptr %12, align 8, !dbg !246
  %25 = getelementptr inbounds %struct.server_info, ptr %24, i32 0, i32 1, !dbg !247
  store ptr %23, ptr %25, align 8, !dbg !248
  br label %26, !dbg !249

26:                                               ; preds = %29, %18
  %27 = load i64, ptr %10, align 8, !dbg !250
  %28 = icmp ne i64 %27, 0, !dbg !249
  br i1 %28, label %29, label %48, !dbg !249

29:                                               ; preds = %26
  %30 = load ptr, ptr %12, align 8, !dbg !251
  %31 = load ptr, ptr %8, align 8, !dbg !253
  %32 = load ptr, ptr %9, align 8, !dbg !254
  %33 = load i64, ptr %10, align 8, !dbg !255
  %34 = add i64 %33, -1, !dbg !255
  store i64 %34, ptr %10, align 8, !dbg !255
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34, !dbg !254
  %36 = load ptr, ptr %35, align 8, !dbg !254
  %37 = load i32, ptr %11, align 4, !dbg !256
  %38 = call i32 @udp_create_server_socket(ptr noundef %30, ptr noundef %31, ptr noundef %36, i32 noundef %37), !dbg !257
  %39 = load ptr, ptr %12, align 8, !dbg !258
  %40 = load ptr, ptr %8, align 8, !dbg !259
  %41 = load ptr, ptr %9, align 8, !dbg !260
  %42 = load i64, ptr %10, align 8, !dbg !261
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42, !dbg !260
  %44 = load ptr, ptr %43, align 8, !dbg !260
  %45 = load i32, ptr %11, align 4, !dbg !262
  %46 = add nsw i32 %45, 1, !dbg !263
  %47 = call i32 @udp_create_server_socket(ptr noundef %39, ptr noundef %40, ptr noundef %44, i32 noundef %46), !dbg !264
  br label %26, !dbg !249, !llvm.loop !265

48:                                               ; preds = %26
  %49 = load ptr, ptr %12, align 8, !dbg !268
  store ptr %49, ptr %6, align 8, !dbg !269
  br label %50, !dbg !269

50:                                               ; preds = %48, %16
  %51 = load ptr, ptr %6, align 8, !dbg !270
  ret ptr %51, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_udp_server(ptr noundef %0) #0 !dbg !271 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !274, metadata !DIExpression()), !dbg !275
  %4 = load ptr, ptr %2, align 8, !dbg !276
  %5 = icmp ne ptr %4, null, !dbg !276
  br i1 %5, label %6, label %11, !dbg !278

6:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !279, metadata !DIExpression()), !dbg !281
  store i32 0, ptr %3, align 4, !dbg !281
  br label %7, !dbg !282

7:                                                ; preds = %6, %7
  %8 = load i32, ptr %3, align 4, !dbg !283
  %9 = add i32 %8, 1, !dbg !283
  store i32 %9, ptr %3, align 4, !dbg !283
  %10 = load ptr, ptr %2, align 8, !dbg !285
  call void @run_events(ptr noundef %10), !dbg !286
  br label %7, !dbg !282, !llvm.loop !287

11:                                               ; preds = %1
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_events(ptr noundef %0) #0 !dbg !290 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.timeval, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !291, metadata !DIExpression()), !dbg !292
  %4 = load ptr, ptr %2, align 8, !dbg !293
  %5 = icmp ne ptr %4, null, !dbg !293
  br i1 %5, label %7, label %6, !dbg !295

6:                                                ; preds = %1
  br label %18, !dbg !296

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !297, metadata !DIExpression()), !dbg !306
  %8 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 0, !dbg !307
  store i64 0, ptr %8, align 8, !dbg !308
  %9 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 1, !dbg !309
  store i64 100000, ptr %9, align 8, !dbg !310
  %10 = load ptr, ptr %2, align 8, !dbg !311
  %11 = getelementptr inbounds %struct.server_info, ptr %10, i32 0, i32 1, !dbg !312
  %12 = load ptr, ptr %11, align 8, !dbg !312
  %13 = call i32 @event_base_loopexit(ptr noundef %12, ptr noundef %3), !dbg !313
  %14 = load ptr, ptr %2, align 8, !dbg !314
  %15 = getelementptr inbounds %struct.server_info, ptr %14, i32 0, i32 1, !dbg !315
  %16 = load ptr, ptr %15, align 8, !dbg !315
  %17 = call i32 @event_base_dispatch(ptr noundef %16), !dbg !316
  br label %18, !dbg !317

18:                                               ; preds = %7, %6
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_udp_server(ptr noundef %0) #0 !dbg !318 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !319, metadata !DIExpression()), !dbg !320
  %3 = load ptr, ptr %2, align 8, !dbg !321
  %4 = icmp ne ptr %3, null, !dbg !321
  br i1 %4, label %5, label %8, !dbg !323

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !324
  %7 = call i32 @clean_server(ptr noundef %6), !dbg !325
  br label %8, !dbg !325

8:                                                ; preds = %5, %1
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_server(ptr noundef %0) #0 !dbg !327 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !330, metadata !DIExpression()), !dbg !331
  %3 = load ptr, ptr %2, align 8, !dbg !332
  %4 = icmp ne ptr %3, null, !dbg !332
  br i1 %4, label %5, label %16, !dbg !334

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !335
  %7 = getelementptr inbounds %struct.server_info, ptr %6, i32 0, i32 1, !dbg !338
  %8 = load ptr, ptr %7, align 8, !dbg !338
  %9 = icmp ne ptr %8, null, !dbg !335
  br i1 %9, label %10, label %14, !dbg !339

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !340
  %12 = getelementptr inbounds %struct.server_info, ptr %11, i32 0, i32 1, !dbg !341
  %13 = load ptr, ptr %12, align 8, !dbg !341
  call void @event_base_free(ptr noundef %13), !dbg !342
  br label %14, !dbg !342

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %2, align 8, !dbg !343
  call void @free(ptr noundef %15) #8, !dbg !344
  br label %16, !dbg !345

16:                                               ; preds = %14, %1
  ret i32 0, !dbg !346
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @turn_event_base_new() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_create_server_socket(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !347 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !350, metadata !DIExpression()), !dbg !351
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !352, metadata !DIExpression()), !dbg !353
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !354, metadata !DIExpression()), !dbg !355
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !356, metadata !DIExpression()), !dbg !357
  %14 = load ptr, ptr %6, align 8, !dbg !358
  %15 = icmp ne ptr %14, null, !dbg !358
  br i1 %15, label %16, label %22, !dbg !358

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 8, !dbg !358
  %18 = getelementptr inbounds %struct.server_info, ptr %17, i32 0, i32 2, !dbg !358
  %19 = load i32, ptr %18, align 8, !dbg !358
  %20 = icmp ne i32 %19, 0, !dbg !358
  br i1 %20, label %21, label %22, !dbg !360

21:                                               ; preds = %16
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str, ptr noundef @__FUNCTION__.udp_create_server_socket, i32 noundef 66), !dbg !358
  br label %22, !dbg !358

22:                                               ; preds = %21, %16, %4
  %23 = load ptr, ptr %6, align 8, !dbg !361
  %24 = icmp ne ptr %23, null, !dbg !361
  br i1 %24, label %26, label %25, !dbg !363

25:                                               ; preds = %22
  store i32 -1, ptr %5, align 4, !dbg !364
  br label %103, !dbg !364

26:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %10, metadata !365, metadata !DIExpression()), !dbg !366
  store i32 -1, ptr %10, align 4, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %11, metadata !367, metadata !DIExpression()), !dbg !368
  %27 = call noalias ptr @malloc(i64 noundef 28) #7, !dbg !369
  store ptr %27, ptr %11, align 8, !dbg !368
  br label %28, !dbg !370

28:                                               ; preds = %26
  %29 = load ptr, ptr %6, align 8, !dbg !371
  %30 = getelementptr inbounds %struct.server_info, ptr %29, i32 0, i32 0, !dbg !371
  %31 = getelementptr inbounds [1025 x i8], ptr %30, i64 0, i64 0, !dbg !371
  %32 = load ptr, ptr %7, align 8, !dbg !371
  %33 = icmp ne ptr %31, %32, !dbg !371
  br i1 %33, label %34, label %47, !dbg !374

34:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %12, metadata !375, metadata !DIExpression()), !dbg !379
  store i64 1025, ptr %12, align 8, !dbg !379
  %35 = load ptr, ptr %6, align 8, !dbg !379
  %36 = getelementptr inbounds %struct.server_info, ptr %35, i32 0, i32 0, !dbg !379
  %37 = getelementptr inbounds [1025 x i8], ptr %36, i64 0, i64 0, !dbg !379
  %38 = load ptr, ptr %7, align 8, !dbg !379
  %39 = load i64, ptr %12, align 8, !dbg !379
  %40 = call ptr @strncpy(ptr noundef %37, ptr noundef %38, i64 noundef %39) #8, !dbg !379
  %41 = load ptr, ptr %6, align 8, !dbg !379
  %42 = getelementptr inbounds %struct.server_info, ptr %41, i32 0, i32 0, !dbg !379
  %43 = getelementptr inbounds [1025 x i8], ptr %42, i64 0, i64 0, !dbg !379
  %44 = load i64, ptr %12, align 8, !dbg !379
  %45 = sub i64 %44, 1, !dbg !379
  %46 = getelementptr inbounds i8, ptr %43, i64 %45, !dbg !379
  store i8 0, ptr %46, align 1, !dbg !379
  br label %47, !dbg !380

47:                                               ; preds = %34, %28
  br label %48, !dbg !374

48:                                               ; preds = %47
  %49 = load ptr, ptr %8, align 8, !dbg !381
  %50 = load i32, ptr %9, align 4, !dbg !383
  %51 = load ptr, ptr %11, align 8, !dbg !384
  %52 = call i32 @make_ioa_addr(ptr noundef %49, i32 noundef %50, ptr noundef %51), !dbg !385
  %53 = icmp slt i32 %52, 0, !dbg !386
  br i1 %53, label %54, label %55, !dbg !387

54:                                               ; preds = %48
  store i32 -1, ptr %5, align 4, !dbg !388
  br label %103, !dbg !388

55:                                               ; preds = %48
  %56 = load ptr, ptr %11, align 8, !dbg !389
  %57 = getelementptr inbounds %struct.sockaddr, ptr %56, i32 0, i32 0, !dbg !390
  %58 = load i16, ptr %57, align 4, !dbg !390
  %59 = zext i16 %58 to i32, !dbg !389
  %60 = call i32 @socket(i32 noundef %59, i32 noundef 2, i32 noundef 0) #8, !dbg !391
  store i32 %60, ptr %10, align 4, !dbg !392
  %61 = load i32, ptr %10, align 4, !dbg !393
  %62 = icmp slt i32 %61, 0, !dbg !395
  br i1 %62, label %63, label %64, !dbg !396

63:                                               ; preds = %55
  call void @perror(ptr noundef @.str.1), !dbg !397
  store i32 -1, ptr %5, align 4, !dbg !399
  br label %103, !dbg !399

64:                                               ; preds = %55
  %65 = load i32, ptr %10, align 4, !dbg !400
  %66 = load ptr, ptr %6, align 8, !dbg !402
  %67 = getelementptr inbounds %struct.server_info, ptr %66, i32 0, i32 0, !dbg !403
  %68 = getelementptr inbounds [1025 x i8], ptr %67, i64 0, i64 0, !dbg !402
  %69 = call i32 @sock_bind_to_device(i32 noundef %65, ptr noundef %68), !dbg !404
  %70 = icmp slt i32 %69, 0, !dbg !405
  br i1 %70, label %71, label %75, !dbg !406

71:                                               ; preds = %64
  %72 = load ptr, ptr %6, align 8, !dbg !407
  %73 = getelementptr inbounds %struct.server_info, ptr %72, i32 0, i32 0, !dbg !409
  %74 = getelementptr inbounds [1025 x i8], ptr %73, i64 0, i64 0, !dbg !407
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2, ptr noundef %74), !dbg !410
  br label %75, !dbg !411

75:                                               ; preds = %71, %64
  %76 = load i32, ptr %10, align 4, !dbg !412
  %77 = call i32 @set_sock_buf_size(i32 noundef %76, i32 noundef 2097152), !dbg !413
  %78 = load i32, ptr %10, align 4, !dbg !414
  %79 = load ptr, ptr %11, align 8, !dbg !416
  %80 = call i32 @addr_bind(i32 noundef %78, ptr noundef %79, i32 noundef 1, i32 noundef 1, i32 noundef 17), !dbg !417
  %81 = icmp slt i32 %80, 0, !dbg !418
  br i1 %81, label %82, label %83, !dbg !419

82:                                               ; preds = %75
  store i32 -1, ptr %5, align 4, !dbg !420
  br label %103, !dbg !420

83:                                               ; preds = %75
  %84 = load i32, ptr %10, align 4, !dbg !421
  %85 = call i32 @socket_set_nonblocking(i32 noundef %84), !dbg !422
  call void @llvm.dbg.declare(metadata ptr %13, metadata !423, metadata !DIExpression()), !dbg !426
  %86 = load ptr, ptr %6, align 8, !dbg !427
  %87 = getelementptr inbounds %struct.server_info, ptr %86, i32 0, i32 1, !dbg !428
  %88 = load ptr, ptr %87, align 8, !dbg !428
  %89 = load i32, ptr %10, align 4, !dbg !429
  %90 = load ptr, ptr %11, align 8, !dbg !430
  %91 = call ptr @event_new(ptr noundef %88, i32 noundef %89, i16 noundef signext 18, ptr noundef @udp_server_input_handler, ptr noundef %90), !dbg !431
  store ptr %91, ptr %13, align 8, !dbg !426
  %92 = load ptr, ptr %13, align 8, !dbg !432
  %93 = call i32 @event_add(ptr noundef %92, ptr noundef null), !dbg !433
  %94 = load ptr, ptr %6, align 8, !dbg !434
  %95 = icmp ne ptr %94, null, !dbg !434
  br i1 %95, label %96, label %102, !dbg !434

96:                                               ; preds = %83
  %97 = load ptr, ptr %6, align 8, !dbg !434
  %98 = getelementptr inbounds %struct.server_info, ptr %97, i32 0, i32 2, !dbg !434
  %99 = load i32, ptr %98, align 8, !dbg !434
  %100 = icmp ne i32 %99, 0, !dbg !434
  br i1 %100, label %101, label %102, !dbg !436

101:                                              ; preds = %96
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.3, ptr noundef @__FUNCTION__.udp_create_server_socket, i32 noundef 98), !dbg !434
  br label %102, !dbg !434

102:                                              ; preds = %101, %96, %83
  store i32 0, ptr %5, align 4, !dbg !437
  br label %103, !dbg !437

103:                                              ; preds = %102, %82, %63, %54, %25
  %104 = load i32, ptr %5, align 4, !dbg !438
  ret i32 %104, !dbg !438
}

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #5

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #5

declare void @perror(ptr noundef) #4

declare i32 @sock_bind_to_device(i32 noundef, ptr noundef) #4

declare i32 @set_sock_buf_size(i32 noundef, i32 noundef) #4

declare i32 @addr_bind(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @socket_set_nonblocking(i32 noundef) #4

declare ptr @event_new(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_server_input_handler(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 !dbg !439 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._stun_buffer, align 8
  %11 = alloca %union.ioa_addr, align 4
  %12 = alloca %union.__SOCKADDR_ARG, align 8
  %13 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !444, metadata !DIExpression()), !dbg !445
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !446, metadata !DIExpression()), !dbg !447
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !448, metadata !DIExpression()), !dbg !449
  %14 = load i16, ptr %5, align 2, !dbg !450
  %15 = sext i16 %14 to i32, !dbg !450
  %16 = and i32 %15, 2, !dbg !452
  %17 = icmp ne i32 %16, 0, !dbg !452
  br i1 %17, label %19, label %18, !dbg !453

18:                                               ; preds = %3
  br label %78, !dbg !454

19:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !455, metadata !DIExpression()), !dbg !456
  %20 = load ptr, ptr %6, align 8, !dbg !457
  store ptr %20, ptr %7, align 8, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %8, metadata !458, metadata !DIExpression()), !dbg !459
  store i32 0, ptr %8, align 4, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %9, metadata !460, metadata !DIExpression()), !dbg !461
  %21 = load ptr, ptr %7, align 8, !dbg !462
  %22 = call i32 @get_ioa_addr_len(ptr noundef %21), !dbg !463
  store i32 %22, ptr %9, align 4, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %10, metadata !464, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata ptr %11, metadata !479, metadata !DIExpression()), !dbg !480
  br label %23, !dbg !481

23:                                               ; preds = %38, %19
  %24 = load i32, ptr %4, align 4, !dbg !482
  %25 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 1, !dbg !484
  %26 = getelementptr inbounds [65507 x i8], ptr %25, i64 0, i64 0, !dbg !485
  store ptr %11, ptr %12, align 8, !dbg !486
  %27 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %12, i32 0, i32 0, !dbg !487
  %28 = load ptr, ptr %27, align 8, !dbg !487
  %29 = call i64 @recvfrom(i32 noundef %24, ptr noundef %26, i64 noundef 65506, i32 noundef 0, ptr %28, ptr noundef %9), !dbg !487
  %30 = trunc i64 %29 to i32, !dbg !487
  store i32 %30, ptr %8, align 4, !dbg !488
  br label %31, !dbg !489

31:                                               ; preds = %23
  %32 = load i32, ptr %8, align 4, !dbg !490
  %33 = icmp slt i32 %32, 0, !dbg !491
  br i1 %33, label %34, label %38, !dbg !492

34:                                               ; preds = %31
  %35 = call ptr @__errno_location() #9, !dbg !493
  %36 = load i32, ptr %35, align 4, !dbg !493
  %37 = icmp eq i32 %36, 4, !dbg !494
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ], !dbg !495
  br i1 %39, label %23, label %40, !dbg !489, !llvm.loop !496

40:                                               ; preds = %38
  %41 = load i32, ptr %8, align 4, !dbg !498
  %42 = sext i32 %41 to i64, !dbg !498
  %43 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 2, !dbg !499
  store i64 %42, ptr %43, align 8, !dbg !500
  %44 = load i32, ptr %8, align 4, !dbg !501
  %45 = icmp sge i32 %44, 0, !dbg !503
  br i1 %45, label %46, label %78, !dbg !504

46:                                               ; preds = %40
  br label %47, !dbg !505

47:                                               ; preds = %75, %46
  %48 = load i32, ptr %4, align 4, !dbg !507
  %49 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 1, !dbg !509
  %50 = getelementptr inbounds [65507 x i8], ptr %49, i64 0, i64 0, !dbg !510
  %51 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 2, !dbg !511
  %52 = load i64, ptr %51, align 8, !dbg !511
  store ptr %11, ptr %13, align 8, !dbg !512
  %53 = load i32, ptr %9, align 4, !dbg !513
  %54 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, ptr %13, i32 0, i32 0, !dbg !514
  %55 = load ptr, ptr %54, align 8, !dbg !514
  %56 = call i64 @sendto(i32 noundef %48, ptr noundef %50, i64 noundef %52, i32 noundef 0, ptr %55, i32 noundef %53), !dbg !514
  %57 = trunc i64 %56 to i32, !dbg !514
  store i32 %57, ptr %8, align 4, !dbg !515
  br label %58, !dbg !516

58:                                               ; preds = %47
  %59 = load i32, ptr %8, align 4, !dbg !517
  %60 = icmp slt i32 %59, 0, !dbg !518
  br i1 %60, label %61, label %75, !dbg !519

61:                                               ; preds = %58
  %62 = call ptr @__errno_location() #9, !dbg !520
  %63 = load i32, ptr %62, align 4, !dbg !520
  %64 = icmp eq i32 %63, 4, !dbg !521
  br i1 %64, label %73, label %65, !dbg !522

65:                                               ; preds = %61
  %66 = call ptr @__errno_location() #9, !dbg !523
  %67 = load i32, ptr %66, align 4, !dbg !523
  %68 = icmp eq i32 %67, 105, !dbg !524
  br i1 %68, label %73, label %69, !dbg !525

69:                                               ; preds = %65
  %70 = call ptr @__errno_location() #9, !dbg !526
  %71 = load i32, ptr %70, align 4, !dbg !526
  %72 = icmp eq i32 %71, 11, !dbg !527
  br label %73, !dbg !525

73:                                               ; preds = %69, %65, %61
  %74 = phi i1 [ true, %65 ], [ true, %61 ], [ %72, %69 ]
  br label %75

75:                                               ; preds = %73, %58
  %76 = phi i1 [ false, %58 ], [ %74, %73 ], !dbg !528
  br i1 %76, label %47, label %77, !dbg !516, !llvm.loop !529

77:                                               ; preds = %75
  br label %78, !dbg !531

78:                                               ; preds = %18, %77, %40
  ret void, !dbg !532
}

declare i32 @event_add(ptr noundef, ptr noundef) #4

declare i32 @get_ioa_addr_len(ptr noundef) #4

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

declare i64 @sendto(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, i32 noundef) #4

declare i32 @event_base_loopexit(ptr noundef, ptr noundef) #4

declare i32 @event_base_dispatch(ptr noundef) #4

declare void @event_base_free(ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/peer/udpserver.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c226018a5a5e895611b7516569a3827a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 25)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 7)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 44)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 11)
!28 = distinct !DICompileUnit(language: DW_LANG_C11, file: !29, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !95, globals: !186, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/raj/coturn/src/apps/peer/udpserver.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "c226018a5a5e895611b7516569a3827a")
!30 = !{!31, !39, !51, !82}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 47, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!36 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!37 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!38 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !40, line: 24, baseType: !33, size: 32, elements: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50}
!42 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!43 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!44 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!45 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!46 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!47 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!48 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!49 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!50 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 40, baseType: !33, size: 32, elements: !53)
!52 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!54 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!55 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!56 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!57 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!58 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!59 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!60 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!61 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!62 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!63 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!64 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!65 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!66 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!67 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!68 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!69 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!70 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!71 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!72 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!73 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!74 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!75 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!76 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!77 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!78 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!79 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!80 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!81 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !83, line: 85, baseType: !33, size: 32, elements: !84)
!83 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!85 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!86 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!87 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!88 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!89 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!90 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!91 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!92 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!93 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!94 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!95 = !{!96, !111, !175, !176, !177, !179, !180, !181, !184, !182}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_type", file: !98, line: 47, baseType: !99)
!98 = !DIFile(filename: "src/apps/peer/udpserver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "3c98836c119a54bb7738ad9a39ad55c0")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_info", file: !98, line: 56, size: 8384, elements: !100)
!100 = !{!101, !105, !109}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !99, file: !98, line: 57, baseType: !102, size: 8200)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1025)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !99, file: !98, line: 58, baseType: !106, size: 64, offset: 8256)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !108, line: 217, flags: DIFlagFwdDecl)
!108 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!109 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !99, file: !98, line: 59, baseType: !110, size: 32, offset: 8320)
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !113, line: 48, baseType: !114)
!113 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !113, line: 44, size: 224, elements: !115)
!115 = !{!116, !128, !150}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !114, file: !113, line: 45, baseType: !117, size: 128)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !118, line: 180, size: 128, elements: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!119 = !{!120, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !117, file: !118, line: 182, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !122, line: 28, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !117, file: !118, line: 183, baseType: !125, size: 112, offset: 16)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 14)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !114, file: !113, line: 46, baseType: !129, size: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !52, line: 245, size: 128, elements: !130)
!130 = !{!131, !132, !138, !145}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !129, file: !52, line: 247, baseType: !121, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !129, file: !52, line: 248, baseType: !133, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !52, line: 123, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !135, line: 25, baseType: !136)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !137, line: 40, baseType: !123)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !129, file: !52, line: 249, baseType: !139, size: 32, offset: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !52, line: 31, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !139, file: !52, line: 33, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !52, line: 30, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 26, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !137, line: 42, baseType: !33)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !129, file: !52, line: 252, baseType: !146, size: 64, offset: 64)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !148)
!147 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!148 = !{!149}
!149 = !DISubrange(count: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !114, file: !113, line: 47, baseType: !151, size: 224)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !52, line: 260, size: 224, elements: !152)
!152 = !{!153, !154, !155, !156, !174}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !151, file: !52, line: 262, baseType: !121, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !151, file: !52, line: 263, baseType: !133, size: 16, offset: 16)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !151, file: !52, line: 264, baseType: !143, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !151, file: !52, line: 265, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !52, line: 219, size: 128, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !157, file: !52, line: 226, baseType: !160, size: 128)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !157, file: !52, line: 221, size: 128, elements: !161)
!161 = !{!162, !168, !170}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !160, file: !52, line: 223, baseType: !163, size: 128)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !166)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !135, line: 24, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !137, line: 38, baseType: !147)
!166 = !{!167}
!167 = !DISubrange(count: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !160, file: !52, line: 224, baseType: !169, size: 128)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 128, elements: !148)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !160, file: !52, line: 225, baseType: !171, size: 128)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 4)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !151, file: !52, line: 266, baseType: !143, size: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !118, line: 33, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !137, line: 210, baseType: !33)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!186 = !{!0, !7, !13, !18, !23}
!187 = !{i32 7, !"Dwarf Version", i32 5}
!188 = !{i32 2, !"Debug Info Version", i32 3}
!189 = !{i32 1, !"wchar_size", i32 4}
!190 = !{i32 8, !"PIC Level", i32 2}
!191 = !{i32 7, !"PIE Level", i32 2}
!192 = !{i32 7, !"uwtable", i32 2}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 16.0.0"}
!195 = distinct !DISubprogram(name: "start_udp_server", scope: !2, file: !2, line: 149, type: !196, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !202)
!196 = !DISubroutineType(types: !197)
!197 = !{!96, !110, !175, !198, !199, !110}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !200, line: 46, baseType: !201)
!200 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!201 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!202 = !{}
!203 = !DILocalVariable(name: "verbose", arg: 1, scope: !195, file: !2, line: 149, type: !110)
!204 = !DILocation(line: 149, column: 35, scope: !195)
!205 = !DILocalVariable(name: "ifname", arg: 2, scope: !195, file: !2, line: 149, type: !175)
!206 = !DILocation(line: 149, column: 56, scope: !195)
!207 = !DILocalVariable(name: "local_addresses", arg: 3, scope: !195, file: !2, line: 149, type: !198)
!208 = !DILocation(line: 149, column: 71, scope: !195)
!209 = !DILocalVariable(name: "las", arg: 4, scope: !195, file: !2, line: 149, type: !199)
!210 = !DILocation(line: 149, column: 95, scope: !195)
!211 = !DILocalVariable(name: "port", arg: 5, scope: !195, file: !2, line: 149, type: !110)
!212 = !DILocation(line: 149, column: 104, scope: !195)
!213 = !DILocation(line: 150, column: 22, scope: !195)
!214 = !DILocation(line: 150, column: 31, scope: !195)
!215 = !DILocation(line: 150, column: 39, scope: !195)
!216 = !DILocation(line: 150, column: 56, scope: !195)
!217 = !DILocation(line: 150, column: 61, scope: !195)
!218 = !DILocation(line: 150, column: 10, scope: !195)
!219 = !DILocation(line: 150, column: 3, scope: !195)
!220 = distinct !DISubprogram(name: "init_server", scope: !2, file: !2, line: 103, type: !196, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !202)
!221 = !DILocalVariable(name: "verbose", arg: 1, scope: !220, file: !2, line: 103, type: !110)
!222 = !DILocation(line: 103, column: 37, scope: !220)
!223 = !DILocalVariable(name: "ifname", arg: 2, scope: !220, file: !2, line: 103, type: !175)
!224 = !DILocation(line: 103, column: 58, scope: !220)
!225 = !DILocalVariable(name: "local_addresses", arg: 3, scope: !220, file: !2, line: 103, type: !198)
!226 = !DILocation(line: 103, column: 73, scope: !220)
!227 = !DILocalVariable(name: "las", arg: 4, scope: !220, file: !2, line: 103, type: !199)
!228 = !DILocation(line: 103, column: 97, scope: !220)
!229 = !DILocalVariable(name: "port", arg: 5, scope: !220, file: !2, line: 103, type: !110)
!230 = !DILocation(line: 103, column: 106, scope: !220)
!231 = !DILocalVariable(name: "server", scope: !220, file: !2, line: 105, type: !96)
!232 = !DILocation(line: 105, column: 16, scope: !220)
!233 = !DILocation(line: 105, column: 37, scope: !220)
!234 = !DILocation(line: 107, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !220, file: !2, line: 107, column: 6)
!236 = !DILocation(line: 107, column: 6, scope: !220)
!237 = !DILocation(line: 107, column: 22, scope: !235)
!238 = !DILocation(line: 107, column: 15, scope: !235)
!239 = !DILocation(line: 109, column: 9, scope: !220)
!240 = !DILocation(line: 109, column: 3, scope: !220)
!241 = !DILocation(line: 111, column: 19, scope: !220)
!242 = !DILocation(line: 111, column: 3, scope: !220)
!243 = !DILocation(line: 111, column: 11, scope: !220)
!244 = !DILocation(line: 111, column: 18, scope: !220)
!245 = !DILocation(line: 113, column: 24, scope: !220)
!246 = !DILocation(line: 113, column: 3, scope: !220)
!247 = !DILocation(line: 113, column: 11, scope: !220)
!248 = !DILocation(line: 113, column: 22, scope: !220)
!249 = !DILocation(line: 115, column: 3, scope: !220)
!250 = !DILocation(line: 115, column: 9, scope: !220)
!251 = !DILocation(line: 116, column: 30, scope: !252)
!252 = distinct !DILexicalBlock(scope: !220, file: !2, line: 115, column: 14)
!253 = !DILocation(line: 116, column: 38, scope: !252)
!254 = !DILocation(line: 116, column: 46, scope: !252)
!255 = !DILocation(line: 116, column: 62, scope: !252)
!256 = !DILocation(line: 116, column: 70, scope: !252)
!257 = !DILocation(line: 116, column: 5, scope: !252)
!258 = !DILocation(line: 117, column: 30, scope: !252)
!259 = !DILocation(line: 117, column: 38, scope: !252)
!260 = !DILocation(line: 117, column: 46, scope: !252)
!261 = !DILocation(line: 117, column: 62, scope: !252)
!262 = !DILocation(line: 117, column: 68, scope: !252)
!263 = !DILocation(line: 117, column: 72, scope: !252)
!264 = !DILocation(line: 117, column: 5, scope: !252)
!265 = distinct !{!265, !249, !266, !267}
!266 = !DILocation(line: 118, column: 3, scope: !220)
!267 = !{!"llvm.loop.mustprogress"}
!268 = !DILocation(line: 120, column: 10, scope: !220)
!269 = !DILocation(line: 120, column: 3, scope: !220)
!270 = !DILocation(line: 121, column: 1, scope: !220)
!271 = distinct !DISubprogram(name: "run_udp_server", scope: !2, file: !2, line: 153, type: !272, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !202)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !96}
!274 = !DILocalVariable(name: "server", arg: 1, scope: !271, file: !2, line: 153, type: !96)
!275 = !DILocation(line: 153, column: 34, scope: !271)
!276 = !DILocation(line: 155, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !271, file: !2, line: 155, column: 6)
!278 = !DILocation(line: 155, column: 6, scope: !271)
!279 = !DILocalVariable(name: "cycle", scope: !280, file: !2, line: 157, type: !33)
!280 = distinct !DILexicalBlock(scope: !277, file: !2, line: 155, column: 14)
!281 = !DILocation(line: 157, column: 18, scope: !280)
!282 = !DILocation(line: 159, column: 5, scope: !280)
!283 = !DILocation(line: 161, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !2, line: 159, column: 15)
!285 = !DILocation(line: 163, column: 18, scope: !284)
!286 = !DILocation(line: 163, column: 7, scope: !284)
!287 = distinct !{!287, !282, !288}
!288 = !DILocation(line: 164, column: 5, scope: !280)
!289 = !DILocation(line: 166, column: 1, scope: !271)
!290 = distinct !DISubprogram(name: "run_events", scope: !2, file: !2, line: 133, type: !272, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !202)
!291 = !DILocalVariable(name: "server", arg: 1, scope: !290, file: !2, line: 133, type: !96)
!292 = !DILocation(line: 133, column: 37, scope: !290)
!293 = !DILocation(line: 135, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !2, line: 135, column: 6)
!295 = !DILocation(line: 135, column: 6, scope: !290)
!296 = !DILocation(line: 135, column: 15, scope: !294)
!297 = !DILocalVariable(name: "timeout", scope: !290, file: !2, line: 137, type: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !299, line: 8, size: 128, elements: !300)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!300 = !{!301, !304}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !298, file: !299, line: 14, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !137, line: 160, baseType: !303)
!303 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !298, file: !299, line: 15, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !137, line: 162, baseType: !303)
!306 = !DILocation(line: 137, column: 18, scope: !290)
!307 = !DILocation(line: 139, column: 11, scope: !290)
!308 = !DILocation(line: 139, column: 17, scope: !290)
!309 = !DILocation(line: 140, column: 11, scope: !290)
!310 = !DILocation(line: 140, column: 18, scope: !290)
!311 = !DILocation(line: 142, column: 23, scope: !290)
!312 = !DILocation(line: 142, column: 31, scope: !290)
!313 = !DILocation(line: 142, column: 3, scope: !290)
!314 = !DILocation(line: 143, column: 23, scope: !290)
!315 = !DILocation(line: 143, column: 31, scope: !290)
!316 = !DILocation(line: 143, column: 3, scope: !290)
!317 = !DILocation(line: 144, column: 1, scope: !290)
!318 = distinct !DISubprogram(name: "clean_udp_server", scope: !2, file: !2, line: 168, type: !272, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !202)
!319 = !DILocalVariable(name: "server", arg: 1, scope: !318, file: !2, line: 168, type: !96)
!320 = !DILocation(line: 168, column: 36, scope: !318)
!321 = !DILocation(line: 169, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !2, line: 169, column: 6)
!323 = !DILocation(line: 169, column: 6, scope: !318)
!324 = !DILocation(line: 169, column: 27, scope: !322)
!325 = !DILocation(line: 169, column: 14, scope: !322)
!326 = !DILocation(line: 170, column: 1, scope: !318)
!327 = distinct !DISubprogram(name: "clean_server", scope: !2, file: !2, line: 123, type: !328, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !202)
!328 = !DISubroutineType(types: !329)
!329 = !{!110, !96}
!330 = !DILocalVariable(name: "server", arg: 1, scope: !327, file: !2, line: 123, type: !96)
!331 = !DILocation(line: 123, column: 38, scope: !327)
!332 = !DILocation(line: 124, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !327, file: !2, line: 124, column: 6)
!334 = !DILocation(line: 124, column: 6, scope: !327)
!335 = !DILocation(line: 125, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 125, column: 8)
!337 = distinct !DILexicalBlock(scope: !333, file: !2, line: 124, column: 14)
!338 = !DILocation(line: 125, column: 16, scope: !336)
!339 = !DILocation(line: 125, column: 8, scope: !337)
!340 = !DILocation(line: 125, column: 44, scope: !336)
!341 = !DILocation(line: 125, column: 52, scope: !336)
!342 = !DILocation(line: 125, column: 28, scope: !336)
!343 = !DILocation(line: 126, column: 10, scope: !337)
!344 = !DILocation(line: 126, column: 5, scope: !337)
!345 = !DILocation(line: 127, column: 3, scope: !337)
!346 = !DILocation(line: 128, column: 3, scope: !327)
!347 = distinct !DISubprogram(name: "udp_create_server_socket", scope: !2, file: !2, line: 63, type: !348, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !202)
!348 = !DISubroutineType(types: !349)
!349 = !{!110, !96, !175, !175, !110}
!350 = !DILocalVariable(name: "server", arg: 1, scope: !347, file: !2, line: 63, type: !96)
!351 = !DILocation(line: 63, column: 50, scope: !347)
!352 = !DILocalVariable(name: "ifname", arg: 2, scope: !347, file: !2, line: 64, type: !175)
!353 = !DILocation(line: 64, column: 21, scope: !347)
!354 = !DILocalVariable(name: "local_address", arg: 3, scope: !347, file: !2, line: 64, type: !175)
!355 = !DILocation(line: 64, column: 41, scope: !347)
!356 = !DILocalVariable(name: "port", arg: 4, scope: !347, file: !2, line: 64, type: !110)
!357 = !DILocation(line: 64, column: 60, scope: !347)
!358 = !DILocation(line: 66, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !347, file: !2, line: 66, column: 3)
!360 = !DILocation(line: 66, column: 3, scope: !347)
!361 = !DILocation(line: 68, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !347, file: !2, line: 68, column: 6)
!363 = !DILocation(line: 68, column: 6, scope: !347)
!364 = !DILocation(line: 68, column: 15, scope: !362)
!365 = !DILocalVariable(name: "udp_fd", scope: !347, file: !2, line: 70, type: !110)
!366 = !DILocation(line: 70, column: 19, scope: !347)
!367 = !DILocalVariable(name: "server_addr", scope: !347, file: !2, line: 71, type: !111)
!368 = !DILocation(line: 71, column: 13, scope: !347)
!369 = !DILocation(line: 71, column: 38, scope: !347)
!370 = !DILocation(line: 73, column: 3, scope: !347)
!371 = !DILocation(line: 73, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 73, column: 3)
!373 = distinct !DILexicalBlock(scope: !347, file: !2, line: 73, column: 3)
!374 = !DILocation(line: 73, column: 3, scope: !373)
!375 = !DILocalVariable(name: "szdst", scope: !376, file: !2, line: 73, type: !199)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 73, column: 3)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 73, column: 3)
!378 = distinct !DILexicalBlock(scope: !372, file: !2, line: 73, column: 3)
!379 = !DILocation(line: 73, column: 3, scope: !376)
!380 = !DILocation(line: 73, column: 3, scope: !378)
!381 = !DILocation(line: 75, column: 36, scope: !382)
!382 = distinct !DILexicalBlock(scope: !347, file: !2, line: 75, column: 6)
!383 = !DILocation(line: 75, column: 51, scope: !382)
!384 = !DILocation(line: 75, column: 57, scope: !382)
!385 = !DILocation(line: 75, column: 6, scope: !382)
!386 = !DILocation(line: 75, column: 69, scope: !382)
!387 = !DILocation(line: 75, column: 6, scope: !347)
!388 = !DILocation(line: 75, column: 73, scope: !382)
!389 = !DILocation(line: 77, column: 19, scope: !347)
!390 = !DILocation(line: 77, column: 35, scope: !347)
!391 = !DILocation(line: 77, column: 12, scope: !347)
!392 = !DILocation(line: 77, column: 10, scope: !347)
!393 = !DILocation(line: 78, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !347, file: !2, line: 78, column: 7)
!395 = !DILocation(line: 78, column: 14, scope: !394)
!396 = !DILocation(line: 78, column: 7, scope: !347)
!397 = !DILocation(line: 79, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !2, line: 78, column: 19)
!399 = !DILocation(line: 80, column: 5, scope: !398)
!400 = !DILocation(line: 83, column: 26, scope: !401)
!401 = distinct !DILexicalBlock(scope: !347, file: !2, line: 83, column: 6)
!402 = !DILocation(line: 83, column: 50, scope: !401)
!403 = !DILocation(line: 83, column: 58, scope: !401)
!404 = !DILocation(line: 83, column: 6, scope: !401)
!405 = !DILocation(line: 83, column: 65, scope: !401)
!406 = !DILocation(line: 83, column: 6, scope: !347)
!407 = !DILocation(line: 84, column: 86, scope: !408)
!408 = distinct !DILexicalBlock(scope: !401, file: !2, line: 83, column: 69)
!409 = !DILocation(line: 84, column: 94, scope: !408)
!410 = !DILocation(line: 84, column: 5, scope: !408)
!411 = !DILocation(line: 85, column: 3, scope: !408)
!412 = !DILocation(line: 87, column: 21, scope: !347)
!413 = !DILocation(line: 87, column: 3, scope: !347)
!414 = !DILocation(line: 89, column: 16, scope: !415)
!415 = distinct !DILexicalBlock(scope: !347, file: !2, line: 89, column: 6)
!416 = !DILocation(line: 89, column: 23, scope: !415)
!417 = !DILocation(line: 89, column: 6, scope: !415)
!418 = !DILocation(line: 89, column: 50, scope: !415)
!419 = !DILocation(line: 89, column: 6, scope: !347)
!420 = !DILocation(line: 89, column: 54, scope: !415)
!421 = !DILocation(line: 91, column: 26, scope: !347)
!422 = !DILocation(line: 91, column: 3, scope: !347)
!423 = !DILocalVariable(name: "udp_ev", scope: !347, file: !2, line: 93, type: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !108, line: 276, flags: DIFlagFwdDecl)
!426 = !DILocation(line: 93, column: 17, scope: !347)
!427 = !DILocation(line: 93, column: 36, scope: !347)
!428 = !DILocation(line: 93, column: 44, scope: !347)
!429 = !DILocation(line: 93, column: 55, scope: !347)
!430 = !DILocation(line: 94, column: 34, scope: !347)
!431 = !DILocation(line: 93, column: 26, scope: !347)
!432 = !DILocation(line: 96, column: 13, scope: !347)
!433 = !DILocation(line: 96, column: 3, scope: !347)
!434 = !DILocation(line: 98, column: 3, scope: !435)
!435 = distinct !DILexicalBlock(scope: !347, file: !2, line: 98, column: 3)
!436 = !DILocation(line: 98, column: 3, scope: !347)
!437 = !DILocation(line: 100, column: 3, scope: !347)
!438 = !DILocation(line: 101, column: 1, scope: !347)
!439 = distinct !DISubprogram(name: "udp_server_input_handler", scope: !2, file: !2, line: 37, type: !440, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !202)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !110, !442, !443}
!442 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!444 = !DILocalVariable(name: "fd", arg: 1, scope: !439, file: !2, line: 37, type: !110)
!445 = !DILocation(line: 37, column: 54, scope: !439)
!446 = !DILocalVariable(name: "what", arg: 2, scope: !439, file: !2, line: 37, type: !442)
!447 = !DILocation(line: 37, column: 64, scope: !439)
!448 = !DILocalVariable(name: "arg", arg: 3, scope: !439, file: !2, line: 37, type: !443)
!449 = !DILocation(line: 37, column: 76, scope: !439)
!450 = !DILocation(line: 39, column: 8, scope: !451)
!451 = distinct !DILexicalBlock(scope: !439, file: !2, line: 39, column: 6)
!452 = !DILocation(line: 39, column: 12, scope: !451)
!453 = !DILocation(line: 39, column: 6, scope: !439)
!454 = !DILocation(line: 39, column: 23, scope: !451)
!455 = !DILocalVariable(name: "addr", scope: !439, file: !2, line: 41, type: !111)
!456 = !DILocation(line: 41, column: 13, scope: !439)
!457 = !DILocation(line: 41, column: 31, scope: !439)
!458 = !DILocalVariable(name: "len", scope: !439, file: !2, line: 43, type: !110)
!459 = !DILocation(line: 43, column: 7, scope: !439)
!460 = !DILocalVariable(name: "slen", scope: !439, file: !2, line: 44, type: !110)
!461 = !DILocation(line: 44, column: 7, scope: !439)
!462 = !DILocation(line: 44, column: 31, scope: !439)
!463 = !DILocation(line: 44, column: 14, scope: !439)
!464 = !DILocalVariable(name: "buffer", scope: !439, file: !2, line: 45, type: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !466, line: 48, baseType: !467)
!466 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !466, line: 42, size: 524224, elements: !468)
!468 = !{!469, !471, !475, !476, !477}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !467, file: !466, line: 43, baseType: !470, size: 32)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32, elements: !172)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !467, file: !466, line: 44, baseType: !472, size: 524056, offset: 32)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 524056, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 65507)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !467, file: !466, line: 45, baseType: !199, size: 64, offset: 524096)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !467, file: !466, line: 46, baseType: !134, size: 16, offset: 524160)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !467, file: !466, line: 47, baseType: !164, size: 8, offset: 524176)
!478 = !DILocation(line: 45, column: 15, scope: !439)
!479 = !DILocalVariable(name: "remote_addr", scope: !439, file: !2, line: 46, type: !112)
!480 = !DILocation(line: 46, column: 12, scope: !439)
!481 = !DILocation(line: 48, column: 3, scope: !439)
!482 = !DILocation(line: 49, column: 20, scope: !483)
!483 = distinct !DILexicalBlock(scope: !439, file: !2, line: 48, column: 6)
!484 = !DILocation(line: 49, column: 31, scope: !483)
!485 = !DILocation(line: 49, column: 24, scope: !483)
!486 = !DILocation(line: 49, column: 61, scope: !483)
!487 = !DILocation(line: 49, column: 11, scope: !483)
!488 = !DILocation(line: 49, column: 9, scope: !483)
!489 = !DILocation(line: 50, column: 3, scope: !483)
!490 = !DILocation(line: 50, column: 11, scope: !439)
!491 = !DILocation(line: 50, column: 14, scope: !439)
!492 = !DILocation(line: 50, column: 17, scope: !439)
!493 = !DILocation(line: 50, column: 21, scope: !439)
!494 = !DILocation(line: 50, column: 26, scope: !439)
!495 = !DILocation(line: 0, scope: !439)
!496 = distinct !{!496, !481, !497, !267}
!497 = !DILocation(line: 50, column: 34, scope: !439)
!498 = !DILocation(line: 52, column: 14, scope: !439)
!499 = !DILocation(line: 52, column: 10, scope: !439)
!500 = !DILocation(line: 52, column: 13, scope: !439)
!501 = !DILocation(line: 54, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !439, file: !2, line: 54, column: 6)
!503 = !DILocation(line: 54, column: 9, scope: !502)
!504 = !DILocation(line: 54, column: 6, scope: !439)
!505 = !DILocation(line: 55, column: 5, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !2, line: 54, column: 14)
!507 = !DILocation(line: 56, column: 20, scope: !508)
!508 = distinct !DILexicalBlock(scope: !506, file: !2, line: 55, column: 8)
!509 = !DILocation(line: 56, column: 31, scope: !508)
!510 = !DILocation(line: 56, column: 24, scope: !508)
!511 = !DILocation(line: 56, column: 43, scope: !508)
!512 = !DILocation(line: 56, column: 51, scope: !508)
!513 = !DILocation(line: 56, column: 102, scope: !508)
!514 = !DILocation(line: 56, column: 13, scope: !508)
!515 = !DILocation(line: 56, column: 11, scope: !508)
!516 = !DILocation(line: 57, column: 5, scope: !508)
!517 = !DILocation(line: 57, column: 14, scope: !506)
!518 = !DILocation(line: 57, column: 18, scope: !506)
!519 = !DILocation(line: 57, column: 22, scope: !506)
!520 = !DILocation(line: 57, column: 27, scope: !506)
!521 = !DILocation(line: 57, column: 33, scope: !506)
!522 = !DILocation(line: 57, column: 43, scope: !506)
!523 = !DILocation(line: 57, column: 47, scope: !506)
!524 = !DILocation(line: 57, column: 53, scope: !506)
!525 = !DILocation(line: 57, column: 65, scope: !506)
!526 = !DILocation(line: 57, column: 69, scope: !506)
!527 = !DILocation(line: 57, column: 75, scope: !506)
!528 = !DILocation(line: 0, scope: !506)
!529 = distinct !{!529, !505, !530, !267}
!530 = !DILocation(line: 57, column: 86, scope: !506)
!531 = !DILocation(line: 58, column: 3, scope: !506)
!532 = !DILocation(line: 59, column: 1, scope: !439)
