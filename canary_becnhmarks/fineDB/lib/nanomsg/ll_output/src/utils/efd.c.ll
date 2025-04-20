; ModuleID = './src/utils/efd.c'
source_filename = "./src/utils/efd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_efd = type { i32, i32 }
%struct.pollfd = type { i32, i16, i16 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [25 x i8] c"./src/utils/efd_pipe.inc\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [12 x i8] c"nbytes == 1\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [18 x i8] c"./src/utils/efd.c\00", align 1, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_efd_init(ptr noundef %0) #0 !dbg !41 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata ptr %4, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata ptr %5, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata ptr %6, metadata !57, metadata !DIExpression()), !dbg !61
  %7 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 0, !dbg !62
  %8 = call i32 @pipe(ptr noundef %7) #6, !dbg !63
  store i32 %8, ptr %4, align 4, !dbg !64
  %9 = load i32, ptr %4, align 4, !dbg !65
  %10 = icmp ne i32 %9, 0, !dbg !67
  br i1 %10, label %11, label %20, !dbg !68

11:                                               ; preds = %1
  %12 = call ptr @__errno_location() #7, !dbg !69
  %13 = load i32, ptr %12, align 4, !dbg !69
  %14 = icmp eq i32 %13, 24, !dbg !70
  br i1 %14, label %19, label %15, !dbg !71

15:                                               ; preds = %11
  %16 = call ptr @__errno_location() #7, !dbg !72
  %17 = load i32, ptr %16, align 4, !dbg !72
  %18 = icmp eq i32 %17, 23, !dbg !73
  br i1 %18, label %19, label %20, !dbg !74

19:                                               ; preds = %15, %11
  store i32 -24, ptr %2, align 4, !dbg !75
  br label %119, !dbg !75

20:                                               ; preds = %15, %1
  br label %21, !dbg !76

21:                                               ; preds = %20
  %22 = load i32, ptr %4, align 4, !dbg !77
  %23 = icmp eq i32 %22, 0, !dbg !77
  %24 = xor i1 %23, true, !dbg !77
  %25 = zext i1 %24 to i32, !dbg !77
  %26 = sext i32 %25 to i64, !dbg !77
  %27 = icmp ne i64 %26, 0, !dbg !77
  br i1 %27, label %28, label %36, !dbg !80

28:                                               ; preds = %21
  %29 = load ptr, ptr @stderr, align 8, !dbg !81
  %30 = call ptr @__errno_location() #7, !dbg !81
  %31 = load i32, ptr %30, align 4, !dbg !81
  %32 = call ptr @nn_err_strerror(i32 noundef %31), !dbg !81
  %33 = call ptr @__errno_location() #7, !dbg !81
  %34 = load i32, ptr %33, align 4, !dbg !81
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str, ptr noundef %32, i32 noundef %34, ptr noundef @.str.1, i32 noundef 45), !dbg !81
  call void @nn_err_abort() #8, !dbg !81
  unreachable, !dbg !81

36:                                               ; preds = %21
  br label %37, !dbg !80

37:                                               ; preds = %36
  %38 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 0, !dbg !83
  %39 = load i32, ptr %38, align 4, !dbg !83
  %40 = load ptr, ptr %3, align 8, !dbg !84
  %41 = getelementptr inbounds %struct.nn_efd, ptr %40, i32 0, i32 0, !dbg !85
  store i32 %39, ptr %41, align 4, !dbg !86
  %42 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1, !dbg !87
  %43 = load i32, ptr %42, align 4, !dbg !87
  %44 = load ptr, ptr %3, align 8, !dbg !88
  %45 = getelementptr inbounds %struct.nn_efd, ptr %44, i32 0, i32 1, !dbg !89
  store i32 %43, ptr %45, align 4, !dbg !90
  %46 = load ptr, ptr %3, align 8, !dbg !91
  %47 = getelementptr inbounds %struct.nn_efd, ptr %46, i32 0, i32 0, !dbg !92
  %48 = load i32, ptr %47, align 4, !dbg !92
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %48, i32 noundef 2, i32 noundef 1), !dbg !93
  store i32 %49, ptr %4, align 4, !dbg !94
  br label %50, !dbg !95

50:                                               ; preds = %37
  %51 = load i32, ptr %4, align 4, !dbg !96
  %52 = icmp ne i32 %51, -1, !dbg !96
  %53 = xor i1 %52, true, !dbg !96
  %54 = zext i1 %53 to i32, !dbg !96
  %55 = sext i32 %54 to i64, !dbg !96
  %56 = icmp ne i64 %55, 0, !dbg !96
  br i1 %56, label %57, label %65, !dbg !99

57:                                               ; preds = %50
  %58 = load ptr, ptr @stderr, align 8, !dbg !100
  %59 = call ptr @__errno_location() #7, !dbg !100
  %60 = load i32, ptr %59, align 4, !dbg !100
  %61 = call ptr @nn_err_strerror(i32 noundef %60), !dbg !100
  %62 = call ptr @__errno_location() #7, !dbg !100
  %63 = load i32, ptr %62, align 4, !dbg !100
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str, ptr noundef %61, i32 noundef %63, ptr noundef @.str.1, i32 noundef 51), !dbg !100
  call void @nn_err_abort() #8, !dbg !100
  unreachable, !dbg !100

65:                                               ; preds = %50
  br label %66, !dbg !99

66:                                               ; preds = %65
  %67 = load ptr, ptr %3, align 8, !dbg !102
  %68 = getelementptr inbounds %struct.nn_efd, ptr %67, i32 0, i32 1, !dbg !103
  %69 = load i32, ptr %68, align 4, !dbg !103
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %69, i32 noundef 2, i32 noundef 1), !dbg !104
  store i32 %70, ptr %4, align 4, !dbg !105
  br label %71, !dbg !106

71:                                               ; preds = %66
  %72 = load i32, ptr %4, align 4, !dbg !107
  %73 = icmp ne i32 %72, -1, !dbg !107
  %74 = xor i1 %73, true, !dbg !107
  %75 = zext i1 %74 to i32, !dbg !107
  %76 = sext i32 %75 to i64, !dbg !107
  %77 = icmp ne i64 %76, 0, !dbg !107
  br i1 %77, label %78, label %86, !dbg !110

78:                                               ; preds = %71
  %79 = load ptr, ptr @stderr, align 8, !dbg !111
  %80 = call ptr @__errno_location() #7, !dbg !111
  %81 = load i32, ptr %80, align 4, !dbg !111
  %82 = call ptr @nn_err_strerror(i32 noundef %81), !dbg !111
  %83 = call ptr @__errno_location() #7, !dbg !111
  %84 = load i32, ptr %83, align 4, !dbg !111
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef @.str, ptr noundef %82, i32 noundef %84, ptr noundef @.str.1, i32 noundef 53), !dbg !111
  call void @nn_err_abort() #8, !dbg !111
  unreachable, !dbg !111

86:                                               ; preds = %71
  br label %87, !dbg !110

87:                                               ; preds = %86
  %88 = load ptr, ptr %3, align 8, !dbg !113
  %89 = getelementptr inbounds %struct.nn_efd, ptr %88, i32 0, i32 0, !dbg !114
  %90 = load i32, ptr %89, align 4, !dbg !114
  %91 = call i32 (i32, i32, ...) @fcntl(i32 noundef %90, i32 noundef 3, i32 noundef 0), !dbg !115
  store i32 %91, ptr %5, align 4, !dbg !116
  %92 = load i32, ptr %5, align 4, !dbg !117
  %93 = icmp eq i32 %92, -1, !dbg !119
  br i1 %93, label %94, label %95, !dbg !120

94:                                               ; preds = %87
  store i32 0, ptr %5, align 4, !dbg !121
  br label %95, !dbg !122

95:                                               ; preds = %94, %87
  %96 = load ptr, ptr %3, align 8, !dbg !123
  %97 = getelementptr inbounds %struct.nn_efd, ptr %96, i32 0, i32 0, !dbg !124
  %98 = load i32, ptr %97, align 4, !dbg !124
  %99 = load i32, ptr %5, align 4, !dbg !125
  %100 = or i32 %99, 2048, !dbg !126
  %101 = call i32 (i32, i32, ...) @fcntl(i32 noundef %98, i32 noundef 4, i32 noundef %100), !dbg !127
  store i32 %101, ptr %4, align 4, !dbg !128
  br label %102, !dbg !129

102:                                              ; preds = %95
  %103 = load i32, ptr %4, align 4, !dbg !130
  %104 = icmp ne i32 %103, -1, !dbg !130
  %105 = xor i1 %104, true, !dbg !130
  %106 = zext i1 %105 to i32, !dbg !130
  %107 = sext i32 %106 to i64, !dbg !130
  %108 = icmp ne i64 %107, 0, !dbg !130
  br i1 %108, label %109, label %117, !dbg !133

109:                                              ; preds = %102
  %110 = load ptr, ptr @stderr, align 8, !dbg !134
  %111 = call ptr @__errno_location() #7, !dbg !134
  %112 = load i32, ptr %111, align 4, !dbg !134
  %113 = call ptr @nn_err_strerror(i32 noundef %112), !dbg !134
  %114 = call ptr @__errno_location() #7, !dbg !134
  %115 = load i32, ptr %114, align 4, !dbg !134
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str, ptr noundef %113, i32 noundef %115, ptr noundef @.str.1, i32 noundef 61), !dbg !134
  call void @nn_err_abort() #8, !dbg !134
  unreachable, !dbg !134

117:                                              ; preds = %102
  br label %118, !dbg !133

118:                                              ; preds = %117
  store i32 0, ptr %2, align 4, !dbg !136
  br label %119, !dbg !136

119:                                              ; preds = %118, %19
  %120 = load i32, ptr %2, align 4, !dbg !137
  ret i32 %120, !dbg !137
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

declare ptr @nn_err_strerror(i32 noundef) #4

; Function Attrs: noreturn
declare void @nn_err_abort() #5

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_efd_term(ptr noundef %0) #0 !dbg !138 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata ptr %3, metadata !143, metadata !DIExpression()), !dbg !144
  %4 = load ptr, ptr %2, align 8, !dbg !145
  %5 = getelementptr inbounds %struct.nn_efd, ptr %4, i32 0, i32 0, !dbg !146
  %6 = load i32, ptr %5, align 4, !dbg !146
  %7 = call i32 @close(i32 noundef %6), !dbg !147
  store i32 %7, ptr %3, align 4, !dbg !148
  br label %8, !dbg !149

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4, !dbg !150
  %10 = icmp eq i32 %9, 0, !dbg !150
  %11 = xor i1 %10, true, !dbg !150
  %12 = zext i1 %11 to i32, !dbg !150
  %13 = sext i32 %12 to i64, !dbg !150
  %14 = icmp ne i64 %13, 0, !dbg !150
  br i1 %14, label %15, label %23, !dbg !153

15:                                               ; preds = %8
  %16 = load ptr, ptr @stderr, align 8, !dbg !154
  %17 = call ptr @__errno_location() #7, !dbg !154
  %18 = load i32, ptr %17, align 4, !dbg !154
  %19 = call ptr @nn_err_strerror(i32 noundef %18), !dbg !154
  %20 = call ptr @__errno_location() #7, !dbg !154
  %21 = load i32, ptr %20, align 4, !dbg !154
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef %19, i32 noundef %21, ptr noundef @.str.1, i32 noundef 72), !dbg !154
  call void @nn_err_abort() #8, !dbg !154
  unreachable, !dbg !154

23:                                               ; preds = %8
  br label %24, !dbg !153

24:                                               ; preds = %23
  %25 = load ptr, ptr %2, align 8, !dbg !156
  %26 = getelementptr inbounds %struct.nn_efd, ptr %25, i32 0, i32 1, !dbg !157
  %27 = load i32, ptr %26, align 4, !dbg !157
  %28 = call i32 @close(i32 noundef %27), !dbg !158
  store i32 %28, ptr %3, align 4, !dbg !159
  br label %29, !dbg !160

29:                                               ; preds = %24
  %30 = load i32, ptr %3, align 4, !dbg !161
  %31 = icmp eq i32 %30, 0, !dbg !161
  %32 = xor i1 %31, true, !dbg !161
  %33 = zext i1 %32 to i32, !dbg !161
  %34 = sext i32 %33 to i64, !dbg !161
  %35 = icmp ne i64 %34, 0, !dbg !161
  br i1 %35, label %36, label %44, !dbg !164

36:                                               ; preds = %29
  %37 = load ptr, ptr @stderr, align 8, !dbg !165
  %38 = call ptr @__errno_location() #7, !dbg !165
  %39 = load i32, ptr %38, align 4, !dbg !165
  %40 = call ptr @nn_err_strerror(i32 noundef %39), !dbg !165
  %41 = call ptr @__errno_location() #7, !dbg !165
  %42 = load i32, ptr %41, align 4, !dbg !165
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str, ptr noundef %40, i32 noundef %42, ptr noundef @.str.1, i32 noundef 74), !dbg !165
  call void @nn_err_abort() #8, !dbg !165
  unreachable, !dbg !165

44:                                               ; preds = %29
  br label %45, !dbg !164

45:                                               ; preds = %44
  ret void, !dbg !167
}

declare i32 @close(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_efd_getfd(ptr noundef %0) #0 !dbg !168 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !172, metadata !DIExpression()), !dbg !173
  %3 = load ptr, ptr %2, align 8, !dbg !174
  %4 = getelementptr inbounds %struct.nn_efd, ptr %3, i32 0, i32 0, !dbg !175
  %5 = load i32, ptr %4, align 4, !dbg !175
  ret i32 %5, !dbg !176
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_efd_signal(ptr noundef %0) #0 !dbg !177 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata ptr %3, metadata !180, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata ptr %4, metadata !187, metadata !DIExpression()), !dbg !188
  store i8 101, ptr %4, align 1, !dbg !188
  %5 = load ptr, ptr %2, align 8, !dbg !189
  %6 = getelementptr inbounds %struct.nn_efd, ptr %5, i32 0, i32 1, !dbg !190
  %7 = load i32, ptr %6, align 4, !dbg !190
  %8 = call i64 @write(i32 noundef %7, ptr noundef %4, i64 noundef 1), !dbg !191
  store i64 %8, ptr %3, align 8, !dbg !192
  br label %9, !dbg !193

9:                                                ; preds = %1
  %10 = load i64, ptr %3, align 8, !dbg !194
  %11 = icmp ne i64 %10, -1, !dbg !194
  %12 = xor i1 %11, true, !dbg !194
  %13 = zext i1 %12 to i32, !dbg !194
  %14 = sext i32 %13 to i64, !dbg !194
  %15 = icmp ne i64 %14, 0, !dbg !194
  br i1 %15, label %16, label %24, !dbg !197

16:                                               ; preds = %9
  %17 = load ptr, ptr @stderr, align 8, !dbg !198
  %18 = call ptr @__errno_location() #7, !dbg !198
  %19 = load i32, ptr %18, align 4, !dbg !198
  %20 = call ptr @nn_err_strerror(i32 noundef %19), !dbg !198
  %21 = call ptr @__errno_location() #7, !dbg !198
  %22 = load i32, ptr %21, align 4, !dbg !198
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str, ptr noundef %20, i32 noundef %22, ptr noundef @.str.1, i32 noundef 88), !dbg !198
  call void @nn_err_abort() #8, !dbg !198
  unreachable, !dbg !198

24:                                               ; preds = %9
  br label %25, !dbg !197

25:                                               ; preds = %24
  br label %26, !dbg !200

26:                                               ; preds = %25
  %27 = load i64, ptr %3, align 8, !dbg !201
  %28 = icmp eq i64 %27, 1, !dbg !201
  %29 = xor i1 %28, true, !dbg !201
  %30 = zext i1 %29 to i32, !dbg !201
  %31 = sext i32 %30 to i64, !dbg !201
  %32 = icmp ne i64 %31, 0, !dbg !201
  br i1 %32, label %33, label %36, !dbg !204

33:                                               ; preds = %26
  %34 = load ptr, ptr @stderr, align 8, !dbg !205
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 89), !dbg !205
  call void @nn_err_abort() #8, !dbg !205
  unreachable, !dbg !205

36:                                               ; preds = %26
  br label %37, !dbg !204

37:                                               ; preds = %36
  ret void, !dbg !207
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_efd_unsignal(ptr noundef %0) #0 !dbg !208 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca [16 x i8], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata ptr %3, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata ptr %4, metadata !213, metadata !DIExpression()), !dbg !221
  br label %5, !dbg !222

5:                                                ; preds = %1, %42
  %6 = load ptr, ptr %2, align 8, !dbg !223
  %7 = getelementptr inbounds %struct.nn_efd, ptr %6, i32 0, i32 0, !dbg !225
  %8 = load i32, ptr %7, align 4, !dbg !225
  %9 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 0, !dbg !226
  %10 = call i64 @read(i32 noundef %8, ptr noundef %9, i64 noundef 16), !dbg !227
  store i64 %10, ptr %3, align 8, !dbg !228
  %11 = load i64, ptr %3, align 8, !dbg !229
  %12 = icmp slt i64 %11, 0, !dbg !231
  br i1 %12, label %13, label %18, !dbg !232

13:                                               ; preds = %5
  %14 = call ptr @__errno_location() #7, !dbg !233
  %15 = load i32, ptr %14, align 4, !dbg !233
  %16 = icmp eq i32 %15, 11, !dbg !234
  br i1 %16, label %17, label %18, !dbg !235

17:                                               ; preds = %13
  store i64 0, ptr %3, align 8, !dbg !236
  br label %18, !dbg !237

18:                                               ; preds = %17, %13, %5
  br label %19, !dbg !238

19:                                               ; preds = %18
  %20 = load i64, ptr %3, align 8, !dbg !239
  %21 = icmp sge i64 %20, 0, !dbg !239
  %22 = xor i1 %21, true, !dbg !239
  %23 = zext i1 %22 to i32, !dbg !239
  %24 = sext i32 %23 to i64, !dbg !239
  %25 = icmp ne i64 %24, 0, !dbg !239
  br i1 %25, label %26, label %34, !dbg !242

26:                                               ; preds = %19
  %27 = load ptr, ptr @stderr, align 8, !dbg !243
  %28 = call ptr @__errno_location() #7, !dbg !243
  %29 = load i32, ptr %28, align 4, !dbg !243
  %30 = call ptr @nn_err_strerror(i32 noundef %29), !dbg !243
  %31 = call ptr @__errno_location() #7, !dbg !243
  %32 = load i32, ptr %31, align 4, !dbg !243
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str, ptr noundef %30, i32 noundef %32, ptr noundef @.str.1, i32 noundef 101), !dbg !243
  call void @nn_err_abort() #8, !dbg !243
  unreachable, !dbg !243

34:                                               ; preds = %19
  br label %35, !dbg !242

35:                                               ; preds = %34
  %36 = load i64, ptr %3, align 8, !dbg !245
  %37 = icmp ult i64 %36, 16, !dbg !245
  %38 = zext i1 %37 to i32, !dbg !245
  %39 = sext i32 %38 to i64, !dbg !245
  %40 = icmp ne i64 %39, 0, !dbg !245
  br i1 %40, label %41, label %42, !dbg !247

41:                                               ; preds = %35
  br label %43, !dbg !248

42:                                               ; preds = %35
  br label %5, !dbg !222, !llvm.loop !249

43:                                               ; preds = %41
  ret void, !dbg !251
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_efd_wait(ptr noundef %0, i32 noundef %1) #0 !dbg !252 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pollfd, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !255, metadata !DIExpression()), !dbg !256
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata ptr %6, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata ptr %7, metadata !261, metadata !DIExpression()), !dbg !269
  %8 = load ptr, ptr %4, align 8, !dbg !270
  %9 = call i32 @nn_efd_getfd(ptr noundef %8), !dbg !271
  %10 = getelementptr inbounds %struct.pollfd, ptr %7, i32 0, i32 0, !dbg !272
  store i32 %9, ptr %10, align 4, !dbg !273
  %11 = getelementptr inbounds %struct.pollfd, ptr %7, i32 0, i32 1, !dbg !274
  store i16 1, ptr %11, align 4, !dbg !275
  %12 = load i32, ptr %5, align 4, !dbg !276
  %13 = call i32 @poll(ptr noundef %7, i64 noundef 1, i32 noundef %12), !dbg !277
  store i32 %13, ptr %6, align 4, !dbg !278
  %14 = load i32, ptr %6, align 4, !dbg !279
  %15 = icmp slt i32 %14, 0, !dbg !279
  br i1 %15, label %16, label %20, !dbg !279

16:                                               ; preds = %2
  %17 = call ptr @__errno_location() #7, !dbg !279
  %18 = load i32, ptr %17, align 4, !dbg !279
  %19 = icmp eq i32 %18, 4, !dbg !279
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i1 [ false, %2 ], [ %19, %16 ], !dbg !281
  %22 = zext i1 %21 to i32, !dbg !279
  %23 = sext i32 %22 to i64, !dbg !279
  %24 = icmp ne i64 %23, 0, !dbg !279
  br i1 %24, label %25, label %26, !dbg !282

25:                                               ; preds = %20
  store i32 -4, ptr %3, align 4, !dbg !283
  br label %51, !dbg !283

26:                                               ; preds = %20
  br label %27, !dbg !284

27:                                               ; preds = %26
  %28 = load i32, ptr %6, align 4, !dbg !285
  %29 = icmp sge i32 %28, 0, !dbg !285
  %30 = xor i1 %29, true, !dbg !285
  %31 = zext i1 %30 to i32, !dbg !285
  %32 = sext i32 %31 to i64, !dbg !285
  %33 = icmp ne i64 %32, 0, !dbg !285
  br i1 %33, label %34, label %42, !dbg !288

34:                                               ; preds = %27
  %35 = load ptr, ptr @stderr, align 8, !dbg !289
  %36 = call ptr @__errno_location() #7, !dbg !289
  %37 = load i32, ptr %36, align 4, !dbg !289
  %38 = call ptr @nn_err_strerror(i32 noundef %37), !dbg !289
  %39 = call ptr @__errno_location() #7, !dbg !289
  %40 = load i32, ptr %39, align 4, !dbg !289
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str, ptr noundef %38, i32 noundef %40, ptr noundef @.str.4, i32 noundef 51), !dbg !289
  call void @nn_err_abort() #8, !dbg !289
  unreachable, !dbg !289

42:                                               ; preds = %27
  br label %43, !dbg !288

43:                                               ; preds = %42
  %44 = load i32, ptr %6, align 4, !dbg !291
  %45 = icmp eq i32 %44, 0, !dbg !291
  %46 = zext i1 %45 to i32, !dbg !291
  %47 = sext i32 %46 to i64, !dbg !291
  %48 = icmp ne i64 %47, 0, !dbg !291
  br i1 %48, label %49, label %50, !dbg !293

49:                                               ; preds = %43
  store i32 -110, ptr %3, align 4, !dbg !294
  br label %51, !dbg !294

50:                                               ; preds = %43
  store i32 0, ptr %3, align 4, !dbg !295
  br label %51, !dbg !295

51:                                               ; preds = %50, %49, %25
  %52 = load i32, ptr %3, align 4, !dbg !296
  ret i32 %52, !dbg !296
}

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/efd_pipe.inc", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "39ed332c39a5ae6ba9371cee41acc0a5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 25)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 12)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !24, line: 51, type: !25, isLocal: true, isDefinition: true)
!24 = !DIFile(filename: "./src/utils/efd.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "01ea2036f44bc2cdde98f8448adff2f9")
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 18)
!28 = distinct !DICompileUnit(language: DW_LANG_C11, file: !29, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !30, globals: !32, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "src/utils/efd.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "01ea2036f44bc2cdde98f8448adff2f9")
!30 = !{!31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!0, !7, !12, !17, !22}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 16.0.0"}
!41 = distinct !DISubprogram(name: "nn_efd_init", scope: !2, file: !2, line: 32, type: !42, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !50)
!42 = !DISubroutineType(types: !43)
!43 = !{!31, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !46, line: 25, size: 64, elements: !47)
!46 = !DIFile(filename: "./src/utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !45, file: !46, line: 26, baseType: !31, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !45, file: !46, line: 27, baseType: !31, size: 32, offset: 32)
!50 = !{}
!51 = !DILocalVariable(name: "self", arg: 1, scope: !41, file: !2, line: 32, type: !44)
!52 = !DILocation(line: 32, column: 33, scope: !41)
!53 = !DILocalVariable(name: "rc", scope: !41, file: !2, line: 34, type: !31)
!54 = !DILocation(line: 34, column: 9, scope: !41)
!55 = !DILocalVariable(name: "flags", scope: !41, file: !2, line: 35, type: !31)
!56 = !DILocation(line: 35, column: 9, scope: !41)
!57 = !DILocalVariable(name: "p", scope: !41, file: !2, line: 36, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 2)
!61 = !DILocation(line: 36, column: 9, scope: !41)
!62 = !DILocation(line: 41, column: 16, scope: !41)
!63 = !DILocation(line: 41, column: 10, scope: !41)
!64 = !DILocation(line: 41, column: 8, scope: !41)
!65 = !DILocation(line: 43, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !41, file: !2, line: 43, column: 9)
!67 = !DILocation(line: 43, column: 12, scope: !66)
!68 = !DILocation(line: 43, column: 17, scope: !66)
!69 = !DILocation(line: 43, column: 21, scope: !66)
!70 = !DILocation(line: 43, column: 27, scope: !66)
!71 = !DILocation(line: 43, column: 37, scope: !66)
!72 = !DILocation(line: 43, column: 40, scope: !66)
!73 = !DILocation(line: 43, column: 46, scope: !66)
!74 = !DILocation(line: 43, column: 9, scope: !41)
!75 = !DILocation(line: 44, column: 9, scope: !66)
!76 = !DILocation(line: 45, column: 5, scope: !41)
!77 = !DILocation(line: 45, column: 5, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 45, column: 5)
!79 = distinct !DILexicalBlock(scope: !41, file: !2, line: 45, column: 5)
!80 = !DILocation(line: 45, column: 5, scope: !79)
!81 = !DILocation(line: 45, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !2, line: 45, column: 5)
!83 = !DILocation(line: 46, column: 15, scope: !41)
!84 = !DILocation(line: 46, column: 5, scope: !41)
!85 = !DILocation(line: 46, column: 11, scope: !41)
!86 = !DILocation(line: 46, column: 13, scope: !41)
!87 = !DILocation(line: 47, column: 15, scope: !41)
!88 = !DILocation(line: 47, column: 5, scope: !41)
!89 = !DILocation(line: 47, column: 11, scope: !41)
!90 = !DILocation(line: 47, column: 13, scope: !41)
!91 = !DILocation(line: 50, column: 17, scope: !41)
!92 = !DILocation(line: 50, column: 23, scope: !41)
!93 = !DILocation(line: 50, column: 10, scope: !41)
!94 = !DILocation(line: 50, column: 8, scope: !41)
!95 = !DILocation(line: 51, column: 5, scope: !41)
!96 = !DILocation(line: 51, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 51, column: 5)
!98 = distinct !DILexicalBlock(scope: !41, file: !2, line: 51, column: 5)
!99 = !DILocation(line: 51, column: 5, scope: !98)
!100 = !DILocation(line: 51, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !2, line: 51, column: 5)
!102 = !DILocation(line: 52, column: 17, scope: !41)
!103 = !DILocation(line: 52, column: 23, scope: !41)
!104 = !DILocation(line: 52, column: 10, scope: !41)
!105 = !DILocation(line: 52, column: 8, scope: !41)
!106 = !DILocation(line: 53, column: 5, scope: !41)
!107 = !DILocation(line: 53, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 53, column: 5)
!109 = distinct !DILexicalBlock(scope: !41, file: !2, line: 53, column: 5)
!110 = !DILocation(line: 53, column: 5, scope: !109)
!111 = !DILocation(line: 53, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !2, line: 53, column: 5)
!113 = !DILocation(line: 57, column: 20, scope: !41)
!114 = !DILocation(line: 57, column: 26, scope: !41)
!115 = !DILocation(line: 57, column: 13, scope: !41)
!116 = !DILocation(line: 57, column: 11, scope: !41)
!117 = !DILocation(line: 58, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !41, file: !2, line: 58, column: 6)
!119 = !DILocation(line: 58, column: 12, scope: !118)
!120 = !DILocation(line: 58, column: 6, scope: !41)
!121 = !DILocation(line: 59, column: 15, scope: !118)
!122 = !DILocation(line: 59, column: 9, scope: !118)
!123 = !DILocation(line: 60, column: 14, scope: !41)
!124 = !DILocation(line: 60, column: 20, scope: !41)
!125 = !DILocation(line: 60, column: 32, scope: !41)
!126 = !DILocation(line: 60, column: 38, scope: !41)
!127 = !DILocation(line: 60, column: 7, scope: !41)
!128 = !DILocation(line: 60, column: 5, scope: !41)
!129 = !DILocation(line: 61, column: 5, scope: !41)
!130 = !DILocation(line: 61, column: 5, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 61, column: 5)
!132 = distinct !DILexicalBlock(scope: !41, file: !2, line: 61, column: 5)
!133 = !DILocation(line: 61, column: 5, scope: !132)
!134 = !DILocation(line: 61, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !2, line: 61, column: 5)
!136 = !DILocation(line: 64, column: 5, scope: !41)
!137 = !DILocation(line: 65, column: 1, scope: !41)
!138 = distinct !DISubprogram(name: "nn_efd_term", scope: !2, file: !2, line: 67, type: !139, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !50)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !44}
!141 = !DILocalVariable(name: "self", arg: 1, scope: !138, file: !2, line: 67, type: !44)
!142 = !DILocation(line: 67, column: 34, scope: !138)
!143 = !DILocalVariable(name: "rc", scope: !138, file: !2, line: 69, type: !31)
!144 = !DILocation(line: 69, column: 9, scope: !138)
!145 = !DILocation(line: 71, column: 17, scope: !138)
!146 = !DILocation(line: 71, column: 23, scope: !138)
!147 = !DILocation(line: 71, column: 10, scope: !138)
!148 = !DILocation(line: 71, column: 8, scope: !138)
!149 = !DILocation(line: 72, column: 5, scope: !138)
!150 = !DILocation(line: 72, column: 5, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 72, column: 5)
!152 = distinct !DILexicalBlock(scope: !138, file: !2, line: 72, column: 5)
!153 = !DILocation(line: 72, column: 5, scope: !152)
!154 = !DILocation(line: 72, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !2, line: 72, column: 5)
!156 = !DILocation(line: 73, column: 17, scope: !138)
!157 = !DILocation(line: 73, column: 23, scope: !138)
!158 = !DILocation(line: 73, column: 10, scope: !138)
!159 = !DILocation(line: 73, column: 8, scope: !138)
!160 = !DILocation(line: 74, column: 5, scope: !138)
!161 = !DILocation(line: 74, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 74, column: 5)
!163 = distinct !DILexicalBlock(scope: !138, file: !2, line: 74, column: 5)
!164 = !DILocation(line: 74, column: 5, scope: !163)
!165 = !DILocation(line: 74, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !2, line: 74, column: 5)
!167 = !DILocation(line: 75, column: 1, scope: !138)
!168 = distinct !DISubprogram(name: "nn_efd_getfd", scope: !2, file: !2, line: 77, type: !169, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !50)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !44}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fd", file: !46, line: 23, baseType: !31)
!172 = !DILocalVariable(name: "self", arg: 1, scope: !168, file: !2, line: 77, type: !44)
!173 = !DILocation(line: 77, column: 36, scope: !168)
!174 = !DILocation(line: 79, column: 12, scope: !168)
!175 = !DILocation(line: 79, column: 18, scope: !168)
!176 = !DILocation(line: 79, column: 5, scope: !168)
!177 = distinct !DISubprogram(name: "nn_efd_signal", scope: !2, file: !2, line: 82, type: !139, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !50)
!178 = !DILocalVariable(name: "self", arg: 1, scope: !177, file: !2, line: 82, type: !44)
!179 = !DILocation(line: 82, column: 36, scope: !177)
!180 = !DILocalVariable(name: "nbytes", scope: !177, file: !2, line: 84, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !182, line: 77, baseType: !183)
!182 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !184, line: 194, baseType: !185)
!184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!185 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!186 = !DILocation(line: 84, column: 13, scope: !177)
!187 = !DILocalVariable(name: "c", scope: !177, file: !2, line: 85, type: !4)
!188 = !DILocation(line: 85, column: 10, scope: !177)
!189 = !DILocation(line: 87, column: 21, scope: !177)
!190 = !DILocation(line: 87, column: 27, scope: !177)
!191 = !DILocation(line: 87, column: 14, scope: !177)
!192 = !DILocation(line: 87, column: 12, scope: !177)
!193 = !DILocation(line: 88, column: 5, scope: !177)
!194 = !DILocation(line: 88, column: 5, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 88, column: 5)
!196 = distinct !DILexicalBlock(scope: !177, file: !2, line: 88, column: 5)
!197 = !DILocation(line: 88, column: 5, scope: !196)
!198 = !DILocation(line: 88, column: 5, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !2, line: 88, column: 5)
!200 = !DILocation(line: 89, column: 5, scope: !177)
!201 = !DILocation(line: 89, column: 5, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 89, column: 5)
!203 = distinct !DILexicalBlock(scope: !177, file: !2, line: 89, column: 5)
!204 = !DILocation(line: 89, column: 5, scope: !203)
!205 = !DILocation(line: 89, column: 5, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !2, line: 89, column: 5)
!207 = !DILocation(line: 90, column: 1, scope: !177)
!208 = distinct !DISubprogram(name: "nn_efd_unsignal", scope: !2, file: !2, line: 92, type: !139, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !50)
!209 = !DILocalVariable(name: "self", arg: 1, scope: !208, file: !2, line: 92, type: !44)
!210 = !DILocation(line: 92, column: 38, scope: !208)
!211 = !DILocalVariable(name: "nbytes", scope: !208, file: !2, line: 94, type: !181)
!212 = !DILocation(line: 94, column: 13, scope: !208)
!213 = !DILocalVariable(name: "buf", scope: !208, file: !2, line: 95, type: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !219)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !216, line: 24, baseType: !217)
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !184, line: 38, baseType: !218)
!218 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!219 = !{!220}
!220 = !DISubrange(count: 16)
!221 = !DILocation(line: 95, column: 13, scope: !208)
!222 = !DILocation(line: 97, column: 5, scope: !208)
!223 = !DILocation(line: 98, column: 24, scope: !224)
!224 = distinct !DILexicalBlock(scope: !208, file: !2, line: 97, column: 15)
!225 = !DILocation(line: 98, column: 30, scope: !224)
!226 = !DILocation(line: 98, column: 33, scope: !224)
!227 = !DILocation(line: 98, column: 18, scope: !224)
!228 = !DILocation(line: 98, column: 16, scope: !224)
!229 = !DILocation(line: 99, column: 13, scope: !230)
!230 = distinct !DILexicalBlock(scope: !224, file: !2, line: 99, column: 13)
!231 = !DILocation(line: 99, column: 20, scope: !230)
!232 = !DILocation(line: 99, column: 24, scope: !230)
!233 = !DILocation(line: 99, column: 27, scope: !230)
!234 = !DILocation(line: 99, column: 33, scope: !230)
!235 = !DILocation(line: 99, column: 13, scope: !224)
!236 = !DILocation(line: 100, column: 20, scope: !230)
!237 = !DILocation(line: 100, column: 13, scope: !230)
!238 = !DILocation(line: 101, column: 9, scope: !224)
!239 = !DILocation(line: 101, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !2, line: 101, column: 9)
!241 = distinct !DILexicalBlock(scope: !224, file: !2, line: 101, column: 9)
!242 = !DILocation(line: 101, column: 9, scope: !241)
!243 = !DILocation(line: 101, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !2, line: 101, column: 9)
!245 = !DILocation(line: 102, column: 13, scope: !246)
!246 = distinct !DILexicalBlock(scope: !224, file: !2, line: 102, column: 13)
!247 = !DILocation(line: 102, column: 13, scope: !224)
!248 = !DILocation(line: 103, column: 13, scope: !246)
!249 = distinct !{!249, !222, !250}
!250 = !DILocation(line: 104, column: 5, scope: !208)
!251 = !DILocation(line: 105, column: 1, scope: !208)
!252 = distinct !DISubprogram(name: "nn_efd_wait", scope: !24, file: !24, line: 41, type: !253, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !50)
!253 = !DISubroutineType(types: !254)
!254 = !{!31, !44, !31}
!255 = !DILocalVariable(name: "self", arg: 1, scope: !252, file: !24, line: 41, type: !44)
!256 = !DILocation(line: 41, column: 33, scope: !252)
!257 = !DILocalVariable(name: "timeout", arg: 2, scope: !252, file: !24, line: 41, type: !31)
!258 = !DILocation(line: 41, column: 43, scope: !252)
!259 = !DILocalVariable(name: "rc", scope: !252, file: !24, line: 43, type: !31)
!260 = !DILocation(line: 43, column: 9, scope: !252)
!261 = !DILocalVariable(name: "pfd", scope: !252, file: !24, line: 44, type: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !263, line: 36, size: 64, elements: !264)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!264 = !{!265, !266, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !262, file: !263, line: 38, baseType: !31, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !262, file: !263, line: 39, baseType: !267, size: 16, offset: 32)
!267 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !262, file: !263, line: 40, baseType: !267, size: 16, offset: 48)
!269 = !DILocation(line: 44, column: 19, scope: !252)
!270 = !DILocation(line: 46, column: 28, scope: !252)
!271 = !DILocation(line: 46, column: 14, scope: !252)
!272 = !DILocation(line: 46, column: 9, scope: !252)
!273 = !DILocation(line: 46, column: 12, scope: !252)
!274 = !DILocation(line: 47, column: 9, scope: !252)
!275 = !DILocation(line: 47, column: 16, scope: !252)
!276 = !DILocation(line: 48, column: 25, scope: !252)
!277 = !DILocation(line: 48, column: 10, scope: !252)
!278 = !DILocation(line: 48, column: 8, scope: !252)
!279 = !DILocation(line: 49, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !252, file: !24, line: 49, column: 9)
!281 = !DILocation(line: 0, scope: !280)
!282 = !DILocation(line: 49, column: 9, scope: !252)
!283 = !DILocation(line: 50, column: 9, scope: !280)
!284 = !DILocation(line: 51, column: 5, scope: !252)
!285 = !DILocation(line: 51, column: 5, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !24, line: 51, column: 5)
!287 = distinct !DILexicalBlock(scope: !252, file: !24, line: 51, column: 5)
!288 = !DILocation(line: 51, column: 5, scope: !287)
!289 = !DILocation(line: 51, column: 5, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !24, line: 51, column: 5)
!291 = !DILocation(line: 52, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !252, file: !24, line: 52, column: 9)
!293 = !DILocation(line: 52, column: 9, scope: !252)
!294 = !DILocation(line: 53, column: 9, scope: !292)
!295 = !DILocation(line: 54, column: 5, scope: !252)
!296 = !DILocation(line: 55, column: 1, scope: !252)
