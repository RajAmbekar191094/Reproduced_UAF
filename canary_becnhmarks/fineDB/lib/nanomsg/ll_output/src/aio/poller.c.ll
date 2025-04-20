; ModuleID = './src/aio/poller.c'
source_filename = "./src/aio/poller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_poller = type { i32, i32, i32, ptr, ptr, i32 }
%struct.pollfd = type { i32, i16, i16 }
%struct.nn_poller_hndl = type { i32 }
%struct.nn_hndls_item = type { ptr, i32, i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [26 x i8] c"./src/aio/poller_poll.inc\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_poller_init(ptr noundef %0) #0 !dbg !30 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !62, metadata !DIExpression()), !dbg !63
  %3 = load ptr, ptr %2, align 8, !dbg !64
  %4 = getelementptr inbounds %struct.nn_poller, ptr %3, i32 0, i32 0, !dbg !65
  store i32 0, ptr %4, align 8, !dbg !66
  %5 = load ptr, ptr %2, align 8, !dbg !67
  %6 = getelementptr inbounds %struct.nn_poller, ptr %5, i32 0, i32 1, !dbg !68
  store i32 0, ptr %6, align 4, !dbg !69
  %7 = load ptr, ptr %2, align 8, !dbg !70
  %8 = getelementptr inbounds %struct.nn_poller, ptr %7, i32 0, i32 2, !dbg !71
  store i32 16, ptr %8, align 8, !dbg !72
  %9 = call ptr @nn_alloc_(i64 noundef 128), !dbg !73
  %10 = load ptr, ptr %2, align 8, !dbg !74
  %11 = getelementptr inbounds %struct.nn_poller, ptr %10, i32 0, i32 3, !dbg !75
  store ptr %9, ptr %11, align 8, !dbg !76
  br label %12, !dbg !77

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !dbg !78
  %14 = getelementptr inbounds %struct.nn_poller, ptr %13, i32 0, i32 3, !dbg !78
  %15 = load ptr, ptr %14, align 8, !dbg !78
  %16 = icmp ne ptr %15, null, !dbg !78
  %17 = xor i1 %16, true, !dbg !78
  %18 = zext i1 %17 to i32, !dbg !78
  %19 = sext i32 %18 to i64, !dbg !78
  %20 = icmp ne i64 %19, 0, !dbg !78
  br i1 %20, label %21, label %24, !dbg !81

21:                                               ; preds = %12
  %22 = load ptr, ptr @stderr, align 8, !dbg !82
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 36), !dbg !82
  call void @nn_err_abort() #6, !dbg !82
  unreachable, !dbg !82

24:                                               ; preds = %12
  br label %25, !dbg !81

25:                                               ; preds = %24
  %26 = call ptr @nn_alloc_(i64 noundef 256), !dbg !84
  %27 = load ptr, ptr %2, align 8, !dbg !85
  %28 = getelementptr inbounds %struct.nn_poller, ptr %27, i32 0, i32 4, !dbg !86
  store ptr %26, ptr %28, align 8, !dbg !87
  br label %29, !dbg !88

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 8, !dbg !89
  %31 = getelementptr inbounds %struct.nn_poller, ptr %30, i32 0, i32 4, !dbg !89
  %32 = load ptr, ptr %31, align 8, !dbg !89
  %33 = icmp ne ptr %32, null, !dbg !89
  %34 = xor i1 %33, true, !dbg !89
  %35 = zext i1 %34 to i32, !dbg !89
  %36 = sext i32 %35 to i64, !dbg !89
  %37 = icmp ne i64 %36, 0, !dbg !89
  br i1 %37, label %38, label %41, !dbg !92

38:                                               ; preds = %29
  %39 = load ptr, ptr @stderr, align 8, !dbg !93
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 40), !dbg !93
  call void @nn_err_abort() #6, !dbg !93
  unreachable, !dbg !93

41:                                               ; preds = %29
  br label %42, !dbg !92

42:                                               ; preds = %41
  %43 = load ptr, ptr %2, align 8, !dbg !95
  %44 = getelementptr inbounds %struct.nn_poller, ptr %43, i32 0, i32 5, !dbg !96
  store i32 -1, ptr %44, align 8, !dbg !97
  ret i32 0, !dbg !98
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_poller_term(ptr noundef %0) #0 !dbg !99 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !102, metadata !DIExpression()), !dbg !103
  %3 = load ptr, ptr %2, align 8, !dbg !104
  %4 = getelementptr inbounds %struct.nn_poller, ptr %3, i32 0, i32 3, !dbg !105
  %5 = load ptr, ptr %4, align 8, !dbg !105
  call void @nn_free(ptr noundef %5), !dbg !106
  %6 = load ptr, ptr %2, align 8, !dbg !107
  %7 = getelementptr inbounds %struct.nn_poller, ptr %6, i32 0, i32 4, !dbg !108
  %8 = load ptr, ptr %7, align 8, !dbg !108
  call void @nn_free(ptr noundef %8), !dbg !109
  ret void, !dbg !110
}

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_poller_add(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !111 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !116, metadata !DIExpression()), !dbg !117
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata ptr %7, metadata !120, metadata !DIExpression()), !dbg !121
  %8 = load ptr, ptr %4, align 8, !dbg !122
  %9 = getelementptr inbounds %struct.nn_poller, ptr %8, i32 0, i32 0, !dbg !122
  %10 = load i32, ptr %9, align 8, !dbg !122
  %11 = load ptr, ptr %4, align 8, !dbg !122
  %12 = getelementptr inbounds %struct.nn_poller, ptr %11, i32 0, i32 2, !dbg !122
  %13 = load i32, ptr %12, align 8, !dbg !122
  %14 = icmp sge i32 %10, %13, !dbg !122
  %15 = zext i1 %14 to i32, !dbg !122
  %16 = sext i32 %15 to i64, !dbg !122
  %17 = icmp ne i64 %16, 0, !dbg !122
  br i1 %17, label %18, label %73, !dbg !124

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8, !dbg !125
  %20 = getelementptr inbounds %struct.nn_poller, ptr %19, i32 0, i32 2, !dbg !127
  %21 = load i32, ptr %20, align 8, !dbg !128
  %22 = mul nsw i32 %21, 2, !dbg !128
  store i32 %22, ptr %20, align 8, !dbg !128
  %23 = load ptr, ptr %4, align 8, !dbg !129
  %24 = getelementptr inbounds %struct.nn_poller, ptr %23, i32 0, i32 3, !dbg !130
  %25 = load ptr, ptr %24, align 8, !dbg !130
  %26 = load ptr, ptr %4, align 8, !dbg !131
  %27 = getelementptr inbounds %struct.nn_poller, ptr %26, i32 0, i32 2, !dbg !132
  %28 = load i32, ptr %27, align 8, !dbg !132
  %29 = sext i32 %28 to i64, !dbg !131
  %30 = mul i64 8, %29, !dbg !133
  %31 = call ptr @nn_realloc(ptr noundef %25, i64 noundef %30), !dbg !134
  %32 = load ptr, ptr %4, align 8, !dbg !135
  %33 = getelementptr inbounds %struct.nn_poller, ptr %32, i32 0, i32 3, !dbg !136
  store ptr %31, ptr %33, align 8, !dbg !137
  br label %34, !dbg !138

34:                                               ; preds = %18
  %35 = load ptr, ptr %4, align 8, !dbg !139
  %36 = getelementptr inbounds %struct.nn_poller, ptr %35, i32 0, i32 3, !dbg !139
  %37 = load ptr, ptr %36, align 8, !dbg !139
  %38 = icmp ne ptr %37, null, !dbg !139
  %39 = xor i1 %38, true, !dbg !139
  %40 = zext i1 %39 to i32, !dbg !139
  %41 = sext i32 %40 to i64, !dbg !139
  %42 = icmp ne i64 %41, 0, !dbg !139
  br i1 %42, label %43, label %46, !dbg !142

43:                                               ; preds = %34
  %44 = load ptr, ptr @stderr, align 8, !dbg !143
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 62), !dbg !143
  call void @nn_err_abort() #6, !dbg !143
  unreachable, !dbg !143

46:                                               ; preds = %34
  br label %47, !dbg !142

47:                                               ; preds = %46
  %48 = load ptr, ptr %4, align 8, !dbg !145
  %49 = getelementptr inbounds %struct.nn_poller, ptr %48, i32 0, i32 4, !dbg !146
  %50 = load ptr, ptr %49, align 8, !dbg !146
  %51 = load ptr, ptr %4, align 8, !dbg !147
  %52 = getelementptr inbounds %struct.nn_poller, ptr %51, i32 0, i32 2, !dbg !148
  %53 = load i32, ptr %52, align 8, !dbg !148
  %54 = sext i32 %53 to i64, !dbg !147
  %55 = mul i64 16, %54, !dbg !149
  %56 = call ptr @nn_realloc(ptr noundef %50, i64 noundef %55), !dbg !150
  %57 = load ptr, ptr %4, align 8, !dbg !151
  %58 = getelementptr inbounds %struct.nn_poller, ptr %57, i32 0, i32 4, !dbg !152
  store ptr %56, ptr %58, align 8, !dbg !153
  br label %59, !dbg !154

59:                                               ; preds = %47
  %60 = load ptr, ptr %4, align 8, !dbg !155
  %61 = getelementptr inbounds %struct.nn_poller, ptr %60, i32 0, i32 4, !dbg !155
  %62 = load ptr, ptr %61, align 8, !dbg !155
  %63 = icmp ne ptr %62, null, !dbg !155
  %64 = xor i1 %63, true, !dbg !155
  %65 = zext i1 %64 to i32, !dbg !155
  %66 = sext i32 %65 to i64, !dbg !155
  %67 = icmp ne i64 %66, 0, !dbg !155
  br i1 %67, label %68, label %71, !dbg !158

68:                                               ; preds = %59
  %69 = load ptr, ptr @stderr, align 8, !dbg !159
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 65), !dbg !159
  call void @nn_err_abort() #6, !dbg !159
  unreachable, !dbg !159

71:                                               ; preds = %59
  br label %72, !dbg !158

72:                                               ; preds = %71
  br label %73, !dbg !161

73:                                               ; preds = %72, %3
  %74 = load i32, ptr %5, align 4, !dbg !162
  %75 = load ptr, ptr %4, align 8, !dbg !163
  %76 = getelementptr inbounds %struct.nn_poller, ptr %75, i32 0, i32 3, !dbg !164
  %77 = load ptr, ptr %76, align 8, !dbg !164
  %78 = load ptr, ptr %4, align 8, !dbg !165
  %79 = getelementptr inbounds %struct.nn_poller, ptr %78, i32 0, i32 0, !dbg !166
  %80 = load i32, ptr %79, align 8, !dbg !166
  %81 = sext i32 %80 to i64, !dbg !163
  %82 = getelementptr inbounds %struct.pollfd, ptr %77, i64 %81, !dbg !163
  %83 = getelementptr inbounds %struct.pollfd, ptr %82, i32 0, i32 0, !dbg !167
  store i32 %74, ptr %83, align 4, !dbg !168
  %84 = load ptr, ptr %4, align 8, !dbg !169
  %85 = getelementptr inbounds %struct.nn_poller, ptr %84, i32 0, i32 3, !dbg !170
  %86 = load ptr, ptr %85, align 8, !dbg !170
  %87 = load ptr, ptr %4, align 8, !dbg !171
  %88 = getelementptr inbounds %struct.nn_poller, ptr %87, i32 0, i32 0, !dbg !172
  %89 = load i32, ptr %88, align 8, !dbg !172
  %90 = sext i32 %89 to i64, !dbg !169
  %91 = getelementptr inbounds %struct.pollfd, ptr %86, i64 %90, !dbg !169
  %92 = getelementptr inbounds %struct.pollfd, ptr %91, i32 0, i32 1, !dbg !173
  store i16 0, ptr %92, align 4, !dbg !174
  %93 = load ptr, ptr %4, align 8, !dbg !175
  %94 = getelementptr inbounds %struct.nn_poller, ptr %93, i32 0, i32 3, !dbg !176
  %95 = load ptr, ptr %94, align 8, !dbg !176
  %96 = load ptr, ptr %4, align 8, !dbg !177
  %97 = getelementptr inbounds %struct.nn_poller, ptr %96, i32 0, i32 0, !dbg !178
  %98 = load i32, ptr %97, align 8, !dbg !178
  %99 = sext i32 %98 to i64, !dbg !175
  %100 = getelementptr inbounds %struct.pollfd, ptr %95, i64 %99, !dbg !175
  %101 = getelementptr inbounds %struct.pollfd, ptr %100, i32 0, i32 2, !dbg !179
  store i16 0, ptr %101, align 2, !dbg !180
  %102 = load ptr, ptr %4, align 8, !dbg !181
  %103 = getelementptr inbounds %struct.nn_poller, ptr %102, i32 0, i32 0, !dbg !182
  %104 = load i32, ptr %103, align 8, !dbg !182
  %105 = load ptr, ptr %6, align 8, !dbg !183
  %106 = getelementptr inbounds %struct.nn_poller_hndl, ptr %105, i32 0, i32 0, !dbg !184
  store i32 %104, ptr %106, align 4, !dbg !185
  %107 = load ptr, ptr %6, align 8, !dbg !186
  %108 = load ptr, ptr %4, align 8, !dbg !187
  %109 = getelementptr inbounds %struct.nn_poller, ptr %108, i32 0, i32 4, !dbg !188
  %110 = load ptr, ptr %109, align 8, !dbg !188
  %111 = load ptr, ptr %4, align 8, !dbg !189
  %112 = getelementptr inbounds %struct.nn_poller, ptr %111, i32 0, i32 0, !dbg !190
  %113 = load i32, ptr %112, align 8, !dbg !190
  %114 = sext i32 %113 to i64, !dbg !187
  %115 = getelementptr inbounds %struct.nn_hndls_item, ptr %110, i64 %114, !dbg !187
  %116 = getelementptr inbounds %struct.nn_hndls_item, ptr %115, i32 0, i32 0, !dbg !191
  store ptr %107, ptr %116, align 8, !dbg !192
  %117 = load ptr, ptr %4, align 8, !dbg !193
  %118 = getelementptr inbounds %struct.nn_poller, ptr %117, i32 0, i32 0, !dbg !194
  %119 = load i32, ptr %118, align 8, !dbg !195
  %120 = add nsw i32 %119, 1, !dbg !195
  store i32 %120, ptr %118, align 8, !dbg !195
  ret void, !dbg !196
}

declare ptr @nn_realloc(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_poller_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !197 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !200, metadata !DIExpression()), !dbg !201
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !202, metadata !DIExpression()), !dbg !203
  %5 = load ptr, ptr %3, align 8, !dbg !204
  %6 = getelementptr inbounds %struct.nn_poller, ptr %5, i32 0, i32 3, !dbg !205
  %7 = load ptr, ptr %6, align 8, !dbg !205
  %8 = load ptr, ptr %4, align 8, !dbg !206
  %9 = getelementptr inbounds %struct.nn_poller_hndl, ptr %8, i32 0, i32 0, !dbg !207
  %10 = load i32, ptr %9, align 4, !dbg !207
  %11 = sext i32 %10 to i64, !dbg !204
  %12 = getelementptr inbounds %struct.pollfd, ptr %7, i64 %11, !dbg !204
  %13 = getelementptr inbounds %struct.pollfd, ptr %12, i32 0, i32 2, !dbg !208
  store i16 0, ptr %13, align 2, !dbg !209
  %14 = load ptr, ptr %3, align 8, !dbg !210
  %15 = getelementptr inbounds %struct.nn_poller, ptr %14, i32 0, i32 5, !dbg !212
  %16 = load i32, ptr %15, align 8, !dbg !212
  %17 = icmp ne i32 %16, -1, !dbg !213
  br i1 %17, label %18, label %31, !dbg !214

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !215
  %20 = getelementptr inbounds %struct.nn_poller_hndl, ptr %19, i32 0, i32 0, !dbg !216
  %21 = load i32, ptr %20, align 4, !dbg !216
  %22 = load ptr, ptr %3, align 8, !dbg !217
  %23 = getelementptr inbounds %struct.nn_poller, ptr %22, i32 0, i32 4, !dbg !218
  %24 = load ptr, ptr %23, align 8, !dbg !218
  %25 = load ptr, ptr %3, align 8, !dbg !219
  %26 = getelementptr inbounds %struct.nn_poller, ptr %25, i32 0, i32 5, !dbg !220
  %27 = load i32, ptr %26, align 8, !dbg !220
  %28 = sext i32 %27 to i64, !dbg !217
  %29 = getelementptr inbounds %struct.nn_hndls_item, ptr %24, i64 %28, !dbg !217
  %30 = getelementptr inbounds %struct.nn_hndls_item, ptr %29, i32 0, i32 1, !dbg !221
  store i32 %21, ptr %30, align 8, !dbg !222
  br label %31, !dbg !217

31:                                               ; preds = %18, %2
  %32 = load ptr, ptr %3, align 8, !dbg !223
  %33 = getelementptr inbounds %struct.nn_poller, ptr %32, i32 0, i32 4, !dbg !224
  %34 = load ptr, ptr %33, align 8, !dbg !224
  %35 = load ptr, ptr %4, align 8, !dbg !225
  %36 = getelementptr inbounds %struct.nn_poller_hndl, ptr %35, i32 0, i32 0, !dbg !226
  %37 = load i32, ptr %36, align 4, !dbg !226
  %38 = sext i32 %37 to i64, !dbg !223
  %39 = getelementptr inbounds %struct.nn_hndls_item, ptr %34, i64 %38, !dbg !223
  %40 = getelementptr inbounds %struct.nn_hndls_item, ptr %39, i32 0, i32 0, !dbg !227
  store ptr null, ptr %40, align 8, !dbg !228
  %41 = load ptr, ptr %3, align 8, !dbg !229
  %42 = getelementptr inbounds %struct.nn_poller, ptr %41, i32 0, i32 4, !dbg !230
  %43 = load ptr, ptr %42, align 8, !dbg !230
  %44 = load ptr, ptr %4, align 8, !dbg !231
  %45 = getelementptr inbounds %struct.nn_poller_hndl, ptr %44, i32 0, i32 0, !dbg !232
  %46 = load i32, ptr %45, align 4, !dbg !232
  %47 = sext i32 %46 to i64, !dbg !229
  %48 = getelementptr inbounds %struct.nn_hndls_item, ptr %43, i64 %47, !dbg !229
  %49 = getelementptr inbounds %struct.nn_hndls_item, ptr %48, i32 0, i32 1, !dbg !233
  store i32 -1, ptr %49, align 8, !dbg !234
  %50 = load ptr, ptr %3, align 8, !dbg !235
  %51 = getelementptr inbounds %struct.nn_poller, ptr %50, i32 0, i32 5, !dbg !236
  %52 = load i32, ptr %51, align 8, !dbg !236
  %53 = load ptr, ptr %3, align 8, !dbg !237
  %54 = getelementptr inbounds %struct.nn_poller, ptr %53, i32 0, i32 4, !dbg !238
  %55 = load ptr, ptr %54, align 8, !dbg !238
  %56 = load ptr, ptr %4, align 8, !dbg !239
  %57 = getelementptr inbounds %struct.nn_poller_hndl, ptr %56, i32 0, i32 0, !dbg !240
  %58 = load i32, ptr %57, align 4, !dbg !240
  %59 = sext i32 %58 to i64, !dbg !237
  %60 = getelementptr inbounds %struct.nn_hndls_item, ptr %55, i64 %59, !dbg !237
  %61 = getelementptr inbounds %struct.nn_hndls_item, ptr %60, i32 0, i32 2, !dbg !241
  store i32 %52, ptr %61, align 4, !dbg !242
  %62 = load ptr, ptr %4, align 8, !dbg !243
  %63 = getelementptr inbounds %struct.nn_poller_hndl, ptr %62, i32 0, i32 0, !dbg !244
  %64 = load i32, ptr %63, align 4, !dbg !244
  %65 = load ptr, ptr %3, align 8, !dbg !245
  %66 = getelementptr inbounds %struct.nn_poller, ptr %65, i32 0, i32 5, !dbg !246
  store i32 %64, ptr %66, align 8, !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_poller_set_in(ptr noundef %0, ptr noundef %1) #0 !dbg !249 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !250, metadata !DIExpression()), !dbg !251
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !252, metadata !DIExpression()), !dbg !253
  %5 = load ptr, ptr %3, align 8, !dbg !254
  %6 = getelementptr inbounds %struct.nn_poller, ptr %5, i32 0, i32 3, !dbg !255
  %7 = load ptr, ptr %6, align 8, !dbg !255
  %8 = load ptr, ptr %4, align 8, !dbg !256
  %9 = getelementptr inbounds %struct.nn_poller_hndl, ptr %8, i32 0, i32 0, !dbg !257
  %10 = load i32, ptr %9, align 4, !dbg !257
  %11 = sext i32 %10 to i64, !dbg !254
  %12 = getelementptr inbounds %struct.pollfd, ptr %7, i64 %11, !dbg !254
  %13 = getelementptr inbounds %struct.pollfd, ptr %12, i32 0, i32 1, !dbg !258
  %14 = load i16, ptr %13, align 4, !dbg !259
  %15 = sext i16 %14 to i32, !dbg !259
  %16 = or i32 %15, 1, !dbg !259
  %17 = trunc i32 %16 to i16, !dbg !259
  store i16 %17, ptr %13, align 4, !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_poller_reset_in(ptr noundef %0, ptr noundef %1) #0 !dbg !261 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !262, metadata !DIExpression()), !dbg !263
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !264, metadata !DIExpression()), !dbg !265
  %5 = load ptr, ptr %3, align 8, !dbg !266
  %6 = getelementptr inbounds %struct.nn_poller, ptr %5, i32 0, i32 3, !dbg !267
  %7 = load ptr, ptr %6, align 8, !dbg !267
  %8 = load ptr, ptr %4, align 8, !dbg !268
  %9 = getelementptr inbounds %struct.nn_poller_hndl, ptr %8, i32 0, i32 0, !dbg !269
  %10 = load i32, ptr %9, align 4, !dbg !269
  %11 = sext i32 %10 to i64, !dbg !266
  %12 = getelementptr inbounds %struct.pollfd, ptr %7, i64 %11, !dbg !266
  %13 = getelementptr inbounds %struct.pollfd, ptr %12, i32 0, i32 1, !dbg !270
  %14 = load i16, ptr %13, align 4, !dbg !271
  %15 = sext i16 %14 to i32, !dbg !271
  %16 = and i32 %15, -2, !dbg !271
  %17 = trunc i32 %16 to i16, !dbg !271
  store i16 %17, ptr %13, align 4, !dbg !271
  %18 = load ptr, ptr %3, align 8, !dbg !272
  %19 = getelementptr inbounds %struct.nn_poller, ptr %18, i32 0, i32 3, !dbg !273
  %20 = load ptr, ptr %19, align 8, !dbg !273
  %21 = load ptr, ptr %4, align 8, !dbg !274
  %22 = getelementptr inbounds %struct.nn_poller_hndl, ptr %21, i32 0, i32 0, !dbg !275
  %23 = load i32, ptr %22, align 4, !dbg !275
  %24 = sext i32 %23 to i64, !dbg !272
  %25 = getelementptr inbounds %struct.pollfd, ptr %20, i64 %24, !dbg !272
  %26 = getelementptr inbounds %struct.pollfd, ptr %25, i32 0, i32 2, !dbg !276
  %27 = load i16, ptr %26, align 2, !dbg !277
  %28 = sext i16 %27 to i32, !dbg !277
  %29 = and i32 %28, -2, !dbg !277
  %30 = trunc i32 %29 to i16, !dbg !277
  store i16 %30, ptr %26, align 2, !dbg !277
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_poller_set_out(ptr noundef %0, ptr noundef %1) #0 !dbg !279 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !280, metadata !DIExpression()), !dbg !281
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !282, metadata !DIExpression()), !dbg !283
  %5 = load ptr, ptr %3, align 8, !dbg !284
  %6 = getelementptr inbounds %struct.nn_poller, ptr %5, i32 0, i32 3, !dbg !285
  %7 = load ptr, ptr %6, align 8, !dbg !285
  %8 = load ptr, ptr %4, align 8, !dbg !286
  %9 = getelementptr inbounds %struct.nn_poller_hndl, ptr %8, i32 0, i32 0, !dbg !287
  %10 = load i32, ptr %9, align 4, !dbg !287
  %11 = sext i32 %10 to i64, !dbg !284
  %12 = getelementptr inbounds %struct.pollfd, ptr %7, i64 %11, !dbg !284
  %13 = getelementptr inbounds %struct.pollfd, ptr %12, i32 0, i32 1, !dbg !288
  %14 = load i16, ptr %13, align 4, !dbg !289
  %15 = sext i16 %14 to i32, !dbg !289
  %16 = or i32 %15, 4, !dbg !289
  %17 = trunc i32 %16 to i16, !dbg !289
  store i16 %17, ptr %13, align 4, !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_poller_reset_out(ptr noundef %0, ptr noundef %1) #0 !dbg !291 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !292, metadata !DIExpression()), !dbg !293
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !294, metadata !DIExpression()), !dbg !295
  %5 = load ptr, ptr %3, align 8, !dbg !296
  %6 = getelementptr inbounds %struct.nn_poller, ptr %5, i32 0, i32 3, !dbg !297
  %7 = load ptr, ptr %6, align 8, !dbg !297
  %8 = load ptr, ptr %4, align 8, !dbg !298
  %9 = getelementptr inbounds %struct.nn_poller_hndl, ptr %8, i32 0, i32 0, !dbg !299
  %10 = load i32, ptr %9, align 4, !dbg !299
  %11 = sext i32 %10 to i64, !dbg !296
  %12 = getelementptr inbounds %struct.pollfd, ptr %7, i64 %11, !dbg !296
  %13 = getelementptr inbounds %struct.pollfd, ptr %12, i32 0, i32 1, !dbg !300
  %14 = load i16, ptr %13, align 4, !dbg !301
  %15 = sext i16 %14 to i32, !dbg !301
  %16 = and i32 %15, -5, !dbg !301
  %17 = trunc i32 %16 to i16, !dbg !301
  store i16 %17, ptr %13, align 4, !dbg !301
  %18 = load ptr, ptr %3, align 8, !dbg !302
  %19 = getelementptr inbounds %struct.nn_poller, ptr %18, i32 0, i32 3, !dbg !303
  %20 = load ptr, ptr %19, align 8, !dbg !303
  %21 = load ptr, ptr %4, align 8, !dbg !304
  %22 = getelementptr inbounds %struct.nn_poller_hndl, ptr %21, i32 0, i32 0, !dbg !305
  %23 = load i32, ptr %22, align 4, !dbg !305
  %24 = sext i32 %23 to i64, !dbg !302
  %25 = getelementptr inbounds %struct.pollfd, ptr %20, i64 %24, !dbg !302
  %26 = getelementptr inbounds %struct.pollfd, ptr %25, i32 0, i32 2, !dbg !306
  %27 = load i16, ptr %26, align 2, !dbg !307
  %28 = sext i16 %27 to i32, !dbg !307
  %29 = and i32 %28, -5, !dbg !307
  %30 = trunc i32 %29 to i16, !dbg !307
  store i16 %30, ptr %26, align 2, !dbg !307
  ret void, !dbg !308
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_poller_wait(ptr noundef %0, i32 noundef %1) #0 !dbg !309 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !312, metadata !DIExpression()), !dbg !313
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata ptr %6, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata ptr %7, metadata !318, metadata !DIExpression()), !dbg !319
  br label %8, !dbg !320

8:                                                ; preds = %154, %2
  %9 = load ptr, ptr %4, align 8, !dbg !321
  %10 = getelementptr inbounds %struct.nn_poller, ptr %9, i32 0, i32 5, !dbg !322
  %11 = load i32, ptr %10, align 8, !dbg !322
  %12 = icmp ne i32 %11, -1, !dbg !323
  br i1 %12, label %13, label %155, !dbg !320

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !dbg !324
  %15 = getelementptr inbounds %struct.nn_poller, ptr %14, i32 0, i32 5, !dbg !326
  %16 = load i32, ptr %15, align 8, !dbg !326
  store i32 %16, ptr %7, align 4, !dbg !327
  %17 = load ptr, ptr %4, align 8, !dbg !328
  %18 = getelementptr inbounds %struct.nn_poller, ptr %17, i32 0, i32 4, !dbg !329
  %19 = load ptr, ptr %18, align 8, !dbg !329
  %20 = load i32, ptr %7, align 4, !dbg !330
  %21 = sext i32 %20 to i64, !dbg !328
  %22 = getelementptr inbounds %struct.nn_hndls_item, ptr %19, i64 %21, !dbg !328
  %23 = getelementptr inbounds %struct.nn_hndls_item, ptr %22, i32 0, i32 2, !dbg !331
  %24 = load i32, ptr %23, align 4, !dbg !331
  %25 = load ptr, ptr %4, align 8, !dbg !332
  %26 = getelementptr inbounds %struct.nn_poller, ptr %25, i32 0, i32 5, !dbg !333
  store i32 %24, ptr %26, align 8, !dbg !334
  %27 = load ptr, ptr %4, align 8, !dbg !335
  %28 = getelementptr inbounds %struct.nn_poller, ptr %27, i32 0, i32 0, !dbg !336
  %29 = load i32, ptr %28, align 8, !dbg !337
  %30 = add nsw i32 %29, -1, !dbg !337
  store i32 %30, ptr %28, align 8, !dbg !337
  %31 = load i32, ptr %7, align 4, !dbg !338
  %32 = load ptr, ptr %4, align 8, !dbg !340
  %33 = getelementptr inbounds %struct.nn_poller, ptr %32, i32 0, i32 0, !dbg !341
  %34 = load i32, ptr %33, align 8, !dbg !341
  %35 = icmp ne i32 %31, %34, !dbg !342
  br i1 %35, label %36, label %75, !dbg !343

36:                                               ; preds = %13
  %37 = load ptr, ptr %4, align 8, !dbg !344
  %38 = getelementptr inbounds %struct.nn_poller, ptr %37, i32 0, i32 3, !dbg !346
  %39 = load ptr, ptr %38, align 8, !dbg !346
  %40 = load i32, ptr %7, align 4, !dbg !347
  %41 = sext i32 %40 to i64, !dbg !344
  %42 = getelementptr inbounds %struct.pollfd, ptr %39, i64 %41, !dbg !344
  %43 = load ptr, ptr %4, align 8, !dbg !348
  %44 = getelementptr inbounds %struct.nn_poller, ptr %43, i32 0, i32 3, !dbg !349
  %45 = load ptr, ptr %44, align 8, !dbg !349
  %46 = load ptr, ptr %4, align 8, !dbg !350
  %47 = getelementptr inbounds %struct.nn_poller, ptr %46, i32 0, i32 0, !dbg !351
  %48 = load i32, ptr %47, align 8, !dbg !351
  %49 = sext i32 %48 to i64, !dbg !348
  %50 = getelementptr inbounds %struct.pollfd, ptr %45, i64 %49, !dbg !348
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %50, i64 8, i1 false), !dbg !348
  %51 = load ptr, ptr %4, align 8, !dbg !352
  %52 = getelementptr inbounds %struct.nn_poller, ptr %51, i32 0, i32 4, !dbg !353
  %53 = load ptr, ptr %52, align 8, !dbg !353
  %54 = load i32, ptr %7, align 4, !dbg !354
  %55 = sext i32 %54 to i64, !dbg !352
  %56 = getelementptr inbounds %struct.nn_hndls_item, ptr %53, i64 %55, !dbg !352
  %57 = load ptr, ptr %4, align 8, !dbg !355
  %58 = getelementptr inbounds %struct.nn_poller, ptr %57, i32 0, i32 4, !dbg !356
  %59 = load ptr, ptr %58, align 8, !dbg !356
  %60 = load ptr, ptr %4, align 8, !dbg !357
  %61 = getelementptr inbounds %struct.nn_poller, ptr %60, i32 0, i32 0, !dbg !358
  %62 = load i32, ptr %61, align 8, !dbg !358
  %63 = sext i32 %62 to i64, !dbg !355
  %64 = getelementptr inbounds %struct.nn_hndls_item, ptr %59, i64 %63, !dbg !355
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %56, ptr align 8 %64, i64 16, i1 false), !dbg !355
  %65 = load i32, ptr %7, align 4, !dbg !359
  %66 = load ptr, ptr %4, align 8, !dbg !360
  %67 = getelementptr inbounds %struct.nn_poller, ptr %66, i32 0, i32 4, !dbg !361
  %68 = load ptr, ptr %67, align 8, !dbg !361
  %69 = load i32, ptr %7, align 4, !dbg !362
  %70 = sext i32 %69 to i64, !dbg !360
  %71 = getelementptr inbounds %struct.nn_hndls_item, ptr %68, i64 %70, !dbg !360
  %72 = getelementptr inbounds %struct.nn_hndls_item, ptr %71, i32 0, i32 0, !dbg !363
  %73 = load ptr, ptr %72, align 8, !dbg !363
  %74 = getelementptr inbounds %struct.nn_poller_hndl, ptr %73, i32 0, i32 0, !dbg !364
  store i32 %65, ptr %74, align 4, !dbg !365
  br label %75, !dbg !366

75:                                               ; preds = %36, %13
  %76 = load ptr, ptr %4, align 8, !dbg !367
  %77 = getelementptr inbounds %struct.nn_poller, ptr %76, i32 0, i32 4, !dbg !367
  %78 = load ptr, ptr %77, align 8, !dbg !367
  %79 = load i32, ptr %7, align 4, !dbg !367
  %80 = sext i32 %79 to i64, !dbg !367
  %81 = getelementptr inbounds %struct.nn_hndls_item, ptr %78, i64 %80, !dbg !367
  %82 = getelementptr inbounds %struct.nn_hndls_item, ptr %81, i32 0, i32 0, !dbg !367
  %83 = load ptr, ptr %82, align 8, !dbg !367
  %84 = icmp ne ptr %83, null, !dbg !367
  %85 = xor i1 %84, true, !dbg !367
  %86 = zext i1 %85 to i32, !dbg !367
  %87 = sext i32 %86 to i64, !dbg !367
  %88 = icmp ne i64 %87, 0, !dbg !367
  br i1 %88, label %89, label %154, !dbg !369

89:                                               ; preds = %75
  %90 = load ptr, ptr %4, align 8, !dbg !370
  %91 = getelementptr inbounds %struct.nn_poller, ptr %90, i32 0, i32 4, !dbg !373
  %92 = load ptr, ptr %91, align 8, !dbg !373
  %93 = load i32, ptr %7, align 4, !dbg !374
  %94 = sext i32 %93 to i64, !dbg !370
  %95 = getelementptr inbounds %struct.nn_hndls_item, ptr %92, i64 %94, !dbg !370
  %96 = getelementptr inbounds %struct.nn_hndls_item, ptr %95, i32 0, i32 1, !dbg !375
  %97 = load i32, ptr %96, align 8, !dbg !375
  %98 = icmp ne i32 %97, -1, !dbg !376
  br i1 %98, label %99, label %115, !dbg !377

99:                                               ; preds = %89
  %100 = load i32, ptr %7, align 4, !dbg !378
  %101 = load ptr, ptr %4, align 8, !dbg !379
  %102 = getelementptr inbounds %struct.nn_poller, ptr %101, i32 0, i32 4, !dbg !380
  %103 = load ptr, ptr %102, align 8, !dbg !380
  %104 = load ptr, ptr %4, align 8, !dbg !381
  %105 = getelementptr inbounds %struct.nn_poller, ptr %104, i32 0, i32 4, !dbg !382
  %106 = load ptr, ptr %105, align 8, !dbg !382
  %107 = load i32, ptr %7, align 4, !dbg !383
  %108 = sext i32 %107 to i64, !dbg !381
  %109 = getelementptr inbounds %struct.nn_hndls_item, ptr %106, i64 %108, !dbg !381
  %110 = getelementptr inbounds %struct.nn_hndls_item, ptr %109, i32 0, i32 1, !dbg !384
  %111 = load i32, ptr %110, align 8, !dbg !384
  %112 = sext i32 %111 to i64, !dbg !379
  %113 = getelementptr inbounds %struct.nn_hndls_item, ptr %103, i64 %112, !dbg !379
  %114 = getelementptr inbounds %struct.nn_hndls_item, ptr %113, i32 0, i32 2, !dbg !385
  store i32 %100, ptr %114, align 4, !dbg !386
  br label %115, !dbg !379

115:                                              ; preds = %99, %89
  %116 = load ptr, ptr %4, align 8, !dbg !387
  %117 = getelementptr inbounds %struct.nn_poller, ptr %116, i32 0, i32 4, !dbg !389
  %118 = load ptr, ptr %117, align 8, !dbg !389
  %119 = load i32, ptr %7, align 4, !dbg !390
  %120 = sext i32 %119 to i64, !dbg !387
  %121 = getelementptr inbounds %struct.nn_hndls_item, ptr %118, i64 %120, !dbg !387
  %122 = getelementptr inbounds %struct.nn_hndls_item, ptr %121, i32 0, i32 2, !dbg !391
  %123 = load i32, ptr %122, align 4, !dbg !391
  %124 = icmp ne i32 %123, -1, !dbg !392
  br i1 %124, label %125, label %141, !dbg !393

125:                                              ; preds = %115
  %126 = load i32, ptr %7, align 4, !dbg !394
  %127 = load ptr, ptr %4, align 8, !dbg !395
  %128 = getelementptr inbounds %struct.nn_poller, ptr %127, i32 0, i32 4, !dbg !396
  %129 = load ptr, ptr %128, align 8, !dbg !396
  %130 = load ptr, ptr %4, align 8, !dbg !397
  %131 = getelementptr inbounds %struct.nn_poller, ptr %130, i32 0, i32 4, !dbg !398
  %132 = load ptr, ptr %131, align 8, !dbg !398
  %133 = load i32, ptr %7, align 4, !dbg !399
  %134 = sext i32 %133 to i64, !dbg !397
  %135 = getelementptr inbounds %struct.nn_hndls_item, ptr %132, i64 %134, !dbg !397
  %136 = getelementptr inbounds %struct.nn_hndls_item, ptr %135, i32 0, i32 2, !dbg !400
  %137 = load i32, ptr %136, align 4, !dbg !400
  %138 = sext i32 %137 to i64, !dbg !395
  %139 = getelementptr inbounds %struct.nn_hndls_item, ptr %129, i64 %138, !dbg !395
  %140 = getelementptr inbounds %struct.nn_hndls_item, ptr %139, i32 0, i32 1, !dbg !401
  store i32 %126, ptr %140, align 8, !dbg !402
  br label %141, !dbg !395

141:                                              ; preds = %125, %115
  %142 = load ptr, ptr %4, align 8, !dbg !403
  %143 = getelementptr inbounds %struct.nn_poller, ptr %142, i32 0, i32 5, !dbg !405
  %144 = load i32, ptr %143, align 8, !dbg !405
  %145 = load ptr, ptr %4, align 8, !dbg !406
  %146 = getelementptr inbounds %struct.nn_poller, ptr %145, i32 0, i32 0, !dbg !407
  %147 = load i32, ptr %146, align 8, !dbg !407
  %148 = icmp eq i32 %144, %147, !dbg !408
  br i1 %148, label %149, label %153, !dbg !409

149:                                              ; preds = %141
  %150 = load i32, ptr %7, align 4, !dbg !410
  %151 = load ptr, ptr %4, align 8, !dbg !411
  %152 = getelementptr inbounds %struct.nn_poller, ptr %151, i32 0, i32 5, !dbg !412
  store i32 %150, ptr %152, align 8, !dbg !413
  br label %153, !dbg !411

153:                                              ; preds = %149, %141
  br label %154, !dbg !414

154:                                              ; preds = %153, %75
  br label %8, !dbg !320, !llvm.loop !415

155:                                              ; preds = %8
  %156 = load ptr, ptr %4, align 8, !dbg !418
  %157 = getelementptr inbounds %struct.nn_poller, ptr %156, i32 0, i32 3, !dbg !419
  %158 = load ptr, ptr %157, align 8, !dbg !419
  %159 = load ptr, ptr %4, align 8, !dbg !420
  %160 = getelementptr inbounds %struct.nn_poller, ptr %159, i32 0, i32 0, !dbg !421
  %161 = load i32, ptr %160, align 8, !dbg !421
  %162 = sext i32 %161 to i64, !dbg !420
  %163 = load i32, ptr %5, align 4, !dbg !422
  %164 = call i32 @poll(ptr noundef %158, i64 noundef %162, i32 noundef %163), !dbg !423
  store i32 %164, ptr %6, align 4, !dbg !424
  %165 = load i32, ptr %6, align 4, !dbg !425
  %166 = icmp slt i32 %165, 0, !dbg !425
  br i1 %166, label %167, label %171, !dbg !425

167:                                              ; preds = %155
  %168 = call ptr @__errno_location() #7, !dbg !425
  %169 = load i32, ptr %168, align 4, !dbg !425
  %170 = icmp eq i32 %169, 4, !dbg !425
  br label %171

171:                                              ; preds = %167, %155
  %172 = phi i1 [ false, %155 ], [ %170, %167 ], !dbg !427
  %173 = zext i1 %172 to i32, !dbg !425
  %174 = sext i32 %173 to i64, !dbg !425
  %175 = icmp ne i64 %174, 0, !dbg !425
  br i1 %175, label %176, label %177, !dbg !428

176:                                              ; preds = %171
  store i32 -4, ptr %3, align 4, !dbg !429
  br label %195, !dbg !429

177:                                              ; preds = %171
  br label %178, !dbg !430

178:                                              ; preds = %177
  %179 = load i32, ptr %6, align 4, !dbg !431
  %180 = icmp sge i32 %179, 0, !dbg !431
  %181 = xor i1 %180, true, !dbg !431
  %182 = zext i1 %181 to i32, !dbg !431
  %183 = sext i32 %182 to i64, !dbg !431
  %184 = icmp ne i64 %183, 0, !dbg !431
  br i1 %184, label %185, label %193, !dbg !434

185:                                              ; preds = %178
  %186 = load ptr, ptr @stderr, align 8, !dbg !435
  %187 = call ptr @__errno_location() #7, !dbg !435
  %188 = load i32, ptr %187, align 4, !dbg !435
  %189 = call ptr @nn_err_strerror(i32 noundef %188), !dbg !435
  %190 = call ptr @__errno_location() #7, !dbg !435
  %191 = load i32, ptr %190, align 4, !dbg !435
  %192 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.2, ptr noundef %189, i32 noundef %191, ptr noundef @.str.1, i32 noundef 156), !dbg !435
  call void @nn_err_abort() #6, !dbg !435
  unreachable, !dbg !435

193:                                              ; preds = %178
  br label %194, !dbg !434

194:                                              ; preds = %193
  store i32 0, ptr %3, align 4, !dbg !437
  br label %195, !dbg !437

195:                                              ; preds = %194, %176
  %196 = load i32, ptr %3, align 4, !dbg !438
  ret i32 %196, !dbg !438
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_poller_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !439 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !444, metadata !DIExpression()), !dbg !445
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !446, metadata !DIExpression()), !dbg !447
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata ptr %8, metadata !450, metadata !DIExpression()), !dbg !451
  br label %9, !dbg !452

9:                                                ; preds = %31, %3
  %10 = load ptr, ptr %5, align 8, !dbg !453
  %11 = getelementptr inbounds %struct.nn_poller, ptr %10, i32 0, i32 1, !dbg !454
  %12 = load i32, ptr %11, align 4, !dbg !454
  %13 = load ptr, ptr %5, align 8, !dbg !455
  %14 = getelementptr inbounds %struct.nn_poller, ptr %13, i32 0, i32 0, !dbg !456
  %15 = load i32, ptr %14, align 8, !dbg !456
  %16 = icmp slt i32 %12, %15, !dbg !457
  br i1 %16, label %17, label %36, !dbg !452

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8, !dbg !458
  %19 = getelementptr inbounds %struct.nn_poller, ptr %18, i32 0, i32 3, !dbg !461
  %20 = load ptr, ptr %19, align 8, !dbg !461
  %21 = load ptr, ptr %5, align 8, !dbg !462
  %22 = getelementptr inbounds %struct.nn_poller, ptr %21, i32 0, i32 1, !dbg !463
  %23 = load i32, ptr %22, align 4, !dbg !463
  %24 = sext i32 %23 to i64, !dbg !458
  %25 = getelementptr inbounds %struct.pollfd, ptr %20, i64 %24, !dbg !458
  %26 = getelementptr inbounds %struct.pollfd, ptr %25, i32 0, i32 2, !dbg !464
  %27 = load i16, ptr %26, align 2, !dbg !464
  %28 = sext i16 %27 to i32, !dbg !458
  %29 = icmp ne i32 %28, 0, !dbg !465
  br i1 %29, label %30, label %31, !dbg !466

30:                                               ; preds = %17
  br label %36, !dbg !467

31:                                               ; preds = %17
  %32 = load ptr, ptr %5, align 8, !dbg !468
  %33 = getelementptr inbounds %struct.nn_poller, ptr %32, i32 0, i32 1, !dbg !469
  %34 = load i32, ptr %33, align 4, !dbg !470
  %35 = add nsw i32 %34, 1, !dbg !470
  store i32 %35, ptr %33, align 4, !dbg !470
  br label %9, !dbg !452, !llvm.loop !471

36:                                               ; preds = %30, %9
  %37 = load ptr, ptr %5, align 8, !dbg !473
  %38 = getelementptr inbounds %struct.nn_poller, ptr %37, i32 0, i32 1, !dbg !473
  %39 = load i32, ptr %38, align 4, !dbg !473
  %40 = load ptr, ptr %5, align 8, !dbg !473
  %41 = getelementptr inbounds %struct.nn_poller, ptr %40, i32 0, i32 0, !dbg !473
  %42 = load i32, ptr %41, align 8, !dbg !473
  %43 = icmp sge i32 %39, %42, !dbg !473
  %44 = zext i1 %43 to i32, !dbg !473
  %45 = sext i32 %44 to i64, !dbg !473
  %46 = icmp ne i64 %45, 0, !dbg !473
  br i1 %46, label %47, label %48, !dbg !475

47:                                               ; preds = %36
  store i32 -11, ptr %4, align 4, !dbg !476
  br label %125, !dbg !476

48:                                               ; preds = %36
  %49 = load ptr, ptr %5, align 8, !dbg !477
  %50 = getelementptr inbounds %struct.nn_poller, ptr %49, i32 0, i32 4, !dbg !478
  %51 = load ptr, ptr %50, align 8, !dbg !478
  %52 = load ptr, ptr %5, align 8, !dbg !479
  %53 = getelementptr inbounds %struct.nn_poller, ptr %52, i32 0, i32 1, !dbg !480
  %54 = load i32, ptr %53, align 4, !dbg !480
  %55 = sext i32 %54 to i64, !dbg !477
  %56 = getelementptr inbounds %struct.nn_hndls_item, ptr %51, i64 %55, !dbg !477
  %57 = getelementptr inbounds %struct.nn_hndls_item, ptr %56, i32 0, i32 0, !dbg !481
  %58 = load ptr, ptr %57, align 8, !dbg !481
  %59 = load ptr, ptr %7, align 8, !dbg !482
  store ptr %58, ptr %59, align 8, !dbg !483
  %60 = load ptr, ptr %5, align 8, !dbg !484
  %61 = getelementptr inbounds %struct.nn_poller, ptr %60, i32 0, i32 3, !dbg !484
  %62 = load ptr, ptr %61, align 8, !dbg !484
  %63 = load ptr, ptr %5, align 8, !dbg !484
  %64 = getelementptr inbounds %struct.nn_poller, ptr %63, i32 0, i32 1, !dbg !484
  %65 = load i32, ptr %64, align 4, !dbg !484
  %66 = sext i32 %65 to i64, !dbg !484
  %67 = getelementptr inbounds %struct.pollfd, ptr %62, i64 %66, !dbg !484
  %68 = getelementptr inbounds %struct.pollfd, ptr %67, i32 0, i32 2, !dbg !484
  %69 = load i16, ptr %68, align 2, !dbg !484
  %70 = sext i16 %69 to i32, !dbg !484
  %71 = and i32 %70, 1, !dbg !484
  %72 = sext i32 %71 to i64, !dbg !484
  %73 = icmp ne i64 %72, 0, !dbg !484
  br i1 %73, label %74, label %89, !dbg !486

74:                                               ; preds = %48
  %75 = load ptr, ptr %6, align 8, !dbg !487
  store i32 1, ptr %75, align 4, !dbg !489
  %76 = load ptr, ptr %5, align 8, !dbg !490
  %77 = getelementptr inbounds %struct.nn_poller, ptr %76, i32 0, i32 3, !dbg !491
  %78 = load ptr, ptr %77, align 8, !dbg !491
  %79 = load ptr, ptr %5, align 8, !dbg !492
  %80 = getelementptr inbounds %struct.nn_poller, ptr %79, i32 0, i32 1, !dbg !493
  %81 = load i32, ptr %80, align 4, !dbg !493
  %82 = sext i32 %81 to i64, !dbg !490
  %83 = getelementptr inbounds %struct.pollfd, ptr %78, i64 %82, !dbg !490
  %84 = getelementptr inbounds %struct.pollfd, ptr %83, i32 0, i32 2, !dbg !494
  %85 = load i16, ptr %84, align 2, !dbg !495
  %86 = sext i16 %85 to i32, !dbg !495
  %87 = and i32 %86, -2, !dbg !495
  %88 = trunc i32 %87 to i16, !dbg !495
  store i16 %88, ptr %84, align 2, !dbg !495
  store i32 0, ptr %4, align 4, !dbg !496
  br label %125, !dbg !496

89:                                               ; preds = %48
  %90 = load ptr, ptr %5, align 8, !dbg !497
  %91 = getelementptr inbounds %struct.nn_poller, ptr %90, i32 0, i32 3, !dbg !497
  %92 = load ptr, ptr %91, align 8, !dbg !497
  %93 = load ptr, ptr %5, align 8, !dbg !497
  %94 = getelementptr inbounds %struct.nn_poller, ptr %93, i32 0, i32 1, !dbg !497
  %95 = load i32, ptr %94, align 4, !dbg !497
  %96 = sext i32 %95 to i64, !dbg !497
  %97 = getelementptr inbounds %struct.pollfd, ptr %92, i64 %96, !dbg !497
  %98 = getelementptr inbounds %struct.pollfd, ptr %97, i32 0, i32 2, !dbg !497
  %99 = load i16, ptr %98, align 2, !dbg !497
  %100 = sext i16 %99 to i32, !dbg !497
  %101 = and i32 %100, 4, !dbg !497
  %102 = sext i32 %101 to i64, !dbg !497
  %103 = icmp ne i64 %102, 0, !dbg !497
  br i1 %103, label %104, label %119, !dbg !499

104:                                              ; preds = %89
  %105 = load ptr, ptr %6, align 8, !dbg !500
  store i32 2, ptr %105, align 4, !dbg !502
  %106 = load ptr, ptr %5, align 8, !dbg !503
  %107 = getelementptr inbounds %struct.nn_poller, ptr %106, i32 0, i32 3, !dbg !504
  %108 = load ptr, ptr %107, align 8, !dbg !504
  %109 = load ptr, ptr %5, align 8, !dbg !505
  %110 = getelementptr inbounds %struct.nn_poller, ptr %109, i32 0, i32 1, !dbg !506
  %111 = load i32, ptr %110, align 4, !dbg !506
  %112 = sext i32 %111 to i64, !dbg !503
  %113 = getelementptr inbounds %struct.pollfd, ptr %108, i64 %112, !dbg !503
  %114 = getelementptr inbounds %struct.pollfd, ptr %113, i32 0, i32 2, !dbg !507
  %115 = load i16, ptr %114, align 2, !dbg !508
  %116 = sext i16 %115 to i32, !dbg !508
  %117 = and i32 %116, -5, !dbg !508
  %118 = trunc i32 %117 to i16, !dbg !508
  store i16 %118, ptr %114, align 2, !dbg !508
  store i32 0, ptr %4, align 4, !dbg !509
  br label %125, !dbg !509

119:                                              ; preds = %89
  %120 = load ptr, ptr %6, align 8, !dbg !510
  store i32 3, ptr %120, align 4, !dbg !512
  %121 = load ptr, ptr %5, align 8, !dbg !513
  %122 = getelementptr inbounds %struct.nn_poller, ptr %121, i32 0, i32 1, !dbg !514
  %123 = load i32, ptr %122, align 4, !dbg !515
  %124 = add nsw i32 %123, 1, !dbg !515
  store i32 %124, ptr %122, align 4, !dbg !515
  store i32 0, ptr %4, align 4, !dbg !516
  br label %125, !dbg !516

125:                                              ; preds = %119, %104, %74, %47
  %126 = load i32, ptr %4, align 4, !dbg !517
  ret i32 %126, !dbg !517
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/aio/poller_poll.inc", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "26e8075eb17704b0c72eaadc1d79728d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 26)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 17)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !19, globals: !21, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "src/aio/poller.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fb6604aa1a312dbbb3945cff2e88aecc")
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!0, !7, !12}
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 16.0.0"}
!30 = distinct !DISubprogram(name: "nn_poller_init", scope: !2, file: !2, line: 28, type: !31, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!31 = !DISubroutineType(types: !32)
!32 = !{!20, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !35, line: 31, size: 320, elements: !36)
!35 = !DIFile(filename: "./src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!36 = !{!37, !38, !39, !40, !49, !60}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !34, file: !35, line: 34, baseType: !20, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !34, file: !35, line: 37, baseType: !20, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !34, file: !35, line: 40, baseType: !20, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !34, file: !35, line: 43, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !43, line: 36, size: 64, elements: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!44 = !{!45, !46, !48}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !42, file: !43, line: 38, baseType: !20, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !42, file: !43, line: 39, baseType: !47, size: 16, offset: 32)
!47 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !42, file: !43, line: 40, baseType: !47, size: 16, offset: 48)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !34, file: !35, line: 52, baseType: !50, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !35, line: 48, size: 128, elements: !52)
!52 = !{!53, !58, !59}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !51, file: !35, line: 49, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !35, line: 27, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !55, file: !35, line: 28, baseType: !20, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !51, file: !35, line: 50, baseType: !20, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !51, file: !35, line: 51, baseType: !20, size: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !34, file: !35, line: 55, baseType: !20, size: 32, offset: 256)
!61 = !{}
!62 = !DILocalVariable(name: "self", arg: 1, scope: !30, file: !2, line: 28, type: !33)
!63 = !DILocation(line: 28, column: 39, scope: !30)
!64 = !DILocation(line: 30, column: 5, scope: !30)
!65 = !DILocation(line: 30, column: 11, scope: !30)
!66 = !DILocation(line: 30, column: 16, scope: !30)
!67 = !DILocation(line: 31, column: 5, scope: !30)
!68 = !DILocation(line: 31, column: 11, scope: !30)
!69 = !DILocation(line: 31, column: 17, scope: !30)
!70 = !DILocation(line: 32, column: 5, scope: !30)
!71 = !DILocation(line: 32, column: 11, scope: !30)
!72 = !DILocation(line: 32, column: 20, scope: !30)
!73 = !DILocation(line: 34, column: 9, scope: !30)
!74 = !DILocation(line: 33, column: 5, scope: !30)
!75 = !DILocation(line: 33, column: 11, scope: !30)
!76 = !DILocation(line: 33, column: 19, scope: !30)
!77 = !DILocation(line: 36, column: 5, scope: !30)
!78 = !DILocation(line: 36, column: 5, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 36, column: 5)
!80 = distinct !DILexicalBlock(scope: !30, file: !2, line: 36, column: 5)
!81 = !DILocation(line: 36, column: 5, scope: !80)
!82 = !DILocation(line: 36, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !2, line: 36, column: 5)
!84 = !DILocation(line: 38, column: 9, scope: !30)
!85 = !DILocation(line: 37, column: 5, scope: !30)
!86 = !DILocation(line: 37, column: 11, scope: !30)
!87 = !DILocation(line: 37, column: 17, scope: !30)
!88 = !DILocation(line: 40, column: 5, scope: !30)
!89 = !DILocation(line: 40, column: 5, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 40, column: 5)
!91 = distinct !DILexicalBlock(scope: !30, file: !2, line: 40, column: 5)
!92 = !DILocation(line: 40, column: 5, scope: !91)
!93 = !DILocation(line: 40, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !2, line: 40, column: 5)
!95 = !DILocation(line: 41, column: 5, scope: !30)
!96 = !DILocation(line: 41, column: 11, scope: !30)
!97 = !DILocation(line: 41, column: 19, scope: !30)
!98 = !DILocation(line: 43, column: 5, scope: !30)
!99 = distinct !DISubprogram(name: "nn_poller_term", scope: !2, file: !2, line: 46, type: !100, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !33}
!102 = !DILocalVariable(name: "self", arg: 1, scope: !99, file: !2, line: 46, type: !33)
!103 = !DILocation(line: 46, column: 40, scope: !99)
!104 = !DILocation(line: 48, column: 14, scope: !99)
!105 = !DILocation(line: 48, column: 20, scope: !99)
!106 = !DILocation(line: 48, column: 5, scope: !99)
!107 = !DILocation(line: 49, column: 14, scope: !99)
!108 = !DILocation(line: 49, column: 20, scope: !99)
!109 = !DILocation(line: 49, column: 5, scope: !99)
!110 = !DILocation(line: 50, column: 1, scope: !99)
!111 = distinct !DISubprogram(name: "nn_poller_add", scope: !2, file: !2, line: 52, type: !112, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !33, !20, !54}
!114 = !DILocalVariable(name: "self", arg: 1, scope: !111, file: !2, line: 52, type: !33)
!115 = !DILocation(line: 52, column: 39, scope: !111)
!116 = !DILocalVariable(name: "fd", arg: 2, scope: !111, file: !2, line: 52, type: !20)
!117 = !DILocation(line: 52, column: 49, scope: !111)
!118 = !DILocalVariable(name: "hndl", arg: 3, scope: !111, file: !2, line: 53, type: !54)
!119 = !DILocation(line: 53, column: 28, scope: !111)
!120 = !DILocalVariable(name: "rc", scope: !111, file: !2, line: 55, type: !20)
!121 = !DILocation(line: 55, column: 9, scope: !111)
!122 = !DILocation(line: 58, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !2, line: 58, column: 9)
!124 = !DILocation(line: 58, column: 9, scope: !111)
!125 = !DILocation(line: 59, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !2, line: 58, column: 49)
!127 = !DILocation(line: 59, column: 15, scope: !126)
!128 = !DILocation(line: 59, column: 24, scope: !126)
!129 = !DILocation(line: 60, column: 37, scope: !126)
!130 = !DILocation(line: 60, column: 43, scope: !126)
!131 = !DILocation(line: 61, column: 39, scope: !126)
!132 = !DILocation(line: 61, column: 45, scope: !126)
!133 = !DILocation(line: 61, column: 37, scope: !126)
!134 = !DILocation(line: 60, column: 25, scope: !126)
!135 = !DILocation(line: 60, column: 9, scope: !126)
!136 = !DILocation(line: 60, column: 15, scope: !126)
!137 = !DILocation(line: 60, column: 23, scope: !126)
!138 = !DILocation(line: 62, column: 9, scope: !126)
!139 = !DILocation(line: 62, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 62, column: 9)
!141 = distinct !DILexicalBlock(scope: !126, file: !2, line: 62, column: 9)
!142 = !DILocation(line: 62, column: 9, scope: !141)
!143 = !DILocation(line: 62, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !2, line: 62, column: 9)
!145 = !DILocation(line: 63, column: 35, scope: !126)
!146 = !DILocation(line: 63, column: 41, scope: !126)
!147 = !DILocation(line: 64, column: 45, scope: !126)
!148 = !DILocation(line: 64, column: 51, scope: !126)
!149 = !DILocation(line: 64, column: 43, scope: !126)
!150 = !DILocation(line: 63, column: 23, scope: !126)
!151 = !DILocation(line: 63, column: 9, scope: !126)
!152 = !DILocation(line: 63, column: 15, scope: !126)
!153 = !DILocation(line: 63, column: 21, scope: !126)
!154 = !DILocation(line: 65, column: 9, scope: !126)
!155 = !DILocation(line: 65, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 65, column: 9)
!157 = distinct !DILexicalBlock(scope: !126, file: !2, line: 65, column: 9)
!158 = !DILocation(line: 65, column: 9, scope: !157)
!159 = !DILocation(line: 65, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !2, line: 65, column: 9)
!161 = !DILocation(line: 66, column: 5, scope: !126)
!162 = !DILocation(line: 69, column: 37, scope: !111)
!163 = !DILocation(line: 69, column: 5, scope: !111)
!164 = !DILocation(line: 69, column: 11, scope: !111)
!165 = !DILocation(line: 69, column: 20, scope: !111)
!166 = !DILocation(line: 69, column: 26, scope: !111)
!167 = !DILocation(line: 69, column: 32, scope: !111)
!168 = !DILocation(line: 69, column: 35, scope: !111)
!169 = !DILocation(line: 70, column: 5, scope: !111)
!170 = !DILocation(line: 70, column: 11, scope: !111)
!171 = !DILocation(line: 70, column: 20, scope: !111)
!172 = !DILocation(line: 70, column: 26, scope: !111)
!173 = !DILocation(line: 70, column: 32, scope: !111)
!174 = !DILocation(line: 70, column: 39, scope: !111)
!175 = !DILocation(line: 71, column: 5, scope: !111)
!176 = !DILocation(line: 71, column: 11, scope: !111)
!177 = !DILocation(line: 71, column: 20, scope: !111)
!178 = !DILocation(line: 71, column: 26, scope: !111)
!179 = !DILocation(line: 71, column: 32, scope: !111)
!180 = !DILocation(line: 71, column: 40, scope: !111)
!181 = !DILocation(line: 72, column: 19, scope: !111)
!182 = !DILocation(line: 72, column: 25, scope: !111)
!183 = !DILocation(line: 72, column: 5, scope: !111)
!184 = !DILocation(line: 72, column: 11, scope: !111)
!185 = !DILocation(line: 72, column: 17, scope: !111)
!186 = !DILocation(line: 73, column: 37, scope: !111)
!187 = !DILocation(line: 73, column: 5, scope: !111)
!188 = !DILocation(line: 73, column: 11, scope: !111)
!189 = !DILocation(line: 73, column: 18, scope: !111)
!190 = !DILocation(line: 73, column: 24, scope: !111)
!191 = !DILocation(line: 73, column: 30, scope: !111)
!192 = !DILocation(line: 73, column: 35, scope: !111)
!193 = !DILocation(line: 74, column: 7, scope: !111)
!194 = !DILocation(line: 74, column: 13, scope: !111)
!195 = !DILocation(line: 74, column: 5, scope: !111)
!196 = !DILocation(line: 75, column: 1, scope: !111)
!197 = distinct !DISubprogram(name: "nn_poller_rm", scope: !2, file: !2, line: 77, type: !198, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !33, !54}
!200 = !DILocalVariable(name: "self", arg: 1, scope: !197, file: !2, line: 77, type: !33)
!201 = !DILocation(line: 77, column: 38, scope: !197)
!202 = !DILocalVariable(name: "hndl", arg: 2, scope: !197, file: !2, line: 77, type: !54)
!203 = !DILocation(line: 77, column: 67, scope: !197)
!204 = !DILocation(line: 80, column: 5, scope: !197)
!205 = !DILocation(line: 80, column: 11, scope: !197)
!206 = !DILocation(line: 80, column: 20, scope: !197)
!207 = !DILocation(line: 80, column: 26, scope: !197)
!208 = !DILocation(line: 80, column: 33, scope: !197)
!209 = !DILocation(line: 80, column: 41, scope: !197)
!210 = !DILocation(line: 83, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !197, file: !2, line: 83, column: 9)
!212 = !DILocation(line: 83, column: 15, scope: !211)
!213 = !DILocation(line: 83, column: 23, scope: !211)
!214 = !DILocation(line: 83, column: 9, scope: !197)
!215 = !DILocation(line: 84, column: 44, scope: !211)
!216 = !DILocation(line: 84, column: 50, scope: !211)
!217 = !DILocation(line: 84, column: 9, scope: !211)
!218 = !DILocation(line: 84, column: 15, scope: !211)
!219 = !DILocation(line: 84, column: 22, scope: !211)
!220 = !DILocation(line: 84, column: 28, scope: !211)
!221 = !DILocation(line: 84, column: 37, scope: !211)
!222 = !DILocation(line: 84, column: 42, scope: !211)
!223 = !DILocation(line: 85, column: 5, scope: !197)
!224 = !DILocation(line: 85, column: 11, scope: !197)
!225 = !DILocation(line: 85, column: 18, scope: !197)
!226 = !DILocation(line: 85, column: 24, scope: !197)
!227 = !DILocation(line: 85, column: 31, scope: !197)
!228 = !DILocation(line: 85, column: 36, scope: !197)
!229 = !DILocation(line: 86, column: 5, scope: !197)
!230 = !DILocation(line: 86, column: 11, scope: !197)
!231 = !DILocation(line: 86, column: 18, scope: !197)
!232 = !DILocation(line: 86, column: 24, scope: !197)
!233 = !DILocation(line: 86, column: 31, scope: !197)
!234 = !DILocation(line: 86, column: 36, scope: !197)
!235 = !DILocation(line: 87, column: 38, scope: !197)
!236 = !DILocation(line: 87, column: 44, scope: !197)
!237 = !DILocation(line: 87, column: 5, scope: !197)
!238 = !DILocation(line: 87, column: 11, scope: !197)
!239 = !DILocation(line: 87, column: 18, scope: !197)
!240 = !DILocation(line: 87, column: 24, scope: !197)
!241 = !DILocation(line: 87, column: 31, scope: !197)
!242 = !DILocation(line: 87, column: 36, scope: !197)
!243 = !DILocation(line: 88, column: 21, scope: !197)
!244 = !DILocation(line: 88, column: 27, scope: !197)
!245 = !DILocation(line: 88, column: 5, scope: !197)
!246 = !DILocation(line: 88, column: 11, scope: !197)
!247 = !DILocation(line: 88, column: 19, scope: !197)
!248 = !DILocation(line: 89, column: 1, scope: !197)
!249 = distinct !DISubprogram(name: "nn_poller_set_in", scope: !2, file: !2, line: 91, type: !198, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!250 = !DILocalVariable(name: "self", arg: 1, scope: !249, file: !2, line: 91, type: !33)
!251 = !DILocation(line: 91, column: 42, scope: !249)
!252 = !DILocalVariable(name: "hndl", arg: 2, scope: !249, file: !2, line: 91, type: !54)
!253 = !DILocation(line: 91, column: 71, scope: !249)
!254 = !DILocation(line: 93, column: 5, scope: !249)
!255 = !DILocation(line: 93, column: 11, scope: !249)
!256 = !DILocation(line: 93, column: 20, scope: !249)
!257 = !DILocation(line: 93, column: 26, scope: !249)
!258 = !DILocation(line: 93, column: 33, scope: !249)
!259 = !DILocation(line: 93, column: 40, scope: !249)
!260 = !DILocation(line: 94, column: 1, scope: !249)
!261 = distinct !DISubprogram(name: "nn_poller_reset_in", scope: !2, file: !2, line: 96, type: !198, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!262 = !DILocalVariable(name: "self", arg: 1, scope: !261, file: !2, line: 96, type: !33)
!263 = !DILocation(line: 96, column: 44, scope: !261)
!264 = !DILocalVariable(name: "hndl", arg: 2, scope: !261, file: !2, line: 96, type: !54)
!265 = !DILocation(line: 96, column: 73, scope: !261)
!266 = !DILocation(line: 98, column: 5, scope: !261)
!267 = !DILocation(line: 98, column: 11, scope: !261)
!268 = !DILocation(line: 98, column: 20, scope: !261)
!269 = !DILocation(line: 98, column: 26, scope: !261)
!270 = !DILocation(line: 98, column: 33, scope: !261)
!271 = !DILocation(line: 98, column: 40, scope: !261)
!272 = !DILocation(line: 99, column: 5, scope: !261)
!273 = !DILocation(line: 99, column: 11, scope: !261)
!274 = !DILocation(line: 99, column: 20, scope: !261)
!275 = !DILocation(line: 99, column: 26, scope: !261)
!276 = !DILocation(line: 99, column: 33, scope: !261)
!277 = !DILocation(line: 99, column: 41, scope: !261)
!278 = !DILocation(line: 100, column: 1, scope: !261)
!279 = distinct !DISubprogram(name: "nn_poller_set_out", scope: !2, file: !2, line: 102, type: !198, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!280 = !DILocalVariable(name: "self", arg: 1, scope: !279, file: !2, line: 102, type: !33)
!281 = !DILocation(line: 102, column: 43, scope: !279)
!282 = !DILocalVariable(name: "hndl", arg: 2, scope: !279, file: !2, line: 102, type: !54)
!283 = !DILocation(line: 102, column: 72, scope: !279)
!284 = !DILocation(line: 104, column: 5, scope: !279)
!285 = !DILocation(line: 104, column: 11, scope: !279)
!286 = !DILocation(line: 104, column: 20, scope: !279)
!287 = !DILocation(line: 104, column: 26, scope: !279)
!288 = !DILocation(line: 104, column: 33, scope: !279)
!289 = !DILocation(line: 104, column: 40, scope: !279)
!290 = !DILocation(line: 105, column: 1, scope: !279)
!291 = distinct !DISubprogram(name: "nn_poller_reset_out", scope: !2, file: !2, line: 107, type: !198, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!292 = !DILocalVariable(name: "self", arg: 1, scope: !291, file: !2, line: 107, type: !33)
!293 = !DILocation(line: 107, column: 45, scope: !291)
!294 = !DILocalVariable(name: "hndl", arg: 2, scope: !291, file: !2, line: 107, type: !54)
!295 = !DILocation(line: 107, column: 74, scope: !291)
!296 = !DILocation(line: 109, column: 5, scope: !291)
!297 = !DILocation(line: 109, column: 11, scope: !291)
!298 = !DILocation(line: 109, column: 20, scope: !291)
!299 = !DILocation(line: 109, column: 26, scope: !291)
!300 = !DILocation(line: 109, column: 33, scope: !291)
!301 = !DILocation(line: 109, column: 40, scope: !291)
!302 = !DILocation(line: 110, column: 5, scope: !291)
!303 = !DILocation(line: 110, column: 11, scope: !291)
!304 = !DILocation(line: 110, column: 20, scope: !291)
!305 = !DILocation(line: 110, column: 26, scope: !291)
!306 = !DILocation(line: 110, column: 33, scope: !291)
!307 = !DILocation(line: 110, column: 41, scope: !291)
!308 = !DILocation(line: 111, column: 1, scope: !291)
!309 = distinct !DISubprogram(name: "nn_poller_wait", scope: !2, file: !2, line: 113, type: !310, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!310 = !DISubroutineType(types: !311)
!311 = !{!20, !33, !20}
!312 = !DILocalVariable(name: "self", arg: 1, scope: !309, file: !2, line: 113, type: !33)
!313 = !DILocation(line: 113, column: 39, scope: !309)
!314 = !DILocalVariable(name: "timeout", arg: 2, scope: !309, file: !2, line: 113, type: !20)
!315 = !DILocation(line: 113, column: 49, scope: !309)
!316 = !DILocalVariable(name: "rc", scope: !309, file: !2, line: 115, type: !20)
!317 = !DILocation(line: 115, column: 9, scope: !309)
!318 = !DILocalVariable(name: "i", scope: !309, file: !2, line: 116, type: !20)
!319 = !DILocation(line: 116, column: 9, scope: !309)
!320 = !DILocation(line: 119, column: 5, scope: !309)
!321 = !DILocation(line: 119, column: 12, scope: !309)
!322 = !DILocation(line: 119, column: 18, scope: !309)
!323 = !DILocation(line: 119, column: 26, scope: !309)
!324 = !DILocation(line: 122, column: 13, scope: !325)
!325 = distinct !DILexicalBlock(scope: !309, file: !2, line: 119, column: 33)
!326 = !DILocation(line: 122, column: 19, scope: !325)
!327 = !DILocation(line: 122, column: 11, scope: !325)
!328 = !DILocation(line: 123, column: 25, scope: !325)
!329 = !DILocation(line: 123, column: 31, scope: !325)
!330 = !DILocation(line: 123, column: 38, scope: !325)
!331 = !DILocation(line: 123, column: 41, scope: !325)
!332 = !DILocation(line: 123, column: 9, scope: !325)
!333 = !DILocation(line: 123, column: 15, scope: !325)
!334 = !DILocation(line: 123, column: 23, scope: !325)
!335 = !DILocation(line: 126, column: 11, scope: !325)
!336 = !DILocation(line: 126, column: 17, scope: !325)
!337 = !DILocation(line: 126, column: 9, scope: !325)
!338 = !DILocation(line: 127, column: 13, scope: !339)
!339 = distinct !DILexicalBlock(scope: !325, file: !2, line: 127, column: 13)
!340 = !DILocation(line: 127, column: 18, scope: !339)
!341 = !DILocation(line: 127, column: 24, scope: !339)
!342 = !DILocation(line: 127, column: 15, scope: !339)
!343 = !DILocation(line: 127, column: 13, scope: !325)
!344 = !DILocation(line: 128, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !2, line: 127, column: 30)
!346 = !DILocation(line: 128, column: 19, scope: !345)
!347 = !DILocation(line: 128, column: 28, scope: !345)
!348 = !DILocation(line: 128, column: 33, scope: !345)
!349 = !DILocation(line: 128, column: 39, scope: !345)
!350 = !DILocation(line: 128, column: 48, scope: !345)
!351 = !DILocation(line: 128, column: 54, scope: !345)
!352 = !DILocation(line: 129, column: 13, scope: !345)
!353 = !DILocation(line: 129, column: 19, scope: !345)
!354 = !DILocation(line: 129, column: 26, scope: !345)
!355 = !DILocation(line: 129, column: 31, scope: !345)
!356 = !DILocation(line: 129, column: 37, scope: !345)
!357 = !DILocation(line: 129, column: 44, scope: !345)
!358 = !DILocation(line: 129, column: 50, scope: !345)
!359 = !DILocation(line: 130, column: 43, scope: !345)
!360 = !DILocation(line: 130, column: 13, scope: !345)
!361 = !DILocation(line: 130, column: 19, scope: !345)
!362 = !DILocation(line: 130, column: 26, scope: !345)
!363 = !DILocation(line: 130, column: 29, scope: !345)
!364 = !DILocation(line: 130, column: 35, scope: !345)
!365 = !DILocation(line: 130, column: 41, scope: !345)
!366 = !DILocation(line: 131, column: 9, scope: !345)
!367 = !DILocation(line: 135, column: 13, scope: !368)
!368 = distinct !DILexicalBlock(scope: !325, file: !2, line: 135, column: 13)
!369 = !DILocation(line: 135, column: 13, scope: !325)
!370 = !DILocation(line: 136, column: 17, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 136, column: 17)
!372 = distinct !DILexicalBlock(scope: !368, file: !2, line: 135, column: 46)
!373 = !DILocation(line: 136, column: 23, scope: !371)
!374 = !DILocation(line: 136, column: 30, scope: !371)
!375 = !DILocation(line: 136, column: 33, scope: !371)
!376 = !DILocation(line: 136, column: 38, scope: !371)
!377 = !DILocation(line: 136, column: 17, scope: !372)
!378 = !DILocation(line: 137, column: 58, scope: !371)
!379 = !DILocation(line: 137, column: 16, scope: !371)
!380 = !DILocation(line: 137, column: 22, scope: !371)
!381 = !DILocation(line: 137, column: 29, scope: !371)
!382 = !DILocation(line: 137, column: 35, scope: !371)
!383 = !DILocation(line: 137, column: 42, scope: !371)
!384 = !DILocation(line: 137, column: 45, scope: !371)
!385 = !DILocation(line: 137, column: 51, scope: !371)
!386 = !DILocation(line: 137, column: 56, scope: !371)
!387 = !DILocation(line: 138, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !372, file: !2, line: 138, column: 17)
!389 = !DILocation(line: 138, column: 23, scope: !388)
!390 = !DILocation(line: 138, column: 30, scope: !388)
!391 = !DILocation(line: 138, column: 33, scope: !388)
!392 = !DILocation(line: 138, column: 38, scope: !388)
!393 = !DILocation(line: 138, column: 17, scope: !372)
!394 = !DILocation(line: 139, column: 58, scope: !388)
!395 = !DILocation(line: 139, column: 16, scope: !388)
!396 = !DILocation(line: 139, column: 22, scope: !388)
!397 = !DILocation(line: 139, column: 29, scope: !388)
!398 = !DILocation(line: 139, column: 35, scope: !388)
!399 = !DILocation(line: 139, column: 42, scope: !388)
!400 = !DILocation(line: 139, column: 45, scope: !388)
!401 = !DILocation(line: 139, column: 51, scope: !388)
!402 = !DILocation(line: 139, column: 56, scope: !388)
!403 = !DILocation(line: 140, column: 17, scope: !404)
!404 = distinct !DILexicalBlock(scope: !372, file: !2, line: 140, column: 17)
!405 = !DILocation(line: 140, column: 23, scope: !404)
!406 = !DILocation(line: 140, column: 34, scope: !404)
!407 = !DILocation(line: 140, column: 40, scope: !404)
!408 = !DILocation(line: 140, column: 31, scope: !404)
!409 = !DILocation(line: 140, column: 17, scope: !372)
!410 = !DILocation(line: 141, column: 33, scope: !404)
!411 = !DILocation(line: 141, column: 17, scope: !404)
!412 = !DILocation(line: 141, column: 23, scope: !404)
!413 = !DILocation(line: 141, column: 31, scope: !404)
!414 = !DILocation(line: 142, column: 9, scope: !372)
!415 = distinct !{!415, !320, !416, !417}
!416 = !DILocation(line: 143, column: 5, scope: !309)
!417 = !{!"llvm.loop.mustprogress"}
!418 = !DILocation(line: 149, column: 16, scope: !309)
!419 = !DILocation(line: 149, column: 22, scope: !309)
!420 = !DILocation(line: 149, column: 31, scope: !309)
!421 = !DILocation(line: 149, column: 37, scope: !309)
!422 = !DILocation(line: 149, column: 43, scope: !309)
!423 = !DILocation(line: 149, column: 10, scope: !309)
!424 = !DILocation(line: 149, column: 8, scope: !309)
!425 = !DILocation(line: 150, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !309, file: !2, line: 150, column: 9)
!427 = !DILocation(line: 0, scope: !426)
!428 = !DILocation(line: 150, column: 9, scope: !309)
!429 = !DILocation(line: 154, column: 9, scope: !426)
!430 = !DILocation(line: 156, column: 5, scope: !309)
!431 = !DILocation(line: 156, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 156, column: 5)
!433 = distinct !DILexicalBlock(scope: !309, file: !2, line: 156, column: 5)
!434 = !DILocation(line: 156, column: 5, scope: !433)
!435 = !DILocation(line: 156, column: 5, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !2, line: 156, column: 5)
!437 = !DILocation(line: 157, column: 5, scope: !309)
!438 = !DILocation(line: 158, column: 1, scope: !309)
!439 = distinct !DISubprogram(name: "nn_poller_event", scope: !2, file: !2, line: 160, type: !440, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !61)
!440 = !DISubroutineType(types: !441)
!441 = !{!20, !33, !442, !443}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!444 = !DILocalVariable(name: "self", arg: 1, scope: !439, file: !2, line: 160, type: !33)
!445 = !DILocation(line: 160, column: 40, scope: !439)
!446 = !DILocalVariable(name: "event", arg: 2, scope: !439, file: !2, line: 160, type: !442)
!447 = !DILocation(line: 160, column: 51, scope: !439)
!448 = !DILocalVariable(name: "hndl", arg: 3, scope: !439, file: !2, line: 161, type: !443)
!449 = !DILocation(line: 161, column: 29, scope: !439)
!450 = !DILocalVariable(name: "rc", scope: !439, file: !2, line: 163, type: !20)
!451 = !DILocation(line: 163, column: 9, scope: !439)
!452 = !DILocation(line: 167, column: 5, scope: !439)
!453 = !DILocation(line: 167, column: 12, scope: !439)
!454 = !DILocation(line: 167, column: 18, scope: !439)
!455 = !DILocation(line: 167, column: 26, scope: !439)
!456 = !DILocation(line: 167, column: 32, scope: !439)
!457 = !DILocation(line: 167, column: 24, scope: !439)
!458 = !DILocation(line: 168, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 168, column: 13)
!460 = distinct !DILexicalBlock(scope: !439, file: !2, line: 167, column: 38)
!461 = !DILocation(line: 168, column: 19, scope: !459)
!462 = !DILocation(line: 168, column: 28, scope: !459)
!463 = !DILocation(line: 168, column: 34, scope: !459)
!464 = !DILocation(line: 168, column: 41, scope: !459)
!465 = !DILocation(line: 168, column: 49, scope: !459)
!466 = !DILocation(line: 168, column: 13, scope: !460)
!467 = !DILocation(line: 169, column: 13, scope: !459)
!468 = !DILocation(line: 170, column: 11, scope: !460)
!469 = !DILocation(line: 170, column: 17, scope: !460)
!470 = !DILocation(line: 170, column: 9, scope: !460)
!471 = distinct !{!471, !452, !472, !417}
!472 = !DILocation(line: 171, column: 5, scope: !439)
!473 = !DILocation(line: 174, column: 9, scope: !474)
!474 = distinct !DILexicalBlock(scope: !439, file: !2, line: 174, column: 9)
!475 = !DILocation(line: 174, column: 9, scope: !439)
!476 = !DILocation(line: 175, column: 9, scope: !474)
!477 = !DILocation(line: 178, column: 13, scope: !439)
!478 = !DILocation(line: 178, column: 19, scope: !439)
!479 = !DILocation(line: 178, column: 26, scope: !439)
!480 = !DILocation(line: 178, column: 32, scope: !439)
!481 = !DILocation(line: 178, column: 39, scope: !439)
!482 = !DILocation(line: 178, column: 6, scope: !439)
!483 = !DILocation(line: 178, column: 11, scope: !439)
!484 = !DILocation(line: 179, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !439, file: !2, line: 179, column: 9)
!486 = !DILocation(line: 179, column: 9, scope: !439)
!487 = !DILocation(line: 180, column: 10, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !2, line: 179, column: 65)
!489 = !DILocation(line: 180, column: 16, scope: !488)
!490 = !DILocation(line: 181, column: 9, scope: !488)
!491 = !DILocation(line: 181, column: 15, scope: !488)
!492 = !DILocation(line: 181, column: 24, scope: !488)
!493 = !DILocation(line: 181, column: 30, scope: !488)
!494 = !DILocation(line: 181, column: 37, scope: !488)
!495 = !DILocation(line: 181, column: 45, scope: !488)
!496 = !DILocation(line: 182, column: 9, scope: !488)
!497 = !DILocation(line: 184, column: 14, scope: !498)
!498 = distinct !DILexicalBlock(scope: !485, file: !2, line: 184, column: 14)
!499 = !DILocation(line: 184, column: 14, scope: !485)
!500 = !DILocation(line: 185, column: 10, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !2, line: 184, column: 71)
!502 = !DILocation(line: 185, column: 16, scope: !501)
!503 = !DILocation(line: 186, column: 9, scope: !501)
!504 = !DILocation(line: 186, column: 15, scope: !501)
!505 = !DILocation(line: 186, column: 24, scope: !501)
!506 = !DILocation(line: 186, column: 30, scope: !501)
!507 = !DILocation(line: 186, column: 37, scope: !501)
!508 = !DILocation(line: 186, column: 45, scope: !501)
!509 = !DILocation(line: 187, column: 9, scope: !501)
!510 = !DILocation(line: 190, column: 10, scope: !511)
!511 = distinct !DILexicalBlock(scope: !498, file: !2, line: 189, column: 10)
!512 = !DILocation(line: 190, column: 16, scope: !511)
!513 = !DILocation(line: 191, column: 11, scope: !511)
!514 = !DILocation(line: 191, column: 17, scope: !511)
!515 = !DILocation(line: 191, column: 9, scope: !511)
!516 = !DILocation(line: 192, column: 9, scope: !511)
!517 = !DILocation(line: 194, column: 1, scope: !439)
