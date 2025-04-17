; ModuleID = '/home/raj/coturn/src/client/ns_turn_ioaddr.c'
source_filename = "/home/raj/coturn/src/client/ns_turn_ioaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ioa_addr_range = type { %union.ioa_addr, %union.ioa_addr }
%union.ioa_addr = type { %struct.sockaddr_in6 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"error resolving '%s' hostname: %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1, !dbg !12
@msz = internal global i64 0, align 8, !dbg !17
@public_addrs = internal global ptr null, align 8, !dbg !115
@private_addrs = internal global ptr null, align 8, !dbg !117
@mcount = internal global i64 0, align 8, !dbg !119
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !108
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1, !dbg !113

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ioa_addr_len(ptr noundef %0) #0 !dbg !132 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !138, metadata !DIExpression()), !dbg !139
  %4 = load ptr, ptr %3, align 8, !dbg !140
  %5 = getelementptr inbounds %struct.sockaddr, ptr %4, i32 0, i32 0, !dbg !142
  %6 = load i16, ptr %5, align 4, !dbg !142
  %7 = zext i16 %6 to i32, !dbg !140
  %8 = icmp eq i32 %7, 2, !dbg !143
  br i1 %8, label %9, label %10, !dbg !144

9:                                                ; preds = %1
  store i32 16, ptr %2, align 4, !dbg !145
  br label %19, !dbg !145

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !146
  %12 = getelementptr inbounds %struct.sockaddr, ptr %11, i32 0, i32 0, !dbg !148
  %13 = load i16, ptr %12, align 4, !dbg !148
  %14 = zext i16 %13 to i32, !dbg !146
  %15 = icmp eq i32 %14, 10, !dbg !149
  br i1 %15, label %16, label %17, !dbg !150

16:                                               ; preds = %10
  store i32 28, ptr %2, align 4, !dbg !151
  br label %19, !dbg !151

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  store i32 0, ptr %2, align 4, !dbg !152
  br label %19, !dbg !152

19:                                               ; preds = %18, %16, %9
  %20 = load i32, ptr %2, align 4, !dbg !153
  ret i32 %20, !dbg !153
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addr_set_any(ptr noundef %0) #0 !dbg !154 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !157, metadata !DIExpression()), !dbg !158
  %3 = load ptr, ptr %2, align 8, !dbg !159
  %4 = icmp ne ptr %3, null, !dbg !159
  br i1 %4, label %5, label %7, !dbg !161

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !162
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 28, i1 false), !dbg !163
  br label %7, !dbg !163

7:                                                ; preds = %5, %1
  ret void, !dbg !164
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_any(ptr noundef %0) #0 !dbg !165 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !168, metadata !DIExpression()), !dbg !169
  %5 = load ptr, ptr %3, align 8, !dbg !170
  %6 = icmp ne ptr %5, null, !dbg !170
  br i1 %6, label %8, label %7, !dbg !172

7:                                                ; preds = %1
  store i32 1, ptr %2, align 4, !dbg !173
  br label %62, !dbg !173

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !174
  %10 = getelementptr inbounds %struct.sockaddr, ptr %9, i32 0, i32 0, !dbg !176
  %11 = load i16, ptr %10, align 4, !dbg !176
  %12 = zext i16 %11 to i32, !dbg !174
  %13 = icmp eq i32 %12, 2, !dbg !177
  br i1 %13, label %14, label %29, !dbg !178

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8, !dbg !179
  %16 = getelementptr inbounds %struct.sockaddr_in, ptr %15, i32 0, i32 2, !dbg !181
  %17 = getelementptr inbounds %struct.in_addr, ptr %16, i32 0, i32 0, !dbg !182
  %18 = load i32, ptr %17, align 4, !dbg !182
  %19 = icmp eq i32 %18, 0, !dbg !183
  br i1 %19, label %20, label %26, !dbg !184

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 8, !dbg !185
  %22 = getelementptr inbounds %struct.sockaddr_in, ptr %21, i32 0, i32 1, !dbg !186
  %23 = load i16, ptr %22, align 2, !dbg !186
  %24 = zext i16 %23 to i32, !dbg !185
  %25 = icmp eq i32 %24, 0, !dbg !187
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ false, %14 ], [ %25, %20 ], !dbg !188
  %28 = zext i1 %27 to i32, !dbg !184
  store i32 %28, ptr %2, align 4, !dbg !189
  br label %62, !dbg !189

29:                                               ; preds = %8
  %30 = load ptr, ptr %3, align 8, !dbg !190
  %31 = getelementptr inbounds %struct.sockaddr, ptr %30, i32 0, i32 0, !dbg !192
  %32 = load i16, ptr %31, align 4, !dbg !192
  %33 = zext i16 %32 to i32, !dbg !190
  %34 = icmp eq i32 %33, 10, !dbg !193
  br i1 %34, label %35, label %60, !dbg !194

35:                                               ; preds = %29
  %36 = load ptr, ptr %3, align 8, !dbg !195
  %37 = getelementptr inbounds %struct.sockaddr_in6, ptr %36, i32 0, i32 1, !dbg !198
  %38 = load i16, ptr %37, align 2, !dbg !198
  %39 = zext i16 %38 to i32, !dbg !195
  %40 = icmp ne i32 %39, 0, !dbg !199
  br i1 %40, label %41, label %42, !dbg !200

41:                                               ; preds = %35
  store i32 0, ptr %2, align 4, !dbg !201
  br label %62, !dbg !201

42:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %4, metadata !202, metadata !DIExpression()), !dbg !204
  store i64 0, ptr %4, align 8, !dbg !205
  br label %43, !dbg !207

43:                                               ; preds = %55, %42
  %44 = load i64, ptr %4, align 8, !dbg !208
  %45 = icmp ult i64 %44, 16, !dbg !210
  br i1 %45, label %46, label %58, !dbg !211

46:                                               ; preds = %43
  %47 = load ptr, ptr %3, align 8, !dbg !212
  %48 = getelementptr inbounds %struct.sockaddr_in6, ptr %47, i32 0, i32 3, !dbg !214
  %49 = load i64, ptr %4, align 8, !dbg !215
  %50 = getelementptr inbounds i8, ptr %48, i64 %49, !dbg !216
  %51 = load i8, ptr %50, align 1, !dbg !216
  %52 = icmp ne i8 %51, 0, !dbg !216
  br i1 %52, label %53, label %54, !dbg !217

53:                                               ; preds = %46
  store i32 0, ptr %2, align 4, !dbg !218
  br label %62, !dbg !218

54:                                               ; preds = %46
  br label %55, !dbg !219

55:                                               ; preds = %54
  %56 = load i64, ptr %4, align 8, !dbg !220
  %57 = add i64 %56, 1, !dbg !220
  store i64 %57, ptr %4, align 8, !dbg !220
  br label %43, !dbg !221, !llvm.loop !222

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  br label %60, !dbg !225

60:                                               ; preds = %59, %29
  br label %61

61:                                               ; preds = %60
  store i32 1, ptr %2, align 4, !dbg !226
  br label %62, !dbg !226

62:                                               ; preds = %61, %53, %41, %26, %7
  %63 = load i32, ptr %2, align 4, !dbg !227
  ret i32 %63, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_any_no_port(ptr noundef %0) #0 !dbg !228 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !229, metadata !DIExpression()), !dbg !230
  %5 = load ptr, ptr %3, align 8, !dbg !231
  %6 = icmp ne ptr %5, null, !dbg !231
  br i1 %6, label %8, label %7, !dbg !233

7:                                                ; preds = %1
  store i32 1, ptr %2, align 4, !dbg !234
  br label %46, !dbg !234

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !235
  %10 = getelementptr inbounds %struct.sockaddr, ptr %9, i32 0, i32 0, !dbg !237
  %11 = load i16, ptr %10, align 4, !dbg !237
  %12 = zext i16 %11 to i32, !dbg !235
  %13 = icmp eq i32 %12, 2, !dbg !238
  br i1 %13, label %14, label %21, !dbg !239

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8, !dbg !240
  %16 = getelementptr inbounds %struct.sockaddr_in, ptr %15, i32 0, i32 2, !dbg !242
  %17 = getelementptr inbounds %struct.in_addr, ptr %16, i32 0, i32 0, !dbg !243
  %18 = load i32, ptr %17, align 4, !dbg !243
  %19 = icmp eq i32 %18, 0, !dbg !244
  %20 = zext i1 %19 to i32, !dbg !244
  store i32 %20, ptr %2, align 4, !dbg !245
  br label %46, !dbg !245

21:                                               ; preds = %8
  %22 = load ptr, ptr %3, align 8, !dbg !246
  %23 = getelementptr inbounds %struct.sockaddr, ptr %22, i32 0, i32 0, !dbg !248
  %24 = load i16, ptr %23, align 4, !dbg !248
  %25 = zext i16 %24 to i32, !dbg !246
  %26 = icmp eq i32 %25, 10, !dbg !249
  br i1 %26, label %27, label %44, !dbg !250

27:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %4, metadata !251, metadata !DIExpression()), !dbg !253
  store i64 0, ptr %4, align 8, !dbg !254
  br label %28, !dbg !256

28:                                               ; preds = %40, %27
  %29 = load i64, ptr %4, align 8, !dbg !257
  %30 = icmp ult i64 %29, 16, !dbg !259
  br i1 %30, label %31, label %43, !dbg !260

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8, !dbg !261
  %33 = getelementptr inbounds %struct.sockaddr_in6, ptr %32, i32 0, i32 3, !dbg !263
  %34 = load i64, ptr %4, align 8, !dbg !264
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !265
  %36 = load i8, ptr %35, align 1, !dbg !265
  %37 = icmp ne i8 %36, 0, !dbg !265
  br i1 %37, label %38, label %39, !dbg !266

38:                                               ; preds = %31
  store i32 0, ptr %2, align 4, !dbg !267
  br label %46, !dbg !267

39:                                               ; preds = %31
  br label %40, !dbg !268

40:                                               ; preds = %39
  %41 = load i64, ptr %4, align 8, !dbg !269
  %42 = add i64 %41, 1, !dbg !269
  store i64 %42, ptr %4, align 8, !dbg !269
  br label %28, !dbg !270, !llvm.loop !271

43:                                               ; preds = %28
  br label %44, !dbg !273

44:                                               ; preds = %43, %21
  br label %45

45:                                               ; preds = %44
  store i32 1, ptr %2, align 4, !dbg !274
  br label %46, !dbg !274

46:                                               ; preds = %45, %38, %14, %7
  %47 = load i32, ptr %2, align 4, !dbg !275
  ret i32 %47, !dbg !275
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_int32(i32 noundef %0) #0 !dbg !276 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !279, metadata !DIExpression()), !dbg !280
  %3 = load i32, ptr %2, align 4, !dbg !281
  %4 = load i32, ptr %2, align 4, !dbg !282
  %5 = lshr i32 %4, 4, !dbg !283
  %6 = xor i32 %3, %5, !dbg !284
  store i32 %6, ptr %2, align 4, !dbg !285
  %7 = load i32, ptr %2, align 4, !dbg !286
  %8 = xor i32 %7, -559038737, !dbg !287
  %9 = load i32, ptr %2, align 4, !dbg !288
  %10 = shl i32 %9, 5, !dbg !289
  %11 = add i32 %8, %10, !dbg !290
  store i32 %11, ptr %2, align 4, !dbg !291
  %12 = load i32, ptr %2, align 4, !dbg !292
  %13 = load i32, ptr %2, align 4, !dbg !293
  %14 = lshr i32 %13, 11, !dbg !294
  %15 = xor i32 %12, %14, !dbg !295
  store i32 %15, ptr %2, align 4, !dbg !296
  %16 = load i32, ptr %2, align 4, !dbg !297
  ret i32 %16, !dbg !298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hash_int64(i64 noundef %0) #0 !dbg !299 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load i64, ptr %2, align 8, !dbg !306
  %4 = load i64, ptr %2, align 8, !dbg !307
  %5 = lshr i64 %4, 4, !dbg !308
  %6 = xor i64 %3, %5, !dbg !309
  store i64 %6, ptr %2, align 8, !dbg !310
  %7 = load i64, ptr %2, align 8, !dbg !311
  %8 = xor i64 %7, -2401053088876216593, !dbg !312
  %9 = load i64, ptr %2, align 8, !dbg !313
  %10 = shl i64 %9, 5, !dbg !314
  %11 = add i64 %8, %10, !dbg !315
  store i64 %11, ptr %2, align 8, !dbg !316
  %12 = load i64, ptr %2, align 8, !dbg !317
  %13 = load i64, ptr %2, align 8, !dbg !318
  %14 = lshr i64 %13, 11, !dbg !319
  %15 = xor i64 %12, %14, !dbg !320
  store i64 %15, ptr %2, align 8, !dbg !321
  %16 = load i64, ptr %2, align 8, !dbg !322
  ret i64 %16, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_hash(ptr noundef %0) #0 !dbg !324 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !325, metadata !DIExpression()), !dbg !326
  %6 = load ptr, ptr %3, align 8, !dbg !327
  %7 = icmp ne ptr %6, null, !dbg !327
  br i1 %7, label %9, label %8, !dbg !329

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !330
  br label %45, !dbg !330

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !331, metadata !DIExpression()), !dbg !332
  store i32 0, ptr %4, align 4, !dbg !332
  %10 = load ptr, ptr %3, align 8, !dbg !333
  %11 = getelementptr inbounds %struct.sockaddr, ptr %10, i32 0, i32 0, !dbg !335
  %12 = load i16, ptr %11, align 4, !dbg !335
  %13 = zext i16 %12 to i32, !dbg !333
  %14 = icmp eq i32 %13, 2, !dbg !336
  br i1 %14, label %15, label %26, !dbg !337

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8, !dbg !338
  %17 = getelementptr inbounds %struct.sockaddr_in, ptr %16, i32 0, i32 2, !dbg !340
  %18 = getelementptr inbounds %struct.in_addr, ptr %17, i32 0, i32 0, !dbg !341
  %19 = load i32, ptr %18, align 4, !dbg !341
  %20 = load ptr, ptr %3, align 8, !dbg !342
  %21 = getelementptr inbounds %struct.sockaddr_in, ptr %20, i32 0, i32 1, !dbg !343
  %22 = load i16, ptr %21, align 2, !dbg !343
  %23 = zext i16 %22 to i32, !dbg !342
  %24 = add i32 %19, %23, !dbg !344
  %25 = call i32 @hash_int32(i32 noundef %24), !dbg !345
  store i32 %25, ptr %4, align 4, !dbg !346
  br label %43, !dbg !347

26:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %5, metadata !348, metadata !DIExpression()), !dbg !351
  %27 = load ptr, ptr %3, align 8, !dbg !352
  %28 = getelementptr inbounds %struct.sockaddr_in6, ptr %27, i32 0, i32 3, !dbg !353
  call void @bcopy(ptr noundef %28, ptr noundef %5, i64 noundef 16) #9, !dbg !354
  %29 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 0, !dbg !355
  %30 = load i64, ptr %29, align 16, !dbg !355
  %31 = call i64 @hash_int64(i64 noundef %30), !dbg !356
  %32 = shl i64 %31, 3, !dbg !357
  %33 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1, !dbg !358
  %34 = load i64, ptr %33, align 8, !dbg !358
  %35 = load ptr, ptr %3, align 8, !dbg !359
  %36 = getelementptr inbounds %struct.sockaddr_in6, ptr %35, i32 0, i32 1, !dbg !360
  %37 = load i16, ptr %36, align 2, !dbg !360
  %38 = zext i16 %37 to i64, !dbg !359
  %39 = add i64 %34, %38, !dbg !361
  %40 = call i64 @hash_int64(i64 noundef %39), !dbg !362
  %41 = add i64 %32, %40, !dbg !363
  %42 = trunc i64 %41 to i32, !dbg !364
  store i32 %42, ptr %4, align 4, !dbg !365
  br label %43

43:                                               ; preds = %26, %15
  %44 = load i32, ptr %4, align 4, !dbg !366
  store i32 %44, ptr %2, align 4, !dbg !367
  br label %45, !dbg !367

45:                                               ; preds = %43, %8
  %46 = load i32, ptr %2, align 4, !dbg !368
  ret i32 %46, !dbg !368
}

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_hash_no_port(ptr noundef %0) #0 !dbg !369 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !370, metadata !DIExpression()), !dbg !371
  %6 = load ptr, ptr %3, align 8, !dbg !372
  %7 = icmp ne ptr %6, null, !dbg !372
  br i1 %7, label %9, label %8, !dbg !374

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !375
  br label %35, !dbg !375

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !376, metadata !DIExpression()), !dbg !377
  store i32 0, ptr %4, align 4, !dbg !377
  %10 = load ptr, ptr %3, align 8, !dbg !378
  %11 = getelementptr inbounds %struct.sockaddr, ptr %10, i32 0, i32 0, !dbg !380
  %12 = load i16, ptr %11, align 4, !dbg !380
  %13 = zext i16 %12 to i32, !dbg !378
  %14 = icmp eq i32 %13, 2, !dbg !381
  br i1 %14, label %15, label %21, !dbg !382

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8, !dbg !383
  %17 = getelementptr inbounds %struct.sockaddr_in, ptr %16, i32 0, i32 2, !dbg !385
  %18 = getelementptr inbounds %struct.in_addr, ptr %17, i32 0, i32 0, !dbg !386
  %19 = load i32, ptr %18, align 4, !dbg !386
  %20 = call i32 @hash_int32(i32 noundef %19), !dbg !387
  store i32 %20, ptr %4, align 4, !dbg !388
  br label %33, !dbg !389

21:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %5, metadata !390, metadata !DIExpression()), !dbg !392
  %22 = load ptr, ptr %3, align 8, !dbg !393
  %23 = getelementptr inbounds %struct.sockaddr_in6, ptr %22, i32 0, i32 3, !dbg !394
  call void @bcopy(ptr noundef %23, ptr noundef %5, i64 noundef 16) #9, !dbg !395
  %24 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 0, !dbg !396
  %25 = load i64, ptr %24, align 16, !dbg !396
  %26 = call i64 @hash_int64(i64 noundef %25), !dbg !397
  %27 = shl i64 %26, 3, !dbg !398
  %28 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1, !dbg !399
  %29 = load i64, ptr %28, align 8, !dbg !399
  %30 = call i64 @hash_int64(i64 noundef %29), !dbg !400
  %31 = add i64 %27, %30, !dbg !401
  %32 = trunc i64 %31 to i32, !dbg !402
  store i32 %32, ptr %4, align 4, !dbg !403
  br label %33

33:                                               ; preds = %21, %15
  %34 = load i32, ptr %4, align 4, !dbg !404
  store i32 %34, ptr %2, align 4, !dbg !405
  br label %35, !dbg !405

35:                                               ; preds = %33, %8
  %36 = load i32, ptr %2, align 4, !dbg !406
  ret i32 %36, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addr_cpy(ptr noundef %0, ptr noundef %1) #0 !dbg !407 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !410, metadata !DIExpression()), !dbg !411
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !412, metadata !DIExpression()), !dbg !413
  %5 = load ptr, ptr %3, align 8, !dbg !414
  %6 = icmp ne ptr %5, null, !dbg !414
  br i1 %6, label %7, label %13, !dbg !416

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !417
  %9 = icmp ne ptr %8, null, !dbg !417
  br i1 %9, label %10, label %13, !dbg !418

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !dbg !419
  %12 = load ptr, ptr %3, align 8, !dbg !420
  call void @bcopy(ptr noundef %11, ptr noundef %12, i64 noundef 28) #9, !dbg !421
  br label %13, !dbg !421

13:                                               ; preds = %10, %7, %2
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addr_cpy4(ptr noundef %0, ptr noundef %1) #0 !dbg !423 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !428, metadata !DIExpression()), !dbg !429
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !430, metadata !DIExpression()), !dbg !431
  %5 = load ptr, ptr %4, align 8, !dbg !432
  %6 = icmp ne ptr %5, null, !dbg !432
  br i1 %6, label %7, label %13, !dbg !434

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !435
  %9 = icmp ne ptr %8, null, !dbg !435
  br i1 %9, label %10, label %13, !dbg !436

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !dbg !437
  %12 = load ptr, ptr %3, align 8, !dbg !438
  call void @bcopy(ptr noundef %11, ptr noundef %12, i64 noundef 16) #9, !dbg !439
  br label %13, !dbg !439

13:                                               ; preds = %10, %7, %2
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addr_cpy6(ptr noundef %0, ptr noundef %1) #0 !dbg !441 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !446, metadata !DIExpression()), !dbg !447
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !448, metadata !DIExpression()), !dbg !449
  %5 = load ptr, ptr %4, align 8, !dbg !450
  %6 = icmp ne ptr %5, null, !dbg !450
  br i1 %6, label %7, label %13, !dbg !452

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !453
  %9 = icmp ne ptr %8, null, !dbg !453
  br i1 %9, label %10, label %13, !dbg !454

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !dbg !455
  %12 = load ptr, ptr %3, align 8, !dbg !456
  call void @bcopy(ptr noundef %11, ptr noundef %12, i64 noundef 28) #9, !dbg !457
  br label %13, !dbg !457

13:                                               ; preds = %10, %7, %2
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_eq(ptr noundef %0, ptr noundef %1) #0 !dbg !459 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !462, metadata !DIExpression()), !dbg !463
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !464, metadata !DIExpression()), !dbg !465
  %6 = load ptr, ptr %4, align 8, !dbg !466
  %7 = icmp ne ptr %6, null, !dbg !466
  br i1 %7, label %13, label %8, !dbg !468

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8, !dbg !469
  %10 = icmp ne ptr %9, null, !dbg !470
  %11 = xor i1 %10, true, !dbg !470
  %12 = zext i1 %11 to i32, !dbg !470
  store i32 %12, ptr %3, align 4, !dbg !471
  br label %88, !dbg !471

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8, !dbg !472
  %15 = icmp ne ptr %14, null, !dbg !472
  br i1 %15, label %21, label %16, !dbg !474

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8, !dbg !475
  %18 = icmp ne ptr %17, null, !dbg !476
  %19 = xor i1 %18, true, !dbg !476
  %20 = zext i1 %19 to i32, !dbg !476
  store i32 %20, ptr %3, align 4, !dbg !477
  br label %88, !dbg !477

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %4, align 8, !dbg !478
  %24 = getelementptr inbounds %struct.sockaddr, ptr %23, i32 0, i32 0, !dbg !480
  %25 = load i16, ptr %24, align 4, !dbg !480
  %26 = zext i16 %25 to i32, !dbg !478
  %27 = load ptr, ptr %5, align 8, !dbg !481
  %28 = getelementptr inbounds %struct.sockaddr, ptr %27, i32 0, i32 0, !dbg !482
  %29 = load i16, ptr %28, align 4, !dbg !482
  %30 = zext i16 %29 to i32, !dbg !481
  %31 = icmp eq i32 %26, %30, !dbg !483
  br i1 %31, label %32, label %87, !dbg !484

32:                                               ; preds = %22
  %33 = load ptr, ptr %4, align 8, !dbg !485
  %34 = getelementptr inbounds %struct.sockaddr, ptr %33, i32 0, i32 0, !dbg !488
  %35 = load i16, ptr %34, align 4, !dbg !488
  %36 = zext i16 %35 to i32, !dbg !485
  %37 = icmp eq i32 %36, 2, !dbg !489
  br i1 %37, label %38, label %60, !dbg !490

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 8, !dbg !491
  %40 = getelementptr inbounds %struct.sockaddr_in, ptr %39, i32 0, i32 1, !dbg !492
  %41 = load i16, ptr %40, align 2, !dbg !492
  %42 = zext i16 %41 to i32, !dbg !491
  %43 = load ptr, ptr %5, align 8, !dbg !493
  %44 = getelementptr inbounds %struct.sockaddr_in, ptr %43, i32 0, i32 1, !dbg !494
  %45 = load i16, ptr %44, align 2, !dbg !494
  %46 = zext i16 %45 to i32, !dbg !493
  %47 = icmp eq i32 %42, %46, !dbg !495
  br i1 %47, label %48, label %60, !dbg !496

48:                                               ; preds = %38
  %49 = load ptr, ptr %4, align 8, !dbg !497
  %50 = getelementptr inbounds %struct.sockaddr_in, ptr %49, i32 0, i32 2, !dbg !500
  %51 = getelementptr inbounds %struct.in_addr, ptr %50, i32 0, i32 0, !dbg !501
  %52 = load i32, ptr %51, align 4, !dbg !501
  %53 = load ptr, ptr %5, align 8, !dbg !502
  %54 = getelementptr inbounds %struct.sockaddr_in, ptr %53, i32 0, i32 2, !dbg !503
  %55 = getelementptr inbounds %struct.in_addr, ptr %54, i32 0, i32 0, !dbg !504
  %56 = load i32, ptr %55, align 4, !dbg !504
  %57 = icmp eq i32 %52, %56, !dbg !505
  br i1 %57, label %58, label %59, !dbg !506

58:                                               ; preds = %48
  store i32 1, ptr %3, align 4, !dbg !507
  br label %88, !dbg !507

59:                                               ; preds = %48
  br label %86, !dbg !509

60:                                               ; preds = %38, %32
  %61 = load ptr, ptr %4, align 8, !dbg !510
  %62 = getelementptr inbounds %struct.sockaddr, ptr %61, i32 0, i32 0, !dbg !512
  %63 = load i16, ptr %62, align 4, !dbg !512
  %64 = zext i16 %63 to i32, !dbg !510
  %65 = icmp eq i32 %64, 10, !dbg !513
  br i1 %65, label %66, label %85, !dbg !514

66:                                               ; preds = %60
  %67 = load ptr, ptr %4, align 8, !dbg !515
  %68 = getelementptr inbounds %struct.sockaddr_in6, ptr %67, i32 0, i32 1, !dbg !516
  %69 = load i16, ptr %68, align 2, !dbg !516
  %70 = zext i16 %69 to i32, !dbg !515
  %71 = load ptr, ptr %5, align 8, !dbg !517
  %72 = getelementptr inbounds %struct.sockaddr_in6, ptr %71, i32 0, i32 1, !dbg !518
  %73 = load i16, ptr %72, align 2, !dbg !518
  %74 = zext i16 %73 to i32, !dbg !517
  %75 = icmp eq i32 %70, %74, !dbg !519
  br i1 %75, label %76, label %85, !dbg !520

76:                                               ; preds = %66
  %77 = load ptr, ptr %4, align 8, !dbg !521
  %78 = getelementptr inbounds %struct.sockaddr_in6, ptr %77, i32 0, i32 3, !dbg !524
  %79 = load ptr, ptr %5, align 8, !dbg !525
  %80 = getelementptr inbounds %struct.sockaddr_in6, ptr %79, i32 0, i32 3, !dbg !526
  %81 = call i32 @memcmp(ptr noundef %78, ptr noundef %80, i64 noundef 16) #10, !dbg !527
  %82 = icmp eq i32 %81, 0, !dbg !528
  br i1 %82, label %83, label %84, !dbg !529

83:                                               ; preds = %76
  store i32 1, ptr %3, align 4, !dbg !530
  br label %88, !dbg !530

84:                                               ; preds = %76
  br label %85, !dbg !532

85:                                               ; preds = %84, %66, %60
  br label %86

86:                                               ; preds = %85, %59
  br label %87, !dbg !533

87:                                               ; preds = %86, %22
  store i32 0, ptr %3, align 4, !dbg !534
  br label %88, !dbg !534

88:                                               ; preds = %87, %83, %58, %16, %8
  %89 = load i32, ptr %3, align 4, !dbg !535
  ret i32 %89, !dbg !535
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_eq_no_port(ptr noundef %0, ptr noundef %1) #0 !dbg !536 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !537, metadata !DIExpression()), !dbg !538
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !539, metadata !DIExpression()), !dbg !540
  %6 = load ptr, ptr %4, align 8, !dbg !541
  %7 = icmp ne ptr %6, null, !dbg !541
  br i1 %7, label %13, label %8, !dbg !543

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8, !dbg !544
  %10 = icmp ne ptr %9, null, !dbg !545
  %11 = xor i1 %10, true, !dbg !545
  %12 = zext i1 %11 to i32, !dbg !545
  store i32 %12, ptr %3, align 4, !dbg !546
  br label %68, !dbg !546

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8, !dbg !547
  %15 = icmp ne ptr %14, null, !dbg !547
  br i1 %15, label %21, label %16, !dbg !549

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8, !dbg !550
  %18 = icmp ne ptr %17, null, !dbg !551
  %19 = xor i1 %18, true, !dbg !551
  %20 = zext i1 %19 to i32, !dbg !551
  store i32 %20, ptr %3, align 4, !dbg !552
  br label %68, !dbg !552

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %4, align 8, !dbg !553
  %24 = getelementptr inbounds %struct.sockaddr, ptr %23, i32 0, i32 0, !dbg !555
  %25 = load i16, ptr %24, align 4, !dbg !555
  %26 = zext i16 %25 to i32, !dbg !553
  %27 = load ptr, ptr %5, align 8, !dbg !556
  %28 = getelementptr inbounds %struct.sockaddr, ptr %27, i32 0, i32 0, !dbg !557
  %29 = load i16, ptr %28, align 4, !dbg !557
  %30 = zext i16 %29 to i32, !dbg !556
  %31 = icmp eq i32 %26, %30, !dbg !558
  br i1 %31, label %32, label %67, !dbg !559

32:                                               ; preds = %22
  %33 = load ptr, ptr %4, align 8, !dbg !560
  %34 = getelementptr inbounds %struct.sockaddr, ptr %33, i32 0, i32 0, !dbg !563
  %35 = load i16, ptr %34, align 4, !dbg !563
  %36 = zext i16 %35 to i32, !dbg !560
  %37 = icmp eq i32 %36, 2, !dbg !564
  br i1 %37, label %38, label %50, !dbg !565

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 8, !dbg !566
  %40 = getelementptr inbounds %struct.sockaddr_in, ptr %39, i32 0, i32 2, !dbg !569
  %41 = getelementptr inbounds %struct.in_addr, ptr %40, i32 0, i32 0, !dbg !570
  %42 = load i32, ptr %41, align 4, !dbg !570
  %43 = load ptr, ptr %5, align 8, !dbg !571
  %44 = getelementptr inbounds %struct.sockaddr_in, ptr %43, i32 0, i32 2, !dbg !572
  %45 = getelementptr inbounds %struct.in_addr, ptr %44, i32 0, i32 0, !dbg !573
  %46 = load i32, ptr %45, align 4, !dbg !573
  %47 = icmp eq i32 %42, %46, !dbg !574
  br i1 %47, label %48, label %49, !dbg !575

48:                                               ; preds = %38
  store i32 1, ptr %3, align 4, !dbg !576
  br label %68, !dbg !576

49:                                               ; preds = %38
  br label %66, !dbg !578

50:                                               ; preds = %32
  %51 = load ptr, ptr %4, align 8, !dbg !579
  %52 = getelementptr inbounds %struct.sockaddr, ptr %51, i32 0, i32 0, !dbg !581
  %53 = load i16, ptr %52, align 4, !dbg !581
  %54 = zext i16 %53 to i32, !dbg !579
  %55 = icmp eq i32 %54, 10, !dbg !582
  br i1 %55, label %56, label %65, !dbg !583

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8, !dbg !584
  %58 = getelementptr inbounds %struct.sockaddr_in6, ptr %57, i32 0, i32 3, !dbg !587
  %59 = load ptr, ptr %5, align 8, !dbg !588
  %60 = getelementptr inbounds %struct.sockaddr_in6, ptr %59, i32 0, i32 3, !dbg !589
  %61 = call i32 @memcmp(ptr noundef %58, ptr noundef %60, i64 noundef 16) #10, !dbg !590
  %62 = icmp eq i32 %61, 0, !dbg !591
  br i1 %62, label %63, label %64, !dbg !592

63:                                               ; preds = %56
  store i32 1, ptr %3, align 4, !dbg !593
  br label %68, !dbg !593

64:                                               ; preds = %56
  br label %65, !dbg !595

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %49
  br label %67, !dbg !596

67:                                               ; preds = %66, %22
  store i32 0, ptr %3, align 4, !dbg !597
  br label %68, !dbg !597

68:                                               ; preds = %67, %63, %48, %16, %8
  %69 = load i32, ptr %3, align 4, !dbg !598
  ret i32 %69, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_ioa_addr(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !599 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca [257 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !602, metadata !DIExpression()), !dbg !603
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !604, metadata !DIExpression()), !dbg !605
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !606, metadata !DIExpression()), !dbg !607
  %18 = load ptr, ptr %5, align 8, !dbg !608
  %19 = icmp ne ptr %18, null, !dbg !608
  br i1 %19, label %20, label %23, !dbg !610

20:                                               ; preds = %3
  %21 = load ptr, ptr %7, align 8, !dbg !611
  %22 = icmp ne ptr %21, null, !dbg !611
  br i1 %22, label %24, label %23, !dbg !612

23:                                               ; preds = %20, %3
  store i32 -1, ptr %4, align 4, !dbg !613
  br label %193, !dbg !613

24:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %8, metadata !614, metadata !DIExpression()), !dbg !618
  br label %25, !dbg !619

25:                                               ; preds = %24
  %26 = getelementptr inbounds [257 x i8], ptr %8, i64 0, i64 0, !dbg !620
  %27 = load ptr, ptr %5, align 8, !dbg !620
  %28 = icmp ne ptr %26, %27, !dbg !620
  br i1 %28, label %29, label %38, !dbg !623

29:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata ptr %9, metadata !624, metadata !DIExpression()), !dbg !628
  store i64 257, ptr %9, align 8, !dbg !628
  %30 = getelementptr inbounds [257 x i8], ptr %8, i64 0, i64 0, !dbg !628
  %31 = load ptr, ptr %5, align 8, !dbg !628
  %32 = load i64, ptr %9, align 8, !dbg !628
  %33 = call ptr @strncpy(ptr noundef %30, ptr noundef %31, i64 noundef %32) #9, !dbg !628
  %34 = getelementptr inbounds [257 x i8], ptr %8, i64 0, i64 0, !dbg !628
  %35 = load i64, ptr %9, align 8, !dbg !628
  %36 = sub i64 %35, 1, !dbg !628
  %37 = getelementptr inbounds i8, ptr %34, i64 %36, !dbg !628
  store i8 0, ptr %37, align 1, !dbg !628
  br label %38, !dbg !629

38:                                               ; preds = %29, %25
  br label %39, !dbg !623

39:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %10, metadata !630, metadata !DIExpression()), !dbg !631
  %40 = getelementptr inbounds [257 x i8], ptr %8, i64 0, i64 0, !dbg !632
  store ptr %40, ptr %10, align 8, !dbg !631
  br label %41, !dbg !633

41:                                               ; preds = %46, %39
  %42 = load ptr, ptr %10, align 8, !dbg !634
  %43 = load i8, ptr %42, align 1, !dbg !635
  %44 = sext i8 %43 to i32, !dbg !635
  %45 = icmp eq i32 %44, 32, !dbg !636
  br i1 %45, label %46, label %49, !dbg !633

46:                                               ; preds = %41
  %47 = load ptr, ptr %10, align 8, !dbg !637
  %48 = getelementptr inbounds i8, ptr %47, i32 1, !dbg !637
  store ptr %48, ptr %10, align 8, !dbg !637
  br label %41, !dbg !633, !llvm.loop !638

49:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %11, metadata !640, metadata !DIExpression()), !dbg !641
  %50 = load ptr, ptr %10, align 8, !dbg !642
  %51 = call i64 @strlen(ptr noundef %50) #10, !dbg !643
  store i64 %51, ptr %11, align 8, !dbg !641
  br label %52, !dbg !644

52:                                               ; preds = %71, %49
  %53 = load i64, ptr %11, align 8, !dbg !645
  %54 = icmp ugt i64 %53, 0, !dbg !646
  br i1 %54, label %55, label %72, !dbg !644

55:                                               ; preds = %52
  %56 = load ptr, ptr %10, align 8, !dbg !647
  %57 = load i64, ptr %11, align 8, !dbg !650
  %58 = sub i64 %57, 1, !dbg !651
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !647
  %60 = load i8, ptr %59, align 1, !dbg !647
  %61 = sext i8 %60 to i32, !dbg !647
  %62 = icmp eq i32 %61, 32, !dbg !652
  br i1 %62, label %63, label %70, !dbg !653

63:                                               ; preds = %55
  %64 = load ptr, ptr %10, align 8, !dbg !654
  %65 = load i64, ptr %11, align 8, !dbg !656
  %66 = sub i64 %65, 1, !dbg !657
  %67 = getelementptr inbounds i8, ptr %64, i64 %66, !dbg !654
  store i8 0, ptr %67, align 1, !dbg !658
  %68 = load i64, ptr %11, align 8, !dbg !659
  %69 = add i64 %68, -1, !dbg !659
  store i64 %69, ptr %11, align 8, !dbg !659
  br label %71, !dbg !660

70:                                               ; preds = %55
  br label %72, !dbg !661

71:                                               ; preds = %63
  br label %52, !dbg !644, !llvm.loop !663

72:                                               ; preds = %70, %52
  %73 = load ptr, ptr %7, align 8, !dbg !665
  call void @llvm.memset.p0.i64(ptr align 4 %73, i8 0, i64 28, i1 false), !dbg !666
  %74 = load i64, ptr %11, align 8, !dbg !667
  %75 = icmp eq i64 %74, 0, !dbg !669
  br i1 %75, label %82, label %76, !dbg !670

76:                                               ; preds = %72
  %77 = load ptr, ptr %10, align 8, !dbg !671
  %78 = load ptr, ptr %7, align 8, !dbg !672
  %79 = getelementptr inbounds %struct.sockaddr_in, ptr %78, i32 0, i32 2, !dbg !673
  %80 = call i32 @inet_pton(i32 noundef 2, ptr noundef %77, ptr noundef %79) #9, !dbg !674
  %81 = icmp eq i32 %80, 1, !dbg !675
  br i1 %81, label %82, label %90, !dbg !676

82:                                               ; preds = %76, %72
  %83 = load ptr, ptr %7, align 8, !dbg !677
  %84 = getelementptr inbounds %struct.sockaddr_in, ptr %83, i32 0, i32 0, !dbg !679
  store i16 2, ptr %84, align 4, !dbg !680
  %85 = load i32, ptr %6, align 4, !dbg !681
  %86 = trunc i32 %85 to i16, !dbg !681
  %87 = call zeroext i16 @ntohs(i16 noundef zeroext %86) #11, !dbg !681
  %88 = load ptr, ptr %7, align 8, !dbg !682
  %89 = getelementptr inbounds %struct.sockaddr_in, ptr %88, i32 0, i32 1, !dbg !683
  store i16 %87, ptr %89, align 2, !dbg !684
  br label %192, !dbg !685

90:                                               ; preds = %76
  %91 = load ptr, ptr %10, align 8, !dbg !686
  %92 = load ptr, ptr %7, align 8, !dbg !688
  %93 = getelementptr inbounds %struct.sockaddr_in6, ptr %92, i32 0, i32 3, !dbg !689
  %94 = call i32 @inet_pton(i32 noundef 10, ptr noundef %91, ptr noundef %93) #9, !dbg !690
  %95 = icmp eq i32 %94, 1, !dbg !691
  br i1 %95, label %96, label %104, !dbg !692

96:                                               ; preds = %90
  %97 = load ptr, ptr %7, align 8, !dbg !693
  %98 = getelementptr inbounds %struct.sockaddr_in6, ptr %97, i32 0, i32 0, !dbg !695
  store i16 10, ptr %98, align 4, !dbg !696
  %99 = load i32, ptr %6, align 4, !dbg !697
  %100 = trunc i32 %99 to i16, !dbg !697
  %101 = call zeroext i16 @ntohs(i16 noundef zeroext %100) #11, !dbg !697
  %102 = load ptr, ptr %7, align 8, !dbg !698
  %103 = getelementptr inbounds %struct.sockaddr_in6, ptr %102, i32 0, i32 1, !dbg !699
  store i16 %101, ptr %103, align 2, !dbg !700
  br label %191, !dbg !701

104:                                              ; preds = %90
  call void @llvm.dbg.declare(metadata ptr %12, metadata !702, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.declare(metadata ptr %13, metadata !720, metadata !DIExpression()), !dbg !721
  store ptr null, ptr %13, align 8, !dbg !721
  call void @llvm.dbg.declare(metadata ptr %14, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 48, i1 false), !dbg !724
  %105 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 1, !dbg !725
  store i32 0, ptr %105, align 4, !dbg !726
  %106 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 2, !dbg !727
  store i32 2, ptr %106, align 8, !dbg !728
  %107 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 0, !dbg !729
  store i32 1, ptr %107, align 8, !dbg !730
  %108 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 3, !dbg !731
  store i32 0, ptr %108, align 4, !dbg !732
  %109 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 6, !dbg !733
  store ptr null, ptr %109, align 8, !dbg !734
  %110 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 5, !dbg !735
  store ptr null, ptr %110, align 8, !dbg !736
  %111 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 7, !dbg !737
  store ptr null, ptr %111, align 8, !dbg !738
  %112 = load ptr, ptr %10, align 8, !dbg !739
  %113 = call i32 @getaddrinfo(ptr noundef %112, ptr noundef null, ptr noundef %12, ptr noundef %13), !dbg !740
  store i32 %113, ptr %14, align 4, !dbg !741
  %114 = load i32, ptr %14, align 4, !dbg !742
  %115 = icmp ne i32 %114, 0, !dbg !744
  br i1 %115, label %119, label %116, !dbg !745

116:                                              ; preds = %104
  %117 = load ptr, ptr %13, align 8, !dbg !746
  %118 = icmp ne ptr %117, null, !dbg !746
  br i1 %118, label %125, label %119, !dbg !747

119:                                              ; preds = %116, %104
  %120 = load ptr, ptr @stderr, align 8, !dbg !748
  %121 = load ptr, ptr %10, align 8, !dbg !750
  %122 = load i32, ptr %14, align 4, !dbg !751
  %123 = call ptr @gai_strerror(i32 noundef %122) #9, !dbg !752
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str, ptr noundef %121, ptr noundef %123), !dbg !753
  store i32 -1, ptr %4, align 4, !dbg !754
  br label %193, !dbg !754

125:                                              ; preds = %116
  call void @llvm.dbg.declare(metadata ptr %15, metadata !755, metadata !DIExpression()), !dbg !756
  store i32 2, ptr %15, align 4, !dbg !756
  call void @llvm.dbg.declare(metadata ptr %16, metadata !757, metadata !DIExpression()), !dbg !758
  %126 = load ptr, ptr %13, align 8, !dbg !759
  store ptr %126, ptr %16, align 8, !dbg !758
  call void @llvm.dbg.declare(metadata ptr %17, metadata !760, metadata !DIExpression()), !dbg !761
  store i32 0, ptr %17, align 4, !dbg !761
  br label %127, !dbg !762

127:                                              ; preds = %187, %125
  call void @llvm.dbg.label(metadata !763), !dbg !764
  br label %128, !dbg !765

128:                                              ; preds = %177, %127
  %129 = load ptr, ptr %13, align 8, !dbg !766
  %130 = icmp ne ptr %129, null, !dbg !765
  br i1 %130, label %131, label %181, !dbg !765

131:                                              ; preds = %128
  %132 = load ptr, ptr %13, align 8, !dbg !767
  %133 = getelementptr inbounds %struct.addrinfo, ptr %132, i32 0, i32 1, !dbg !770
  %134 = load i32, ptr %133, align 4, !dbg !770
  %135 = load i32, ptr %15, align 4, !dbg !771
  %136 = icmp eq i32 %134, %135, !dbg !772
  br i1 %136, label %137, label %177, !dbg !773

137:                                              ; preds = %131
  %138 = load ptr, ptr %13, align 8, !dbg !774
  %139 = getelementptr inbounds %struct.addrinfo, ptr %138, i32 0, i32 1, !dbg !777
  %140 = load i32, ptr %139, align 4, !dbg !777
  %141 = icmp eq i32 %140, 2, !dbg !778
  br i1 %141, label %142, label %156, !dbg !779

142:                                              ; preds = %137
  %143 = load ptr, ptr %13, align 8, !dbg !780
  %144 = getelementptr inbounds %struct.addrinfo, ptr %143, i32 0, i32 5, !dbg !782
  %145 = load ptr, ptr %144, align 8, !dbg !782
  %146 = load ptr, ptr %7, align 8, !dbg !783
  %147 = load ptr, ptr %13, align 8, !dbg !784
  %148 = getelementptr inbounds %struct.addrinfo, ptr %147, i32 0, i32 4, !dbg !785
  %149 = load i32, ptr %148, align 8, !dbg !785
  %150 = zext i32 %149 to i64, !dbg !784
  call void @bcopy(ptr noundef %145, ptr noundef %146, i64 noundef %150) #9, !dbg !786
  %151 = load i32, ptr %6, align 4, !dbg !787
  %152 = trunc i32 %151 to i16, !dbg !787
  %153 = call zeroext i16 @ntohs(i16 noundef zeroext %152) #11, !dbg !787
  %154 = load ptr, ptr %7, align 8, !dbg !788
  %155 = getelementptr inbounds %struct.sockaddr_in, ptr %154, i32 0, i32 1, !dbg !789
  store i16 %153, ptr %155, align 2, !dbg !790
  store i32 1, ptr %17, align 4, !dbg !791
  br label %181, !dbg !792

156:                                              ; preds = %137
  %157 = load ptr, ptr %13, align 8, !dbg !793
  %158 = getelementptr inbounds %struct.addrinfo, ptr %157, i32 0, i32 1, !dbg !795
  %159 = load i32, ptr %158, align 4, !dbg !795
  %160 = icmp eq i32 %159, 10, !dbg !796
  br i1 %160, label %161, label %175, !dbg !797

161:                                              ; preds = %156
  %162 = load ptr, ptr %13, align 8, !dbg !798
  %163 = getelementptr inbounds %struct.addrinfo, ptr %162, i32 0, i32 5, !dbg !800
  %164 = load ptr, ptr %163, align 8, !dbg !800
  %165 = load ptr, ptr %7, align 8, !dbg !801
  %166 = load ptr, ptr %13, align 8, !dbg !802
  %167 = getelementptr inbounds %struct.addrinfo, ptr %166, i32 0, i32 4, !dbg !803
  %168 = load i32, ptr %167, align 8, !dbg !803
  %169 = zext i32 %168 to i64, !dbg !802
  call void @bcopy(ptr noundef %164, ptr noundef %165, i64 noundef %169) #9, !dbg !804
  %170 = load i32, ptr %6, align 4, !dbg !805
  %171 = trunc i32 %170 to i16, !dbg !805
  %172 = call zeroext i16 @ntohs(i16 noundef zeroext %171) #11, !dbg !805
  %173 = load ptr, ptr %7, align 8, !dbg !806
  %174 = getelementptr inbounds %struct.sockaddr_in6, ptr %173, i32 0, i32 1, !dbg !807
  store i16 %172, ptr %174, align 2, !dbg !808
  store i32 1, ptr %17, align 4, !dbg !809
  br label %181, !dbg !810

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175
  br label %177, !dbg !811

177:                                              ; preds = %176, %131
  %178 = load ptr, ptr %13, align 8, !dbg !812
  %179 = getelementptr inbounds %struct.addrinfo, ptr %178, i32 0, i32 7, !dbg !813
  %180 = load ptr, ptr %179, align 8, !dbg !813
  store ptr %180, ptr %13, align 8, !dbg !814
  br label %128, !dbg !765, !llvm.loop !815

181:                                              ; preds = %161, %142, %128
  %182 = load i32, ptr %17, align 4, !dbg !817
  %183 = icmp ne i32 %182, 0, !dbg !817
  br i1 %183, label %189, label %184, !dbg !819

184:                                              ; preds = %181
  %185 = load i32, ptr %15, align 4, !dbg !820
  %186 = icmp eq i32 %185, 2, !dbg !821
  br i1 %186, label %187, label %189, !dbg !822

187:                                              ; preds = %184
  store i32 10, ptr %15, align 4, !dbg !823
  %188 = load ptr, ptr %16, align 8, !dbg !825
  store ptr %188, ptr %13, align 8, !dbg !826
  br label %127, !dbg !827

189:                                              ; preds = %184, %181
  %190 = load ptr, ptr %16, align 8, !dbg !828
  call void @freeaddrinfo(ptr noundef %190) #9, !dbg !829
  br label %191

191:                                              ; preds = %189, %96
  br label %192

192:                                              ; preds = %191, %82
  store i32 0, ptr %4, align 4, !dbg !830
  br label %193, !dbg !830

193:                                              ; preds = %192, %119, %23
  %194 = load i32, ptr %4, align 4, !dbg !831
  ret i32 %194, !dbg !831
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @ntohs(i16 noundef zeroext) #5

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_ioa_addr_from_full_string(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !832 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !833, metadata !DIExpression()), !dbg !834
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !835, metadata !DIExpression()), !dbg !836
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !837, metadata !DIExpression()), !dbg !838
  %12 = load ptr, ptr %7, align 8, !dbg !839
  %13 = icmp ne ptr %12, null, !dbg !839
  br i1 %13, label %15, label %14, !dbg !841

14:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !842
  br label %35, !dbg !842

15:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !843, metadata !DIExpression()), !dbg !844
  store i32 -1, ptr %8, align 4, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %9, metadata !845, metadata !DIExpression()), !dbg !846
  store i32 0, ptr %9, align 4, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %10, metadata !847, metadata !DIExpression()), !dbg !848
  %16 = load ptr, ptr %5, align 8, !dbg !849
  %17 = call noalias ptr @strdup(ptr noundef %16) #9, !dbg !850
  store ptr %17, ptr %10, align 8, !dbg !848
  call void @llvm.dbg.declare(metadata ptr %11, metadata !851, metadata !DIExpression()), !dbg !852
  %18 = load ptr, ptr %10, align 8, !dbg !853
  %19 = call ptr @get_addr_string_and_port(ptr noundef %18, ptr noundef %9), !dbg !854
  store ptr %19, ptr %11, align 8, !dbg !852
  %20 = load ptr, ptr %11, align 8, !dbg !855
  %21 = icmp ne ptr %20, null, !dbg !855
  br i1 %21, label %22, label %32, !dbg !857

22:                                               ; preds = %15
  %23 = load i32, ptr %9, align 4, !dbg !858
  %24 = icmp slt i32 %23, 1, !dbg !861
  br i1 %24, label %25, label %27, !dbg !862

25:                                               ; preds = %22
  %26 = load i32, ptr %6, align 4, !dbg !863
  store i32 %26, ptr %9, align 4, !dbg !864
  br label %27, !dbg !865

27:                                               ; preds = %25, %22
  %28 = load ptr, ptr %11, align 8, !dbg !866
  %29 = load i32, ptr %9, align 4, !dbg !867
  %30 = load ptr, ptr %7, align 8, !dbg !868
  %31 = call i32 @make_ioa_addr(ptr noundef %28, i32 noundef %29, ptr noundef %30), !dbg !869
  store i32 %31, ptr %8, align 4, !dbg !870
  br label %32, !dbg !871

32:                                               ; preds = %27, %15
  %33 = load ptr, ptr %10, align 8, !dbg !872
  call void @free(ptr noundef %33) #9, !dbg !873
  %34 = load i32, ptr %8, align 4, !dbg !874
  store i32 %34, ptr %4, align 4, !dbg !875
  br label %35, !dbg !875

35:                                               ; preds = %32, %14
  %36 = load i32, ptr %4, align 4, !dbg !876
  ret i32 %36, !dbg !876
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_addr_string_and_port(ptr noundef %0, ptr noundef %1) #0 !dbg !877 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !881, metadata !DIExpression()), !dbg !882
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !883, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.declare(metadata ptr %6, metadata !885, metadata !DIExpression()), !dbg !886
  %9 = load ptr, ptr %4, align 8, !dbg !887
  store ptr %9, ptr %6, align 8, !dbg !886
  br label %10, !dbg !888

10:                                               ; preds = %22, %2
  %11 = load ptr, ptr %6, align 8, !dbg !889
  %12 = load i8, ptr %11, align 1, !dbg !890
  %13 = sext i8 %12 to i32, !dbg !890
  %14 = icmp ne i32 %13, 0, !dbg !890
  br i1 %14, label %15, label %20, !dbg !891

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8, !dbg !892
  %17 = load i8, ptr %16, align 1, !dbg !893
  %18 = sext i8 %17 to i32, !dbg !893
  %19 = icmp eq i32 %18, 32, !dbg !894
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ], !dbg !895
  br i1 %21, label %22, label %25, !dbg !888

22:                                               ; preds = %20
  %23 = load ptr, ptr %6, align 8, !dbg !896
  %24 = getelementptr inbounds i8, ptr %23, i32 1, !dbg !896
  store ptr %24, ptr %6, align 8, !dbg !896
  br label %10, !dbg !888, !llvm.loop !897

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8, !dbg !899
  %27 = load i8, ptr %26, align 1, !dbg !901
  %28 = sext i8 %27 to i32, !dbg !901
  %29 = icmp eq i32 %28, 91, !dbg !902
  br i1 %29, label %30, label %79, !dbg !903

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 8, !dbg !904
  %32 = getelementptr inbounds i8, ptr %31, i32 1, !dbg !904
  store ptr %32, ptr %6, align 8, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %7, metadata !906, metadata !DIExpression()), !dbg !907
  %33 = load ptr, ptr %6, align 8, !dbg !908
  %34 = call ptr @strstr(ptr noundef %33, ptr noundef @.str.3) #10, !dbg !909
  store ptr %34, ptr %7, align 8, !dbg !907
  %35 = load ptr, ptr %7, align 8, !dbg !910
  %36 = icmp ne ptr %35, null, !dbg !910
  br i1 %36, label %37, label %78, !dbg !912

37:                                               ; preds = %30
  %38 = load ptr, ptr %7, align 8, !dbg !913
  store i8 0, ptr %38, align 1, !dbg !915
  %39 = load ptr, ptr %7, align 8, !dbg !916
  %40 = getelementptr inbounds i8, ptr %39, i32 1, !dbg !916
  store ptr %40, ptr %7, align 8, !dbg !916
  br label %41, !dbg !917

41:                                               ; preds = %53, %37
  %42 = load ptr, ptr %7, align 8, !dbg !918
  %43 = load i8, ptr %42, align 1, !dbg !919
  %44 = sext i8 %43 to i32, !dbg !919
  %45 = icmp ne i32 %44, 0, !dbg !919
  br i1 %45, label %46, label %51, !dbg !920

46:                                               ; preds = %41
  %47 = load ptr, ptr %7, align 8, !dbg !921
  %48 = load i8, ptr %47, align 1, !dbg !922
  %49 = sext i8 %48 to i32, !dbg !922
  %50 = icmp eq i32 %49, 32, !dbg !923
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ], !dbg !924
  br i1 %52, label %53, label %56, !dbg !917

53:                                               ; preds = %51
  %54 = load ptr, ptr %7, align 8, !dbg !925
  %55 = getelementptr inbounds i8, ptr %54, i32 1, !dbg !925
  store ptr %55, ptr %7, align 8, !dbg !925
  br label %41, !dbg !917, !llvm.loop !926

56:                                               ; preds = %51
  %57 = load ptr, ptr %7, align 8, !dbg !928
  %58 = load i8, ptr %57, align 1, !dbg !930
  %59 = sext i8 %58 to i32, !dbg !930
  %60 = icmp eq i32 %59, 58, !dbg !931
  br i1 %60, label %61, label %68, !dbg !932

61:                                               ; preds = %56
  %62 = load ptr, ptr %7, align 8, !dbg !933
  %63 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !933
  store ptr %63, ptr %7, align 8, !dbg !933
  %64 = load ptr, ptr %7, align 8, !dbg !935
  %65 = call i32 @atoi(ptr noundef %64) #10, !dbg !936
  %66 = load ptr, ptr %5, align 8, !dbg !937
  store i32 %65, ptr %66, align 4, !dbg !938
  %67 = load ptr, ptr %6, align 8, !dbg !939
  store ptr %67, ptr %3, align 8, !dbg !940
  br label %96, !dbg !940

68:                                               ; preds = %56
  %69 = load ptr, ptr %7, align 8, !dbg !941
  %70 = load i8, ptr %69, align 1, !dbg !943
  %71 = sext i8 %70 to i32, !dbg !943
  %72 = icmp eq i32 %71, 0, !dbg !944
  br i1 %72, label %73, label %76, !dbg !945

73:                                               ; preds = %68
  %74 = load ptr, ptr %5, align 8, !dbg !946
  store i32 0, ptr %74, align 4, !dbg !948
  %75 = load ptr, ptr %6, align 8, !dbg !949
  store ptr %75, ptr %3, align 8, !dbg !950
  br label %96, !dbg !950

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  br label %78, !dbg !951

78:                                               ; preds = %77, %30
  br label %95, !dbg !952

79:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata ptr %8, metadata !953, metadata !DIExpression()), !dbg !955
  %80 = load ptr, ptr %6, align 8, !dbg !956
  %81 = call ptr @strstr(ptr noundef %80, ptr noundef @.str.4) #10, !dbg !957
  store ptr %81, ptr %8, align 8, !dbg !955
  %82 = load ptr, ptr %8, align 8, !dbg !958
  %83 = icmp ne ptr %82, null, !dbg !958
  br i1 %83, label %84, label %92, !dbg !960

84:                                               ; preds = %79
  %85 = load ptr, ptr %8, align 8, !dbg !961
  store i8 0, ptr %85, align 1, !dbg !963
  %86 = load ptr, ptr %8, align 8, !dbg !964
  %87 = getelementptr inbounds i8, ptr %86, i32 1, !dbg !964
  store ptr %87, ptr %8, align 8, !dbg !964
  %88 = load ptr, ptr %8, align 8, !dbg !965
  %89 = call i32 @atoi(ptr noundef %88) #10, !dbg !966
  %90 = load ptr, ptr %5, align 8, !dbg !967
  store i32 %89, ptr %90, align 4, !dbg !968
  %91 = load ptr, ptr %6, align 8, !dbg !969
  store ptr %91, ptr %3, align 8, !dbg !970
  br label %96, !dbg !970

92:                                               ; preds = %79
  %93 = load ptr, ptr %5, align 8, !dbg !971
  store i32 0, ptr %93, align 4, !dbg !973
  %94 = load ptr, ptr %6, align 8, !dbg !974
  store ptr %94, ptr %3, align 8, !dbg !975
  br label %96, !dbg !975

95:                                               ; preds = %78
  store ptr null, ptr %3, align 8, !dbg !976
  br label %96, !dbg !976

96:                                               ; preds = %95, %92, %84, %73, %61
  %97 = load ptr, ptr %3, align 8, !dbg !977
  ret ptr %97, !dbg !977
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_to_string(ptr noundef %0, ptr noundef %1) #0 !dbg !978 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [46 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !981, metadata !DIExpression()), !dbg !982
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !983, metadata !DIExpression()), !dbg !984
  %7 = load ptr, ptr %4, align 8, !dbg !985
  %8 = icmp ne ptr %7, null, !dbg !985
  br i1 %8, label %9, label %65, !dbg !987

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !988
  %11 = icmp ne ptr %10, null, !dbg !988
  br i1 %11, label %12, label %65, !dbg !989

12:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %6, metadata !990, metadata !DIExpression()), !dbg !995
  %13 = load ptr, ptr %4, align 8, !dbg !996
  %14 = getelementptr inbounds %struct.sockaddr, ptr %13, i32 0, i32 0, !dbg !998
  %15 = load i16, ptr %14, align 4, !dbg !998
  %16 = zext i16 %15 to i32, !dbg !996
  %17 = icmp eq i32 %16, 2, !dbg !999
  br i1 %17, label %18, label %37, !dbg !1000

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !1001
  %20 = getelementptr inbounds %struct.sockaddr_in, ptr %19, i32 0, i32 2, !dbg !1003
  %21 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0, !dbg !1004
  %22 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %20, ptr noundef %21, i32 noundef 16) #9, !dbg !1005
  %23 = load ptr, ptr %4, align 8, !dbg !1006
  %24 = call i32 @addr_get_port(ptr noundef %23), !dbg !1008
  %25 = icmp sgt i32 %24, 0, !dbg !1009
  br i1 %25, label %26, label %32, !dbg !1010

26:                                               ; preds = %18
  %27 = load ptr, ptr %5, align 8, !dbg !1011
  %28 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0, !dbg !1012
  %29 = load ptr, ptr %4, align 8, !dbg !1013
  %30 = call i32 @addr_get_port(ptr noundef %29), !dbg !1014
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %27, i64 noundef 65, ptr noundef @.str.1, ptr noundef %28, i32 noundef %30) #9, !dbg !1015
  br label %36, !dbg !1015

32:                                               ; preds = %18
  %33 = load ptr, ptr %5, align 8, !dbg !1016
  %34 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0, !dbg !1017
  %35 = call ptr @strncpy(ptr noundef %33, ptr noundef %34, i64 noundef 65) #9, !dbg !1018
  br label %36

36:                                               ; preds = %32, %26
  br label %64, !dbg !1019

37:                                               ; preds = %12
  %38 = load ptr, ptr %4, align 8, !dbg !1020
  %39 = getelementptr inbounds %struct.sockaddr, ptr %38, i32 0, i32 0, !dbg !1022
  %40 = load i16, ptr %39, align 4, !dbg !1022
  %41 = zext i16 %40 to i32, !dbg !1020
  %42 = icmp eq i32 %41, 10, !dbg !1023
  br i1 %42, label %43, label %62, !dbg !1024

43:                                               ; preds = %37
  %44 = load ptr, ptr %4, align 8, !dbg !1025
  %45 = getelementptr inbounds %struct.sockaddr_in6, ptr %44, i32 0, i32 3, !dbg !1027
  %46 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0, !dbg !1028
  %47 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %45, ptr noundef %46, i32 noundef 46) #9, !dbg !1029
  %48 = load ptr, ptr %4, align 8, !dbg !1030
  %49 = call i32 @addr_get_port(ptr noundef %48), !dbg !1032
  %50 = icmp sgt i32 %49, 0, !dbg !1033
  br i1 %50, label %51, label %57, !dbg !1034

51:                                               ; preds = %43
  %52 = load ptr, ptr %5, align 8, !dbg !1035
  %53 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0, !dbg !1036
  %54 = load ptr, ptr %4, align 8, !dbg !1037
  %55 = call i32 @addr_get_port(ptr noundef %54), !dbg !1038
  %56 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %52, i64 noundef 65, ptr noundef @.str.2, ptr noundef %53, i32 noundef %55) #9, !dbg !1039
  br label %61, !dbg !1039

57:                                               ; preds = %43
  %58 = load ptr, ptr %5, align 8, !dbg !1040
  %59 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0, !dbg !1041
  %60 = call ptr @strncpy(ptr noundef %58, ptr noundef %59, i64 noundef 65) #9, !dbg !1042
  br label %61

61:                                               ; preds = %57, %51
  br label %63, !dbg !1043

62:                                               ; preds = %37
  store i32 -1, ptr %3, align 4, !dbg !1044
  br label %66, !dbg !1044

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %36
  store i32 0, ptr %3, align 4, !dbg !1046
  br label %66, !dbg !1046

65:                                               ; preds = %9, %2
  store i32 -1, ptr %3, align 4, !dbg !1047
  br label %66, !dbg !1047

66:                                               ; preds = %65, %64, %62
  %67 = load i32, ptr %3, align 4, !dbg !1048
  ret i32 %67, !dbg !1048
}

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_get_port(ptr noundef %0) #0 !dbg !1049 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1050, metadata !DIExpression()), !dbg !1051
  %4 = load ptr, ptr %3, align 8, !dbg !1052
  %5 = icmp ne ptr %4, null, !dbg !1052
  br i1 %5, label %7, label %6, !dbg !1054

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !1055
  br label %33, !dbg !1055

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !1056
  %9 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 0, !dbg !1058
  %10 = load i16, ptr %9, align 4, !dbg !1058
  %11 = zext i16 %10 to i32, !dbg !1056
  %12 = icmp eq i32 %11, 2, !dbg !1059
  br i1 %12, label %13, label %19, !dbg !1060

13:                                               ; preds = %7
  %14 = load ptr, ptr %3, align 8, !dbg !1061
  %15 = getelementptr inbounds %struct.sockaddr_in, ptr %14, i32 0, i32 1, !dbg !1061
  %16 = load i16, ptr %15, align 2, !dbg !1061
  %17 = call zeroext i16 @ntohs(i16 noundef zeroext %16) #11, !dbg !1061
  %18 = zext i16 %17 to i32, !dbg !1061
  store i32 %18, ptr %2, align 4, !dbg !1063
  br label %33, !dbg !1063

19:                                               ; preds = %7
  %20 = load ptr, ptr %3, align 8, !dbg !1064
  %21 = getelementptr inbounds %struct.sockaddr_in6, ptr %20, i32 0, i32 0, !dbg !1066
  %22 = load i16, ptr %21, align 4, !dbg !1066
  %23 = zext i16 %22 to i32, !dbg !1064
  %24 = icmp eq i32 %23, 10, !dbg !1067
  br i1 %24, label %25, label %31, !dbg !1068

25:                                               ; preds = %19
  %26 = load ptr, ptr %3, align 8, !dbg !1069
  %27 = getelementptr inbounds %struct.sockaddr_in6, ptr %26, i32 0, i32 1, !dbg !1069
  %28 = load i16, ptr %27, align 2, !dbg !1069
  %29 = call zeroext i16 @ntohs(i16 noundef zeroext %28) #11, !dbg !1069
  %30 = zext i16 %29 to i32, !dbg !1069
  store i32 %30, ptr %2, align 4, !dbg !1071
  br label %33, !dbg !1071

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  store i32 0, ptr %2, align 4, !dbg !1072
  br label %33, !dbg !1072

33:                                               ; preds = %32, %25, %13, %6
  %34 = load i32, ptr %2, align 4, !dbg !1073
  ret i32 %34, !dbg !1073
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_to_string_no_port(ptr noundef %0, ptr noundef %1) #0 !dbg !1074 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [65 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1075, metadata !DIExpression()), !dbg !1076
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1077, metadata !DIExpression()), !dbg !1078
  %7 = load ptr, ptr %4, align 8, !dbg !1079
  %8 = icmp ne ptr %7, null, !dbg !1079
  br i1 %8, label %9, label %43, !dbg !1081

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !1082
  %11 = icmp ne ptr %10, null, !dbg !1082
  br i1 %11, label %12, label %43, !dbg !1083

12:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1084, metadata !DIExpression()), !dbg !1089
  %13 = load ptr, ptr %4, align 8, !dbg !1090
  %14 = getelementptr inbounds %struct.sockaddr, ptr %13, i32 0, i32 0, !dbg !1092
  %15 = load i16, ptr %14, align 4, !dbg !1092
  %16 = zext i16 %15 to i32, !dbg !1090
  %17 = icmp eq i32 %16, 2, !dbg !1093
  br i1 %17, label %18, label %26, !dbg !1094

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !1095
  %20 = getelementptr inbounds %struct.sockaddr_in, ptr %19, i32 0, i32 2, !dbg !1097
  %21 = getelementptr inbounds [65 x i8], ptr %6, i64 0, i64 0, !dbg !1098
  %22 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %20, ptr noundef %21, i32 noundef 16) #9, !dbg !1099
  %23 = load ptr, ptr %5, align 8, !dbg !1100
  %24 = getelementptr inbounds [65 x i8], ptr %6, i64 0, i64 0, !dbg !1101
  %25 = call ptr @strncpy(ptr noundef %23, ptr noundef %24, i64 noundef 65) #9, !dbg !1102
  br label %42, !dbg !1103

26:                                               ; preds = %12
  %27 = load ptr, ptr %4, align 8, !dbg !1104
  %28 = getelementptr inbounds %struct.sockaddr, ptr %27, i32 0, i32 0, !dbg !1106
  %29 = load i16, ptr %28, align 4, !dbg !1106
  %30 = zext i16 %29 to i32, !dbg !1104
  %31 = icmp eq i32 %30, 10, !dbg !1107
  br i1 %31, label %32, label %40, !dbg !1108

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 8, !dbg !1109
  %34 = getelementptr inbounds %struct.sockaddr_in6, ptr %33, i32 0, i32 3, !dbg !1111
  %35 = getelementptr inbounds [65 x i8], ptr %6, i64 0, i64 0, !dbg !1112
  %36 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %34, ptr noundef %35, i32 noundef 46) #9, !dbg !1113
  %37 = load ptr, ptr %5, align 8, !dbg !1114
  %38 = getelementptr inbounds [65 x i8], ptr %6, i64 0, i64 0, !dbg !1115
  %39 = call ptr @strncpy(ptr noundef %37, ptr noundef %38, i64 noundef 65) #9, !dbg !1116
  br label %41, !dbg !1117

40:                                               ; preds = %26
  store i32 -1, ptr %3, align 4, !dbg !1118
  br label %44, !dbg !1118

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %18
  store i32 0, ptr %3, align 4, !dbg !1120
  br label %44, !dbg !1120

43:                                               ; preds = %9, %2
  store i32 -1, ptr %3, align 4, !dbg !1121
  br label %44, !dbg !1121

44:                                               ; preds = %43, %42, %40
  %45 = load i32, ptr %3, align 4, !dbg !1122
  ret i32 %45, !dbg !1122
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addr_set_port(ptr noundef %0, i32 noundef %1) #0 !dbg !1123 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1126, metadata !DIExpression()), !dbg !1127
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1128, metadata !DIExpression()), !dbg !1129
  %5 = load ptr, ptr %3, align 8, !dbg !1130
  %6 = icmp ne ptr %5, null, !dbg !1130
  br i1 %6, label %7, label %33, !dbg !1132

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !1133
  %9 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 0, !dbg !1136
  %10 = load i16, ptr %9, align 4, !dbg !1136
  %11 = zext i16 %10 to i32, !dbg !1133
  %12 = icmp eq i32 %11, 2, !dbg !1137
  br i1 %12, label %13, label %19, !dbg !1138

13:                                               ; preds = %7
  %14 = load i32, ptr %4, align 4, !dbg !1139
  %15 = trunc i32 %14 to i16, !dbg !1139
  %16 = call zeroext i16 @ntohs(i16 noundef zeroext %15) #11, !dbg !1139
  %17 = load ptr, ptr %3, align 8, !dbg !1141
  %18 = getelementptr inbounds %struct.sockaddr_in, ptr %17, i32 0, i32 1, !dbg !1142
  store i16 %16, ptr %18, align 2, !dbg !1143
  br label %32, !dbg !1144

19:                                               ; preds = %7
  %20 = load ptr, ptr %3, align 8, !dbg !1145
  %21 = getelementptr inbounds %struct.sockaddr_in6, ptr %20, i32 0, i32 0, !dbg !1147
  %22 = load i16, ptr %21, align 4, !dbg !1147
  %23 = zext i16 %22 to i32, !dbg !1145
  %24 = icmp eq i32 %23, 10, !dbg !1148
  br i1 %24, label %25, label %31, !dbg !1149

25:                                               ; preds = %19
  %26 = load i32, ptr %4, align 4, !dbg !1150
  %27 = trunc i32 %26 to i16, !dbg !1150
  %28 = call zeroext i16 @ntohs(i16 noundef zeroext %27) #11, !dbg !1150
  %29 = load ptr, ptr %3, align 8, !dbg !1152
  %30 = getelementptr inbounds %struct.sockaddr_in6, ptr %29, i32 0, i32 1, !dbg !1153
  store i16 %28, ptr %30, align 2, !dbg !1154
  br label %31, !dbg !1155

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %31, %13
  br label %33, !dbg !1156

33:                                               ; preds = %32, %2
  ret void, !dbg !1157
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioa_addr_range_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1158 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1167, metadata !DIExpression()), !dbg !1168
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1169, metadata !DIExpression()), !dbg !1170
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1171, metadata !DIExpression()), !dbg !1172
  %7 = load ptr, ptr %4, align 8, !dbg !1173
  %8 = icmp ne ptr %7, null, !dbg !1173
  br i1 %8, label %9, label %30, !dbg !1175

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8, !dbg !1176
  %11 = icmp ne ptr %10, null, !dbg !1176
  br i1 %11, label %12, label %16, !dbg !1179

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !dbg !1180
  %14 = getelementptr inbounds %struct.ioa_addr_range, ptr %13, i32 0, i32 0, !dbg !1181
  %15 = load ptr, ptr %5, align 8, !dbg !1182
  call void @addr_cpy(ptr noundef %14, ptr noundef %15), !dbg !1183
  br label %19, !dbg !1183

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 8, !dbg !1184
  %18 = getelementptr inbounds %struct.ioa_addr_range, ptr %17, i32 0, i32 0, !dbg !1185
  call void @addr_set_any(ptr noundef %18), !dbg !1186
  br label %19

19:                                               ; preds = %16, %12
  %20 = load ptr, ptr %6, align 8, !dbg !1187
  %21 = icmp ne ptr %20, null, !dbg !1187
  br i1 %21, label %22, label %26, !dbg !1189

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8, !dbg !1190
  %24 = getelementptr inbounds %struct.ioa_addr_range, ptr %23, i32 0, i32 1, !dbg !1191
  %25 = load ptr, ptr %6, align 8, !dbg !1192
  call void @addr_cpy(ptr noundef %24, ptr noundef %25), !dbg !1193
  br label %29, !dbg !1193

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 8, !dbg !1194
  %28 = getelementptr inbounds %struct.ioa_addr_range, ptr %27, i32 0, i32 1, !dbg !1195
  call void @addr_set_any(ptr noundef %28), !dbg !1196
  br label %29

29:                                               ; preds = %26, %22
  br label %30, !dbg !1197

30:                                               ; preds = %29, %3
  ret void, !dbg !1198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_less_eq(ptr noundef %0, ptr noundef %1) #0 !dbg !1199 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1200, metadata !DIExpression()), !dbg !1201
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1202, metadata !DIExpression()), !dbg !1203
  %7 = load ptr, ptr %4, align 8, !dbg !1204
  %8 = icmp ne ptr %7, null, !dbg !1204
  br i1 %8, label %10, label %9, !dbg !1206

9:                                                ; preds = %2
  store i32 1, ptr %3, align 4, !dbg !1207
  br label %87, !dbg !1207

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !1208
  %12 = icmp ne ptr %11, null, !dbg !1208
  br i1 %12, label %14, label %13, !dbg !1210

13:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !dbg !1211
  br label %87, !dbg !1211

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8, !dbg !1212
  %16 = getelementptr inbounds %struct.sockaddr, ptr %15, i32 0, i32 0, !dbg !1215
  %17 = load i16, ptr %16, align 4, !dbg !1215
  %18 = zext i16 %17 to i32, !dbg !1212
  %19 = load ptr, ptr %5, align 8, !dbg !1216
  %20 = getelementptr inbounds %struct.sockaddr, ptr %19, i32 0, i32 0, !dbg !1217
  %21 = load i16, ptr %20, align 4, !dbg !1217
  %22 = zext i16 %21 to i32, !dbg !1216
  %23 = icmp ne i32 %18, %22, !dbg !1218
  br i1 %23, label %24, label %35, !dbg !1219

24:                                               ; preds = %14
  %25 = load ptr, ptr %4, align 8, !dbg !1220
  %26 = getelementptr inbounds %struct.sockaddr, ptr %25, i32 0, i32 0, !dbg !1221
  %27 = load i16, ptr %26, align 4, !dbg !1221
  %28 = zext i16 %27 to i32, !dbg !1220
  %29 = load ptr, ptr %5, align 8, !dbg !1222
  %30 = getelementptr inbounds %struct.sockaddr, ptr %29, i32 0, i32 0, !dbg !1223
  %31 = load i16, ptr %30, align 4, !dbg !1223
  %32 = zext i16 %31 to i32, !dbg !1222
  %33 = icmp slt i32 %28, %32, !dbg !1224
  %34 = zext i1 %33 to i32, !dbg !1224
  store i32 %34, ptr %3, align 4, !dbg !1225
  br label %87, !dbg !1225

35:                                               ; preds = %14
  %36 = load ptr, ptr %4, align 8, !dbg !1226
  %37 = getelementptr inbounds %struct.sockaddr, ptr %36, i32 0, i32 0, !dbg !1228
  %38 = load i16, ptr %37, align 4, !dbg !1228
  %39 = zext i16 %38 to i32, !dbg !1226
  %40 = icmp eq i32 %39, 2, !dbg !1229
  br i1 %40, label %41, label %54, !dbg !1230

41:                                               ; preds = %35
  %42 = load ptr, ptr %4, align 8, !dbg !1231
  %43 = getelementptr inbounds %struct.sockaddr_in, ptr %42, i32 0, i32 2, !dbg !1231
  %44 = getelementptr inbounds %struct.in_addr, ptr %43, i32 0, i32 0, !dbg !1231
  %45 = load i32, ptr %44, align 4, !dbg !1231
  %46 = call i32 @ntohl(i32 noundef %45) #11, !dbg !1231
  %47 = load ptr, ptr %5, align 8, !dbg !1233
  %48 = getelementptr inbounds %struct.sockaddr_in, ptr %47, i32 0, i32 2, !dbg !1233
  %49 = getelementptr inbounds %struct.in_addr, ptr %48, i32 0, i32 0, !dbg !1233
  %50 = load i32, ptr %49, align 4, !dbg !1233
  %51 = call i32 @ntohl(i32 noundef %50) #11, !dbg !1233
  %52 = icmp ule i32 %46, %51, !dbg !1234
  %53 = zext i1 %52 to i32, !dbg !1234
  store i32 %53, ptr %3, align 4, !dbg !1235
  br label %87, !dbg !1235

54:                                               ; preds = %35
  %55 = load ptr, ptr %4, align 8, !dbg !1236
  %56 = getelementptr inbounds %struct.sockaddr, ptr %55, i32 0, i32 0, !dbg !1238
  %57 = load i16, ptr %56, align 4, !dbg !1238
  %58 = zext i16 %57 to i32, !dbg !1236
  %59 = icmp eq i32 %58, 10, !dbg !1239
  br i1 %59, label %60, label %86, !dbg !1240

60:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1241, metadata !DIExpression()), !dbg !1243
  store i32 0, ptr %6, align 4, !dbg !1244
  br label %61, !dbg !1246

61:                                               ; preds = %82, %60
  %62 = load i32, ptr %6, align 4, !dbg !1247
  %63 = icmp slt i32 %62, 16, !dbg !1249
  br i1 %63, label %64, label %85, !dbg !1250

64:                                               ; preds = %61
  %65 = load ptr, ptr %4, align 8, !dbg !1251
  %66 = getelementptr inbounds %struct.sockaddr_in6, ptr %65, i32 0, i32 3, !dbg !1254
  %67 = load i32, ptr %6, align 4, !dbg !1255
  %68 = sext i32 %67 to i64, !dbg !1256
  %69 = getelementptr inbounds i8, ptr %66, i64 %68, !dbg !1256
  %70 = load i8, ptr %69, align 1, !dbg !1256
  %71 = zext i8 %70 to i32, !dbg !1257
  %72 = load ptr, ptr %5, align 8, !dbg !1258
  %73 = getelementptr inbounds %struct.sockaddr_in6, ptr %72, i32 0, i32 3, !dbg !1259
  %74 = load i32, ptr %6, align 4, !dbg !1260
  %75 = sext i32 %74 to i64, !dbg !1261
  %76 = getelementptr inbounds i8, ptr %73, i64 %75, !dbg !1261
  %77 = load i8, ptr %76, align 1, !dbg !1261
  %78 = zext i8 %77 to i32, !dbg !1262
  %79 = icmp sgt i32 %71, %78, !dbg !1263
  br i1 %79, label %80, label %81, !dbg !1264

80:                                               ; preds = %64
  store i32 0, ptr %3, align 4, !dbg !1265
  br label %87, !dbg !1265

81:                                               ; preds = %64
  br label %82, !dbg !1266

82:                                               ; preds = %81
  %83 = load i32, ptr %6, align 4, !dbg !1267
  %84 = add nsw i32 %83, 1, !dbg !1267
  store i32 %84, ptr %6, align 4, !dbg !1267
  br label %61, !dbg !1268, !llvm.loop !1269

85:                                               ; preds = %61
  store i32 1, ptr %3, align 4, !dbg !1271
  br label %87, !dbg !1271

86:                                               ; preds = %54
  store i32 1, ptr %3, align 4, !dbg !1272
  br label %87, !dbg !1272

87:                                               ; preds = %86, %85, %80, %41, %24, %13, %9
  %88 = load i32, ptr %3, align 4, !dbg !1273
  ret i32 %88, !dbg !1273
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @ntohl(i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioa_addr_in_range(ptr noundef %0, ptr noundef %1) #0 !dbg !1274 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1279, metadata !DIExpression()), !dbg !1280
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1281, metadata !DIExpression()), !dbg !1282
  %6 = load ptr, ptr %4, align 8, !dbg !1283
  %7 = icmp ne ptr %6, null, !dbg !1283
  br i1 %7, label %8, label %34, !dbg !1285

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8, !dbg !1286
  %10 = icmp ne ptr %9, null, !dbg !1286
  br i1 %10, label %11, label %34, !dbg !1287

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !dbg !1288
  %13 = getelementptr inbounds %struct.ioa_addr_range, ptr %12, i32 0, i32 0, !dbg !1291
  %14 = call i32 @addr_any(ptr noundef %13), !dbg !1292
  %15 = icmp ne i32 %14, 0, !dbg !1292
  br i1 %15, label %22, label %16, !dbg !1293

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8, !dbg !1294
  %18 = getelementptr inbounds %struct.ioa_addr_range, ptr %17, i32 0, i32 0, !dbg !1295
  %19 = load ptr, ptr %5, align 8, !dbg !1296
  %20 = call i32 @addr_less_eq(ptr noundef %18, ptr noundef %19), !dbg !1297
  %21 = icmp ne i32 %20, 0, !dbg !1297
  br i1 %21, label %22, label %33, !dbg !1298

22:                                               ; preds = %16, %11
  %23 = load ptr, ptr %4, align 8, !dbg !1299
  %24 = getelementptr inbounds %struct.ioa_addr_range, ptr %23, i32 0, i32 1, !dbg !1302
  %25 = call i32 @addr_any(ptr noundef %24), !dbg !1303
  %26 = icmp ne i32 %25, 0, !dbg !1303
  br i1 %26, label %27, label %28, !dbg !1304

27:                                               ; preds = %22
  store i32 1, ptr %3, align 4, !dbg !1305
  br label %35, !dbg !1305

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8, !dbg !1307
  %30 = load ptr, ptr %4, align 8, !dbg !1309
  %31 = getelementptr inbounds %struct.ioa_addr_range, ptr %30, i32 0, i32 1, !dbg !1310
  %32 = call i32 @addr_less_eq(ptr noundef %29, ptr noundef %31), !dbg !1311
  store i32 %32, ptr %3, align 4, !dbg !1312
  br label %35, !dbg !1312

33:                                               ; preds = %16
  br label %34, !dbg !1313

34:                                               ; preds = %33, %8, %2
  store i32 0, ptr %3, align 4, !dbg !1314
  br label %35, !dbg !1314

35:                                               ; preds = %34, %28, %27
  %36 = load i32, ptr %3, align 4, !dbg !1315
  ret i32 %36, !dbg !1315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioa_addr_range_cpy(ptr noundef %0, ptr noundef %1) #0 !dbg !1316 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1319, metadata !DIExpression()), !dbg !1320
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1321, metadata !DIExpression()), !dbg !1322
  %5 = load ptr, ptr %3, align 8, !dbg !1323
  %6 = icmp ne ptr %5, null, !dbg !1323
  br i1 %6, label %7, label %19, !dbg !1325

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !1326
  %9 = icmp ne ptr %8, null, !dbg !1326
  br i1 %9, label %10, label %19, !dbg !1327

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !1328
  %12 = getelementptr inbounds %struct.ioa_addr_range, ptr %11, i32 0, i32 0, !dbg !1330
  %13 = load ptr, ptr %4, align 8, !dbg !1331
  %14 = getelementptr inbounds %struct.ioa_addr_range, ptr %13, i32 0, i32 0, !dbg !1332
  call void @addr_cpy(ptr noundef %12, ptr noundef %14), !dbg !1333
  %15 = load ptr, ptr %3, align 8, !dbg !1334
  %16 = getelementptr inbounds %struct.ioa_addr_range, ptr %15, i32 0, i32 1, !dbg !1335
  %17 = load ptr, ptr %4, align 8, !dbg !1336
  %18 = getelementptr inbounds %struct.ioa_addr_range, ptr %17, i32 0, i32 1, !dbg !1337
  call void @addr_cpy(ptr noundef %16, ptr noundef %18), !dbg !1338
  br label %19, !dbg !1339

19:                                               ; preds = %10, %7, %2
  ret void, !dbg !1340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioa_addr_is_multicast(ptr noundef %0) #0 !dbg !1341 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1344, metadata !DIExpression()), !dbg !1345
  %6 = load ptr, ptr %3, align 8, !dbg !1346
  %7 = icmp ne ptr %6, null, !dbg !1346
  br i1 %7, label %8, label %40, !dbg !1348

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !1349
  %10 = getelementptr inbounds %struct.sockaddr, ptr %9, i32 0, i32 0, !dbg !1352
  %11 = load i16, ptr %10, align 4, !dbg !1352
  %12 = zext i16 %11 to i32, !dbg !1349
  %13 = icmp eq i32 %12, 2, !dbg !1353
  br i1 %13, label %14, label %23, !dbg !1354

14:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1355, metadata !DIExpression()), !dbg !1357
  %15 = load ptr, ptr %3, align 8, !dbg !1358
  %16 = getelementptr inbounds %struct.sockaddr_in, ptr %15, i32 0, i32 2, !dbg !1359
  store ptr %16, ptr %4, align 8, !dbg !1357
  %17 = load ptr, ptr %4, align 8, !dbg !1360
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !1360
  %19 = load i8, ptr %18, align 1, !dbg !1360
  %20 = zext i8 %19 to i32, !dbg !1360
  %21 = icmp sgt i32 %20, 223, !dbg !1361
  %22 = zext i1 %21 to i32, !dbg !1361
  store i32 %22, ptr %2, align 4, !dbg !1362
  br label %41, !dbg !1362

23:                                               ; preds = %8
  %24 = load ptr, ptr %3, align 8, !dbg !1363
  %25 = getelementptr inbounds %struct.sockaddr, ptr %24, i32 0, i32 0, !dbg !1365
  %26 = load i16, ptr %25, align 4, !dbg !1365
  %27 = zext i16 %26 to i32, !dbg !1363
  %28 = icmp eq i32 %27, 10, !dbg !1366
  br i1 %28, label %29, label %38, !dbg !1367

29:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1368, metadata !DIExpression()), !dbg !1370
  %30 = load ptr, ptr %3, align 8, !dbg !1371
  %31 = getelementptr inbounds %struct.sockaddr_in6, ptr %30, i32 0, i32 3, !dbg !1372
  %32 = getelementptr inbounds i8, ptr %31, i64 0, !dbg !1373
  %33 = load i8, ptr %32, align 4, !dbg !1373
  store i8 %33, ptr %5, align 1, !dbg !1370
  %34 = load i8, ptr %5, align 1, !dbg !1374
  %35 = zext i8 %34 to i32, !dbg !1374
  %36 = icmp eq i32 %35, 255, !dbg !1375
  %37 = zext i1 %36 to i32, !dbg !1375
  store i32 %37, ptr %2, align 4, !dbg !1376
  br label %41, !dbg !1376

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  br label %40, !dbg !1377

40:                                               ; preds = %39, %1
  store i32 0, ptr %2, align 4, !dbg !1378
  br label %41, !dbg !1378

41:                                               ; preds = %40, %29, %14
  %42 = load i32, ptr %2, align 4, !dbg !1379
  ret i32 %42, !dbg !1379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioa_addr_is_loopback(ptr noundef %0) #0 !dbg !1380 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1381, metadata !DIExpression()), !dbg !1382
  %7 = load ptr, ptr %3, align 8, !dbg !1383
  %8 = icmp ne ptr %7, null, !dbg !1383
  br i1 %8, label %9, label %58, !dbg !1385

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !1386
  %11 = getelementptr inbounds %struct.sockaddr, ptr %10, i32 0, i32 0, !dbg !1389
  %12 = load i16, ptr %11, align 4, !dbg !1389
  %13 = zext i16 %12 to i32, !dbg !1386
  %14 = icmp eq i32 %13, 2, !dbg !1390
  br i1 %14, label %15, label %24, !dbg !1391

15:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1392, metadata !DIExpression()), !dbg !1394
  %16 = load ptr, ptr %3, align 8, !dbg !1395
  %17 = getelementptr inbounds %struct.sockaddr_in, ptr %16, i32 0, i32 2, !dbg !1396
  store ptr %17, ptr %4, align 8, !dbg !1394
  %18 = load ptr, ptr %4, align 8, !dbg !1397
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !1397
  %20 = load i8, ptr %19, align 1, !dbg !1397
  %21 = zext i8 %20 to i32, !dbg !1397
  %22 = icmp eq i32 %21, 127, !dbg !1398
  %23 = zext i1 %22 to i32, !dbg !1398
  store i32 %23, ptr %2, align 4, !dbg !1399
  br label %59, !dbg !1399

24:                                               ; preds = %9
  %25 = load ptr, ptr %3, align 8, !dbg !1400
  %26 = getelementptr inbounds %struct.sockaddr, ptr %25, i32 0, i32 0, !dbg !1402
  %27 = load i16, ptr %26, align 4, !dbg !1402
  %28 = zext i16 %27 to i32, !dbg !1400
  %29 = icmp eq i32 %28, 10, !dbg !1403
  br i1 %29, label %30, label %56, !dbg !1404

30:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1405, metadata !DIExpression()), !dbg !1407
  %31 = load ptr, ptr %3, align 8, !dbg !1408
  %32 = getelementptr inbounds %struct.sockaddr_in6, ptr %31, i32 0, i32 3, !dbg !1409
  store ptr %32, ptr %5, align 8, !dbg !1407
  %33 = load ptr, ptr %5, align 8, !dbg !1410
  %34 = getelementptr inbounds i8, ptr %33, i64 15, !dbg !1410
  %35 = load i8, ptr %34, align 1, !dbg !1410
  %36 = zext i8 %35 to i32, !dbg !1410
  %37 = icmp eq i32 %36, 1, !dbg !1412
  br i1 %37, label %38, label %55, !dbg !1413

38:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1414, metadata !DIExpression()), !dbg !1416
  store i32 0, ptr %6, align 4, !dbg !1417
  br label %39, !dbg !1419

39:                                               ; preds = %51, %38
  %40 = load i32, ptr %6, align 4, !dbg !1420
  %41 = icmp slt i32 %40, 15, !dbg !1422
  br i1 %41, label %42, label %54, !dbg !1423

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 8, !dbg !1424
  %44 = load i32, ptr %6, align 4, !dbg !1427
  %45 = sext i32 %44 to i64, !dbg !1424
  %46 = getelementptr inbounds i8, ptr %43, i64 %45, !dbg !1424
  %47 = load i8, ptr %46, align 1, !dbg !1424
  %48 = icmp ne i8 %47, 0, !dbg !1424
  br i1 %48, label %49, label %50, !dbg !1428

49:                                               ; preds = %42
  store i32 0, ptr %2, align 4, !dbg !1429
  br label %59, !dbg !1429

50:                                               ; preds = %42
  br label %51, !dbg !1430

51:                                               ; preds = %50
  %52 = load i32, ptr %6, align 4, !dbg !1431
  %53 = add nsw i32 %52, 1, !dbg !1431
  store i32 %53, ptr %6, align 4, !dbg !1431
  br label %39, !dbg !1432, !llvm.loop !1433

54:                                               ; preds = %39
  store i32 1, ptr %2, align 4, !dbg !1435
  br label %59, !dbg !1435

55:                                               ; preds = %30
  br label %56, !dbg !1436

56:                                               ; preds = %55, %24
  br label %57

57:                                               ; preds = %56
  br label %58, !dbg !1437

58:                                               ; preds = %57, %1
  store i32 0, ptr %2, align 4, !dbg !1438
  br label %59, !dbg !1438

59:                                               ; preds = %58, %54, %49, %15
  %60 = load i32, ptr %2, align 4, !dbg !1439
  ret i32 %60, !dbg !1439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioa_addr_is_zero(ptr noundef %0) #0 !dbg !1440 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1441, metadata !DIExpression()), !dbg !1442
  %7 = load ptr, ptr %3, align 8, !dbg !1443
  %8 = icmp ne ptr %7, null, !dbg !1443
  br i1 %8, label %9, label %51, !dbg !1445

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !1446
  %11 = getelementptr inbounds %struct.sockaddr, ptr %10, i32 0, i32 0, !dbg !1449
  %12 = load i16, ptr %11, align 4, !dbg !1449
  %13 = zext i16 %12 to i32, !dbg !1446
  %14 = icmp eq i32 %13, 2, !dbg !1450
  br i1 %14, label %15, label %24, !dbg !1451

15:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1452, metadata !DIExpression()), !dbg !1454
  %16 = load ptr, ptr %3, align 8, !dbg !1455
  %17 = getelementptr inbounds %struct.sockaddr_in, ptr %16, i32 0, i32 2, !dbg !1456
  store ptr %17, ptr %4, align 8, !dbg !1454
  %18 = load ptr, ptr %4, align 8, !dbg !1457
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !1457
  %20 = load i8, ptr %19, align 1, !dbg !1457
  %21 = zext i8 %20 to i32, !dbg !1457
  %22 = icmp eq i32 %21, 0, !dbg !1458
  %23 = zext i1 %22 to i32, !dbg !1458
  store i32 %23, ptr %2, align 4, !dbg !1459
  br label %52, !dbg !1459

24:                                               ; preds = %9
  %25 = load ptr, ptr %3, align 8, !dbg !1460
  %26 = getelementptr inbounds %struct.sockaddr, ptr %25, i32 0, i32 0, !dbg !1462
  %27 = load i16, ptr %26, align 4, !dbg !1462
  %28 = zext i16 %27 to i32, !dbg !1460
  %29 = icmp eq i32 %28, 10, !dbg !1463
  br i1 %29, label %30, label %49, !dbg !1464

30:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1465, metadata !DIExpression()), !dbg !1467
  %31 = load ptr, ptr %3, align 8, !dbg !1468
  %32 = getelementptr inbounds %struct.sockaddr_in6, ptr %31, i32 0, i32 3, !dbg !1469
  store ptr %32, ptr %5, align 8, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1470, metadata !DIExpression()), !dbg !1471
  store i32 0, ptr %6, align 4, !dbg !1472
  br label %33, !dbg !1474

33:                                               ; preds = %45, %30
  %34 = load i32, ptr %6, align 4, !dbg !1475
  %35 = icmp sle i32 %34, 15, !dbg !1477
  br i1 %35, label %36, label %48, !dbg !1478

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 8, !dbg !1479
  %38 = load i32, ptr %6, align 4, !dbg !1482
  %39 = sext i32 %38 to i64, !dbg !1479
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !1479
  %41 = load i8, ptr %40, align 1, !dbg !1479
  %42 = icmp ne i8 %41, 0, !dbg !1479
  br i1 %42, label %43, label %44, !dbg !1483

43:                                               ; preds = %36
  store i32 0, ptr %2, align 4, !dbg !1484
  br label %52, !dbg !1484

44:                                               ; preds = %36
  br label %45, !dbg !1485

45:                                               ; preds = %44
  %46 = load i32, ptr %6, align 4, !dbg !1486
  %47 = add nsw i32 %46, 1, !dbg !1486
  store i32 %47, ptr %6, align 4, !dbg !1486
  br label %33, !dbg !1487, !llvm.loop !1488

48:                                               ; preds = %33
  store i32 1, ptr %2, align 4, !dbg !1490
  br label %52, !dbg !1490

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49
  br label %51, !dbg !1491

51:                                               ; preds = %50, %1
  store i32 0, ptr %2, align 4, !dbg !1492
  br label %52, !dbg !1492

52:                                               ; preds = %51, %48, %43, %15
  %53 = load i32, ptr %2, align 4, !dbg !1493
  ret i32 %53, !dbg !1493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioa_addr_add_mapping(ptr noundef %0, ptr noundef %1) #0 !dbg !1494 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1497, metadata !DIExpression()), !dbg !1498
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1499, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1501, metadata !DIExpression()), !dbg !1502
  %6 = load i64, ptr @msz, align 8, !dbg !1503
  %7 = add i64 %6, 8, !dbg !1504
  store i64 %7, ptr %5, align 8, !dbg !1502
  %8 = load ptr, ptr @public_addrs, align 8, !dbg !1505
  %9 = load i64, ptr %5, align 8, !dbg !1506
  %10 = call ptr @realloc(ptr noundef %8, i64 noundef %9) #12, !dbg !1507
  store ptr %10, ptr @public_addrs, align 8, !dbg !1508
  %11 = load ptr, ptr @private_addrs, align 8, !dbg !1509
  %12 = load i64, ptr %5, align 8, !dbg !1510
  %13 = call ptr @realloc(ptr noundef %11, i64 noundef %12) #12, !dbg !1511
  store ptr %13, ptr @private_addrs, align 8, !dbg !1512
  %14 = call noalias ptr @malloc(i64 noundef 28) #13, !dbg !1513
  %15 = load ptr, ptr @public_addrs, align 8, !dbg !1514
  %16 = load i64, ptr @mcount, align 8, !dbg !1515
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16, !dbg !1514
  store ptr %14, ptr %17, align 8, !dbg !1516
  %18 = call noalias ptr @malloc(i64 noundef 28) #13, !dbg !1517
  %19 = load ptr, ptr @private_addrs, align 8, !dbg !1518
  %20 = load i64, ptr @mcount, align 8, !dbg !1519
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20, !dbg !1518
  store ptr %18, ptr %21, align 8, !dbg !1520
  %22 = load ptr, ptr @public_addrs, align 8, !dbg !1521
  %23 = load i64, ptr @mcount, align 8, !dbg !1522
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23, !dbg !1521
  %25 = load ptr, ptr %24, align 8, !dbg !1521
  %26 = load ptr, ptr %3, align 8, !dbg !1523
  call void @addr_cpy(ptr noundef %25, ptr noundef %26), !dbg !1524
  %27 = load ptr, ptr @private_addrs, align 8, !dbg !1525
  %28 = load i64, ptr @mcount, align 8, !dbg !1526
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28, !dbg !1525
  %30 = load ptr, ptr %29, align 8, !dbg !1525
  %31 = load ptr, ptr %4, align 8, !dbg !1527
  call void @addr_cpy(ptr noundef %30, ptr noundef %31), !dbg !1528
  %32 = load i64, ptr @mcount, align 8, !dbg !1529
  %33 = add i64 %32, 1, !dbg !1529
  store i64 %33, ptr @mcount, align 8, !dbg !1529
  %34 = load i64, ptr @msz, align 8, !dbg !1530
  %35 = add i64 %34, 8, !dbg !1530
  store i64 %35, ptr @msz, align 8, !dbg !1530
  ret void, !dbg !1531
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_addr_from_public_to_private(ptr noundef %0, ptr noundef %1) #0 !dbg !1532 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1535, metadata !DIExpression()), !dbg !1536
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1537, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1539, metadata !DIExpression()), !dbg !1540
  store i64 0, ptr %5, align 8, !dbg !1541
  br label %6, !dbg !1543

6:                                                ; preds = %28, %2
  %7 = load i64, ptr %5, align 8, !dbg !1544
  %8 = load i64, ptr @mcount, align 8, !dbg !1546
  %9 = icmp ult i64 %7, %8, !dbg !1547
  br i1 %9, label %10, label %31, !dbg !1548

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8, !dbg !1549
  %12 = load ptr, ptr @public_addrs, align 8, !dbg !1552
  %13 = load i64, ptr %5, align 8, !dbg !1553
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !1552
  %15 = load ptr, ptr %14, align 8, !dbg !1552
  %16 = call i32 @addr_eq_no_port(ptr noundef %11, ptr noundef %15), !dbg !1554
  %17 = icmp ne i32 %16, 0, !dbg !1554
  br i1 %17, label %18, label %27, !dbg !1555

18:                                               ; preds = %10
  %19 = load ptr, ptr %4, align 8, !dbg !1556
  %20 = load ptr, ptr @private_addrs, align 8, !dbg !1558
  %21 = load i64, ptr %5, align 8, !dbg !1559
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21, !dbg !1558
  %23 = load ptr, ptr %22, align 8, !dbg !1558
  call void @addr_cpy(ptr noundef %19, ptr noundef %23), !dbg !1560
  %24 = load ptr, ptr %4, align 8, !dbg !1561
  %25 = load ptr, ptr %3, align 8, !dbg !1562
  %26 = call i32 @addr_get_port(ptr noundef %25), !dbg !1563
  call void @addr_set_port(ptr noundef %24, i32 noundef %26), !dbg !1564
  br label %34, !dbg !1565

27:                                               ; preds = %10
  br label %28, !dbg !1566

28:                                               ; preds = %27
  %29 = load i64, ptr %5, align 8, !dbg !1567
  %30 = add i64 %29, 1, !dbg !1567
  store i64 %30, ptr %5, align 8, !dbg !1567
  br label %6, !dbg !1568, !llvm.loop !1569

31:                                               ; preds = %6
  %32 = load ptr, ptr %4, align 8, !dbg !1571
  %33 = load ptr, ptr %3, align 8, !dbg !1572
  call void @addr_cpy(ptr noundef %32, ptr noundef %33), !dbg !1573
  br label %34, !dbg !1574

34:                                               ; preds = %31, %18
  ret void, !dbg !1574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_addr_from_private_to_public(ptr noundef %0, ptr noundef %1) #0 !dbg !1575 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1576, metadata !DIExpression()), !dbg !1577
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1578, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1580, metadata !DIExpression()), !dbg !1581
  store i64 0, ptr %5, align 8, !dbg !1582
  br label %6, !dbg !1584

6:                                                ; preds = %28, %2
  %7 = load i64, ptr %5, align 8, !dbg !1585
  %8 = load i64, ptr @mcount, align 8, !dbg !1587
  %9 = icmp ult i64 %7, %8, !dbg !1588
  br i1 %9, label %10, label %31, !dbg !1589

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8, !dbg !1590
  %12 = load ptr, ptr @private_addrs, align 8, !dbg !1593
  %13 = load i64, ptr %5, align 8, !dbg !1594
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !1593
  %15 = load ptr, ptr %14, align 8, !dbg !1593
  %16 = call i32 @addr_eq_no_port(ptr noundef %11, ptr noundef %15), !dbg !1595
  %17 = icmp ne i32 %16, 0, !dbg !1595
  br i1 %17, label %18, label %27, !dbg !1596

18:                                               ; preds = %10
  %19 = load ptr, ptr %4, align 8, !dbg !1597
  %20 = load ptr, ptr @public_addrs, align 8, !dbg !1599
  %21 = load i64, ptr %5, align 8, !dbg !1600
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21, !dbg !1599
  %23 = load ptr, ptr %22, align 8, !dbg !1599
  call void @addr_cpy(ptr noundef %19, ptr noundef %23), !dbg !1601
  %24 = load ptr, ptr %4, align 8, !dbg !1602
  %25 = load ptr, ptr %3, align 8, !dbg !1603
  %26 = call i32 @addr_get_port(ptr noundef %25), !dbg !1604
  call void @addr_set_port(ptr noundef %24, i32 noundef %26), !dbg !1605
  br label %34, !dbg !1606

27:                                               ; preds = %10
  br label %28, !dbg !1607

28:                                               ; preds = %27
  %29 = load i64, ptr %5, align 8, !dbg !1608
  %30 = add i64 %29, 1, !dbg !1608
  store i64 %30, ptr %5, align 8, !dbg !1608
  br label %6, !dbg !1609, !llvm.loop !1610

31:                                               ; preds = %6
  %32 = load ptr, ptr %4, align 8, !dbg !1612
  %33 = load ptr, ptr %3, align 8, !dbg !1613
  call void @addr_cpy(ptr noundef %32, ptr noundef %33), !dbg !1614
  br label %34, !dbg !1615

34:                                               ; preds = %31, %18
  ret void, !dbg !1615
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/client/ns_turn_ioaddr.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "b3e05c9ca6566ce9e9d1167a8da5897c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 35)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 8)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "msz", scope: !19, file: !2, line: 532, type: !121, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !35, globals: !107, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/raj/coturn/src/client/ns_turn_ioaddr.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "b3e05c9ca6566ce9e9d1167a8da5897c")
!21 = !{!22}
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
!35 = !{!36, !38, !42, !43, !44, !45, !48, !50, !51}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !39, line: 26, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !41, line: 42, baseType: !24)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !39, line: 24, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !41, line: 38, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !53, line: 48, baseType: !54)
!53 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !53, line: 44, size: 224, elements: !55)
!55 = !{!56, !68, !84}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !54, file: !53, line: 45, baseType: !57, size: 128)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !58, line: 180, size: 128, elements: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!59 = !{!60, !64}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !57, file: !58, line: 182, baseType: !61, size: 16)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !62, line: 28, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !57, file: !58, line: 183, baseType: !65, size: 112, offset: 16)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 14)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !54, file: !53, line: 46, baseType: !69, size: 128)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !70, line: 245, size: 128, elements: !71)
!70 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!71 = !{!72, !73, !77, !82}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !69, file: !70, line: 247, baseType: !61, size: 16)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !69, file: !70, line: 248, baseType: !74, size: 16, offset: 16)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !70, line: 123, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !39, line: 25, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !41, line: 40, baseType: !63)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !69, file: !70, line: 249, baseType: !78, size: 32, offset: 32)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !70, line: 31, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !78, file: !70, line: 33, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !70, line: 30, baseType: !38)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !69, file: !70, line: 252, baseType: !83, size: 64, offset: 64)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !15)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !54, file: !53, line: 47, baseType: !85, size: 224)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !70, line: 260, size: 224, elements: !86)
!86 = !{!87, !88, !89, !90, !106}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !85, file: !70, line: 262, baseType: !61, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !85, file: !70, line: 263, baseType: !74, size: 16, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !85, file: !70, line: 264, baseType: !38, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !85, file: !70, line: 265, baseType: !91, size: 128, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !70, line: 219, size: 128, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !91, file: !70, line: 226, baseType: !94, size: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !70, line: 221, size: 128, elements: !95)
!95 = !{!96, !100, !102}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !94, file: !70, line: 223, baseType: !97, size: 128)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !94, file: !70, line: 224, baseType: !101, size: 128)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !15)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !94, file: !70, line: 225, baseType: !103, size: 128)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 4)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !85, file: !70, line: 266, baseType: !38, size: 32, offset: 192)
!107 = !{!0, !7, !12, !108, !113, !17, !115, !117, !119}
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 2)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !110, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "public_addrs", scope: !19, file: !2, line: 529, type: !50, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "private_addrs", scope: !19, file: !2, line: 530, type: !50, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "mcount", scope: !19, file: !2, line: 531, type: !121, isLocal: true, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 46, baseType: !123)
!122 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!123 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!124 = !{i32 7, !"Dwarf Version", i32 5}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{i32 1, !"wchar_size", i32 4}
!127 = !{i32 8, !"PIC Level", i32 2}
!128 = !{i32 7, !"PIE Level", i32 2}
!129 = !{i32 7, !"uwtable", i32 2}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 16.0.0"}
!132 = distinct !DISubprogram(name: "get_ioa_addr_len", scope: !2, file: !2, line: 37, type: !133, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!133 = !DISubroutineType(types: !134)
!134 = !{!38, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!137 = !{}
!138 = !DILocalVariable(name: "addr", arg: 1, scope: !132, file: !2, line: 37, type: !135)
!139 = !DILocation(line: 37, column: 43, scope: !132)
!140 = !DILocation(line: 38, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !2, line: 38, column: 6)
!142 = !DILocation(line: 38, column: 15, scope: !141)
!143 = !DILocation(line: 38, column: 25, scope: !141)
!144 = !DILocation(line: 38, column: 6, scope: !132)
!145 = !DILocation(line: 38, column: 37, scope: !141)
!146 = !DILocation(line: 39, column: 11, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !2, line: 39, column: 11)
!148 = !DILocation(line: 39, column: 20, scope: !147)
!149 = !DILocation(line: 39, column: 30, scope: !147)
!150 = !DILocation(line: 39, column: 11, scope: !141)
!151 = !DILocation(line: 39, column: 43, scope: !147)
!152 = !DILocation(line: 40, column: 3, scope: !132)
!153 = !DILocation(line: 41, column: 1, scope: !132)
!154 = distinct !DISubprogram(name: "addr_set_any", scope: !2, file: !2, line: 45, type: !155, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !51}
!157 = !DILocalVariable(name: "addr", arg: 1, scope: !154, file: !2, line: 45, type: !51)
!158 = !DILocation(line: 45, column: 29, scope: !154)
!159 = !DILocation(line: 46, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !154, file: !2, line: 46, column: 5)
!161 = !DILocation(line: 46, column: 5, scope: !154)
!162 = !DILocation(line: 47, column: 9, scope: !160)
!163 = !DILocation(line: 47, column: 3, scope: !160)
!164 = !DILocation(line: 48, column: 1, scope: !154)
!165 = distinct !DISubprogram(name: "addr_any", scope: !2, file: !2, line: 50, type: !166, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!166 = !DISubroutineType(types: !167)
!167 = !{!42, !135}
!168 = !DILocalVariable(name: "addr", arg: 1, scope: !165, file: !2, line: 50, type: !135)
!169 = !DILocation(line: 50, column: 30, scope: !165)
!170 = !DILocation(line: 52, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !2, line: 52, column: 5)
!172 = !DILocation(line: 52, column: 5, scope: !165)
!173 = !DILocation(line: 53, column: 3, scope: !171)
!174 = !DILocation(line: 55, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !165, file: !2, line: 55, column: 6)
!176 = !DILocation(line: 55, column: 15, scope: !175)
!177 = !DILocation(line: 55, column: 25, scope: !175)
!178 = !DILocation(line: 55, column: 6, scope: !165)
!179 = !DILocation(line: 56, column: 14, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !2, line: 55, column: 37)
!181 = !DILocation(line: 56, column: 23, scope: !180)
!182 = !DILocation(line: 56, column: 32, scope: !180)
!183 = !DILocation(line: 56, column: 38, scope: !180)
!184 = !DILocation(line: 56, column: 42, scope: !180)
!185 = !DILocation(line: 56, column: 45, scope: !180)
!186 = !DILocation(line: 56, column: 54, scope: !180)
!187 = !DILocation(line: 56, column: 62, scope: !180)
!188 = !DILocation(line: 0, scope: !180)
!189 = !DILocation(line: 56, column: 5, scope: !180)
!190 = !DILocation(line: 57, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !175, file: !2, line: 57, column: 13)
!192 = !DILocation(line: 57, column: 22, scope: !191)
!193 = !DILocation(line: 57, column: 32, scope: !191)
!194 = !DILocation(line: 57, column: 13, scope: !175)
!195 = !DILocation(line: 58, column: 8, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 58, column: 8)
!197 = distinct !DILexicalBlock(scope: !191, file: !2, line: 57, column: 45)
!198 = !DILocation(line: 58, column: 17, scope: !196)
!199 = !DILocation(line: 58, column: 26, scope: !196)
!200 = !DILocation(line: 58, column: 8, scope: !197)
!201 = !DILocation(line: 58, column: 31, scope: !196)
!202 = !DILocalVariable(name: "i", scope: !203, file: !2, line: 60, type: !121)
!203 = distinct !DILexicalBlock(scope: !196, file: !2, line: 59, column: 10)
!204 = !DILocation(line: 60, column: 14, scope: !203)
!205 = !DILocation(line: 61, column: 12, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !2, line: 61, column: 7)
!207 = !DILocation(line: 61, column: 11, scope: !206)
!208 = !DILocation(line: 61, column: 15, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !2, line: 61, column: 7)
!210 = !DILocation(line: 61, column: 16, scope: !209)
!211 = !DILocation(line: 61, column: 7, scope: !206)
!212 = !DILocation(line: 62, column: 21, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !2, line: 62, column: 5)
!214 = !DILocation(line: 62, column: 30, scope: !213)
!215 = !DILocation(line: 62, column: 42, scope: !213)
!216 = !DILocation(line: 62, column: 5, scope: !213)
!217 = !DILocation(line: 62, column: 5, scope: !209)
!218 = !DILocation(line: 62, column: 46, scope: !213)
!219 = !DILocation(line: 62, column: 43, scope: !213)
!220 = !DILocation(line: 61, column: 45, scope: !209)
!221 = !DILocation(line: 61, column: 7, scope: !209)
!222 = distinct !{!222, !211, !223, !224}
!223 = !DILocation(line: 62, column: 53, scope: !206)
!224 = !{!"llvm.loop.mustprogress"}
!225 = !DILocation(line: 64, column: 3, scope: !197)
!226 = !DILocation(line: 66, column: 3, scope: !165)
!227 = !DILocation(line: 67, column: 1, scope: !165)
!228 = distinct !DISubprogram(name: "addr_any_no_port", scope: !2, file: !2, line: 69, type: !166, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!229 = !DILocalVariable(name: "addr", arg: 1, scope: !228, file: !2, line: 69, type: !135)
!230 = !DILocation(line: 69, column: 38, scope: !228)
!231 = !DILocation(line: 70, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !2, line: 70, column: 5)
!233 = !DILocation(line: 70, column: 5, scope: !228)
!234 = !DILocation(line: 71, column: 3, scope: !232)
!235 = !DILocation(line: 73, column: 6, scope: !236)
!236 = distinct !DILexicalBlock(scope: !228, file: !2, line: 73, column: 6)
!237 = !DILocation(line: 73, column: 15, scope: !236)
!238 = !DILocation(line: 73, column: 25, scope: !236)
!239 = !DILocation(line: 73, column: 6, scope: !228)
!240 = !DILocation(line: 74, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !2, line: 73, column: 37)
!242 = !DILocation(line: 74, column: 22, scope: !241)
!243 = !DILocation(line: 74, column: 31, scope: !241)
!244 = !DILocation(line: 74, column: 37, scope: !241)
!245 = !DILocation(line: 74, column: 5, scope: !241)
!246 = !DILocation(line: 75, column: 13, scope: !247)
!247 = distinct !DILexicalBlock(scope: !236, file: !2, line: 75, column: 13)
!248 = !DILocation(line: 75, column: 22, scope: !247)
!249 = !DILocation(line: 75, column: 32, scope: !247)
!250 = !DILocation(line: 75, column: 13, scope: !236)
!251 = !DILocalVariable(name: "i", scope: !252, file: !2, line: 76, type: !121)
!252 = distinct !DILexicalBlock(scope: !247, file: !2, line: 75, column: 45)
!253 = !DILocation(line: 76, column: 12, scope: !252)
!254 = !DILocation(line: 77, column: 10, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !2, line: 77, column: 5)
!256 = !DILocation(line: 77, column: 9, scope: !255)
!257 = !DILocation(line: 77, column: 13, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !2, line: 77, column: 5)
!259 = !DILocation(line: 77, column: 14, scope: !258)
!260 = !DILocation(line: 77, column: 5, scope: !255)
!261 = !DILocation(line: 78, column: 27, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !2, line: 78, column: 10)
!263 = !DILocation(line: 78, column: 36, scope: !262)
!264 = !DILocation(line: 78, column: 49, scope: !262)
!265 = !DILocation(line: 78, column: 10, scope: !262)
!266 = !DILocation(line: 78, column: 10, scope: !258)
!267 = !DILocation(line: 78, column: 53, scope: !262)
!268 = !DILocation(line: 78, column: 50, scope: !262)
!269 = !DILocation(line: 77, column: 43, scope: !258)
!270 = !DILocation(line: 77, column: 5, scope: !258)
!271 = distinct !{!271, !260, !272, !224}
!272 = !DILocation(line: 78, column: 60, scope: !255)
!273 = !DILocation(line: 79, column: 3, scope: !252)
!274 = !DILocation(line: 81, column: 3, scope: !228)
!275 = !DILocation(line: 82, column: 1, scope: !228)
!276 = distinct !DISubprogram(name: "hash_int32", scope: !2, file: !2, line: 84, type: !277, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!277 = !DISubroutineType(types: !278)
!278 = !{!38, !38}
!279 = !DILocalVariable(name: "a", arg: 1, scope: !276, file: !2, line: 84, type: !38)
!280 = !DILocation(line: 84, column: 30, scope: !276)
!281 = !DILocation(line: 86, column: 6, scope: !276)
!282 = !DILocation(line: 86, column: 11, scope: !276)
!283 = !DILocation(line: 86, column: 12, scope: !276)
!284 = !DILocation(line: 86, column: 8, scope: !276)
!285 = !DILocation(line: 86, column: 4, scope: !276)
!286 = !DILocation(line: 87, column: 7, scope: !276)
!287 = !DILocation(line: 87, column: 8, scope: !276)
!288 = !DILocation(line: 87, column: 24, scope: !276)
!289 = !DILocation(line: 87, column: 25, scope: !276)
!290 = !DILocation(line: 87, column: 21, scope: !276)
!291 = !DILocation(line: 87, column: 4, scope: !276)
!292 = !DILocation(line: 88, column: 6, scope: !276)
!293 = !DILocation(line: 88, column: 11, scope: !276)
!294 = !DILocation(line: 88, column: 12, scope: !276)
!295 = !DILocation(line: 88, column: 8, scope: !276)
!296 = !DILocation(line: 88, column: 4, scope: !276)
!297 = !DILocation(line: 89, column: 9, scope: !276)
!298 = !DILocation(line: 89, column: 2, scope: !276)
!299 = distinct !DISubprogram(name: "hash_int64", scope: !2, file: !2, line: 92, type: !300, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !302}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !39, line: 27, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !41, line: 45, baseType: !123)
!304 = !DILocalVariable(name: "a", arg: 1, scope: !299, file: !2, line: 92, type: !302)
!305 = !DILocation(line: 92, column: 30, scope: !299)
!306 = !DILocation(line: 94, column: 6, scope: !299)
!307 = !DILocation(line: 94, column: 11, scope: !299)
!308 = !DILocation(line: 94, column: 12, scope: !299)
!309 = !DILocation(line: 94, column: 8, scope: !299)
!310 = !DILocation(line: 94, column: 4, scope: !299)
!311 = !DILocation(line: 95, column: 7, scope: !299)
!312 = !DILocation(line: 95, column: 8, scope: !299)
!313 = !DILocation(line: 95, column: 34, scope: !299)
!314 = !DILocation(line: 95, column: 35, scope: !299)
!315 = !DILocation(line: 95, column: 31, scope: !299)
!316 = !DILocation(line: 95, column: 4, scope: !299)
!317 = !DILocation(line: 96, column: 6, scope: !299)
!318 = !DILocation(line: 96, column: 11, scope: !299)
!319 = !DILocation(line: 96, column: 12, scope: !299)
!320 = !DILocation(line: 96, column: 8, scope: !299)
!321 = !DILocation(line: 96, column: 4, scope: !299)
!322 = !DILocation(line: 97, column: 9, scope: !299)
!323 = !DILocation(line: 97, column: 2, scope: !299)
!324 = distinct !DISubprogram(name: "addr_hash", scope: !2, file: !2, line: 100, type: !133, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!325 = !DILocalVariable(name: "addr", arg: 1, scope: !324, file: !2, line: 100, type: !135)
!326 = !DILocation(line: 100, column: 36, scope: !324)
!327 = !DILocation(line: 102, column: 6, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !2, line: 102, column: 5)
!329 = !DILocation(line: 102, column: 5, scope: !324)
!330 = !DILocation(line: 103, column: 3, scope: !328)
!331 = !DILocalVariable(name: "ret", scope: !324, file: !2, line: 105, type: !38)
!332 = !DILocation(line: 105, column: 11, scope: !324)
!333 = !DILocation(line: 106, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !324, file: !2, line: 106, column: 6)
!335 = !DILocation(line: 106, column: 15, scope: !334)
!336 = !DILocation(line: 106, column: 25, scope: !334)
!337 = !DILocation(line: 106, column: 6, scope: !324)
!338 = !DILocation(line: 107, column: 20, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !2, line: 106, column: 37)
!340 = !DILocation(line: 107, column: 29, scope: !339)
!341 = !DILocation(line: 107, column: 38, scope: !339)
!342 = !DILocation(line: 107, column: 47, scope: !339)
!343 = !DILocation(line: 107, column: 56, scope: !339)
!344 = !DILocation(line: 107, column: 45, scope: !339)
!345 = !DILocation(line: 107, column: 9, scope: !339)
!346 = !DILocation(line: 107, column: 7, scope: !339)
!347 = !DILocation(line: 108, column: 2, scope: !339)
!348 = !DILocalVariable(name: "a", scope: !349, file: !2, line: 109, type: !350)
!349 = distinct !DILexicalBlock(scope: !334, file: !2, line: 108, column: 9)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 128, elements: !111)
!351 = !DILocation(line: 109, column: 12, scope: !349)
!352 = !DILocation(line: 110, column: 11, scope: !349)
!353 = !DILocation(line: 110, column: 20, scope: !349)
!354 = !DILocation(line: 110, column: 3, scope: !349)
!355 = !DILocation(line: 111, column: 32, scope: !349)
!356 = !DILocation(line: 111, column: 21, scope: !349)
!357 = !DILocation(line: 111, column: 37, scope: !349)
!358 = !DILocation(line: 111, column: 56, scope: !349)
!359 = !DILocation(line: 111, column: 63, scope: !349)
!360 = !DILocation(line: 111, column: 72, scope: !349)
!361 = !DILocation(line: 111, column: 61, scope: !349)
!362 = !DILocation(line: 111, column: 45, scope: !349)
!363 = !DILocation(line: 111, column: 42, scope: !349)
!364 = !DILocation(line: 111, column: 9, scope: !349)
!365 = !DILocation(line: 111, column: 7, scope: !349)
!366 = !DILocation(line: 113, column: 9, scope: !324)
!367 = !DILocation(line: 113, column: 2, scope: !324)
!368 = !DILocation(line: 114, column: 1, scope: !324)
!369 = distinct !DISubprogram(name: "addr_hash_no_port", scope: !2, file: !2, line: 116, type: !133, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!370 = !DILocalVariable(name: "addr", arg: 1, scope: !369, file: !2, line: 116, type: !135)
!371 = !DILocation(line: 116, column: 44, scope: !369)
!372 = !DILocation(line: 118, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !2, line: 118, column: 5)
!374 = !DILocation(line: 118, column: 5, scope: !369)
!375 = !DILocation(line: 119, column: 3, scope: !373)
!376 = !DILocalVariable(name: "ret", scope: !369, file: !2, line: 121, type: !38)
!377 = !DILocation(line: 121, column: 11, scope: !369)
!378 = !DILocation(line: 122, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !369, file: !2, line: 122, column: 6)
!380 = !DILocation(line: 122, column: 15, scope: !379)
!381 = !DILocation(line: 122, column: 25, scope: !379)
!382 = !DILocation(line: 122, column: 6, scope: !369)
!383 = !DILocation(line: 123, column: 20, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !2, line: 122, column: 37)
!385 = !DILocation(line: 123, column: 29, scope: !384)
!386 = !DILocation(line: 123, column: 38, scope: !384)
!387 = !DILocation(line: 123, column: 9, scope: !384)
!388 = !DILocation(line: 123, column: 7, scope: !384)
!389 = !DILocation(line: 124, column: 2, scope: !384)
!390 = !DILocalVariable(name: "a", scope: !391, file: !2, line: 125, type: !350)
!391 = distinct !DILexicalBlock(scope: !379, file: !2, line: 124, column: 9)
!392 = !DILocation(line: 125, column: 12, scope: !391)
!393 = !DILocation(line: 126, column: 11, scope: !391)
!394 = !DILocation(line: 126, column: 20, scope: !391)
!395 = !DILocation(line: 126, column: 3, scope: !391)
!396 = !DILocation(line: 127, column: 32, scope: !391)
!397 = !DILocation(line: 127, column: 21, scope: !391)
!398 = !DILocation(line: 127, column: 37, scope: !391)
!399 = !DILocation(line: 127, column: 56, scope: !391)
!400 = !DILocation(line: 127, column: 45, scope: !391)
!401 = !DILocation(line: 127, column: 42, scope: !391)
!402 = !DILocation(line: 127, column: 9, scope: !391)
!403 = !DILocation(line: 127, column: 7, scope: !391)
!404 = !DILocation(line: 129, column: 9, scope: !369)
!405 = !DILocation(line: 129, column: 2, scope: !369)
!406 = !DILocation(line: 130, column: 1, scope: !369)
!407 = distinct !DISubprogram(name: "addr_cpy", scope: !2, file: !2, line: 132, type: !408, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !51, !135}
!410 = !DILocalVariable(name: "dst", arg: 1, scope: !407, file: !2, line: 132, type: !51)
!411 = !DILocation(line: 132, column: 25, scope: !407)
!412 = !DILocalVariable(name: "src", arg: 2, scope: !407, file: !2, line: 132, type: !135)
!413 = !DILocation(line: 132, column: 46, scope: !407)
!414 = !DILocation(line: 133, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !407, file: !2, line: 133, column: 5)
!416 = !DILocation(line: 133, column: 9, scope: !415)
!417 = !DILocation(line: 133, column: 12, scope: !415)
!418 = !DILocation(line: 133, column: 5, scope: !407)
!419 = !DILocation(line: 134, column: 9, scope: !415)
!420 = !DILocation(line: 134, column: 13, scope: !415)
!421 = !DILocation(line: 134, column: 3, scope: !415)
!422 = !DILocation(line: 135, column: 1, scope: !407)
!423 = distinct !DISubprogram(name: "addr_cpy4", scope: !2, file: !2, line: 137, type: !424, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !51, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!428 = !DILocalVariable(name: "dst", arg: 1, scope: !423, file: !2, line: 137, type: !51)
!429 = !DILocation(line: 137, column: 26, scope: !423)
!430 = !DILocalVariable(name: "src", arg: 2, scope: !423, file: !2, line: 137, type: !426)
!431 = !DILocation(line: 137, column: 57, scope: !423)
!432 = !DILocation(line: 138, column: 5, scope: !433)
!433 = distinct !DILexicalBlock(scope: !423, file: !2, line: 138, column: 5)
!434 = !DILocation(line: 138, column: 9, scope: !433)
!435 = !DILocation(line: 138, column: 12, scope: !433)
!436 = !DILocation(line: 138, column: 5, scope: !423)
!437 = !DILocation(line: 139, column: 9, scope: !433)
!438 = !DILocation(line: 139, column: 13, scope: !433)
!439 = !DILocation(line: 139, column: 3, scope: !433)
!440 = !DILocation(line: 140, column: 1, scope: !423)
!441 = distinct !DISubprogram(name: "addr_cpy6", scope: !2, file: !2, line: 142, type: !442, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !51, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!446 = !DILocalVariable(name: "dst", arg: 1, scope: !441, file: !2, line: 142, type: !51)
!447 = !DILocation(line: 142, column: 26, scope: !441)
!448 = !DILocalVariable(name: "src", arg: 2, scope: !441, file: !2, line: 142, type: !444)
!449 = !DILocation(line: 142, column: 58, scope: !441)
!450 = !DILocation(line: 143, column: 5, scope: !451)
!451 = distinct !DILexicalBlock(scope: !441, file: !2, line: 143, column: 5)
!452 = !DILocation(line: 143, column: 9, scope: !451)
!453 = !DILocation(line: 143, column: 12, scope: !451)
!454 = !DILocation(line: 143, column: 5, scope: !441)
!455 = !DILocation(line: 144, column: 9, scope: !451)
!456 = !DILocation(line: 144, column: 13, scope: !451)
!457 = !DILocation(line: 144, column: 3, scope: !451)
!458 = !DILocation(line: 145, column: 1, scope: !441)
!459 = distinct !DISubprogram(name: "addr_eq", scope: !2, file: !2, line: 147, type: !460, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!460 = !DISubroutineType(types: !461)
!461 = !{!42, !135, !135}
!462 = !DILocalVariable(name: "a1", arg: 1, scope: !459, file: !2, line: 147, type: !135)
!463 = !DILocation(line: 147, column: 29, scope: !459)
!464 = !DILocalVariable(name: "a2", arg: 2, scope: !459, file: !2, line: 147, type: !135)
!465 = !DILocation(line: 147, column: 49, scope: !459)
!466 = !DILocation(line: 149, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !459, file: !2, line: 149, column: 6)
!468 = !DILocation(line: 149, column: 6, scope: !459)
!469 = !DILocation(line: 149, column: 20, scope: !467)
!470 = !DILocation(line: 149, column: 19, scope: !467)
!471 = !DILocation(line: 149, column: 11, scope: !467)
!472 = !DILocation(line: 150, column: 12, scope: !473)
!473 = distinct !DILexicalBlock(scope: !467, file: !2, line: 150, column: 11)
!474 = !DILocation(line: 150, column: 11, scope: !467)
!475 = !DILocation(line: 150, column: 25, scope: !473)
!476 = !DILocation(line: 150, column: 24, scope: !473)
!477 = !DILocation(line: 150, column: 16, scope: !473)
!478 = !DILocation(line: 152, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !459, file: !2, line: 152, column: 6)
!480 = !DILocation(line: 152, column: 13, scope: !479)
!481 = !DILocation(line: 152, column: 26, scope: !479)
!482 = !DILocation(line: 152, column: 33, scope: !479)
!483 = !DILocation(line: 152, column: 23, scope: !479)
!484 = !DILocation(line: 152, column: 6, scope: !459)
!485 = !DILocation(line: 153, column: 8, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !2, line: 153, column: 8)
!487 = distinct !DILexicalBlock(scope: !479, file: !2, line: 152, column: 44)
!488 = !DILocation(line: 153, column: 15, scope: !486)
!489 = !DILocation(line: 153, column: 25, scope: !486)
!490 = !DILocation(line: 153, column: 36, scope: !486)
!491 = !DILocation(line: 153, column: 39, scope: !486)
!492 = !DILocation(line: 153, column: 46, scope: !486)
!493 = !DILocation(line: 153, column: 58, scope: !486)
!494 = !DILocation(line: 153, column: 65, scope: !486)
!495 = !DILocation(line: 153, column: 55, scope: !486)
!496 = !DILocation(line: 153, column: 8, scope: !487)
!497 = !DILocation(line: 154, column: 15, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 154, column: 10)
!499 = distinct !DILexicalBlock(scope: !486, file: !2, line: 153, column: 75)
!500 = !DILocation(line: 154, column: 22, scope: !498)
!501 = !DILocation(line: 154, column: 31, scope: !498)
!502 = !DILocation(line: 154, column: 46, scope: !498)
!503 = !DILocation(line: 154, column: 53, scope: !498)
!504 = !DILocation(line: 154, column: 62, scope: !498)
!505 = !DILocation(line: 154, column: 38, scope: !498)
!506 = !DILocation(line: 154, column: 10, scope: !499)
!507 = !DILocation(line: 155, column: 2, scope: !508)
!508 = distinct !DILexicalBlock(scope: !498, file: !2, line: 154, column: 70)
!509 = !DILocation(line: 157, column: 5, scope: !499)
!510 = !DILocation(line: 157, column: 15, scope: !511)
!511 = distinct !DILexicalBlock(scope: !486, file: !2, line: 157, column: 15)
!512 = !DILocation(line: 157, column: 22, scope: !511)
!513 = !DILocation(line: 157, column: 32, scope: !511)
!514 = !DILocation(line: 157, column: 44, scope: !511)
!515 = !DILocation(line: 157, column: 47, scope: !511)
!516 = !DILocation(line: 157, column: 54, scope: !511)
!517 = !DILocation(line: 157, column: 67, scope: !511)
!518 = !DILocation(line: 157, column: 74, scope: !511)
!519 = !DILocation(line: 157, column: 64, scope: !511)
!520 = !DILocation(line: 157, column: 15, scope: !486)
!521 = !DILocation(line: 158, column: 22, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 158, column: 13)
!523 = distinct !DILexicalBlock(scope: !511, file: !2, line: 157, column: 85)
!524 = !DILocation(line: 158, column: 29, scope: !522)
!525 = !DILocation(line: 158, column: 43, scope: !522)
!526 = !DILocation(line: 158, column: 50, scope: !522)
!527 = !DILocation(line: 158, column: 13, scope: !522)
!528 = !DILocation(line: 158, column: 87, scope: !522)
!529 = !DILocation(line: 158, column: 13, scope: !523)
!530 = !DILocation(line: 159, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !522, file: !2, line: 158, column: 94)
!532 = !DILocation(line: 161, column: 5, scope: !523)
!533 = !DILocation(line: 162, column: 3, scope: !487)
!534 = !DILocation(line: 164, column: 3, scope: !459)
!535 = !DILocation(line: 165, column: 1, scope: !459)
!536 = distinct !DISubprogram(name: "addr_eq_no_port", scope: !2, file: !2, line: 167, type: !460, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!537 = !DILocalVariable(name: "a1", arg: 1, scope: !536, file: !2, line: 167, type: !135)
!538 = !DILocation(line: 167, column: 37, scope: !536)
!539 = !DILocalVariable(name: "a2", arg: 2, scope: !536, file: !2, line: 167, type: !135)
!540 = !DILocation(line: 167, column: 57, scope: !536)
!541 = !DILocation(line: 169, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !536, file: !2, line: 169, column: 6)
!543 = !DILocation(line: 169, column: 6, scope: !536)
!544 = !DILocation(line: 169, column: 20, scope: !542)
!545 = !DILocation(line: 169, column: 19, scope: !542)
!546 = !DILocation(line: 169, column: 11, scope: !542)
!547 = !DILocation(line: 170, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !542, file: !2, line: 170, column: 11)
!549 = !DILocation(line: 170, column: 11, scope: !542)
!550 = !DILocation(line: 170, column: 25, scope: !548)
!551 = !DILocation(line: 170, column: 24, scope: !548)
!552 = !DILocation(line: 170, column: 16, scope: !548)
!553 = !DILocation(line: 172, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !536, file: !2, line: 172, column: 6)
!555 = !DILocation(line: 172, column: 13, scope: !554)
!556 = !DILocation(line: 172, column: 26, scope: !554)
!557 = !DILocation(line: 172, column: 33, scope: !554)
!558 = !DILocation(line: 172, column: 23, scope: !554)
!559 = !DILocation(line: 172, column: 6, scope: !536)
!560 = !DILocation(line: 173, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 173, column: 8)
!562 = distinct !DILexicalBlock(scope: !554, file: !2, line: 172, column: 44)
!563 = !DILocation(line: 173, column: 15, scope: !561)
!564 = !DILocation(line: 173, column: 25, scope: !561)
!565 = !DILocation(line: 173, column: 8, scope: !562)
!566 = !DILocation(line: 174, column: 15, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !2, line: 174, column: 10)
!568 = distinct !DILexicalBlock(scope: !561, file: !2, line: 173, column: 37)
!569 = !DILocation(line: 174, column: 22, scope: !567)
!570 = !DILocation(line: 174, column: 31, scope: !567)
!571 = !DILocation(line: 174, column: 46, scope: !567)
!572 = !DILocation(line: 174, column: 53, scope: !567)
!573 = !DILocation(line: 174, column: 62, scope: !567)
!574 = !DILocation(line: 174, column: 38, scope: !567)
!575 = !DILocation(line: 174, column: 10, scope: !568)
!576 = !DILocation(line: 175, column: 2, scope: !577)
!577 = distinct !DILexicalBlock(scope: !567, file: !2, line: 174, column: 70)
!578 = !DILocation(line: 177, column: 5, scope: !568)
!579 = !DILocation(line: 177, column: 15, scope: !580)
!580 = distinct !DILexicalBlock(scope: !561, file: !2, line: 177, column: 15)
!581 = !DILocation(line: 177, column: 22, scope: !580)
!582 = !DILocation(line: 177, column: 32, scope: !580)
!583 = !DILocation(line: 177, column: 15, scope: !561)
!584 = !DILocation(line: 178, column: 20, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !2, line: 178, column: 11)
!586 = distinct !DILexicalBlock(scope: !580, file: !2, line: 177, column: 45)
!587 = !DILocation(line: 178, column: 27, scope: !585)
!588 = !DILocation(line: 178, column: 41, scope: !585)
!589 = !DILocation(line: 178, column: 48, scope: !585)
!590 = !DILocation(line: 178, column: 11, scope: !585)
!591 = !DILocation(line: 178, column: 85, scope: !585)
!592 = !DILocation(line: 178, column: 11, scope: !586)
!593 = !DILocation(line: 179, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !585, file: !2, line: 178, column: 92)
!595 = !DILocation(line: 181, column: 5, scope: !586)
!596 = !DILocation(line: 182, column: 3, scope: !562)
!597 = !DILocation(line: 183, column: 3, scope: !536)
!598 = !DILocation(line: 184, column: 1, scope: !536)
!599 = distinct !DISubprogram(name: "make_ioa_addr", scope: !2, file: !2, line: 186, type: !600, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!600 = !DISubroutineType(types: !601)
!601 = !{!42, !48, !42, !51}
!602 = !DILocalVariable(name: "saddr0", arg: 1, scope: !599, file: !2, line: 186, type: !48)
!603 = !DILocation(line: 186, column: 34, scope: !599)
!604 = !DILocalVariable(name: "port", arg: 2, scope: !599, file: !2, line: 186, type: !42)
!605 = !DILocation(line: 186, column: 46, scope: !599)
!606 = !DILocalVariable(name: "addr", arg: 3, scope: !599, file: !2, line: 186, type: !51)
!607 = !DILocation(line: 186, column: 62, scope: !599)
!608 = !DILocation(line: 188, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !599, file: !2, line: 188, column: 6)
!610 = !DILocation(line: 188, column: 14, scope: !609)
!611 = !DILocation(line: 188, column: 18, scope: !609)
!612 = !DILocation(line: 188, column: 6, scope: !599)
!613 = !DILocation(line: 188, column: 24, scope: !609)
!614 = !DILocalVariable(name: "ssaddr", scope: !599, file: !2, line: 190, type: !615)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 257)
!618 = !DILocation(line: 190, column: 8, scope: !599)
!619 = !DILocation(line: 191, column: 3, scope: !599)
!620 = !DILocation(line: 191, column: 3, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !2, line: 191, column: 3)
!622 = distinct !DILexicalBlock(scope: !599, file: !2, line: 191, column: 3)
!623 = !DILocation(line: 191, column: 3, scope: !622)
!624 = !DILocalVariable(name: "szdst", scope: !625, file: !2, line: 191, type: !121)
!625 = distinct !DILexicalBlock(scope: !626, file: !2, line: 191, column: 3)
!626 = distinct !DILexicalBlock(scope: !627, file: !2, line: 191, column: 3)
!627 = distinct !DILexicalBlock(scope: !621, file: !2, line: 191, column: 3)
!628 = !DILocation(line: 191, column: 3, scope: !625)
!629 = !DILocation(line: 191, column: 3, scope: !627)
!630 = !DILocalVariable(name: "saddr", scope: !599, file: !2, line: 193, type: !43)
!631 = !DILocation(line: 193, column: 9, scope: !599)
!632 = !DILocation(line: 193, column: 15, scope: !599)
!633 = !DILocation(line: 194, column: 3, scope: !599)
!634 = !DILocation(line: 194, column: 10, scope: !599)
!635 = !DILocation(line: 194, column: 9, scope: !599)
!636 = !DILocation(line: 194, column: 16, scope: !599)
!637 = !DILocation(line: 194, column: 24, scope: !599)
!638 = distinct !{!638, !633, !639, !224}
!639 = !DILocation(line: 194, column: 26, scope: !599)
!640 = !DILocalVariable(name: "len", scope: !599, file: !2, line: 196, type: !121)
!641 = !DILocation(line: 196, column: 10, scope: !599)
!642 = !DILocation(line: 196, column: 21, scope: !599)
!643 = !DILocation(line: 196, column: 14, scope: !599)
!644 = !DILocation(line: 197, column: 3, scope: !599)
!645 = !DILocation(line: 197, column: 9, scope: !599)
!646 = !DILocation(line: 197, column: 12, scope: !599)
!647 = !DILocation(line: 198, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !2, line: 198, column: 7)
!649 = distinct !DILexicalBlock(scope: !599, file: !2, line: 197, column: 16)
!650 = !DILocation(line: 198, column: 13, scope: !648)
!651 = !DILocation(line: 198, column: 16, scope: !648)
!652 = !DILocation(line: 198, column: 19, scope: !648)
!653 = !DILocation(line: 198, column: 7, scope: !649)
!654 = !DILocation(line: 199, column: 5, scope: !655)
!655 = distinct !DILexicalBlock(scope: !648, file: !2, line: 198, column: 26)
!656 = !DILocation(line: 199, column: 11, scope: !655)
!657 = !DILocation(line: 199, column: 14, scope: !655)
!658 = !DILocation(line: 199, column: 17, scope: !655)
!659 = !DILocation(line: 200, column: 5, scope: !655)
!660 = !DILocation(line: 201, column: 4, scope: !655)
!661 = !DILocation(line: 202, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !648, file: !2, line: 201, column: 11)
!663 = distinct !{!663, !644, !664, !224}
!664 = !DILocation(line: 204, column: 3, scope: !599)
!665 = !DILocation(line: 206, column: 9, scope: !599)
!666 = !DILocation(line: 206, column: 3, scope: !599)
!667 = !DILocation(line: 207, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !599, file: !2, line: 207, column: 6)
!669 = !DILocation(line: 207, column: 11, scope: !668)
!670 = !DILocation(line: 207, column: 16, scope: !668)
!671 = !DILocation(line: 208, column: 26, scope: !668)
!672 = !DILocation(line: 208, column: 34, scope: !668)
!673 = !DILocation(line: 208, column: 43, scope: !668)
!674 = !DILocation(line: 208, column: 7, scope: !668)
!675 = !DILocation(line: 208, column: 53, scope: !668)
!676 = !DILocation(line: 207, column: 6, scope: !599)
!677 = !DILocation(line: 209, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !668, file: !2, line: 208, column: 60)
!679 = !DILocation(line: 209, column: 14, scope: !678)
!680 = !DILocation(line: 209, column: 25, scope: !678)
!681 = !DILocation(line: 213, column: 25, scope: !678)
!682 = !DILocation(line: 213, column: 5, scope: !678)
!683 = !DILocation(line: 213, column: 14, scope: !678)
!684 = !DILocation(line: 213, column: 23, scope: !678)
!685 = !DILocation(line: 214, column: 3, scope: !678)
!686 = !DILocation(line: 214, column: 34, scope: !687)
!687 = distinct !DILexicalBlock(scope: !668, file: !2, line: 214, column: 14)
!688 = !DILocation(line: 214, column: 42, scope: !687)
!689 = !DILocation(line: 214, column: 51, scope: !687)
!690 = !DILocation(line: 214, column: 14, scope: !687)
!691 = !DILocation(line: 214, column: 62, scope: !687)
!692 = !DILocation(line: 214, column: 14, scope: !668)
!693 = !DILocation(line: 215, column: 5, scope: !694)
!694 = distinct !DILexicalBlock(scope: !687, file: !2, line: 214, column: 68)
!695 = !DILocation(line: 215, column: 14, scope: !694)
!696 = !DILocation(line: 215, column: 26, scope: !694)
!697 = !DILocation(line: 219, column: 26, scope: !694)
!698 = !DILocation(line: 219, column: 5, scope: !694)
!699 = !DILocation(line: 219, column: 14, scope: !694)
!700 = !DILocation(line: 219, column: 24, scope: !694)
!701 = !DILocation(line: 220, column: 3, scope: !694)
!702 = !DILocalVariable(name: "addr_hints", scope: !703, file: !2, line: 221, type: !704)
!703 = distinct !DILexicalBlock(scope: !687, file: !2, line: 220, column: 10)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !705, line: 565, size: 384, elements: !706)
!705 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "dd84cdc2a8dcb66c232d326e9ca8b469")
!706 = !{!707, !708, !709, !710, !711, !714, !716, !717}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !704, file: !705, line: 567, baseType: !42, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !704, file: !705, line: 568, baseType: !42, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !704, file: !705, line: 569, baseType: !42, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !704, file: !705, line: 570, baseType: !42, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !704, file: !705, line: 571, baseType: !712, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !58, line: 33, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !41, line: 210, baseType: !24)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !704, file: !705, line: 572, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !704, file: !705, line: 573, baseType: !43, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !704, file: !705, line: 574, baseType: !718, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!719 = !DILocation(line: 221, column: 21, scope: !703)
!720 = !DILocalVariable(name: "addr_result", scope: !703, file: !2, line: 222, type: !718)
!721 = !DILocation(line: 222, column: 22, scope: !703)
!722 = !DILocalVariable(name: "err", scope: !703, file: !2, line: 223, type: !42)
!723 = !DILocation(line: 223, column: 9, scope: !703)
!724 = !DILocation(line: 225, column: 5, scope: !703)
!725 = !DILocation(line: 226, column: 16, scope: !703)
!726 = !DILocation(line: 226, column: 26, scope: !703)
!727 = !DILocation(line: 227, column: 16, scope: !703)
!728 = !DILocation(line: 227, column: 28, scope: !703)
!729 = !DILocation(line: 228, column: 16, scope: !703)
!730 = !DILocation(line: 228, column: 25, scope: !703)
!731 = !DILocation(line: 229, column: 16, scope: !703)
!732 = !DILocation(line: 229, column: 28, scope: !703)
!733 = !DILocation(line: 230, column: 16, scope: !703)
!734 = !DILocation(line: 230, column: 29, scope: !703)
!735 = !DILocation(line: 231, column: 16, scope: !703)
!736 = !DILocation(line: 231, column: 24, scope: !703)
!737 = !DILocation(line: 232, column: 16, scope: !703)
!738 = !DILocation(line: 232, column: 24, scope: !703)
!739 = !DILocation(line: 234, column: 23, scope: !703)
!740 = !DILocation(line: 234, column: 11, scope: !703)
!741 = !DILocation(line: 234, column: 9, scope: !703)
!742 = !DILocation(line: 235, column: 10, scope: !743)
!743 = distinct !DILexicalBlock(scope: !703, file: !2, line: 235, column: 9)
!744 = !DILocation(line: 235, column: 14, scope: !743)
!745 = !DILocation(line: 235, column: 19, scope: !743)
!746 = !DILocation(line: 235, column: 23, scope: !743)
!747 = !DILocation(line: 235, column: 9, scope: !703)
!748 = !DILocation(line: 236, column: 15, scope: !749)
!749 = distinct !DILexicalBlock(scope: !743, file: !2, line: 235, column: 37)
!750 = !DILocation(line: 236, column: 60, scope: !749)
!751 = !DILocation(line: 236, column: 79, scope: !749)
!752 = !DILocation(line: 236, column: 66, scope: !749)
!753 = !DILocation(line: 236, column: 7, scope: !749)
!754 = !DILocation(line: 237, column: 7, scope: !749)
!755 = !DILocalVariable(name: "family", scope: !703, file: !2, line: 240, type: !42)
!756 = !DILocation(line: 240, column: 9, scope: !703)
!757 = !DILocalVariable(name: "addr_result_orig", scope: !703, file: !2, line: 241, type: !718)
!758 = !DILocation(line: 241, column: 22, scope: !703)
!759 = !DILocation(line: 241, column: 41, scope: !703)
!760 = !DILocalVariable(name: "found", scope: !703, file: !2, line: 242, type: !42)
!761 = !DILocation(line: 242, column: 9, scope: !703)
!762 = !DILocation(line: 242, column: 5, scope: !703)
!763 = !DILabel(scope: !703, name: "beg_af", file: !2, line: 244)
!764 = !DILocation(line: 244, column: 5, scope: !703)
!765 = !DILocation(line: 246, column: 5, scope: !703)
!766 = !DILocation(line: 246, column: 11, scope: !703)
!767 = !DILocation(line: 248, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !2, line: 248, column: 9)
!769 = distinct !DILexicalBlock(scope: !703, file: !2, line: 246, column: 24)
!770 = !DILocation(line: 248, column: 22, scope: !768)
!771 = !DILocation(line: 248, column: 35, scope: !768)
!772 = !DILocation(line: 248, column: 32, scope: !768)
!773 = !DILocation(line: 248, column: 9, scope: !769)
!774 = !DILocation(line: 249, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !2, line: 249, column: 11)
!776 = distinct !DILexicalBlock(scope: !768, file: !2, line: 248, column: 43)
!777 = !DILocation(line: 249, column: 24, scope: !775)
!778 = !DILocation(line: 249, column: 34, scope: !775)
!779 = !DILocation(line: 249, column: 11, scope: !776)
!780 = !DILocation(line: 250, column: 14, scope: !781)
!781 = distinct !DILexicalBlock(scope: !775, file: !2, line: 249, column: 46)
!782 = !DILocation(line: 250, column: 27, scope: !781)
!783 = !DILocation(line: 250, column: 36, scope: !781)
!784 = !DILocation(line: 250, column: 42, scope: !781)
!785 = !DILocation(line: 250, column: 55, scope: !781)
!786 = !DILocation(line: 250, column: 8, scope: !781)
!787 = !DILocation(line: 251, column: 28, scope: !781)
!788 = !DILocation(line: 251, column: 8, scope: !781)
!789 = !DILocation(line: 251, column: 17, scope: !781)
!790 = !DILocation(line: 251, column: 26, scope: !781)
!791 = !DILocation(line: 255, column: 14, scope: !781)
!792 = !DILocation(line: 256, column: 8, scope: !781)
!793 = !DILocation(line: 257, column: 18, scope: !794)
!794 = distinct !DILexicalBlock(scope: !775, file: !2, line: 257, column: 18)
!795 = !DILocation(line: 257, column: 31, scope: !794)
!796 = !DILocation(line: 257, column: 41, scope: !794)
!797 = !DILocation(line: 257, column: 18, scope: !775)
!798 = !DILocation(line: 258, column: 14, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !2, line: 257, column: 54)
!800 = !DILocation(line: 258, column: 27, scope: !799)
!801 = !DILocation(line: 258, column: 36, scope: !799)
!802 = !DILocation(line: 258, column: 42, scope: !799)
!803 = !DILocation(line: 258, column: 55, scope: !799)
!804 = !DILocation(line: 258, column: 8, scope: !799)
!805 = !DILocation(line: 259, column: 29, scope: !799)
!806 = !DILocation(line: 259, column: 8, scope: !799)
!807 = !DILocation(line: 259, column: 17, scope: !799)
!808 = !DILocation(line: 259, column: 27, scope: !799)
!809 = !DILocation(line: 263, column: 14, scope: !799)
!810 = !DILocation(line: 264, column: 8, scope: !799)
!811 = !DILocation(line: 266, column: 6, scope: !776)
!812 = !DILocation(line: 268, column: 20, scope: !769)
!813 = !DILocation(line: 268, column: 33, scope: !769)
!814 = !DILocation(line: 268, column: 18, scope: !769)
!815 = distinct !{!815, !765, !816, !224}
!816 = !DILocation(line: 269, column: 5, scope: !703)
!817 = !DILocation(line: 271, column: 9, scope: !818)
!818 = distinct !DILexicalBlock(scope: !703, file: !2, line: 271, column: 8)
!819 = !DILocation(line: 271, column: 15, scope: !818)
!820 = !DILocation(line: 271, column: 18, scope: !818)
!821 = !DILocation(line: 271, column: 25, scope: !818)
!822 = !DILocation(line: 271, column: 8, scope: !703)
!823 = !DILocation(line: 272, column: 13, scope: !824)
!824 = distinct !DILexicalBlock(scope: !818, file: !2, line: 271, column: 37)
!825 = !DILocation(line: 273, column: 20, scope: !824)
!826 = !DILocation(line: 273, column: 18, scope: !824)
!827 = !DILocation(line: 274, column: 6, scope: !824)
!828 = !DILocation(line: 277, column: 18, scope: !703)
!829 = !DILocation(line: 277, column: 5, scope: !703)
!830 = !DILocation(line: 280, column: 3, scope: !599)
!831 = !DILocation(line: 281, column: 1, scope: !599)
!832 = distinct !DISubprogram(name: "make_ioa_addr_from_full_string", scope: !2, file: !2, line: 318, type: !600, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!833 = !DILocalVariable(name: "saddr", arg: 1, scope: !832, file: !2, line: 318, type: !48)
!834 = !DILocation(line: 318, column: 51, scope: !832)
!835 = !DILocalVariable(name: "default_port", arg: 2, scope: !832, file: !2, line: 318, type: !42)
!836 = !DILocation(line: 318, column: 62, scope: !832)
!837 = !DILocalVariable(name: "addr", arg: 3, scope: !832, file: !2, line: 318, type: !51)
!838 = !DILocation(line: 318, column: 86, scope: !832)
!839 = !DILocation(line: 320, column: 6, scope: !840)
!840 = distinct !DILexicalBlock(scope: !832, file: !2, line: 320, column: 5)
!841 = !DILocation(line: 320, column: 5, scope: !832)
!842 = !DILocation(line: 321, column: 3, scope: !840)
!843 = !DILocalVariable(name: "ret", scope: !832, file: !2, line: 323, type: !42)
!844 = !DILocation(line: 323, column: 6, scope: !832)
!845 = !DILocalVariable(name: "port", scope: !832, file: !2, line: 324, type: !42)
!846 = !DILocation(line: 324, column: 6, scope: !832)
!847 = !DILocalVariable(name: "s", scope: !832, file: !2, line: 325, type: !43)
!848 = !DILocation(line: 325, column: 8, scope: !832)
!849 = !DILocation(line: 325, column: 32, scope: !832)
!850 = !DILocation(line: 325, column: 12, scope: !832)
!851 = !DILocalVariable(name: "sa", scope: !832, file: !2, line: 326, type: !43)
!852 = !DILocation(line: 326, column: 8, scope: !832)
!853 = !DILocation(line: 326, column: 38, scope: !832)
!854 = !DILocation(line: 326, column: 13, scope: !832)
!855 = !DILocation(line: 327, column: 5, scope: !856)
!856 = distinct !DILexicalBlock(scope: !832, file: !2, line: 327, column: 5)
!857 = !DILocation(line: 327, column: 5, scope: !832)
!858 = !DILocation(line: 328, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 328, column: 6)
!860 = distinct !DILexicalBlock(scope: !856, file: !2, line: 327, column: 9)
!861 = !DILocation(line: 328, column: 10, scope: !859)
!862 = !DILocation(line: 328, column: 6, scope: !860)
!863 = !DILocation(line: 329, column: 11, scope: !859)
!864 = !DILocation(line: 329, column: 9, scope: !859)
!865 = !DILocation(line: 329, column: 4, scope: !859)
!866 = !DILocation(line: 330, column: 33, scope: !860)
!867 = !DILocation(line: 330, column: 36, scope: !860)
!868 = !DILocation(line: 330, column: 41, scope: !860)
!869 = !DILocation(line: 330, column: 9, scope: !860)
!870 = !DILocation(line: 330, column: 7, scope: !860)
!871 = !DILocation(line: 331, column: 2, scope: !860)
!872 = !DILocation(line: 332, column: 7, scope: !832)
!873 = !DILocation(line: 332, column: 2, scope: !832)
!874 = !DILocation(line: 333, column: 9, scope: !832)
!875 = !DILocation(line: 333, column: 2, scope: !832)
!876 = !DILocation(line: 334, column: 1, scope: !832)
!877 = distinct !DISubprogram(name: "get_addr_string_and_port", scope: !2, file: !2, line: 283, type: !878, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !137)
!878 = !DISubroutineType(types: !879)
!879 = !{!43, !43, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!881 = !DILocalVariable(name: "s0", arg: 1, scope: !877, file: !2, line: 283, type: !43)
!882 = !DILocation(line: 283, column: 45, scope: !877)
!883 = !DILocalVariable(name: "port", arg: 2, scope: !877, file: !2, line: 283, type: !880)
!884 = !DILocation(line: 283, column: 54, scope: !877)
!885 = !DILocalVariable(name: "s", scope: !877, file: !2, line: 285, type: !43)
!886 = !DILocation(line: 285, column: 8, scope: !877)
!887 = !DILocation(line: 285, column: 12, scope: !877)
!888 = !DILocation(line: 286, column: 2, scope: !877)
!889 = !DILocation(line: 286, column: 9, scope: !877)
!890 = !DILocation(line: 286, column: 8, scope: !877)
!891 = !DILocation(line: 286, column: 11, scope: !877)
!892 = !DILocation(line: 286, column: 16, scope: !877)
!893 = !DILocation(line: 286, column: 15, scope: !877)
!894 = !DILocation(line: 286, column: 17, scope: !877)
!895 = !DILocation(line: 0, scope: !877)
!896 = !DILocation(line: 286, column: 25, scope: !877)
!897 = distinct !{!897, !888, !898, !224}
!898 = !DILocation(line: 286, column: 27, scope: !877)
!899 = !DILocation(line: 287, column: 6, scope: !900)
!900 = distinct !DILexicalBlock(scope: !877, file: !2, line: 287, column: 5)
!901 = !DILocation(line: 287, column: 5, scope: !900)
!902 = !DILocation(line: 287, column: 8, scope: !900)
!903 = !DILocation(line: 287, column: 5, scope: !877)
!904 = !DILocation(line: 288, column: 3, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !2, line: 287, column: 16)
!906 = !DILocalVariable(name: "tail", scope: !905, file: !2, line: 289, type: !43)
!907 = !DILocation(line: 289, column: 9, scope: !905)
!908 = !DILocation(line: 289, column: 23, scope: !905)
!909 = !DILocation(line: 289, column: 16, scope: !905)
!910 = !DILocation(line: 290, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !905, file: !2, line: 290, column: 6)
!912 = !DILocation(line: 290, column: 6, scope: !905)
!913 = !DILocation(line: 291, column: 5, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !2, line: 290, column: 12)
!915 = !DILocation(line: 291, column: 9, scope: !914)
!916 = !DILocation(line: 292, column: 4, scope: !914)
!917 = !DILocation(line: 293, column: 4, scope: !914)
!918 = !DILocation(line: 293, column: 11, scope: !914)
!919 = !DILocation(line: 293, column: 10, scope: !914)
!920 = !DILocation(line: 293, column: 16, scope: !914)
!921 = !DILocation(line: 293, column: 21, scope: !914)
!922 = !DILocation(line: 293, column: 20, scope: !914)
!923 = !DILocation(line: 293, column: 25, scope: !914)
!924 = !DILocation(line: 0, scope: !914)
!925 = !DILocation(line: 293, column: 33, scope: !914)
!926 = distinct !{!926, !917, !927, !224}
!927 = !DILocation(line: 293, column: 35, scope: !914)
!928 = !DILocation(line: 294, column: 8, scope: !929)
!929 = distinct !DILexicalBlock(scope: !914, file: !2, line: 294, column: 7)
!930 = !DILocation(line: 294, column: 7, scope: !929)
!931 = !DILocation(line: 294, column: 12, scope: !929)
!932 = !DILocation(line: 294, column: 7, scope: !914)
!933 = !DILocation(line: 295, column: 5, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !2, line: 294, column: 19)
!935 = !DILocation(line: 296, column: 18, scope: !934)
!936 = !DILocation(line: 296, column: 13, scope: !934)
!937 = !DILocation(line: 296, column: 6, scope: !934)
!938 = !DILocation(line: 296, column: 11, scope: !934)
!939 = !DILocation(line: 297, column: 12, scope: !934)
!940 = !DILocation(line: 297, column: 5, scope: !934)
!941 = !DILocation(line: 298, column: 15, scope: !942)
!942 = distinct !DILexicalBlock(scope: !929, file: !2, line: 298, column: 14)
!943 = !DILocation(line: 298, column: 14, scope: !942)
!944 = !DILocation(line: 298, column: 20, scope: !942)
!945 = !DILocation(line: 298, column: 14, scope: !929)
!946 = !DILocation(line: 299, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !2, line: 298, column: 26)
!948 = !DILocation(line: 299, column: 11, scope: !947)
!949 = !DILocation(line: 300, column: 12, scope: !947)
!950 = !DILocation(line: 300, column: 5, scope: !947)
!951 = !DILocation(line: 302, column: 3, scope: !914)
!952 = !DILocation(line: 303, column: 2, scope: !905)
!953 = !DILocalVariable(name: "tail", scope: !954, file: !2, line: 304, type: !43)
!954 = distinct !DILexicalBlock(scope: !900, file: !2, line: 303, column: 9)
!955 = !DILocation(line: 304, column: 9, scope: !954)
!956 = !DILocation(line: 304, column: 23, scope: !954)
!957 = !DILocation(line: 304, column: 16, scope: !954)
!958 = !DILocation(line: 305, column: 6, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !2, line: 305, column: 6)
!960 = !DILocation(line: 305, column: 6, scope: !954)
!961 = !DILocation(line: 306, column: 5, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !2, line: 305, column: 12)
!963 = !DILocation(line: 306, column: 10, scope: !962)
!964 = !DILocation(line: 307, column: 4, scope: !962)
!965 = !DILocation(line: 308, column: 17, scope: !962)
!966 = !DILocation(line: 308, column: 12, scope: !962)
!967 = !DILocation(line: 308, column: 5, scope: !962)
!968 = !DILocation(line: 308, column: 10, scope: !962)
!969 = !DILocation(line: 309, column: 11, scope: !962)
!970 = !DILocation(line: 309, column: 4, scope: !962)
!971 = !DILocation(line: 311, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !959, file: !2, line: 310, column: 10)
!973 = !DILocation(line: 311, column: 10, scope: !972)
!974 = !DILocation(line: 312, column: 11, scope: !972)
!975 = !DILocation(line: 312, column: 4, scope: !972)
!976 = !DILocation(line: 315, column: 2, scope: !877)
!977 = !DILocation(line: 316, column: 1, scope: !877)
!978 = distinct !DISubprogram(name: "addr_to_string", scope: !2, file: !2, line: 336, type: !979, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!979 = !DISubroutineType(types: !980)
!980 = !{!42, !135, !44}
!981 = !DILocalVariable(name: "addr", arg: 1, scope: !978, file: !2, line: 336, type: !135)
!982 = !DILocation(line: 336, column: 36, scope: !978)
!983 = !DILocalVariable(name: "saddr", arg: 2, scope: !978, file: !2, line: 336, type: !44)
!984 = !DILocation(line: 336, column: 51, scope: !978)
!985 = !DILocation(line: 339, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !978, file: !2, line: 339, column: 6)
!987 = !DILocation(line: 339, column: 11, scope: !986)
!988 = !DILocation(line: 339, column: 14, scope: !986)
!989 = !DILocation(line: 339, column: 6, scope: !978)
!990 = !DILocalVariable(name: "addrtmp", scope: !991, file: !2, line: 341, type: !992)
!991 = distinct !DILexicalBlock(scope: !986, file: !2, line: 339, column: 21)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 46)
!995 = !DILocation(line: 341, column: 8, scope: !991)
!996 = !DILocation(line: 343, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !991, file: !2, line: 343, column: 7)
!998 = !DILocation(line: 343, column: 16, scope: !997)
!999 = !DILocation(line: 343, column: 26, scope: !997)
!1000 = !DILocation(line: 343, column: 7, scope: !991)
!1001 = !DILocation(line: 344, column: 24, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !2, line: 343, column: 38)
!1003 = !DILocation(line: 344, column: 33, scope: !1002)
!1004 = !DILocation(line: 344, column: 43, scope: !1002)
!1005 = !DILocation(line: 344, column: 4, scope: !1002)
!1006 = !DILocation(line: 345, column: 21, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 345, column: 7)
!1008 = !DILocation(line: 345, column: 7, scope: !1007)
!1009 = !DILocation(line: 345, column: 26, scope: !1007)
!1010 = !DILocation(line: 345, column: 7, scope: !1002)
!1011 = !DILocation(line: 346, column: 22, scope: !1007)
!1012 = !DILocation(line: 346, column: 59, scope: !1007)
!1013 = !DILocation(line: 346, column: 82, scope: !1007)
!1014 = !DILocation(line: 346, column: 68, scope: !1007)
!1015 = !DILocation(line: 346, column: 6, scope: !1007)
!1016 = !DILocation(line: 348, column: 21, scope: !1007)
!1017 = !DILocation(line: 348, column: 28, scope: !1007)
!1018 = !DILocation(line: 348, column: 6, scope: !1007)
!1019 = !DILocation(line: 349, column: 3, scope: !1002)
!1020 = !DILocation(line: 349, column: 14, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !997, file: !2, line: 349, column: 14)
!1022 = !DILocation(line: 349, column: 23, scope: !1021)
!1023 = !DILocation(line: 349, column: 33, scope: !1021)
!1024 = !DILocation(line: 349, column: 14, scope: !997)
!1025 = !DILocation(line: 350, column: 25, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 349, column: 46)
!1027 = !DILocation(line: 350, column: 34, scope: !1026)
!1028 = !DILocation(line: 350, column: 45, scope: !1026)
!1029 = !DILocation(line: 350, column: 4, scope: !1026)
!1030 = !DILocation(line: 351, column: 21, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 351, column: 7)
!1032 = !DILocation(line: 351, column: 7, scope: !1031)
!1033 = !DILocation(line: 351, column: 26, scope: !1031)
!1034 = !DILocation(line: 351, column: 7, scope: !1026)
!1035 = !DILocation(line: 352, column: 22, scope: !1031)
!1036 = !DILocation(line: 352, column: 61, scope: !1031)
!1037 = !DILocation(line: 352, column: 84, scope: !1031)
!1038 = !DILocation(line: 352, column: 70, scope: !1031)
!1039 = !DILocation(line: 352, column: 6, scope: !1031)
!1040 = !DILocation(line: 354, column: 21, scope: !1031)
!1041 = !DILocation(line: 354, column: 28, scope: !1031)
!1042 = !DILocation(line: 354, column: 6, scope: !1031)
!1043 = !DILocation(line: 355, column: 3, scope: !1026)
!1044 = !DILocation(line: 356, column: 4, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 355, column: 10)
!1046 = !DILocation(line: 359, column: 3, scope: !991)
!1047 = !DILocation(line: 362, column: 2, scope: !978)
!1048 = !DILocation(line: 363, column: 1, scope: !978)
!1049 = distinct !DISubprogram(name: "addr_get_port", scope: !2, file: !2, line: 398, type: !166, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1050 = !DILocalVariable(name: "addr", arg: 1, scope: !1049, file: !2, line: 398, type: !135)
!1051 = !DILocation(line: 398, column: 35, scope: !1049)
!1052 = !DILocation(line: 399, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 399, column: 5)
!1054 = !DILocation(line: 399, column: 5, scope: !1049)
!1055 = !DILocation(line: 400, column: 3, scope: !1053)
!1056 = !DILocation(line: 402, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 402, column: 6)
!1058 = !DILocation(line: 402, column: 15, scope: !1057)
!1059 = !DILocation(line: 402, column: 26, scope: !1057)
!1060 = !DILocation(line: 402, column: 6, scope: !1049)
!1061 = !DILocation(line: 403, column: 12, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 402, column: 38)
!1063 = !DILocation(line: 403, column: 5, scope: !1062)
!1064 = !DILocation(line: 404, column: 13, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 404, column: 13)
!1066 = !DILocation(line: 404, column: 22, scope: !1065)
!1067 = !DILocation(line: 404, column: 34, scope: !1065)
!1068 = !DILocation(line: 404, column: 13, scope: !1057)
!1069 = !DILocation(line: 405, column: 12, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 404, column: 47)
!1071 = !DILocation(line: 405, column: 5, scope: !1070)
!1072 = !DILocation(line: 407, column: 3, scope: !1049)
!1073 = !DILocation(line: 408, column: 1, scope: !1049)
!1074 = distinct !DISubprogram(name: "addr_to_string_no_port", scope: !2, file: !2, line: 365, type: !979, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1075 = !DILocalVariable(name: "addr", arg: 1, scope: !1074, file: !2, line: 365, type: !135)
!1076 = !DILocation(line: 365, column: 44, scope: !1074)
!1077 = !DILocalVariable(name: "saddr", arg: 2, scope: !1074, file: !2, line: 365, type: !44)
!1078 = !DILocation(line: 365, column: 59, scope: !1074)
!1079 = !DILocation(line: 368, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 368, column: 6)
!1081 = !DILocation(line: 368, column: 11, scope: !1080)
!1082 = !DILocation(line: 368, column: 14, scope: !1080)
!1083 = !DILocation(line: 368, column: 6, scope: !1074)
!1084 = !DILocalVariable(name: "addrtmp", scope: !1085, file: !2, line: 370, type: !1086)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 368, column: 21)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !1087)
!1087 = !{!1088}
!1088 = !DISubrange(count: 65)
!1089 = !DILocation(line: 370, column: 8, scope: !1085)
!1090 = !DILocation(line: 372, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 372, column: 7)
!1092 = !DILocation(line: 372, column: 16, scope: !1091)
!1093 = !DILocation(line: 372, column: 26, scope: !1091)
!1094 = !DILocation(line: 372, column: 7, scope: !1085)
!1095 = !DILocation(line: 373, column: 24, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 372, column: 38)
!1097 = !DILocation(line: 373, column: 33, scope: !1096)
!1098 = !DILocation(line: 373, column: 43, scope: !1096)
!1099 = !DILocation(line: 373, column: 4, scope: !1096)
!1100 = !DILocation(line: 374, column: 19, scope: !1096)
!1101 = !DILocation(line: 374, column: 26, scope: !1096)
!1102 = !DILocation(line: 374, column: 4, scope: !1096)
!1103 = !DILocation(line: 375, column: 3, scope: !1096)
!1104 = !DILocation(line: 375, column: 14, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 375, column: 14)
!1106 = !DILocation(line: 375, column: 23, scope: !1105)
!1107 = !DILocation(line: 375, column: 33, scope: !1105)
!1108 = !DILocation(line: 375, column: 14, scope: !1091)
!1109 = !DILocation(line: 376, column: 25, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 375, column: 46)
!1111 = !DILocation(line: 376, column: 34, scope: !1110)
!1112 = !DILocation(line: 376, column: 45, scope: !1110)
!1113 = !DILocation(line: 376, column: 4, scope: !1110)
!1114 = !DILocation(line: 377, column: 19, scope: !1110)
!1115 = !DILocation(line: 377, column: 26, scope: !1110)
!1116 = !DILocation(line: 377, column: 4, scope: !1110)
!1117 = !DILocation(line: 378, column: 3, scope: !1110)
!1118 = !DILocation(line: 379, column: 4, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 378, column: 10)
!1120 = !DILocation(line: 382, column: 3, scope: !1085)
!1121 = !DILocation(line: 385, column: 2, scope: !1074)
!1122 = !DILocation(line: 386, column: 1, scope: !1074)
!1123 = distinct !DISubprogram(name: "addr_set_port", scope: !2, file: !2, line: 388, type: !1124, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !51, !42}
!1126 = !DILocalVariable(name: "addr", arg: 1, scope: !1123, file: !2, line: 388, type: !51)
!1127 = !DILocation(line: 388, column: 30, scope: !1123)
!1128 = !DILocalVariable(name: "port", arg: 2, scope: !1123, file: !2, line: 388, type: !42)
!1129 = !DILocation(line: 388, column: 40, scope: !1123)
!1130 = !DILocation(line: 389, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 389, column: 6)
!1132 = !DILocation(line: 389, column: 6, scope: !1123)
!1133 = !DILocation(line: 390, column: 8, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 390, column: 8)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 389, column: 12)
!1136 = !DILocation(line: 390, column: 17, scope: !1134)
!1137 = !DILocation(line: 390, column: 28, scope: !1134)
!1138 = !DILocation(line: 390, column: 8, scope: !1135)
!1139 = !DILocation(line: 391, column: 27, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 390, column: 40)
!1141 = !DILocation(line: 391, column: 7, scope: !1140)
!1142 = !DILocation(line: 391, column: 16, scope: !1140)
!1143 = !DILocation(line: 391, column: 25, scope: !1140)
!1144 = !DILocation(line: 392, column: 5, scope: !1140)
!1145 = !DILocation(line: 392, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 392, column: 15)
!1147 = !DILocation(line: 392, column: 24, scope: !1146)
!1148 = !DILocation(line: 392, column: 36, scope: !1146)
!1149 = !DILocation(line: 392, column: 15, scope: !1134)
!1150 = !DILocation(line: 393, column: 28, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 392, column: 49)
!1152 = !DILocation(line: 393, column: 7, scope: !1151)
!1153 = !DILocation(line: 393, column: 16, scope: !1151)
!1154 = !DILocation(line: 393, column: 26, scope: !1151)
!1155 = !DILocation(line: 394, column: 5, scope: !1151)
!1156 = !DILocation(line: 395, column: 3, scope: !1135)
!1157 = !DILocation(line: 396, column: 1, scope: !1123)
!1158 = distinct !DISubprogram(name: "ioa_addr_range_set", scope: !2, file: !2, line: 412, type: !1159, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1161, !135, !135}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !53, line: 53, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 50, size: 448, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1163, file: !53, line: 51, baseType: !52, size: 224)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1163, file: !53, line: 52, baseType: !52, size: 224, offset: 224)
!1167 = !DILocalVariable(name: "range", arg: 1, scope: !1158, file: !2, line: 412, type: !1161)
!1168 = !DILocation(line: 412, column: 41, scope: !1158)
!1169 = !DILocalVariable(name: "addr_min", arg: 2, scope: !1158, file: !2, line: 412, type: !135)
!1170 = !DILocation(line: 412, column: 64, scope: !1158)
!1171 = !DILocalVariable(name: "addr_max", arg: 3, scope: !1158, file: !2, line: 412, type: !135)
!1172 = !DILocation(line: 412, column: 90, scope: !1158)
!1173 = !DILocation(line: 413, column: 6, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 413, column: 6)
!1175 = !DILocation(line: 413, column: 6, scope: !1158)
!1176 = !DILocation(line: 414, column: 8, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 414, column: 8)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 413, column: 13)
!1179 = !DILocation(line: 414, column: 8, scope: !1178)
!1180 = !DILocation(line: 414, column: 29, scope: !1177)
!1181 = !DILocation(line: 414, column: 36, scope: !1177)
!1182 = !DILocation(line: 414, column: 41, scope: !1177)
!1183 = !DILocation(line: 414, column: 18, scope: !1177)
!1184 = !DILocation(line: 415, column: 25, scope: !1177)
!1185 = !DILocation(line: 415, column: 32, scope: !1177)
!1186 = !DILocation(line: 415, column: 10, scope: !1177)
!1187 = !DILocation(line: 416, column: 8, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 416, column: 8)
!1189 = !DILocation(line: 416, column: 8, scope: !1178)
!1190 = !DILocation(line: 416, column: 29, scope: !1188)
!1191 = !DILocation(line: 416, column: 36, scope: !1188)
!1192 = !DILocation(line: 416, column: 41, scope: !1188)
!1193 = !DILocation(line: 416, column: 18, scope: !1188)
!1194 = !DILocation(line: 417, column: 25, scope: !1188)
!1195 = !DILocation(line: 417, column: 32, scope: !1188)
!1196 = !DILocation(line: 417, column: 10, scope: !1188)
!1197 = !DILocation(line: 418, column: 3, scope: !1178)
!1198 = !DILocation(line: 419, column: 1, scope: !1158)
!1199 = distinct !DISubprogram(name: "addr_less_eq", scope: !2, file: !2, line: 421, type: !460, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1200 = !DILocalVariable(name: "addr1", arg: 1, scope: !1199, file: !2, line: 421, type: !135)
!1201 = !DILocation(line: 421, column: 34, scope: !1199)
!1202 = !DILocalVariable(name: "addr2", arg: 2, scope: !1199, file: !2, line: 421, type: !135)
!1203 = !DILocation(line: 421, column: 57, scope: !1199)
!1204 = !DILocation(line: 423, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 423, column: 6)
!1206 = !DILocation(line: 423, column: 6, scope: !1199)
!1207 = !DILocation(line: 423, column: 14, scope: !1205)
!1208 = !DILocation(line: 424, column: 12, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 424, column: 11)
!1210 = !DILocation(line: 424, column: 11, scope: !1205)
!1211 = !DILocation(line: 424, column: 19, scope: !1209)
!1212 = !DILocation(line: 426, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 426, column: 8)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 425, column: 8)
!1215 = !DILocation(line: 426, column: 18, scope: !1213)
!1216 = !DILocation(line: 426, column: 31, scope: !1213)
!1217 = !DILocation(line: 426, column: 41, scope: !1213)
!1218 = !DILocation(line: 426, column: 28, scope: !1213)
!1219 = !DILocation(line: 426, column: 8, scope: !1214)
!1220 = !DILocation(line: 426, column: 60, scope: !1213)
!1221 = !DILocation(line: 426, column: 70, scope: !1213)
!1222 = !DILocation(line: 426, column: 82, scope: !1213)
!1223 = !DILocation(line: 426, column: 92, scope: !1213)
!1224 = !DILocation(line: 426, column: 80, scope: !1213)
!1225 = !DILocation(line: 426, column: 52, scope: !1213)
!1226 = !DILocation(line: 427, column: 13, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 427, column: 13)
!1228 = !DILocation(line: 427, column: 23, scope: !1227)
!1229 = !DILocation(line: 427, column: 33, scope: !1227)
!1230 = !DILocation(line: 427, column: 13, scope: !1213)
!1231 = !DILocation(line: 428, column: 25, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 427, column: 45)
!1233 = !DILocation(line: 428, column: 73, scope: !1232)
!1234 = !DILocation(line: 428, column: 60, scope: !1232)
!1235 = !DILocation(line: 428, column: 7, scope: !1232)
!1236 = !DILocation(line: 429, column: 15, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 429, column: 15)
!1238 = !DILocation(line: 429, column: 25, scope: !1237)
!1239 = !DILocation(line: 429, column: 35, scope: !1237)
!1240 = !DILocation(line: 429, column: 15, scope: !1227)
!1241 = !DILocalVariable(name: "i", scope: !1242, file: !2, line: 430, type: !42)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 429, column: 48)
!1243 = !DILocation(line: 430, column: 11, scope: !1242)
!1244 = !DILocation(line: 431, column: 12, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 431, column: 7)
!1246 = !DILocation(line: 431, column: 11, scope: !1245)
!1247 = !DILocation(line: 431, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 431, column: 7)
!1249 = !DILocation(line: 431, column: 16, scope: !1248)
!1250 = !DILocation(line: 431, column: 7, scope: !1245)
!1251 = !DILocation(line: 432, column: 31, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 432, column: 5)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 431, column: 25)
!1254 = !DILocation(line: 432, column: 41, scope: !1252)
!1255 = !DILocation(line: 432, column: 53, scope: !1252)
!1256 = !DILocation(line: 432, column: 15, scope: !1252)
!1257 = !DILocation(line: 432, column: 5, scope: !1252)
!1258 = !DILocation(line: 432, column: 85, scope: !1252)
!1259 = !DILocation(line: 432, column: 95, scope: !1252)
!1260 = !DILocation(line: 432, column: 107, scope: !1252)
!1261 = !DILocation(line: 432, column: 69, scope: !1252)
!1262 = !DILocation(line: 432, column: 59, scope: !1252)
!1263 = !DILocation(line: 432, column: 57, scope: !1252)
!1264 = !DILocation(line: 432, column: 5, scope: !1253)
!1265 = !DILocation(line: 433, column: 4, scope: !1252)
!1266 = !DILocation(line: 434, column: 7, scope: !1253)
!1267 = !DILocation(line: 431, column: 21, scope: !1248)
!1268 = !DILocation(line: 431, column: 7, scope: !1248)
!1269 = distinct !{!1269, !1250, !1270, !224}
!1270 = !DILocation(line: 434, column: 7, scope: !1245)
!1271 = !DILocation(line: 435, column: 7, scope: !1242)
!1272 = !DILocation(line: 436, column: 12, scope: !1237)
!1273 = !DILocation(line: 438, column: 1, scope: !1199)
!1274 = distinct !DISubprogram(name: "ioa_addr_in_range", scope: !2, file: !2, line: 440, type: !1275, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!42, !1277, !135}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1279 = !DILocalVariable(name: "range", arg: 1, scope: !1274, file: !2, line: 440, type: !1277)
!1280 = !DILocation(line: 440, column: 45, scope: !1274)
!1281 = !DILocalVariable(name: "addr", arg: 2, scope: !1274, file: !2, line: 440, type: !135)
!1282 = !DILocation(line: 440, column: 68, scope: !1274)
!1283 = !DILocation(line: 442, column: 6, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 442, column: 6)
!1285 = !DILocation(line: 442, column: 12, scope: !1284)
!1286 = !DILocation(line: 442, column: 15, scope: !1284)
!1287 = !DILocation(line: 442, column: 6, scope: !1274)
!1288 = !DILocation(line: 443, column: 19, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 443, column: 8)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 442, column: 21)
!1291 = !DILocation(line: 443, column: 26, scope: !1289)
!1292 = !DILocation(line: 443, column: 8, scope: !1289)
!1293 = !DILocation(line: 443, column: 32, scope: !1289)
!1294 = !DILocation(line: 443, column: 50, scope: !1289)
!1295 = !DILocation(line: 443, column: 57, scope: !1289)
!1296 = !DILocation(line: 443, column: 62, scope: !1289)
!1297 = !DILocation(line: 443, column: 35, scope: !1289)
!1298 = !DILocation(line: 443, column: 8, scope: !1290)
!1299 = !DILocation(line: 444, column: 21, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 444, column: 10)
!1301 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 443, column: 69)
!1302 = !DILocation(line: 444, column: 28, scope: !1300)
!1303 = !DILocation(line: 444, column: 10, scope: !1300)
!1304 = !DILocation(line: 444, column: 10, scope: !1301)
!1305 = !DILocation(line: 445, column: 2, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 444, column: 35)
!1307 = !DILocation(line: 447, column: 22, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 446, column: 14)
!1309 = !DILocation(line: 447, column: 29, scope: !1308)
!1310 = !DILocation(line: 447, column: 36, scope: !1308)
!1311 = !DILocation(line: 447, column: 9, scope: !1308)
!1312 = !DILocation(line: 447, column: 2, scope: !1308)
!1313 = !DILocation(line: 450, column: 3, scope: !1290)
!1314 = !DILocation(line: 452, column: 3, scope: !1274)
!1315 = !DILocation(line: 453, column: 1, scope: !1274)
!1316 = distinct !DISubprogram(name: "ioa_addr_range_cpy", scope: !2, file: !2, line: 455, type: !1317, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1161, !1277}
!1319 = !DILocalVariable(name: "dest", arg: 1, scope: !1316, file: !2, line: 455, type: !1161)
!1320 = !DILocation(line: 455, column: 41, scope: !1316)
!1321 = !DILocalVariable(name: "src", arg: 2, scope: !1316, file: !2, line: 455, type: !1277)
!1322 = !DILocation(line: 455, column: 69, scope: !1316)
!1323 = !DILocation(line: 456, column: 6, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 456, column: 6)
!1325 = !DILocation(line: 456, column: 11, scope: !1324)
!1326 = !DILocation(line: 456, column: 14, scope: !1324)
!1327 = !DILocation(line: 456, column: 6, scope: !1316)
!1328 = !DILocation(line: 457, column: 16, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 456, column: 19)
!1330 = !DILocation(line: 457, column: 22, scope: !1329)
!1331 = !DILocation(line: 457, column: 29, scope: !1329)
!1332 = !DILocation(line: 457, column: 34, scope: !1329)
!1333 = !DILocation(line: 457, column: 5, scope: !1329)
!1334 = !DILocation(line: 458, column: 16, scope: !1329)
!1335 = !DILocation(line: 458, column: 22, scope: !1329)
!1336 = !DILocation(line: 458, column: 29, scope: !1329)
!1337 = !DILocation(line: 458, column: 34, scope: !1329)
!1338 = !DILocation(line: 458, column: 5, scope: !1329)
!1339 = !DILocation(line: 459, column: 3, scope: !1329)
!1340 = !DILocation(line: 460, column: 1, scope: !1316)
!1341 = distinct !DISubprogram(name: "ioa_addr_is_multicast", scope: !2, file: !2, line: 464, type: !1342, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!42, !51}
!1344 = !DILocalVariable(name: "addr", arg: 1, scope: !1341, file: !2, line: 464, type: !51)
!1345 = !DILocation(line: 464, column: 37, scope: !1341)
!1346 = !DILocation(line: 466, column: 5, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 466, column: 5)
!1348 = !DILocation(line: 466, column: 5, scope: !1341)
!1349 = !DILocation(line: 467, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 467, column: 6)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 466, column: 11)
!1352 = !DILocation(line: 467, column: 15, scope: !1350)
!1353 = !DILocation(line: 467, column: 25, scope: !1350)
!1354 = !DILocation(line: 467, column: 6, scope: !1351)
!1355 = !DILocalVariable(name: "u", scope: !1356, file: !2, line: 468, type: !48)
!1356 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 467, column: 37)
!1357 = !DILocation(line: 468, column: 19, scope: !1356)
!1358 = !DILocation(line: 468, column: 42, scope: !1356)
!1359 = !DILocation(line: 468, column: 51, scope: !1356)
!1360 = !DILocation(line: 469, column: 12, scope: !1356)
!1361 = !DILocation(line: 469, column: 17, scope: !1356)
!1362 = !DILocation(line: 469, column: 4, scope: !1356)
!1363 = !DILocation(line: 470, column: 13, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 470, column: 13)
!1365 = !DILocation(line: 470, column: 22, scope: !1364)
!1366 = !DILocation(line: 470, column: 32, scope: !1364)
!1367 = !DILocation(line: 470, column: 13, scope: !1350)
!1368 = !DILocalVariable(name: "u", scope: !1369, file: !2, line: 471, type: !45)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 470, column: 45)
!1370 = !DILocation(line: 471, column: 12, scope: !1369)
!1371 = !DILocation(line: 471, column: 35, scope: !1369)
!1372 = !DILocation(line: 471, column: 44, scope: !1369)
!1373 = !DILocation(line: 471, column: 16, scope: !1369)
!1374 = !DILocation(line: 472, column: 12, scope: !1369)
!1375 = !DILocation(line: 472, column: 14, scope: !1369)
!1376 = !DILocation(line: 472, column: 4, scope: !1369)
!1377 = !DILocation(line: 474, column: 2, scope: !1351)
!1378 = !DILocation(line: 475, column: 2, scope: !1341)
!1379 = !DILocation(line: 476, column: 1, scope: !1341)
!1380 = distinct !DISubprogram(name: "ioa_addr_is_loopback", scope: !2, file: !2, line: 478, type: !1342, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1381 = !DILocalVariable(name: "addr", arg: 1, scope: !1380, file: !2, line: 478, type: !51)
!1382 = !DILocation(line: 478, column: 36, scope: !1380)
!1383 = !DILocation(line: 480, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 480, column: 5)
!1385 = !DILocation(line: 480, column: 5, scope: !1380)
!1386 = !DILocation(line: 481, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 481, column: 6)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 480, column: 11)
!1389 = !DILocation(line: 481, column: 15, scope: !1387)
!1390 = !DILocation(line: 481, column: 25, scope: !1387)
!1391 = !DILocation(line: 481, column: 6, scope: !1388)
!1392 = !DILocalVariable(name: "u", scope: !1393, file: !2, line: 482, type: !48)
!1393 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 481, column: 37)
!1394 = !DILocation(line: 482, column: 19, scope: !1393)
!1395 = !DILocation(line: 482, column: 42, scope: !1393)
!1396 = !DILocation(line: 482, column: 51, scope: !1393)
!1397 = !DILocation(line: 483, column: 12, scope: !1393)
!1398 = !DILocation(line: 483, column: 17, scope: !1393)
!1399 = !DILocation(line: 483, column: 4, scope: !1393)
!1400 = !DILocation(line: 484, column: 13, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 484, column: 13)
!1402 = !DILocation(line: 484, column: 22, scope: !1401)
!1403 = !DILocation(line: 484, column: 32, scope: !1401)
!1404 = !DILocation(line: 484, column: 13, scope: !1387)
!1405 = !DILocalVariable(name: "u", scope: !1406, file: !2, line: 485, type: !48)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 484, column: 45)
!1407 = !DILocation(line: 485, column: 19, scope: !1406)
!1408 = !DILocation(line: 485, column: 42, scope: !1406)
!1409 = !DILocation(line: 485, column: 51, scope: !1406)
!1410 = !DILocation(line: 486, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 486, column: 7)
!1412 = !DILocation(line: 486, column: 13, scope: !1411)
!1413 = !DILocation(line: 486, column: 7, scope: !1406)
!1414 = !DILocalVariable(name: "i", scope: !1415, file: !2, line: 487, type: !42)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 486, column: 19)
!1416 = !DILocation(line: 487, column: 9, scope: !1415)
!1417 = !DILocation(line: 488, column: 10, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 488, column: 5)
!1419 = !DILocation(line: 488, column: 9, scope: !1418)
!1420 = !DILocation(line: 488, column: 13, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 488, column: 5)
!1422 = !DILocation(line: 488, column: 14, scope: !1421)
!1423 = !DILocation(line: 488, column: 5, scope: !1418)
!1424 = !DILocation(line: 489, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 489, column: 9)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 488, column: 23)
!1427 = !DILocation(line: 489, column: 11, scope: !1425)
!1428 = !DILocation(line: 489, column: 9, scope: !1426)
!1429 = !DILocation(line: 490, column: 7, scope: !1425)
!1430 = !DILocation(line: 491, column: 5, scope: !1426)
!1431 = !DILocation(line: 488, column: 18, scope: !1421)
!1432 = !DILocation(line: 488, column: 5, scope: !1421)
!1433 = distinct !{!1433, !1423, !1434, !224}
!1434 = !DILocation(line: 491, column: 5, scope: !1418)
!1435 = !DILocation(line: 492, column: 5, scope: !1415)
!1436 = !DILocation(line: 494, column: 3, scope: !1406)
!1437 = !DILocation(line: 495, column: 2, scope: !1388)
!1438 = !DILocation(line: 496, column: 2, scope: !1380)
!1439 = !DILocation(line: 497, column: 1, scope: !1380)
!1440 = distinct !DISubprogram(name: "ioa_addr_is_zero", scope: !2, file: !2, line: 505, type: !1342, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1441 = !DILocalVariable(name: "addr", arg: 1, scope: !1440, file: !2, line: 505, type: !51)
!1442 = !DILocation(line: 505, column: 32, scope: !1440)
!1443 = !DILocation(line: 507, column: 5, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 507, column: 5)
!1445 = !DILocation(line: 507, column: 5, scope: !1440)
!1446 = !DILocation(line: 508, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 508, column: 6)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 507, column: 11)
!1449 = !DILocation(line: 508, column: 15, scope: !1447)
!1450 = !DILocation(line: 508, column: 25, scope: !1447)
!1451 = !DILocation(line: 508, column: 6, scope: !1448)
!1452 = !DILocalVariable(name: "u", scope: !1453, file: !2, line: 509, type: !48)
!1453 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 508, column: 37)
!1454 = !DILocation(line: 509, column: 19, scope: !1453)
!1455 = !DILocation(line: 509, column: 42, scope: !1453)
!1456 = !DILocation(line: 509, column: 51, scope: !1453)
!1457 = !DILocation(line: 510, column: 12, scope: !1453)
!1458 = !DILocation(line: 510, column: 17, scope: !1453)
!1459 = !DILocation(line: 510, column: 4, scope: !1453)
!1460 = !DILocation(line: 511, column: 13, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 511, column: 13)
!1462 = !DILocation(line: 511, column: 22, scope: !1461)
!1463 = !DILocation(line: 511, column: 32, scope: !1461)
!1464 = !DILocation(line: 511, column: 13, scope: !1447)
!1465 = !DILocalVariable(name: "u", scope: !1466, file: !2, line: 512, type: !48)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 511, column: 45)
!1467 = !DILocation(line: 512, column: 19, scope: !1466)
!1468 = !DILocation(line: 512, column: 42, scope: !1466)
!1469 = !DILocation(line: 512, column: 51, scope: !1466)
!1470 = !DILocalVariable(name: "i", scope: !1466, file: !2, line: 513, type: !42)
!1471 = !DILocation(line: 513, column: 8, scope: !1466)
!1472 = !DILocation(line: 514, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 514, column: 4)
!1474 = !DILocation(line: 514, column: 8, scope: !1473)
!1475 = !DILocation(line: 514, column: 12, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 514, column: 4)
!1477 = !DILocation(line: 514, column: 13, scope: !1476)
!1478 = !DILocation(line: 514, column: 4, scope: !1473)
!1479 = !DILocation(line: 515, column: 8, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 515, column: 8)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 514, column: 23)
!1482 = !DILocation(line: 515, column: 10, scope: !1480)
!1483 = !DILocation(line: 515, column: 8, scope: !1481)
!1484 = !DILocation(line: 516, column: 6, scope: !1480)
!1485 = !DILocation(line: 517, column: 4, scope: !1481)
!1486 = !DILocation(line: 514, column: 18, scope: !1476)
!1487 = !DILocation(line: 514, column: 4, scope: !1476)
!1488 = distinct !{!1488, !1478, !1489, !224}
!1489 = !DILocation(line: 517, column: 4, scope: !1473)
!1490 = !DILocation(line: 518, column: 4, scope: !1466)
!1491 = !DILocation(line: 520, column: 2, scope: !1448)
!1492 = !DILocation(line: 521, column: 2, scope: !1440)
!1493 = !DILocation(line: 522, column: 1, scope: !1440)
!1494 = distinct !DISubprogram(name: "ioa_addr_add_mapping", scope: !2, file: !2, line: 534, type: !1495, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !51, !51}
!1497 = !DILocalVariable(name: "apub", arg: 1, scope: !1494, file: !2, line: 534, type: !51)
!1498 = !DILocation(line: 534, column: 37, scope: !1494)
!1499 = !DILocalVariable(name: "apriv", arg: 2, scope: !1494, file: !2, line: 534, type: !51)
!1500 = !DILocation(line: 534, column: 53, scope: !1494)
!1501 = !DILocalVariable(name: "new_size", scope: !1494, file: !2, line: 536, type: !121)
!1502 = !DILocation(line: 536, column: 9, scope: !1494)
!1503 = !DILocation(line: 536, column: 20, scope: !1494)
!1504 = !DILocation(line: 536, column: 24, scope: !1494)
!1505 = !DILocation(line: 537, column: 37, scope: !1494)
!1506 = !DILocation(line: 537, column: 51, scope: !1494)
!1507 = !DILocation(line: 537, column: 29, scope: !1494)
!1508 = !DILocation(line: 537, column: 15, scope: !1494)
!1509 = !DILocation(line: 538, column: 38, scope: !1494)
!1510 = !DILocation(line: 538, column: 53, scope: !1494)
!1511 = !DILocation(line: 538, column: 30, scope: !1494)
!1512 = !DILocation(line: 538, column: 16, scope: !1494)
!1513 = !DILocation(line: 539, column: 34, scope: !1494)
!1514 = !DILocation(line: 539, column: 2, scope: !1494)
!1515 = !DILocation(line: 539, column: 15, scope: !1494)
!1516 = !DILocation(line: 539, column: 22, scope: !1494)
!1517 = !DILocation(line: 540, column: 35, scope: !1494)
!1518 = !DILocation(line: 540, column: 2, scope: !1494)
!1519 = !DILocation(line: 540, column: 16, scope: !1494)
!1520 = !DILocation(line: 540, column: 23, scope: !1494)
!1521 = !DILocation(line: 541, column: 11, scope: !1494)
!1522 = !DILocation(line: 541, column: 24, scope: !1494)
!1523 = !DILocation(line: 541, column: 32, scope: !1494)
!1524 = !DILocation(line: 541, column: 2, scope: !1494)
!1525 = !DILocation(line: 542, column: 11, scope: !1494)
!1526 = !DILocation(line: 542, column: 25, scope: !1494)
!1527 = !DILocation(line: 542, column: 33, scope: !1494)
!1528 = !DILocation(line: 542, column: 2, scope: !1494)
!1529 = !DILocation(line: 543, column: 2, scope: !1494)
!1530 = !DILocation(line: 544, column: 6, scope: !1494)
!1531 = !DILocation(line: 545, column: 1, scope: !1494)
!1532 = distinct !DISubprogram(name: "map_addr_from_public_to_private", scope: !2, file: !2, line: 547, type: !1533, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !135, !51}
!1535 = !DILocalVariable(name: "public_addr", arg: 1, scope: !1532, file: !2, line: 547, type: !135)
!1536 = !DILocation(line: 547, column: 54, scope: !1532)
!1537 = !DILocalVariable(name: "private_addr", arg: 2, scope: !1532, file: !2, line: 547, type: !51)
!1538 = !DILocation(line: 547, column: 77, scope: !1532)
!1539 = !DILocalVariable(name: "i", scope: !1532, file: !2, line: 549, type: !121)
!1540 = !DILocation(line: 549, column: 9, scope: !1532)
!1541 = !DILocation(line: 550, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 550, column: 2)
!1543 = !DILocation(line: 550, column: 6, scope: !1542)
!1544 = !DILocation(line: 550, column: 10, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 550, column: 2)
!1546 = !DILocation(line: 550, column: 12, scope: !1545)
!1547 = !DILocation(line: 550, column: 11, scope: !1545)
!1548 = !DILocation(line: 550, column: 2, scope: !1542)
!1549 = !DILocation(line: 551, column: 22, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 551, column: 6)
!1551 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 550, column: 24)
!1552 = !DILocation(line: 551, column: 34, scope: !1550)
!1553 = !DILocation(line: 551, column: 47, scope: !1550)
!1554 = !DILocation(line: 551, column: 6, scope: !1550)
!1555 = !DILocation(line: 551, column: 6, scope: !1551)
!1556 = !DILocation(line: 552, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 551, column: 52)
!1558 = !DILocation(line: 552, column: 26, scope: !1557)
!1559 = !DILocation(line: 552, column: 40, scope: !1557)
!1560 = !DILocation(line: 552, column: 4, scope: !1557)
!1561 = !DILocation(line: 553, column: 18, scope: !1557)
!1562 = !DILocation(line: 553, column: 45, scope: !1557)
!1563 = !DILocation(line: 553, column: 31, scope: !1557)
!1564 = !DILocation(line: 553, column: 4, scope: !1557)
!1565 = !DILocation(line: 554, column: 4, scope: !1557)
!1566 = !DILocation(line: 556, column: 2, scope: !1551)
!1567 = !DILocation(line: 550, column: 19, scope: !1545)
!1568 = !DILocation(line: 550, column: 2, scope: !1545)
!1569 = distinct !{!1569, !1548, !1570, !224}
!1570 = !DILocation(line: 556, column: 2, scope: !1542)
!1571 = !DILocation(line: 557, column: 11, scope: !1532)
!1572 = !DILocation(line: 557, column: 24, scope: !1532)
!1573 = !DILocation(line: 557, column: 2, scope: !1532)
!1574 = !DILocation(line: 558, column: 1, scope: !1532)
!1575 = distinct !DISubprogram(name: "map_addr_from_private_to_public", scope: !2, file: !2, line: 560, type: !1533, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !137)
!1576 = !DILocalVariable(name: "private_addr", arg: 1, scope: !1575, file: !2, line: 560, type: !135)
!1577 = !DILocation(line: 560, column: 54, scope: !1575)
!1578 = !DILocalVariable(name: "public_addr", arg: 2, scope: !1575, file: !2, line: 560, type: !51)
!1579 = !DILocation(line: 560, column: 78, scope: !1575)
!1580 = !DILocalVariable(name: "i", scope: !1575, file: !2, line: 562, type: !121)
!1581 = !DILocation(line: 562, column: 9, scope: !1575)
!1582 = !DILocation(line: 563, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 563, column: 2)
!1584 = !DILocation(line: 563, column: 6, scope: !1583)
!1585 = !DILocation(line: 563, column: 10, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 563, column: 2)
!1587 = !DILocation(line: 563, column: 12, scope: !1586)
!1588 = !DILocation(line: 563, column: 11, scope: !1586)
!1589 = !DILocation(line: 563, column: 2, scope: !1583)
!1590 = !DILocation(line: 564, column: 22, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 564, column: 6)
!1592 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 563, column: 24)
!1593 = !DILocation(line: 564, column: 35, scope: !1591)
!1594 = !DILocation(line: 564, column: 49, scope: !1591)
!1595 = !DILocation(line: 564, column: 6, scope: !1591)
!1596 = !DILocation(line: 564, column: 6, scope: !1592)
!1597 = !DILocation(line: 565, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 564, column: 54)
!1599 = !DILocation(line: 565, column: 25, scope: !1598)
!1600 = !DILocation(line: 565, column: 38, scope: !1598)
!1601 = !DILocation(line: 565, column: 4, scope: !1598)
!1602 = !DILocation(line: 566, column: 18, scope: !1598)
!1603 = !DILocation(line: 566, column: 44, scope: !1598)
!1604 = !DILocation(line: 566, column: 30, scope: !1598)
!1605 = !DILocation(line: 566, column: 4, scope: !1598)
!1606 = !DILocation(line: 567, column: 4, scope: !1598)
!1607 = !DILocation(line: 569, column: 2, scope: !1592)
!1608 = !DILocation(line: 563, column: 19, scope: !1586)
!1609 = !DILocation(line: 563, column: 2, scope: !1586)
!1610 = distinct !{!1610, !1589, !1611, !224}
!1611 = !DILocation(line: 569, column: 2, scope: !1583)
!1612 = !DILocation(line: 570, column: 11, scope: !1575)
!1613 = !DILocation(line: 570, column: 23, scope: !1575)
!1614 = !DILocation(line: 570, column: 2, scope: !1575)
!1615 = !DILocation(line: 571, column: 1, scope: !1575)
