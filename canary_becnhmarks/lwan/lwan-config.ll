; ModuleID = '/home/raj/lwan/common/lwan-config.c'
source_filename = "/home/raj/lwan/common/lwan-config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.config_t_ = type { ptr, i32, ptr }
%struct.config_line_t_ = type { %union.anon, i32, [1024 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [36 x i8] c"/home/raj/lwan/common/lwan-config.c\00", align 1, !dbg !7
@__FUNCTION__.parse_time_period = private unnamed_addr constant [18 x i8] c"parse_time_period\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [32 x i8] c"Ignoring unknown multiplier: %c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !30
@.str.6 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !35
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !40
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !45
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [26 x i8] c"Malformed section opening\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [25 x i8] c"Malformed key=value line\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [31 x i8] c"Expecting section or key=value\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [3 x i8] c"re\00", align 1, !dbg !66

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_time_period(ptr noundef %0, i32 noundef %1) #0 !dbg !107 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata ptr %6, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 0, ptr %6, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %7, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata ptr %8, metadata !119, metadata !DIExpression()), !dbg !120
  %9 = load ptr, ptr %4, align 8, !dbg !121
  %10 = icmp ne ptr %9, null, !dbg !121
  br i1 %10, label %13, label %11, !dbg !123

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4, !dbg !124
  store i32 %12, ptr %3, align 4, !dbg !125
  br label %80, !dbg !125

13:                                               ; preds = %2
  br label %14, !dbg !126

14:                                               ; preds = %65, %13
  %15 = load ptr, ptr %4, align 8, !dbg !127
  %16 = load i8, ptr %15, align 1, !dbg !128
  %17 = sext i8 %16 to i32, !dbg !128
  %18 = icmp ne i32 %17, 0, !dbg !128
  br i1 %18, label %19, label %23, !dbg !129

19:                                               ; preds = %14
  %20 = load ptr, ptr %4, align 8, !dbg !130
  %21 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %20, ptr noundef @.str, ptr noundef %7, ptr noundef %8) #7, !dbg !131
  %22 = icmp eq i32 %21, 2, !dbg !132
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ], !dbg !133
  br i1 %24, label %25, label %71, !dbg !126

25:                                               ; preds = %23
  %26 = load i8, ptr %8, align 1, !dbg !134
  %27 = sext i8 %26 to i32, !dbg !134
  switch i32 %27, label %62 [
    i32 115, label %28
    i32 109, label %32
    i32 104, label %37
    i32 100, label %42
    i32 119, label %47
    i32 77, label %52
    i32 121, label %57
  ], !dbg !136

28:                                               ; preds = %25
  %29 = load i32, ptr %7, align 4, !dbg !137
  %30 = load i32, ptr %6, align 4, !dbg !139
  %31 = add i32 %30, %29, !dbg !139
  store i32 %31, ptr %6, align 4, !dbg !139
  br label %65, !dbg !140

32:                                               ; preds = %25
  %33 = load i32, ptr %7, align 4, !dbg !141
  %34 = mul i32 %33, 60, !dbg !142
  %35 = load i32, ptr %6, align 4, !dbg !143
  %36 = add i32 %35, %34, !dbg !143
  store i32 %36, ptr %6, align 4, !dbg !143
  br label %65, !dbg !144

37:                                               ; preds = %25
  %38 = load i32, ptr %7, align 4, !dbg !145
  %39 = mul i32 %38, 3600, !dbg !146
  %40 = load i32, ptr %6, align 4, !dbg !147
  %41 = add i32 %40, %39, !dbg !147
  store i32 %41, ptr %6, align 4, !dbg !147
  br label %65, !dbg !148

42:                                               ; preds = %25
  %43 = load i32, ptr %7, align 4, !dbg !149
  %44 = mul i32 %43, 86400, !dbg !150
  %45 = load i32, ptr %6, align 4, !dbg !151
  %46 = add i32 %45, %44, !dbg !151
  store i32 %46, ptr %6, align 4, !dbg !151
  br label %65, !dbg !152

47:                                               ; preds = %25
  %48 = load i32, ptr %7, align 4, !dbg !153
  %49 = mul i32 %48, 604800, !dbg !154
  %50 = load i32, ptr %6, align 4, !dbg !155
  %51 = add i32 %50, %49, !dbg !155
  store i32 %51, ptr %6, align 4, !dbg !155
  br label %65, !dbg !156

52:                                               ; preds = %25
  %53 = load i32, ptr %7, align 4, !dbg !157
  %54 = mul i32 %53, 2678400, !dbg !158
  %55 = load i32, ptr %6, align 4, !dbg !159
  %56 = add i32 %55, %54, !dbg !159
  store i32 %56, ptr %6, align 4, !dbg !159
  br label %65, !dbg !160

57:                                               ; preds = %25
  %58 = load i32, ptr %7, align 4, !dbg !161
  %59 = mul i32 %58, 32140800, !dbg !162
  %60 = load i32, ptr %6, align 4, !dbg !163
  %61 = add i32 %60, %59, !dbg !163
  store i32 %61, ptr %6, align 4, !dbg !163
  br label %65, !dbg !164

62:                                               ; preds = %25
  %63 = load i8, ptr %8, align 1, !dbg !165
  %64 = sext i8 %63 to i32, !dbg !165
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str.1, i32 noundef 54, ptr noundef @__FUNCTION__.parse_time_period, ptr noundef @.str.2, i32 noundef %64), !dbg !165
  br label %65, !dbg !166

65:                                               ; preds = %62, %57, %52, %47, %42, %37, %32, %28
  %66 = load ptr, ptr %4, align 8, !dbg !167
  %67 = load i8, ptr %8, align 1, !dbg !168
  %68 = sext i8 %67 to i32, !dbg !168
  %69 = call ptr @rawmemchr(ptr noundef %66, i32 noundef %68) #8, !dbg !169
  %70 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !170
  store ptr %70, ptr %4, align 8, !dbg !171
  br label %14, !dbg !126, !llvm.loop !172

71:                                               ; preds = %23
  %72 = load i32, ptr %6, align 4, !dbg !175
  %73 = icmp ne i32 %72, 0, !dbg !175
  br i1 %73, label %74, label %76, !dbg !175

74:                                               ; preds = %71
  %75 = load i32, ptr %6, align 4, !dbg !176
  br label %78, !dbg !175

76:                                               ; preds = %71
  %77 = load i32, ptr %5, align 4, !dbg !177
  br label %78, !dbg !175

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ], !dbg !175
  store i32 %79, ptr %3, align 4, !dbg !178
  br label %80, !dbg !178

80:                                               ; preds = %78, %11
  %81 = load i32, ptr %3, align 4, !dbg !179
  ret i32 %81, !dbg !179
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #2

declare void @lwan_status_warning_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @rawmemchr(ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @parse_bool(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !180 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !184, metadata !DIExpression()), !dbg !185
  %6 = zext i1 %1 to i8
  store i8 %6, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !186, metadata !DIExpression()), !dbg !187
  %7 = load ptr, ptr %4, align 8, !dbg !188
  %8 = icmp ne ptr %7, null, !dbg !188
  br i1 %8, label %12, label %9, !dbg !190

9:                                                ; preds = %2
  %10 = load i8, ptr %5, align 1, !dbg !191
  %11 = trunc i8 %10 to i1, !dbg !191
  store i1 %11, ptr %3, align 1, !dbg !192
  br label %49, !dbg !192

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !193
  %14 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.3) #8, !dbg !195
  %15 = icmp ne i32 %14, 0, !dbg !195
  br i1 %15, label %16, label %28, !dbg !196

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !dbg !197
  %18 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.4) #8, !dbg !198
  %19 = icmp ne i32 %18, 0, !dbg !198
  br i1 %19, label %20, label %28, !dbg !199

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8, !dbg !200
  %22 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.5) #8, !dbg !201
  %23 = icmp ne i32 %22, 0, !dbg !201
  br i1 %23, label %24, label %28, !dbg !202

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !dbg !203
  %26 = call i32 @strcmp(ptr noundef %25, ptr noundef @.str.6) #8, !dbg !204
  %27 = icmp ne i32 %26, 0, !dbg !204
  br i1 %27, label %29, label %28, !dbg !205

28:                                               ; preds = %24, %20, %16, %12
  store i1 true, ptr %3, align 1, !dbg !206
  br label %49, !dbg !206

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !dbg !207
  %31 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.7) #8, !dbg !209
  %32 = icmp ne i32 %31, 0, !dbg !209
  br i1 %32, label %33, label %45, !dbg !210

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !dbg !211
  %35 = call i32 @strcmp(ptr noundef %34, ptr noundef @.str.8) #8, !dbg !212
  %36 = icmp ne i32 %35, 0, !dbg !212
  br i1 %36, label %37, label %45, !dbg !213

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8, !dbg !214
  %39 = call i32 @strcmp(ptr noundef %38, ptr noundef @.str.9) #8, !dbg !215
  %40 = icmp ne i32 %39, 0, !dbg !215
  br i1 %40, label %41, label %45, !dbg !216

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8, !dbg !217
  %43 = call i32 @strcmp(ptr noundef %42, ptr noundef @.str.10) #8, !dbg !218
  %44 = icmp ne i32 %43, 0, !dbg !218
  br i1 %44, label %46, label %45, !dbg !219

45:                                               ; preds = %41, %37, %33, %29
  store i1 false, ptr %3, align 1, !dbg !220
  br label %49, !dbg !220

46:                                               ; preds = %41
  %47 = load i8, ptr %5, align 1, !dbg !221
  %48 = trunc i8 %47 to i1, !dbg !221
  store i1 %48, ptr %3, align 1, !dbg !222
  br label %49, !dbg !222

49:                                               ; preds = %46, %45, %28, %9
  %50 = load i1, ptr %3, align 1, !dbg !223
  ret i1 %50, !dbg !223
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_long(ptr noundef %0, i64 noundef %1) #0 !dbg !224 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !228, metadata !DIExpression()), !dbg !229
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata ptr %6, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata ptr %7, metadata !234, metadata !DIExpression()), !dbg !235
  %8 = call ptr @__errno_location() #9, !dbg !236
  store i32 0, ptr %8, align 4, !dbg !237
  %9 = load ptr, ptr %4, align 8, !dbg !238
  %10 = call i64 @strtol(ptr noundef %9, ptr noundef %6, i32 noundef 0) #7, !dbg !239
  store i64 %10, ptr %7, align 8, !dbg !240
  %11 = call ptr @__errno_location() #9, !dbg !241
  %12 = load i32, ptr %11, align 4, !dbg !241
  %13 = icmp ne i32 %12, 0, !dbg !243
  br i1 %13, label %14, label %16, !dbg !244

14:                                               ; preds = %2
  %15 = load i64, ptr %5, align 8, !dbg !245
  store i64 %15, ptr %3, align 8, !dbg !246
  br label %29, !dbg !246

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 8, !dbg !247
  %18 = load i8, ptr %17, align 1, !dbg !249
  %19 = sext i8 %18 to i32, !dbg !249
  %20 = icmp ne i32 %19, 0, !dbg !250
  br i1 %20, label %25, label %21, !dbg !251

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 8, !dbg !252
  %23 = load ptr, ptr %6, align 8, !dbg !253
  %24 = icmp eq ptr %22, %23, !dbg !254
  br i1 %24, label %25, label %27, !dbg !255

25:                                               ; preds = %21, %16
  %26 = load i64, ptr %5, align 8, !dbg !256
  store i64 %26, ptr %3, align 8, !dbg !257
  br label %29, !dbg !257

27:                                               ; preds = %21
  %28 = load i64, ptr %7, align 8, !dbg !258
  store i64 %28, ptr %3, align 8, !dbg !259
  br label %29, !dbg !259

29:                                               ; preds = %27, %25, %14
  %30 = load i64, ptr %3, align 8, !dbg !260
  ret i64 %30, !dbg !260
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @config_error(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !261 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !329, metadata !DIExpression()), !dbg !330
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata ptr %6, metadata !333, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata ptr %7, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata ptr %8, metadata !350, metadata !DIExpression()), !dbg !351
  %9 = load ptr, ptr %4, align 8, !dbg !352
  %10 = getelementptr inbounds %struct.config_t_, ptr %9, i32 0, i32 2, !dbg !354
  %11 = load ptr, ptr %10, align 8, !dbg !354
  %12 = icmp ne ptr %11, null, !dbg !352
  br i1 %12, label %13, label %14, !dbg !355

13:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !356
  br label %29, !dbg !356

14:                                               ; preds = %2
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !357
  call void @llvm.va_start(ptr %15), !dbg !357
  %16 = load ptr, ptr %5, align 8, !dbg !358
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !359
  %18 = call i32 @vasprintf(ptr noundef %8, ptr noundef %16, ptr noundef %17) #7, !dbg !360
  store i32 %18, ptr %7, align 4, !dbg !361
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !362
  call void @llvm.va_end(ptr %19), !dbg !362
  %20 = load i32, ptr %7, align 4, !dbg !363
  %21 = icmp sge i32 %20, 0, !dbg !365
  br i1 %21, label %22, label %26, !dbg !366

22:                                               ; preds = %14
  %23 = load ptr, ptr %8, align 8, !dbg !367
  %24 = load ptr, ptr %4, align 8, !dbg !369
  %25 = getelementptr inbounds %struct.config_t_, ptr %24, i32 0, i32 2, !dbg !370
  store ptr %23, ptr %25, align 8, !dbg !371
  store i1 true, ptr %3, align 1, !dbg !372
  br label %29, !dbg !372

26:                                               ; preds = %14
  %27 = load ptr, ptr %4, align 8, !dbg !373
  %28 = getelementptr inbounds %struct.config_t_, ptr %27, i32 0, i32 2, !dbg !374
  store ptr null, ptr %28, align 8, !dbg !375
  store i1 false, ptr %3, align 1, !dbg !376
  br label %29, !dbg !376

29:                                               ; preds = %26, %22, %13
  %30 = load i1, ptr %3, align 1, !dbg !377
  ret i1 %30, !dbg !377
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nounwind
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @config_read_line(ptr noundef %0, ptr noundef %1) #0 !dbg !378 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !404, metadata !DIExpression()), !dbg !405
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata ptr %6, metadata !408, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata ptr %7, metadata !410, metadata !DIExpression()), !dbg !411
  %9 = load ptr, ptr %4, align 8, !dbg !412
  %10 = getelementptr inbounds %struct.config_t_, ptr %9, i32 0, i32 2, !dbg !414
  %11 = load ptr, ptr %10, align 8, !dbg !414
  %12 = icmp ne ptr %11, null, !dbg !412
  br i1 %12, label %13, label %14, !dbg !415

13:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !416
  br label %91, !dbg !416

14:                                               ; preds = %2
  br label %15, !dbg !414

15:                                               ; preds = %57, %14
  call void @llvm.dbg.label(metadata !417), !dbg !418
  %16 = load ptr, ptr %5, align 8, !dbg !419
  %17 = getelementptr inbounds %struct.config_line_t_, ptr %16, i32 0, i32 2, !dbg !421
  %18 = getelementptr inbounds [1024 x i8], ptr %17, i64 0, i64 0, !dbg !419
  %19 = load ptr, ptr %4, align 8, !dbg !422
  %20 = getelementptr inbounds %struct.config_t_, ptr %19, i32 0, i32 0, !dbg !423
  %21 = load ptr, ptr %20, align 8, !dbg !423
  %22 = call ptr @fgets(ptr noundef %18, i32 noundef 1024, ptr noundef %21), !dbg !424
  %23 = icmp ne ptr %22, null, !dbg !424
  br i1 %23, label %25, label %24, !dbg !425

24:                                               ; preds = %15
  store i1 false, ptr %3, align 1, !dbg !426
  br label %91, !dbg !426

25:                                               ; preds = %15
  %26 = load ptr, ptr %4, align 8, !dbg !427
  %27 = getelementptr inbounds %struct.config_t_, ptr %26, i32 0, i32 1, !dbg !428
  %28 = load i32, ptr %27, align 8, !dbg !429
  %29 = add nsw i32 %28, 1, !dbg !429
  store i32 %29, ptr %27, align 8, !dbg !429
  %30 = load ptr, ptr %5, align 8, !dbg !430
  %31 = getelementptr inbounds %struct.config_line_t_, ptr %30, i32 0, i32 2, !dbg !431
  %32 = getelementptr inbounds [1024 x i8], ptr %31, i64 0, i64 0, !dbg !430
  %33 = call ptr @remove_comments(ptr noundef %32), !dbg !432
  store ptr %33, ptr %6, align 8, !dbg !433
  %34 = load ptr, ptr %6, align 8, !dbg !434
  %35 = call ptr @remove_leading_spaces(ptr noundef %34), !dbg !435
  store ptr %35, ptr %6, align 8, !dbg !436
  %36 = load ptr, ptr %6, align 8, !dbg !437
  %37 = call ptr @remove_trailing_spaces(ptr noundef %36), !dbg !438
  store ptr %37, ptr %6, align 8, !dbg !439
  %38 = load ptr, ptr %6, align 8, !dbg !440
  %39 = call ptr @find_line_end(ptr noundef %38), !dbg !441
  store ptr %39, ptr %7, align 8, !dbg !442
  %40 = load ptr, ptr %7, align 8, !dbg !443
  %41 = load i8, ptr %40, align 1, !dbg !445
  %42 = sext i8 %41 to i32, !dbg !445
  %43 = icmp eq i32 %42, 123, !dbg !446
  br i1 %43, label %44, label %52, !dbg !447

44:                                               ; preds = %25
  %45 = load ptr, ptr %6, align 8, !dbg !448
  %46 = load ptr, ptr %5, align 8, !dbg !451
  %47 = call zeroext i1 @parse_section(ptr noundef %45, ptr noundef %46), !dbg !452
  br i1 %47, label %51, label %48, !dbg !453

48:                                               ; preds = %44
  %49 = load ptr, ptr %4, align 8, !dbg !454
  %50 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %49, ptr noundef @.str.11), !dbg !456
  store i1 false, ptr %3, align 1, !dbg !457
  br label %91, !dbg !457

51:                                               ; preds = %44
  br label %90, !dbg !458

52:                                               ; preds = %25
  %53 = load ptr, ptr %6, align 8, !dbg !459
  %54 = load i8, ptr %53, align 1, !dbg !461
  %55 = sext i8 %54 to i32, !dbg !461
  %56 = icmp eq i32 %55, 0, !dbg !462
  br i1 %56, label %57, label %58, !dbg !463

57:                                               ; preds = %52
  br label %15, !dbg !464

58:                                               ; preds = %52
  %59 = load ptr, ptr %6, align 8, !dbg !466
  %60 = load i8, ptr %59, align 1, !dbg !468
  %61 = sext i8 %60 to i32, !dbg !468
  %62 = icmp eq i32 %61, 125, !dbg !469
  br i1 %62, label %63, label %70, !dbg !470

63:                                               ; preds = %58
  %64 = load ptr, ptr %6, align 8, !dbg !471
  %65 = load ptr, ptr %7, align 8, !dbg !472
  %66 = icmp eq ptr %64, %65, !dbg !473
  br i1 %66, label %67, label %70, !dbg !474

67:                                               ; preds = %63
  %68 = load ptr, ptr %5, align 8, !dbg !475
  %69 = getelementptr inbounds %struct.config_line_t_, ptr %68, i32 0, i32 1, !dbg !477
  store i32 2, ptr %69, align 8, !dbg !478
  br label %88, !dbg !479

70:                                               ; preds = %63, %58
  call void @llvm.dbg.declare(metadata ptr %8, metadata !480, metadata !DIExpression()), !dbg !482
  %71 = load ptr, ptr %6, align 8, !dbg !483
  %72 = call ptr @strchr(ptr noundef %71, i32 noundef 61) #8, !dbg !484
  store ptr %72, ptr %8, align 8, !dbg !482
  %73 = load ptr, ptr %8, align 8, !dbg !485
  %74 = icmp ne ptr %73, null, !dbg !485
  br i1 %74, label %75, label %84, !dbg !487

75:                                               ; preds = %70
  %76 = load ptr, ptr %6, align 8, !dbg !488
  %77 = load ptr, ptr %5, align 8, !dbg !491
  %78 = load ptr, ptr %8, align 8, !dbg !492
  %79 = call zeroext i1 @parse_line(ptr noundef %76, ptr noundef %77, ptr noundef %78), !dbg !493
  br i1 %79, label %83, label %80, !dbg !494

80:                                               ; preds = %75
  %81 = load ptr, ptr %4, align 8, !dbg !495
  %82 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %81, ptr noundef @.str.12), !dbg !497
  store i1 false, ptr %3, align 1, !dbg !498
  br label %91, !dbg !498

83:                                               ; preds = %75
  br label %87, !dbg !499

84:                                               ; preds = %70
  %85 = load ptr, ptr %4, align 8, !dbg !500
  %86 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %85, ptr noundef @.str.13), !dbg !502
  store i1 false, ptr %3, align 1, !dbg !503
  br label %91, !dbg !503

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %51
  store i1 true, ptr %3, align 1, !dbg !504
  br label %91, !dbg !504

91:                                               ; preds = %90, %84, %80, %48, %24, %13
  %92 = load i1, ptr %3, align 1, !dbg !505
  ret i1 %92, !dbg !505
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @remove_comments(ptr noundef %0) #0 !dbg !506 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata ptr %3, metadata !511, metadata !DIExpression()), !dbg !512
  %4 = load ptr, ptr %2, align 8, !dbg !513
  %5 = call ptr @strrchr(ptr noundef %4, i32 noundef 35) #8, !dbg !514
  store ptr %5, ptr %3, align 8, !dbg !512
  %6 = load ptr, ptr %3, align 8, !dbg !515
  %7 = icmp ne ptr %6, null, !dbg !515
  br i1 %7, label %8, label %10, !dbg !517

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !518
  store i8 0, ptr %9, align 1, !dbg !519
  br label %10, !dbg !520

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr %2, align 8, !dbg !521
  ret ptr %11, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @remove_leading_spaces(ptr noundef %0) #0 !dbg !523 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !524, metadata !DIExpression()), !dbg !525
  br label %3, !dbg !526

3:                                                ; preds = %15, %1
  %4 = call ptr @__ctype_b_loc() #9, !dbg !527
  %5 = load ptr, ptr %4, align 8, !dbg !527
  %6 = load ptr, ptr %2, align 8, !dbg !527
  %7 = load i8, ptr %6, align 1, !dbg !527
  %8 = sext i8 %7 to i32, !dbg !527
  %9 = sext i32 %8 to i64, !dbg !527
  %10 = getelementptr inbounds i16, ptr %5, i64 %9, !dbg !527
  %11 = load i16, ptr %10, align 2, !dbg !527
  %12 = zext i16 %11 to i32, !dbg !527
  %13 = and i32 %12, 8192, !dbg !527
  %14 = icmp ne i32 %13, 0, !dbg !526
  br i1 %14, label %15, label %18, !dbg !526

15:                                               ; preds = %3
  %16 = load ptr, ptr %2, align 8, !dbg !528
  %17 = getelementptr inbounds i8, ptr %16, i32 1, !dbg !528
  store ptr %17, ptr %2, align 8, !dbg !528
  br label %3, !dbg !526, !llvm.loop !529

18:                                               ; preds = %3
  %19 = load ptr, ptr %2, align 8, !dbg !530
  ret ptr %19, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @remove_trailing_spaces(ptr noundef %0) #0 !dbg !532 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata ptr %3, metadata !535, metadata !DIExpression()), !dbg !536
  %4 = load ptr, ptr %2, align 8, !dbg !537
  %5 = call ptr @rawmemchr(ptr noundef %4, i32 noundef 0) #8, !dbg !538
  store ptr %5, ptr %3, align 8, !dbg !536
  %6 = load ptr, ptr %3, align 8, !dbg !539
  %7 = getelementptr inbounds i8, ptr %6, i32 -1, !dbg !539
  store ptr %7, ptr %3, align 8, !dbg !539
  br label %8, !dbg !541

8:                                                ; preds = %21, %1
  %9 = call ptr @__ctype_b_loc() #9, !dbg !542
  %10 = load ptr, ptr %9, align 8, !dbg !542
  %11 = load ptr, ptr %3, align 8, !dbg !542
  %12 = load i8, ptr %11, align 1, !dbg !542
  %13 = sext i8 %12 to i32, !dbg !542
  %14 = sext i32 %13 to i64, !dbg !542
  %15 = getelementptr inbounds i16, ptr %10, i64 %14, !dbg !542
  %16 = load i16, ptr %15, align 2, !dbg !542
  %17 = zext i16 %16 to i32, !dbg !542
  %18 = and i32 %17, 8192, !dbg !542
  %19 = icmp ne i32 %18, 0, !dbg !544
  br i1 %19, label %20, label %24, !dbg !544

20:                                               ; preds = %8
  br label %21, !dbg !544

21:                                               ; preds = %20
  %22 = load ptr, ptr %3, align 8, !dbg !545
  %23 = getelementptr inbounds i8, ptr %22, i32 -1, !dbg !545
  store ptr %23, ptr %3, align 8, !dbg !545
  br label %8, !dbg !546, !llvm.loop !547

24:                                               ; preds = %8
  %25 = load ptr, ptr %3, align 8, !dbg !549
  %26 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !550
  store i8 0, ptr %26, align 1, !dbg !551
  %27 = load ptr, ptr %2, align 8, !dbg !552
  ret ptr %27, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @find_line_end(ptr noundef %0) #0 !dbg !554 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !555, metadata !DIExpression()), !dbg !556
  %4 = load ptr, ptr %3, align 8, !dbg !557
  %5 = load i8, ptr %4, align 1, !dbg !559
  %6 = sext i8 %5 to i32, !dbg !559
  %7 = icmp eq i32 %6, 0, !dbg !560
  br i1 %7, label %8, label %10, !dbg !561

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !562
  store ptr %9, ptr %2, align 8, !dbg !563
  br label %14, !dbg !563

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !564
  %12 = call ptr @rawmemchr(ptr noundef %11, i32 noundef 0) #8, !dbg !565
  %13 = getelementptr inbounds i8, ptr %12, i64 -1, !dbg !566
  store ptr %13, ptr %2, align 8, !dbg !567
  br label %14, !dbg !567

14:                                               ; preds = %10, %8
  %15 = load ptr, ptr %2, align 8, !dbg !568
  ret ptr %15, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_section(ptr noundef %0, ptr noundef %1) #0 !dbg !569 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !572, metadata !DIExpression()), !dbg !573
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata ptr %6, metadata !576, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.declare(metadata ptr %7, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata ptr %8, metadata !580, metadata !DIExpression()), !dbg !581
  %10 = load ptr, ptr %4, align 8, !dbg !582
  %11 = call ptr @strrchr(ptr noundef %10, i32 noundef 123) #8, !dbg !583
  store ptr %11, ptr %8, align 8, !dbg !581
  %12 = load ptr, ptr %8, align 8, !dbg !584
  %13 = icmp ne ptr %12, null, !dbg !584
  br i1 %13, label %15, label %14, !dbg !586

14:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !587
  br label %41, !dbg !587

15:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !588, metadata !DIExpression()), !dbg !589
  %16 = load ptr, ptr %4, align 8, !dbg !590
  %17 = call ptr @strchr(ptr noundef %16, i32 noundef 32) #8, !dbg !591
  store ptr %17, ptr %9, align 8, !dbg !589
  %18 = load ptr, ptr %9, align 8, !dbg !592
  %19 = icmp ne ptr %18, null, !dbg !592
  br i1 %19, label %21, label %20, !dbg !594

20:                                               ; preds = %15
  store i1 false, ptr %3, align 1, !dbg !595
  br label %41, !dbg !595

21:                                               ; preds = %15
  %22 = load ptr, ptr %8, align 8, !dbg !596
  store i8 0, ptr %22, align 1, !dbg !597
  %23 = load ptr, ptr %9, align 8, !dbg !598
  store i8 0, ptr %23, align 1, !dbg !599
  %24 = load ptr, ptr %4, align 8, !dbg !600
  %25 = call ptr @remove_leading_spaces(ptr noundef %24), !dbg !601
  %26 = call ptr @remove_trailing_spaces(ptr noundef %25), !dbg !602
  store ptr %26, ptr %6, align 8, !dbg !603
  %27 = load ptr, ptr %9, align 8, !dbg !604
  %28 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !605
  %29 = call ptr @remove_leading_spaces(ptr noundef %28), !dbg !606
  %30 = call ptr @remove_trailing_spaces(ptr noundef %29), !dbg !607
  store ptr %30, ptr %7, align 8, !dbg !608
  %31 = load ptr, ptr %6, align 8, !dbg !609
  %32 = load ptr, ptr %5, align 8, !dbg !610
  %33 = getelementptr inbounds %struct.config_line_t_, ptr %32, i32 0, i32 0, !dbg !611
  %34 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 0, !dbg !612
  store ptr %31, ptr %34, align 8, !dbg !613
  %35 = load ptr, ptr %7, align 8, !dbg !614
  %36 = load ptr, ptr %5, align 8, !dbg !615
  %37 = getelementptr inbounds %struct.config_line_t_, ptr %36, i32 0, i32 0, !dbg !616
  %38 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 1, !dbg !617
  store ptr %35, ptr %38, align 8, !dbg !618
  %39 = load ptr, ptr %5, align 8, !dbg !619
  %40 = getelementptr inbounds %struct.config_line_t_, ptr %39, i32 0, i32 1, !dbg !620
  store i32 1, ptr %40, align 8, !dbg !621
  store i1 true, ptr %3, align 1, !dbg !622
  br label %41, !dbg !622

41:                                               ; preds = %21, %20, %14
  %42 = load i1, ptr %3, align 1, !dbg !623
  ret i1 %42, !dbg !623
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_line(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !624 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !627, metadata !DIExpression()), !dbg !628
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !629, metadata !DIExpression()), !dbg !630
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !631, metadata !DIExpression()), !dbg !632
  %7 = load ptr, ptr %6, align 8, !dbg !633
  store i8 0, ptr %7, align 1, !dbg !634
  %8 = load ptr, ptr %4, align 8, !dbg !635
  %9 = call ptr @remove_leading_spaces(ptr noundef %8), !dbg !636
  %10 = call ptr @remove_trailing_spaces(ptr noundef %9), !dbg !637
  %11 = load ptr, ptr %5, align 8, !dbg !638
  %12 = getelementptr inbounds %struct.config_line_t_, ptr %11, i32 0, i32 0, !dbg !639
  %13 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 0, !dbg !640
  store ptr %10, ptr %13, align 8, !dbg !641
  %14 = load ptr, ptr %6, align 8, !dbg !642
  %15 = getelementptr inbounds i8, ptr %14, i64 1, !dbg !643
  %16 = call ptr @remove_leading_spaces(ptr noundef %15), !dbg !644
  %17 = load ptr, ptr %5, align 8, !dbg !645
  %18 = getelementptr inbounds %struct.config_line_t_, ptr %17, i32 0, i32 0, !dbg !646
  %19 = getelementptr inbounds %struct.anon.0, ptr %18, i32 0, i32 1, !dbg !647
  store ptr %16, ptr %19, align 8, !dbg !648
  %20 = load ptr, ptr %5, align 8, !dbg !649
  %21 = getelementptr inbounds %struct.config_line_t_, ptr %20, i32 0, i32 1, !dbg !650
  store i32 0, ptr %21, align 8, !dbg !651
  ret i1 true, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @config_open(ptr noundef %0, ptr noundef %1) #0 !dbg !653 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !656, metadata !DIExpression()), !dbg !657
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !658, metadata !DIExpression()), !dbg !659
  %6 = load ptr, ptr %4, align 8, !dbg !660
  %7 = icmp ne ptr %6, null, !dbg !660
  br i1 %7, label %9, label %8, !dbg !662

8:                                                ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !663
  br label %28, !dbg !663

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !664
  %11 = icmp ne ptr %10, null, !dbg !664
  br i1 %11, label %13, label %12, !dbg !666

12:                                               ; preds = %9
  store i1 false, ptr %3, align 1, !dbg !667
  br label %28, !dbg !667

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !dbg !668
  %15 = call noalias ptr @fopen(ptr noundef %14, ptr noundef @.str.14), !dbg !669
  %16 = load ptr, ptr %4, align 8, !dbg !670
  %17 = getelementptr inbounds %struct.config_t_, ptr %16, i32 0, i32 0, !dbg !671
  store ptr %15, ptr %17, align 8, !dbg !672
  %18 = load ptr, ptr %4, align 8, !dbg !673
  %19 = getelementptr inbounds %struct.config_t_, ptr %18, i32 0, i32 0, !dbg !675
  %20 = load ptr, ptr %19, align 8, !dbg !675
  %21 = icmp ne ptr %20, null, !dbg !673
  br i1 %21, label %23, label %22, !dbg !676

22:                                               ; preds = %13
  store i1 false, ptr %3, align 1, !dbg !677
  br label %28, !dbg !677

23:                                               ; preds = %13
  %24 = load ptr, ptr %4, align 8, !dbg !678
  %25 = getelementptr inbounds %struct.config_t_, ptr %24, i32 0, i32 1, !dbg !679
  store i32 0, ptr %25, align 8, !dbg !680
  %26 = load ptr, ptr %4, align 8, !dbg !681
  %27 = getelementptr inbounds %struct.config_t_, ptr %26, i32 0, i32 2, !dbg !682
  store ptr null, ptr %27, align 8, !dbg !683
  store i1 true, ptr %3, align 1, !dbg !684
  br label %28, !dbg !684

28:                                               ; preds = %23, %22, %12, %8
  %29 = load i1, ptr %3, align 1, !dbg !685
  ret i1 %29, !dbg !685
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_close(ptr noundef %0) #0 !dbg !686 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !689, metadata !DIExpression()), !dbg !690
  %3 = load ptr, ptr %2, align 8, !dbg !691
  %4 = icmp ne ptr %3, null, !dbg !691
  br i1 %4, label %6, label %5, !dbg !693

5:                                                ; preds = %1
  br label %20, !dbg !694

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !695
  %8 = getelementptr inbounds %struct.config_t_, ptr %7, i32 0, i32 0, !dbg !697
  %9 = load ptr, ptr %8, align 8, !dbg !697
  %10 = icmp ne ptr %9, null, !dbg !695
  br i1 %10, label %12, label %11, !dbg !698

11:                                               ; preds = %6
  br label %20, !dbg !699

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 8, !dbg !700
  %14 = getelementptr inbounds %struct.config_t_, ptr %13, i32 0, i32 0, !dbg !701
  %15 = load ptr, ptr %14, align 8, !dbg !701
  %16 = call i32 @fclose(ptr noundef %15), !dbg !702
  %17 = load ptr, ptr %2, align 8, !dbg !703
  %18 = getelementptr inbounds %struct.config_t_, ptr %17, i32 0, i32 2, !dbg !704
  %19 = load ptr, ptr %18, align 8, !dbg !704
  call void @free(ptr noundef %19) #7, !dbg !705
  br label %20, !dbg !706

20:                                               ; preds = %12, %11, %5
  ret void, !dbg !706
}

declare i32 @fclose(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!68}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan-config.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "199ccadf79b83965963cdf65e7c49914")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 36)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 144, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 18)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 32)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 2)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 3)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 6)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !27, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !37, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !32, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 26)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 25)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 31)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !32, isLocal: true, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C11, file: !69, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !93, globals: !98, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "/home/raj/lwan/common/lwan-config.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "199ccadf79b83965963cdf65e7c49914")
!70 = !{!71, !78}
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 35, baseType: !73, size: 32, elements: !74)
!72 = !DIFile(filename: "common/lwan-config.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "7586af514a363878312816f8ee308270")
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "CONFIG_LINE_TYPE_LINE", value: 0)
!76 = !DIEnumerator(name: "CONFIG_LINE_TYPE_SECTION", value: 1)
!77 = !DIEnumerator(name: "CONFIG_LINE_TYPE_SECTION_END", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 46, baseType: !73, size: 32, elements: !80)
!79 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!81 = !DIEnumerator(name: "_ISupper", value: 256)
!82 = !DIEnumerator(name: "_ISlower", value: 512)
!83 = !DIEnumerator(name: "_ISalpha", value: 1024)
!84 = !DIEnumerator(name: "_ISdigit", value: 2048)
!85 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!86 = !DIEnumerator(name: "_ISspace", value: 8192)
!87 = !DIEnumerator(name: "_ISprint", value: 16384)
!88 = !DIEnumerator(name: "_ISgraph", value: 32768)
!89 = !DIEnumerator(name: "_ISblank", value: 1)
!90 = !DIEnumerator(name: "_IScntrl", value: 2)
!91 = !DIEnumerator(name: "_ISpunct", value: 4)
!92 = !DIEnumerator(name: "_ISalnum", value: 8)
!93 = !{!94, !95, !96, !97}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!98 = !{!0, !7, !12, !18, !23, !25, !30, !35, !40, !45, !47, !49, !51, !56, !61, !66}
!99 = !{i32 7, !"Dwarf Version", i32 5}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{i32 8, !"PIC Level", i32 2}
!103 = !{i32 7, !"PIE Level", i32 2}
!104 = !{i32 7, !"uwtable", i32 2}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 16.0.0"}
!107 = distinct !DISubprogram(name: "parse_time_period", scope: !2, file: !2, line: 34, type: !108, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!73, !94, !73}
!110 = !{}
!111 = !DILocalVariable(name: "str", arg: 1, scope: !107, file: !2, line: 34, type: !94)
!112 = !DILocation(line: 34, column: 44, scope: !107)
!113 = !DILocalVariable(name: "default_value", arg: 2, scope: !107, file: !2, line: 34, type: !73)
!114 = !DILocation(line: 34, column: 62, scope: !107)
!115 = !DILocalVariable(name: "total", scope: !107, file: !2, line: 36, type: !73)
!116 = !DILocation(line: 36, column: 18, scope: !107)
!117 = !DILocalVariable(name: "period", scope: !107, file: !2, line: 37, type: !73)
!118 = !DILocation(line: 37, column: 18, scope: !107)
!119 = !DILocalVariable(name: "multiplier", scope: !107, file: !2, line: 38, type: !4)
!120 = !DILocation(line: 38, column: 10, scope: !107)
!121 = !DILocation(line: 40, column: 10, scope: !122)
!122 = distinct !DILexicalBlock(scope: !107, file: !2, line: 40, column: 9)
!123 = !DILocation(line: 40, column: 9, scope: !107)
!124 = !DILocation(line: 41, column: 16, scope: !122)
!125 = !DILocation(line: 41, column: 9, scope: !122)
!126 = !DILocation(line: 43, column: 5, scope: !107)
!127 = !DILocation(line: 43, column: 13, scope: !107)
!128 = !DILocation(line: 43, column: 12, scope: !107)
!129 = !DILocation(line: 43, column: 17, scope: !107)
!130 = !DILocation(line: 43, column: 27, scope: !107)
!131 = !DILocation(line: 43, column: 20, scope: !107)
!132 = !DILocation(line: 43, column: 62, scope: !107)
!133 = !DILocation(line: 0, scope: !107)
!134 = !DILocation(line: 44, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !107, file: !2, line: 43, column: 68)
!136 = !DILocation(line: 44, column: 9, scope: !135)
!137 = !DILocation(line: 45, column: 28, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !2, line: 44, column: 29)
!139 = !DILocation(line: 45, column: 25, scope: !138)
!140 = !DILocation(line: 45, column: 36, scope: !138)
!141 = !DILocation(line: 46, column: 28, scope: !138)
!142 = !DILocation(line: 46, column: 35, scope: !138)
!143 = !DILocation(line: 46, column: 25, scope: !138)
!144 = !DILocation(line: 46, column: 49, scope: !138)
!145 = !DILocation(line: 47, column: 28, scope: !138)
!146 = !DILocation(line: 47, column: 35, scope: !138)
!147 = !DILocation(line: 47, column: 25, scope: !138)
!148 = !DILocation(line: 47, column: 47, scope: !138)
!149 = !DILocation(line: 48, column: 28, scope: !138)
!150 = !DILocation(line: 48, column: 35, scope: !138)
!151 = !DILocation(line: 48, column: 25, scope: !138)
!152 = !DILocation(line: 48, column: 46, scope: !138)
!153 = !DILocation(line: 49, column: 28, scope: !138)
!154 = !DILocation(line: 49, column: 35, scope: !138)
!155 = !DILocation(line: 49, column: 25, scope: !138)
!156 = !DILocation(line: 49, column: 47, scope: !138)
!157 = !DILocation(line: 50, column: 28, scope: !138)
!158 = !DILocation(line: 50, column: 35, scope: !138)
!159 = !DILocation(line: 50, column: 25, scope: !138)
!160 = !DILocation(line: 50, column: 48, scope: !138)
!161 = !DILocation(line: 51, column: 28, scope: !138)
!162 = !DILocation(line: 51, column: 35, scope: !138)
!163 = !DILocation(line: 51, column: 25, scope: !138)
!164 = !DILocation(line: 51, column: 47, scope: !138)
!165 = !DILocation(line: 53, column: 13, scope: !138)
!166 = !DILocation(line: 55, column: 9, scope: !138)
!167 = !DILocation(line: 57, column: 39, scope: !135)
!168 = !DILocation(line: 57, column: 44, scope: !135)
!169 = !DILocation(line: 57, column: 29, scope: !135)
!170 = !DILocation(line: 57, column: 56, scope: !135)
!171 = !DILocation(line: 57, column: 13, scope: !135)
!172 = distinct !{!172, !126, !173, !174}
!173 = !DILocation(line: 58, column: 5, scope: !107)
!174 = !{!"llvm.loop.mustprogress"}
!175 = !DILocation(line: 60, column: 12, scope: !107)
!176 = !DILocation(line: 60, column: 20, scope: !107)
!177 = !DILocation(line: 60, column: 28, scope: !107)
!178 = !DILocation(line: 60, column: 5, scope: !107)
!179 = !DILocation(line: 61, column: 1, scope: !107)
!180 = distinct !DISubprogram(name: "parse_bool", scope: !2, file: !2, line: 63, type: !181, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !110)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !94, !183}
!183 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!184 = !DILocalVariable(name: "value", arg: 1, scope: !180, file: !2, line: 63, type: !94)
!185 = !DILocation(line: 63, column: 29, scope: !180)
!186 = !DILocalVariable(name: "default_value", arg: 2, scope: !180, file: !2, line: 63, type: !183)
!187 = !DILocation(line: 63, column: 41, scope: !180)
!188 = !DILocation(line: 65, column: 10, scope: !189)
!189 = distinct !DILexicalBlock(scope: !180, file: !2, line: 65, column: 9)
!190 = !DILocation(line: 65, column: 9, scope: !180)
!191 = !DILocation(line: 66, column: 16, scope: !189)
!192 = !DILocation(line: 66, column: 9, scope: !189)
!193 = !DILocation(line: 68, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !180, file: !2, line: 68, column: 9)
!195 = !DILocation(line: 68, column: 10, scope: !194)
!196 = !DILocation(line: 68, column: 32, scope: !194)
!197 = !DILocation(line: 68, column: 43, scope: !194)
!198 = !DILocation(line: 68, column: 36, scope: !194)
!199 = !DILocation(line: 69, column: 13, scope: !194)
!200 = !DILocation(line: 69, column: 24, scope: !194)
!201 = !DILocation(line: 69, column: 17, scope: !194)
!202 = !DILocation(line: 69, column: 37, scope: !194)
!203 = !DILocation(line: 69, column: 48, scope: !194)
!204 = !DILocation(line: 69, column: 41, scope: !194)
!205 = !DILocation(line: 68, column: 9, scope: !180)
!206 = !DILocation(line: 70, column: 9, scope: !194)
!207 = !DILocation(line: 72, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !180, file: !2, line: 72, column: 9)
!209 = !DILocation(line: 72, column: 10, scope: !208)
!210 = !DILocation(line: 72, column: 33, scope: !208)
!211 = !DILocation(line: 72, column: 44, scope: !208)
!212 = !DILocation(line: 72, column: 37, scope: !208)
!213 = !DILocation(line: 73, column: 13, scope: !208)
!214 = !DILocation(line: 73, column: 24, scope: !208)
!215 = !DILocation(line: 73, column: 17, scope: !208)
!216 = !DILocation(line: 73, column: 38, scope: !208)
!217 = !DILocation(line: 73, column: 49, scope: !208)
!218 = !DILocation(line: 73, column: 42, scope: !208)
!219 = !DILocation(line: 72, column: 9, scope: !180)
!220 = !DILocation(line: 74, column: 9, scope: !208)
!221 = !DILocation(line: 76, column: 12, scope: !180)
!222 = !DILocation(line: 76, column: 5, scope: !180)
!223 = !DILocation(line: 77, column: 1, scope: !180)
!224 = distinct !DISubprogram(name: "parse_long", scope: !2, file: !2, line: 79, type: !225, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !110)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !94, !227}
!227 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!228 = !DILocalVariable(name: "value", arg: 1, scope: !224, file: !2, line: 79, type: !94)
!229 = !DILocation(line: 79, column: 29, scope: !224)
!230 = !DILocalVariable(name: "default_value", arg: 2, scope: !224, file: !2, line: 79, type: !227)
!231 = !DILocation(line: 79, column: 41, scope: !224)
!232 = !DILocalVariable(name: "endptr", scope: !224, file: !2, line: 81, type: !97)
!233 = !DILocation(line: 81, column: 11, scope: !224)
!234 = !DILocalVariable(name: "parsed", scope: !224, file: !2, line: 82, type: !227)
!235 = !DILocation(line: 82, column: 10, scope: !224)
!236 = !DILocation(line: 84, column: 5, scope: !224)
!237 = !DILocation(line: 84, column: 11, scope: !224)
!238 = !DILocation(line: 85, column: 21, scope: !224)
!239 = !DILocation(line: 85, column: 14, scope: !224)
!240 = !DILocation(line: 85, column: 12, scope: !224)
!241 = !DILocation(line: 87, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !224, file: !2, line: 87, column: 9)
!243 = !DILocation(line: 87, column: 15, scope: !242)
!244 = !DILocation(line: 87, column: 9, scope: !224)
!245 = !DILocation(line: 88, column: 16, scope: !242)
!246 = !DILocation(line: 88, column: 9, scope: !242)
!247 = !DILocation(line: 90, column: 10, scope: !248)
!248 = distinct !DILexicalBlock(scope: !224, file: !2, line: 90, column: 9)
!249 = !DILocation(line: 90, column: 9, scope: !248)
!250 = !DILocation(line: 90, column: 17, scope: !248)
!251 = !DILocation(line: 90, column: 25, scope: !248)
!252 = !DILocation(line: 90, column: 28, scope: !248)
!253 = !DILocation(line: 90, column: 37, scope: !248)
!254 = !DILocation(line: 90, column: 34, scope: !248)
!255 = !DILocation(line: 90, column: 9, scope: !224)
!256 = !DILocation(line: 91, column: 16, scope: !248)
!257 = !DILocation(line: 91, column: 9, scope: !248)
!258 = !DILocation(line: 93, column: 12, scope: !224)
!259 = !DILocation(line: 93, column: 5, scope: !224)
!260 = !DILocation(line: 94, column: 1, scope: !224)
!261 = distinct !DISubprogram(name: "config_error", scope: !2, file: !2, line: 96, type: !262, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !110)
!262 = !DISubroutineType(types: !263)
!263 = !{!183, !264, !94, null}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_t", file: !72, line: 32, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_t_", file: !72, line: 41, size: 192, elements: !267)
!267 = !{!268, !327, !328}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !266, file: !72, line: 42, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !271, line: 7, baseType: !272)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !273, line: 49, size: 1728, elements: !274)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !290, !292, !293, !294, !297, !298, !300, !304, !307, !309, !312, !315, !316, !318, !322, !323}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !272, file: !273, line: 51, baseType: !95, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !272, file: !273, line: 54, baseType: !97, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !272, file: !273, line: 55, baseType: !97, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !272, file: !273, line: 56, baseType: !97, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !272, file: !273, line: 57, baseType: !97, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !272, file: !273, line: 58, baseType: !97, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !272, file: !273, line: 59, baseType: !97, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !272, file: !273, line: 60, baseType: !97, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !272, file: !273, line: 61, baseType: !97, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !272, file: !273, line: 64, baseType: !97, size: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !272, file: !273, line: 65, baseType: !97, size: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !272, file: !273, line: 66, baseType: !97, size: 64, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !272, file: !273, line: 68, baseType: !288, size: 64, offset: 768)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !273, line: 36, flags: DIFlagFwdDecl)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !272, file: !273, line: 70, baseType: !291, size: 64, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !272, file: !273, line: 72, baseType: !95, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !272, file: !273, line: 73, baseType: !95, size: 32, offset: 928)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !272, file: !273, line: 74, baseType: !295, size: 64, offset: 960)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !296, line: 152, baseType: !227)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !272, file: !273, line: 77, baseType: !96, size: 16, offset: 1024)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !272, file: !273, line: 78, baseType: !299, size: 8, offset: 1040)
!299 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !272, file: !273, line: 79, baseType: !301, size: 8, offset: 1048)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 1)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !272, file: !273, line: 81, baseType: !305, size: 64, offset: 1088)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !273, line: 43, baseType: null)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !272, file: !273, line: 89, baseType: !308, size: 64, offset: 1152)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !296, line: 153, baseType: !227)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !272, file: !273, line: 91, baseType: !310, size: 64, offset: 1216)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !273, line: 37, flags: DIFlagFwdDecl)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !272, file: !273, line: 92, baseType: !313, size: 64, offset: 1280)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !273, line: 38, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !272, file: !273, line: 93, baseType: !291, size: 64, offset: 1344)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !272, file: !273, line: 94, baseType: !317, size: 64, offset: 1408)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !272, file: !273, line: 95, baseType: !319, size: 64, offset: 1472)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !320, line: 46, baseType: !321)
!320 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!321 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !272, file: !273, line: 96, baseType: !95, size: 32, offset: 1536)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !272, file: !273, line: 98, baseType: !324, size: 160, offset: 1568)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 20)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !266, file: !72, line: 43, baseType: !95, size: 32, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "error_message", scope: !266, file: !72, line: 44, baseType: !97, size: 64, offset: 128)
!329 = !DILocalVariable(name: "conf", arg: 1, scope: !261, file: !2, line: 96, type: !264)
!330 = !DILocation(line: 96, column: 29, scope: !261)
!331 = !DILocalVariable(name: "fmt", arg: 2, scope: !261, file: !2, line: 96, type: !94)
!332 = !DILocation(line: 96, column: 47, scope: !261)
!333 = !DILocalVariable(name: "values", scope: !261, file: !2, line: 98, type: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !335, line: 52, baseType: !336)
!335 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !337, line: 14, baseType: !338)
!337 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !339, baseType: !340)
!339 = !DIFile(filename: "common/lwan-config.c", directory: "/home/raj/lwan")
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 192, elements: !302)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !342)
!342 = !{!343, !344, !345, !346}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !341, file: !339, line: 98, baseType: !73, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !341, file: !339, line: 98, baseType: !73, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !341, file: !339, line: 98, baseType: !317, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !341, file: !339, line: 98, baseType: !317, size: 64, offset: 128)
!347 = !DILocation(line: 98, column: 13, scope: !261)
!348 = !DILocalVariable(name: "len", scope: !261, file: !2, line: 99, type: !95)
!349 = !DILocation(line: 99, column: 9, scope: !261)
!350 = !DILocalVariable(name: "output", scope: !261, file: !2, line: 100, type: !97)
!351 = !DILocation(line: 100, column: 11, scope: !261)
!352 = !DILocation(line: 102, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !261, file: !2, line: 102, column: 9)
!354 = !DILocation(line: 102, column: 15, scope: !353)
!355 = !DILocation(line: 102, column: 9, scope: !261)
!356 = !DILocation(line: 103, column: 9, scope: !353)
!357 = !DILocation(line: 105, column: 5, scope: !261)
!358 = !DILocation(line: 106, column: 30, scope: !261)
!359 = !DILocation(line: 106, column: 35, scope: !261)
!360 = !DILocation(line: 106, column: 11, scope: !261)
!361 = !DILocation(line: 106, column: 9, scope: !261)
!362 = !DILocation(line: 107, column: 5, scope: !261)
!363 = !DILocation(line: 109, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !261, file: !2, line: 109, column: 9)
!365 = !DILocation(line: 109, column: 13, scope: !364)
!366 = !DILocation(line: 109, column: 9, scope: !261)
!367 = !DILocation(line: 110, column: 31, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !2, line: 109, column: 19)
!369 = !DILocation(line: 110, column: 9, scope: !368)
!370 = !DILocation(line: 110, column: 15, scope: !368)
!371 = !DILocation(line: 110, column: 29, scope: !368)
!372 = !DILocation(line: 111, column: 9, scope: !368)
!373 = !DILocation(line: 114, column: 5, scope: !261)
!374 = !DILocation(line: 114, column: 11, scope: !261)
!375 = !DILocation(line: 114, column: 25, scope: !261)
!376 = !DILocation(line: 115, column: 5, scope: !261)
!377 = !DILocation(line: 116, column: 1, scope: !261)
!378 = distinct !DISubprogram(name: "config_read_line", scope: !2, file: !2, line: 183, type: !379, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !110)
!379 = !DISubroutineType(types: !380)
!380 = !{!183, !264, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_line_t", file: !72, line: 33, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_line_t_", file: !72, line: 47, size: 8384, elements: !384)
!384 = !{!385, !398, !400}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !72, line: 48, baseType: !386, size: 128)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !72, line: 48, size: 128, elements: !387)
!387 = !{!388, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !386, file: !72, line: 51, baseType: !389, size: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !72, line: 49, size: 128, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !72, line: 50, baseType: !97, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !389, file: !72, line: 50, baseType: !97, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !386, file: !72, line: 54, baseType: !394, size: 128)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !72, line: 52, size: 128, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !394, file: !72, line: 53, baseType: !97, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !394, file: !72, line: 53, baseType: !97, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !383, file: !72, line: 56, baseType: !399, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_line_type_t", file: !72, line: 39, baseType: !71)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !383, file: !72, line: 57, baseType: !401, size: 8192, offset: 160)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 1024)
!404 = !DILocalVariable(name: "conf", arg: 1, scope: !378, file: !2, line: 183, type: !264)
!405 = !DILocation(line: 183, column: 33, scope: !378)
!406 = !DILocalVariable(name: "l", arg: 2, scope: !378, file: !2, line: 183, type: !381)
!407 = !DILocation(line: 183, column: 54, scope: !378)
!408 = !DILocalVariable(name: "line", scope: !378, file: !2, line: 185, type: !97)
!409 = !DILocation(line: 185, column: 11, scope: !378)
!410 = !DILocalVariable(name: "line_end", scope: !378, file: !2, line: 185, type: !97)
!411 = !DILocation(line: 185, column: 18, scope: !378)
!412 = !DILocation(line: 187, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !378, file: !2, line: 187, column: 9)
!414 = !DILocation(line: 187, column: 15, scope: !413)
!415 = !DILocation(line: 187, column: 9, scope: !378)
!416 = !DILocation(line: 188, column: 9, scope: !413)
!417 = !DILabel(scope: !378, name: "retry", file: !2, line: 190)
!418 = !DILocation(line: 190, column: 1, scope: !378)
!419 = !DILocation(line: 191, column: 16, scope: !420)
!420 = distinct !DILexicalBlock(scope: !378, file: !2, line: 191, column: 9)
!421 = !DILocation(line: 191, column: 19, scope: !420)
!422 = !DILocation(line: 191, column: 46, scope: !420)
!423 = !DILocation(line: 191, column: 52, scope: !420)
!424 = !DILocation(line: 191, column: 10, scope: !420)
!425 = !DILocation(line: 191, column: 9, scope: !378)
!426 = !DILocation(line: 192, column: 9, scope: !420)
!427 = !DILocation(line: 194, column: 5, scope: !378)
!428 = !DILocation(line: 194, column: 11, scope: !378)
!429 = !DILocation(line: 194, column: 15, scope: !378)
!430 = !DILocation(line: 196, column: 28, scope: !378)
!431 = !DILocation(line: 196, column: 31, scope: !378)
!432 = !DILocation(line: 196, column: 12, scope: !378)
!433 = !DILocation(line: 196, column: 10, scope: !378)
!434 = !DILocation(line: 197, column: 34, scope: !378)
!435 = !DILocation(line: 197, column: 12, scope: !378)
!436 = !DILocation(line: 197, column: 10, scope: !378)
!437 = !DILocation(line: 198, column: 35, scope: !378)
!438 = !DILocation(line: 198, column: 12, scope: !378)
!439 = !DILocation(line: 198, column: 10, scope: !378)
!440 = !DILocation(line: 199, column: 30, scope: !378)
!441 = !DILocation(line: 199, column: 16, scope: !378)
!442 = !DILocation(line: 199, column: 14, scope: !378)
!443 = !DILocation(line: 201, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !378, file: !2, line: 201, column: 9)
!445 = !DILocation(line: 201, column: 9, scope: !444)
!446 = !DILocation(line: 201, column: 19, scope: !444)
!447 = !DILocation(line: 201, column: 9, scope: !378)
!448 = !DILocation(line: 202, column: 28, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !2, line: 202, column: 13)
!450 = distinct !DILexicalBlock(scope: !444, file: !2, line: 201, column: 27)
!451 = !DILocation(line: 202, column: 34, scope: !449)
!452 = !DILocation(line: 202, column: 14, scope: !449)
!453 = !DILocation(line: 202, column: 13, scope: !450)
!454 = !DILocation(line: 203, column: 26, scope: !455)
!455 = distinct !DILexicalBlock(scope: !449, file: !2, line: 202, column: 38)
!456 = !DILocation(line: 203, column: 13, scope: !455)
!457 = !DILocation(line: 204, column: 13, scope: !455)
!458 = !DILocation(line: 206, column: 5, scope: !450)
!459 = !DILocation(line: 206, column: 17, scope: !460)
!460 = distinct !DILexicalBlock(scope: !444, file: !2, line: 206, column: 16)
!461 = !DILocation(line: 206, column: 16, scope: !460)
!462 = !DILocation(line: 206, column: 22, scope: !460)
!463 = !DILocation(line: 206, column: 16, scope: !444)
!464 = !DILocation(line: 207, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !2, line: 206, column: 31)
!466 = !DILocation(line: 208, column: 17, scope: !467)
!467 = distinct !DILexicalBlock(scope: !460, file: !2, line: 208, column: 16)
!468 = !DILocation(line: 208, column: 16, scope: !467)
!469 = !DILocation(line: 208, column: 22, scope: !467)
!470 = !DILocation(line: 208, column: 29, scope: !467)
!471 = !DILocation(line: 208, column: 32, scope: !467)
!472 = !DILocation(line: 208, column: 40, scope: !467)
!473 = !DILocation(line: 208, column: 37, scope: !467)
!474 = !DILocation(line: 208, column: 16, scope: !460)
!475 = !DILocation(line: 209, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !467, file: !2, line: 208, column: 50)
!477 = !DILocation(line: 209, column: 12, scope: !476)
!478 = !DILocation(line: 209, column: 17, scope: !476)
!479 = !DILocation(line: 210, column: 5, scope: !476)
!480 = !DILocalVariable(name: "equal", scope: !481, file: !2, line: 211, type: !97)
!481 = distinct !DILexicalBlock(scope: !467, file: !2, line: 210, column: 12)
!482 = !DILocation(line: 211, column: 15, scope: !481)
!483 = !DILocation(line: 211, column: 30, scope: !481)
!484 = !DILocation(line: 211, column: 23, scope: !481)
!485 = !DILocation(line: 212, column: 13, scope: !486)
!486 = distinct !DILexicalBlock(scope: !481, file: !2, line: 212, column: 13)
!487 = !DILocation(line: 212, column: 13, scope: !481)
!488 = !DILocation(line: 213, column: 29, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !2, line: 213, column: 17)
!490 = distinct !DILexicalBlock(scope: !486, file: !2, line: 212, column: 20)
!491 = !DILocation(line: 213, column: 35, scope: !489)
!492 = !DILocation(line: 213, column: 38, scope: !489)
!493 = !DILocation(line: 213, column: 18, scope: !489)
!494 = !DILocation(line: 213, column: 17, scope: !490)
!495 = !DILocation(line: 214, column: 30, scope: !496)
!496 = distinct !DILexicalBlock(scope: !489, file: !2, line: 213, column: 46)
!497 = !DILocation(line: 214, column: 17, scope: !496)
!498 = !DILocation(line: 215, column: 17, scope: !496)
!499 = !DILocation(line: 217, column: 9, scope: !490)
!500 = !DILocation(line: 218, column: 26, scope: !501)
!501 = distinct !DILexicalBlock(scope: !486, file: !2, line: 217, column: 16)
!502 = !DILocation(line: 218, column: 13, scope: !501)
!503 = !DILocation(line: 219, column: 13, scope: !501)
!504 = !DILocation(line: 223, column: 5, scope: !378)
!505 = !DILocation(line: 224, column: 1, scope: !378)
!506 = distinct !DISubprogram(name: "remove_comments", scope: !2, file: !2, line: 118, type: !507, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !110)
!507 = !DISubroutineType(types: !508)
!508 = !{!97, !97}
!509 = !DILocalVariable(name: "line", arg: 1, scope: !506, file: !2, line: 118, type: !97)
!510 = !DILocation(line: 118, column: 36, scope: !506)
!511 = !DILocalVariable(name: "tmp", scope: !506, file: !2, line: 120, type: !97)
!512 = !DILocation(line: 120, column: 11, scope: !506)
!513 = !DILocation(line: 120, column: 25, scope: !506)
!514 = !DILocation(line: 120, column: 17, scope: !506)
!515 = !DILocation(line: 121, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !506, file: !2, line: 121, column: 9)
!517 = !DILocation(line: 121, column: 9, scope: !506)
!518 = !DILocation(line: 122, column: 10, scope: !516)
!519 = !DILocation(line: 122, column: 14, scope: !516)
!520 = !DILocation(line: 122, column: 9, scope: !516)
!521 = !DILocation(line: 123, column: 12, scope: !506)
!522 = !DILocation(line: 123, column: 5, scope: !506)
!523 = distinct !DISubprogram(name: "remove_leading_spaces", scope: !2, file: !2, line: 136, type: !507, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !110)
!524 = !DILocalVariable(name: "line", arg: 1, scope: !523, file: !2, line: 136, type: !97)
!525 = !DILocation(line: 136, column: 42, scope: !523)
!526 = !DILocation(line: 138, column: 5, scope: !523)
!527 = !DILocation(line: 138, column: 12, scope: !523)
!528 = !DILocation(line: 139, column: 13, scope: !523)
!529 = distinct !{!529, !526, !528, !174}
!530 = !DILocation(line: 140, column: 12, scope: !523)
!531 = !DILocation(line: 140, column: 5, scope: !523)
!532 = distinct !DISubprogram(name: "remove_trailing_spaces", scope: !2, file: !2, line: 126, type: !507, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !110)
!533 = !DILocalVariable(name: "line", arg: 1, scope: !532, file: !2, line: 126, type: !97)
!534 = !DILocation(line: 126, column: 43, scope: !532)
!535 = !DILocalVariable(name: "end", scope: !532, file: !2, line: 128, type: !97)
!536 = !DILocation(line: 128, column: 11, scope: !532)
!537 = !DILocation(line: 128, column: 27, scope: !532)
!538 = !DILocation(line: 128, column: 17, scope: !532)
!539 = !DILocation(line: 130, column: 13, scope: !540)
!540 = distinct !DILexicalBlock(scope: !532, file: !2, line: 130, column: 5)
!541 = !DILocation(line: 130, column: 10, scope: !540)
!542 = !DILocation(line: 130, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !2, line: 130, column: 5)
!544 = !DILocation(line: 130, column: 5, scope: !540)
!545 = !DILocation(line: 130, column: 35, scope: !543)
!546 = !DILocation(line: 130, column: 5, scope: !543)
!547 = distinct !{!547, !544, !548, !174}
!548 = !DILocation(line: 130, column: 38, scope: !540)
!549 = !DILocation(line: 131, column: 7, scope: !532)
!550 = !DILocation(line: 131, column: 11, scope: !532)
!551 = !DILocation(line: 131, column: 16, scope: !532)
!552 = !DILocation(line: 133, column: 12, scope: !532)
!553 = !DILocation(line: 133, column: 5, scope: !532)
!554 = distinct !DISubprogram(name: "find_line_end", scope: !2, file: !2, line: 143, type: !507, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !110)
!555 = !DILocalVariable(name: "line", arg: 1, scope: !554, file: !2, line: 143, type: !97)
!556 = !DILocation(line: 143, column: 34, scope: !554)
!557 = !DILocation(line: 145, column: 10, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !2, line: 145, column: 9)
!559 = !DILocation(line: 145, column: 9, scope: !558)
!560 = !DILocation(line: 145, column: 15, scope: !558)
!561 = !DILocation(line: 145, column: 9, scope: !554)
!562 = !DILocation(line: 146, column: 16, scope: !558)
!563 = !DILocation(line: 146, column: 9, scope: !558)
!564 = !DILocation(line: 147, column: 30, scope: !554)
!565 = !DILocation(line: 147, column: 20, scope: !554)
!566 = !DILocation(line: 147, column: 42, scope: !554)
!567 = !DILocation(line: 147, column: 5, scope: !554)
!568 = !DILocation(line: 148, column: 1, scope: !554)
!569 = distinct !DISubprogram(name: "parse_section", scope: !2, file: !2, line: 150, type: !570, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !110)
!570 = !DISubroutineType(types: !571)
!571 = !{!183, !97, !381}
!572 = !DILocalVariable(name: "line", arg: 1, scope: !569, file: !2, line: 150, type: !97)
!573 = !DILocation(line: 150, column: 33, scope: !569)
!574 = !DILocalVariable(name: "l", arg: 2, scope: !569, file: !2, line: 150, type: !381)
!575 = !DILocation(line: 150, column: 54, scope: !569)
!576 = !DILocalVariable(name: "name", scope: !569, file: !2, line: 152, type: !97)
!577 = !DILocation(line: 152, column: 11, scope: !569)
!578 = !DILocalVariable(name: "param", scope: !569, file: !2, line: 152, type: !97)
!579 = !DILocation(line: 152, column: 18, scope: !569)
!580 = !DILocalVariable(name: "bracket", scope: !569, file: !2, line: 153, type: !97)
!581 = !DILocation(line: 153, column: 11, scope: !569)
!582 = !DILocation(line: 153, column: 29, scope: !569)
!583 = !DILocation(line: 153, column: 21, scope: !569)
!584 = !DILocation(line: 154, column: 10, scope: !585)
!585 = distinct !DILexicalBlock(scope: !569, file: !2, line: 154, column: 9)
!586 = !DILocation(line: 154, column: 9, scope: !569)
!587 = !DILocation(line: 155, column: 9, scope: !585)
!588 = !DILocalVariable(name: "space", scope: !569, file: !2, line: 157, type: !97)
!589 = !DILocation(line: 157, column: 11, scope: !569)
!590 = !DILocation(line: 157, column: 26, scope: !569)
!591 = !DILocation(line: 157, column: 19, scope: !569)
!592 = !DILocation(line: 158, column: 10, scope: !593)
!593 = distinct !DILexicalBlock(scope: !569, file: !2, line: 158, column: 9)
!594 = !DILocation(line: 158, column: 9, scope: !569)
!595 = !DILocation(line: 159, column: 9, scope: !593)
!596 = !DILocation(line: 161, column: 6, scope: !569)
!597 = !DILocation(line: 161, column: 14, scope: !569)
!598 = !DILocation(line: 162, column: 6, scope: !569)
!599 = !DILocation(line: 162, column: 12, scope: !569)
!600 = !DILocation(line: 163, column: 57, scope: !569)
!601 = !DILocation(line: 163, column: 35, scope: !569)
!602 = !DILocation(line: 163, column: 12, scope: !569)
!603 = !DILocation(line: 163, column: 10, scope: !569)
!604 = !DILocation(line: 164, column: 58, scope: !569)
!605 = !DILocation(line: 164, column: 64, scope: !569)
!606 = !DILocation(line: 164, column: 36, scope: !569)
!607 = !DILocation(line: 164, column: 13, scope: !569)
!608 = !DILocation(line: 164, column: 11, scope: !569)
!609 = !DILocation(line: 166, column: 23, scope: !569)
!610 = !DILocation(line: 166, column: 5, scope: !569)
!611 = !DILocation(line: 166, column: 8, scope: !569)
!612 = !DILocation(line: 166, column: 16, scope: !569)
!613 = !DILocation(line: 166, column: 21, scope: !569)
!614 = !DILocation(line: 167, column: 24, scope: !569)
!615 = !DILocation(line: 167, column: 5, scope: !569)
!616 = !DILocation(line: 167, column: 8, scope: !569)
!617 = !DILocation(line: 167, column: 16, scope: !569)
!618 = !DILocation(line: 167, column: 22, scope: !569)
!619 = !DILocation(line: 168, column: 5, scope: !569)
!620 = !DILocation(line: 168, column: 8, scope: !569)
!621 = !DILocation(line: 168, column: 13, scope: !569)
!622 = !DILocation(line: 170, column: 5, scope: !569)
!623 = !DILocation(line: 171, column: 1, scope: !569)
!624 = distinct !DISubprogram(name: "parse_line", scope: !2, file: !2, line: 173, type: !625, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !110)
!625 = !DISubroutineType(types: !626)
!626 = !{!183, !97, !381, !97}
!627 = !DILocalVariable(name: "line", arg: 1, scope: !624, file: !2, line: 173, type: !97)
!628 = !DILocation(line: 173, column: 30, scope: !624)
!629 = !DILocalVariable(name: "l", arg: 2, scope: !624, file: !2, line: 173, type: !381)
!630 = !DILocation(line: 173, column: 51, scope: !624)
!631 = !DILocalVariable(name: "equal", arg: 3, scope: !624, file: !2, line: 173, type: !97)
!632 = !DILocation(line: 173, column: 60, scope: !624)
!633 = !DILocation(line: 175, column: 6, scope: !624)
!634 = !DILocation(line: 175, column: 12, scope: !624)
!635 = !DILocation(line: 176, column: 64, scope: !624)
!636 = !DILocation(line: 176, column: 42, scope: !624)
!637 = !DILocation(line: 176, column: 19, scope: !624)
!638 = !DILocation(line: 176, column: 5, scope: !624)
!639 = !DILocation(line: 176, column: 8, scope: !624)
!640 = !DILocation(line: 176, column: 13, scope: !624)
!641 = !DILocation(line: 176, column: 17, scope: !624)
!642 = !DILocation(line: 177, column: 43, scope: !624)
!643 = !DILocation(line: 177, column: 49, scope: !624)
!644 = !DILocation(line: 177, column: 21, scope: !624)
!645 = !DILocation(line: 177, column: 5, scope: !624)
!646 = !DILocation(line: 177, column: 8, scope: !624)
!647 = !DILocation(line: 177, column: 13, scope: !624)
!648 = !DILocation(line: 177, column: 19, scope: !624)
!649 = !DILocation(line: 178, column: 5, scope: !624)
!650 = !DILocation(line: 178, column: 8, scope: !624)
!651 = !DILocation(line: 178, column: 13, scope: !624)
!652 = !DILocation(line: 180, column: 5, scope: !624)
!653 = distinct !DISubprogram(name: "config_open", scope: !2, file: !2, line: 226, type: !654, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !110)
!654 = !DISubroutineType(types: !655)
!655 = !{!183, !264, !94}
!656 = !DILocalVariable(name: "conf", arg: 1, scope: !653, file: !2, line: 226, type: !264)
!657 = !DILocation(line: 226, column: 28, scope: !653)
!658 = !DILocalVariable(name: "path", arg: 2, scope: !653, file: !2, line: 226, type: !94)
!659 = !DILocation(line: 226, column: 46, scope: !653)
!660 = !DILocation(line: 228, column: 10, scope: !661)
!661 = distinct !DILexicalBlock(scope: !653, file: !2, line: 228, column: 9)
!662 = !DILocation(line: 228, column: 9, scope: !653)
!663 = !DILocation(line: 229, column: 9, scope: !661)
!664 = !DILocation(line: 230, column: 10, scope: !665)
!665 = distinct !DILexicalBlock(scope: !653, file: !2, line: 230, column: 9)
!666 = !DILocation(line: 230, column: 9, scope: !653)
!667 = !DILocation(line: 231, column: 9, scope: !665)
!668 = !DILocation(line: 232, column: 24, scope: !653)
!669 = !DILocation(line: 232, column: 18, scope: !653)
!670 = !DILocation(line: 232, column: 5, scope: !653)
!671 = !DILocation(line: 232, column: 11, scope: !653)
!672 = !DILocation(line: 232, column: 16, scope: !653)
!673 = !DILocation(line: 233, column: 10, scope: !674)
!674 = distinct !DILexicalBlock(scope: !653, file: !2, line: 233, column: 9)
!675 = !DILocation(line: 233, column: 16, scope: !674)
!676 = !DILocation(line: 233, column: 9, scope: !653)
!677 = !DILocation(line: 234, column: 9, scope: !674)
!678 = !DILocation(line: 235, column: 5, scope: !653)
!679 = !DILocation(line: 235, column: 11, scope: !653)
!680 = !DILocation(line: 235, column: 16, scope: !653)
!681 = !DILocation(line: 236, column: 5, scope: !653)
!682 = !DILocation(line: 236, column: 11, scope: !653)
!683 = !DILocation(line: 236, column: 25, scope: !653)
!684 = !DILocation(line: 237, column: 5, scope: !653)
!685 = !DILocation(line: 238, column: 1, scope: !653)
!686 = distinct !DISubprogram(name: "config_close", scope: !2, file: !2, line: 240, type: !687, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !110)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !264}
!689 = !DILocalVariable(name: "conf", arg: 1, scope: !686, file: !2, line: 240, type: !264)
!690 = !DILocation(line: 240, column: 29, scope: !686)
!691 = !DILocation(line: 242, column: 10, scope: !692)
!692 = distinct !DILexicalBlock(scope: !686, file: !2, line: 242, column: 9)
!693 = !DILocation(line: 242, column: 9, scope: !686)
!694 = !DILocation(line: 243, column: 9, scope: !692)
!695 = !DILocation(line: 244, column: 10, scope: !696)
!696 = distinct !DILexicalBlock(scope: !686, file: !2, line: 244, column: 9)
!697 = !DILocation(line: 244, column: 16, scope: !696)
!698 = !DILocation(line: 244, column: 9, scope: !686)
!699 = !DILocation(line: 245, column: 9, scope: !696)
!700 = !DILocation(line: 246, column: 12, scope: !686)
!701 = !DILocation(line: 246, column: 18, scope: !686)
!702 = !DILocation(line: 246, column: 5, scope: !686)
!703 = !DILocation(line: 247, column: 10, scope: !686)
!704 = !DILocation(line: 247, column: 16, scope: !686)
!705 = !DILocation(line: 247, column: 5, scope: !686)
!706 = !DILocation(line: 248, column: 1, scope: !686)
