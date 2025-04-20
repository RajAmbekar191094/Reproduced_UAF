; ModuleID = './src/protocols/utils/excl.c'
source_filename = "./src/protocols/utils/excl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_excl = type { ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"!self->pipe\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [29 x i8] c"./src/protocols/utils/excl.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [14 x i8] c"!self->inpipe\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [15 x i8] c"!self->outpipe\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [11 x i8] c"self->pipe\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [19 x i8] c"pipe == self->pipe\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !37

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_excl_init(ptr noundef %0) #0 !dbg !55 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !69, metadata !DIExpression()), !dbg !70
  %3 = load ptr, ptr %2, align 8, !dbg !71
  %4 = getelementptr inbounds %struct.nn_excl, ptr %3, i32 0, i32 0, !dbg !72
  store ptr null, ptr %4, align 8, !dbg !73
  %5 = load ptr, ptr %2, align 8, !dbg !74
  %6 = getelementptr inbounds %struct.nn_excl, ptr %5, i32 0, i32 1, !dbg !75
  store ptr null, ptr %6, align 8, !dbg !76
  %7 = load ptr, ptr %2, align 8, !dbg !77
  %8 = getelementptr inbounds %struct.nn_excl, ptr %7, i32 0, i32 2, !dbg !78
  store ptr null, ptr %8, align 8, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_excl_term(ptr noundef %0) #0 !dbg !81 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !82, metadata !DIExpression()), !dbg !83
  br label %3, !dbg !84

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !85
  %5 = getelementptr inbounds %struct.nn_excl, ptr %4, i32 0, i32 0, !dbg !85
  %6 = load ptr, ptr %5, align 8, !dbg !85
  %7 = icmp ne ptr %6, null, !dbg !85
  %8 = xor i1 %7, true, !dbg !85
  %9 = xor i1 %8, true, !dbg !85
  %10 = zext i1 %9 to i32, !dbg !85
  %11 = sext i32 %10 to i64, !dbg !85
  %12 = icmp ne i64 %11, 0, !dbg !85
  br i1 %12, label %13, label %16, !dbg !88

13:                                               ; preds = %3
  %14 = load ptr, ptr @stderr, align 8, !dbg !89
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 37), !dbg !89
  call void @nn_err_abort() #4, !dbg !89
  unreachable, !dbg !89

16:                                               ; preds = %3
  br label %17, !dbg !88

17:                                               ; preds = %16
  br label %18, !dbg !91

18:                                               ; preds = %17
  %19 = load ptr, ptr %2, align 8, !dbg !92
  %20 = getelementptr inbounds %struct.nn_excl, ptr %19, i32 0, i32 1, !dbg !92
  %21 = load ptr, ptr %20, align 8, !dbg !92
  %22 = icmp ne ptr %21, null, !dbg !92
  %23 = xor i1 %22, true, !dbg !92
  %24 = xor i1 %23, true, !dbg !92
  %25 = zext i1 %24 to i32, !dbg !92
  %26 = sext i32 %25 to i64, !dbg !92
  %27 = icmp ne i64 %26, 0, !dbg !92
  br i1 %27, label %28, label %31, !dbg !95

28:                                               ; preds = %18
  %29 = load ptr, ptr @stderr, align 8, !dbg !96
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 38), !dbg !96
  call void @nn_err_abort() #4, !dbg !96
  unreachable, !dbg !96

31:                                               ; preds = %18
  br label %32, !dbg !95

32:                                               ; preds = %31
  br label %33, !dbg !98

33:                                               ; preds = %32
  %34 = load ptr, ptr %2, align 8, !dbg !99
  %35 = getelementptr inbounds %struct.nn_excl, ptr %34, i32 0, i32 2, !dbg !99
  %36 = load ptr, ptr %35, align 8, !dbg !99
  %37 = icmp ne ptr %36, null, !dbg !99
  %38 = xor i1 %37, true, !dbg !99
  %39 = xor i1 %38, true, !dbg !99
  %40 = zext i1 %39 to i32, !dbg !99
  %41 = sext i32 %40 to i64, !dbg !99
  %42 = icmp ne i64 %41, 0, !dbg !99
  br i1 %42, label %43, label %46, !dbg !102

43:                                               ; preds = %33
  %44 = load ptr, ptr @stderr, align 8, !dbg !103
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 39), !dbg !103
  call void @nn_err_abort() #4, !dbg !103
  unreachable, !dbg !103

46:                                               ; preds = %33
  br label %47, !dbg !102

47:                                               ; preds = %46
  ret void, !dbg !105
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_excl_add(ptr noundef %0, ptr noundef %1) #0 !dbg !106 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !109, metadata !DIExpression()), !dbg !110
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !111, metadata !DIExpression()), !dbg !112
  %6 = load ptr, ptr %4, align 8, !dbg !113
  %7 = getelementptr inbounds %struct.nn_excl, ptr %6, i32 0, i32 0, !dbg !115
  %8 = load ptr, ptr %7, align 8, !dbg !115
  %9 = icmp ne ptr %8, null, !dbg !113
  br i1 %9, label %10, label %11, !dbg !116

10:                                               ; preds = %2
  store i32 -106, ptr %3, align 4, !dbg !117
  br label %15, !dbg !117

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !118
  %13 = load ptr, ptr %4, align 8, !dbg !119
  %14 = getelementptr inbounds %struct.nn_excl, ptr %13, i32 0, i32 0, !dbg !120
  store ptr %12, ptr %14, align 8, !dbg !121
  store i32 0, ptr %3, align 4, !dbg !122
  br label %15, !dbg !122

15:                                               ; preds = %11, %10
  %16 = load i32, ptr %3, align 4, !dbg !123
  ret i32 %16, !dbg !123
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_excl_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !124 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !127, metadata !DIExpression()), !dbg !128
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !129, metadata !DIExpression()), !dbg !130
  br label %5, !dbg !131

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !132
  %7 = getelementptr inbounds %struct.nn_excl, ptr %6, i32 0, i32 0, !dbg !132
  %8 = load ptr, ptr %7, align 8, !dbg !132
  %9 = icmp ne ptr %8, null, !dbg !132
  %10 = xor i1 %9, true, !dbg !132
  %11 = zext i1 %10 to i32, !dbg !132
  %12 = sext i32 %11 to i64, !dbg !132
  %13 = icmp ne i64 %12, 0, !dbg !132
  br i1 %13, label %14, label %17, !dbg !135

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !dbg !136
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 56), !dbg !136
  call void @nn_err_abort() #4, !dbg !136
  unreachable, !dbg !136

17:                                               ; preds = %5
  br label %18, !dbg !135

18:                                               ; preds = %17
  %19 = load ptr, ptr %3, align 8, !dbg !138
  %20 = getelementptr inbounds %struct.nn_excl, ptr %19, i32 0, i32 0, !dbg !139
  store ptr null, ptr %20, align 8, !dbg !140
  %21 = load ptr, ptr %3, align 8, !dbg !141
  %22 = getelementptr inbounds %struct.nn_excl, ptr %21, i32 0, i32 1, !dbg !142
  store ptr null, ptr %22, align 8, !dbg !143
  %23 = load ptr, ptr %3, align 8, !dbg !144
  %24 = getelementptr inbounds %struct.nn_excl, ptr %23, i32 0, i32 2, !dbg !145
  store ptr null, ptr %24, align 8, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_excl_in(ptr noundef %0, ptr noundef %1) #0 !dbg !148 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !149, metadata !DIExpression()), !dbg !150
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !151, metadata !DIExpression()), !dbg !152
  br label %5, !dbg !153

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !154
  %7 = getelementptr inbounds %struct.nn_excl, ptr %6, i32 0, i32 1, !dbg !154
  %8 = load ptr, ptr %7, align 8, !dbg !154
  %9 = icmp ne ptr %8, null, !dbg !154
  %10 = xor i1 %9, true, !dbg !154
  %11 = xor i1 %10, true, !dbg !154
  %12 = zext i1 %11 to i32, !dbg !154
  %13 = sext i32 %12 to i64, !dbg !154
  %14 = icmp ne i64 %13, 0, !dbg !154
  br i1 %14, label %15, label %18, !dbg !157

15:                                               ; preds = %5
  %16 = load ptr, ptr @stderr, align 8, !dbg !158
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 64), !dbg !158
  call void @nn_err_abort() #4, !dbg !158
  unreachable, !dbg !158

18:                                               ; preds = %5
  br label %19, !dbg !157

19:                                               ; preds = %18
  br label %20, !dbg !160

20:                                               ; preds = %19
  %21 = load ptr, ptr %4, align 8, !dbg !161
  %22 = load ptr, ptr %3, align 8, !dbg !161
  %23 = getelementptr inbounds %struct.nn_excl, ptr %22, i32 0, i32 0, !dbg !161
  %24 = load ptr, ptr %23, align 8, !dbg !161
  %25 = icmp eq ptr %21, %24, !dbg !161
  %26 = xor i1 %25, true, !dbg !161
  %27 = zext i1 %26 to i32, !dbg !161
  %28 = sext i32 %27 to i64, !dbg !161
  %29 = icmp ne i64 %28, 0, !dbg !161
  br i1 %29, label %30, label %33, !dbg !164

30:                                               ; preds = %20
  %31 = load ptr, ptr @stderr, align 8, !dbg !165
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 65), !dbg !165
  call void @nn_err_abort() #4, !dbg !165
  unreachable, !dbg !165

33:                                               ; preds = %20
  br label %34, !dbg !164

34:                                               ; preds = %33
  %35 = load ptr, ptr %4, align 8, !dbg !167
  %36 = load ptr, ptr %3, align 8, !dbg !168
  %37 = getelementptr inbounds %struct.nn_excl, ptr %36, i32 0, i32 1, !dbg !169
  store ptr %35, ptr %37, align 8, !dbg !170
  ret void, !dbg !171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_excl_out(ptr noundef %0, ptr noundef %1) #0 !dbg !172 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !173, metadata !DIExpression()), !dbg !174
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !175, metadata !DIExpression()), !dbg !176
  br label %5, !dbg !177

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !178
  %7 = getelementptr inbounds %struct.nn_excl, ptr %6, i32 0, i32 2, !dbg !178
  %8 = load ptr, ptr %7, align 8, !dbg !178
  %9 = icmp ne ptr %8, null, !dbg !178
  %10 = xor i1 %9, true, !dbg !178
  %11 = xor i1 %10, true, !dbg !178
  %12 = zext i1 %11 to i32, !dbg !178
  %13 = sext i32 %12 to i64, !dbg !178
  %14 = icmp ne i64 %13, 0, !dbg !178
  br i1 %14, label %15, label %18, !dbg !181

15:                                               ; preds = %5
  %16 = load ptr, ptr @stderr, align 8, !dbg !182
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 71), !dbg !182
  call void @nn_err_abort() #4, !dbg !182
  unreachable, !dbg !182

18:                                               ; preds = %5
  br label %19, !dbg !181

19:                                               ; preds = %18
  br label %20, !dbg !184

20:                                               ; preds = %19
  %21 = load ptr, ptr %4, align 8, !dbg !185
  %22 = load ptr, ptr %3, align 8, !dbg !185
  %23 = getelementptr inbounds %struct.nn_excl, ptr %22, i32 0, i32 0, !dbg !185
  %24 = load ptr, ptr %23, align 8, !dbg !185
  %25 = icmp eq ptr %21, %24, !dbg !185
  %26 = xor i1 %25, true, !dbg !185
  %27 = zext i1 %26 to i32, !dbg !185
  %28 = sext i32 %27 to i64, !dbg !185
  %29 = icmp ne i64 %28, 0, !dbg !185
  br i1 %29, label %30, label %33, !dbg !188

30:                                               ; preds = %20
  %31 = load ptr, ptr @stderr, align 8, !dbg !189
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 72), !dbg !189
  call void @nn_err_abort() #4, !dbg !189
  unreachable, !dbg !189

33:                                               ; preds = %20
  br label %34, !dbg !188

34:                                               ; preds = %33
  %35 = load ptr, ptr %4, align 8, !dbg !191
  %36 = load ptr, ptr %3, align 8, !dbg !192
  %37 = getelementptr inbounds %struct.nn_excl, ptr %36, i32 0, i32 2, !dbg !193
  store ptr %35, ptr %37, align 8, !dbg !194
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_excl_send(ptr noundef %0, ptr noundef %1) #0 !dbg !196 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !217, metadata !DIExpression()), !dbg !218
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata ptr %6, metadata !221, metadata !DIExpression()), !dbg !222
  %7 = load ptr, ptr %4, align 8, !dbg !223
  %8 = getelementptr inbounds %struct.nn_excl, ptr %7, i32 0, i32 2, !dbg !223
  %9 = load ptr, ptr %8, align 8, !dbg !223
  %10 = icmp ne ptr %9, null, !dbg !223
  %11 = xor i1 %10, true, !dbg !223
  %12 = zext i1 %11 to i32, !dbg !223
  %13 = sext i32 %12 to i64, !dbg !223
  %14 = icmp ne i64 %13, 0, !dbg !223
  br i1 %14, label %15, label %16, !dbg !225

15:                                               ; preds = %2
  store i32 -11, ptr %3, align 4, !dbg !226
  br label %48, !dbg !226

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !dbg !227
  %18 = getelementptr inbounds %struct.nn_excl, ptr %17, i32 0, i32 2, !dbg !228
  %19 = load ptr, ptr %18, align 8, !dbg !228
  %20 = load ptr, ptr %5, align 8, !dbg !229
  %21 = call i32 @nn_pipe_send(ptr noundef %19, ptr noundef %20), !dbg !230
  store i32 %21, ptr %6, align 4, !dbg !231
  br label %22, !dbg !232

22:                                               ; preds = %16
  %23 = load i32, ptr %6, align 4, !dbg !233
  %24 = icmp sge i32 %23, 0, !dbg !233
  %25 = xor i1 %24, true, !dbg !233
  %26 = zext i1 %25 to i32, !dbg !233
  %27 = sext i32 %26 to i64, !dbg !233
  %28 = icmp ne i64 %27, 0, !dbg !233
  br i1 %28, label %29, label %37, !dbg !236

29:                                               ; preds = %22
  %30 = load ptr, ptr @stderr, align 8, !dbg !237
  %31 = load i32, ptr %6, align 4, !dbg !237
  %32 = sub nsw i32 0, %31, !dbg !237
  %33 = call ptr @nn_err_strerror(i32 noundef %32), !dbg !237
  %34 = load i32, ptr %6, align 4, !dbg !237
  %35 = sub nsw i32 0, %34, !dbg !237
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.7, ptr noundef %33, i32 noundef %35, ptr noundef @.str.2, i32 noundef 84), !dbg !237
  call void @nn_err_abort() #4, !dbg !237
  unreachable, !dbg !237

37:                                               ; preds = %22
  br label %38, !dbg !236

38:                                               ; preds = %37
  %39 = load i32, ptr %6, align 4, !dbg !239
  %40 = and i32 %39, 1, !dbg !241
  %41 = icmp ne i32 %40, 0, !dbg !241
  br i1 %41, label %42, label %45, !dbg !242

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !dbg !243
  %44 = getelementptr inbounds %struct.nn_excl, ptr %43, i32 0, i32 2, !dbg !244
  store ptr null, ptr %44, align 8, !dbg !245
  br label %45, !dbg !243

45:                                               ; preds = %42, %38
  %46 = load i32, ptr %6, align 4, !dbg !246
  %47 = and i32 %46, -2, !dbg !247
  store i32 %47, ptr %3, align 4, !dbg !248
  br label %48, !dbg !248

48:                                               ; preds = %45, %15
  %49 = load i32, ptr %3, align 4, !dbg !249
  ret i32 %49, !dbg !249
}

declare i32 @nn_pipe_send(ptr noundef, ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_excl_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !250 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !251, metadata !DIExpression()), !dbg !252
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata ptr %6, metadata !255, metadata !DIExpression()), !dbg !256
  %7 = load ptr, ptr %4, align 8, !dbg !257
  %8 = getelementptr inbounds %struct.nn_excl, ptr %7, i32 0, i32 1, !dbg !257
  %9 = load ptr, ptr %8, align 8, !dbg !257
  %10 = icmp ne ptr %9, null, !dbg !257
  %11 = xor i1 %10, true, !dbg !257
  %12 = zext i1 %11 to i32, !dbg !257
  %13 = sext i32 %12 to i64, !dbg !257
  %14 = icmp ne i64 %13, 0, !dbg !257
  br i1 %14, label %15, label %16, !dbg !259

15:                                               ; preds = %2
  store i32 -11, ptr %3, align 4, !dbg !260
  br label %48, !dbg !260

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !dbg !261
  %18 = getelementptr inbounds %struct.nn_excl, ptr %17, i32 0, i32 1, !dbg !262
  %19 = load ptr, ptr %18, align 8, !dbg !262
  %20 = load ptr, ptr %5, align 8, !dbg !263
  %21 = call i32 @nn_pipe_recv(ptr noundef %19, ptr noundef %20), !dbg !264
  store i32 %21, ptr %6, align 4, !dbg !265
  br label %22, !dbg !266

22:                                               ; preds = %16
  %23 = load i32, ptr %6, align 4, !dbg !267
  %24 = icmp sge i32 %23, 0, !dbg !267
  %25 = xor i1 %24, true, !dbg !267
  %26 = zext i1 %25 to i32, !dbg !267
  %27 = sext i32 %26 to i64, !dbg !267
  %28 = icmp ne i64 %27, 0, !dbg !267
  br i1 %28, label %29, label %37, !dbg !270

29:                                               ; preds = %22
  %30 = load ptr, ptr @stderr, align 8, !dbg !271
  %31 = load i32, ptr %6, align 4, !dbg !271
  %32 = sub nsw i32 0, %31, !dbg !271
  %33 = call ptr @nn_err_strerror(i32 noundef %32), !dbg !271
  %34 = load i32, ptr %6, align 4, !dbg !271
  %35 = sub nsw i32 0, %34, !dbg !271
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.7, ptr noundef %33, i32 noundef %35, ptr noundef @.str.2, i32 noundef 100), !dbg !271
  call void @nn_err_abort() #4, !dbg !271
  unreachable, !dbg !271

37:                                               ; preds = %22
  br label %38, !dbg !270

38:                                               ; preds = %37
  %39 = load i32, ptr %6, align 4, !dbg !273
  %40 = and i32 %39, 1, !dbg !275
  %41 = icmp ne i32 %40, 0, !dbg !275
  br i1 %41, label %42, label %45, !dbg !276

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !dbg !277
  %44 = getelementptr inbounds %struct.nn_excl, ptr %43, i32 0, i32 1, !dbg !278
  store ptr null, ptr %44, align 8, !dbg !279
  br label %45, !dbg !277

45:                                               ; preds = %42, %38
  %46 = load i32, ptr %6, align 4, !dbg !280
  %47 = and i32 %46, -2, !dbg !281
  store i32 %47, ptr %3, align 4, !dbg !282
  br label %48, !dbg !282

48:                                               ; preds = %45, %15
  %49 = load i32, ptr %3, align 4, !dbg !283
  ret i32 %49, !dbg !283
}

declare i32 @nn_pipe_recv(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_excl_can_send(ptr noundef %0) #0 !dbg !284 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !287, metadata !DIExpression()), !dbg !288
  %3 = load ptr, ptr %2, align 8, !dbg !289
  %4 = getelementptr inbounds %struct.nn_excl, ptr %3, i32 0, i32 2, !dbg !290
  %5 = load ptr, ptr %4, align 8, !dbg !290
  %6 = icmp ne ptr %5, null, !dbg !289
  %7 = zext i1 %6 to i64, !dbg !289
  %8 = select i1 %6, i32 1, i32 0, !dbg !289
  ret i32 %8, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_excl_can_recv(ptr noundef %0) #0 !dbg !292 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !293, metadata !DIExpression()), !dbg !294
  %3 = load ptr, ptr %2, align 8, !dbg !295
  %4 = getelementptr inbounds %struct.nn_excl, ptr %3, i32 0, i32 1, !dbg !296
  %5 = load ptr, ptr %4, align 8, !dbg !296
  %6 = icmp ne ptr %5, null, !dbg !295
  %7 = zext i1 %6 to i64, !dbg !295
  %8 = select i1 %6, i32 1, i32 0, !dbg !295
  ret i32 %8, !dbg !297
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/utils/excl.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "65cc70fc3d79c4498edac7887170e0e3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 29)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 15)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 11)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 19)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 17)
!42 = distinct !DICompileUnit(language: DW_LANG_C11, file: !43, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !44, globals: !46, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "src/protocols/utils/excl.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "65cc70fc3d79c4498edac7887170e0e3")
!44 = !{!45}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!0, !7, !12, !17, !22, !27, !32, !37}
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 8, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 16.0.0"}
!55 = distinct !DISubprogram(name: "nn_excl_init", scope: !2, file: !2, line: 28, type: !56, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_excl", file: !60, line: 33, size: 192, elements: !61)
!60 = !DIFile(filename: "./src/protocols/utils/excl.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f0be91890d61f5b1f69020e9c0441656")
!61 = !{!62, !66, !67}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !59, file: !60, line: 37, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !65, line: 56, flags: DIFlagFwdDecl)
!65 = !DIFile(filename: "./src/protocols/utils/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!66 = !DIDerivedType(tag: DW_TAG_member, name: "inpipe", scope: !59, file: !60, line: 40, baseType: !63, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "outpipe", scope: !59, file: !60, line: 43, baseType: !63, size: 64, offset: 128)
!68 = !{}
!69 = !DILocalVariable(name: "self", arg: 1, scope: !55, file: !2, line: 28, type: !58)
!70 = !DILocation(line: 28, column: 36, scope: !55)
!71 = !DILocation(line: 30, column: 5, scope: !55)
!72 = !DILocation(line: 30, column: 11, scope: !55)
!73 = !DILocation(line: 30, column: 16, scope: !55)
!74 = !DILocation(line: 31, column: 5, scope: !55)
!75 = !DILocation(line: 31, column: 11, scope: !55)
!76 = !DILocation(line: 31, column: 18, scope: !55)
!77 = !DILocation(line: 32, column: 5, scope: !55)
!78 = !DILocation(line: 32, column: 11, scope: !55)
!79 = !DILocation(line: 32, column: 19, scope: !55)
!80 = !DILocation(line: 33, column: 1, scope: !55)
!81 = distinct !DISubprogram(name: "nn_excl_term", scope: !2, file: !2, line: 35, type: !56, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!82 = !DILocalVariable(name: "self", arg: 1, scope: !81, file: !2, line: 35, type: !58)
!83 = !DILocation(line: 35, column: 36, scope: !81)
!84 = !DILocation(line: 37, column: 5, scope: !81)
!85 = !DILocation(line: 37, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 37, column: 5)
!87 = distinct !DILexicalBlock(scope: !81, file: !2, line: 37, column: 5)
!88 = !DILocation(line: 37, column: 5, scope: !87)
!89 = !DILocation(line: 37, column: 5, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !2, line: 37, column: 5)
!91 = !DILocation(line: 38, column: 5, scope: !81)
!92 = !DILocation(line: 38, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !2, line: 38, column: 5)
!94 = distinct !DILexicalBlock(scope: !81, file: !2, line: 38, column: 5)
!95 = !DILocation(line: 38, column: 5, scope: !94)
!96 = !DILocation(line: 38, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !2, line: 38, column: 5)
!98 = !DILocation(line: 39, column: 5, scope: !81)
!99 = !DILocation(line: 39, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 39, column: 5)
!101 = distinct !DILexicalBlock(scope: !81, file: !2, line: 39, column: 5)
!102 = !DILocation(line: 39, column: 5, scope: !101)
!103 = !DILocation(line: 39, column: 5, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !2, line: 39, column: 5)
!105 = !DILocation(line: 40, column: 1, scope: !81)
!106 = distinct !DISubprogram(name: "nn_excl_add", scope: !2, file: !2, line: 42, type: !107, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!107 = !DISubroutineType(types: !108)
!108 = !{!45, !58, !63}
!109 = !DILocalVariable(name: "self", arg: 1, scope: !106, file: !2, line: 42, type: !58)
!110 = !DILocation(line: 42, column: 34, scope: !106)
!111 = !DILocalVariable(name: "pipe", arg: 2, scope: !106, file: !2, line: 42, type: !63)
!112 = !DILocation(line: 42, column: 56, scope: !106)
!113 = !DILocation(line: 45, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !106, file: !2, line: 45, column: 9)
!115 = !DILocation(line: 45, column: 15, scope: !114)
!116 = !DILocation(line: 45, column: 9, scope: !106)
!117 = !DILocation(line: 46, column: 9, scope: !114)
!118 = !DILocation(line: 49, column: 18, scope: !106)
!119 = !DILocation(line: 49, column: 5, scope: !106)
!120 = !DILocation(line: 49, column: 11, scope: !106)
!121 = !DILocation(line: 49, column: 16, scope: !106)
!122 = !DILocation(line: 51, column: 5, scope: !106)
!123 = !DILocation(line: 52, column: 1, scope: !106)
!124 = distinct !DISubprogram(name: "nn_excl_rm", scope: !2, file: !2, line: 54, type: !125, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !58, !63}
!127 = !DILocalVariable(name: "self", arg: 1, scope: !124, file: !2, line: 54, type: !58)
!128 = !DILocation(line: 54, column: 34, scope: !124)
!129 = !DILocalVariable(name: "pipe", arg: 2, scope: !124, file: !2, line: 54, type: !63)
!130 = !DILocation(line: 54, column: 56, scope: !124)
!131 = !DILocation(line: 56, column: 4, scope: !124)
!132 = !DILocation(line: 56, column: 4, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 56, column: 4)
!134 = distinct !DILexicalBlock(scope: !124, file: !2, line: 56, column: 4)
!135 = !DILocation(line: 56, column: 4, scope: !134)
!136 = !DILocation(line: 56, column: 4, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !2, line: 56, column: 4)
!138 = !DILocation(line: 57, column: 4, scope: !124)
!139 = !DILocation(line: 57, column: 10, scope: !124)
!140 = !DILocation(line: 57, column: 15, scope: !124)
!141 = !DILocation(line: 58, column: 4, scope: !124)
!142 = !DILocation(line: 58, column: 10, scope: !124)
!143 = !DILocation(line: 58, column: 17, scope: !124)
!144 = !DILocation(line: 59, column: 4, scope: !124)
!145 = !DILocation(line: 59, column: 10, scope: !124)
!146 = !DILocation(line: 59, column: 18, scope: !124)
!147 = !DILocation(line: 60, column: 1, scope: !124)
!148 = distinct !DISubprogram(name: "nn_excl_in", scope: !2, file: !2, line: 62, type: !125, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!149 = !DILocalVariable(name: "self", arg: 1, scope: !148, file: !2, line: 62, type: !58)
!150 = !DILocation(line: 62, column: 34, scope: !148)
!151 = !DILocalVariable(name: "pipe", arg: 2, scope: !148, file: !2, line: 62, type: !63)
!152 = !DILocation(line: 62, column: 56, scope: !148)
!153 = !DILocation(line: 64, column: 5, scope: !148)
!154 = !DILocation(line: 64, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 64, column: 5)
!156 = distinct !DILexicalBlock(scope: !148, file: !2, line: 64, column: 5)
!157 = !DILocation(line: 64, column: 5, scope: !156)
!158 = !DILocation(line: 64, column: 5, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !2, line: 64, column: 5)
!160 = !DILocation(line: 65, column: 5, scope: !148)
!161 = !DILocation(line: 65, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 65, column: 5)
!163 = distinct !DILexicalBlock(scope: !148, file: !2, line: 65, column: 5)
!164 = !DILocation(line: 65, column: 5, scope: !163)
!165 = !DILocation(line: 65, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !2, line: 65, column: 5)
!167 = !DILocation(line: 66, column: 20, scope: !148)
!168 = !DILocation(line: 66, column: 5, scope: !148)
!169 = !DILocation(line: 66, column: 11, scope: !148)
!170 = !DILocation(line: 66, column: 18, scope: !148)
!171 = !DILocation(line: 67, column: 1, scope: !148)
!172 = distinct !DISubprogram(name: "nn_excl_out", scope: !2, file: !2, line: 69, type: !125, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!173 = !DILocalVariable(name: "self", arg: 1, scope: !172, file: !2, line: 69, type: !58)
!174 = !DILocation(line: 69, column: 35, scope: !172)
!175 = !DILocalVariable(name: "pipe", arg: 2, scope: !172, file: !2, line: 69, type: !63)
!176 = !DILocation(line: 69, column: 57, scope: !172)
!177 = !DILocation(line: 71, column: 5, scope: !172)
!178 = !DILocation(line: 71, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 71, column: 5)
!180 = distinct !DILexicalBlock(scope: !172, file: !2, line: 71, column: 5)
!181 = !DILocation(line: 71, column: 5, scope: !180)
!182 = !DILocation(line: 71, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !2, line: 71, column: 5)
!184 = !DILocation(line: 72, column: 5, scope: !172)
!185 = !DILocation(line: 72, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 72, column: 5)
!187 = distinct !DILexicalBlock(scope: !172, file: !2, line: 72, column: 5)
!188 = !DILocation(line: 72, column: 5, scope: !187)
!189 = !DILocation(line: 72, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !2, line: 72, column: 5)
!191 = !DILocation(line: 73, column: 21, scope: !172)
!192 = !DILocation(line: 73, column: 5, scope: !172)
!193 = !DILocation(line: 73, column: 11, scope: !172)
!194 = !DILocation(line: 73, column: 19, scope: !172)
!195 = !DILocation(line: 74, column: 1, scope: !172)
!196 = distinct !DISubprogram(name: "nn_excl_send", scope: !2, file: !2, line: 76, type: !197, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!197 = !DISubroutineType(types: !198)
!198 = !{!45, !58, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !201, line: 30, size: 512, elements: !202)
!201 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!202 = !{!203, !216}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !200, file: !201, line: 33, baseType: !204, size: 256)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !205, line: 39, size: 256, elements: !206)
!205 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !204, file: !205, line: 40, baseType: !208, size: 256)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !214)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !210, line: 24, baseType: !211)
!210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !212, line: 38, baseType: !213)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!213 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!214 = !{!215}
!215 = !DISubrange(count: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !200, file: !201, line: 36, baseType: !204, size: 256, offset: 256)
!217 = !DILocalVariable(name: "self", arg: 1, scope: !196, file: !2, line: 76, type: !58)
!218 = !DILocation(line: 76, column: 35, scope: !196)
!219 = !DILocalVariable(name: "msg", arg: 2, scope: !196, file: !2, line: 76, type: !199)
!220 = !DILocation(line: 76, column: 56, scope: !196)
!221 = !DILocalVariable(name: "rc", scope: !196, file: !2, line: 78, type: !45)
!222 = !DILocation(line: 78, column: 9, scope: !196)
!223 = !DILocation(line: 80, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !196, file: !2, line: 80, column: 9)
!225 = !DILocation(line: 80, column: 9, scope: !196)
!226 = !DILocation(line: 81, column: 9, scope: !224)
!227 = !DILocation(line: 83, column: 24, scope: !196)
!228 = !DILocation(line: 83, column: 30, scope: !196)
!229 = !DILocation(line: 83, column: 39, scope: !196)
!230 = !DILocation(line: 83, column: 10, scope: !196)
!231 = !DILocation(line: 83, column: 8, scope: !196)
!232 = !DILocation(line: 84, column: 5, scope: !196)
!233 = !DILocation(line: 84, column: 5, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !2, line: 84, column: 5)
!235 = distinct !DILexicalBlock(scope: !196, file: !2, line: 84, column: 5)
!236 = !DILocation(line: 84, column: 5, scope: !235)
!237 = !DILocation(line: 84, column: 5, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !2, line: 84, column: 5)
!239 = !DILocation(line: 86, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !196, file: !2, line: 86, column: 9)
!241 = !DILocation(line: 86, column: 12, scope: !240)
!242 = !DILocation(line: 86, column: 9, scope: !196)
!243 = !DILocation(line: 87, column: 9, scope: !240)
!244 = !DILocation(line: 87, column: 15, scope: !240)
!245 = !DILocation(line: 87, column: 23, scope: !240)
!246 = !DILocation(line: 89, column: 12, scope: !196)
!247 = !DILocation(line: 89, column: 15, scope: !196)
!248 = !DILocation(line: 89, column: 5, scope: !196)
!249 = !DILocation(line: 90, column: 1, scope: !196)
!250 = distinct !DISubprogram(name: "nn_excl_recv", scope: !2, file: !2, line: 92, type: !197, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!251 = !DILocalVariable(name: "self", arg: 1, scope: !250, file: !2, line: 92, type: !58)
!252 = !DILocation(line: 92, column: 35, scope: !250)
!253 = !DILocalVariable(name: "msg", arg: 2, scope: !250, file: !2, line: 92, type: !199)
!254 = !DILocation(line: 92, column: 56, scope: !250)
!255 = !DILocalVariable(name: "rc", scope: !250, file: !2, line: 94, type: !45)
!256 = !DILocation(line: 94, column: 9, scope: !250)
!257 = !DILocation(line: 96, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !250, file: !2, line: 96, column: 9)
!259 = !DILocation(line: 96, column: 9, scope: !250)
!260 = !DILocation(line: 97, column: 9, scope: !258)
!261 = !DILocation(line: 99, column: 24, scope: !250)
!262 = !DILocation(line: 99, column: 30, scope: !250)
!263 = !DILocation(line: 99, column: 38, scope: !250)
!264 = !DILocation(line: 99, column: 10, scope: !250)
!265 = !DILocation(line: 99, column: 8, scope: !250)
!266 = !DILocation(line: 100, column: 5, scope: !250)
!267 = !DILocation(line: 100, column: 5, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 100, column: 5)
!269 = distinct !DILexicalBlock(scope: !250, file: !2, line: 100, column: 5)
!270 = !DILocation(line: 100, column: 5, scope: !269)
!271 = !DILocation(line: 100, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !2, line: 100, column: 5)
!273 = !DILocation(line: 102, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !250, file: !2, line: 102, column: 9)
!275 = !DILocation(line: 102, column: 12, scope: !274)
!276 = !DILocation(line: 102, column: 9, scope: !250)
!277 = !DILocation(line: 103, column: 9, scope: !274)
!278 = !DILocation(line: 103, column: 15, scope: !274)
!279 = !DILocation(line: 103, column: 22, scope: !274)
!280 = !DILocation(line: 105, column: 12, scope: !250)
!281 = !DILocation(line: 105, column: 15, scope: !250)
!282 = !DILocation(line: 105, column: 5, scope: !250)
!283 = !DILocation(line: 106, column: 1, scope: !250)
!284 = distinct !DISubprogram(name: "nn_excl_can_send", scope: !2, file: !2, line: 108, type: !285, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!285 = !DISubroutineType(types: !286)
!286 = !{!45, !58}
!287 = !DILocalVariable(name: "self", arg: 1, scope: !284, file: !2, line: 108, type: !58)
!288 = !DILocation(line: 108, column: 39, scope: !284)
!289 = !DILocation(line: 110, column: 12, scope: !284)
!290 = !DILocation(line: 110, column: 18, scope: !284)
!291 = !DILocation(line: 110, column: 5, scope: !284)
!292 = distinct !DISubprogram(name: "nn_excl_can_recv", scope: !2, file: !2, line: 113, type: !285, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !68)
!293 = !DILocalVariable(name: "self", arg: 1, scope: !292, file: !2, line: 113, type: !58)
!294 = !DILocation(line: 113, column: 39, scope: !292)
!295 = !DILocation(line: 115, column: 12, scope: !292)
!296 = !DILocation(line: 115, column: 18, scope: !292)
!297 = !DILocation(line: 115, column: 5, scope: !292)
