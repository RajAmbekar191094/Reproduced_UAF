; ModuleID = '/home/raj/coturn/src/apps/stunclient/stunclient.c'
source_filename = "/home/raj/coturn/src/apps/stunclient/stunclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._stun_buffer = type { [4 x i8], [65507 x i8], i64, i16, i8 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"p:L:f\00", align 1, !dbg !7
@optarg = external global ptr, align 8
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !12
@Usage = internal global [185 x i8] c"Usage: stunclient [options] address\0AOptions:\0A        -p      STUN server port (Default: 3478)\0A        -L      Local address to use (optional)\0A        -f      Force RFC 5780 processing\0A\00", align 16, !dbg !17
@optind = external global i32, align 4
@real_local_addr = internal global %union.ioa_addr zeroinitializer, align 4, !dbg !113
@udp_fd = internal global i32 -1, align 4, !dbg !231
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: ERROR: Cannot add padding\0A\00", align 1, !dbg !158
@__FUNCTION__.run_stunclient = private unnamed_addr constant [15 x i8] c"run_stunclient\00", align 1, !dbg !163
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: Cannot get address from local socket\0A\00", align 1, !dbg !168
@.str.5 = private unnamed_addr constant [43 x i8] c"\0A========================================\0A\00", align 1, !dbg !173
@.str.6 = private unnamed_addr constant [22 x i8] c"RFC 5780 response %d\0A\00", align 1, !dbg !178
@counter = internal global i32 0, align 4, !dbg !228
@.str.7 = private unnamed_addr constant [18 x i8] c"Response origin: \00", align 1, !dbg !183
@.str.8 = private unnamed_addr constant [13 x i8] c"Other addr: \00", align 1, !dbg !188
@.str.9 = private unnamed_addr constant [19 x i8] c"UDP reflexive addr\00", align 1, !dbg !193
@.str.10 = private unnamed_addr constant [26 x i8] c"Cannot read the response\0A\00", align 1, !dbg !198
@.str.11 = private unnamed_addr constant [24 x i8] c"Wrong type of response\0A\00", align 1, !dbg !203
@.str.12 = private unnamed_addr constant [34 x i8] c"The response is an error %d (%s)\0A\00", align 1, !dbg !208
@.str.13 = private unnamed_addr constant [39 x i8] c"The response is an unrecognized error\0A\00", align 1, !dbg !213
@.str.14 = private unnamed_addr constant [40 x i8] c"The response is not a response message\0A\00", align 1, !dbg !218
@.str.15 = private unnamed_addr constant [36 x i8] c"The response is not a STUN message\0A\00", align 1, !dbg !223

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !244 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !249, metadata !DIExpression()), !dbg !250
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata ptr %6, metadata !253, metadata !DIExpression()), !dbg !254
  store i32 3478, ptr %6, align 4, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %7, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false), !dbg !259
  call void @llvm.dbg.declare(metadata ptr %8, metadata !260, metadata !DIExpression()), !dbg !261
  store i32 0, ptr %8, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %9, metadata !262, metadata !DIExpression()), !dbg !263
  store i32 0, ptr %9, align 4, !dbg !263
  call void @set_logfile(ptr noundef @.str), !dbg !264
  %13 = call i64 @set_system_parameters(i32 noundef 0), !dbg !265
  %14 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !266
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 256, i1 false), !dbg !266
  br label %15, !dbg !267

15:                                               ; preds = %45, %2
  %16 = load i32, ptr %4, align 4, !dbg !268
  %17 = load ptr, ptr %5, align 8, !dbg !269
  %18 = call i32 @getopt(i32 noundef %16, ptr noundef %17, ptr noundef @.str.1) #9, !dbg !270
  store i32 %18, ptr %8, align 4, !dbg !271
  %19 = icmp ne i32 %18, -1, !dbg !272
  br i1 %19, label %20, label %46, !dbg !267

20:                                               ; preds = %15
  %21 = load i32, ptr %8, align 4, !dbg !273
  switch i32 %21, label %42 [
    i32 102, label %22
    i32 112, label %23
    i32 76, label %26
  ], !dbg !275

22:                                               ; preds = %20
  store i32 1, ptr %9, align 4, !dbg !276
  br label %45, !dbg !278

23:                                               ; preds = %20
  %24 = load ptr, ptr @optarg, align 8, !dbg !279
  %25 = call i32 @atoi(ptr noundef %24) #10, !dbg !280
  store i32 %25, ptr %6, align 4, !dbg !281
  br label %45, !dbg !282

26:                                               ; preds = %20
  br label %27, !dbg !283

27:                                               ; preds = %26
  %28 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !284
  %29 = load ptr, ptr @optarg, align 8, !dbg !284
  %30 = icmp ne ptr %28, %29, !dbg !284
  br i1 %30, label %31, label %40, !dbg !287

31:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %10, metadata !288, metadata !DIExpression()), !dbg !292
  store i64 256, ptr %10, align 8, !dbg !292
  %32 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !292
  %33 = load ptr, ptr @optarg, align 8, !dbg !292
  %34 = load i64, ptr %10, align 8, !dbg !292
  %35 = call ptr @strncpy(ptr noundef %32, ptr noundef %33, i64 noundef %34) #9, !dbg !292
  %36 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !292
  %37 = load i64, ptr %10, align 8, !dbg !292
  %38 = sub i64 %37, 1, !dbg !292
  %39 = getelementptr inbounds i8, ptr %36, i64 %38, !dbg !292
  store i8 0, ptr %39, align 1, !dbg !292
  br label %40, !dbg !293

40:                                               ; preds = %31, %27
  br label %41, !dbg !287

41:                                               ; preds = %40
  br label %45, !dbg !294

42:                                               ; preds = %20
  %43 = load ptr, ptr @stderr, align 8, !dbg !295
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.2, ptr noundef @Usage), !dbg !296
  call void @exit(i32 noundef 1) #11, !dbg !297
  unreachable, !dbg !297

45:                                               ; preds = %41, %23, %22
  br label %15, !dbg !267, !llvm.loop !298

46:                                               ; preds = %15
  %47 = load i32, ptr @optind, align 4, !dbg !301
  %48 = load i32, ptr %4, align 4, !dbg !303
  %49 = icmp sge i32 %47, %48, !dbg !304
  br i1 %49, label %50, label %53, !dbg !305

50:                                               ; preds = %46
  %51 = load ptr, ptr @stderr, align 8, !dbg !306
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.2, ptr noundef @Usage), !dbg !308
  call void @exit(i32 noundef -1) #11, !dbg !309
  unreachable, !dbg !309

53:                                               ; preds = %46
  call void @addr_set_any(ptr noundef @real_local_addr), !dbg !310
  %54 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !311
  %55 = load i8, ptr %54, align 16, !dbg !311
  %56 = icmp ne i8 %55, 0, !dbg !311
  br i1 %56, label %57, label %63, !dbg !313

57:                                               ; preds = %53
  %58 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !314
  %59 = call i32 @make_ioa_addr(ptr noundef %58, i32 noundef 0, ptr noundef @real_local_addr), !dbg !317
  %60 = icmp slt i32 %59, 0, !dbg !318
  br i1 %60, label %61, label %62, !dbg !319

61:                                               ; preds = %57
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !320
  unreachable, !dbg !320

62:                                               ; preds = %57
  br label %63, !dbg !322

63:                                               ; preds = %62, %53
  call void @llvm.dbg.declare(metadata ptr %11, metadata !323, metadata !DIExpression()), !dbg !324
  store i32 -1, ptr %11, align 4, !dbg !324
  call void @llvm.dbg.declare(metadata ptr %12, metadata !325, metadata !DIExpression()), !dbg !326
  store i32 0, ptr %12, align 4, !dbg !326
  %64 = load ptr, ptr %5, align 8, !dbg !327
  %65 = load i32, ptr @optind, align 4, !dbg !328
  %66 = sext i32 %65 to i64, !dbg !327
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66, !dbg !327
  %68 = load ptr, ptr %67, align 8, !dbg !327
  %69 = load i32, ptr %6, align 4, !dbg !329
  %70 = call i32 @run_stunclient(ptr noundef %68, i32 noundef %69, ptr noundef %11, ptr noundef %12, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !330
  %71 = load i32, ptr %12, align 4, !dbg !331
  %72 = icmp ne i32 %71, 0, !dbg !331
  br i1 %72, label %76, label %73, !dbg !333

73:                                               ; preds = %63
  %74 = load i32, ptr %9, align 4, !dbg !334
  %75 = icmp ne i32 %74, 0, !dbg !334
  br i1 %75, label %76, label %93, !dbg !335

76:                                               ; preds = %73, %63
  %77 = load ptr, ptr %5, align 8, !dbg !336
  %78 = load i32, ptr @optind, align 4, !dbg !338
  %79 = sext i32 %78 to i64, !dbg !336
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79, !dbg !336
  %81 = load ptr, ptr %80, align 8, !dbg !336
  %82 = load i32, ptr %6, align 4, !dbg !339
  %83 = load i32, ptr %11, align 4, !dbg !340
  %84 = add nsw i32 %83, 1, !dbg !341
  %85 = call i32 @run_stunclient(ptr noundef %81, i32 noundef %82, ptr noundef %11, ptr noundef %12, i32 noundef %84, i32 noundef 1, i32 noundef 1, i32 noundef 0), !dbg !342
  %86 = load ptr, ptr %5, align 8, !dbg !343
  %87 = load i32, ptr @optind, align 4, !dbg !344
  %88 = sext i32 %87 to i64, !dbg !343
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88, !dbg !343
  %90 = load ptr, ptr %89, align 8, !dbg !343
  %91 = load i32, ptr %6, align 4, !dbg !345
  %92 = call i32 @run_stunclient(ptr noundef %90, i32 noundef %91, ptr noundef %11, ptr noundef %12, i32 noundef -1, i32 noundef 1, i32 noundef 1, i32 noundef 1), !dbg !346
  br label %93, !dbg !347

93:                                               ; preds = %76, %73
  %94 = load i32, ptr @udp_fd, align 4, !dbg !348
  %95 = call i32 @close(i32 noundef %94), !dbg !348
  ret i32 0, !dbg !349
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @set_logfile(ptr noundef) #3

declare i64 @set_system_parameters(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

declare void @addr_set_any(ptr noundef) #3

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noreturn
declare void @err(i32 noundef, ptr noundef, ...) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_stunclient(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 !dbg !350 {
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.ioa_addr, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct._stun_buffer, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %union.ioa_addr, align 4
  %27 = alloca ptr, align 8
  %28 = alloca %union.ioa_addr, align 4
  %29 = alloca %union.ioa_addr, align 4
  %30 = alloca i32, align 4
  %31 = alloca [1025 x i8], align 16
  %32 = alloca i64, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !354, metadata !DIExpression()), !dbg !355
  store i32 %1, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !356, metadata !DIExpression()), !dbg !357
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !358, metadata !DIExpression()), !dbg !359
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !360, metadata !DIExpression()), !dbg !361
  store i32 %4, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !362, metadata !DIExpression()), !dbg !363
  store i32 %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !364, metadata !DIExpression()), !dbg !365
  store i32 %6, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !366, metadata !DIExpression()), !dbg !367
  store i32 %7, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata ptr %17, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata ptr %18, metadata !372, metadata !DIExpression()), !dbg !373
  store i32 -1, ptr %18, align 4, !dbg !373
  call void @llvm.dbg.declare(metadata ptr %19, metadata !374, metadata !DIExpression()), !dbg !388
  call void @llvm.memset.p0.i64(ptr align 4 %17, i8 0, i64 28, i1 false), !dbg !389
  %33 = load ptr, ptr %9, align 8, !dbg !390
  %34 = load i32, ptr %10, align 4, !dbg !392
  %35 = call i32 @make_ioa_addr(ptr noundef %33, i32 noundef %34, ptr noundef %17), !dbg !393
  %36 = icmp slt i32 %35, 0, !dbg !394
  br i1 %36, label %37, label %38, !dbg !395

37:                                               ; preds = %8
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !396
  unreachable, !dbg !396

38:                                               ; preds = %8
  %39 = load i32, ptr @udp_fd, align 4, !dbg !397
  %40 = icmp slt i32 %39, 0, !dbg !399
  br i1 %40, label %41, label %59, !dbg !400

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sockaddr, ptr %17, i32 0, i32 0, !dbg !401
  %43 = load i16, ptr %42, align 4, !dbg !401
  %44 = zext i16 %43 to i32, !dbg !403
  %45 = call i32 @socket(i32 noundef %44, i32 noundef 2, i32 noundef 0) #9, !dbg !404
  store i32 %45, ptr @udp_fd, align 4, !dbg !405
  %46 = load i32, ptr @udp_fd, align 4, !dbg !406
  %47 = icmp slt i32 %46, 0, !dbg !408
  br i1 %47, label %48, label %49, !dbg !409

48:                                               ; preds = %41
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !410
  unreachable, !dbg !410

49:                                               ; preds = %41
  %50 = call i32 @addr_any(ptr noundef @real_local_addr), !dbg !411
  %51 = icmp ne i32 %50, 0, !dbg !411
  br i1 %51, label %58, label %52, !dbg !413

52:                                               ; preds = %49
  %53 = load i32, ptr @udp_fd, align 4, !dbg !414
  %54 = call i32 @addr_bind(i32 noundef %53, ptr noundef @real_local_addr, i32 noundef 0, i32 noundef 1, i32 noundef 17), !dbg !417
  %55 = icmp slt i32 %54, 0, !dbg !418
  br i1 %55, label %56, label %57, !dbg !419

56:                                               ; preds = %52
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !420
  unreachable, !dbg !420

57:                                               ; preds = %52
  br label %58, !dbg !421

58:                                               ; preds = %57, %49
  br label %59, !dbg !422

59:                                               ; preds = %58, %38
  %60 = load i32, ptr %13, align 4, !dbg !423
  %61 = icmp sge i32 %60, 0, !dbg !425
  br i1 %61, label %62, label %77, !dbg !426

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.sockaddr, ptr %17, i32 0, i32 0, !dbg !427
  %64 = load i16, ptr %63, align 4, !dbg !427
  %65 = zext i16 %64 to i32, !dbg !429
  %66 = call i32 @socket(i32 noundef %65, i32 noundef 2, i32 noundef 0) #9, !dbg !430
  store i32 %66, ptr %18, align 4, !dbg !431
  %67 = load i32, ptr %18, align 4, !dbg !432
  %68 = icmp slt i32 %67, 0, !dbg !434
  br i1 %68, label %69, label %70, !dbg !435

69:                                               ; preds = %62
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !436
  unreachable, !dbg !436

70:                                               ; preds = %62
  %71 = load i32, ptr %13, align 4, !dbg !437
  call void @addr_set_port(ptr noundef @real_local_addr, i32 noundef %71), !dbg !438
  %72 = load i32, ptr %18, align 4, !dbg !439
  %73 = call i32 @addr_bind(i32 noundef %72, ptr noundef @real_local_addr, i32 noundef 0, i32 noundef 1, i32 noundef 17), !dbg !441
  %74 = icmp slt i32 %73, 0, !dbg !442
  br i1 %74, label %75, label %76, !dbg !443

75:                                               ; preds = %70
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !444
  unreachable, !dbg !444

76:                                               ; preds = %70
  br label %77, !dbg !445

77:                                               ; preds = %76, %59
  call void @stun_prepare_binding_request(ptr noundef %19), !dbg !446
  %78 = load i32, ptr %13, align 4, !dbg !447
  %79 = icmp sge i32 %78, 0, !dbg !449
  br i1 %79, label %80, label %87, !dbg !450

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !451
  %82 = getelementptr inbounds [65507 x i8], ptr %81, i64 0, i64 0, !dbg !453
  %83 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !454
  %84 = load i32, ptr %13, align 4, !dbg !455
  %85 = trunc i32 %84 to i16, !dbg !456
  %86 = call i32 @stun_attr_add_response_port_str(ptr noundef %82, ptr noundef %83, i16 noundef zeroext %85), !dbg !457
  br label %87, !dbg !458

87:                                               ; preds = %80, %77
  %88 = load i32, ptr %14, align 4, !dbg !459
  %89 = icmp ne i32 %88, 0, !dbg !459
  br i1 %89, label %93, label %90, !dbg !461

90:                                               ; preds = %87
  %91 = load i32, ptr %15, align 4, !dbg !462
  %92 = icmp ne i32 %91, 0, !dbg !462
  br i1 %92, label %93, label %100, !dbg !463

93:                                               ; preds = %90, %87
  %94 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !464
  %95 = getelementptr inbounds [65507 x i8], ptr %94, i64 0, i64 0, !dbg !466
  %96 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !467
  %97 = load i32, ptr %14, align 4, !dbg !468
  %98 = load i32, ptr %15, align 4, !dbg !469
  %99 = call i32 @stun_attr_add_change_request_str(ptr noundef %95, ptr noundef %96, i32 noundef %97, i32 noundef %98), !dbg !470
  br label %100, !dbg !471

100:                                              ; preds = %93, %90
  %101 = load i32, ptr %16, align 4, !dbg !472
  %102 = icmp ne i32 %101, 0, !dbg !472
  br i1 %102, label %103, label %112, !dbg !474

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !475
  %105 = getelementptr inbounds [65507 x i8], ptr %104, i64 0, i64 0, !dbg !478
  %106 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !479
  %107 = call i32 @stun_attr_add_padding_str(ptr noundef %105, ptr noundef %106, i16 noundef zeroext 1500), !dbg !480
  %108 = icmp slt i32 %107, 0, !dbg !481
  br i1 %108, label %109, label %111, !dbg !482

109:                                              ; preds = %103
  %110 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef @__FUNCTION__.run_stunclient), !dbg !483
  br label %111, !dbg !485

111:                                              ; preds = %109, %103
  br label %112, !dbg !486

112:                                              ; preds = %111, %100
  call void @llvm.dbg.declare(metadata ptr %20, metadata !487, metadata !DIExpression()), !dbg !489
  store i32 0, ptr %20, align 4, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %21, metadata !490, metadata !DIExpression()), !dbg !491
  %113 = call i32 @get_ioa_addr_len(ptr noundef %17), !dbg !492
  store i32 %113, ptr %21, align 4, !dbg !491
  br label %114, !dbg !493

114:                                              ; preds = %140, %112
  %115 = load i32, ptr @udp_fd, align 4, !dbg !494
  %116 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !496
  %117 = getelementptr inbounds [65507 x i8], ptr %116, i64 0, i64 0, !dbg !497
  %118 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !498
  %119 = load i64, ptr %118, align 8, !dbg !498
  %120 = load i32, ptr %21, align 4, !dbg !499
  %121 = call i64 @sendto(i32 noundef %115, ptr noundef %117, i64 noundef %119, i32 noundef 0, ptr noundef %17, i32 noundef %120), !dbg !500
  %122 = trunc i64 %121 to i32, !dbg !500
  store i32 %122, ptr %20, align 4, !dbg !501
  br label %123, !dbg !502

123:                                              ; preds = %114
  %124 = load i32, ptr %20, align 4, !dbg !503
  %125 = icmp slt i32 %124, 0, !dbg !504
  br i1 %125, label %126, label %140, !dbg !505

126:                                              ; preds = %123
  %127 = call ptr @__errno_location() #13, !dbg !506
  %128 = load i32, ptr %127, align 4, !dbg !506
  %129 = icmp eq i32 %128, 4, !dbg !507
  br i1 %129, label %138, label %130, !dbg !508

130:                                              ; preds = %126
  %131 = call ptr @__errno_location() #13, !dbg !509
  %132 = load i32, ptr %131, align 4, !dbg !509
  %133 = icmp eq i32 %132, 105, !dbg !510
  br i1 %133, label %138, label %134, !dbg !511

134:                                              ; preds = %130
  %135 = call ptr @__errno_location() #13, !dbg !512
  %136 = load i32, ptr %135, align 4, !dbg !512
  %137 = icmp eq i32 %136, 11, !dbg !513
  br label %138, !dbg !511

138:                                              ; preds = %134, %130, %126
  %139 = phi i1 [ true, %130 ], [ true, %126 ], [ %137, %134 ]
  br label %140

140:                                              ; preds = %138, %123
  %141 = phi i1 [ false, %123 ], [ %139, %138 ], !dbg !514
  br i1 %141, label %114, label %142, !dbg !502, !llvm.loop !515

142:                                              ; preds = %140
  %143 = load i32, ptr %20, align 4, !dbg !517
  %144 = icmp slt i32 %143, 0, !dbg !519
  br i1 %144, label %145, label %146, !dbg !520

145:                                              ; preds = %142
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !521
  unreachable, !dbg !521

146:                                              ; preds = %142
  %147 = load i32, ptr @udp_fd, align 4, !dbg !522
  %148 = call i32 @addr_get_from_sock(i32 noundef %147, ptr noundef @real_local_addr), !dbg !524
  %149 = icmp slt i32 %148, 0, !dbg !525
  br i1 %149, label %150, label %152, !dbg !526

150:                                              ; preds = %146
  %151 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef @__FUNCTION__.run_stunclient), !dbg !527
  br label %155, !dbg !529

152:                                              ; preds = %146
  %153 = call i32 @addr_get_port(ptr noundef @real_local_addr), !dbg !530
  %154 = load ptr, ptr %11, align 8, !dbg !532
  store i32 %153, ptr %154, align 4, !dbg !533
  br label %155

155:                                              ; preds = %152, %150
  %156 = load i32, ptr %18, align 4, !dbg !534
  %157 = icmp sge i32 %156, 0, !dbg !537
  br i1 %157, label %158, label %162, !dbg !538

158:                                              ; preds = %155
  %159 = load i32, ptr @udp_fd, align 4, !dbg !539
  %160 = call i32 @close(i32 noundef %159), !dbg !539
  %161 = load i32, ptr %18, align 4, !dbg !541
  store i32 %161, ptr @udp_fd, align 4, !dbg !542
  store i32 -1, ptr %18, align 4, !dbg !543
  br label %162, !dbg !544

162:                                              ; preds = %158, %155
  call void @llvm.dbg.declare(metadata ptr %22, metadata !545, metadata !DIExpression()), !dbg !547
  store i32 0, ptr %22, align 4, !dbg !547
  call void @llvm.dbg.declare(metadata ptr %23, metadata !548, metadata !DIExpression()), !dbg !549
  %163 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !550
  %164 = getelementptr inbounds [65507 x i8], ptr %163, i64 0, i64 0, !dbg !551
  store ptr %164, ptr %23, align 8, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %24, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 0, ptr %24, align 4, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %25, metadata !554, metadata !DIExpression()), !dbg !556
  store i32 65507, ptr %25, align 4, !dbg !556
  br label %165, !dbg !557

165:                                              ; preds = %197, %162
  %166 = load i32, ptr @udp_fd, align 4, !dbg !558
  %167 = load ptr, ptr %23, align 8, !dbg !560
  %168 = load i32, ptr %24, align 4, !dbg !561
  %169 = sub nsw i32 65507, %168, !dbg !562
  %170 = sext i32 %169 to i64, !dbg !563
  %171 = call i64 @recv(i32 noundef %166, ptr noundef %167, i64 noundef %170, i32 noundef 0), !dbg !564
  %172 = trunc i64 %171 to i32, !dbg !564
  store i32 %172, ptr %22, align 4, !dbg !565
  %173 = load i32, ptr %22, align 4, !dbg !566
  %174 = icmp sgt i32 %173, 0, !dbg !568
  br i1 %174, label %175, label %183, !dbg !569

175:                                              ; preds = %165
  %176 = load i32, ptr %22, align 4, !dbg !570
  %177 = load i32, ptr %24, align 4, !dbg !572
  %178 = add nsw i32 %177, %176, !dbg !572
  store i32 %178, ptr %24, align 4, !dbg !572
  %179 = load i32, ptr %22, align 4, !dbg !573
  %180 = load ptr, ptr %23, align 8, !dbg !574
  %181 = sext i32 %179 to i64, !dbg !574
  %182 = getelementptr inbounds i8, ptr %180, i64 %181, !dbg !574
  store ptr %182, ptr %23, align 8, !dbg !574
  br label %199, !dbg !575

183:                                              ; preds = %165
  br label %184, !dbg !576

184:                                              ; preds = %183
  %185 = load i32, ptr %22, align 4, !dbg !577
  %186 = icmp slt i32 %185, 0, !dbg !578
  br i1 %186, label %187, label %197, !dbg !579

187:                                              ; preds = %184
  %188 = call ptr @__errno_location() #13, !dbg !580
  %189 = load i32, ptr %188, align 4, !dbg !580
  %190 = icmp eq i32 %189, 4, !dbg !581
  br i1 %190, label %195, label %191, !dbg !582

191:                                              ; preds = %187
  %192 = call ptr @__errno_location() #13, !dbg !583
  %193 = load i32, ptr %192, align 4, !dbg !583
  %194 = icmp eq i32 %193, 11, !dbg !584
  br label %195, !dbg !582

195:                                              ; preds = %191, %187
  %196 = phi i1 [ true, %187 ], [ %194, %191 ]
  br label %197

197:                                              ; preds = %195, %184
  %198 = phi i1 [ false, %184 ], [ %196, %195 ], !dbg !585
  br i1 %198, label %165, label %199, !dbg !576, !llvm.loop !586

199:                                              ; preds = %197, %175
  %200 = load i32, ptr %24, align 4, !dbg !588
  %201 = icmp sgt i32 %200, 0, !dbg !590
  br i1 %201, label %202, label %204, !dbg !591

202:                                              ; preds = %199
  %203 = load i32, ptr %24, align 4, !dbg !592
  store i32 %203, ptr %22, align 4, !dbg !593
  br label %204, !dbg !594

204:                                              ; preds = %202, %199
  %205 = load i32, ptr %22, align 4, !dbg !595
  %206 = sext i32 %205 to i64, !dbg !595
  %207 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !596
  store i64 %206, ptr %207, align 8, !dbg !597
  %208 = call i32 @stun_is_command_message(ptr noundef %19), !dbg !598
  %209 = icmp ne i32 %208, 0, !dbg !598
  br i1 %209, label %210, label %280, !dbg !600

210:                                              ; preds = %204
  %211 = call i32 @stun_is_response(ptr noundef %19), !dbg !601
  %212 = icmp ne i32 %211, 0, !dbg !601
  br i1 %212, label %213, label %277, !dbg !604

213:                                              ; preds = %210
  %214 = call i32 @stun_is_success_response(ptr noundef %19), !dbg !605
  %215 = icmp ne i32 %214, 0, !dbg !605
  br i1 %215, label %216, label %264, !dbg !608

216:                                              ; preds = %213
  %217 = call i32 @stun_is_binding_response(ptr noundef %19), !dbg !609
  %218 = icmp ne i32 %217, 0, !dbg !609
  br i1 %218, label %219, label %261, !dbg !612

219:                                              ; preds = %216
  call void @llvm.dbg.declare(metadata ptr %26, metadata !613, metadata !DIExpression()), !dbg !615
  call void @addr_set_any(ptr noundef %26), !dbg !616
  %220 = call i32 @stun_attr_get_first_addr(ptr noundef %19, i16 noundef zeroext 32, ptr noundef %26, ptr noundef null), !dbg !617
  %221 = icmp sge i32 %220, 0, !dbg !619
  br i1 %221, label %222, label %258, !dbg !620

222:                                              ; preds = %219
  call void @llvm.dbg.declare(metadata ptr %27, metadata !621, metadata !DIExpression()), !dbg !627
  %223 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !628
  %224 = getelementptr inbounds [65507 x i8], ptr %223, i64 0, i64 0, !dbg !629
  %225 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !630
  %226 = load i64, ptr %225, align 8, !dbg !630
  %227 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %224, i64 noundef %226, i16 noundef zeroext -32724), !dbg !631
  store ptr %227, ptr %27, align 8, !dbg !627
  %228 = load ptr, ptr %27, align 8, !dbg !632
  %229 = icmp ne ptr %228, null, !dbg !632
  br i1 %229, label %230, label %257, !dbg !634

230:                                              ; preds = %222
  %231 = load ptr, ptr %12, align 8, !dbg !635
  store i32 1, ptr %231, align 4, !dbg !637
  %232 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !638
  %233 = load i32, ptr @counter, align 4, !dbg !639
  %234 = add nsw i32 %233, 1, !dbg !639
  store i32 %234, ptr @counter, align 4, !dbg !639
  %235 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %234), !dbg !640
  call void @llvm.dbg.declare(metadata ptr %28, metadata !641, metadata !DIExpression()), !dbg !642
  %236 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !643
  %237 = getelementptr inbounds [65507 x i8], ptr %236, i64 0, i64 0, !dbg !644
  %238 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !645
  %239 = load i64, ptr %238, align 8, !dbg !645
  %240 = load ptr, ptr %27, align 8, !dbg !646
  %241 = call i32 @stun_attr_get_addr_str(ptr noundef %237, i64 noundef %239, ptr noundef %240, ptr noundef %28, ptr noundef null), !dbg !647
  %242 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !648
  %243 = getelementptr inbounds [65507 x i8], ptr %242, i64 0, i64 0, !dbg !649
  %244 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !650
  %245 = load i64, ptr %244, align 8, !dbg !650
  %246 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %243, i64 noundef %245, i16 noundef zeroext -32725), !dbg !651
  store ptr %246, ptr %27, align 8, !dbg !652
  %247 = load ptr, ptr %27, align 8, !dbg !653
  %248 = icmp ne ptr %247, null, !dbg !653
  br i1 %248, label %249, label %256, !dbg !655

249:                                              ; preds = %230
  call void @llvm.dbg.declare(metadata ptr %29, metadata !656, metadata !DIExpression()), !dbg !658
  %250 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 1, !dbg !659
  %251 = getelementptr inbounds [65507 x i8], ptr %250, i64 0, i64 0, !dbg !660
  %252 = getelementptr inbounds %struct._stun_buffer, ptr %19, i32 0, i32 2, !dbg !661
  %253 = load i64, ptr %252, align 8, !dbg !661
  %254 = load ptr, ptr %27, align 8, !dbg !662
  %255 = call i32 @stun_attr_get_addr_str(ptr noundef %251, i64 noundef %253, ptr noundef %254, ptr noundef %29, ptr noundef null), !dbg !663
  call void @addr_debug_print(i32 noundef 1, ptr noundef %29, ptr noundef @.str.7), !dbg !664
  br label %256, !dbg !665

256:                                              ; preds = %249, %230
  call void @addr_debug_print(i32 noundef 1, ptr noundef %28, ptr noundef @.str.8), !dbg !666
  br label %257, !dbg !667

257:                                              ; preds = %256, %222
  call void @addr_debug_print(i32 noundef 1, ptr noundef %26, ptr noundef @.str.9), !dbg !668
  br label %260, !dbg !669

258:                                              ; preds = %219
  %259 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !670
  br label %260

260:                                              ; preds = %258, %257
  br label %263, !dbg !672

261:                                              ; preds = %216
  %262 = call i32 (ptr, ...) @printf(ptr noundef @.str.11), !dbg !673
  br label %263

263:                                              ; preds = %261, %260
  br label %276, !dbg !675

264:                                              ; preds = %213
  call void @llvm.dbg.declare(metadata ptr %30, metadata !676, metadata !DIExpression()), !dbg !678
  store i32 0, ptr %30, align 4, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %31, metadata !679, metadata !DIExpression()), !dbg !683
  call void @llvm.memset.p0.i64(ptr align 16 %31, i8 0, i64 1025, i1 false), !dbg !683
  call void @llvm.dbg.declare(metadata ptr %32, metadata !684, metadata !DIExpression()), !dbg !685
  store i64 1025, ptr %32, align 8, !dbg !685
  %265 = getelementptr inbounds [1025 x i8], ptr %31, i64 0, i64 0, !dbg !686
  %266 = load i64, ptr %32, align 8, !dbg !688
  %267 = call i32 @stun_is_error_response(ptr noundef %19, ptr noundef %30, ptr noundef %265, i64 noundef %266), !dbg !689
  %268 = icmp ne i32 %267, 0, !dbg !689
  br i1 %268, label %269, label %273, !dbg !690

269:                                              ; preds = %264
  %270 = load i32, ptr %30, align 4, !dbg !691
  %271 = getelementptr inbounds [1025 x i8], ptr %31, i64 0, i64 0, !dbg !693
  %272 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %270, ptr noundef %271), !dbg !694
  br label %275, !dbg !695

273:                                              ; preds = %264
  %274 = call i32 (ptr, ...) @printf(ptr noundef @.str.13), !dbg !696
  br label %275

275:                                              ; preds = %273, %269
  br label %276

276:                                              ; preds = %275, %263
  br label %279, !dbg !698

277:                                              ; preds = %210
  %278 = call i32 (ptr, ...) @printf(ptr noundef @.str.14), !dbg !699
  br label %279

279:                                              ; preds = %277, %276
  br label %282, !dbg !701

280:                                              ; preds = %204
  %281 = call i32 (ptr, ...) @printf(ptr noundef @.str.15), !dbg !702
  br label %282

282:                                              ; preds = %280, %279
  ret i32 0, !dbg !704
}

declare i32 @close(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @addr_any(ptr noundef) #3

declare i32 @addr_bind(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare void @addr_set_port(ptr noundef, i32 noundef) #3

declare void @stun_prepare_binding_request(ptr noundef) #3

declare i32 @stun_attr_add_response_port_str(ptr noundef, ptr noundef, i16 noundef zeroext) #3

declare i32 @stun_attr_add_change_request_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare i32 @stun_attr_add_padding_str(ptr noundef, ptr noundef, i16 noundef zeroext) #3

declare i32 @printf(ptr noundef, ...) #3

declare i32 @get_ioa_addr_len(ptr noundef) #3

declare i64 @sendto(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

declare i32 @addr_get_from_sock(i32 noundef, ptr noundef) #3

declare i32 @addr_get_port(ptr noundef) #3

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #3

declare i32 @stun_is_command_message(ptr noundef) #3

declare i32 @stun_is_response(ptr noundef) #3

declare i32 @stun_is_success_response(ptr noundef) #3

declare i32 @stun_is_binding_response(ptr noundef) #3

declare i32 @stun_attr_get_first_addr(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

declare ptr @stun_attr_get_first_by_type_str(ptr noundef, i64 noundef, i16 noundef zeroext) #3

declare i32 @stun_attr_get_addr_str(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @addr_debug_print(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @stun_is_error_response(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/stunclient/stunclient.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "33aa6c97d6e32e44b3151829f23e4b7e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 423, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 435, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "Usage", scope: !19, file: !2, line: 402, type: !233, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !79, globals: !112, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/raj/coturn/src/apps/stunclient/stunclient.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "33aa6c97d6e32e44b3151829f23e4b7e")
!21 = !{!22, !35, !66}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !23, line: 24, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!27 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!28 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!29 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!30 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!31 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!32 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!33 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!34 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 40, baseType: !24, size: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!38 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!39 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!40 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!41 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!42 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!43 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!44 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!45 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!46 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!47 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!48 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!49 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!50 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!51 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!52 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!53 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!54 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!55 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!56 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!57 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!58 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!59 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!60 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!61 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!62 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!63 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!64 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!65 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !67, line: 85, baseType: !24, size: 32, elements: !68)
!67 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!69 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!70 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!71 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!72 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!73 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!74 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!75 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!76 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!77 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!78 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!79 = !{!80, !82, !83, !90, !91, !95, !98, !109, !92}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !86, line: 24, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !88, line: 38, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !86, line: 25, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !88, line: 40, baseType: !97)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !100, line: 180, size: 128, elements: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!101 = !{!102, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !99, file: !100, line: 182, baseType: !103, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !104, line: 28, baseType: !97)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !99, file: !100, line: 183, baseType: !106, size: 112, offset: 16)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 14)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !110, line: 274, baseType: !111)
!110 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !88, line: 210, baseType: !24)
!112 = !{!0, !7, !12, !113, !17, !158, !163, !168, !173, !178, !183, !188, !193, !198, !203, !208, !213, !218, !223, !228, !231}
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "real_local_addr", scope: !19, file: !2, line: 49, type: !115, isLocal: true, isDefinition: true)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !116, line: 48, baseType: !117)
!116 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !116, line: 44, size: 224, elements: !118)
!118 = !{!119, !120, !137}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !117, file: !116, line: 45, baseType: !99, size: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !117, file: !116, line: 46, baseType: !121, size: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !36, line: 245, size: 128, elements: !122)
!122 = !{!123, !124, !126, !133}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !121, file: !36, line: 247, baseType: !103, size: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !121, file: !36, line: 248, baseType: !125, size: 16, offset: 16)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !36, line: 123, baseType: !95)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !121, file: !36, line: 249, baseType: !127, size: 32, offset: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !36, line: 31, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !127, file: !36, line: 33, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !36, line: 30, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !86, line: 26, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !88, line: 42, baseType: !24)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !121, file: !36, line: 252, baseType: !134, size: 64, offset: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !117, file: !116, line: 47, baseType: !138, size: 224)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !36, line: 260, size: 224, elements: !139)
!139 = !{!140, !141, !142, !143, !157}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !138, file: !36, line: 262, baseType: !103, size: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !138, file: !36, line: 263, baseType: !125, size: 16, offset: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !138, file: !36, line: 264, baseType: !131, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !138, file: !36, line: 265, baseType: !144, size: 128, offset: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !36, line: 219, size: 128, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !144, file: !36, line: 226, baseType: !147, size: 128)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !144, file: !36, line: 221, size: 128, elements: !148)
!148 = !{!149, !153, !155}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !147, file: !36, line: 223, baseType: !150, size: 128)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !147, file: !36, line: 224, baseType: !154, size: 128)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !135)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !147, file: !36, line: 225, baseType: !156, size: 128)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !15)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !138, file: !36, line: 266, baseType: !131, size: 32, offset: 192)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 31)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 120, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 15)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 42)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 43)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 22)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 18)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 368, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 13)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 370, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 19)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 373, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 26)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 24)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 34)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 385, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 39)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 40)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 392, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 36)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "counter", scope: !19, file: !2, line: 50, type: !230, isLocal: true, isDefinition: true)
!230 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "udp_fd", scope: !19, file: !2, line: 48, type: !230, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 185)
!236 = !{i32 7, !"Dwarf Version", i32 5}
!237 = !{i32 2, !"Debug Info Version", i32 3}
!238 = !{i32 1, !"wchar_size", i32 4}
!239 = !{i32 8, !"PIC Level", i32 2}
!240 = !{i32 7, !"PIE Level", i32 2}
!241 = !{i32 7, !"uwtable", i32 2}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 16.0.0"}
!244 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 411, type: !245, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !248)
!245 = !DISubroutineType(types: !246)
!246 = !{!230, !230, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!248 = !{}
!249 = !DILocalVariable(name: "argc", arg: 1, scope: !244, file: !2, line: 411, type: !230)
!250 = !DILocation(line: 411, column: 14, scope: !244)
!251 = !DILocalVariable(name: "argv", arg: 2, scope: !244, file: !2, line: 411, type: !247)
!252 = !DILocation(line: 411, column: 27, scope: !244)
!253 = !DILocalVariable(name: "port", scope: !244, file: !2, line: 413, type: !230)
!254 = !DILocation(line: 413, column: 7, scope: !244)
!255 = !DILocalVariable(name: "local_addr", scope: !244, file: !2, line: 414, type: !256)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 256)
!259 = !DILocation(line: 414, column: 8, scope: !244)
!260 = !DILocalVariable(name: "c", scope: !244, file: !2, line: 415, type: !230)
!261 = !DILocation(line: 415, column: 7, scope: !244)
!262 = !DILocalVariable(name: "forceRfc5780", scope: !244, file: !2, line: 416, type: !230)
!263 = !DILocation(line: 416, column: 7, scope: !244)
!264 = !DILocation(line: 418, column: 3, scope: !244)
!265 = !DILocation(line: 419, column: 3, scope: !244)
!266 = !DILocation(line: 421, column: 3, scope: !244)
!267 = !DILocation(line: 423, column: 3, scope: !244)
!268 = !DILocation(line: 423, column: 22, scope: !244)
!269 = !DILocation(line: 423, column: 28, scope: !244)
!270 = !DILocation(line: 423, column: 15, scope: !244)
!271 = !DILocation(line: 423, column: 13, scope: !244)
!272 = !DILocation(line: 423, column: 44, scope: !244)
!273 = !DILocation(line: 424, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !244, file: !2, line: 423, column: 51)
!275 = !DILocation(line: 424, column: 5, scope: !274)
!276 = !DILocation(line: 426, column: 19, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !2, line: 424, column: 15)
!278 = !DILocation(line: 427, column: 6, scope: !277)
!279 = !DILocation(line: 429, column: 19, scope: !277)
!280 = !DILocation(line: 429, column: 14, scope: !277)
!281 = !DILocation(line: 429, column: 12, scope: !277)
!282 = !DILocation(line: 430, column: 7, scope: !277)
!283 = !DILocation(line: 432, column: 7, scope: !277)
!284 = !DILocation(line: 432, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 432, column: 7)
!286 = distinct !DILexicalBlock(scope: !277, file: !2, line: 432, column: 7)
!287 = !DILocation(line: 432, column: 7, scope: !286)
!288 = !DILocalVariable(name: "szdst", scope: !289, file: !2, line: 432, type: !92)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 432, column: 7)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 432, column: 7)
!291 = distinct !DILexicalBlock(scope: !285, file: !2, line: 432, column: 7)
!292 = !DILocation(line: 432, column: 7, scope: !289)
!293 = !DILocation(line: 432, column: 7, scope: !291)
!294 = !DILocation(line: 433, column: 7, scope: !277)
!295 = !DILocation(line: 435, column: 15, scope: !277)
!296 = !DILocation(line: 435, column: 7, scope: !277)
!297 = !DILocation(line: 436, column: 7, scope: !277)
!298 = distinct !{!298, !267, !299, !300}
!299 = !DILocation(line: 438, column: 3, scope: !244)
!300 = !{!"llvm.loop.mustprogress"}
!301 = !DILocation(line: 440, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !244, file: !2, line: 440, column: 6)
!303 = !DILocation(line: 440, column: 14, scope: !302)
!304 = !DILocation(line: 440, column: 12, scope: !302)
!305 = !DILocation(line: 440, column: 6, scope: !244)
!306 = !DILocation(line: 441, column: 13, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !2, line: 440, column: 20)
!308 = !DILocation(line: 441, column: 5, scope: !307)
!309 = !DILocation(line: 442, column: 5, scope: !307)
!310 = !DILocation(line: 445, column: 3, scope: !244)
!311 = !DILocation(line: 447, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !244, file: !2, line: 447, column: 6)
!313 = !DILocation(line: 447, column: 6, scope: !244)
!314 = !DILocation(line: 448, column: 40, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 448, column: 10)
!316 = distinct !DILexicalBlock(scope: !312, file: !2, line: 447, column: 21)
!317 = !DILocation(line: 448, column: 10, scope: !315)
!318 = !DILocation(line: 448, column: 72, scope: !315)
!319 = !DILocation(line: 448, column: 10, scope: !316)
!320 = !DILocation(line: 449, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !2, line: 448, column: 76)
!322 = !DILocation(line: 451, column: 3, scope: !316)
!323 = !DILocalVariable(name: "local_port", scope: !244, file: !2, line: 453, type: !230)
!324 = !DILocation(line: 453, column: 7, scope: !244)
!325 = !DILocalVariable(name: "rfc5780", scope: !244, file: !2, line: 454, type: !230)
!326 = !DILocation(line: 454, column: 7, scope: !244)
!327 = !DILocation(line: 456, column: 18, scope: !244)
!328 = !DILocation(line: 456, column: 23, scope: !244)
!329 = !DILocation(line: 456, column: 32, scope: !244)
!330 = !DILocation(line: 456, column: 3, scope: !244)
!331 = !DILocation(line: 458, column: 6, scope: !332)
!332 = distinct !DILexicalBlock(scope: !244, file: !2, line: 458, column: 6)
!333 = !DILocation(line: 458, column: 14, scope: !332)
!334 = !DILocation(line: 458, column: 17, scope: !332)
!335 = !DILocation(line: 458, column: 6, scope: !244)
!336 = !DILocation(line: 459, column: 19, scope: !337)
!337 = distinct !DILexicalBlock(scope: !332, file: !2, line: 458, column: 31)
!338 = !DILocation(line: 459, column: 24, scope: !337)
!339 = !DILocation(line: 459, column: 33, scope: !337)
!340 = !DILocation(line: 459, column: 61, scope: !337)
!341 = !DILocation(line: 459, column: 71, scope: !337)
!342 = !DILocation(line: 459, column: 4, scope: !337)
!343 = !DILocation(line: 460, column: 19, scope: !337)
!344 = !DILocation(line: 460, column: 24, scope: !337)
!345 = !DILocation(line: 460, column: 33, scope: !337)
!346 = !DILocation(line: 460, column: 4, scope: !337)
!347 = !DILocation(line: 461, column: 3, scope: !337)
!348 = !DILocation(line: 463, column: 3, scope: !244)
!349 = !DILocation(line: 465, column: 3, scope: !244)
!350 = distinct !DISubprogram(name: "run_stunclient", scope: !2, file: !2, line: 249, type: !351, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !248)
!351 = !DISubroutineType(types: !352)
!352 = !{!230, !80, !230, !353, !353, !230, !230, !230, !230}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!354 = !DILocalVariable(name: "rip", arg: 1, scope: !350, file: !2, line: 249, type: !80)
!355 = !DILocation(line: 249, column: 39, scope: !350)
!356 = !DILocalVariable(name: "rport", arg: 2, scope: !350, file: !2, line: 249, type: !230)
!357 = !DILocation(line: 249, column: 48, scope: !350)
!358 = !DILocalVariable(name: "port", arg: 3, scope: !350, file: !2, line: 249, type: !353)
!359 = !DILocation(line: 249, column: 60, scope: !350)
!360 = !DILocalVariable(name: "rfc5780", arg: 4, scope: !350, file: !2, line: 249, type: !353)
!361 = !DILocation(line: 249, column: 71, scope: !350)
!362 = !DILocalVariable(name: "response_port", arg: 5, scope: !350, file: !2, line: 249, type: !230)
!363 = !DILocation(line: 249, column: 84, scope: !350)
!364 = !DILocalVariable(name: "change_ip", arg: 6, scope: !350, file: !2, line: 249, type: !230)
!365 = !DILocation(line: 249, column: 103, scope: !350)
!366 = !DILocalVariable(name: "change_port", arg: 7, scope: !350, file: !2, line: 249, type: !230)
!367 = !DILocation(line: 249, column: 118, scope: !350)
!368 = !DILocalVariable(name: "padding", arg: 8, scope: !350, file: !2, line: 249, type: !230)
!369 = !DILocation(line: 249, column: 135, scope: !350)
!370 = !DILocalVariable(name: "remote_addr", scope: !350, file: !2, line: 252, type: !115)
!371 = !DILocation(line: 252, column: 11, scope: !350)
!372 = !DILocalVariable(name: "new_udp_fd", scope: !350, file: !2, line: 253, type: !230)
!373 = !DILocation(line: 253, column: 6, scope: !350)
!374 = !DILocalVariable(name: "buf", scope: !350, file: !2, line: 254, type: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !376, line: 48, baseType: !377)
!376 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !376, line: 42, size: 524224, elements: !378)
!378 = !{!379, !381, !385, !386, !387}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !377, file: !376, line: 43, baseType: !380, size: 32)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 32, elements: !15)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !377, file: !376, line: 44, baseType: !382, size: 524056, offset: 32)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 524056, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 65507)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !377, file: !376, line: 45, baseType: !92, size: 64, offset: 524096)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !377, file: !376, line: 46, baseType: !95, size: 16, offset: 524160)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !377, file: !376, line: 47, baseType: !85, size: 8, offset: 524176)
!388 = !DILocation(line: 254, column: 14, scope: !350)
!389 = !DILocation(line: 256, column: 2, scope: !350)
!390 = !DILocation(line: 257, column: 37, scope: !391)
!391 = distinct !DILexicalBlock(scope: !350, file: !2, line: 257, column: 6)
!392 = !DILocation(line: 257, column: 42, scope: !391)
!393 = !DILocation(line: 257, column: 6, scope: !391)
!394 = !DILocation(line: 257, column: 63, scope: !391)
!395 = !DILocation(line: 257, column: 6, scope: !350)
!396 = !DILocation(line: 258, column: 3, scope: !391)
!397 = !DILocation(line: 260, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !350, file: !2, line: 260, column: 6)
!399 = !DILocation(line: 260, column: 13, scope: !398)
!400 = !DILocation(line: 260, column: 6, scope: !350)
!401 = !DILocation(line: 261, column: 34, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !2, line: 260, column: 18)
!403 = !DILocation(line: 261, column: 19, scope: !402)
!404 = !DILocation(line: 261, column: 12, scope: !402)
!405 = !DILocation(line: 261, column: 10, scope: !402)
!406 = !DILocation(line: 262, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !2, line: 262, column: 7)
!408 = !DILocation(line: 262, column: 14, scope: !407)
!409 = !DILocation(line: 262, column: 7, scope: !402)
!410 = !DILocation(line: 263, column: 4, scope: !407)
!411 = !DILocation(line: 265, column: 8, scope: !412)
!412 = distinct !DILexicalBlock(scope: !402, file: !2, line: 265, column: 7)
!413 = !DILocation(line: 265, column: 7, scope: !402)
!414 = !DILocation(line: 266, column: 18, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 266, column: 8)
!416 = distinct !DILexicalBlock(scope: !412, file: !2, line: 265, column: 36)
!417 = !DILocation(line: 266, column: 8, scope: !415)
!418 = !DILocation(line: 266, column: 59, scope: !415)
!419 = !DILocation(line: 266, column: 8, scope: !416)
!420 = !DILocation(line: 267, column: 5, scope: !415)
!421 = !DILocation(line: 268, column: 3, scope: !416)
!422 = !DILocation(line: 269, column: 2, scope: !402)
!423 = !DILocation(line: 271, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !350, file: !2, line: 271, column: 6)
!425 = !DILocation(line: 271, column: 20, scope: !424)
!426 = !DILocation(line: 271, column: 6, scope: !350)
!427 = !DILocation(line: 273, column: 38, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !2, line: 271, column: 26)
!429 = !DILocation(line: 273, column: 23, scope: !428)
!430 = !DILocation(line: 273, column: 16, scope: !428)
!431 = !DILocation(line: 273, column: 14, scope: !428)
!432 = !DILocation(line: 274, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !428, file: !2, line: 274, column: 7)
!434 = !DILocation(line: 274, column: 18, scope: !433)
!435 = !DILocation(line: 274, column: 7, scope: !428)
!436 = !DILocation(line: 275, column: 4, scope: !433)
!437 = !DILocation(line: 277, column: 35, scope: !428)
!438 = !DILocation(line: 277, column: 3, scope: !428)
!439 = !DILocation(line: 279, column: 17, scope: !440)
!440 = distinct !DILexicalBlock(scope: !428, file: !2, line: 279, column: 7)
!441 = !DILocation(line: 279, column: 7, scope: !440)
!442 = !DILocation(line: 279, column: 62, scope: !440)
!443 = !DILocation(line: 279, column: 7, scope: !428)
!444 = !DILocation(line: 280, column: 4, scope: !440)
!445 = !DILocation(line: 281, column: 2, scope: !428)
!446 = !DILocation(line: 283, column: 2, scope: !350)
!447 = !DILocation(line: 285, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !350, file: !2, line: 285, column: 6)
!449 = !DILocation(line: 285, column: 20, scope: !448)
!450 = !DILocation(line: 285, column: 6, scope: !350)
!451 = !DILocation(line: 286, column: 51, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !2, line: 285, column: 26)
!453 = !DILocation(line: 286, column: 46, scope: !452)
!454 = !DILocation(line: 286, column: 73, scope: !452)
!455 = !DILocation(line: 286, column: 90, scope: !452)
!456 = !DILocation(line: 286, column: 79, scope: !452)
!457 = !DILocation(line: 286, column: 3, scope: !452)
!458 = !DILocation(line: 287, column: 2, scope: !452)
!459 = !DILocation(line: 288, column: 6, scope: !460)
!460 = distinct !DILexicalBlock(scope: !350, file: !2, line: 288, column: 6)
!461 = !DILocation(line: 288, column: 16, scope: !460)
!462 = !DILocation(line: 288, column: 19, scope: !460)
!463 = !DILocation(line: 288, column: 6, scope: !350)
!464 = !DILocation(line: 289, column: 51, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !2, line: 288, column: 32)
!466 = !DILocation(line: 289, column: 47, scope: !465)
!467 = !DILocation(line: 289, column: 72, scope: !465)
!468 = !DILocation(line: 289, column: 78, scope: !465)
!469 = !DILocation(line: 289, column: 89, scope: !465)
!470 = !DILocation(line: 289, column: 3, scope: !465)
!471 = !DILocation(line: 290, column: 2, scope: !465)
!472 = !DILocation(line: 291, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !350, file: !2, line: 291, column: 6)
!474 = !DILocation(line: 291, column: 6, scope: !350)
!475 = !DILocation(line: 292, column: 47, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !2, line: 292, column: 6)
!477 = distinct !DILexicalBlock(scope: !473, file: !2, line: 291, column: 15)
!478 = !DILocation(line: 292, column: 43, scope: !476)
!479 = !DILocation(line: 292, column: 68, scope: !476)
!480 = !DILocation(line: 292, column: 6, scope: !476)
!481 = !DILocation(line: 292, column: 79, scope: !476)
!482 = !DILocation(line: 292, column: 6, scope: !477)
!483 = !DILocation(line: 293, column: 4, scope: !484)
!484 = distinct !DILexicalBlock(scope: !476, file: !2, line: 292, column: 83)
!485 = !DILocation(line: 294, column: 3, scope: !484)
!486 = !DILocation(line: 295, column: 2, scope: !477)
!487 = !DILocalVariable(name: "len", scope: !488, file: !2, line: 298, type: !230)
!488 = distinct !DILexicalBlock(scope: !350, file: !2, line: 297, column: 2)
!489 = !DILocation(line: 298, column: 7, scope: !488)
!490 = !DILocalVariable(name: "slen", scope: !488, file: !2, line: 299, type: !230)
!491 = !DILocation(line: 299, column: 7, scope: !488)
!492 = !DILocation(line: 299, column: 14, scope: !488)
!493 = !DILocation(line: 301, column: 3, scope: !488)
!494 = !DILocation(line: 302, column: 17, scope: !495)
!495 = distinct !DILexicalBlock(scope: !488, file: !2, line: 301, column: 6)
!496 = !DILocation(line: 302, column: 29, scope: !495)
!497 = !DILocation(line: 302, column: 25, scope: !495)
!498 = !DILocation(line: 302, column: 38, scope: !495)
!499 = !DILocation(line: 302, column: 91, scope: !495)
!500 = !DILocation(line: 302, column: 10, scope: !495)
!501 = !DILocation(line: 302, column: 8, scope: !495)
!502 = !DILocation(line: 303, column: 3, scope: !495)
!503 = !DILocation(line: 303, column: 12, scope: !488)
!504 = !DILocation(line: 303, column: 16, scope: !488)
!505 = !DILocation(line: 303, column: 20, scope: !488)
!506 = !DILocation(line: 303, column: 25, scope: !488)
!507 = !DILocation(line: 303, column: 31, scope: !488)
!508 = !DILocation(line: 303, column: 41, scope: !488)
!509 = !DILocation(line: 303, column: 45, scope: !488)
!510 = !DILocation(line: 303, column: 51, scope: !488)
!511 = !DILocation(line: 303, column: 63, scope: !488)
!512 = !DILocation(line: 303, column: 67, scope: !488)
!513 = !DILocation(line: 303, column: 73, scope: !488)
!514 = !DILocation(line: 0, scope: !488)
!515 = distinct !{!515, !493, !516, !300}
!516 = !DILocation(line: 303, column: 84, scope: !488)
!517 = !DILocation(line: 305, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !488, file: !2, line: 305, column: 7)
!519 = !DILocation(line: 305, column: 11, scope: !518)
!520 = !DILocation(line: 305, column: 7, scope: !488)
!521 = !DILocation(line: 306, column: 4, scope: !518)
!522 = !DILocation(line: 310, column: 25, scope: !523)
!523 = distinct !DILexicalBlock(scope: !350, file: !2, line: 310, column: 6)
!524 = !DILocation(line: 310, column: 6, scope: !523)
!525 = !DILocation(line: 310, column: 51, scope: !523)
!526 = !DILocation(line: 310, column: 6, scope: !350)
!527 = !DILocation(line: 311, column: 3, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !2, line: 310, column: 56)
!529 = !DILocation(line: 312, column: 2, scope: !528)
!530 = !DILocation(line: 313, column: 11, scope: !531)
!531 = distinct !DILexicalBlock(scope: !523, file: !2, line: 312, column: 9)
!532 = !DILocation(line: 313, column: 4, scope: !531)
!533 = !DILocation(line: 313, column: 9, scope: !531)
!534 = !DILocation(line: 317, column: 6, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 317, column: 6)
!536 = distinct !DILexicalBlock(scope: !350, file: !2, line: 316, column: 2)
!537 = !DILocation(line: 317, column: 17, scope: !535)
!538 = !DILocation(line: 317, column: 6, scope: !536)
!539 = !DILocation(line: 318, column: 4, scope: !540)
!540 = distinct !DILexicalBlock(scope: !535, file: !2, line: 317, column: 23)
!541 = !DILocation(line: 319, column: 13, scope: !540)
!542 = !DILocation(line: 319, column: 11, scope: !540)
!543 = !DILocation(line: 320, column: 15, scope: !540)
!544 = !DILocation(line: 321, column: 3, scope: !540)
!545 = !DILocalVariable(name: "len", scope: !546, file: !2, line: 325, type: !230)
!546 = distinct !DILexicalBlock(scope: !350, file: !2, line: 324, column: 2)
!547 = !DILocation(line: 325, column: 7, scope: !546)
!548 = !DILocalVariable(name: "ptr", scope: !546, file: !2, line: 326, type: !90)
!549 = !DILocation(line: 326, column: 12, scope: !546)
!550 = !DILocation(line: 326, column: 22, scope: !546)
!551 = !DILocation(line: 326, column: 18, scope: !546)
!552 = !DILocalVariable(name: "recvd", scope: !546, file: !2, line: 327, type: !230)
!553 = !DILocation(line: 327, column: 7, scope: !546)
!554 = !DILocalVariable(name: "to_recv", scope: !546, file: !2, line: 328, type: !555)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!556 = !DILocation(line: 328, column: 13, scope: !546)
!557 = !DILocation(line: 330, column: 3, scope: !546)
!558 = !DILocation(line: 331, column: 15, scope: !559)
!559 = distinct !DILexicalBlock(scope: !546, file: !2, line: 330, column: 6)
!560 = !DILocation(line: 331, column: 23, scope: !559)
!561 = !DILocation(line: 331, column: 38, scope: !559)
!562 = !DILocation(line: 331, column: 36, scope: !559)
!563 = !DILocation(line: 331, column: 28, scope: !559)
!564 = !DILocation(line: 331, column: 10, scope: !559)
!565 = !DILocation(line: 331, column: 8, scope: !559)
!566 = !DILocation(line: 332, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !559, file: !2, line: 332, column: 8)
!568 = !DILocation(line: 332, column: 12, scope: !567)
!569 = !DILocation(line: 332, column: 8, scope: !559)
!570 = !DILocation(line: 333, column: 14, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !2, line: 332, column: 17)
!572 = !DILocation(line: 333, column: 11, scope: !571)
!573 = !DILocation(line: 334, column: 12, scope: !571)
!574 = !DILocation(line: 334, column: 9, scope: !571)
!575 = !DILocation(line: 335, column: 5, scope: !571)
!576 = !DILocation(line: 337, column: 3, scope: !559)
!577 = !DILocation(line: 337, column: 12, scope: !546)
!578 = !DILocation(line: 337, column: 16, scope: !546)
!579 = !DILocation(line: 337, column: 20, scope: !546)
!580 = !DILocation(line: 337, column: 25, scope: !546)
!581 = !DILocation(line: 337, column: 31, scope: !546)
!582 = !DILocation(line: 337, column: 41, scope: !546)
!583 = !DILocation(line: 337, column: 45, scope: !546)
!584 = !DILocation(line: 337, column: 51, scope: !546)
!585 = !DILocation(line: 0, scope: !546)
!586 = distinct !{!586, !557, !587, !300}
!587 = !DILocation(line: 337, column: 62, scope: !546)
!588 = !DILocation(line: 339, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !546, file: !2, line: 339, column: 7)
!590 = !DILocation(line: 339, column: 13, scope: !589)
!591 = !DILocation(line: 339, column: 7, scope: !546)
!592 = !DILocation(line: 340, column: 10, scope: !589)
!593 = !DILocation(line: 340, column: 8, scope: !589)
!594 = !DILocation(line: 340, column: 4, scope: !589)
!595 = !DILocation(line: 341, column: 13, scope: !546)
!596 = !DILocation(line: 341, column: 7, scope: !546)
!597 = !DILocation(line: 341, column: 11, scope: !546)
!598 = !DILocation(line: 343, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !546, file: !2, line: 343, column: 7)
!600 = !DILocation(line: 343, column: 7, scope: !546)
!601 = !DILocation(line: 345, column: 8, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !2, line: 345, column: 8)
!603 = distinct !DILexicalBlock(scope: !599, file: !2, line: 343, column: 38)
!604 = !DILocation(line: 345, column: 8, scope: !603)
!605 = !DILocation(line: 347, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !2, line: 347, column: 9)
!607 = distinct !DILexicalBlock(scope: !602, file: !2, line: 345, column: 32)
!608 = !DILocation(line: 347, column: 9, scope: !607)
!609 = !DILocation(line: 349, column: 10, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !2, line: 349, column: 10)
!611 = distinct !DILexicalBlock(scope: !606, file: !2, line: 347, column: 41)
!612 = !DILocation(line: 349, column: 10, scope: !611)
!613 = !DILocalVariable(name: "reflexive_addr", scope: !614, file: !2, line: 351, type: !115)
!614 = distinct !DILexicalBlock(scope: !610, file: !2, line: 349, column: 42)
!615 = !DILocation(line: 351, column: 16, scope: !614)
!616 = !DILocation(line: 352, column: 7, scope: !614)
!617 = !DILocation(line: 353, column: 11, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !2, line: 353, column: 11)
!619 = !DILocation(line: 353, column: 100, scope: !618)
!620 = !DILocation(line: 353, column: 11, scope: !614)
!621 = !DILocalVariable(name: "sar", scope: !622, file: !2, line: 355, type: !623)
!622 = distinct !DILexicalBlock(scope: !618, file: !2, line: 353, column: 106)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_attr_ref", file: !624, line: 71, baseType: !625)
!624 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!627 = !DILocation(line: 355, column: 22, scope: !622)
!628 = !DILocation(line: 355, column: 64, scope: !622)
!629 = !DILocation(line: 355, column: 60, scope: !622)
!630 = !DILocation(line: 355, column: 73, scope: !622)
!631 = !DILocation(line: 355, column: 28, scope: !622)
!632 = !DILocation(line: 356, column: 12, scope: !633)
!633 = distinct !DILexicalBlock(scope: !622, file: !2, line: 356, column: 12)
!634 = !DILocation(line: 356, column: 12, scope: !622)
!635 = !DILocation(line: 357, column: 10, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !2, line: 356, column: 17)
!637 = !DILocation(line: 357, column: 18, scope: !636)
!638 = !DILocation(line: 358, column: 9, scope: !636)
!639 = !DILocation(line: 359, column: 41, scope: !636)
!640 = !DILocation(line: 359, column: 9, scope: !636)
!641 = !DILocalVariable(name: "other_addr", scope: !636, file: !2, line: 360, type: !115)
!642 = !DILocation(line: 360, column: 18, scope: !636)
!643 = !DILocation(line: 361, column: 48, scope: !636)
!644 = !DILocation(line: 361, column: 44, scope: !636)
!645 = !DILocation(line: 361, column: 66, scope: !636)
!646 = !DILocation(line: 361, column: 71, scope: !636)
!647 = !DILocation(line: 361, column: 9, scope: !636)
!648 = !DILocation(line: 362, column: 51, scope: !636)
!649 = !DILocation(line: 362, column: 47, scope: !636)
!650 = !DILocation(line: 362, column: 60, scope: !636)
!651 = !DILocation(line: 362, column: 15, scope: !636)
!652 = !DILocation(line: 362, column: 13, scope: !636)
!653 = !DILocation(line: 363, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !636, file: !2, line: 363, column: 13)
!655 = !DILocation(line: 363, column: 13, scope: !636)
!656 = !DILocalVariable(name: "response_origin", scope: !657, file: !2, line: 364, type: !115)
!657 = distinct !DILexicalBlock(scope: !654, file: !2, line: 363, column: 18)
!658 = !DILocation(line: 364, column: 19, scope: !657)
!659 = !DILocation(line: 365, column: 49, scope: !657)
!660 = !DILocation(line: 365, column: 45, scope: !657)
!661 = !DILocation(line: 365, column: 67, scope: !657)
!662 = !DILocation(line: 365, column: 72, scope: !657)
!663 = !DILocation(line: 365, column: 10, scope: !657)
!664 = !DILocation(line: 366, column: 10, scope: !657)
!665 = !DILocation(line: 367, column: 9, scope: !657)
!666 = !DILocation(line: 368, column: 9, scope: !636)
!667 = !DILocation(line: 369, column: 8, scope: !636)
!668 = !DILocation(line: 370, column: 8, scope: !622)
!669 = !DILocation(line: 372, column: 7, scope: !622)
!670 = !DILocation(line: 373, column: 8, scope: !671)
!671 = distinct !DILexicalBlock(scope: !618, file: !2, line: 372, column: 14)
!672 = !DILocation(line: 375, column: 6, scope: !614)
!673 = !DILocation(line: 376, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !610, file: !2, line: 375, column: 13)
!675 = !DILocation(line: 378, column: 5, scope: !611)
!676 = !DILocalVariable(name: "err_code", scope: !677, file: !2, line: 379, type: !230)
!677 = distinct !DILexicalBlock(scope: !606, file: !2, line: 378, column: 12)
!678 = !DILocation(line: 379, column: 10, scope: !677)
!679 = !DILocalVariable(name: "err_msg", scope: !677, file: !2, line: 380, type: !680)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 8200, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 1025)
!683 = !DILocation(line: 380, column: 14, scope: !677)
!684 = !DILocalVariable(name: "err_msg_size", scope: !677, file: !2, line: 381, type: !92)
!685 = !DILocation(line: 381, column: 13, scope: !677)
!686 = !DILocation(line: 382, column: 50, scope: !687)
!687 = distinct !DILexicalBlock(scope: !677, file: !2, line: 382, column: 10)
!688 = !DILocation(line: 382, column: 59, scope: !687)
!689 = !DILocation(line: 382, column: 10, scope: !687)
!690 = !DILocation(line: 382, column: 10, scope: !677)
!691 = !DILocation(line: 383, column: 52, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !2, line: 382, column: 74)
!693 = !DILocation(line: 383, column: 70, scope: !692)
!694 = !DILocation(line: 383, column: 7, scope: !692)
!695 = !DILocation(line: 384, column: 6, scope: !692)
!696 = !DILocation(line: 385, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !687, file: !2, line: 384, column: 13)
!698 = !DILocation(line: 388, column: 4, scope: !607)
!699 = !DILocation(line: 389, column: 5, scope: !700)
!700 = distinct !DILexicalBlock(scope: !602, file: !2, line: 388, column: 11)
!701 = !DILocation(line: 391, column: 3, scope: !603)
!702 = !DILocation(line: 392, column: 4, scope: !703)
!703 = distinct !DILexicalBlock(scope: !599, file: !2, line: 391, column: 10)
!704 = !DILocation(line: 396, column: 2, scope: !350)
