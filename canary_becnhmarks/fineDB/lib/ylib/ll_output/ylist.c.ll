; ModuleID = './ylist.c'
source_filename = "./ylist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ylist_s = type { ptr, ptr }
%struct.ylist_elem_s = type { ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ylist_new() #0 !dbg !25 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !30, metadata !DIExpression()), !dbg !31
  %2 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 16) #4, !dbg !32
  store ptr %2, ptr %1, align 8, !dbg !33
  %3 = load ptr, ptr %1, align 8, !dbg !34
  ret ptr %3, !dbg !35
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @ylist_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !36 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !42, metadata !DIExpression()), !dbg !43
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !44, metadata !DIExpression()), !dbg !45
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata ptr %7, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata ptr %8, metadata !52, metadata !DIExpression()), !dbg !53
  %9 = load ptr, ptr %4, align 8, !dbg !54
  %10 = getelementptr inbounds %struct.ylist_s, ptr %9, i32 0, i32 0, !dbg !55
  %11 = load ptr, ptr %10, align 8, !dbg !55
  store ptr %11, ptr %7, align 8, !dbg !56
  br label %12, !dbg !57

12:                                               ; preds = %34, %3
  %13 = load ptr, ptr %7, align 8, !dbg !58
  %14 = icmp ne ptr %13, null, !dbg !57
  br i1 %14, label %15, label %36, !dbg !57

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8, !dbg !59
  %17 = icmp ne ptr %16, null, !dbg !59
  br i1 %17, label %18, label %24, !dbg !62

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 8, !dbg !63
  %20 = load ptr, ptr %7, align 8, !dbg !64
  %21 = getelementptr inbounds %struct.ylist_elem_s, ptr %20, i32 0, i32 0, !dbg !65
  %22 = load ptr, ptr %21, align 8, !dbg !65
  %23 = load ptr, ptr %6, align 8, !dbg !66
  call void %19(ptr noundef %22, ptr noundef %23), !dbg !63
  br label %24, !dbg !63

24:                                               ; preds = %18, %15
  %25 = load ptr, ptr %7, align 8, !dbg !67
  store ptr %25, ptr %8, align 8, !dbg !68
  %26 = load ptr, ptr %7, align 8, !dbg !69
  %27 = getelementptr inbounds %struct.ylist_elem_s, ptr %26, i32 0, i32 2, !dbg !70
  %28 = load ptr, ptr %27, align 8, !dbg !70
  store ptr %28, ptr %7, align 8, !dbg !71
  %29 = load ptr, ptr %8, align 8, !dbg !72
  %30 = icmp ne ptr %29, null, !dbg !72
  br i1 %30, label %31, label %33, !dbg !72

31:                                               ; preds = %24
  %32 = load ptr, ptr %8, align 8, !dbg !72
  call void @free(ptr noundef %32) #5, !dbg !72
  br label %34, !dbg !72

33:                                               ; preds = %24
  br label %34, !dbg !72

34:                                               ; preds = %33, %31
  %35 = phi ptr [ null, %31 ], [ null, %33 ], !dbg !72
  store ptr null, ptr %8, align 8, !dbg !72
  br label %12, !dbg !57, !llvm.loop !73

36:                                               ; preds = %12
  %37 = load ptr, ptr %4, align 8, !dbg !75
  %38 = icmp ne ptr %37, null, !dbg !75
  br i1 %38, label %39, label %41, !dbg !75

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 8, !dbg !75
  call void @free(ptr noundef %40) #5, !dbg !75
  br label %42, !dbg !75

41:                                               ; preds = %36
  br label %42, !dbg !75

42:                                               ; preds = %41, %39
  %43 = phi ptr [ null, %39 ], [ null, %41 ], !dbg !75
  store ptr null, ptr %4, align 8, !dbg !75
  ret void, !dbg !76
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ylist_add(ptr noundef %0, ptr noundef %1) #0 !dbg !77 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !80, metadata !DIExpression()), !dbg !81
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata ptr %5, metadata !84, metadata !DIExpression()), !dbg !85
  %6 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #4, !dbg !86
  store ptr %6, ptr %5, align 8, !dbg !87
  %7 = load ptr, ptr %4, align 8, !dbg !88
  %8 = load ptr, ptr %5, align 8, !dbg !89
  %9 = getelementptr inbounds %struct.ylist_elem_s, ptr %8, i32 0, i32 0, !dbg !90
  store ptr %7, ptr %9, align 8, !dbg !91
  %10 = load ptr, ptr %3, align 8, !dbg !92
  %11 = getelementptr inbounds %struct.ylist_s, ptr %10, i32 0, i32 1, !dbg !93
  %12 = load ptr, ptr %11, align 8, !dbg !93
  %13 = load ptr, ptr %5, align 8, !dbg !94
  %14 = getelementptr inbounds %struct.ylist_elem_s, ptr %13, i32 0, i32 1, !dbg !95
  store ptr %12, ptr %14, align 8, !dbg !96
  %15 = load ptr, ptr %3, align 8, !dbg !97
  %16 = load ptr, ptr %5, align 8, !dbg !98
  %17 = getelementptr inbounds %struct.ylist_elem_s, ptr %16, i32 0, i32 3, !dbg !99
  store ptr %15, ptr %17, align 8, !dbg !100
  %18 = load ptr, ptr %3, align 8, !dbg !101
  %19 = getelementptr inbounds %struct.ylist_s, ptr %18, i32 0, i32 1, !dbg !103
  %20 = load ptr, ptr %19, align 8, !dbg !103
  %21 = icmp ne ptr %20, null, !dbg !101
  br i1 %21, label %22, label %28, !dbg !104

22:                                               ; preds = %2
  %23 = load ptr, ptr %5, align 8, !dbg !105
  %24 = load ptr, ptr %3, align 8, !dbg !106
  %25 = getelementptr inbounds %struct.ylist_s, ptr %24, i32 0, i32 1, !dbg !107
  %26 = load ptr, ptr %25, align 8, !dbg !107
  %27 = getelementptr inbounds %struct.ylist_elem_s, ptr %26, i32 0, i32 2, !dbg !108
  store ptr %23, ptr %27, align 8, !dbg !109
  br label %34, !dbg !106

28:                                               ; preds = %2
  %29 = load ptr, ptr %5, align 8, !dbg !110
  %30 = load ptr, ptr %3, align 8, !dbg !111
  %31 = getelementptr inbounds %struct.ylist_s, ptr %30, i32 0, i32 0, !dbg !112
  store ptr %29, ptr %31, align 8, !dbg !113
  %32 = load ptr, ptr %3, align 8, !dbg !114
  %33 = getelementptr inbounds %struct.ylist_s, ptr %32, i32 0, i32 1, !dbg !115
  store ptr %29, ptr %33, align 8, !dbg !116
  br label %34

34:                                               ; preds = %28, %22
  %35 = load ptr, ptr %5, align 8, !dbg !117
  %36 = load ptr, ptr %3, align 8, !dbg !118
  %37 = getelementptr inbounds %struct.ylist_s, ptr %36, i32 0, i32 1, !dbg !119
  store ptr %35, ptr %37, align 8, !dbg !120
  %38 = load ptr, ptr %5, align 8, !dbg !121
  ret ptr %38, !dbg !122
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ylist_push(ptr noundef %0, ptr noundef %1) #0 !dbg !123 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !124, metadata !DIExpression()), !dbg !125
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata ptr %5, metadata !128, metadata !DIExpression()), !dbg !129
  %6 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #4, !dbg !130
  store ptr %6, ptr %5, align 8, !dbg !131
  %7 = load ptr, ptr %4, align 8, !dbg !132
  %8 = load ptr, ptr %5, align 8, !dbg !133
  %9 = getelementptr inbounds %struct.ylist_elem_s, ptr %8, i32 0, i32 0, !dbg !134
  store ptr %7, ptr %9, align 8, !dbg !135
  %10 = load ptr, ptr %3, align 8, !dbg !136
  %11 = getelementptr inbounds %struct.ylist_s, ptr %10, i32 0, i32 0, !dbg !137
  %12 = load ptr, ptr %11, align 8, !dbg !137
  %13 = load ptr, ptr %5, align 8, !dbg !138
  %14 = getelementptr inbounds %struct.ylist_elem_s, ptr %13, i32 0, i32 2, !dbg !139
  store ptr %12, ptr %14, align 8, !dbg !140
  %15 = load ptr, ptr %3, align 8, !dbg !141
  %16 = load ptr, ptr %5, align 8, !dbg !142
  %17 = getelementptr inbounds %struct.ylist_elem_s, ptr %16, i32 0, i32 3, !dbg !143
  store ptr %15, ptr %17, align 8, !dbg !144
  %18 = load ptr, ptr %3, align 8, !dbg !145
  %19 = getelementptr inbounds %struct.ylist_s, ptr %18, i32 0, i32 0, !dbg !147
  %20 = load ptr, ptr %19, align 8, !dbg !147
  %21 = icmp ne ptr %20, null, !dbg !145
  br i1 %21, label %22, label %28, !dbg !148

22:                                               ; preds = %2
  %23 = load ptr, ptr %5, align 8, !dbg !149
  %24 = load ptr, ptr %3, align 8, !dbg !150
  %25 = getelementptr inbounds %struct.ylist_s, ptr %24, i32 0, i32 0, !dbg !151
  %26 = load ptr, ptr %25, align 8, !dbg !151
  %27 = getelementptr inbounds %struct.ylist_elem_s, ptr %26, i32 0, i32 1, !dbg !152
  store ptr %23, ptr %27, align 8, !dbg !153
  br label %34, !dbg !150

28:                                               ; preds = %2
  %29 = load ptr, ptr %5, align 8, !dbg !154
  %30 = load ptr, ptr %3, align 8, !dbg !155
  %31 = getelementptr inbounds %struct.ylist_s, ptr %30, i32 0, i32 1, !dbg !156
  store ptr %29, ptr %31, align 8, !dbg !157
  %32 = load ptr, ptr %3, align 8, !dbg !158
  %33 = getelementptr inbounds %struct.ylist_s, ptr %32, i32 0, i32 0, !dbg !159
  store ptr %29, ptr %33, align 8, !dbg !160
  br label %34

34:                                               ; preds = %28, %22
  %35 = load ptr, ptr %5, align 8, !dbg !161
  %36 = load ptr, ptr %3, align 8, !dbg !162
  %37 = getelementptr inbounds %struct.ylist_s, ptr %36, i32 0, i32 0, !dbg !163
  store ptr %35, ptr %37, align 8, !dbg !164
  %38 = load ptr, ptr %5, align 8, !dbg !165
  ret ptr %38, !dbg !166
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ylist_remove(ptr noundef %0) #0 !dbg !167 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata ptr %4, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata ptr %5, metadata !174, metadata !DIExpression()), !dbg !175
  %6 = load ptr, ptr %3, align 8, !dbg !176
  %7 = getelementptr inbounds %struct.ylist_s, ptr %6, i32 0, i32 1, !dbg !178
  %8 = load ptr, ptr %7, align 8, !dbg !178
  %9 = icmp eq ptr %8, null, !dbg !179
  br i1 %9, label %10, label %11, !dbg !180

10:                                               ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !181
  br label %44, !dbg !181

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !182
  %13 = getelementptr inbounds %struct.ylist_s, ptr %12, i32 0, i32 1, !dbg !183
  %14 = load ptr, ptr %13, align 8, !dbg !183
  store ptr %14, ptr %4, align 8, !dbg !184
  %15 = load ptr, ptr %4, align 8, !dbg !185
  %16 = getelementptr inbounds %struct.ylist_elem_s, ptr %15, i32 0, i32 1, !dbg !186
  %17 = load ptr, ptr %16, align 8, !dbg !186
  %18 = load ptr, ptr %3, align 8, !dbg !187
  %19 = getelementptr inbounds %struct.ylist_s, ptr %18, i32 0, i32 1, !dbg !188
  store ptr %17, ptr %19, align 8, !dbg !189
  %20 = load ptr, ptr %4, align 8, !dbg !190
  %21 = getelementptr inbounds %struct.ylist_elem_s, ptr %20, i32 0, i32 1, !dbg !192
  %22 = load ptr, ptr %21, align 8, !dbg !192
  %23 = icmp ne ptr %22, null, !dbg !190
  br i1 %23, label %24, label %29, !dbg !193

24:                                               ; preds = %11
  %25 = load ptr, ptr %4, align 8, !dbg !194
  %26 = getelementptr inbounds %struct.ylist_elem_s, ptr %25, i32 0, i32 1, !dbg !195
  %27 = load ptr, ptr %26, align 8, !dbg !195
  %28 = getelementptr inbounds %struct.ylist_elem_s, ptr %27, i32 0, i32 2, !dbg !196
  store ptr null, ptr %28, align 8, !dbg !197
  br label %32, !dbg !194

29:                                               ; preds = %11
  %30 = load ptr, ptr %3, align 8, !dbg !198
  %31 = getelementptr inbounds %struct.ylist_s, ptr %30, i32 0, i32 0, !dbg !199
  store ptr null, ptr %31, align 8, !dbg !200
  br label %32

32:                                               ; preds = %29, %24
  %33 = load ptr, ptr %4, align 8, !dbg !201
  %34 = getelementptr inbounds %struct.ylist_elem_s, ptr %33, i32 0, i32 0, !dbg !202
  %35 = load ptr, ptr %34, align 8, !dbg !202
  store ptr %35, ptr %5, align 8, !dbg !203
  %36 = load ptr, ptr %4, align 8, !dbg !204
  %37 = icmp ne ptr %36, null, !dbg !204
  br i1 %37, label %38, label %40, !dbg !204

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 8, !dbg !204
  call void @free(ptr noundef %39) #5, !dbg !204
  br label %41, !dbg !204

40:                                               ; preds = %32
  br label %41, !dbg !204

41:                                               ; preds = %40, %38
  %42 = phi ptr [ null, %38 ], [ null, %40 ], !dbg !204
  store ptr null, ptr %4, align 8, !dbg !204
  %43 = load ptr, ptr %5, align 8, !dbg !205
  store ptr %43, ptr %2, align 8, !dbg !206
  br label %44, !dbg !206

44:                                               ; preds = %41, %10
  %45 = load ptr, ptr %2, align 8, !dbg !207
  ret ptr %45, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ylist_pop(ptr noundef %0) #0 !dbg !208 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata ptr %4, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata ptr %5, metadata !213, metadata !DIExpression()), !dbg !214
  %6 = load ptr, ptr %3, align 8, !dbg !215
  %7 = getelementptr inbounds %struct.ylist_s, ptr %6, i32 0, i32 0, !dbg !217
  %8 = load ptr, ptr %7, align 8, !dbg !217
  %9 = icmp eq ptr %8, null, !dbg !218
  br i1 %9, label %10, label %11, !dbg !219

10:                                               ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !220
  br label %44, !dbg !220

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !221
  %13 = getelementptr inbounds %struct.ylist_s, ptr %12, i32 0, i32 0, !dbg !222
  %14 = load ptr, ptr %13, align 8, !dbg !222
  store ptr %14, ptr %4, align 8, !dbg !223
  %15 = load ptr, ptr %4, align 8, !dbg !224
  %16 = getelementptr inbounds %struct.ylist_elem_s, ptr %15, i32 0, i32 2, !dbg !225
  %17 = load ptr, ptr %16, align 8, !dbg !225
  %18 = load ptr, ptr %3, align 8, !dbg !226
  %19 = getelementptr inbounds %struct.ylist_s, ptr %18, i32 0, i32 0, !dbg !227
  store ptr %17, ptr %19, align 8, !dbg !228
  %20 = load ptr, ptr %4, align 8, !dbg !229
  %21 = getelementptr inbounds %struct.ylist_elem_s, ptr %20, i32 0, i32 2, !dbg !231
  %22 = load ptr, ptr %21, align 8, !dbg !231
  %23 = icmp ne ptr %22, null, !dbg !229
  br i1 %23, label %24, label %29, !dbg !232

24:                                               ; preds = %11
  %25 = load ptr, ptr %4, align 8, !dbg !233
  %26 = getelementptr inbounds %struct.ylist_elem_s, ptr %25, i32 0, i32 2, !dbg !234
  %27 = load ptr, ptr %26, align 8, !dbg !234
  %28 = getelementptr inbounds %struct.ylist_elem_s, ptr %27, i32 0, i32 1, !dbg !235
  store ptr null, ptr %28, align 8, !dbg !236
  br label %32, !dbg !233

29:                                               ; preds = %11
  %30 = load ptr, ptr %3, align 8, !dbg !237
  %31 = getelementptr inbounds %struct.ylist_s, ptr %30, i32 0, i32 1, !dbg !238
  store ptr null, ptr %31, align 8, !dbg !239
  br label %32

32:                                               ; preds = %29, %24
  %33 = load ptr, ptr %4, align 8, !dbg !240
  %34 = getelementptr inbounds %struct.ylist_elem_s, ptr %33, i32 0, i32 0, !dbg !241
  %35 = load ptr, ptr %34, align 8, !dbg !241
  store ptr %35, ptr %5, align 8, !dbg !242
  %36 = load ptr, ptr %4, align 8, !dbg !243
  %37 = icmp ne ptr %36, null, !dbg !243
  br i1 %37, label %38, label %40, !dbg !243

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 8, !dbg !243
  call void @free(ptr noundef %39) #5, !dbg !243
  br label %41, !dbg !243

40:                                               ; preds = %32
  br label %41, !dbg !243

41:                                               ; preds = %40, %38
  %42 = phi ptr [ null, %38 ], [ null, %40 ], !dbg !243
  store ptr null, ptr %4, align 8, !dbg !243
  %43 = load ptr, ptr %5, align 8, !dbg !244
  store ptr %43, ptr %2, align 8, !dbg !245
  br label %44, !dbg !245

44:                                               ; preds = %41, %10
  %45 = load ptr, ptr %2, align 8, !dbg !246
  ret ptr %45, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define void @ylist_swap(ptr noundef %0, ptr noundef %1) #0 !dbg !247 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !250, metadata !DIExpression()), !dbg !251
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata ptr %5, metadata !254, metadata !DIExpression()), !dbg !255
  %6 = load ptr, ptr %3, align 8, !dbg !256
  %7 = getelementptr inbounds %struct.ylist_elem_s, ptr %6, i32 0, i32 3, !dbg !257
  %8 = load ptr, ptr %7, align 8, !dbg !257
  store ptr %8, ptr %5, align 8, !dbg !258
  %9 = load ptr, ptr %5, align 8, !dbg !259
  %10 = getelementptr inbounds %struct.ylist_s, ptr %9, i32 0, i32 0, !dbg !261
  %11 = load ptr, ptr %10, align 8, !dbg !261
  %12 = load ptr, ptr %3, align 8, !dbg !262
  %13 = icmp eq ptr %11, %12, !dbg !263
  br i1 %13, label %14, label %20, !dbg !264

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !dbg !265
  %16 = getelementptr inbounds %struct.ylist_elem_s, ptr %15, i32 0, i32 2, !dbg !266
  %17 = load ptr, ptr %16, align 8, !dbg !266
  %18 = load ptr, ptr %5, align 8, !dbg !267
  %19 = getelementptr inbounds %struct.ylist_s, ptr %18, i32 0, i32 0, !dbg !268
  store ptr %17, ptr %19, align 8, !dbg !269
  br label %33, !dbg !267

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !dbg !270
  %22 = getelementptr inbounds %struct.ylist_s, ptr %21, i32 0, i32 1, !dbg !272
  %23 = load ptr, ptr %22, align 8, !dbg !272
  %24 = load ptr, ptr %3, align 8, !dbg !273
  %25 = icmp eq ptr %23, %24, !dbg !274
  br i1 %25, label %26, label %32, !dbg !275

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 8, !dbg !276
  %28 = getelementptr inbounds %struct.ylist_elem_s, ptr %27, i32 0, i32 1, !dbg !277
  %29 = load ptr, ptr %28, align 8, !dbg !277
  %30 = load ptr, ptr %5, align 8, !dbg !278
  %31 = getelementptr inbounds %struct.ylist_s, ptr %30, i32 0, i32 1, !dbg !279
  store ptr %29, ptr %31, align 8, !dbg !280
  br label %32, !dbg !278

32:                                               ; preds = %26, %20
  br label %33

33:                                               ; preds = %32, %14
  %34 = load ptr, ptr %3, align 8, !dbg !281
  %35 = getelementptr inbounds %struct.ylist_elem_s, ptr %34, i32 0, i32 2, !dbg !283
  %36 = load ptr, ptr %35, align 8, !dbg !283
  %37 = icmp ne ptr %36, null, !dbg !281
  br i1 %37, label %38, label %46, !dbg !284

38:                                               ; preds = %33
  %39 = load ptr, ptr %3, align 8, !dbg !285
  %40 = getelementptr inbounds %struct.ylist_elem_s, ptr %39, i32 0, i32 1, !dbg !286
  %41 = load ptr, ptr %40, align 8, !dbg !286
  %42 = load ptr, ptr %3, align 8, !dbg !287
  %43 = getelementptr inbounds %struct.ylist_elem_s, ptr %42, i32 0, i32 2, !dbg !288
  %44 = load ptr, ptr %43, align 8, !dbg !288
  %45 = getelementptr inbounds %struct.ylist_elem_s, ptr %44, i32 0, i32 1, !dbg !289
  store ptr %41, ptr %45, align 8, !dbg !290
  br label %46, !dbg !287

46:                                               ; preds = %38, %33
  %47 = load ptr, ptr %3, align 8, !dbg !291
  %48 = getelementptr inbounds %struct.ylist_elem_s, ptr %47, i32 0, i32 1, !dbg !293
  %49 = load ptr, ptr %48, align 8, !dbg !293
  %50 = icmp ne ptr %49, null, !dbg !291
  br i1 %50, label %51, label %59, !dbg !294

51:                                               ; preds = %46
  %52 = load ptr, ptr %3, align 8, !dbg !295
  %53 = getelementptr inbounds %struct.ylist_elem_s, ptr %52, i32 0, i32 2, !dbg !296
  %54 = load ptr, ptr %53, align 8, !dbg !296
  %55 = load ptr, ptr %3, align 8, !dbg !297
  %56 = getelementptr inbounds %struct.ylist_elem_s, ptr %55, i32 0, i32 1, !dbg !298
  %57 = load ptr, ptr %56, align 8, !dbg !298
  %58 = getelementptr inbounds %struct.ylist_elem_s, ptr %57, i32 0, i32 2, !dbg !299
  store ptr %54, ptr %58, align 8, !dbg !300
  br label %59, !dbg !297

59:                                               ; preds = %51, %46
  %60 = load ptr, ptr %4, align 8, !dbg !301
  %61 = load ptr, ptr %3, align 8, !dbg !302
  %62 = getelementptr inbounds %struct.ylist_elem_s, ptr %61, i32 0, i32 3, !dbg !303
  store ptr %60, ptr %62, align 8, !dbg !304
  %63 = load ptr, ptr %4, align 8, !dbg !305
  %64 = getelementptr inbounds %struct.ylist_s, ptr %63, i32 0, i32 1, !dbg !307
  %65 = load ptr, ptr %64, align 8, !dbg !307
  %66 = icmp ne ptr %65, null, !dbg !305
  br i1 %66, label %67, label %78, !dbg !308

67:                                               ; preds = %59
  %68 = load ptr, ptr %4, align 8, !dbg !309
  %69 = getelementptr inbounds %struct.ylist_s, ptr %68, i32 0, i32 1, !dbg !311
  %70 = load ptr, ptr %69, align 8, !dbg !311
  %71 = load ptr, ptr %3, align 8, !dbg !312
  %72 = getelementptr inbounds %struct.ylist_elem_s, ptr %71, i32 0, i32 1, !dbg !313
  store ptr %70, ptr %72, align 8, !dbg !314
  %73 = load ptr, ptr %3, align 8, !dbg !315
  %74 = load ptr, ptr %4, align 8, !dbg !316
  %75 = getelementptr inbounds %struct.ylist_s, ptr %74, i32 0, i32 1, !dbg !317
  %76 = load ptr, ptr %75, align 8, !dbg !317
  %77 = getelementptr inbounds %struct.ylist_elem_s, ptr %76, i32 0, i32 2, !dbg !318
  store ptr %73, ptr %77, align 8, !dbg !319
  br label %88, !dbg !320

78:                                               ; preds = %59
  %79 = load ptr, ptr %3, align 8, !dbg !321
  %80 = getelementptr inbounds %struct.ylist_elem_s, ptr %79, i32 0, i32 2, !dbg !323
  store ptr null, ptr %80, align 8, !dbg !324
  %81 = load ptr, ptr %3, align 8, !dbg !325
  %82 = getelementptr inbounds %struct.ylist_elem_s, ptr %81, i32 0, i32 1, !dbg !326
  store ptr null, ptr %82, align 8, !dbg !327
  %83 = load ptr, ptr %3, align 8, !dbg !328
  %84 = load ptr, ptr %4, align 8, !dbg !329
  %85 = getelementptr inbounds %struct.ylist_s, ptr %84, i32 0, i32 1, !dbg !330
  store ptr %83, ptr %85, align 8, !dbg !331
  %86 = load ptr, ptr %4, align 8, !dbg !332
  %87 = getelementptr inbounds %struct.ylist_s, ptr %86, i32 0, i32 0, !dbg !333
  store ptr %83, ptr %87, align 8, !dbg !334
  br label %88

88:                                               ; preds = %78, %67
  ret void, !dbg !335
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ylist.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "c198d40357385a907cad8c974d4d55bf")
!2 = !{!3, !13}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylist_t", file: !5, line: 17, baseType: !6)
!5 = !DIFile(filename: "./ylist.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "cd1a692311a6e7b1b7f8f010dea30a29")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ylist_s", file: !5, line: 14, size: 128, elements: !7)
!7 = !{!8, !17}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !6, file: !5, line: 15, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ylist_elem_s", file: !5, line: 27, size: 256, elements: !11)
!11 = !{!12, !14, !15, !16}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !10, file: !5, line: 28, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !10, file: !5, line: 29, baseType: !9, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !5, line: 30, baseType: !9, size: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !10, file: !5, line: 31, baseType: !3, size: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6, file: !5, line: 16, baseType: !9, size: 64, offset: 64)
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 8, !"PIC Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 16.0.0"}
!25 = distinct !DISubprogram(name: "ylist_new", scope: !26, file: !26, line: 5, type: !27, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!26 = !DIFile(filename: "./ylist.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "c198d40357385a907cad8c974d4d55bf")
!27 = !DISubroutineType(types: !28)
!28 = !{!3}
!29 = !{}
!30 = !DILocalVariable(name: "list", scope: !25, file: !26, line: 6, type: !3)
!31 = !DILocation(line: 6, column: 11, scope: !25)
!32 = !DILocation(line: 8, column: 19, scope: !25)
!33 = !DILocation(line: 8, column: 7, scope: !25)
!34 = !DILocation(line: 9, column: 10, scope: !25)
!35 = !DILocation(line: 9, column: 2, scope: !25)
!36 = distinct !DISubprogram(name: "ylist_delete", scope: !26, file: !26, line: 13, type: !37, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !3, !39, !13}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !13, !13}
!42 = !DILocalVariable(name: "list", arg: 1, scope: !36, file: !26, line: 13, type: !3)
!43 = !DILocation(line: 13, column: 28, scope: !36)
!44 = !DILocalVariable(name: "delete_function", arg: 2, scope: !36, file: !26, line: 13, type: !39)
!45 = !DILocation(line: 13, column: 41, scope: !36)
!46 = !DILocalVariable(name: "delete_data", arg: 3, scope: !36, file: !26, line: 14, type: !13)
!47 = !DILocation(line: 14, column: 11, scope: !36)
!48 = !DILocalVariable(name: "elem", scope: !36, file: !26, line: 15, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylist_elem_t", file: !5, line: 32, baseType: !10)
!51 = !DILocation(line: 15, column: 16, scope: !36)
!52 = !DILocalVariable(name: "elem_ptr", scope: !36, file: !26, line: 15, type: !49)
!53 = !DILocation(line: 15, column: 23, scope: !36)
!54 = !DILocation(line: 17, column: 9, scope: !36)
!55 = !DILocation(line: 17, column: 15, scope: !36)
!56 = !DILocation(line: 17, column: 7, scope: !36)
!57 = !DILocation(line: 18, column: 2, scope: !36)
!58 = !DILocation(line: 18, column: 9, scope: !36)
!59 = !DILocation(line: 19, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !26, line: 19, column: 7)
!61 = distinct !DILexicalBlock(scope: !36, file: !26, line: 18, column: 15)
!62 = !DILocation(line: 19, column: 7, scope: !61)
!63 = !DILocation(line: 20, column: 4, scope: !60)
!64 = !DILocation(line: 20, column: 20, scope: !60)
!65 = !DILocation(line: 20, column: 26, scope: !60)
!66 = !DILocation(line: 20, column: 32, scope: !60)
!67 = !DILocation(line: 21, column: 14, scope: !61)
!68 = !DILocation(line: 21, column: 12, scope: !61)
!69 = !DILocation(line: 22, column: 10, scope: !61)
!70 = !DILocation(line: 22, column: 16, scope: !61)
!71 = !DILocation(line: 22, column: 8, scope: !61)
!72 = !DILocation(line: 23, column: 3, scope: !61)
!73 = distinct !{!73, !57, !74}
!74 = !DILocation(line: 24, column: 2, scope: !36)
!75 = !DILocation(line: 25, column: 2, scope: !36)
!76 = !DILocation(line: 26, column: 1, scope: !36)
!77 = distinct !DISubprogram(name: "ylist_add", scope: !26, file: !26, line: 29, type: !78, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!78 = !DISubroutineType(types: !79)
!79 = !{!49, !3, !13}
!80 = !DILocalVariable(name: "list", arg: 1, scope: !77, file: !26, line: 29, type: !3)
!81 = !DILocation(line: 29, column: 34, scope: !77)
!82 = !DILocalVariable(name: "data", arg: 2, scope: !77, file: !26, line: 29, type: !13)
!83 = !DILocation(line: 29, column: 46, scope: !77)
!84 = !DILocalVariable(name: "elem", scope: !77, file: !26, line: 30, type: !49)
!85 = !DILocation(line: 30, column: 16, scope: !77)
!86 = !DILocation(line: 32, column: 9, scope: !77)
!87 = !DILocation(line: 32, column: 7, scope: !77)
!88 = !DILocation(line: 33, column: 15, scope: !77)
!89 = !DILocation(line: 33, column: 2, scope: !77)
!90 = !DILocation(line: 33, column: 8, scope: !77)
!91 = !DILocation(line: 33, column: 13, scope: !77)
!92 = !DILocation(line: 34, column: 15, scope: !77)
!93 = !DILocation(line: 34, column: 21, scope: !77)
!94 = !DILocation(line: 34, column: 2, scope: !77)
!95 = !DILocation(line: 34, column: 8, scope: !77)
!96 = !DILocation(line: 34, column: 13, scope: !77)
!97 = !DILocation(line: 35, column: 15, scope: !77)
!98 = !DILocation(line: 35, column: 2, scope: !77)
!99 = !DILocation(line: 35, column: 8, scope: !77)
!100 = !DILocation(line: 35, column: 13, scope: !77)
!101 = !DILocation(line: 36, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !77, file: !26, line: 36, column: 6)
!103 = !DILocation(line: 36, column: 12, scope: !102)
!104 = !DILocation(line: 36, column: 6, scope: !77)
!105 = !DILocation(line: 37, column: 22, scope: !102)
!106 = !DILocation(line: 37, column: 3, scope: !102)
!107 = !DILocation(line: 37, column: 9, scope: !102)
!108 = !DILocation(line: 37, column: 15, scope: !102)
!109 = !DILocation(line: 37, column: 20, scope: !102)
!110 = !DILocation(line: 39, column: 30, scope: !102)
!111 = !DILocation(line: 39, column: 16, scope: !102)
!112 = !DILocation(line: 39, column: 22, scope: !102)
!113 = !DILocation(line: 39, column: 28, scope: !102)
!114 = !DILocation(line: 39, column: 3, scope: !102)
!115 = !DILocation(line: 39, column: 9, scope: !102)
!116 = !DILocation(line: 39, column: 14, scope: !102)
!117 = !DILocation(line: 40, column: 15, scope: !77)
!118 = !DILocation(line: 40, column: 2, scope: !77)
!119 = !DILocation(line: 40, column: 8, scope: !77)
!120 = !DILocation(line: 40, column: 13, scope: !77)
!121 = !DILocation(line: 41, column: 10, scope: !77)
!122 = !DILocation(line: 41, column: 2, scope: !77)
!123 = distinct !DISubprogram(name: "ylist_push", scope: !26, file: !26, line: 45, type: !78, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!124 = !DILocalVariable(name: "list", arg: 1, scope: !123, file: !26, line: 45, type: !3)
!125 = !DILocation(line: 45, column: 35, scope: !123)
!126 = !DILocalVariable(name: "data", arg: 2, scope: !123, file: !26, line: 45, type: !13)
!127 = !DILocation(line: 45, column: 47, scope: !123)
!128 = !DILocalVariable(name: "elem", scope: !123, file: !26, line: 46, type: !49)
!129 = !DILocation(line: 46, column: 16, scope: !123)
!130 = !DILocation(line: 48, column: 9, scope: !123)
!131 = !DILocation(line: 48, column: 7, scope: !123)
!132 = !DILocation(line: 49, column: 15, scope: !123)
!133 = !DILocation(line: 49, column: 2, scope: !123)
!134 = !DILocation(line: 49, column: 8, scope: !123)
!135 = !DILocation(line: 49, column: 13, scope: !123)
!136 = !DILocation(line: 50, column: 15, scope: !123)
!137 = !DILocation(line: 50, column: 21, scope: !123)
!138 = !DILocation(line: 50, column: 2, scope: !123)
!139 = !DILocation(line: 50, column: 8, scope: !123)
!140 = !DILocation(line: 50, column: 13, scope: !123)
!141 = !DILocation(line: 51, column: 15, scope: !123)
!142 = !DILocation(line: 51, column: 2, scope: !123)
!143 = !DILocation(line: 51, column: 8, scope: !123)
!144 = !DILocation(line: 51, column: 13, scope: !123)
!145 = !DILocation(line: 52, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !123, file: !26, line: 52, column: 6)
!147 = !DILocation(line: 52, column: 12, scope: !146)
!148 = !DILocation(line: 52, column: 6, scope: !123)
!149 = !DILocation(line: 53, column: 23, scope: !146)
!150 = !DILocation(line: 53, column: 3, scope: !146)
!151 = !DILocation(line: 53, column: 9, scope: !146)
!152 = !DILocation(line: 53, column: 16, scope: !146)
!153 = !DILocation(line: 53, column: 21, scope: !146)
!154 = !DILocation(line: 55, column: 30, scope: !146)
!155 = !DILocation(line: 55, column: 17, scope: !146)
!156 = !DILocation(line: 55, column: 23, scope: !146)
!157 = !DILocation(line: 55, column: 28, scope: !146)
!158 = !DILocation(line: 55, column: 3, scope: !146)
!159 = !DILocation(line: 55, column: 9, scope: !146)
!160 = !DILocation(line: 55, column: 15, scope: !146)
!161 = !DILocation(line: 56, column: 16, scope: !123)
!162 = !DILocation(line: 56, column: 2, scope: !123)
!163 = !DILocation(line: 56, column: 8, scope: !123)
!164 = !DILocation(line: 56, column: 14, scope: !123)
!165 = !DILocation(line: 57, column: 10, scope: !123)
!166 = !DILocation(line: 57, column: 2, scope: !123)
!167 = distinct !DISubprogram(name: "ylist_remove", scope: !26, file: !26, line: 61, type: !168, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!168 = !DISubroutineType(types: !169)
!169 = !{!13, !3}
!170 = !DILocalVariable(name: "list", arg: 1, scope: !167, file: !26, line: 61, type: !3)
!171 = !DILocation(line: 61, column: 29, scope: !167)
!172 = !DILocalVariable(name: "elem", scope: !167, file: !26, line: 62, type: !49)
!173 = !DILocation(line: 62, column: 16, scope: !167)
!174 = !DILocalVariable(name: "data", scope: !167, file: !26, line: 63, type: !13)
!175 = !DILocation(line: 63, column: 8, scope: !167)
!176 = !DILocation(line: 65, column: 6, scope: !177)
!177 = distinct !DILexicalBlock(scope: !167, file: !26, line: 65, column: 6)
!178 = !DILocation(line: 65, column: 12, scope: !177)
!179 = !DILocation(line: 65, column: 17, scope: !177)
!180 = !DILocation(line: 65, column: 6, scope: !167)
!181 = !DILocation(line: 66, column: 3, scope: !177)
!182 = !DILocation(line: 67, column: 9, scope: !167)
!183 = !DILocation(line: 67, column: 15, scope: !167)
!184 = !DILocation(line: 67, column: 7, scope: !167)
!185 = !DILocation(line: 68, column: 15, scope: !167)
!186 = !DILocation(line: 68, column: 21, scope: !167)
!187 = !DILocation(line: 68, column: 2, scope: !167)
!188 = !DILocation(line: 68, column: 8, scope: !167)
!189 = !DILocation(line: 68, column: 13, scope: !167)
!190 = !DILocation(line: 69, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !167, file: !26, line: 69, column: 6)
!192 = !DILocation(line: 69, column: 12, scope: !191)
!193 = !DILocation(line: 69, column: 6, scope: !167)
!194 = !DILocation(line: 70, column: 3, scope: !191)
!195 = !DILocation(line: 70, column: 9, scope: !191)
!196 = !DILocation(line: 70, column: 15, scope: !191)
!197 = !DILocation(line: 70, column: 20, scope: !191)
!198 = !DILocation(line: 72, column: 3, scope: !191)
!199 = !DILocation(line: 72, column: 9, scope: !191)
!200 = !DILocation(line: 72, column: 15, scope: !191)
!201 = !DILocation(line: 73, column: 9, scope: !167)
!202 = !DILocation(line: 73, column: 15, scope: !167)
!203 = !DILocation(line: 73, column: 7, scope: !167)
!204 = !DILocation(line: 74, column: 2, scope: !167)
!205 = !DILocation(line: 75, column: 10, scope: !167)
!206 = !DILocation(line: 75, column: 2, scope: !167)
!207 = !DILocation(line: 76, column: 1, scope: !167)
!208 = distinct !DISubprogram(name: "ylist_pop", scope: !26, file: !26, line: 79, type: !168, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!209 = !DILocalVariable(name: "list", arg: 1, scope: !208, file: !26, line: 79, type: !3)
!210 = !DILocation(line: 79, column: 26, scope: !208)
!211 = !DILocalVariable(name: "elem", scope: !208, file: !26, line: 80, type: !49)
!212 = !DILocation(line: 80, column: 16, scope: !208)
!213 = !DILocalVariable(name: "data", scope: !208, file: !26, line: 81, type: !13)
!214 = !DILocation(line: 81, column: 8, scope: !208)
!215 = !DILocation(line: 83, column: 6, scope: !216)
!216 = distinct !DILexicalBlock(scope: !208, file: !26, line: 83, column: 6)
!217 = !DILocation(line: 83, column: 12, scope: !216)
!218 = !DILocation(line: 83, column: 18, scope: !216)
!219 = !DILocation(line: 83, column: 6, scope: !208)
!220 = !DILocation(line: 84, column: 3, scope: !216)
!221 = !DILocation(line: 85, column: 9, scope: !208)
!222 = !DILocation(line: 85, column: 15, scope: !208)
!223 = !DILocation(line: 85, column: 7, scope: !208)
!224 = !DILocation(line: 86, column: 16, scope: !208)
!225 = !DILocation(line: 86, column: 22, scope: !208)
!226 = !DILocation(line: 86, column: 2, scope: !208)
!227 = !DILocation(line: 86, column: 8, scope: !208)
!228 = !DILocation(line: 86, column: 14, scope: !208)
!229 = !DILocation(line: 87, column: 6, scope: !230)
!230 = distinct !DILexicalBlock(scope: !208, file: !26, line: 87, column: 6)
!231 = !DILocation(line: 87, column: 12, scope: !230)
!232 = !DILocation(line: 87, column: 6, scope: !208)
!233 = !DILocation(line: 88, column: 3, scope: !230)
!234 = !DILocation(line: 88, column: 9, scope: !230)
!235 = !DILocation(line: 88, column: 15, scope: !230)
!236 = !DILocation(line: 88, column: 20, scope: !230)
!237 = !DILocation(line: 90, column: 3, scope: !230)
!238 = !DILocation(line: 90, column: 9, scope: !230)
!239 = !DILocation(line: 90, column: 14, scope: !230)
!240 = !DILocation(line: 91, column: 9, scope: !208)
!241 = !DILocation(line: 91, column: 15, scope: !208)
!242 = !DILocation(line: 91, column: 7, scope: !208)
!243 = !DILocation(line: 92, column: 2, scope: !208)
!244 = !DILocation(line: 93, column: 10, scope: !208)
!245 = !DILocation(line: 93, column: 2, scope: !208)
!246 = !DILocation(line: 94, column: 1, scope: !208)
!247 = distinct !DISubprogram(name: "ylist_swap", scope: !26, file: !26, line: 97, type: !248, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !49, !3}
!250 = !DILocalVariable(name: "elem", arg: 1, scope: !247, file: !26, line: 97, type: !49)
!251 = !DILocation(line: 97, column: 31, scope: !247)
!252 = !DILocalVariable(name: "dest", arg: 2, scope: !247, file: !26, line: 97, type: !3)
!253 = !DILocation(line: 97, column: 46, scope: !247)
!254 = !DILocalVariable(name: "src", scope: !247, file: !26, line: 98, type: !3)
!255 = !DILocation(line: 98, column: 11, scope: !247)
!256 = !DILocation(line: 101, column: 8, scope: !247)
!257 = !DILocation(line: 101, column: 14, scope: !247)
!258 = !DILocation(line: 101, column: 6, scope: !247)
!259 = !DILocation(line: 102, column: 6, scope: !260)
!260 = distinct !DILexicalBlock(scope: !247, file: !26, line: 102, column: 6)
!261 = !DILocation(line: 102, column: 11, scope: !260)
!262 = !DILocation(line: 102, column: 20, scope: !260)
!263 = !DILocation(line: 102, column: 17, scope: !260)
!264 = !DILocation(line: 102, column: 6, scope: !247)
!265 = !DILocation(line: 103, column: 16, scope: !260)
!266 = !DILocation(line: 103, column: 22, scope: !260)
!267 = !DILocation(line: 103, column: 3, scope: !260)
!268 = !DILocation(line: 103, column: 8, scope: !260)
!269 = !DILocation(line: 103, column: 14, scope: !260)
!270 = !DILocation(line: 104, column: 11, scope: !271)
!271 = distinct !DILexicalBlock(scope: !260, file: !26, line: 104, column: 11)
!272 = !DILocation(line: 104, column: 16, scope: !271)
!273 = !DILocation(line: 104, column: 24, scope: !271)
!274 = !DILocation(line: 104, column: 21, scope: !271)
!275 = !DILocation(line: 104, column: 11, scope: !260)
!276 = !DILocation(line: 105, column: 15, scope: !271)
!277 = !DILocation(line: 105, column: 21, scope: !271)
!278 = !DILocation(line: 105, column: 3, scope: !271)
!279 = !DILocation(line: 105, column: 8, scope: !271)
!280 = !DILocation(line: 105, column: 13, scope: !271)
!281 = !DILocation(line: 106, column: 6, scope: !282)
!282 = distinct !DILexicalBlock(scope: !247, file: !26, line: 106, column: 6)
!283 = !DILocation(line: 106, column: 12, scope: !282)
!284 = !DILocation(line: 106, column: 6, scope: !247)
!285 = !DILocation(line: 107, column: 22, scope: !282)
!286 = !DILocation(line: 107, column: 28, scope: !282)
!287 = !DILocation(line: 107, column: 3, scope: !282)
!288 = !DILocation(line: 107, column: 9, scope: !282)
!289 = !DILocation(line: 107, column: 15, scope: !282)
!290 = !DILocation(line: 107, column: 20, scope: !282)
!291 = !DILocation(line: 108, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !247, file: !26, line: 108, column: 6)
!293 = !DILocation(line: 108, column: 12, scope: !292)
!294 = !DILocation(line: 108, column: 6, scope: !247)
!295 = !DILocation(line: 109, column: 22, scope: !292)
!296 = !DILocation(line: 109, column: 28, scope: !292)
!297 = !DILocation(line: 109, column: 3, scope: !292)
!298 = !DILocation(line: 109, column: 9, scope: !292)
!299 = !DILocation(line: 109, column: 15, scope: !292)
!300 = !DILocation(line: 109, column: 20, scope: !292)
!301 = !DILocation(line: 111, column: 15, scope: !247)
!302 = !DILocation(line: 111, column: 2, scope: !247)
!303 = !DILocation(line: 111, column: 8, scope: !247)
!304 = !DILocation(line: 111, column: 13, scope: !247)
!305 = !DILocation(line: 112, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !247, file: !26, line: 112, column: 6)
!307 = !DILocation(line: 112, column: 12, scope: !306)
!308 = !DILocation(line: 112, column: 6, scope: !247)
!309 = !DILocation(line: 113, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !26, line: 112, column: 18)
!311 = !DILocation(line: 113, column: 22, scope: !310)
!312 = !DILocation(line: 113, column: 3, scope: !310)
!313 = !DILocation(line: 113, column: 9, scope: !310)
!314 = !DILocation(line: 113, column: 14, scope: !310)
!315 = !DILocation(line: 114, column: 22, scope: !310)
!316 = !DILocation(line: 114, column: 3, scope: !310)
!317 = !DILocation(line: 114, column: 9, scope: !310)
!318 = !DILocation(line: 114, column: 15, scope: !310)
!319 = !DILocation(line: 114, column: 20, scope: !310)
!320 = !DILocation(line: 115, column: 2, scope: !310)
!321 = !DILocation(line: 116, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !306, file: !26, line: 115, column: 9)
!323 = !DILocation(line: 116, column: 22, scope: !322)
!324 = !DILocation(line: 116, column: 27, scope: !322)
!325 = !DILocation(line: 116, column: 3, scope: !322)
!326 = !DILocation(line: 116, column: 9, scope: !322)
!327 = !DILocation(line: 116, column: 14, scope: !322)
!328 = !DILocation(line: 117, column: 30, scope: !322)
!329 = !DILocation(line: 117, column: 17, scope: !322)
!330 = !DILocation(line: 117, column: 23, scope: !322)
!331 = !DILocation(line: 117, column: 28, scope: !322)
!332 = !DILocation(line: 117, column: 3, scope: !322)
!333 = !DILocation(line: 117, column: 9, scope: !322)
!334 = !DILocation(line: 117, column: 15, scope: !322)
!335 = !DILocation(line: 119, column: 1, scope: !247)
