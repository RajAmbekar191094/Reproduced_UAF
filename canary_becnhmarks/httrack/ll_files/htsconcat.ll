; ModuleID = 'src/htsconcat.c'
source_filename = "src/htsconcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"(size) != sizeof(void*)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"src/htsconcat.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !12
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"%s failed at %s:%d\0A\00", align 1, !dbg !17

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @concat(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !35 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !45, metadata !DIExpression()), !dbg !46
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !47, metadata !DIExpression()), !dbg !48
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !49, metadata !DIExpression()), !dbg !50
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata ptr %10, metadata !53, metadata !DIExpression()), !dbg !54
  store i64 0, ptr %10, align 8, !dbg !54
  %11 = load i64, ptr %7, align 8, !dbg !55
  %12 = icmp ne i64 %11, 8, !dbg !55
  br i1 %12, label %14, label %13, !dbg !55

13:                                               ; preds = %4
  call void @abortf_(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 46), !dbg !55
  br label %14, !dbg !55

14:                                               ; preds = %13, %4
  %15 = phi i1 [ true, %4 ], [ false, %13 ]
  %16 = zext i1 %15 to i32, !dbg !55
  %17 = load ptr, ptr %6, align 8, !dbg !56
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !56
  store i8 0, ptr %18, align 1, !dbg !57
  %19 = load ptr, ptr %8, align 8, !dbg !58
  %20 = icmp ne ptr %19, null, !dbg !60
  br i1 %20, label %21, label %42, !dbg !61

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 8, !dbg !62
  %23 = getelementptr inbounds i8, ptr %22, i64 0, !dbg !62
  %24 = load i8, ptr %23, align 1, !dbg !62
  %25 = sext i8 %24 to i32, !dbg !62
  %26 = icmp ne i32 %25, 0, !dbg !63
  br i1 %26, label %27, label %42, !dbg !64

27:                                               ; preds = %21
  %28 = load ptr, ptr %8, align 8, !dbg !65
  %29 = call i64 @strlen(ptr noundef %28) #6, !dbg !67
  %30 = load i64, ptr %10, align 8, !dbg !68
  %31 = add i64 %30, %29, !dbg !68
  store i64 %31, ptr %10, align 8, !dbg !68
  %32 = load i64, ptr %10, align 8, !dbg !69
  %33 = add i64 %32, 1, !dbg !71
  %34 = load i64, ptr %7, align 8, !dbg !72
  %35 = icmp uge i64 %33, %34, !dbg !73
  br i1 %35, label %36, label %38, !dbg !74

36:                                               ; preds = %27
  %37 = load ptr, ptr %6, align 8, !dbg !75
  store ptr %37, ptr %5, align 8, !dbg !77
  br label %68, !dbg !77

38:                                               ; preds = %27
  %39 = load ptr, ptr %6, align 8, !dbg !78
  %40 = load ptr, ptr %8, align 8, !dbg !79
  %41 = call ptr @strcat(ptr noundef %39, ptr noundef %40) #7, !dbg !80
  br label %42, !dbg !81

42:                                               ; preds = %38, %21, %14
  %43 = load ptr, ptr %9, align 8, !dbg !82
  %44 = icmp ne ptr %43, null, !dbg !84
  br i1 %44, label %45, label %66, !dbg !85

45:                                               ; preds = %42
  %46 = load ptr, ptr %9, align 8, !dbg !86
  %47 = getelementptr inbounds i8, ptr %46, i64 0, !dbg !86
  %48 = load i8, ptr %47, align 1, !dbg !86
  %49 = sext i8 %48 to i32, !dbg !86
  %50 = icmp ne i32 %49, 0, !dbg !87
  br i1 %50, label %51, label %66, !dbg !88

51:                                               ; preds = %45
  %52 = load ptr, ptr %9, align 8, !dbg !89
  %53 = call i64 @strlen(ptr noundef %52) #6, !dbg !91
  %54 = load i64, ptr %10, align 8, !dbg !92
  %55 = add i64 %54, %53, !dbg !92
  store i64 %55, ptr %10, align 8, !dbg !92
  %56 = load i64, ptr %10, align 8, !dbg !93
  %57 = add i64 %56, 1, !dbg !95
  %58 = load i64, ptr %7, align 8, !dbg !96
  %59 = icmp uge i64 %57, %58, !dbg !97
  br i1 %59, label %60, label %62, !dbg !98

60:                                               ; preds = %51
  %61 = load ptr, ptr %6, align 8, !dbg !99
  store ptr %61, ptr %5, align 8, !dbg !101
  br label %68, !dbg !101

62:                                               ; preds = %51
  %63 = load ptr, ptr %6, align 8, !dbg !102
  %64 = load ptr, ptr %9, align 8, !dbg !103
  %65 = call ptr @strcat(ptr noundef %63, ptr noundef %64) #7, !dbg !104
  br label %66, !dbg !105

66:                                               ; preds = %62, %45, %42
  %67 = load ptr, ptr %6, align 8, !dbg !106
  store ptr %67, ptr %5, align 8, !dbg !107
  br label %68, !dbg !107

68:                                               ; preds = %66, %60, %36
  %69 = load ptr, ptr %5, align 8, !dbg !108
  ret ptr %69, !dbg !108
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abortf_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !109 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !113, metadata !DIExpression()), !dbg !114
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !117, metadata !DIExpression()), !dbg !118
  %7 = load ptr, ptr %4, align 8, !dbg !119
  %8 = load ptr, ptr %5, align 8, !dbg !120
  %9 = load i32, ptr %6, align 4, !dbg !121
  call void @log_abort_(ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !122
  call void @abort() #8, !dbg !123
  unreachable, !dbg !123
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @fconcat(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !124 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !125, metadata !DIExpression()), !dbg !126
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !127, metadata !DIExpression()), !dbg !128
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !129, metadata !DIExpression()), !dbg !130
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !131, metadata !DIExpression()), !dbg !132
  %9 = load i64, ptr %6, align 8, !dbg !133
  %10 = icmp ne i64 %9, 8, !dbg !133
  br i1 %10, label %12, label %11, !dbg !133

11:                                               ; preds = %4
  call void @abortf_(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 81), !dbg !133
  br label %12, !dbg !133

12:                                               ; preds = %11, %4
  %13 = phi i1 [ true, %4 ], [ false, %11 ]
  %14 = zext i1 %13 to i32, !dbg !133
  %15 = load ptr, ptr %5, align 8, !dbg !134
  %16 = load i64, ptr %6, align 8, !dbg !135
  %17 = load ptr, ptr %7, align 8, !dbg !136
  %18 = load ptr, ptr %8, align 8, !dbg !137
  %19 = call ptr @concat(ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18), !dbg !138
  %20 = call ptr @__fconv(ptr noundef %19), !dbg !139
  ret ptr %20, !dbg !140
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @__fconv(ptr noundef %0) #0 !dbg !141 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !144, metadata !DIExpression()), !dbg !145
  %3 = load ptr, ptr %2, align 8, !dbg !146
  ret ptr %3, !dbg !147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @fconv(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !148 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !153, metadata !DIExpression()), !dbg !154
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !155, metadata !DIExpression()), !dbg !156
  %7 = load i64, ptr %5, align 8, !dbg !157
  %8 = icmp ne i64 %7, 8, !dbg !157
  br i1 %8, label %10, label %9, !dbg !157

9:                                                ; preds = %3
  call void @abortf_(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 87), !dbg !157
  br label %10, !dbg !157

10:                                               ; preds = %9, %3
  %11 = phi i1 [ true, %3 ], [ false, %9 ]
  %12 = zext i1 %11 to i32, !dbg !157
  %13 = load ptr, ptr %4, align 8, !dbg !158
  %14 = load i64, ptr %5, align 8, !dbg !159
  %15 = load ptr, ptr %6, align 8, !dbg !160
  %16 = call ptr @concat(ptr noundef %13, i64 noundef %14, ptr noundef %15, ptr noundef @.str.2), !dbg !161
  %17 = call ptr @__fconv(ptr noundef %16), !dbg !162
  ret ptr %17, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @fslash(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !164 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !165, metadata !DIExpression()), !dbg !166
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !167, metadata !DIExpression()), !dbg !168
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !169, metadata !DIExpression()), !dbg !170
  %7 = load i64, ptr %5, align 8, !dbg !171
  %8 = icmp ne i64 %7, 8, !dbg !171
  br i1 %8, label %10, label %9, !dbg !171

9:                                                ; preds = %3
  call void @abortf_(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 103), !dbg !171
  br label %10, !dbg !171

10:                                               ; preds = %9, %3
  %11 = phi i1 [ true, %3 ], [ false, %9 ]
  %12 = zext i1 %11 to i32, !dbg !171
  %13 = load ptr, ptr %4, align 8, !dbg !172
  %14 = load i64, ptr %5, align 8, !dbg !173
  %15 = load ptr, ptr %6, align 8, !dbg !174
  %16 = call ptr @concat(ptr noundef %13, i64 noundef %14, ptr noundef %15, ptr noundef null), !dbg !175
  %17 = call ptr @__fslash(ptr noundef %16), !dbg !176
  ret ptr %17, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @__fslash(ptr noundef %0) #0 !dbg !178 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata ptr %3, metadata !181, metadata !DIExpression()), !dbg !182
  store i32 0, ptr %3, align 4, !dbg !183
  br label %4, !dbg !185

4:                                                ; preds = %26, %1
  %5 = load ptr, ptr %2, align 8, !dbg !186
  %6 = load i32, ptr %3, align 4, !dbg !188
  %7 = sext i32 %6 to i64, !dbg !186
  %8 = getelementptr inbounds i8, ptr %5, i64 %7, !dbg !186
  %9 = load i8, ptr %8, align 1, !dbg !186
  %10 = sext i8 %9 to i32, !dbg !186
  %11 = icmp ne i32 %10, 0, !dbg !189
  br i1 %11, label %12, label %29, !dbg !190

12:                                               ; preds = %4
  %13 = load ptr, ptr %2, align 8, !dbg !191
  %14 = load i32, ptr %3, align 4, !dbg !193
  %15 = sext i32 %14 to i64, !dbg !191
  %16 = getelementptr inbounds i8, ptr %13, i64 %15, !dbg !191
  %17 = load i8, ptr %16, align 1, !dbg !191
  %18 = sext i8 %17 to i32, !dbg !191
  %19 = icmp eq i32 %18, 92, !dbg !194
  br i1 %19, label %20, label %25, !dbg !195

20:                                               ; preds = %12
  %21 = load ptr, ptr %2, align 8, !dbg !196
  %22 = load i32, ptr %3, align 4, !dbg !197
  %23 = sext i32 %22 to i64, !dbg !196
  %24 = getelementptr inbounds i8, ptr %21, i64 %23, !dbg !196
  store i8 47, ptr %24, align 1, !dbg !198
  br label %25, !dbg !196

25:                                               ; preds = %20, %12
  br label %26, !dbg !199

26:                                               ; preds = %25
  %27 = load i32, ptr %3, align 4, !dbg !200
  %28 = add nsw i32 %27, 1, !dbg !200
  store i32 %28, ptr %3, align 4, !dbg !200
  br label %4, !dbg !201, !llvm.loop !202

29:                                               ; preds = %4
  %30 = load ptr, ptr %2, align 8, !dbg !205
  ret ptr %30, !dbg !206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_ext(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !207 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !211
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !212, metadata !DIExpression()), !dbg !213
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata ptr %8, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr %9, metadata !218, metadata !DIExpression()), !dbg !219
  %11 = load i64, ptr %6, align 8, !dbg !220
  %12 = icmp ne i64 %11, 8, !dbg !220
  br i1 %12, label %14, label %13, !dbg !220

13:                                               ; preds = %3
  call void @abortf_(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 111), !dbg !220
  br label %14, !dbg !220

14:                                               ; preds = %13, %3
  %15 = phi i1 [ true, %3 ], [ false, %13 ]
  %16 = zext i1 %15 to i32, !dbg !220
  store i64 0, ptr %8, align 8, !dbg !221
  store i64 0, ptr %9, align 8, !dbg !223
  br label %17, !dbg !224

17:                                               ; preds = %44, %14
  %18 = load ptr, ptr %7, align 8, !dbg !225
  %19 = load i64, ptr %8, align 8, !dbg !227
  %20 = getelementptr inbounds i8, ptr %18, i64 %19, !dbg !225
  %21 = load i8, ptr %20, align 1, !dbg !225
  %22 = sext i8 %21 to i32, !dbg !225
  %23 = icmp ne i32 %22, 0, !dbg !228
  br i1 %23, label %24, label %31, !dbg !229

24:                                               ; preds = %17
  %25 = load ptr, ptr %7, align 8, !dbg !230
  %26 = load i64, ptr %8, align 8, !dbg !231
  %27 = getelementptr inbounds i8, ptr %25, i64 %26, !dbg !230
  %28 = load i8, ptr %27, align 1, !dbg !230
  %29 = sext i8 %28 to i32, !dbg !230
  %30 = icmp ne i32 %29, 63, !dbg !232
  br label %31

31:                                               ; preds = %24, %17
  %32 = phi i1 [ false, %17 ], [ %30, %24 ], !dbg !233
  br i1 %32, label %33, label %47, !dbg !234

33:                                               ; preds = %31
  %34 = load ptr, ptr %7, align 8, !dbg !235
  %35 = load i64, ptr %8, align 8, !dbg !238
  %36 = getelementptr inbounds i8, ptr %34, i64 %35, !dbg !235
  %37 = load i8, ptr %36, align 1, !dbg !235
  %38 = sext i8 %37 to i32, !dbg !235
  %39 = icmp eq i32 %38, 46, !dbg !239
  br i1 %39, label %40, label %43, !dbg !240

40:                                               ; preds = %33
  %41 = load i64, ptr %8, align 8, !dbg !241
  %42 = add i64 %41, 1, !dbg !243
  store i64 %42, ptr %9, align 8, !dbg !244
  br label %43, !dbg !245

43:                                               ; preds = %40, %33
  br label %44, !dbg !246

44:                                               ; preds = %43
  %45 = load i64, ptr %8, align 8, !dbg !247
  %46 = add i64 %45, 1, !dbg !247
  store i64 %46, ptr %8, align 8, !dbg !247
  br label %17, !dbg !248, !llvm.loop !249

47:                                               ; preds = %31
  %48 = load i64, ptr %9, align 8, !dbg !251
  %49 = icmp ne i64 %48, 0, !dbg !253
  br i1 %49, label %50, label %72, !dbg !254

50:                                               ; preds = %47
  %51 = load i64, ptr %8, align 8, !dbg !255
  %52 = load i64, ptr %9, align 8, !dbg !256
  %53 = icmp ugt i64 %51, %52, !dbg !257
  br i1 %53, label %54, label %72, !dbg !258

54:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata ptr %10, metadata !259, metadata !DIExpression()), !dbg !262
  %55 = load i64, ptr %8, align 8, !dbg !263
  %56 = load i64, ptr %9, align 8, !dbg !264
  %57 = sub i64 %55, %56, !dbg !265
  store i64 %57, ptr %10, align 8, !dbg !262
  %58 = load i64, ptr %10, align 8, !dbg !266
  %59 = load i64, ptr %6, align 8, !dbg !268
  %60 = icmp ult i64 %58, %59, !dbg !269
  br i1 %60, label %61, label %71, !dbg !270

61:                                               ; preds = %54
  %62 = load ptr, ptr %5, align 8, !dbg !271
  %63 = getelementptr inbounds i8, ptr %62, i64 0, !dbg !271
  store i8 0, ptr %63, align 1, !dbg !273
  %64 = load ptr, ptr %5, align 8, !dbg !274
  %65 = load ptr, ptr %7, align 8, !dbg !275
  %66 = load i64, ptr %9, align 8, !dbg !276
  %67 = getelementptr inbounds i8, ptr %65, i64 %66, !dbg !275
  %68 = load i64, ptr %6, align 8, !dbg !277
  %69 = call ptr @strncat(ptr noundef %64, ptr noundef %67, i64 noundef %68) #7, !dbg !278
  %70 = load ptr, ptr %5, align 8, !dbg !279
  store ptr %70, ptr %4, align 8, !dbg !280
  br label %73, !dbg !280

71:                                               ; preds = %54
  br label %72, !dbg !281

72:                                               ; preds = %71, %50, %47
  store ptr @.str.2, ptr %4, align 8, !dbg !282
  br label %73, !dbg !282

73:                                               ; preds = %72, %61
  %74 = load ptr, ptr %4, align 8, !dbg !283
  ret ptr %74, !dbg !283
}

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_abort_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !284 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !285, metadata !DIExpression()), !dbg !286
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !287, metadata !DIExpression()), !dbg !288
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !289, metadata !DIExpression()), !dbg !290
  %7 = load ptr, ptr @stderr, align 8, !dbg !291
  %8 = load ptr, ptr %4, align 8, !dbg !292
  %9 = load ptr, ptr %5, align 8, !dbg !293
  %10 = load i32, ptr %6, align 4, !dbg !294
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.3, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !295
  %12 = load ptr, ptr @stderr, align 8, !dbg !296
  %13 = call i32 @fflush(ptr noundef %12), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noreturn nounwind
declare void @abort() #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

declare i32 @fflush(ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/htsconcat.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "18e7cae0dff5edf257df6209e8c4c8a5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 1)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !19, line: 91, type: !20, isLocal: true, isDefinition: true)
!19 = !DIFile(filename: "./src/htssafe.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "0a24d1c0939efbe916010d30091bc9cc")
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 20)
!23 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !24, globals: !26, splitDebugInlining: false, nameTableKind: None)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !{!0, !7, !12, !17}
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 16.0.0"}
!35 = distinct !DISubprogram(name: "concat", scope: !2, file: !2, line: 43, type: !36, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !38, !39, !42, !42}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 46, baseType: !41)
!40 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!44 = !{}
!45 = !DILocalVariable(name: "catbuff", arg: 1, scope: !35, file: !2, line: 43, type: !38)
!46 = !DILocation(line: 43, column: 31, scope: !35)
!47 = !DILocalVariable(name: "size", arg: 2, scope: !35, file: !2, line: 43, type: !39)
!48 = !DILocation(line: 43, column: 47, scope: !35)
!49 = !DILocalVariable(name: "a", arg: 3, scope: !35, file: !2, line: 43, type: !42)
!50 = !DILocation(line: 43, column: 65, scope: !35)
!51 = !DILocalVariable(name: "b", arg: 4, scope: !35, file: !2, line: 43, type: !42)
!52 = !DILocation(line: 43, column: 80, scope: !35)
!53 = !DILocalVariable(name: "max", scope: !35, file: !2, line: 44, type: !39)
!54 = !DILocation(line: 44, column: 10, scope: !35)
!55 = !DILocation(line: 46, column: 3, scope: !35)
!56 = !DILocation(line: 48, column: 3, scope: !35)
!57 = !DILocation(line: 48, column: 14, scope: !35)
!58 = !DILocation(line: 49, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !35, file: !2, line: 49, column: 7)
!60 = !DILocation(line: 49, column: 9, scope: !59)
!61 = !DILocation(line: 49, column: 17, scope: !59)
!62 = !DILocation(line: 49, column: 20, scope: !59)
!63 = !DILocation(line: 49, column: 25, scope: !59)
!64 = !DILocation(line: 49, column: 7, scope: !35)
!65 = !DILocation(line: 50, column: 19, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !2, line: 49, column: 34)
!67 = !DILocation(line: 50, column: 12, scope: !66)
!68 = !DILocation(line: 50, column: 9, scope: !66)
!69 = !DILocation(line: 51, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !2, line: 51, column: 9)
!71 = !DILocation(line: 51, column: 13, scope: !70)
!72 = !DILocation(line: 51, column: 20, scope: !70)
!73 = !DILocation(line: 51, column: 17, scope: !70)
!74 = !DILocation(line: 51, column: 9, scope: !66)
!75 = !DILocation(line: 52, column: 14, scope: !76)
!76 = distinct !DILexicalBlock(scope: !70, file: !2, line: 51, column: 26)
!77 = !DILocation(line: 52, column: 7, scope: !76)
!78 = !DILocation(line: 54, column: 12, scope: !66)
!79 = !DILocation(line: 54, column: 21, scope: !66)
!80 = !DILocation(line: 54, column: 5, scope: !66)
!81 = !DILocation(line: 55, column: 3, scope: !66)
!82 = !DILocation(line: 56, column: 7, scope: !83)
!83 = distinct !DILexicalBlock(scope: !35, file: !2, line: 56, column: 7)
!84 = !DILocation(line: 56, column: 9, scope: !83)
!85 = !DILocation(line: 56, column: 17, scope: !83)
!86 = !DILocation(line: 56, column: 20, scope: !83)
!87 = !DILocation(line: 56, column: 25, scope: !83)
!88 = !DILocation(line: 56, column: 7, scope: !35)
!89 = !DILocation(line: 57, column: 19, scope: !90)
!90 = distinct !DILexicalBlock(scope: !83, file: !2, line: 56, column: 34)
!91 = !DILocation(line: 57, column: 12, scope: !90)
!92 = !DILocation(line: 57, column: 9, scope: !90)
!93 = !DILocation(line: 58, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !2, line: 58, column: 9)
!95 = !DILocation(line: 58, column: 13, scope: !94)
!96 = !DILocation(line: 58, column: 20, scope: !94)
!97 = !DILocation(line: 58, column: 17, scope: !94)
!98 = !DILocation(line: 58, column: 9, scope: !90)
!99 = !DILocation(line: 59, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !94, file: !2, line: 58, column: 26)
!101 = !DILocation(line: 59, column: 7, scope: !100)
!102 = !DILocation(line: 61, column: 12, scope: !90)
!103 = !DILocation(line: 61, column: 21, scope: !90)
!104 = !DILocation(line: 61, column: 5, scope: !90)
!105 = !DILocation(line: 62, column: 3, scope: !90)
!106 = !DILocation(line: 63, column: 10, scope: !35)
!107 = !DILocation(line: 63, column: 3, scope: !35)
!108 = !DILocation(line: 64, column: 1, scope: !35)
!109 = distinct !DISubprogram(name: "abortf_", scope: !19, file: !19, line: 95, type: !110, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !44)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !42, !42, !112}
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !DILocalVariable(name: "exp", arg: 1, scope: !109, file: !19, line: 95, type: !42)
!114 = !DILocation(line: 95, column: 44, scope: !109)
!115 = !DILocalVariable(name: "file", arg: 2, scope: !109, file: !19, line: 95, type: !42)
!116 = !DILocation(line: 95, column: 61, scope: !109)
!117 = !DILocalVariable(name: "line", arg: 3, scope: !109, file: !19, line: 95, type: !112)
!118 = !DILocation(line: 95, column: 71, scope: !109)
!119 = !DILocation(line: 99, column: 14, scope: !109)
!120 = !DILocation(line: 99, column: 19, scope: !109)
!121 = !DILocation(line: 99, column: 25, scope: !109)
!122 = !DILocation(line: 99, column: 3, scope: !109)
!123 = !DILocation(line: 100, column: 3, scope: !109)
!124 = distinct !DISubprogram(name: "fconcat", scope: !2, file: !2, line: 80, type: !36, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!125 = !DILocalVariable(name: "catbuff", arg: 1, scope: !124, file: !2, line: 80, type: !38)
!126 = !DILocation(line: 80, column: 32, scope: !124)
!127 = !DILocalVariable(name: "size", arg: 2, scope: !124, file: !2, line: 80, type: !39)
!128 = !DILocation(line: 80, column: 48, scope: !124)
!129 = !DILocalVariable(name: "a", arg: 3, scope: !124, file: !2, line: 80, type: !42)
!130 = !DILocation(line: 80, column: 66, scope: !124)
!131 = !DILocalVariable(name: "b", arg: 4, scope: !124, file: !2, line: 80, type: !42)
!132 = !DILocation(line: 80, column: 81, scope: !124)
!133 = !DILocation(line: 81, column: 3, scope: !124)
!134 = !DILocation(line: 82, column: 25, scope: !124)
!135 = !DILocation(line: 82, column: 34, scope: !124)
!136 = !DILocation(line: 82, column: 40, scope: !124)
!137 = !DILocation(line: 82, column: 43, scope: !124)
!138 = !DILocation(line: 82, column: 18, scope: !124)
!139 = !DILocation(line: 82, column: 10, scope: !124)
!140 = !DILocation(line: 82, column: 3, scope: !124)
!141 = distinct !DISubprogram(name: "__fconv", scope: !2, file: !2, line: 67, type: !142, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !44)
!142 = !DISubroutineType(types: !143)
!143 = !{!38, !38}
!144 = !DILocalVariable(name: "a", arg: 1, scope: !141, file: !2, line: 67, type: !38)
!145 = !DILocation(line: 67, column: 28, scope: !141)
!146 = !DILocation(line: 75, column: 10, scope: !141)
!147 = !DILocation(line: 75, column: 3, scope: !141)
!148 = distinct !DISubprogram(name: "fconv", scope: !2, file: !2, line: 86, type: !149, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!149 = !DISubroutineType(types: !150)
!150 = !{!38, !38, !39, !42}
!151 = !DILocalVariable(name: "catbuff", arg: 1, scope: !148, file: !2, line: 86, type: !38)
!152 = !DILocation(line: 86, column: 30, scope: !148)
!153 = !DILocalVariable(name: "size", arg: 2, scope: !148, file: !2, line: 86, type: !39)
!154 = !DILocation(line: 86, column: 46, scope: !148)
!155 = !DILocalVariable(name: "a", arg: 3, scope: !148, file: !2, line: 86, type: !42)
!156 = !DILocation(line: 86, column: 64, scope: !148)
!157 = !DILocation(line: 87, column: 3, scope: !148)
!158 = !DILocation(line: 88, column: 25, scope: !148)
!159 = !DILocation(line: 88, column: 34, scope: !148)
!160 = !DILocation(line: 88, column: 40, scope: !148)
!161 = !DILocation(line: 88, column: 18, scope: !148)
!162 = !DILocation(line: 88, column: 10, scope: !148)
!163 = !DILocation(line: 88, column: 3, scope: !148)
!164 = distinct !DISubprogram(name: "fslash", scope: !2, file: !2, line: 102, type: !149, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!165 = !DILocalVariable(name: "catbuff", arg: 1, scope: !164, file: !2, line: 102, type: !38)
!166 = !DILocation(line: 102, column: 20, scope: !164)
!167 = !DILocalVariable(name: "size", arg: 2, scope: !164, file: !2, line: 102, type: !39)
!168 = !DILocation(line: 102, column: 36, scope: !164)
!169 = !DILocalVariable(name: "a", arg: 3, scope: !164, file: !2, line: 102, type: !42)
!170 = !DILocation(line: 102, column: 54, scope: !164)
!171 = !DILocation(line: 103, column: 3, scope: !164)
!172 = !DILocation(line: 104, column: 26, scope: !164)
!173 = !DILocation(line: 104, column: 35, scope: !164)
!174 = !DILocation(line: 104, column: 41, scope: !164)
!175 = !DILocation(line: 104, column: 19, scope: !164)
!176 = !DILocation(line: 104, column: 10, scope: !164)
!177 = !DILocation(line: 104, column: 3, scope: !164)
!178 = distinct !DISubprogram(name: "__fslash", scope: !2, file: !2, line: 92, type: !142, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !44)
!179 = !DILocalVariable(name: "a", arg: 1, scope: !178, file: !2, line: 92, type: !38)
!180 = !DILocation(line: 92, column: 29, scope: !178)
!181 = !DILocalVariable(name: "i", scope: !178, file: !2, line: 93, type: !112)
!182 = !DILocation(line: 93, column: 7, scope: !178)
!183 = !DILocation(line: 95, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !2, line: 95, column: 3)
!185 = !DILocation(line: 95, column: 7, scope: !184)
!186 = !DILocation(line: 95, column: 14, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !2, line: 95, column: 3)
!188 = !DILocation(line: 95, column: 16, scope: !187)
!189 = !DILocation(line: 95, column: 19, scope: !187)
!190 = !DILocation(line: 95, column: 3, scope: !184)
!191 = !DILocation(line: 96, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !2, line: 96, column: 9)
!193 = !DILocation(line: 96, column: 11, scope: !192)
!194 = !DILocation(line: 96, column: 14, scope: !192)
!195 = !DILocation(line: 96, column: 9, scope: !187)
!196 = !DILocation(line: 97, column: 7, scope: !192)
!197 = !DILocation(line: 97, column: 9, scope: !192)
!198 = !DILocation(line: 97, column: 12, scope: !192)
!199 = !DILocation(line: 96, column: 17, scope: !192)
!200 = !DILocation(line: 95, column: 26, scope: !187)
!201 = !DILocation(line: 95, column: 3, scope: !187)
!202 = distinct !{!202, !190, !203, !204}
!203 = !DILocation(line: 97, column: 14, scope: !184)
!204 = !{!"llvm.loop.mustprogress"}
!205 = !DILocation(line: 98, column: 10, scope: !178)
!206 = !DILocation(line: 98, column: 3, scope: !178)
!207 = distinct !DISubprogram(name: "get_ext", scope: !2, file: !2, line: 108, type: !208, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !44)
!208 = !DISubroutineType(types: !209)
!209 = !{!42, !38, !39, !42}
!210 = !DILocalVariable(name: "catbuff", arg: 1, scope: !207, file: !2, line: 108, type: !38)
!211 = !DILocation(line: 108, column: 38, scope: !207)
!212 = !DILocalVariable(name: "size", arg: 2, scope: !207, file: !2, line: 108, type: !39)
!213 = !DILocation(line: 108, column: 54, scope: !207)
!214 = !DILocalVariable(name: "fil", arg: 3, scope: !207, file: !2, line: 108, type: !42)
!215 = !DILocation(line: 108, column: 72, scope: !207)
!216 = !DILocalVariable(name: "i", scope: !207, file: !2, line: 109, type: !39)
!217 = !DILocation(line: 109, column: 10, scope: !207)
!218 = !DILocalVariable(name: "last", scope: !207, file: !2, line: 109, type: !39)
!219 = !DILocation(line: 109, column: 13, scope: !207)
!220 = !DILocation(line: 111, column: 3, scope: !207)
!221 = !DILocation(line: 113, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !207, file: !2, line: 113, column: 3)
!223 = !DILocation(line: 113, column: 19, scope: !222)
!224 = !DILocation(line: 113, column: 7, scope: !222)
!225 = !DILocation(line: 113, column: 25, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !2, line: 113, column: 3)
!227 = !DILocation(line: 113, column: 29, scope: !226)
!228 = !DILocation(line: 113, column: 32, scope: !226)
!229 = !DILocation(line: 113, column: 40, scope: !226)
!230 = !DILocation(line: 113, column: 43, scope: !226)
!231 = !DILocation(line: 113, column: 47, scope: !226)
!232 = !DILocation(line: 113, column: 50, scope: !226)
!233 = !DILocation(line: 0, scope: !226)
!234 = !DILocation(line: 113, column: 3, scope: !222)
!235 = !DILocation(line: 114, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 114, column: 9)
!237 = distinct !DILexicalBlock(scope: !226, file: !2, line: 113, column: 64)
!238 = !DILocation(line: 114, column: 13, scope: !236)
!239 = !DILocation(line: 114, column: 16, scope: !236)
!240 = !DILocation(line: 114, column: 9, scope: !237)
!241 = !DILocation(line: 115, column: 14, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !2, line: 114, column: 24)
!243 = !DILocation(line: 115, column: 16, scope: !242)
!244 = !DILocation(line: 115, column: 12, scope: !242)
!245 = !DILocation(line: 116, column: 5, scope: !242)
!246 = !DILocation(line: 117, column: 3, scope: !237)
!247 = !DILocation(line: 113, column: 60, scope: !226)
!248 = !DILocation(line: 113, column: 3, scope: !226)
!249 = distinct !{!249, !234, !250, !204}
!250 = !DILocation(line: 117, column: 3, scope: !222)
!251 = !DILocation(line: 119, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !207, file: !2, line: 119, column: 7)
!253 = !DILocation(line: 119, column: 12, scope: !252)
!254 = !DILocation(line: 119, column: 17, scope: !252)
!255 = !DILocation(line: 119, column: 20, scope: !252)
!256 = !DILocation(line: 119, column: 24, scope: !252)
!257 = !DILocation(line: 119, column: 22, scope: !252)
!258 = !DILocation(line: 119, column: 7, scope: !207)
!259 = !DILocalVariable(name: "len", scope: !260, file: !2, line: 120, type: !261)
!260 = distinct !DILexicalBlock(scope: !252, file: !2, line: 119, column: 30)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!262 = !DILocation(line: 120, column: 18, scope: !260)
!263 = !DILocation(line: 120, column: 24, scope: !260)
!264 = !DILocation(line: 120, column: 28, scope: !260)
!265 = !DILocation(line: 120, column: 26, scope: !260)
!266 = !DILocation(line: 121, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !2, line: 121, column: 9)
!268 = !DILocation(line: 121, column: 15, scope: !267)
!269 = !DILocation(line: 121, column: 13, scope: !267)
!270 = !DILocation(line: 121, column: 9, scope: !260)
!271 = !DILocation(line: 122, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !2, line: 121, column: 21)
!273 = !DILocation(line: 122, column: 18, scope: !272)
!274 = !DILocation(line: 123, column: 15, scope: !272)
!275 = !DILocation(line: 123, column: 25, scope: !272)
!276 = !DILocation(line: 123, column: 29, scope: !272)
!277 = !DILocation(line: 123, column: 36, scope: !272)
!278 = !DILocation(line: 123, column: 7, scope: !272)
!279 = !DILocation(line: 124, column: 14, scope: !272)
!280 = !DILocation(line: 124, column: 7, scope: !272)
!281 = !DILocation(line: 126, column: 3, scope: !260)
!282 = !DILocation(line: 127, column: 3, scope: !207)
!283 = !DILocation(line: 128, column: 1, scope: !207)
!284 = distinct !DISubprogram(name: "log_abort_", scope: !19, file: !19, line: 90, type: !110, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !44)
!285 = !DILocalVariable(name: "msg", arg: 1, scope: !284, file: !19, line: 90, type: !42)
!286 = !DILocation(line: 90, column: 47, scope: !284)
!287 = !DILocalVariable(name: "file", arg: 2, scope: !284, file: !19, line: 90, type: !42)
!288 = !DILocation(line: 90, column: 64, scope: !284)
!289 = !DILocalVariable(name: "line", arg: 3, scope: !284, file: !19, line: 90, type: !112)
!290 = !DILocation(line: 90, column: 74, scope: !284)
!291 = !DILocation(line: 91, column: 11, scope: !284)
!292 = !DILocation(line: 91, column: 43, scope: !284)
!293 = !DILocation(line: 91, column: 48, scope: !284)
!294 = !DILocation(line: 91, column: 54, scope: !284)
!295 = !DILocation(line: 91, column: 3, scope: !284)
!296 = !DILocation(line: 92, column: 10, scope: !284)
!297 = !DILocation(line: 92, column: 3, scope: !284)
!298 = !DILocation(line: 93, column: 1, scope: !284)
