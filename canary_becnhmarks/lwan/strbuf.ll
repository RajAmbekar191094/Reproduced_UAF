; ModuleID = '/home/raj/lwan/common/strbuf.c'
source_filename = "/home/raj/lwan/common/strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf_t_ = type { %union.anon, %struct.anon, i32 }
%union.anon = type { ptr }
%struct.anon = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_init_with_size(ptr noundef %0, i64 noundef %1) #0 !dbg !26 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !51, metadata !DIExpression()), !dbg !52
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !53, metadata !DIExpression()), !dbg !54
  %6 = load ptr, ptr %4, align 8, !dbg !55
  %7 = icmp ne ptr %6, null, !dbg !55
  %8 = xor i1 %7, true, !dbg !55
  %9 = zext i1 %8 to i32, !dbg !55
  %10 = sext i32 %9 to i64, !dbg !55
  %11 = icmp ne i64 %10, 0, !dbg !55
  br i1 %11, label %12, label %13, !dbg !57

12:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !58
  br label %31, !dbg !58

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !59
  call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 32, i1 false), !dbg !60
  %15 = load ptr, ptr %4, align 8, !dbg !61
  %16 = load i64, ptr %5, align 8, !dbg !61
  %17 = call zeroext i1 @grow_buffer_if_needed(ptr noundef %15, i64 noundef %16), !dbg !61
  %18 = xor i1 %17, true, !dbg !61
  %19 = zext i1 %18 to i32, !dbg !61
  %20 = sext i32 %19 to i64, !dbg !61
  %21 = icmp ne i64 %20, 0, !dbg !61
  br i1 %21, label %22, label %23, !dbg !63

22:                                               ; preds = %13
  store i1 false, ptr %3, align 1, !dbg !64
  br label %31, !dbg !64

23:                                               ; preds = %13
  %24 = load ptr, ptr %4, align 8, !dbg !65
  %25 = getelementptr inbounds %struct.strbuf_t_, ptr %24, i32 0, i32 1, !dbg !66
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1, !dbg !67
  store i64 0, ptr %26, align 8, !dbg !68
  %27 = load ptr, ptr %4, align 8, !dbg !69
  %28 = getelementptr inbounds %struct.strbuf_t_, ptr %27, i32 0, i32 0, !dbg !70
  %29 = load ptr, ptr %28, align 8, !dbg !71
  %30 = getelementptr inbounds i8, ptr %29, i64 0, !dbg !69
  store i8 0, ptr %30, align 1, !dbg !72
  store i1 true, ptr %3, align 1, !dbg !73
  br label %31, !dbg !73

31:                                               ; preds = %23, %22, %12
  %32 = load i1, ptr %3, align 1, !dbg !74
  ret i1 %32, !dbg !74
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @grow_buffer_if_needed(ptr noundef %0, i64 noundef %1) #0 !dbg !75 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !76, metadata !DIExpression()), !dbg !77
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !78, metadata !DIExpression()), !dbg !79
  %12 = load ptr, ptr %6, align 8, !dbg !80
  %13 = getelementptr inbounds %struct.strbuf_t_, ptr %12, i32 0, i32 2, !dbg !82
  %14 = load i32, ptr %13, align 8, !dbg !82
  %15 = and i32 %14, 1, !dbg !83
  %16 = icmp ne i32 %15, 0, !dbg !83
  br i1 %16, label %17, label %66, !dbg !84

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !85, metadata !DIExpression()), !dbg !87
  %18 = load i64, ptr %7, align 8, !dbg !88
  %19 = add i64 %18, 1, !dbg !89
  %20 = load ptr, ptr %6, align 8, !dbg !90
  %21 = getelementptr inbounds %struct.strbuf_t_, ptr %20, i32 0, i32 1, !dbg !91
  %22 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 1, !dbg !92
  %23 = load i64, ptr %22, align 8, !dbg !92
  store i64 %19, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !93, metadata !DIExpression()), !dbg !97
  store i64 %23, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !99, metadata !DIExpression()), !dbg !100
  %24 = load i64, ptr %3, align 8, !dbg !101
  %25 = load i64, ptr %4, align 8, !dbg !102
  %26 = icmp ugt i64 %24, %25, !dbg !103
  br i1 %26, label %27, label %29, !dbg !104

27:                                               ; preds = %17
  %28 = load i64, ptr %3, align 8, !dbg !105
  br label %31, !dbg !104

29:                                               ; preds = %17
  %30 = load i64, ptr %4, align 8, !dbg !106
  br label %31, !dbg !104

31:                                               ; preds = %27, %29
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ], !dbg !104
  %33 = call i64 @find_next_power_of_two(i64 noundef %32), !dbg !107
  store i64 %33, ptr %8, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %9, metadata !108, metadata !DIExpression()), !dbg !109
  %34 = load i64, ptr %8, align 8, !dbg !110
  %35 = call noalias ptr @malloc(i64 noundef %34) #10, !dbg !111
  store ptr %35, ptr %9, align 8, !dbg !109
  %36 = load ptr, ptr %9, align 8, !dbg !112
  %37 = icmp ne ptr %36, null, !dbg !112
  br i1 %37, label %39, label %38, !dbg !114

38:                                               ; preds = %31
  store i1 false, ptr %5, align 1, !dbg !115
  br label %101, !dbg !115

39:                                               ; preds = %31
  %40 = load ptr, ptr %9, align 8, !dbg !116
  %41 = load ptr, ptr %6, align 8, !dbg !117
  %42 = getelementptr inbounds %struct.strbuf_t_, ptr %41, i32 0, i32 0, !dbg !118
  %43 = load ptr, ptr %42, align 8, !dbg !119
  %44 = load ptr, ptr %6, align 8, !dbg !120
  %45 = getelementptr inbounds %struct.strbuf_t_, ptr %44, i32 0, i32 1, !dbg !121
  %46 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 1, !dbg !122
  %47 = load i64, ptr %46, align 8, !dbg !122
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr align 1 %43, i64 %47, i1 false), !dbg !123
  %48 = load ptr, ptr %9, align 8, !dbg !124
  %49 = load ptr, ptr %6, align 8, !dbg !125
  %50 = getelementptr inbounds %struct.strbuf_t_, ptr %49, i32 0, i32 1, !dbg !126
  %51 = getelementptr inbounds %struct.anon, ptr %50, i32 0, i32 1, !dbg !127
  %52 = load i64, ptr %51, align 8, !dbg !127
  %53 = add i64 %52, 1, !dbg !128
  %54 = getelementptr inbounds i8, ptr %48, i64 %53, !dbg !124
  store i8 0, ptr %54, align 1, !dbg !129
  %55 = load ptr, ptr %6, align 8, !dbg !130
  %56 = getelementptr inbounds %struct.strbuf_t_, ptr %55, i32 0, i32 2, !dbg !131
  %57 = load i32, ptr %56, align 8, !dbg !132
  %58 = and i32 %57, -2, !dbg !132
  store i32 %58, ptr %56, align 8, !dbg !132
  %59 = load i64, ptr %8, align 8, !dbg !133
  %60 = load ptr, ptr %6, align 8, !dbg !134
  %61 = getelementptr inbounds %struct.strbuf_t_, ptr %60, i32 0, i32 1, !dbg !135
  %62 = getelementptr inbounds %struct.anon, ptr %61, i32 0, i32 0, !dbg !136
  store i64 %59, ptr %62, align 8, !dbg !137
  %63 = load ptr, ptr %9, align 8, !dbg !138
  %64 = load ptr, ptr %6, align 8, !dbg !139
  %65 = getelementptr inbounds %struct.strbuf_t_, ptr %64, i32 0, i32 0, !dbg !140
  store ptr %63, ptr %65, align 8, !dbg !141
  store i1 true, ptr %5, align 1, !dbg !142
  br label %101, !dbg !142

66:                                               ; preds = %2
  %67 = load ptr, ptr %6, align 8, !dbg !143
  %68 = getelementptr inbounds %struct.strbuf_t_, ptr %67, i32 0, i32 1, !dbg !143
  %69 = getelementptr inbounds %struct.anon, ptr %68, i32 0, i32 0, !dbg !143
  %70 = load i64, ptr %69, align 8, !dbg !143
  %71 = load i64, ptr %7, align 8, !dbg !143
  %72 = icmp ult i64 %70, %71, !dbg !143
  %73 = zext i1 %72 to i32, !dbg !143
  %74 = sext i32 %73 to i64, !dbg !143
  %75 = icmp ne i64 %74, 0, !dbg !143
  br i1 %75, label %76, label %100, !dbg !145

76:                                               ; preds = %66
  call void @llvm.dbg.declare(metadata ptr %10, metadata !146, metadata !DIExpression()), !dbg !148
  %77 = load i64, ptr %7, align 8, !dbg !149
  %78 = call i64 @find_next_power_of_two(i64 noundef %77), !dbg !150
  store i64 %78, ptr %10, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %11, metadata !151, metadata !DIExpression()), !dbg !152
  %79 = load ptr, ptr %6, align 8, !dbg !153
  %80 = getelementptr inbounds %struct.strbuf_t_, ptr %79, i32 0, i32 0, !dbg !154
  %81 = load ptr, ptr %80, align 8, !dbg !155
  %82 = load i64, ptr %10, align 8, !dbg !156
  %83 = add i64 %82, 1, !dbg !157
  %84 = call ptr @realloc(ptr noundef %81, i64 noundef %83) #11, !dbg !158
  store ptr %84, ptr %11, align 8, !dbg !152
  %85 = load ptr, ptr %11, align 8, !dbg !159
  %86 = icmp ne ptr %85, null, !dbg !159
  %87 = xor i1 %86, true, !dbg !159
  %88 = zext i1 %87 to i32, !dbg !159
  %89 = sext i32 %88 to i64, !dbg !159
  %90 = icmp ne i64 %89, 0, !dbg !159
  br i1 %90, label %91, label %92, !dbg !161

91:                                               ; preds = %76
  store i1 false, ptr %5, align 1, !dbg !162
  br label %101, !dbg !162

92:                                               ; preds = %76
  %93 = load i64, ptr %10, align 8, !dbg !163
  %94 = load ptr, ptr %6, align 8, !dbg !164
  %95 = getelementptr inbounds %struct.strbuf_t_, ptr %94, i32 0, i32 1, !dbg !165
  %96 = getelementptr inbounds %struct.anon, ptr %95, i32 0, i32 0, !dbg !166
  store i64 %93, ptr %96, align 8, !dbg !167
  %97 = load ptr, ptr %11, align 8, !dbg !168
  %98 = load ptr, ptr %6, align 8, !dbg !169
  %99 = getelementptr inbounds %struct.strbuf_t_, ptr %98, i32 0, i32 0, !dbg !170
  store ptr %97, ptr %99, align 8, !dbg !171
  br label %100, !dbg !172

100:                                              ; preds = %92, %66
  store i1 true, ptr %5, align 1, !dbg !173
  br label %101, !dbg !173

101:                                              ; preds = %100, %91, %39, %38
  %102 = load i1, ptr %5, align 1, !dbg !174
  ret i1 %102, !dbg !174
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i1 @strbuf_init(ptr noundef %0) #3 !dbg !175 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !178, metadata !DIExpression()), !dbg !179
  %3 = load ptr, ptr %2, align 8, !dbg !180
  %4 = call zeroext i1 @strbuf_init_with_size(ptr noundef %3, i64 noundef 64), !dbg !181
  ret i1 %4, !dbg !182
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @strbuf_new_with_size(i64 noundef %0) #0 !dbg !183 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata ptr %3, metadata !188, metadata !DIExpression()), !dbg !189
  %4 = call noalias ptr @malloc(i64 noundef 32) #10, !dbg !190
  store ptr %4, ptr %3, align 8, !dbg !189
  %5 = load ptr, ptr %3, align 8, !dbg !191
  %6 = load i64, ptr %2, align 8, !dbg !191
  %7 = call zeroext i1 @strbuf_init_with_size(ptr noundef %5, i64 noundef %6), !dbg !191
  %8 = xor i1 %7, true, !dbg !191
  %9 = zext i1 %8 to i32, !dbg !191
  %10 = sext i32 %9 to i64, !dbg !191
  %11 = icmp ne i64 %10, 0, !dbg !191
  br i1 %11, label %12, label %14, !dbg !193

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !194
  call void @free(ptr noundef %13) #12, !dbg !196
  store ptr null, ptr %3, align 8, !dbg !197
  br label %19, !dbg !198

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8, !dbg !199
  %16 = getelementptr inbounds %struct.strbuf_t_, ptr %15, i32 0, i32 2, !dbg !201
  %17 = load i32, ptr %16, align 8, !dbg !202
  %18 = or i32 %17, 2, !dbg !202
  store i32 %18, ptr %16, align 8, !dbg !202
  br label %19

19:                                               ; preds = %14, %12
  %20 = load ptr, ptr %3, align 8, !dbg !203
  ret ptr %20, !dbg !204
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: alwaysinline nounwind uwtable
define dso_local ptr @strbuf_new() #3 !dbg !205 {
  %1 = call ptr @strbuf_new_with_size(i64 noundef 64), !dbg !208
  ret ptr %1, !dbg !209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_free(ptr noundef %0) #0 !dbg !210 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !213, metadata !DIExpression()), !dbg !214
  %3 = load ptr, ptr %2, align 8, !dbg !215
  %4 = icmp ne ptr %3, null, !dbg !215
  %5 = xor i1 %4, true, !dbg !215
  %6 = zext i1 %5 to i32, !dbg !215
  %7 = sext i32 %6 to i64, !dbg !215
  %8 = icmp ne i64 %7, 0, !dbg !215
  br i1 %8, label %9, label %10, !dbg !217

9:                                                ; preds = %1
  br label %28, !dbg !218

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !219
  %12 = getelementptr inbounds %struct.strbuf_t_, ptr %11, i32 0, i32 2, !dbg !221
  %13 = load i32, ptr %12, align 8, !dbg !221
  %14 = and i32 %13, 1, !dbg !222
  %15 = icmp ne i32 %14, 0, !dbg !222
  br i1 %15, label %20, label %16, !dbg !223

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8, !dbg !224
  %18 = getelementptr inbounds %struct.strbuf_t_, ptr %17, i32 0, i32 0, !dbg !225
  %19 = load ptr, ptr %18, align 8, !dbg !226
  call void @free(ptr noundef %19) #12, !dbg !227
  br label %20, !dbg !227

20:                                               ; preds = %16, %10
  %21 = load ptr, ptr %2, align 8, !dbg !228
  %22 = getelementptr inbounds %struct.strbuf_t_, ptr %21, i32 0, i32 2, !dbg !230
  %23 = load i32, ptr %22, align 8, !dbg !230
  %24 = and i32 %23, 2, !dbg !231
  %25 = icmp ne i32 %24, 0, !dbg !231
  br i1 %25, label %26, label %28, !dbg !232

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 8, !dbg !233
  call void @free(ptr noundef %27) #12, !dbg !234
  br label %28, !dbg !234

28:                                               ; preds = %9, %26, %20
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_append_char(ptr noundef %0, i8 noundef signext %1) #0 !dbg !236 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !239, metadata !DIExpression()), !dbg !240
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !241, metadata !DIExpression()), !dbg !242
  %6 = load ptr, ptr %4, align 8, !dbg !243
  %7 = load ptr, ptr %4, align 8, !dbg !243
  %8 = getelementptr inbounds %struct.strbuf_t_, ptr %7, i32 0, i32 1, !dbg !243
  %9 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !243
  %10 = load i64, ptr %9, align 8, !dbg !243
  %11 = add i64 %10, 2, !dbg !243
  %12 = call zeroext i1 @grow_buffer_if_needed(ptr noundef %6, i64 noundef %11), !dbg !243
  %13 = xor i1 %12, true, !dbg !243
  %14 = zext i1 %13 to i32, !dbg !243
  %15 = sext i32 %14 to i64, !dbg !243
  %16 = icmp ne i64 %15, 0, !dbg !243
  br i1 %16, label %17, label %18, !dbg !245

17:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !246
  br label %37, !dbg !246

18:                                               ; preds = %2
  %19 = load i8, ptr %5, align 1, !dbg !247
  %20 = load ptr, ptr %4, align 8, !dbg !248
  %21 = getelementptr inbounds %struct.strbuf_t_, ptr %20, i32 0, i32 0, !dbg !249
  %22 = load ptr, ptr %21, align 8, !dbg !250
  %23 = load ptr, ptr %4, align 8, !dbg !251
  %24 = getelementptr inbounds %struct.strbuf_t_, ptr %23, i32 0, i32 1, !dbg !252
  %25 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1, !dbg !253
  %26 = load i64, ptr %25, align 8, !dbg !254
  %27 = add i64 %26, 1, !dbg !254
  store i64 %27, ptr %25, align 8, !dbg !254
  %28 = getelementptr inbounds i8, ptr %22, i64 %26, !dbg !255
  store i8 %19, ptr %28, align 1, !dbg !256
  %29 = load ptr, ptr %4, align 8, !dbg !257
  %30 = getelementptr inbounds %struct.strbuf_t_, ptr %29, i32 0, i32 0, !dbg !258
  %31 = load ptr, ptr %30, align 8, !dbg !259
  %32 = load ptr, ptr %4, align 8, !dbg !260
  %33 = getelementptr inbounds %struct.strbuf_t_, ptr %32, i32 0, i32 1, !dbg !261
  %34 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1, !dbg !262
  %35 = load i64, ptr %34, align 8, !dbg !262
  %36 = getelementptr inbounds i8, ptr %31, i64 %35, !dbg !263
  store i8 0, ptr %36, align 1, !dbg !264
  store i1 true, ptr %3, align 1, !dbg !265
  br label %37, !dbg !265

37:                                               ; preds = %18, %17
  %38 = load i1, ptr %3, align 1, !dbg !266
  ret i1 %38, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_append_str(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !267 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !270, metadata !DIExpression()), !dbg !271
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !272, metadata !DIExpression()), !dbg !273
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !274, metadata !DIExpression()), !dbg !275
  %8 = load i64, ptr %7, align 8, !dbg !276
  %9 = icmp ne i64 %8, 0, !dbg !276
  br i1 %9, label %13, label %10, !dbg !278

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !dbg !279
  %12 = call i64 @strlen(ptr noundef %11) #13, !dbg !280
  store i64 %12, ptr %7, align 8, !dbg !281
  br label %13, !dbg !282

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %5, align 8, !dbg !283
  %15 = load ptr, ptr %5, align 8, !dbg !283
  %16 = getelementptr inbounds %struct.strbuf_t_, ptr %15, i32 0, i32 1, !dbg !283
  %17 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 1, !dbg !283
  %18 = load i64, ptr %17, align 8, !dbg !283
  %19 = load i64, ptr %7, align 8, !dbg !283
  %20 = add i64 %18, %19, !dbg !283
  %21 = add i64 %20, 2, !dbg !283
  %22 = call zeroext i1 @grow_buffer_if_needed(ptr noundef %14, i64 noundef %21), !dbg !283
  %23 = xor i1 %22, true, !dbg !283
  %24 = zext i1 %23 to i32, !dbg !283
  %25 = sext i32 %24 to i64, !dbg !283
  %26 = icmp ne i64 %25, 0, !dbg !283
  br i1 %26, label %27, label %28, !dbg !285

27:                                               ; preds = %13
  store i1 false, ptr %4, align 1, !dbg !286
  br label %54, !dbg !286

28:                                               ; preds = %13
  %29 = load ptr, ptr %5, align 8, !dbg !287
  %30 = getelementptr inbounds %struct.strbuf_t_, ptr %29, i32 0, i32 0, !dbg !288
  %31 = load ptr, ptr %30, align 8, !dbg !289
  %32 = load ptr, ptr %5, align 8, !dbg !290
  %33 = getelementptr inbounds %struct.strbuf_t_, ptr %32, i32 0, i32 1, !dbg !291
  %34 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1, !dbg !292
  %35 = load i64, ptr %34, align 8, !dbg !292
  %36 = getelementptr inbounds i8, ptr %31, i64 %35, !dbg !293
  %37 = load ptr, ptr %6, align 8, !dbg !294
  %38 = load i64, ptr %7, align 8, !dbg !295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %37, i64 %38, i1 false), !dbg !296
  %39 = load i64, ptr %7, align 8, !dbg !297
  %40 = load ptr, ptr %5, align 8, !dbg !298
  %41 = getelementptr inbounds %struct.strbuf_t_, ptr %40, i32 0, i32 1, !dbg !299
  %42 = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 1, !dbg !300
  %43 = load i64, ptr %42, align 8, !dbg !301
  %44 = add i64 %43, %39, !dbg !301
  store i64 %44, ptr %42, align 8, !dbg !301
  %45 = load ptr, ptr %5, align 8, !dbg !302
  %46 = getelementptr inbounds %struct.strbuf_t_, ptr %45, i32 0, i32 0, !dbg !303
  %47 = load ptr, ptr %46, align 8, !dbg !304
  %48 = load ptr, ptr %5, align 8, !dbg !305
  %49 = getelementptr inbounds %struct.strbuf_t_, ptr %48, i32 0, i32 1, !dbg !306
  %50 = getelementptr inbounds %struct.anon, ptr %49, i32 0, i32 1, !dbg !307
  %51 = load i64, ptr %50, align 8, !dbg !307
  %52 = add i64 %51, 1, !dbg !308
  %53 = getelementptr inbounds i8, ptr %47, i64 %52, !dbg !302
  store i8 0, ptr %53, align 1, !dbg !309
  store i1 true, ptr %4, align 1, !dbg !310
  br label %54, !dbg !310

54:                                               ; preds = %28, %27
  %55 = load i1, ptr %4, align 1, !dbg !311
  ret i1 %55, !dbg !311
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_set_static(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !312 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !313, metadata !DIExpression()), !dbg !314
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !315, metadata !DIExpression()), !dbg !316
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !317, metadata !DIExpression()), !dbg !318
  %7 = load i64, ptr %6, align 8, !dbg !319
  %8 = icmp ne i64 %7, 0, !dbg !319
  br i1 %8, label %12, label %9, !dbg !321

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8, !dbg !322
  %11 = call i64 @strlen(ptr noundef %10) #13, !dbg !323
  store i64 %11, ptr %6, align 8, !dbg !324
  br label %12, !dbg !325

12:                                               ; preds = %9, %3
  %13 = load ptr, ptr %4, align 8, !dbg !326
  %14 = getelementptr inbounds %struct.strbuf_t_, ptr %13, i32 0, i32 2, !dbg !328
  %15 = load i32, ptr %14, align 8, !dbg !328
  %16 = and i32 %15, 1, !dbg !329
  %17 = icmp ne i32 %16, 0, !dbg !329
  br i1 %17, label %22, label %18, !dbg !330

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !331
  %20 = getelementptr inbounds %struct.strbuf_t_, ptr %19, i32 0, i32 0, !dbg !332
  %21 = load ptr, ptr %20, align 8, !dbg !333
  call void @free(ptr noundef %21) #12, !dbg !334
  br label %22, !dbg !334

22:                                               ; preds = %18, %12
  %23 = load ptr, ptr %5, align 8, !dbg !335
  %24 = load ptr, ptr %4, align 8, !dbg !336
  %25 = getelementptr inbounds %struct.strbuf_t_, ptr %24, i32 0, i32 0, !dbg !337
  store ptr %23, ptr %25, align 8, !dbg !338
  %26 = load i64, ptr %6, align 8, !dbg !339
  %27 = load ptr, ptr %4, align 8, !dbg !340
  %28 = getelementptr inbounds %struct.strbuf_t_, ptr %27, i32 0, i32 1, !dbg !341
  %29 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1, !dbg !342
  store i64 %26, ptr %29, align 8, !dbg !343
  %30 = load ptr, ptr %4, align 8, !dbg !344
  %31 = getelementptr inbounds %struct.strbuf_t_, ptr %30, i32 0, i32 1, !dbg !345
  %32 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 0, !dbg !346
  store i64 %26, ptr %32, align 8, !dbg !347
  %33 = load ptr, ptr %4, align 8, !dbg !348
  %34 = getelementptr inbounds %struct.strbuf_t_, ptr %33, i32 0, i32 2, !dbg !349
  %35 = load i32, ptr %34, align 8, !dbg !350
  %36 = or i32 %35, 1, !dbg !350
  store i32 %36, ptr %34, align 8, !dbg !350
  ret i1 true, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_set(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !352 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !353, metadata !DIExpression()), !dbg !354
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !355, metadata !DIExpression()), !dbg !356
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !357, metadata !DIExpression()), !dbg !358
  %8 = load i64, ptr %7, align 8, !dbg !359
  %9 = icmp ne i64 %8, 0, !dbg !359
  br i1 %9, label %13, label %10, !dbg !361

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !dbg !362
  %12 = call i64 @strlen(ptr noundef %11) #13, !dbg !363
  store i64 %12, ptr %7, align 8, !dbg !364
  br label %13, !dbg !365

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %5, align 8, !dbg !366
  %15 = load i64, ptr %7, align 8, !dbg !366
  %16 = add i64 %15, 1, !dbg !366
  %17 = call zeroext i1 @grow_buffer_if_needed(ptr noundef %14, i64 noundef %16), !dbg !366
  %18 = xor i1 %17, true, !dbg !366
  %19 = zext i1 %18 to i32, !dbg !366
  %20 = sext i32 %19 to i64, !dbg !366
  %21 = icmp ne i64 %20, 0, !dbg !366
  br i1 %21, label %22, label %23, !dbg !368

22:                                               ; preds = %13
  store i1 false, ptr %4, align 1, !dbg !369
  br label %39, !dbg !369

23:                                               ; preds = %13
  %24 = load ptr, ptr %5, align 8, !dbg !370
  %25 = getelementptr inbounds %struct.strbuf_t_, ptr %24, i32 0, i32 0, !dbg !371
  %26 = load ptr, ptr %25, align 8, !dbg !372
  %27 = load ptr, ptr %6, align 8, !dbg !373
  %28 = load i64, ptr %7, align 8, !dbg !374
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %27, i64 %28, i1 false), !dbg !375
  %29 = load i64, ptr %7, align 8, !dbg !376
  %30 = load ptr, ptr %5, align 8, !dbg !377
  %31 = getelementptr inbounds %struct.strbuf_t_, ptr %30, i32 0, i32 1, !dbg !378
  %32 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 1, !dbg !379
  store i64 %29, ptr %32, align 8, !dbg !380
  %33 = load ptr, ptr %5, align 8, !dbg !381
  %34 = getelementptr inbounds %struct.strbuf_t_, ptr %33, i32 0, i32 0, !dbg !382
  %35 = load ptr, ptr %34, align 8, !dbg !383
  %36 = load i64, ptr %7, align 8, !dbg !384
  %37 = add i64 %36, 1, !dbg !385
  %38 = getelementptr inbounds i8, ptr %35, i64 %37, !dbg !381
  store i8 0, ptr %38, align 1, !dbg !386
  store i1 true, ptr %4, align 1, !dbg !387
  br label %39, !dbg !387

39:                                               ; preds = %23, %22
  %40 = load i1, ptr %4, align 1, !dbg !388
  ret i1 %40, !dbg !388
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @strbuf_cmp(ptr noundef %0, ptr noundef %1) #3 !dbg !389 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !392, metadata !DIExpression()), !dbg !393
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !394, metadata !DIExpression()), !dbg !395
  %7 = load ptr, ptr %4, align 8, !dbg !396
  %8 = load ptr, ptr %5, align 8, !dbg !398
  %9 = icmp eq ptr %7, %8, !dbg !399
  br i1 %9, label %10, label %11, !dbg !400

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !401
  br label %55, !dbg !401

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !402, metadata !DIExpression()), !dbg !403
  %12 = load ptr, ptr %4, align 8, !dbg !404
  %13 = getelementptr inbounds %struct.strbuf_t_, ptr %12, i32 0, i32 0, !dbg !405
  %14 = load ptr, ptr %13, align 8, !dbg !406
  %15 = load ptr, ptr %5, align 8, !dbg !407
  %16 = getelementptr inbounds %struct.strbuf_t_, ptr %15, i32 0, i32 0, !dbg !408
  %17 = load ptr, ptr %16, align 8, !dbg !409
  %18 = load ptr, ptr %4, align 8, !dbg !410
  %19 = getelementptr inbounds %struct.strbuf_t_, ptr %18, i32 0, i32 1, !dbg !411
  %20 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 1, !dbg !412
  %21 = load i64, ptr %20, align 8, !dbg !412
  %22 = load ptr, ptr %5, align 8, !dbg !413
  %23 = getelementptr inbounds %struct.strbuf_t_, ptr %22, i32 0, i32 1, !dbg !414
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 1, !dbg !415
  %25 = load i64, ptr %24, align 8, !dbg !415
  %26 = icmp ult i64 %21, %25, !dbg !416
  br i1 %26, label %27, label %32, !dbg !410

27:                                               ; preds = %11
  %28 = load ptr, ptr %4, align 8, !dbg !417
  %29 = getelementptr inbounds %struct.strbuf_t_, ptr %28, i32 0, i32 1, !dbg !418
  %30 = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 1, !dbg !419
  %31 = load i64, ptr %30, align 8, !dbg !419
  br label %37, !dbg !410

32:                                               ; preds = %11
  %33 = load ptr, ptr %5, align 8, !dbg !420
  %34 = getelementptr inbounds %struct.strbuf_t_, ptr %33, i32 0, i32 1, !dbg !421
  %35 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1, !dbg !422
  %36 = load i64, ptr %35, align 8, !dbg !422
  br label %37, !dbg !410

37:                                               ; preds = %32, %27
  %38 = phi i64 [ %31, %27 ], [ %36, %32 ], !dbg !410
  %39 = call i32 @memcmp(ptr noundef %14, ptr noundef %17, i64 noundef %38) #13, !dbg !423
  store i32 %39, ptr %6, align 4, !dbg !403
  %40 = load i32, ptr %6, align 4, !dbg !424
  %41 = icmp ne i32 %40, 0, !dbg !424
  br i1 %41, label %53, label %42, !dbg !426

42:                                               ; preds = %37
  %43 = load ptr, ptr %4, align 8, !dbg !427
  %44 = getelementptr inbounds %struct.strbuf_t_, ptr %43, i32 0, i32 1, !dbg !428
  %45 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 1, !dbg !429
  %46 = load i64, ptr %45, align 8, !dbg !429
  %47 = load ptr, ptr %5, align 8, !dbg !430
  %48 = getelementptr inbounds %struct.strbuf_t_, ptr %47, i32 0, i32 1, !dbg !431
  %49 = getelementptr inbounds %struct.anon, ptr %48, i32 0, i32 1, !dbg !432
  %50 = load i64, ptr %49, align 8, !dbg !432
  %51 = sub i64 %46, %50, !dbg !433
  %52 = trunc i64 %51 to i32, !dbg !434
  store i32 %52, ptr %3, align 4, !dbg !435
  br label %55, !dbg !435

53:                                               ; preds = %37
  %54 = load i32, ptr %6, align 4, !dbg !436
  store i32 %54, ptr %3, align 4, !dbg !437
  br label %55, !dbg !437

55:                                               ; preds = %53, %42, %10
  %56 = load i32, ptr %3, align 4, !dbg !438
  ret i32 %56, !dbg !438
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_printf(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !439 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !442, metadata !DIExpression()), !dbg !443
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata ptr %13, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata ptr %14, metadata !448, metadata !DIExpression()), !dbg !465
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %14, i64 0, i64 0, !dbg !466
  call void @llvm.va_start(ptr %15), !dbg !466
  %16 = load ptr, ptr %11, align 8, !dbg !467
  %17 = load ptr, ptr %12, align 8, !dbg !468
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %14, i64 0, i64 0, !dbg !469
  store ptr %16, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !470, metadata !DIExpression()), !dbg !476
  store ptr @strbuf_set, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !478, metadata !DIExpression()), !dbg !479
  store ptr %17, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !481
  store ptr %18, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !482, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata ptr %8, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata ptr %9, metadata !486, metadata !DIExpression()), !dbg !487
  %19 = load ptr, ptr %6, align 8, !dbg !488
  %20 = load ptr, ptr %7, align 8, !dbg !488
  %21 = call i32 @vasprintf(ptr noundef %8, ptr noundef %19, ptr noundef %20) #12, !dbg !488
  store i32 %21, ptr %9, align 4, !dbg !488
  %22 = icmp slt i32 %21, 0, !dbg !488
  %23 = zext i1 %22 to i32, !dbg !488
  %24 = sext i32 %23 to i64, !dbg !488
  br i1 %22, label %25, label %26, !dbg !490

25:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !491
  br label %37, !dbg !491

26:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %10, metadata !492, metadata !DIExpression()), !dbg !493
  %27 = load ptr, ptr %5, align 8, !dbg !494
  %28 = load ptr, ptr %4, align 8, !dbg !495
  %29 = load ptr, ptr %8, align 8, !dbg !496
  %30 = load i32, ptr %9, align 4, !dbg !497
  %31 = sext i32 %30 to i64, !dbg !498
  %32 = call zeroext i1 %27(ptr noundef %28, ptr noundef %29, i64 noundef %31) #12, !dbg !494
  %33 = zext i1 %32 to i8, !dbg !493
  store i8 %33, ptr %10, align 1, !dbg !493
  %34 = load ptr, ptr %8, align 8, !dbg !499
  call void @free(ptr noundef %34) #12, !dbg !500
  %35 = load i8, ptr %10, align 1, !dbg !501
  %36 = trunc i8 %35 to i1, !dbg !501
  store i1 %36, ptr %3, align 1, !dbg !502
  br label %37, !dbg !502

37:                                               ; preds = %25, %26
  %38 = load i1, ptr %3, align 1, !dbg !503
  %39 = zext i1 %38 to i8, !dbg !504
  store i8 %39, ptr %13, align 1, !dbg !504
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %14, i64 0, i64 0, !dbg !505
  call void @llvm.va_end(ptr %40), !dbg !505
  %41 = load i8, ptr %13, align 1, !dbg !506
  %42 = trunc i8 %41 to i1, !dbg !506
  ret i1 %42, !dbg !507
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_append_printf(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !508 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !509, metadata !DIExpression()), !dbg !510
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata ptr %13, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata ptr %14, metadata !515, metadata !DIExpression()), !dbg !516
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %14, i64 0, i64 0, !dbg !517
  call void @llvm.va_start(ptr %15), !dbg !517
  %16 = load ptr, ptr %11, align 8, !dbg !518
  %17 = load ptr, ptr %12, align 8, !dbg !519
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %14, i64 0, i64 0, !dbg !520
  store ptr %16, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !470, metadata !DIExpression()), !dbg !521
  store ptr @strbuf_append_str, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !478, metadata !DIExpression()), !dbg !523
  store ptr %17, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !524
  store ptr %18, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !482, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata ptr %8, metadata !484, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata ptr %9, metadata !486, metadata !DIExpression()), !dbg !527
  %19 = load ptr, ptr %6, align 8, !dbg !528
  %20 = load ptr, ptr %7, align 8, !dbg !528
  %21 = call i32 @vasprintf(ptr noundef %8, ptr noundef %19, ptr noundef %20) #12, !dbg !528
  store i32 %21, ptr %9, align 4, !dbg !528
  %22 = icmp slt i32 %21, 0, !dbg !528
  %23 = zext i1 %22 to i32, !dbg !528
  %24 = sext i32 %23 to i64, !dbg !528
  br i1 %22, label %25, label %26, !dbg !529

25:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !530
  br label %37, !dbg !530

26:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %10, metadata !492, metadata !DIExpression()), !dbg !531
  %27 = load ptr, ptr %5, align 8, !dbg !532
  %28 = load ptr, ptr %4, align 8, !dbg !533
  %29 = load ptr, ptr %8, align 8, !dbg !534
  %30 = load i32, ptr %9, align 4, !dbg !535
  %31 = sext i32 %30 to i64, !dbg !536
  %32 = call zeroext i1 %27(ptr noundef %28, ptr noundef %29, i64 noundef %31) #12, !dbg !532
  %33 = zext i1 %32 to i8, !dbg !531
  store i8 %33, ptr %10, align 1, !dbg !531
  %34 = load ptr, ptr %8, align 8, !dbg !537
  call void @free(ptr noundef %34) #12, !dbg !538
  %35 = load i8, ptr %10, align 1, !dbg !539
  %36 = trunc i8 %35 to i1, !dbg !539
  store i1 %36, ptr %3, align 1, !dbg !540
  br label %37, !dbg !540

37:                                               ; preds = %25, %26
  %38 = load i1, ptr %3, align 1, !dbg !541
  %39 = zext i1 %38 to i8, !dbg !542
  store i8 %39, ptr %13, align 1, !dbg !542
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %14, i64 0, i64 0, !dbg !543
  call void @llvm.va_end(ptr %40), !dbg !543
  %41 = load i8, ptr %13, align 1, !dbg !544
  %42 = trunc i8 %41 to i1, !dbg !544
  ret i1 %42, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_shrink_to(ptr noundef %0, i64 noundef %1) #0 !dbg !546 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !549, metadata !DIExpression()), !dbg !550
  %8 = load ptr, ptr %4, align 8, !dbg !551
  %9 = getelementptr inbounds %struct.strbuf_t_, ptr %8, i32 0, i32 1, !dbg !553
  %10 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 0, !dbg !554
  %11 = load i64, ptr %10, align 8, !dbg !554
  %12 = load i64, ptr %5, align 8, !dbg !555
  %13 = icmp ule i64 %11, %12, !dbg !556
  br i1 %13, label %14, label %15, !dbg !557

14:                                               ; preds = %2
  store i1 true, ptr %3, align 1, !dbg !558
  br label %68, !dbg !558

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8, !dbg !559
  %17 = getelementptr inbounds %struct.strbuf_t_, ptr %16, i32 0, i32 2, !dbg !561
  %18 = load i32, ptr %17, align 8, !dbg !561
  %19 = and i32 %18, 1, !dbg !562
  %20 = icmp ne i32 %19, 0, !dbg !562
  br i1 %20, label %21, label %22, !dbg !563

21:                                               ; preds = %15
  store i1 true, ptr %3, align 1, !dbg !564
  br label %68, !dbg !564

22:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %6, metadata !565, metadata !DIExpression()), !dbg !566
  %23 = load i64, ptr %5, align 8, !dbg !567
  %24 = call i64 @find_next_power_of_two(i64 noundef %23), !dbg !568
  store i64 %24, ptr %6, align 8, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %7, metadata !569, metadata !DIExpression()), !dbg !570
  %25 = load ptr, ptr %4, align 8, !dbg !571
  %26 = getelementptr inbounds %struct.strbuf_t_, ptr %25, i32 0, i32 0, !dbg !572
  %27 = load ptr, ptr %26, align 8, !dbg !573
  %28 = load i64, ptr %6, align 8, !dbg !574
  %29 = add i64 %28, 1, !dbg !575
  %30 = call ptr @realloc(ptr noundef %27, i64 noundef %29) #11, !dbg !576
  store ptr %30, ptr %7, align 8, !dbg !570
  %31 = load ptr, ptr %7, align 8, !dbg !577
  %32 = icmp ne ptr %31, null, !dbg !577
  %33 = xor i1 %32, true, !dbg !577
  %34 = zext i1 %33 to i32, !dbg !577
  %35 = sext i32 %34 to i64, !dbg !577
  %36 = icmp ne i64 %35, 0, !dbg !577
  br i1 %36, label %37, label %38, !dbg !579

37:                                               ; preds = %22
  store i1 false, ptr %3, align 1, !dbg !580
  br label %68, !dbg !580

38:                                               ; preds = %22
  %39 = load ptr, ptr %7, align 8, !dbg !581
  %40 = load ptr, ptr %4, align 8, !dbg !582
  %41 = getelementptr inbounds %struct.strbuf_t_, ptr %40, i32 0, i32 0, !dbg !583
  store ptr %39, ptr %41, align 8, !dbg !584
  %42 = load i64, ptr %6, align 8, !dbg !585
  %43 = load ptr, ptr %4, align 8, !dbg !586
  %44 = getelementptr inbounds %struct.strbuf_t_, ptr %43, i32 0, i32 1, !dbg !587
  %45 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 0, !dbg !588
  store i64 %42, ptr %45, align 8, !dbg !589
  %46 = load ptr, ptr %4, align 8, !dbg !590
  %47 = getelementptr inbounds %struct.strbuf_t_, ptr %46, i32 0, i32 1, !dbg !592
  %48 = getelementptr inbounds %struct.anon, ptr %47, i32 0, i32 1, !dbg !593
  %49 = load i64, ptr %48, align 8, !dbg !593
  %50 = load i64, ptr %6, align 8, !dbg !594
  %51 = icmp ugt i64 %49, %50, !dbg !595
  br i1 %51, label %52, label %67, !dbg !596

52:                                               ; preds = %38
  %53 = load i64, ptr %6, align 8, !dbg !597
  %54 = sub i64 %53, 1, !dbg !599
  %55 = load ptr, ptr %4, align 8, !dbg !600
  %56 = getelementptr inbounds %struct.strbuf_t_, ptr %55, i32 0, i32 1, !dbg !601
  %57 = getelementptr inbounds %struct.anon, ptr %56, i32 0, i32 1, !dbg !602
  store i64 %54, ptr %57, align 8, !dbg !603
  %58 = load ptr, ptr %4, align 8, !dbg !604
  %59 = getelementptr inbounds %struct.strbuf_t_, ptr %58, i32 0, i32 0, !dbg !605
  %60 = load ptr, ptr %59, align 8, !dbg !606
  %61 = load ptr, ptr %4, align 8, !dbg !607
  %62 = getelementptr inbounds %struct.strbuf_t_, ptr %61, i32 0, i32 1, !dbg !608
  %63 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 1, !dbg !609
  %64 = load i64, ptr %63, align 8, !dbg !609
  %65 = add i64 %64, 1, !dbg !610
  %66 = getelementptr inbounds i8, ptr %60, i64 %65, !dbg !604
  store i8 0, ptr %66, align 1, !dbg !611
  br label %67, !dbg !612

67:                                               ; preds = %52, %38
  store i1 true, ptr %3, align 1, !dbg !613
  br label %68, !dbg !613

68:                                               ; preds = %67, %37, %21, %14
  %69 = load i1, ptr %3, align 1, !dbg !614
  ret i1 %69, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_next_power_of_two(i64 noundef %0) #0 !dbg !615 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !618, metadata !DIExpression()), !dbg !619
  %3 = load i64, ptr %2, align 8, !dbg !620
  %4 = add i64 %3, -1, !dbg !620
  store i64 %4, ptr %2, align 8, !dbg !620
  %5 = load i64, ptr %2, align 8, !dbg !621
  %6 = lshr i64 %5, 1, !dbg !622
  %7 = load i64, ptr %2, align 8, !dbg !623
  %8 = or i64 %7, %6, !dbg !623
  store i64 %8, ptr %2, align 8, !dbg !623
  %9 = load i64, ptr %2, align 8, !dbg !624
  %10 = lshr i64 %9, 2, !dbg !625
  %11 = load i64, ptr %2, align 8, !dbg !626
  %12 = or i64 %11, %10, !dbg !626
  store i64 %12, ptr %2, align 8, !dbg !626
  %13 = load i64, ptr %2, align 8, !dbg !627
  %14 = lshr i64 %13, 4, !dbg !628
  %15 = load i64, ptr %2, align 8, !dbg !629
  %16 = or i64 %15, %14, !dbg !629
  store i64 %16, ptr %2, align 8, !dbg !629
  %17 = load i64, ptr %2, align 8, !dbg !630
  %18 = lshr i64 %17, 8, !dbg !631
  %19 = load i64, ptr %2, align 8, !dbg !632
  %20 = or i64 %19, %18, !dbg !632
  store i64 %20, ptr %2, align 8, !dbg !632
  %21 = load i64, ptr %2, align 8, !dbg !633
  %22 = lshr i64 %21, 16, !dbg !634
  %23 = load i64, ptr %2, align 8, !dbg !635
  %24 = or i64 %23, %22, !dbg !635
  store i64 %24, ptr %2, align 8, !dbg !635
  %25 = load i64, ptr %2, align 8, !dbg !636
  %26 = add i64 %25, 1, !dbg !637
  ret i64 %26, !dbg !638
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #9

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i1 @strbuf_shrink_to_default(ptr noundef %0) #3 !dbg !639 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !640, metadata !DIExpression()), !dbg !641
  %3 = load ptr, ptr %2, align 8, !dbg !642
  %4 = call zeroext i1 @strbuf_shrink_to(ptr noundef %3, i64 noundef 64), !dbg !643
  ret i1 %4, !dbg !644
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local zeroext i1 @strbuf_reset(ptr noundef %0) #3 !dbg !645 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !646, metadata !DIExpression()), !dbg !647
  %4 = load ptr, ptr %3, align 8, !dbg !648
  store ptr %4, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !640, metadata !DIExpression()), !dbg !649
  %5 = load ptr, ptr %2, align 8, !dbg !651
  %6 = call zeroext i1 @strbuf_shrink_to(ptr noundef %5, i64 noundef 64), !dbg !652
  %7 = load ptr, ptr %3, align 8, !dbg !653
  %8 = getelementptr inbounds %struct.strbuf_t_, ptr %7, i32 0, i32 1, !dbg !654
  %9 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !655
  store i64 0, ptr %9, align 8, !dbg !656
  ret i1 false, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_grow_to(ptr noundef %0, i64 noundef %1) #0 !dbg !658 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !659, metadata !DIExpression()), !dbg !660
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !661, metadata !DIExpression()), !dbg !662
  %5 = load ptr, ptr %3, align 8, !dbg !663
  %6 = load i64, ptr %4, align 8, !dbg !664
  %7 = add i64 %6, 1, !dbg !665
  %8 = call zeroext i1 @grow_buffer_if_needed(ptr noundef %5, i64 noundef %7), !dbg !666
  ret i1 %8, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @strbuf_reset_length(ptr noundef %0) #0 !dbg !668 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !669, metadata !DIExpression()), !dbg !670
  %4 = load ptr, ptr %3, align 8, !dbg !671
  %5 = getelementptr inbounds %struct.strbuf_t_, ptr %4, i32 0, i32 2, !dbg !673
  %6 = load i32, ptr %5, align 8, !dbg !673
  %7 = and i32 %6, 1, !dbg !674
  %8 = icmp ne i32 %7, 0, !dbg !674
  br i1 %8, label %9, label %31, !dbg !675

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !676
  %11 = getelementptr inbounds %struct.strbuf_t_, ptr %10, i32 0, i32 2, !dbg !678
  %12 = load i32, ptr %11, align 8, !dbg !679
  %13 = and i32 %12, -2, !dbg !679
  store i32 %13, ptr %11, align 8, !dbg !679
  %14 = load ptr, ptr %3, align 8, !dbg !680
  %15 = getelementptr inbounds %struct.strbuf_t_, ptr %14, i32 0, i32 1, !dbg !681
  %16 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 0, !dbg !682
  %17 = load i64, ptr %16, align 8, !dbg !682
  %18 = call noalias ptr @malloc(i64 noundef %17) #10, !dbg !683
  %19 = load ptr, ptr %3, align 8, !dbg !684
  %20 = getelementptr inbounds %struct.strbuf_t_, ptr %19, i32 0, i32 0, !dbg !685
  store ptr %18, ptr %20, align 8, !dbg !686
  %21 = load ptr, ptr %3, align 8, !dbg !687
  %22 = getelementptr inbounds %struct.strbuf_t_, ptr %21, i32 0, i32 0, !dbg !687
  %23 = load ptr, ptr %22, align 8, !dbg !687
  %24 = icmp ne ptr %23, null, !dbg !687
  %25 = xor i1 %24, true, !dbg !687
  %26 = zext i1 %25 to i32, !dbg !687
  %27 = sext i32 %26 to i64, !dbg !687
  %28 = icmp ne i64 %27, 0, !dbg !687
  br i1 %28, label %29, label %30, !dbg !689

29:                                               ; preds = %9
  store i1 false, ptr %2, align 1, !dbg !690
  br label %39, !dbg !690

30:                                               ; preds = %9
  br label %31, !dbg !691

31:                                               ; preds = %30, %1
  %32 = load ptr, ptr %3, align 8, !dbg !692
  %33 = getelementptr inbounds %struct.strbuf_t_, ptr %32, i32 0, i32 1, !dbg !693
  %34 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1, !dbg !694
  store i64 0, ptr %34, align 8, !dbg !695
  %35 = load ptr, ptr %3, align 8, !dbg !696
  %36 = getelementptr inbounds %struct.strbuf_t_, ptr %35, i32 0, i32 0, !dbg !697
  %37 = load ptr, ptr %36, align 8, !dbg !698
  %38 = getelementptr inbounds i8, ptr %37, i64 0, !dbg !696
  store i8 0, ptr %38, align 1, !dbg !699
  store i1 true, ptr %2, align 1, !dbg !700
  br label %39, !dbg !700

39:                                               ; preds = %31, %29
  %40 = load i1, ptr %2, align 1, !dbg !701
  ret i1 %40, !dbg !701
}

; Function Attrs: nounwind
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { alwaysinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, globals: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/raj/lwan/common/strbuf.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "501d053ee6f84a89407bb8f549366545")
!2 = !{!3, !4}
!3 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 46, baseType: !6)
!5 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!6 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!7 = !{!8, !12, !16}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "DEFAULT_BUF_SIZE", scope: !0, file: !10, line: 30, type: !11, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "common/strbuf.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "501d053ee6f84a89407bb8f549366545")
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "DYNAMICALLY_ALLOCATED", scope: !0, file: !10, line: 29, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "STATIC", scope: !0, file: !10, line: 28, type: !14, isLocal: true, isDefinition: true)
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 8, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 2}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 16.0.0"}
!26 = distinct !DISubprogram(name: "strbuf_init_with_size", scope: !10, file: !10, line: 83, type: !27, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30, !4}
!29 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !32, line: 25, baseType: !33)
!32 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !32, line: 27, size: 256, elements: !34)
!34 = !{!35, !44, !49}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !33, file: !32, line: 31, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !32, line: 28, size: 64, elements: !37)
!37 = !{!38, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !36, file: !32, line: 29, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !36, file: !32, line: 30, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !33, file: !32, line: 34, baseType: !45, size: 128, offset: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !33, file: !32, line: 32, size: 128, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !45, file: !32, line: 33, baseType: !4, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !45, file: !32, line: 33, baseType: !4, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !32, line: 35, baseType: !15, size: 32, offset: 192)
!50 = !{}
!51 = !DILocalVariable(name: "s", arg: 1, scope: !26, file: !10, line: 83, type: !30)
!52 = !DILocation(line: 83, column: 33, scope: !26)
!53 = !DILocalVariable(name: "size", arg: 2, scope: !26, file: !10, line: 83, type: !4)
!54 = !DILocation(line: 83, column: 43, scope: !26)
!55 = !DILocation(line: 85, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !26, file: !10, line: 85, column: 9)
!57 = !DILocation(line: 85, column: 9, scope: !26)
!58 = !DILocation(line: 86, column: 9, scope: !56)
!59 = !DILocation(line: 88, column: 12, scope: !26)
!60 = !DILocation(line: 88, column: 5, scope: !26)
!61 = !DILocation(line: 90, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !26, file: !10, line: 90, column: 9)
!63 = !DILocation(line: 90, column: 9, scope: !26)
!64 = !DILocation(line: 91, column: 9, scope: !62)
!65 = !DILocation(line: 93, column: 5, scope: !26)
!66 = !DILocation(line: 93, column: 8, scope: !26)
!67 = !DILocation(line: 93, column: 12, scope: !26)
!68 = !DILocation(line: 93, column: 19, scope: !26)
!69 = !DILocation(line: 94, column: 5, scope: !26)
!70 = !DILocation(line: 94, column: 8, scope: !26)
!71 = !DILocation(line: 94, column: 14, scope: !26)
!72 = !DILocation(line: 94, column: 24, scope: !26)
!73 = !DILocation(line: 96, column: 5, scope: !26)
!74 = !DILocation(line: 97, column: 1, scope: !26)
!75 = distinct !DISubprogram(name: "grow_buffer_if_needed", scope: !10, file: !10, line: 51, type: !27, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !50)
!76 = !DILocalVariable(name: "s", arg: 1, scope: !75, file: !10, line: 51, type: !30)
!77 = !DILocation(line: 51, column: 33, scope: !75)
!78 = !DILocalVariable(name: "size", arg: 2, scope: !75, file: !10, line: 51, type: !4)
!79 = !DILocation(line: 51, column: 43, scope: !75)
!80 = !DILocation(line: 53, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !10, line: 53, column: 9)
!82 = !DILocation(line: 53, column: 12, scope: !81)
!83 = !DILocation(line: 53, column: 18, scope: !81)
!84 = !DILocation(line: 53, column: 9, scope: !75)
!85 = !DILocalVariable(name: "next_power", scope: !86, file: !10, line: 54, type: !11)
!86 = distinct !DILexicalBlock(scope: !81, file: !10, line: 53, column: 28)
!87 = !DILocation(line: 54, column: 22, scope: !86)
!88 = !DILocation(line: 54, column: 62, scope: !86)
!89 = !DILocation(line: 54, column: 67, scope: !86)
!90 = !DILocation(line: 55, column: 21, scope: !86)
!91 = !DILocation(line: 55, column: 24, scope: !86)
!92 = !DILocation(line: 55, column: 28, scope: !86)
!93 = !DILocalVariable(name: "one", arg: 1, scope: !94, file: !10, line: 45, type: !4)
!94 = distinct !DISubprogram(name: "max", scope: !10, file: !10, line: 45, type: !95, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !50)
!95 = !DISubroutineType(types: !96)
!96 = !{!4, !4, !4}
!97 = !DILocation(line: 45, column: 12, scope: !94, inlinedAt: !98)
!98 = distinct !DILocation(line: 54, column: 58, scope: !86)
!99 = !DILocalVariable(name: "another", arg: 2, scope: !94, file: !10, line: 45, type: !4)
!100 = !DILocation(line: 45, column: 24, scope: !94, inlinedAt: !98)
!101 = !DILocation(line: 47, column: 13, scope: !94, inlinedAt: !98)
!102 = !DILocation(line: 47, column: 19, scope: !94, inlinedAt: !98)
!103 = !DILocation(line: 47, column: 17, scope: !94, inlinedAt: !98)
!104 = !DILocation(line: 47, column: 12, scope: !94, inlinedAt: !98)
!105 = !DILocation(line: 47, column: 30, scope: !94, inlinedAt: !98)
!106 = !DILocation(line: 47, column: 36, scope: !94, inlinedAt: !98)
!107 = !DILocation(line: 54, column: 35, scope: !86)
!108 = !DILocalVariable(name: "buffer", scope: !86, file: !10, line: 56, type: !39)
!109 = !DILocation(line: 56, column: 15, scope: !86)
!110 = !DILocation(line: 56, column: 31, scope: !86)
!111 = !DILocation(line: 56, column: 24, scope: !86)
!112 = !DILocation(line: 57, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !86, file: !10, line: 57, column: 13)
!114 = !DILocation(line: 57, column: 13, scope: !86)
!115 = !DILocation(line: 58, column: 13, scope: !113)
!116 = !DILocation(line: 60, column: 16, scope: !86)
!117 = !DILocation(line: 60, column: 24, scope: !86)
!118 = !DILocation(line: 60, column: 27, scope: !86)
!119 = !DILocation(line: 60, column: 33, scope: !86)
!120 = !DILocation(line: 60, column: 48, scope: !86)
!121 = !DILocation(line: 60, column: 51, scope: !86)
!122 = !DILocation(line: 60, column: 55, scope: !86)
!123 = !DILocation(line: 60, column: 9, scope: !86)
!124 = !DILocation(line: 61, column: 9, scope: !86)
!125 = !DILocation(line: 61, column: 16, scope: !86)
!126 = !DILocation(line: 61, column: 19, scope: !86)
!127 = !DILocation(line: 61, column: 23, scope: !86)
!128 = !DILocation(line: 61, column: 30, scope: !86)
!129 = !DILocation(line: 61, column: 35, scope: !86)
!130 = !DILocation(line: 63, column: 9, scope: !86)
!131 = !DILocation(line: 63, column: 12, scope: !86)
!132 = !DILocation(line: 63, column: 18, scope: !86)
!133 = !DILocation(line: 64, column: 28, scope: !86)
!134 = !DILocation(line: 64, column: 9, scope: !86)
!135 = !DILocation(line: 64, column: 12, scope: !86)
!136 = !DILocation(line: 64, column: 16, scope: !86)
!137 = !DILocation(line: 64, column: 26, scope: !86)
!138 = !DILocation(line: 65, column: 27, scope: !86)
!139 = !DILocation(line: 65, column: 9, scope: !86)
!140 = !DILocation(line: 65, column: 12, scope: !86)
!141 = !DILocation(line: 65, column: 25, scope: !86)
!142 = !DILocation(line: 67, column: 9, scope: !86)
!143 = !DILocation(line: 70, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !75, file: !10, line: 70, column: 9)
!145 = !DILocation(line: 70, column: 9, scope: !75)
!146 = !DILocalVariable(name: "next_power", scope: !147, file: !10, line: 71, type: !11)
!147 = distinct !DILexicalBlock(scope: !144, file: !10, line: 70, column: 44)
!148 = !DILocation(line: 71, column: 22, scope: !147)
!149 = !DILocation(line: 71, column: 58, scope: !147)
!150 = !DILocation(line: 71, column: 35, scope: !147)
!151 = !DILocalVariable(name: "buffer", scope: !147, file: !10, line: 72, type: !39)
!152 = !DILocation(line: 72, column: 15, scope: !147)
!153 = !DILocation(line: 72, column: 32, scope: !147)
!154 = !DILocation(line: 72, column: 35, scope: !147)
!155 = !DILocation(line: 72, column: 41, scope: !147)
!156 = !DILocation(line: 72, column: 49, scope: !147)
!157 = !DILocation(line: 72, column: 60, scope: !147)
!158 = !DILocation(line: 72, column: 24, scope: !147)
!159 = !DILocation(line: 73, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !147, file: !10, line: 73, column: 13)
!161 = !DILocation(line: 73, column: 13, scope: !147)
!162 = !DILocation(line: 74, column: 13, scope: !160)
!163 = !DILocation(line: 75, column: 28, scope: !147)
!164 = !DILocation(line: 75, column: 9, scope: !147)
!165 = !DILocation(line: 75, column: 12, scope: !147)
!166 = !DILocation(line: 75, column: 16, scope: !147)
!167 = !DILocation(line: 75, column: 26, scope: !147)
!168 = !DILocation(line: 76, column: 27, scope: !147)
!169 = !DILocation(line: 76, column: 9, scope: !147)
!170 = !DILocation(line: 76, column: 12, scope: !147)
!171 = !DILocation(line: 76, column: 25, scope: !147)
!172 = !DILocation(line: 77, column: 5, scope: !147)
!173 = !DILocation(line: 79, column: 5, scope: !75)
!174 = !DILocation(line: 80, column: 1, scope: !75)
!175 = distinct !DISubprogram(name: "strbuf_init", scope: !10, file: !10, line: 100, type: !176, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!176 = !DISubroutineType(types: !177)
!177 = !{!29, !30}
!178 = !DILocalVariable(name: "s", arg: 1, scope: !175, file: !10, line: 100, type: !30)
!179 = !DILocation(line: 100, column: 23, scope: !175)
!180 = !DILocation(line: 102, column: 34, scope: !175)
!181 = !DILocation(line: 102, column: 12, scope: !175)
!182 = !DILocation(line: 102, column: 5, scope: !175)
!183 = distinct !DISubprogram(name: "strbuf_new_with_size", scope: !10, file: !10, line: 106, type: !184, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!184 = !DISubroutineType(types: !185)
!185 = !{!30, !4}
!186 = !DILocalVariable(name: "size", arg: 1, scope: !183, file: !10, line: 106, type: !4)
!187 = !DILocation(line: 106, column: 29, scope: !183)
!188 = !DILocalVariable(name: "s", scope: !183, file: !10, line: 108, type: !30)
!189 = !DILocation(line: 108, column: 15, scope: !183)
!190 = !DILocation(line: 108, column: 19, scope: !183)
!191 = !DILocation(line: 109, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !183, file: !10, line: 109, column: 9)
!193 = !DILocation(line: 109, column: 9, scope: !183)
!194 = !DILocation(line: 110, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !10, line: 109, column: 52)
!196 = !DILocation(line: 110, column: 9, scope: !195)
!197 = !DILocation(line: 111, column: 11, scope: !195)
!198 = !DILocation(line: 112, column: 5, scope: !195)
!199 = !DILocation(line: 113, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !192, file: !10, line: 112, column: 12)
!201 = !DILocation(line: 113, column: 12, scope: !200)
!202 = !DILocation(line: 113, column: 18, scope: !200)
!203 = !DILocation(line: 115, column: 12, scope: !183)
!204 = !DILocation(line: 115, column: 5, scope: !183)
!205 = distinct !DISubprogram(name: "strbuf_new", scope: !10, file: !10, line: 119, type: !206, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!206 = !DISubroutineType(types: !207)
!207 = !{!30}
!208 = !DILocation(line: 121, column: 12, scope: !205)
!209 = !DILocation(line: 121, column: 5, scope: !205)
!210 = distinct !DISubprogram(name: "strbuf_free", scope: !10, file: !10, line: 125, type: !211, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !30}
!213 = !DILocalVariable(name: "s", arg: 1, scope: !210, file: !10, line: 125, type: !30)
!214 = !DILocation(line: 125, column: 23, scope: !210)
!215 = !DILocation(line: 127, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !10, line: 127, column: 9)
!217 = !DILocation(line: 127, column: 9, scope: !210)
!218 = !DILocation(line: 128, column: 9, scope: !216)
!219 = !DILocation(line: 129, column: 11, scope: !220)
!220 = distinct !DILexicalBlock(scope: !210, file: !10, line: 129, column: 9)
!221 = !DILocation(line: 129, column: 14, scope: !220)
!222 = !DILocation(line: 129, column: 20, scope: !220)
!223 = !DILocation(line: 129, column: 9, scope: !210)
!224 = !DILocation(line: 130, column: 14, scope: !220)
!225 = !DILocation(line: 130, column: 17, scope: !220)
!226 = !DILocation(line: 130, column: 23, scope: !220)
!227 = !DILocation(line: 130, column: 9, scope: !220)
!228 = !DILocation(line: 131, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !210, file: !10, line: 131, column: 9)
!230 = !DILocation(line: 131, column: 12, scope: !229)
!231 = !DILocation(line: 131, column: 18, scope: !229)
!232 = !DILocation(line: 131, column: 9, scope: !210)
!233 = !DILocation(line: 132, column: 14, scope: !229)
!234 = !DILocation(line: 132, column: 9, scope: !229)
!235 = !DILocation(line: 133, column: 1, scope: !210)
!236 = distinct !DISubprogram(name: "strbuf_append_char", scope: !10, file: !10, line: 136, type: !237, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!237 = !DISubroutineType(types: !238)
!238 = !{!29, !30, !43}
!239 = !DILocalVariable(name: "s", arg: 1, scope: !236, file: !10, line: 136, type: !30)
!240 = !DILocation(line: 136, column: 30, scope: !236)
!241 = !DILocalVariable(name: "c", arg: 2, scope: !236, file: !10, line: 136, type: !43)
!242 = !DILocation(line: 136, column: 44, scope: !236)
!243 = !DILocation(line: 138, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !10, line: 138, column: 9)
!245 = !DILocation(line: 138, column: 9, scope: !236)
!246 = !DILocation(line: 139, column: 9, scope: !244)
!247 = !DILocation(line: 141, column: 44, scope: !236)
!248 = !DILocation(line: 141, column: 7, scope: !236)
!249 = !DILocation(line: 141, column: 10, scope: !236)
!250 = !DILocation(line: 141, column: 16, scope: !236)
!251 = !DILocation(line: 141, column: 25, scope: !236)
!252 = !DILocation(line: 141, column: 28, scope: !236)
!253 = !DILocation(line: 141, column: 32, scope: !236)
!254 = !DILocation(line: 141, column: 38, scope: !236)
!255 = !DILocation(line: 141, column: 23, scope: !236)
!256 = !DILocation(line: 141, column: 42, scope: !236)
!257 = !DILocation(line: 142, column: 7, scope: !236)
!258 = !DILocation(line: 142, column: 10, scope: !236)
!259 = !DILocation(line: 142, column: 16, scope: !236)
!260 = !DILocation(line: 142, column: 25, scope: !236)
!261 = !DILocation(line: 142, column: 28, scope: !236)
!262 = !DILocation(line: 142, column: 32, scope: !236)
!263 = !DILocation(line: 142, column: 23, scope: !236)
!264 = !DILocation(line: 142, column: 40, scope: !236)
!265 = !DILocation(line: 144, column: 5, scope: !236)
!266 = !DILocation(line: 145, column: 1, scope: !236)
!267 = distinct !DISubprogram(name: "strbuf_append_str", scope: !10, file: !10, line: 148, type: !268, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!268 = !DISubroutineType(types: !269)
!269 = !{!29, !30, !42, !4}
!270 = !DILocalVariable(name: "s1", arg: 1, scope: !267, file: !10, line: 148, type: !30)
!271 = !DILocation(line: 148, column: 29, scope: !267)
!272 = !DILocalVariable(name: "s2", arg: 2, scope: !267, file: !10, line: 148, type: !42)
!273 = !DILocation(line: 148, column: 45, scope: !267)
!274 = !DILocalVariable(name: "sz", arg: 3, scope: !267, file: !10, line: 148, type: !4)
!275 = !DILocation(line: 148, column: 56, scope: !267)
!276 = !DILocation(line: 150, column: 10, scope: !277)
!277 = distinct !DILexicalBlock(scope: !267, file: !10, line: 150, column: 9)
!278 = !DILocation(line: 150, column: 9, scope: !267)
!279 = !DILocation(line: 151, column: 21, scope: !277)
!280 = !DILocation(line: 151, column: 14, scope: !277)
!281 = !DILocation(line: 151, column: 12, scope: !277)
!282 = !DILocation(line: 151, column: 9, scope: !277)
!283 = !DILocation(line: 153, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !267, file: !10, line: 153, column: 9)
!285 = !DILocation(line: 153, column: 9, scope: !267)
!286 = !DILocation(line: 154, column: 9, scope: !284)
!287 = !DILocation(line: 156, column: 12, scope: !267)
!288 = !DILocation(line: 156, column: 16, scope: !267)
!289 = !DILocation(line: 156, column: 22, scope: !267)
!290 = !DILocation(line: 156, column: 31, scope: !267)
!291 = !DILocation(line: 156, column: 35, scope: !267)
!292 = !DILocation(line: 156, column: 39, scope: !267)
!293 = !DILocation(line: 156, column: 29, scope: !267)
!294 = !DILocation(line: 156, column: 47, scope: !267)
!295 = !DILocation(line: 156, column: 51, scope: !267)
!296 = !DILocation(line: 156, column: 5, scope: !267)
!297 = !DILocation(line: 157, column: 23, scope: !267)
!298 = !DILocation(line: 157, column: 5, scope: !267)
!299 = !DILocation(line: 157, column: 9, scope: !267)
!300 = !DILocation(line: 157, column: 13, scope: !267)
!301 = !DILocation(line: 157, column: 20, scope: !267)
!302 = !DILocation(line: 158, column: 5, scope: !267)
!303 = !DILocation(line: 158, column: 9, scope: !267)
!304 = !DILocation(line: 158, column: 15, scope: !267)
!305 = !DILocation(line: 158, column: 22, scope: !267)
!306 = !DILocation(line: 158, column: 26, scope: !267)
!307 = !DILocation(line: 158, column: 30, scope: !267)
!308 = !DILocation(line: 158, column: 37, scope: !267)
!309 = !DILocation(line: 158, column: 42, scope: !267)
!310 = !DILocation(line: 160, column: 5, scope: !267)
!311 = !DILocation(line: 161, column: 1, scope: !267)
!312 = distinct !DISubprogram(name: "strbuf_set_static", scope: !10, file: !10, line: 164, type: !268, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!313 = !DILocalVariable(name: "s1", arg: 1, scope: !312, file: !10, line: 164, type: !30)
!314 = !DILocation(line: 164, column: 29, scope: !312)
!315 = !DILocalVariable(name: "s2", arg: 2, scope: !312, file: !10, line: 164, type: !42)
!316 = !DILocation(line: 164, column: 45, scope: !312)
!317 = !DILocalVariable(name: "sz", arg: 3, scope: !312, file: !10, line: 164, type: !4)
!318 = !DILocation(line: 164, column: 56, scope: !312)
!319 = !DILocation(line: 166, column: 10, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !10, line: 166, column: 9)
!321 = !DILocation(line: 166, column: 9, scope: !312)
!322 = !DILocation(line: 167, column: 21, scope: !320)
!323 = !DILocation(line: 167, column: 14, scope: !320)
!324 = !DILocation(line: 167, column: 12, scope: !320)
!325 = !DILocation(line: 167, column: 9, scope: !320)
!326 = !DILocation(line: 169, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !312, file: !10, line: 169, column: 9)
!328 = !DILocation(line: 169, column: 15, scope: !327)
!329 = !DILocation(line: 169, column: 21, scope: !327)
!330 = !DILocation(line: 169, column: 9, scope: !312)
!331 = !DILocation(line: 170, column: 14, scope: !327)
!332 = !DILocation(line: 170, column: 18, scope: !327)
!333 = !DILocation(line: 170, column: 24, scope: !327)
!334 = !DILocation(line: 170, column: 9, scope: !327)
!335 = !DILocation(line: 171, column: 31, scope: !312)
!336 = !DILocation(line: 171, column: 5, scope: !312)
!337 = !DILocation(line: 171, column: 9, scope: !312)
!338 = !DILocation(line: 171, column: 29, scope: !312)
!339 = !DILocation(line: 172, column: 42, scope: !312)
!340 = !DILocation(line: 172, column: 25, scope: !312)
!341 = !DILocation(line: 172, column: 29, scope: !312)
!342 = !DILocation(line: 172, column: 33, scope: !312)
!343 = !DILocation(line: 172, column: 40, scope: !312)
!344 = !DILocation(line: 172, column: 5, scope: !312)
!345 = !DILocation(line: 172, column: 9, scope: !312)
!346 = !DILocation(line: 172, column: 13, scope: !312)
!347 = !DILocation(line: 172, column: 23, scope: !312)
!348 = !DILocation(line: 173, column: 5, scope: !312)
!349 = !DILocation(line: 173, column: 9, scope: !312)
!350 = !DILocation(line: 173, column: 15, scope: !312)
!351 = !DILocation(line: 175, column: 5, scope: !312)
!352 = distinct !DISubprogram(name: "strbuf_set", scope: !10, file: !10, line: 179, type: !268, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!353 = !DILocalVariable(name: "s1", arg: 1, scope: !352, file: !10, line: 179, type: !30)
!354 = !DILocation(line: 179, column: 22, scope: !352)
!355 = !DILocalVariable(name: "s2", arg: 2, scope: !352, file: !10, line: 179, type: !42)
!356 = !DILocation(line: 179, column: 38, scope: !352)
!357 = !DILocalVariable(name: "sz", arg: 3, scope: !352, file: !10, line: 179, type: !4)
!358 = !DILocation(line: 179, column: 49, scope: !352)
!359 = !DILocation(line: 181, column: 10, scope: !360)
!360 = distinct !DILexicalBlock(scope: !352, file: !10, line: 181, column: 9)
!361 = !DILocation(line: 181, column: 9, scope: !352)
!362 = !DILocation(line: 182, column: 21, scope: !360)
!363 = !DILocation(line: 182, column: 14, scope: !360)
!364 = !DILocation(line: 182, column: 12, scope: !360)
!365 = !DILocation(line: 182, column: 9, scope: !360)
!366 = !DILocation(line: 184, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !352, file: !10, line: 184, column: 9)
!368 = !DILocation(line: 184, column: 9, scope: !352)
!369 = !DILocation(line: 185, column: 9, scope: !367)
!370 = !DILocation(line: 187, column: 12, scope: !352)
!371 = !DILocation(line: 187, column: 16, scope: !352)
!372 = !DILocation(line: 187, column: 22, scope: !352)
!373 = !DILocation(line: 187, column: 30, scope: !352)
!374 = !DILocation(line: 187, column: 34, scope: !352)
!375 = !DILocation(line: 187, column: 5, scope: !352)
!376 = !DILocation(line: 188, column: 22, scope: !352)
!377 = !DILocation(line: 188, column: 5, scope: !352)
!378 = !DILocation(line: 188, column: 9, scope: !352)
!379 = !DILocation(line: 188, column: 13, scope: !352)
!380 = !DILocation(line: 188, column: 20, scope: !352)
!381 = !DILocation(line: 189, column: 5, scope: !352)
!382 = !DILocation(line: 189, column: 9, scope: !352)
!383 = !DILocation(line: 189, column: 15, scope: !352)
!384 = !DILocation(line: 189, column: 22, scope: !352)
!385 = !DILocation(line: 189, column: 25, scope: !352)
!386 = !DILocation(line: 189, column: 30, scope: !352)
!387 = !DILocation(line: 191, column: 5, scope: !352)
!388 = !DILocation(line: 192, column: 1, scope: !352)
!389 = distinct !DISubprogram(name: "strbuf_cmp", scope: !10, file: !10, line: 195, type: !390, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!390 = !DISubroutineType(types: !391)
!391 = !{!3, !30, !30}
!392 = !DILocalVariable(name: "s1", arg: 1, scope: !389, file: !10, line: 195, type: !30)
!393 = !DILocation(line: 195, column: 22, scope: !389)
!394 = !DILocalVariable(name: "s2", arg: 2, scope: !389, file: !10, line: 195, type: !30)
!395 = !DILocation(line: 195, column: 36, scope: !389)
!396 = !DILocation(line: 197, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !389, file: !10, line: 197, column: 9)
!398 = !DILocation(line: 197, column: 15, scope: !397)
!399 = !DILocation(line: 197, column: 12, scope: !397)
!400 = !DILocation(line: 197, column: 9, scope: !389)
!401 = !DILocation(line: 198, column: 9, scope: !397)
!402 = !DILocalVariable(name: "result", scope: !389, file: !10, line: 199, type: !3)
!403 = !DILocation(line: 199, column: 9, scope: !389)
!404 = !DILocation(line: 199, column: 25, scope: !389)
!405 = !DILocation(line: 199, column: 29, scope: !389)
!406 = !DILocation(line: 199, column: 35, scope: !389)
!407 = !DILocation(line: 199, column: 43, scope: !389)
!408 = !DILocation(line: 199, column: 47, scope: !389)
!409 = !DILocation(line: 199, column: 53, scope: !389)
!410 = !DILocation(line: 199, column: 61, scope: !389)
!411 = !DILocation(line: 199, column: 65, scope: !389)
!412 = !DILocation(line: 199, column: 69, scope: !389)
!413 = !DILocation(line: 199, column: 78, scope: !389)
!414 = !DILocation(line: 199, column: 82, scope: !389)
!415 = !DILocation(line: 199, column: 86, scope: !389)
!416 = !DILocation(line: 199, column: 76, scope: !389)
!417 = !DILocation(line: 199, column: 95, scope: !389)
!418 = !DILocation(line: 199, column: 99, scope: !389)
!419 = !DILocation(line: 199, column: 103, scope: !389)
!420 = !DILocation(line: 199, column: 112, scope: !389)
!421 = !DILocation(line: 199, column: 116, scope: !389)
!422 = !DILocation(line: 199, column: 120, scope: !389)
!423 = !DILocation(line: 199, column: 18, scope: !389)
!424 = !DILocation(line: 200, column: 10, scope: !425)
!425 = distinct !DILexicalBlock(scope: !389, file: !10, line: 200, column: 9)
!426 = !DILocation(line: 200, column: 9, scope: !389)
!427 = !DILocation(line: 201, column: 22, scope: !425)
!428 = !DILocation(line: 201, column: 26, scope: !425)
!429 = !DILocation(line: 201, column: 30, scope: !425)
!430 = !DILocation(line: 201, column: 39, scope: !425)
!431 = !DILocation(line: 201, column: 43, scope: !425)
!432 = !DILocation(line: 201, column: 47, scope: !425)
!433 = !DILocation(line: 201, column: 37, scope: !425)
!434 = !DILocation(line: 201, column: 16, scope: !425)
!435 = !DILocation(line: 201, column: 9, scope: !425)
!436 = !DILocation(line: 202, column: 12, scope: !389)
!437 = !DILocation(line: 202, column: 5, scope: !389)
!438 = !DILocation(line: 203, column: 1, scope: !389)
!439 = distinct !DISubprogram(name: "strbuf_printf", scope: !10, file: !10, line: 221, type: !440, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!440 = !DISubroutineType(types: !441)
!441 = !{!29, !30, !42, null}
!442 = !DILocalVariable(name: "s", arg: 1, scope: !439, file: !10, line: 221, type: !30)
!443 = !DILocation(line: 221, column: 25, scope: !439)
!444 = !DILocalVariable(name: "fmt", arg: 2, scope: !439, file: !10, line: 221, type: !42)
!445 = !DILocation(line: 221, column: 40, scope: !439)
!446 = !DILocalVariable(name: "could_printf", scope: !439, file: !10, line: 223, type: !29)
!447 = !DILocation(line: 223, column: 10, scope: !439)
!448 = !DILocalVariable(name: "values", scope: !439, file: !10, line: 224, type: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !450, line: 52, baseType: !451)
!450 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !452, line: 14, baseType: !453)
!452 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !454, baseType: !455)
!454 = !DIFile(filename: "common/strbuf.c", directory: "/home/raj/lwan")
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 192, elements: !463)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !457)
!457 = !{!458, !459, !460, !462}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !456, file: !454, line: 224, baseType: !15, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !456, file: !454, line: 224, baseType: !15, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !456, file: !454, line: 224, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !456, file: !454, line: 224, baseType: !461, size: 64, offset: 128)
!463 = !{!464}
!464 = !DISubrange(count: 1)
!465 = !DILocation(line: 224, column: 13, scope: !439)
!466 = !DILocation(line: 226, column: 5, scope: !439)
!467 = !DILocation(line: 227, column: 36, scope: !439)
!468 = !DILocation(line: 227, column: 51, scope: !439)
!469 = !DILocation(line: 227, column: 56, scope: !439)
!470 = !DILocalVariable(name: "s1", arg: 1, scope: !471, file: !10, line: 206, type: !30)
!471 = distinct !DISubprogram(name: "internal_printf", scope: !10, file: !10, line: 206, type: !472, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !50)
!472 = !DISubroutineType(types: !473)
!473 = !{!29, !30, !474, !42, !475}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!476 = !DILocation(line: 206, column: 27, scope: !471, inlinedAt: !477)
!477 = distinct !DILocation(line: 227, column: 20, scope: !439)
!478 = !DILocalVariable(name: "save_str", arg: 2, scope: !471, file: !10, line: 206, type: !474)
!479 = !DILocation(line: 206, column: 38, scope: !471, inlinedAt: !477)
!480 = !DILocalVariable(name: "fmt", arg: 3, scope: !471, file: !10, line: 206, type: !42)
!481 = !DILocation(line: 206, column: 95, scope: !471, inlinedAt: !477)
!482 = !DILocalVariable(name: "values", arg: 4, scope: !471, file: !10, line: 206, type: !475)
!483 = !DILocation(line: 206, column: 108, scope: !471, inlinedAt: !477)
!484 = !DILocalVariable(name: "s2", scope: !471, file: !10, line: 208, type: !39)
!485 = !DILocation(line: 208, column: 11, scope: !471, inlinedAt: !477)
!486 = !DILocalVariable(name: "len", scope: !471, file: !10, line: 209, type: !3)
!487 = !DILocation(line: 209, column: 9, scope: !471, inlinedAt: !477)
!488 = !DILocation(line: 211, column: 9, scope: !489, inlinedAt: !477)
!489 = distinct !DILexicalBlock(scope: !471, file: !10, line: 211, column: 9)
!490 = !DILocation(line: 211, column: 9, scope: !471, inlinedAt: !477)
!491 = !DILocation(line: 212, column: 9, scope: !489, inlinedAt: !477)
!492 = !DILocalVariable(name: "success", scope: !471, file: !10, line: 214, type: !29)
!493 = !DILocation(line: 214, column: 10, scope: !471, inlinedAt: !477)
!494 = !DILocation(line: 214, column: 20, scope: !471, inlinedAt: !477)
!495 = !DILocation(line: 214, column: 29, scope: !471, inlinedAt: !477)
!496 = !DILocation(line: 214, column: 33, scope: !471, inlinedAt: !477)
!497 = !DILocation(line: 214, column: 45, scope: !471, inlinedAt: !477)
!498 = !DILocation(line: 214, column: 37, scope: !471, inlinedAt: !477)
!499 = !DILocation(line: 215, column: 10, scope: !471, inlinedAt: !477)
!500 = !DILocation(line: 215, column: 5, scope: !471, inlinedAt: !477)
!501 = !DILocation(line: 217, column: 12, scope: !471, inlinedAt: !477)
!502 = !DILocation(line: 217, column: 5, scope: !471, inlinedAt: !477)
!503 = !DILocation(line: 218, column: 1, scope: !471, inlinedAt: !477)
!504 = !DILocation(line: 227, column: 18, scope: !439)
!505 = !DILocation(line: 228, column: 5, scope: !439)
!506 = !DILocation(line: 230, column: 12, scope: !439)
!507 = !DILocation(line: 230, column: 5, scope: !439)
!508 = distinct !DISubprogram(name: "strbuf_append_printf", scope: !10, file: !10, line: 234, type: !440, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!509 = !DILocalVariable(name: "s", arg: 1, scope: !508, file: !10, line: 234, type: !30)
!510 = !DILocation(line: 234, column: 32, scope: !508)
!511 = !DILocalVariable(name: "fmt", arg: 2, scope: !508, file: !10, line: 234, type: !42)
!512 = !DILocation(line: 234, column: 47, scope: !508)
!513 = !DILocalVariable(name: "could_printf", scope: !508, file: !10, line: 236, type: !29)
!514 = !DILocation(line: 236, column: 10, scope: !508)
!515 = !DILocalVariable(name: "values", scope: !508, file: !10, line: 237, type: !449)
!516 = !DILocation(line: 237, column: 13, scope: !508)
!517 = !DILocation(line: 239, column: 5, scope: !508)
!518 = !DILocation(line: 240, column: 36, scope: !508)
!519 = !DILocation(line: 240, column: 58, scope: !508)
!520 = !DILocation(line: 240, column: 63, scope: !508)
!521 = !DILocation(line: 206, column: 27, scope: !471, inlinedAt: !522)
!522 = distinct !DILocation(line: 240, column: 20, scope: !508)
!523 = !DILocation(line: 206, column: 38, scope: !471, inlinedAt: !522)
!524 = !DILocation(line: 206, column: 95, scope: !471, inlinedAt: !522)
!525 = !DILocation(line: 206, column: 108, scope: !471, inlinedAt: !522)
!526 = !DILocation(line: 208, column: 11, scope: !471, inlinedAt: !522)
!527 = !DILocation(line: 209, column: 9, scope: !471, inlinedAt: !522)
!528 = !DILocation(line: 211, column: 9, scope: !489, inlinedAt: !522)
!529 = !DILocation(line: 211, column: 9, scope: !471, inlinedAt: !522)
!530 = !DILocation(line: 212, column: 9, scope: !489, inlinedAt: !522)
!531 = !DILocation(line: 214, column: 10, scope: !471, inlinedAt: !522)
!532 = !DILocation(line: 214, column: 20, scope: !471, inlinedAt: !522)
!533 = !DILocation(line: 214, column: 29, scope: !471, inlinedAt: !522)
!534 = !DILocation(line: 214, column: 33, scope: !471, inlinedAt: !522)
!535 = !DILocation(line: 214, column: 45, scope: !471, inlinedAt: !522)
!536 = !DILocation(line: 214, column: 37, scope: !471, inlinedAt: !522)
!537 = !DILocation(line: 215, column: 10, scope: !471, inlinedAt: !522)
!538 = !DILocation(line: 215, column: 5, scope: !471, inlinedAt: !522)
!539 = !DILocation(line: 217, column: 12, scope: !471, inlinedAt: !522)
!540 = !DILocation(line: 217, column: 5, scope: !471, inlinedAt: !522)
!541 = !DILocation(line: 218, column: 1, scope: !471, inlinedAt: !522)
!542 = !DILocation(line: 240, column: 18, scope: !508)
!543 = !DILocation(line: 241, column: 5, scope: !508)
!544 = !DILocation(line: 243, column: 12, scope: !508)
!545 = !DILocation(line: 243, column: 5, scope: !508)
!546 = distinct !DISubprogram(name: "strbuf_shrink_to", scope: !10, file: !10, line: 247, type: !27, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!547 = !DILocalVariable(name: "s", arg: 1, scope: !546, file: !10, line: 247, type: !30)
!548 = !DILocation(line: 247, column: 28, scope: !546)
!549 = !DILocalVariable(name: "new_size", arg: 2, scope: !546, file: !10, line: 247, type: !4)
!550 = !DILocation(line: 247, column: 38, scope: !546)
!551 = !DILocation(line: 249, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !10, line: 249, column: 9)
!553 = !DILocation(line: 249, column: 12, scope: !552)
!554 = !DILocation(line: 249, column: 16, scope: !552)
!555 = !DILocation(line: 249, column: 29, scope: !552)
!556 = !DILocation(line: 249, column: 26, scope: !552)
!557 = !DILocation(line: 249, column: 9, scope: !546)
!558 = !DILocation(line: 250, column: 9, scope: !552)
!559 = !DILocation(line: 252, column: 9, scope: !560)
!560 = distinct !DILexicalBlock(scope: !546, file: !10, line: 252, column: 9)
!561 = !DILocation(line: 252, column: 12, scope: !560)
!562 = !DILocation(line: 252, column: 18, scope: !560)
!563 = !DILocation(line: 252, column: 9, scope: !546)
!564 = !DILocation(line: 253, column: 9, scope: !560)
!565 = !DILocalVariable(name: "next_power_of_two", scope: !546, file: !10, line: 255, type: !4)
!566 = !DILocation(line: 255, column: 12, scope: !546)
!567 = !DILocation(line: 255, column: 55, scope: !546)
!568 = !DILocation(line: 255, column: 32, scope: !546)
!569 = !DILocalVariable(name: "buffer", scope: !546, file: !10, line: 256, type: !39)
!570 = !DILocation(line: 256, column: 11, scope: !546)
!571 = !DILocation(line: 256, column: 28, scope: !546)
!572 = !DILocation(line: 256, column: 31, scope: !546)
!573 = !DILocation(line: 256, column: 37, scope: !546)
!574 = !DILocation(line: 256, column: 45, scope: !546)
!575 = !DILocation(line: 256, column: 63, scope: !546)
!576 = !DILocation(line: 256, column: 20, scope: !546)
!577 = !DILocation(line: 257, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !546, file: !10, line: 257, column: 9)
!579 = !DILocation(line: 257, column: 9, scope: !546)
!580 = !DILocation(line: 258, column: 9, scope: !578)
!581 = !DILocation(line: 260, column: 23, scope: !546)
!582 = !DILocation(line: 260, column: 5, scope: !546)
!583 = !DILocation(line: 260, column: 8, scope: !546)
!584 = !DILocation(line: 260, column: 21, scope: !546)
!585 = !DILocation(line: 261, column: 24, scope: !546)
!586 = !DILocation(line: 261, column: 5, scope: !546)
!587 = !DILocation(line: 261, column: 8, scope: !546)
!588 = !DILocation(line: 261, column: 12, scope: !546)
!589 = !DILocation(line: 261, column: 22, scope: !546)
!590 = !DILocation(line: 262, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !546, file: !10, line: 262, column: 9)
!592 = !DILocation(line: 262, column: 12, scope: !591)
!593 = !DILocation(line: 262, column: 16, scope: !591)
!594 = !DILocation(line: 262, column: 25, scope: !591)
!595 = !DILocation(line: 262, column: 23, scope: !591)
!596 = !DILocation(line: 262, column: 9, scope: !546)
!597 = !DILocation(line: 263, column: 25, scope: !598)
!598 = distinct !DILexicalBlock(scope: !591, file: !10, line: 262, column: 44)
!599 = !DILocation(line: 263, column: 43, scope: !598)
!600 = !DILocation(line: 263, column: 9, scope: !598)
!601 = !DILocation(line: 263, column: 12, scope: !598)
!602 = !DILocation(line: 263, column: 16, scope: !598)
!603 = !DILocation(line: 263, column: 23, scope: !598)
!604 = !DILocation(line: 264, column: 9, scope: !598)
!605 = !DILocation(line: 264, column: 12, scope: !598)
!606 = !DILocation(line: 264, column: 18, scope: !598)
!607 = !DILocation(line: 264, column: 25, scope: !598)
!608 = !DILocation(line: 264, column: 28, scope: !598)
!609 = !DILocation(line: 264, column: 32, scope: !598)
!610 = !DILocation(line: 264, column: 39, scope: !598)
!611 = !DILocation(line: 264, column: 44, scope: !598)
!612 = !DILocation(line: 265, column: 5, scope: !598)
!613 = !DILocation(line: 267, column: 5, scope: !546)
!614 = !DILocation(line: 268, column: 1, scope: !546)
!615 = distinct !DISubprogram(name: "find_next_power_of_two", scope: !10, file: !10, line: 33, type: !616, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !50)
!616 = !DISubroutineType(types: !617)
!617 = !{!4, !4}
!618 = !DILocalVariable(name: "number", arg: 1, scope: !615, file: !10, line: 33, type: !4)
!619 = !DILocation(line: 33, column: 31, scope: !615)
!620 = !DILocation(line: 35, column: 11, scope: !615)
!621 = !DILocation(line: 36, column: 15, scope: !615)
!622 = !DILocation(line: 36, column: 22, scope: !615)
!623 = !DILocation(line: 36, column: 12, scope: !615)
!624 = !DILocation(line: 37, column: 15, scope: !615)
!625 = !DILocation(line: 37, column: 22, scope: !615)
!626 = !DILocation(line: 37, column: 12, scope: !615)
!627 = !DILocation(line: 38, column: 15, scope: !615)
!628 = !DILocation(line: 38, column: 22, scope: !615)
!629 = !DILocation(line: 38, column: 12, scope: !615)
!630 = !DILocation(line: 39, column: 15, scope: !615)
!631 = !DILocation(line: 39, column: 22, scope: !615)
!632 = !DILocation(line: 39, column: 12, scope: !615)
!633 = !DILocation(line: 40, column: 15, scope: !615)
!634 = !DILocation(line: 40, column: 22, scope: !615)
!635 = !DILocation(line: 40, column: 12, scope: !615)
!636 = !DILocation(line: 41, column: 12, scope: !615)
!637 = !DILocation(line: 41, column: 19, scope: !615)
!638 = !DILocation(line: 41, column: 5, scope: !615)
!639 = distinct !DISubprogram(name: "strbuf_shrink_to_default", scope: !10, file: !10, line: 271, type: !176, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!640 = !DILocalVariable(name: "s", arg: 1, scope: !639, file: !10, line: 271, type: !30)
!641 = !DILocation(line: 271, column: 36, scope: !639)
!642 = !DILocation(line: 273, column: 29, scope: !639)
!643 = !DILocation(line: 273, column: 12, scope: !639)
!644 = !DILocation(line: 273, column: 5, scope: !639)
!645 = distinct !DISubprogram(name: "strbuf_reset", scope: !10, file: !10, line: 277, type: !176, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!646 = !DILocalVariable(name: "s", arg: 1, scope: !645, file: !10, line: 277, type: !30)
!647 = !DILocation(line: 277, column: 24, scope: !645)
!648 = !DILocation(line: 279, column: 30, scope: !645)
!649 = !DILocation(line: 271, column: 36, scope: !639, inlinedAt: !650)
!650 = distinct !DILocation(line: 279, column: 5, scope: !645)
!651 = !DILocation(line: 273, column: 29, scope: !639, inlinedAt: !650)
!652 = !DILocation(line: 273, column: 12, scope: !639, inlinedAt: !650)
!653 = !DILocation(line: 280, column: 5, scope: !645)
!654 = !DILocation(line: 280, column: 8, scope: !645)
!655 = !DILocation(line: 280, column: 12, scope: !645)
!656 = !DILocation(line: 280, column: 19, scope: !645)
!657 = !DILocation(line: 281, column: 5, scope: !645)
!658 = distinct !DISubprogram(name: "strbuf_grow_to", scope: !10, file: !10, line: 285, type: !27, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!659 = !DILocalVariable(name: "s", arg: 1, scope: !658, file: !10, line: 285, type: !30)
!660 = !DILocation(line: 285, column: 26, scope: !658)
!661 = !DILocalVariable(name: "new_size", arg: 2, scope: !658, file: !10, line: 285, type: !4)
!662 = !DILocation(line: 285, column: 36, scope: !658)
!663 = !DILocation(line: 287, column: 34, scope: !658)
!664 = !DILocation(line: 287, column: 37, scope: !658)
!665 = !DILocation(line: 287, column: 46, scope: !658)
!666 = !DILocation(line: 287, column: 12, scope: !658)
!667 = !DILocation(line: 287, column: 5, scope: !658)
!668 = distinct !DISubprogram(name: "strbuf_reset_length", scope: !10, file: !10, line: 291, type: !176, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!669 = !DILocalVariable(name: "s", arg: 1, scope: !668, file: !10, line: 291, type: !30)
!670 = !DILocation(line: 291, column: 31, scope: !668)
!671 = !DILocation(line: 293, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !668, file: !10, line: 293, column: 9)
!673 = !DILocation(line: 293, column: 12, scope: !672)
!674 = !DILocation(line: 293, column: 18, scope: !672)
!675 = !DILocation(line: 293, column: 9, scope: !668)
!676 = !DILocation(line: 294, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !672, file: !10, line: 293, column: 28)
!678 = !DILocation(line: 294, column: 12, scope: !677)
!679 = !DILocation(line: 294, column: 18, scope: !677)
!680 = !DILocation(line: 295, column: 34, scope: !677)
!681 = !DILocation(line: 295, column: 37, scope: !677)
!682 = !DILocation(line: 295, column: 41, scope: !677)
!683 = !DILocation(line: 295, column: 27, scope: !677)
!684 = !DILocation(line: 295, column: 9, scope: !677)
!685 = !DILocation(line: 295, column: 12, scope: !677)
!686 = !DILocation(line: 295, column: 25, scope: !677)
!687 = !DILocation(line: 296, column: 13, scope: !688)
!688 = distinct !DILexicalBlock(scope: !677, file: !10, line: 296, column: 13)
!689 = !DILocation(line: 296, column: 13, scope: !677)
!690 = !DILocation(line: 297, column: 13, scope: !688)
!691 = !DILocation(line: 298, column: 5, scope: !677)
!692 = !DILocation(line: 300, column: 5, scope: !668)
!693 = !DILocation(line: 300, column: 8, scope: !668)
!694 = !DILocation(line: 300, column: 12, scope: !668)
!695 = !DILocation(line: 300, column: 19, scope: !668)
!696 = !DILocation(line: 301, column: 5, scope: !668)
!697 = !DILocation(line: 301, column: 8, scope: !668)
!698 = !DILocation(line: 301, column: 14, scope: !668)
!699 = !DILocation(line: 301, column: 24, scope: !668)
!700 = !DILocation(line: 303, column: 5, scope: !668)
!701 = !DILocation(line: 304, column: 1, scope: !668)
