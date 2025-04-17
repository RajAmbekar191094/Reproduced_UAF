; ModuleID = '/home/raj/coturn/src/server/ns_turn_maps_rtcp.c'
source_filename = "/home/raj/coturn/src/server/ns_turn_maps_rtcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._rtcp_map = type { i32, ptr, ptr, %struct._turn_mutex }
%struct._turn_mutex = type { i32, ptr }
%struct.rtcp_alloc_type = type { ptr, i32, i64 }
%struct.timeout_check_arg_type = type { [1024 x i64], i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"rtcp_map_timeout_handler\00", align 1, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @rtcp_map_create(ptr noundef %0) #0 !dbg !78 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata ptr %4, metadata !88, metadata !DIExpression()), !dbg !89
  %5 = call noalias ptr @malloc(i64 noundef 40) #6, !dbg !90
  store ptr %5, ptr %4, align 8, !dbg !89
  %6 = load ptr, ptr %4, align 8, !dbg !91
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 40, i1 false), !dbg !92
  %7 = load ptr, ptr %4, align 8, !dbg !93
  %8 = load ptr, ptr %3, align 8, !dbg !95
  %9 = call i32 @rtcp_map_init(ptr noundef %7, ptr noundef %8), !dbg !96
  %10 = icmp slt i32 %9, 0, !dbg !97
  br i1 %10, label %11, label %13, !dbg !98

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 8, !dbg !99
  call void @free(ptr noundef %12) #7, !dbg !101
  store ptr null, ptr %2, align 8, !dbg !102
  br label %15, !dbg !102

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 8, !dbg !103
  store ptr %14, ptr %2, align 8, !dbg !104
  br label %15, !dbg !104

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %2, align 8, !dbg !105
  ret ptr %16, !dbg !105
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtcp_map_init(ptr noundef %0, ptr noundef %1) #0 !dbg !106 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !109, metadata !DIExpression()), !dbg !110
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !111, metadata !DIExpression()), !dbg !112
  %6 = load ptr, ptr %4, align 8, !dbg !113
  %7 = icmp ne ptr %6, null, !dbg !113
  br i1 %7, label %8, label %37, !dbg !115

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !116
  %10 = getelementptr inbounds %struct._rtcp_map, ptr %9, i32 0, i32 0, !dbg !119
  %11 = load i32, ptr %10, align 8, !dbg !119
  %12 = icmp ne i32 %11, 1988465667, !dbg !120
  br i1 %12, label %13, label %36, !dbg !121

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !dbg !122
  %15 = getelementptr inbounds %struct._rtcp_map, ptr %14, i32 0, i32 0, !dbg !124
  store i32 1988465667, ptr %15, align 8, !dbg !125
  %16 = call ptr @ur_map_create(), !dbg !126
  %17 = load ptr, ptr %4, align 8, !dbg !127
  %18 = getelementptr inbounds %struct._rtcp_map, ptr %17, i32 0, i32 1, !dbg !128
  store ptr %16, ptr %18, align 8, !dbg !129
  %19 = load ptr, ptr %5, align 8, !dbg !130
  %20 = icmp ne ptr %19, null, !dbg !130
  br i1 %20, label %21, label %27, !dbg !132

21:                                               ; preds = %13
  %22 = load ptr, ptr %5, align 8, !dbg !133
  %23 = load ptr, ptr %4, align 8, !dbg !134
  %24 = call ptr @set_ioa_timer(ptr noundef %22, i32 noundef 3, i32 noundef 0, ptr noundef @rtcp_map_timeout_handler, ptr noundef %23, i32 noundef 1, ptr noundef @.str), !dbg !135
  %25 = load ptr, ptr %4, align 8, !dbg !136
  %26 = getelementptr inbounds %struct._rtcp_map, ptr %25, i32 0, i32 2, !dbg !137
  store ptr %24, ptr %26, align 8, !dbg !138
  br label %27, !dbg !136

27:                                               ; preds = %21, %13
  %28 = load ptr, ptr %4, align 8, !dbg !139
  %29 = getelementptr inbounds %struct._rtcp_map, ptr %28, i32 0, i32 3, !dbg !139
  %30 = call i32 @turn_mutex_init(ptr noundef %29), !dbg !139
  %31 = load ptr, ptr %4, align 8, !dbg !140
  %32 = call i32 @rtcp_map_valid(ptr noundef %31), !dbg !142
  %33 = icmp ne i32 %32, 0, !dbg !142
  br i1 %33, label %34, label %35, !dbg !143

34:                                               ; preds = %27
  store i32 0, ptr %3, align 4, !dbg !144
  br label %38, !dbg !144

35:                                               ; preds = %27
  br label %36, !dbg !145

36:                                               ; preds = %35, %8
  br label %37, !dbg !146

37:                                               ; preds = %36, %2
  store i32 -1, ptr %3, align 4, !dbg !147
  br label %38, !dbg !147

38:                                               ; preds = %37, %34
  %39 = load i32, ptr %3, align 4, !dbg !148
  ret i32 %39, !dbg !148
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtcp_map_put(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !149 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !152, metadata !DIExpression()), !dbg !153
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !154, metadata !DIExpression()), !dbg !155
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !156, metadata !DIExpression()), !dbg !157
  %10 = load ptr, ptr %5, align 8, !dbg !158
  %11 = call i32 @rtcp_map_valid(ptr noundef %10), !dbg !160
  %12 = icmp ne i32 %11, 0, !dbg !160
  br i1 %12, label %14, label %13, !dbg !161

13:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !162
  br label %51, !dbg !162

14:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !163, metadata !DIExpression()), !dbg !165
  %15 = call noalias ptr @malloc(i64 noundef 24) #6, !dbg !166
  store ptr %15, ptr %8, align 8, !dbg !165
  %16 = load ptr, ptr %8, align 8, !dbg !167
  %17 = icmp ne ptr %16, null, !dbg !167
  br i1 %17, label %19, label %18, !dbg !169

18:                                               ; preds = %14
  store i32 -1, ptr %4, align 4, !dbg !170
  br label %51, !dbg !170

19:                                               ; preds = %14
  %20 = load ptr, ptr %8, align 8, !dbg !171
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 24, i1 false), !dbg !172
  %21 = load ptr, ptr %7, align 8, !dbg !173
  %22 = load ptr, ptr %8, align 8, !dbg !174
  %23 = getelementptr inbounds %struct.rtcp_alloc_type, ptr %22, i32 0, i32 0, !dbg !175
  store ptr %21, ptr %23, align 8, !dbg !176
  %24 = call i64 @time(ptr noundef null) #7, !dbg !177
  %25 = trunc i64 %24 to i32, !dbg !177
  %26 = add i32 %25, 300, !dbg !178
  %27 = load ptr, ptr %8, align 8, !dbg !179
  %28 = getelementptr inbounds %struct.rtcp_alloc_type, ptr %27, i32 0, i32 1, !dbg !180
  store i32 %26, ptr %28, align 8, !dbg !181
  %29 = load i64, ptr %6, align 8, !dbg !182
  %30 = load ptr, ptr %8, align 8, !dbg !183
  %31 = getelementptr inbounds %struct.rtcp_alloc_type, ptr %30, i32 0, i32 2, !dbg !184
  store i64 %29, ptr %31, align 8, !dbg !185
  %32 = load ptr, ptr %5, align 8, !dbg !186
  %33 = getelementptr inbounds %struct._rtcp_map, ptr %32, i32 0, i32 3, !dbg !186
  %34 = call i32 @turn_mutex_lock(ptr noundef %33), !dbg !186
  call void @llvm.dbg.declare(metadata ptr %9, metadata !187, metadata !DIExpression()), !dbg !188
  %35 = load ptr, ptr %5, align 8, !dbg !189
  %36 = getelementptr inbounds %struct._rtcp_map, ptr %35, i32 0, i32 1, !dbg !190
  %37 = load ptr, ptr %36, align 8, !dbg !190
  %38 = load i64, ptr %6, align 8, !dbg !191
  %39 = load ptr, ptr %8, align 8, !dbg !192
  %40 = ptrtoint ptr %39 to i64, !dbg !193
  %41 = call i32 @ur_map_put(ptr noundef %37, i64 noundef %38, i64 noundef %40), !dbg !194
  store i32 %41, ptr %9, align 4, !dbg !188
  %42 = load ptr, ptr %5, align 8, !dbg !195
  %43 = getelementptr inbounds %struct._rtcp_map, ptr %42, i32 0, i32 3, !dbg !195
  %44 = call i32 @turn_mutex_unlock(ptr noundef %43), !dbg !195
  %45 = load i32, ptr %9, align 4, !dbg !196
  %46 = icmp slt i32 %45, 0, !dbg !198
  br i1 %46, label %47, label %49, !dbg !199

47:                                               ; preds = %19
  %48 = load ptr, ptr %8, align 8, !dbg !200
  call void @free(ptr noundef %48) #7, !dbg !201
  br label %49, !dbg !201

49:                                               ; preds = %47, %19
  %50 = load i32, ptr %9, align 4, !dbg !202
  store i32 %50, ptr %4, align 4, !dbg !203
  br label %51, !dbg !203

51:                                               ; preds = %49, %18, %13
  %52 = load i32, ptr %4, align 4, !dbg !204
  ret i32 %52, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtcp_map_valid(ptr noundef %0) #0 !dbg !205 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !210, metadata !DIExpression()), !dbg !211
  %3 = load ptr, ptr %2, align 8, !dbg !212
  %4 = icmp ne ptr %3, null, !dbg !212
  br i1 %4, label %5, label %15, !dbg !213

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !214
  %7 = getelementptr inbounds %struct._rtcp_map, ptr %6, i32 0, i32 0, !dbg !215
  %8 = load i32, ptr %7, align 8, !dbg !215
  %9 = icmp eq i32 %8, 1988465667, !dbg !216
  br i1 %9, label %10, label %15, !dbg !217

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !218
  %12 = getelementptr inbounds %struct._rtcp_map, ptr %11, i32 0, i32 1, !dbg !219
  %13 = load ptr, ptr %12, align 8, !dbg !219
  %14 = icmp ne ptr %13, null, !dbg !217
  br label %15

15:                                               ; preds = %10, %5, %1
  %16 = phi i1 [ false, %5 ], [ false, %1 ], [ %14, %10 ], !dbg !220
  %17 = zext i1 %16 to i32, !dbg !217
  ret i32 %17, !dbg !221
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #4

declare i32 @turn_mutex_lock(ptr noundef) #5

declare i32 @ur_map_put(ptr noundef, i64 noundef, i64 noundef) #5

declare i32 @turn_mutex_unlock(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @rtcp_map_get(ptr noundef %0, i64 noundef %1) #0 !dbg !222 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !225, metadata !DIExpression()), !dbg !226
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata ptr %5, metadata !229, metadata !DIExpression()), !dbg !230
  store ptr null, ptr %5, align 8, !dbg !230
  %9 = load ptr, ptr %3, align 8, !dbg !231
  %10 = call i32 @rtcp_map_valid(ptr noundef %9), !dbg !233
  %11 = icmp ne i32 %10, 0, !dbg !233
  br i1 %11, label %12, label %40, !dbg !234

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !235, metadata !DIExpression()), !dbg !237
  %13 = load ptr, ptr %3, align 8, !dbg !238
  %14 = getelementptr inbounds %struct._rtcp_map, ptr %13, i32 0, i32 3, !dbg !238
  %15 = call i32 @turn_mutex_lock(ptr noundef %14), !dbg !238
  call void @llvm.dbg.declare(metadata ptr %7, metadata !239, metadata !DIExpression()), !dbg !240
  %16 = load ptr, ptr %3, align 8, !dbg !241
  %17 = getelementptr inbounds %struct._rtcp_map, ptr %16, i32 0, i32 1, !dbg !242
  %18 = load ptr, ptr %17, align 8, !dbg !242
  %19 = load i64, ptr %4, align 8, !dbg !243
  %20 = call i32 @ur_map_get(ptr noundef %18, i64 noundef %19, ptr noundef %6), !dbg !244
  store i32 %20, ptr %7, align 4, !dbg !240
  %21 = load i32, ptr %7, align 4, !dbg !245
  %22 = icmp ne i32 %21, 0, !dbg !245
  br i1 %22, label %23, label %36, !dbg !247

23:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !248, metadata !DIExpression()), !dbg !250
  %24 = load i64, ptr %6, align 8, !dbg !251
  %25 = inttoptr i64 %24 to ptr, !dbg !252
  store ptr %25, ptr %8, align 8, !dbg !250
  %26 = load ptr, ptr %8, align 8, !dbg !253
  %27 = icmp ne ptr %26, null, !dbg !253
  br i1 %27, label %28, label %35, !dbg !255

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 8, !dbg !256
  %30 = getelementptr inbounds %struct.rtcp_alloc_type, ptr %29, i32 0, i32 0, !dbg !258
  %31 = load ptr, ptr %30, align 8, !dbg !258
  store ptr %31, ptr %5, align 8, !dbg !259
  %32 = load ptr, ptr %3, align 8, !dbg !260
  %33 = load i64, ptr %4, align 8, !dbg !261
  %34 = call i32 @rtcp_map_del_savefd(ptr noundef %32, i64 noundef %33), !dbg !262
  br label %35, !dbg !263

35:                                               ; preds = %28, %23
  br label %36, !dbg !264

36:                                               ; preds = %35, %12
  %37 = load ptr, ptr %3, align 8, !dbg !265
  %38 = getelementptr inbounds %struct._rtcp_map, ptr %37, i32 0, i32 3, !dbg !265
  %39 = call i32 @turn_mutex_unlock(ptr noundef %38), !dbg !265
  br label %40, !dbg !266

40:                                               ; preds = %36, %2
  %41 = load ptr, ptr %5, align 8, !dbg !267
  ret ptr %41, !dbg !268
}

declare i32 @ur_map_get(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtcp_map_del_savefd(ptr noundef %0, i64 noundef %1) #0 !dbg !269 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !272, metadata !DIExpression()), !dbg !273
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !274, metadata !DIExpression()), !dbg !275
  %7 = load ptr, ptr %4, align 8, !dbg !276
  %8 = call i32 @rtcp_map_valid(ptr noundef %7), !dbg !278
  %9 = icmp ne i32 %8, 0, !dbg !278
  br i1 %9, label %11, label %10, !dbg !279

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !280
  br label %18, !dbg !280

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !281, metadata !DIExpression()), !dbg !283
  %12 = load ptr, ptr %4, align 8, !dbg !284
  %13 = getelementptr inbounds %struct._rtcp_map, ptr %12, i32 0, i32 1, !dbg !285
  %14 = load ptr, ptr %13, align 8, !dbg !285
  %15 = load i64, ptr %5, align 8, !dbg !286
  %16 = call i32 @ur_map_del(ptr noundef %14, i64 noundef %15, ptr noundef @rtcp_alloc_free_savefd), !dbg !287
  store i32 %16, ptr %6, align 4, !dbg !283
  %17 = load i32, ptr %6, align 4, !dbg !288
  store i32 %17, ptr %3, align 4, !dbg !289
  br label %18, !dbg !289

18:                                               ; preds = %11, %10
  %19 = load i32, ptr %3, align 4, !dbg !290
  ret i32 %19, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtcp_map_free(ptr noundef %0) #0 !dbg !291 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !295, metadata !DIExpression()), !dbg !296
  %3 = load ptr, ptr %2, align 8, !dbg !297
  %4 = icmp ne ptr %3, null, !dbg !297
  br i1 %4, label %5, label %53, !dbg !299

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !300
  %7 = load ptr, ptr %6, align 8, !dbg !301
  %8 = call i32 @rtcp_map_valid(ptr noundef %7), !dbg !302
  %9 = icmp ne i32 %8, 0, !dbg !302
  br i1 %9, label %10, label %53, !dbg !303

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !304
  %12 = load ptr, ptr %11, align 8, !dbg !304
  %13 = getelementptr inbounds %struct._rtcp_map, ptr %12, i32 0, i32 3, !dbg !304
  %14 = call i32 @turn_mutex_lock(ptr noundef %13), !dbg !304
  br label %15, !dbg !306

15:                                               ; preds = %10
  %16 = load ptr, ptr %2, align 8, !dbg !307
  %17 = load ptr, ptr %16, align 8, !dbg !307
  %18 = getelementptr inbounds %struct._rtcp_map, ptr %17, i32 0, i32 2, !dbg !307
  %19 = load ptr, ptr %18, align 8, !dbg !307
  %20 = icmp ne ptr %19, null, !dbg !307
  br i1 %20, label %21, label %29, !dbg !310

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8, !dbg !311
  %23 = load ptr, ptr %22, align 8, !dbg !311
  %24 = getelementptr inbounds %struct._rtcp_map, ptr %23, i32 0, i32 2, !dbg !311
  %25 = load ptr, ptr %24, align 8, !dbg !311
  call void @delete_ioa_timer(ptr noundef %25), !dbg !311
  %26 = load ptr, ptr %2, align 8, !dbg !311
  %27 = load ptr, ptr %26, align 8, !dbg !311
  %28 = getelementptr inbounds %struct._rtcp_map, ptr %27, i32 0, i32 2, !dbg !311
  store ptr null, ptr %28, align 8, !dbg !311
  br label %29, !dbg !311

29:                                               ; preds = %21, %15
  br label %30, !dbg !310

30:                                               ; preds = %29
  %31 = load ptr, ptr %2, align 8, !dbg !313
  %32 = load ptr, ptr %31, align 8, !dbg !314
  %33 = getelementptr inbounds %struct._rtcp_map, ptr %32, i32 0, i32 1, !dbg !315
  %34 = load ptr, ptr %33, align 8, !dbg !315
  %35 = call i32 @ur_map_foreach(ptr noundef %34, ptr noundef @foreachcb_free), !dbg !316
  %36 = load ptr, ptr %2, align 8, !dbg !317
  %37 = load ptr, ptr %36, align 8, !dbg !318
  %38 = getelementptr inbounds %struct._rtcp_map, ptr %37, i32 0, i32 1, !dbg !319
  call void @ur_map_free(ptr noundef %38), !dbg !320
  %39 = load ptr, ptr %2, align 8, !dbg !321
  %40 = load ptr, ptr %39, align 8, !dbg !322
  %41 = getelementptr inbounds %struct._rtcp_map, ptr %40, i32 0, i32 0, !dbg !323
  store i32 0, ptr %41, align 8, !dbg !324
  %42 = load ptr, ptr %2, align 8, !dbg !325
  %43 = load ptr, ptr %42, align 8, !dbg !325
  %44 = getelementptr inbounds %struct._rtcp_map, ptr %43, i32 0, i32 3, !dbg !325
  %45 = call i32 @turn_mutex_unlock(ptr noundef %44), !dbg !325
  %46 = load ptr, ptr %2, align 8, !dbg !326
  %47 = load ptr, ptr %46, align 8, !dbg !326
  %48 = getelementptr inbounds %struct._rtcp_map, ptr %47, i32 0, i32 3, !dbg !326
  %49 = call i32 @turn_mutex_destroy(ptr noundef %48), !dbg !326
  %50 = load ptr, ptr %2, align 8, !dbg !327
  %51 = load ptr, ptr %50, align 8, !dbg !328
  call void @free(ptr noundef %51) #7, !dbg !329
  %52 = load ptr, ptr %2, align 8, !dbg !330
  store ptr null, ptr %52, align 8, !dbg !331
  br label %53, !dbg !332

53:                                               ; preds = %30, %5, %1
  ret void, !dbg !333
}

declare void @delete_ioa_timer(ptr noundef) #5

declare i32 @ur_map_foreach(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreachcb_free(i64 noundef %0, i64 noundef %1) #0 !dbg !334 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !338
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !339, metadata !DIExpression()), !dbg !340
  br label %5, !dbg !341

5:                                                ; preds = %2
  %6 = load i64, ptr %3, align 8, !dbg !342
  store i64 %6, ptr %3, align 8, !dbg !342
  br label %7, !dbg !342

7:                                                ; preds = %5
  %8 = load i64, ptr %4, align 8, !dbg !344
  %9 = icmp ne i64 %8, 0, !dbg !344
  br i1 %9, label %10, label %12, !dbg !346

10:                                               ; preds = %7
  %11 = load i64, ptr %4, align 8, !dbg !347
  call void @rtcp_alloc_free(i64 noundef %11), !dbg !349
  br label %12, !dbg !350

12:                                               ; preds = %10, %7
  ret i32 0, !dbg !351
}

declare void @ur_map_free(ptr noundef) #5

declare i32 @turn_mutex_destroy(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtcp_map_size(ptr noundef %0) #0 !dbg !352 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !357, metadata !DIExpression()), !dbg !358
  %5 = load ptr, ptr %3, align 8, !dbg !359
  %6 = call i32 @rtcp_map_valid(ptr noundef %5), !dbg !361
  %7 = icmp ne i32 %6, 0, !dbg !361
  br i1 %7, label %8, label %20, !dbg !362

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !363
  %10 = getelementptr inbounds %struct._rtcp_map, ptr %9, i32 0, i32 3, !dbg !363
  %11 = call i32 @turn_mutex_lock(ptr noundef %10), !dbg !363
  call void @llvm.dbg.declare(metadata ptr %4, metadata !365, metadata !DIExpression()), !dbg !366
  %12 = load ptr, ptr %3, align 8, !dbg !367
  %13 = getelementptr inbounds %struct._rtcp_map, ptr %12, i32 0, i32 1, !dbg !368
  %14 = load ptr, ptr %13, align 8, !dbg !368
  %15 = call i64 @ur_map_size(ptr noundef %14), !dbg !369
  store i64 %15, ptr %4, align 8, !dbg !366
  %16 = load ptr, ptr %3, align 8, !dbg !370
  %17 = getelementptr inbounds %struct._rtcp_map, ptr %16, i32 0, i32 3, !dbg !370
  %18 = call i32 @turn_mutex_unlock(ptr noundef %17), !dbg !370
  %19 = load i64, ptr %4, align 8, !dbg !371
  store i64 %19, ptr %2, align 8, !dbg !372
  br label %21, !dbg !372

20:                                               ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !373
  br label %21, !dbg !373

21:                                               ; preds = %20, %8
  %22 = load i64, ptr %2, align 8, !dbg !375
  ret i64 %22, !dbg !375
}

declare i64 @ur_map_size(ptr noundef) #5

declare ptr @ur_map_create() #5

declare ptr @set_ioa_timer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtcp_map_timeout_handler(ptr noundef %0, ptr noundef %1) #0 !dbg !376 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.timeout_check_arg_type, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !379, metadata !DIExpression()), !dbg !380
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !381, metadata !DIExpression()), !dbg !382
  br label %8, !dbg !383

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !384
  store ptr %9, ptr %3, align 8, !dbg !384
  br label %10, !dbg !384

10:                                               ; preds = %8
  %11 = load ptr, ptr %4, align 8, !dbg !386
  %12 = icmp ne ptr %11, null, !dbg !386
  br i1 %12, label %14, label %13, !dbg !388

13:                                               ; preds = %10
  br label %51, !dbg !389

14:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %5, metadata !390, metadata !DIExpression()), !dbg !391
  %15 = load ptr, ptr %4, align 8, !dbg !392
  store ptr %15, ptr %5, align 8, !dbg !391
  %16 = load ptr, ptr %5, align 8, !dbg !393
  %17 = call i32 @rtcp_map_valid(ptr noundef %16), !dbg !395
  %18 = icmp ne i32 %17, 0, !dbg !395
  br i1 %18, label %19, label %51, !dbg !396

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8, !dbg !397
  %21 = getelementptr inbounds %struct._rtcp_map, ptr %20, i32 0, i32 3, !dbg !397
  %22 = call i32 @turn_mutex_lock(ptr noundef %21), !dbg !397
  call void @llvm.dbg.declare(metadata ptr %6, metadata !399, metadata !DIExpression()), !dbg !400
  %23 = getelementptr inbounds %struct.timeout_check_arg_type, ptr %6, i32 0, i32 1, !dbg !401
  store i32 0, ptr %23, align 8, !dbg !402
  %24 = call i64 @time(ptr noundef null) #7, !dbg !403
  %25 = trunc i64 %24 to i32, !dbg !403
  %26 = getelementptr inbounds %struct.timeout_check_arg_type, ptr %6, i32 0, i32 2, !dbg !404
  store i32 %25, ptr %26, align 4, !dbg !405
  %27 = load ptr, ptr %5, align 8, !dbg !406
  %28 = getelementptr inbounds %struct._rtcp_map, ptr %27, i32 0, i32 1, !dbg !407
  %29 = load ptr, ptr %28, align 8, !dbg !407
  %30 = call i32 @ur_map_foreach_arg(ptr noundef %29, ptr noundef @timeout_check, ptr noundef %6), !dbg !408
  %31 = load ptr, ptr %5, align 8, !dbg !409
  %32 = getelementptr inbounds %struct._rtcp_map, ptr %31, i32 0, i32 3, !dbg !409
  %33 = call i32 @turn_mutex_unlock(ptr noundef %32), !dbg !409
  call void @llvm.dbg.declare(metadata ptr %7, metadata !410, metadata !DIExpression()), !dbg !411
  store i32 0, ptr %7, align 4, !dbg !411
  store i32 0, ptr %7, align 4, !dbg !412
  br label %34, !dbg !414

34:                                               ; preds = %47, %19
  %35 = load i32, ptr %7, align 4, !dbg !415
  %36 = getelementptr inbounds %struct.timeout_check_arg_type, ptr %6, i32 0, i32 1, !dbg !417
  %37 = load i32, ptr %36, align 8, !dbg !417
  %38 = icmp slt i32 %35, %37, !dbg !418
  br i1 %38, label %39, label %50, !dbg !419

39:                                               ; preds = %34
  %40 = load ptr, ptr %5, align 8, !dbg !420
  %41 = getelementptr inbounds %struct.timeout_check_arg_type, ptr %6, i32 0, i32 0, !dbg !422
  %42 = load i32, ptr %7, align 4, !dbg !423
  %43 = sext i32 %42 to i64, !dbg !424
  %44 = getelementptr inbounds [1024 x i64], ptr %41, i64 0, i64 %43, !dbg !424
  %45 = load i64, ptr %44, align 8, !dbg !424
  %46 = call i32 @rtcp_map_del(ptr noundef %40, i64 noundef %45), !dbg !425
  br label %47, !dbg !426

47:                                               ; preds = %39
  %48 = load i32, ptr %7, align 4, !dbg !427
  %49 = add nsw i32 %48, 1, !dbg !427
  store i32 %49, ptr %7, align 4, !dbg !427
  br label %34, !dbg !428, !llvm.loop !429

50:                                               ; preds = %34
  br label %51, !dbg !432

51:                                               ; preds = %13, %50, %14
  ret void, !dbg !433
}

declare i32 @turn_mutex_init(ptr noundef) #5

declare i32 @ur_map_foreach_arg(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timeout_check(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !434 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i64 %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !439, metadata !DIExpression()), !dbg !440
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !441, metadata !DIExpression()), !dbg !442
  %9 = load i64, ptr %5, align 8, !dbg !443
  %10 = icmp ne i64 %9, 0, !dbg !443
  br i1 %10, label %11, label %42, !dbg !445

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !dbg !446
  %13 = icmp ne ptr %12, null, !dbg !446
  br i1 %13, label %14, label %42, !dbg !447

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %7, metadata !448, metadata !DIExpression()), !dbg !450
  %15 = load ptr, ptr %6, align 8, !dbg !451
  store ptr %15, ptr %7, align 8, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %8, metadata !452, metadata !DIExpression()), !dbg !453
  %16 = load i64, ptr %5, align 8, !dbg !454
  %17 = inttoptr i64 %16 to ptr, !dbg !455
  store ptr %17, ptr %8, align 8, !dbg !453
  %18 = load ptr, ptr %8, align 8, !dbg !456
  %19 = getelementptr inbounds %struct.rtcp_alloc_type, ptr %18, i32 0, i32 1, !dbg !456
  %20 = load i32, ptr %19, align 8, !dbg !456
  %21 = load ptr, ptr %7, align 8, !dbg !456
  %22 = getelementptr inbounds %struct.timeout_check_arg_type, ptr %21, i32 0, i32 2, !dbg !456
  %23 = load i32, ptr %22, align 4, !dbg !456
  %24 = sub nsw i32 %20, %23, !dbg !456
  %25 = icmp slt i32 %24, 0, !dbg !456
  br i1 %25, label %26, label %41, !dbg !458

26:                                               ; preds = %14
  %27 = load ptr, ptr %7, align 8, !dbg !459
  %28 = getelementptr inbounds %struct.timeout_check_arg_type, ptr %27, i32 0, i32 1, !dbg !460
  %29 = load i32, ptr %28, align 8, !dbg !460
  %30 = icmp slt i32 %29, 1024, !dbg !461
  br i1 %30, label %31, label %41, !dbg !462

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8, !dbg !463
  %33 = load ptr, ptr %7, align 8, !dbg !465
  %34 = getelementptr inbounds %struct.timeout_check_arg_type, ptr %33, i32 0, i32 0, !dbg !466
  %35 = load ptr, ptr %7, align 8, !dbg !467
  %36 = getelementptr inbounds %struct.timeout_check_arg_type, ptr %35, i32 0, i32 1, !dbg !468
  %37 = load i32, ptr %36, align 8, !dbg !469
  %38 = add nsw i32 %37, 1, !dbg !469
  store i32 %38, ptr %36, align 8, !dbg !469
  %39 = sext i32 %37 to i64, !dbg !465
  %40 = getelementptr inbounds [1024 x i64], ptr %34, i64 0, i64 %39, !dbg !465
  store i64 %32, ptr %40, align 8, !dbg !470
  br label %41, !dbg !471

41:                                               ; preds = %31, %26, %14
  br label %42, !dbg !472

42:                                               ; preds = %41, %11, %3
  ret i32 0, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtcp_map_del(ptr noundef %0, i64 noundef %1) #0 !dbg !474 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !475, metadata !DIExpression()), !dbg !476
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !477, metadata !DIExpression()), !dbg !478
  %7 = load ptr, ptr %4, align 8, !dbg !479
  %8 = call i32 @rtcp_map_valid(ptr noundef %7), !dbg !481
  %9 = icmp ne i32 %8, 0, !dbg !481
  br i1 %9, label %11, label %10, !dbg !482

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !483
  br label %24, !dbg !483

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !484
  %13 = getelementptr inbounds %struct._rtcp_map, ptr %12, i32 0, i32 3, !dbg !484
  %14 = call i32 @turn_mutex_lock(ptr noundef %13), !dbg !484
  call void @llvm.dbg.declare(metadata ptr %6, metadata !486, metadata !DIExpression()), !dbg !487
  %15 = load ptr, ptr %4, align 8, !dbg !488
  %16 = getelementptr inbounds %struct._rtcp_map, ptr %15, i32 0, i32 1, !dbg !489
  %17 = load ptr, ptr %16, align 8, !dbg !489
  %18 = load i64, ptr %5, align 8, !dbg !490
  %19 = call i32 @ur_map_del(ptr noundef %17, i64 noundef %18, ptr noundef @rtcp_alloc_free), !dbg !491
  store i32 %19, ptr %6, align 4, !dbg !487
  %20 = load ptr, ptr %4, align 8, !dbg !492
  %21 = getelementptr inbounds %struct._rtcp_map, ptr %20, i32 0, i32 3, !dbg !492
  %22 = call i32 @turn_mutex_unlock(ptr noundef %21), !dbg !492
  %23 = load i32, ptr %6, align 4, !dbg !493
  store i32 %23, ptr %3, align 4, !dbg !494
  br label %24, !dbg !494

24:                                               ; preds = %11, %10
  %25 = load i32, ptr %3, align 4, !dbg !495
  ret i32 %25, !dbg !495
}

declare i32 @ur_map_del(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtcp_alloc_free(i64 noundef %0) #0 !dbg !496 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !502
  %4 = load i64, ptr %2, align 8, !dbg !503
  %5 = inttoptr i64 %4 to ptr, !dbg !504
  store ptr %5, ptr %3, align 8, !dbg !502
  %6 = load ptr, ptr %3, align 8, !dbg !505
  %7 = icmp ne ptr %6, null, !dbg !505
  br i1 %7, label %8, label %23, !dbg !507

8:                                                ; preds = %1
  br label %9, !dbg !508

9:                                                ; preds = %8
  %10 = load ptr, ptr %3, align 8, !dbg !510
  %11 = getelementptr inbounds %struct.rtcp_alloc_type, ptr %10, i32 0, i32 0, !dbg !510
  %12 = load ptr, ptr %11, align 8, !dbg !510
  %13 = icmp ne ptr %12, null, !dbg !510
  br i1 %13, label %14, label %20, !dbg !513

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !dbg !514
  %16 = getelementptr inbounds %struct.rtcp_alloc_type, ptr %15, i32 0, i32 0, !dbg !514
  %17 = load ptr, ptr %16, align 8, !dbg !514
  call void @close_ioa_socket(ptr noundef %17), !dbg !514
  %18 = load ptr, ptr %3, align 8, !dbg !514
  %19 = getelementptr inbounds %struct.rtcp_alloc_type, ptr %18, i32 0, i32 0, !dbg !514
  store ptr null, ptr %19, align 8, !dbg !514
  br label %20, !dbg !514

20:                                               ; preds = %14, %9
  br label %21, !dbg !513

21:                                               ; preds = %20
  %22 = load ptr, ptr %3, align 8, !dbg !516
  call void @free(ptr noundef %22) #7, !dbg !517
  br label %23, !dbg !518

23:                                               ; preds = %21, %1
  ret void, !dbg !519
}

declare void @close_ioa_socket(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtcp_alloc_free_savefd(i64 noundef %0) #0 !dbg !520 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata ptr %3, metadata !523, metadata !DIExpression()), !dbg !524
  %4 = load i64, ptr %2, align 8, !dbg !525
  %5 = inttoptr i64 %4 to ptr, !dbg !526
  store ptr %5, ptr %3, align 8, !dbg !524
  %6 = load ptr, ptr %3, align 8, !dbg !527
  %7 = icmp ne ptr %6, null, !dbg !527
  br i1 %7, label %8, label %10, !dbg !529

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !530
  call void @free(ptr noundef %9) #7, !dbg !532
  br label %10, !dbg !533

10:                                               ; preds = %8, %1
  ret void, !dbg !534
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/server/ns_turn_maps_rtcp.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "46ad6688c9d86645d131cc0128a9539c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 25)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !69, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/raj/coturn/src/server/ns_turn_maps_rtcp.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "46ad6688c9d86645d131cc0128a9539c")
!9 = !{!10, !36, !46, !54, !29, !55, !66}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_map", file: !12, line: 46, baseType: !13)
!12 = !DIFile(filename: "src/server/ns_turn_maps_rtcp.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bedcc1443244c8ca394e26ac35053c7")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rtcp_map", file: !2, line: 44, size: 320, elements: !14)
!14 = !{!15, !21, !26, !30}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !13, file: !2, line: 45, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 26, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 42, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !13, file: !2, line: 46, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map", file: !24, line: 43, baseType: !25)
!24 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_map", file: !24, line: 42, flags: DIFlagFwdDecl)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "timer_ev", scope: !13, file: !2, line: 47, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_timer_handle", file: !28, line: 122, baseType: !29)
!28 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !13, file: !2, line: 48, baseType: !31, size: 128, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !28, line: 60, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !28, line: 55, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !32, file: !28, line: 56, baseType: !16, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !32, file: !28, line: 57, baseType: !29, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_alloc_type", file: !2, line: 56, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 52, size: 192, elements: !39)
!39 = !{!40, !45, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !38, file: !2, line: 53, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket_handle", file: !28, line: 116, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket", file: !28, line: 115, baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_socket", file: !28, line: 114, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !38, file: !2, line: 54, baseType: !46, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !47, line: 108, baseType: !16)
!47 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!48 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !38, file: !2, line: 55, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_token_type", file: !12, line: 43, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_key_type", file: !24, line: 47, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 27, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !19, line: 45, baseType: !53)
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_value_type", file: !24, line: 48, baseType: !53)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeout_check_arg_type", file: !2, line: 68, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 64, size: 65600, elements: !58)
!58 = !{!59, !63, !65}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !57, file: !2, line: 65, baseType: !60, size: 65536)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 65536, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 1024)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tn", scope: !57, file: !2, line: 66, baseType: !64, size: 32, offset: 65536)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !57, file: !2, line: 67, baseType: !46, size: 32, offset: 65568)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !67, line: 26, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !19, line: 41, baseType: !64)
!69 = !{!0}
!70 = !{i32 7, !"Dwarf Version", i32 5}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{i32 8, !"PIC Level", i32 2}
!74 = !{i32 7, !"PIE Level", i32 2}
!75 = !{i32 7, !"uwtable", i32 2}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 16.0.0"}
!78 = distinct !DISubprogram(name: "rtcp_map_create", scope: !2, file: !2, line: 179, type: !79, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !85)
!79 = !DISubroutineType(types: !80)
!80 = !{!10, !81}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_handle", file: !28, line: 120, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine", file: !28, line: 119, baseType: !84)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_engine", file: !28, line: 118, flags: DIFlagFwdDecl)
!85 = !{}
!86 = !DILocalVariable(name: "e", arg: 1, scope: !78, file: !2, line: 179, type: !81)
!87 = !DILocation(line: 179, column: 45, scope: !78)
!88 = !DILocalVariable(name: "map", scope: !78, file: !2, line: 180, type: !10)
!89 = !DILocation(line: 180, column: 13, scope: !78)
!90 = !DILocation(line: 180, column: 28, scope: !78)
!91 = !DILocation(line: 181, column: 9, scope: !78)
!92 = !DILocation(line: 181, column: 3, scope: !78)
!93 = !DILocation(line: 182, column: 20, scope: !94)
!94 = distinct !DILexicalBlock(scope: !78, file: !2, line: 182, column: 6)
!95 = !DILocation(line: 182, column: 24, scope: !94)
!96 = !DILocation(line: 182, column: 6, scope: !94)
!97 = !DILocation(line: 182, column: 26, scope: !94)
!98 = !DILocation(line: 182, column: 6, scope: !78)
!99 = !DILocation(line: 183, column: 10, scope: !100)
!100 = distinct !DILexicalBlock(scope: !94, file: !2, line: 182, column: 30)
!101 = !DILocation(line: 183, column: 5, scope: !100)
!102 = !DILocation(line: 184, column: 5, scope: !100)
!103 = !DILocation(line: 186, column: 10, scope: !78)
!104 = !DILocation(line: 186, column: 3, scope: !78)
!105 = !DILocation(line: 187, column: 1, scope: !78)
!106 = distinct !DISubprogram(name: "rtcp_map_init", scope: !2, file: !2, line: 163, type: !107, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!107 = !DISubroutineType(types: !108)
!108 = !{!64, !10, !81}
!109 = !DILocalVariable(name: "map", arg: 1, scope: !106, file: !2, line: 163, type: !10)
!110 = !DILocation(line: 163, column: 36, scope: !106)
!111 = !DILocalVariable(name: "e", arg: 2, scope: !106, file: !2, line: 163, type: !81)
!112 = !DILocation(line: 163, column: 59, scope: !106)
!113 = !DILocation(line: 164, column: 6, scope: !114)
!114 = distinct !DILexicalBlock(scope: !106, file: !2, line: 164, column: 6)
!115 = !DILocation(line: 164, column: 6, scope: !106)
!116 = !DILocation(line: 165, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 165, column: 7)
!118 = distinct !DILexicalBlock(scope: !114, file: !2, line: 164, column: 11)
!119 = !DILocation(line: 165, column: 12, scope: !117)
!120 = !DILocation(line: 165, column: 18, scope: !117)
!121 = !DILocation(line: 165, column: 7, scope: !118)
!122 = !DILocation(line: 166, column: 4, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !2, line: 165, column: 37)
!124 = !DILocation(line: 166, column: 9, scope: !123)
!125 = !DILocation(line: 166, column: 15, scope: !123)
!126 = !DILocation(line: 167, column: 15, scope: !123)
!127 = !DILocation(line: 167, column: 4, scope: !123)
!128 = !DILocation(line: 167, column: 9, scope: !123)
!129 = !DILocation(line: 167, column: 13, scope: !123)
!130 = !DILocation(line: 168, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !2, line: 168, column: 8)
!132 = !DILocation(line: 168, column: 8, scope: !123)
!133 = !DILocation(line: 169, column: 35, scope: !131)
!134 = !DILocation(line: 170, column: 7, scope: !131)
!135 = !DILocation(line: 169, column: 21, scope: !131)
!136 = !DILocation(line: 169, column: 5, scope: !131)
!137 = !DILocation(line: 169, column: 10, scope: !131)
!138 = !DILocation(line: 169, column: 19, scope: !131)
!139 = !DILocation(line: 171, column: 4, scope: !123)
!140 = !DILocation(line: 172, column: 23, scope: !141)
!141 = distinct !DILexicalBlock(scope: !123, file: !2, line: 172, column: 8)
!142 = !DILocation(line: 172, column: 8, scope: !141)
!143 = !DILocation(line: 172, column: 8, scope: !123)
!144 = !DILocation(line: 173, column: 5, scope: !141)
!145 = !DILocation(line: 174, column: 3, scope: !123)
!146 = !DILocation(line: 175, column: 2, scope: !118)
!147 = !DILocation(line: 176, column: 2, scope: !106)
!148 = !DILocation(line: 177, column: 1, scope: !106)
!149 = distinct !DISubprogram(name: "rtcp_map_put", scope: !2, file: !2, line: 194, type: !150, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !85)
!150 = !DISubroutineType(types: !151)
!151 = !{!64, !10, !49, !41}
!152 = !DILocalVariable(name: "map", arg: 1, scope: !149, file: !2, line: 194, type: !10)
!153 = !DILocation(line: 194, column: 28, scope: !149)
!154 = !DILocalVariable(name: "token", arg: 2, scope: !149, file: !2, line: 194, type: !49)
!155 = !DILocation(line: 194, column: 49, scope: !149)
!156 = !DILocalVariable(name: "s", arg: 3, scope: !149, file: !2, line: 194, type: !41)
!157 = !DILocation(line: 194, column: 74, scope: !149)
!158 = !DILocation(line: 195, column: 22, scope: !159)
!159 = distinct !DILexicalBlock(scope: !149, file: !2, line: 195, column: 6)
!160 = !DILocation(line: 195, column: 7, scope: !159)
!161 = !DILocation(line: 195, column: 6, scope: !149)
!162 = !DILocation(line: 195, column: 28, scope: !159)
!163 = !DILocalVariable(name: "value", scope: !164, file: !2, line: 197, type: !36)
!164 = distinct !DILexicalBlock(scope: !159, file: !2, line: 196, column: 8)
!165 = !DILocation(line: 197, column: 22, scope: !164)
!166 = !DILocation(line: 197, column: 46, scope: !164)
!167 = !DILocation(line: 198, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !2, line: 198, column: 8)
!169 = !DILocation(line: 198, column: 8, scope: !164)
!170 = !DILocation(line: 198, column: 16, scope: !168)
!171 = !DILocation(line: 199, column: 11, scope: !164)
!172 = !DILocation(line: 199, column: 5, scope: !164)
!173 = !DILocation(line: 200, column: 14, scope: !164)
!174 = !DILocation(line: 200, column: 5, scope: !164)
!175 = !DILocation(line: 200, column: 12, scope: !164)
!176 = !DILocation(line: 200, column: 13, scope: !164)
!177 = !DILocation(line: 201, column: 14, scope: !164)
!178 = !DILocation(line: 201, column: 26, scope: !164)
!179 = !DILocation(line: 201, column: 5, scope: !164)
!180 = !DILocation(line: 201, column: 12, scope: !164)
!181 = !DILocation(line: 201, column: 13, scope: !164)
!182 = !DILocation(line: 202, column: 18, scope: !164)
!183 = !DILocation(line: 202, column: 5, scope: !164)
!184 = !DILocation(line: 202, column: 12, scope: !164)
!185 = !DILocation(line: 202, column: 17, scope: !164)
!186 = !DILocation(line: 203, column: 5, scope: !164)
!187 = !DILocalVariable(name: "ret", scope: !164, file: !2, line: 204, type: !64)
!188 = !DILocation(line: 204, column: 9, scope: !164)
!189 = !DILocation(line: 204, column: 26, scope: !164)
!190 = !DILocation(line: 204, column: 31, scope: !164)
!191 = !DILocation(line: 204, column: 35, scope: !164)
!192 = !DILocation(line: 204, column: 60, scope: !164)
!193 = !DILocation(line: 204, column: 41, scope: !164)
!194 = !DILocation(line: 204, column: 15, scope: !164)
!195 = !DILocation(line: 206, column: 5, scope: !164)
!196 = !DILocation(line: 207, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !164, file: !2, line: 207, column: 8)
!198 = !DILocation(line: 207, column: 11, scope: !197)
!199 = !DILocation(line: 207, column: 8, scope: !164)
!200 = !DILocation(line: 207, column: 20, scope: !197)
!201 = !DILocation(line: 207, column: 15, scope: !197)
!202 = !DILocation(line: 208, column: 12, scope: !164)
!203 = !DILocation(line: 208, column: 5, scope: !164)
!204 = !DILocation(line: 210, column: 1, scope: !149)
!205 = distinct !DISubprogram(name: "rtcp_map_valid", scope: !2, file: !2, line: 60, type: !206, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!206 = !DISubroutineType(types: !207)
!207 = !{!64, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!210 = !DILocalVariable(name: "map", arg: 1, scope: !205, file: !2, line: 60, type: !208)
!211 = !DILocation(line: 60, column: 43, scope: !205)
!212 = !DILocation(line: 61, column: 11, scope: !205)
!213 = !DILocation(line: 61, column: 15, scope: !205)
!214 = !DILocation(line: 61, column: 19, scope: !205)
!215 = !DILocation(line: 61, column: 24, scope: !205)
!216 = !DILocation(line: 61, column: 29, scope: !205)
!217 = !DILocation(line: 61, column: 47, scope: !205)
!218 = !DILocation(line: 61, column: 50, scope: !205)
!219 = !DILocation(line: 61, column: 55, scope: !205)
!220 = !DILocation(line: 0, scope: !205)
!221 = !DILocation(line: 61, column: 3, scope: !205)
!222 = distinct !DISubprogram(name: "rtcp_map_get", scope: !2, file: !2, line: 217, type: !223, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !85)
!223 = !DISubroutineType(types: !224)
!224 = !{!41, !10, !49}
!225 = !DILocalVariable(name: "map", arg: 1, scope: !222, file: !2, line: 217, type: !10)
!226 = !DILocation(line: 217, column: 42, scope: !222)
!227 = !DILocalVariable(name: "token", arg: 2, scope: !222, file: !2, line: 217, type: !49)
!228 = !DILocation(line: 217, column: 63, scope: !222)
!229 = !DILocalVariable(name: "s", scope: !222, file: !2, line: 218, type: !41)
!230 = !DILocation(line: 218, column: 20, scope: !222)
!231 = !DILocation(line: 219, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !222, file: !2, line: 219, column: 6)
!233 = !DILocation(line: 219, column: 6, scope: !232)
!234 = !DILocation(line: 219, column: 6, scope: !222)
!235 = !DILocalVariable(name: "value", scope: !236, file: !2, line: 220, type: !54)
!236 = distinct !DILexicalBlock(scope: !232, file: !2, line: 219, column: 27)
!237 = !DILocation(line: 220, column: 21, scope: !236)
!238 = !DILocation(line: 221, column: 3, scope: !236)
!239 = !DILocalVariable(name: "ret", scope: !236, file: !2, line: 222, type: !64)
!240 = !DILocation(line: 222, column: 7, scope: !236)
!241 = !DILocation(line: 222, column: 24, scope: !236)
!242 = !DILocation(line: 222, column: 29, scope: !236)
!243 = !DILocation(line: 222, column: 34, scope: !236)
!244 = !DILocation(line: 222, column: 13, scope: !236)
!245 = !DILocation(line: 223, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !236, file: !2, line: 223, column: 7)
!247 = !DILocation(line: 223, column: 7, scope: !236)
!248 = !DILocalVariable(name: "rval", scope: !249, file: !2, line: 224, type: !36)
!249 = distinct !DILexicalBlock(scope: !246, file: !2, line: 223, column: 12)
!250 = !DILocation(line: 224, column: 21, scope: !249)
!251 = !DILocation(line: 224, column: 47, scope: !249)
!252 = !DILocation(line: 224, column: 28, scope: !249)
!253 = !DILocation(line: 225, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !2, line: 225, column: 8)
!255 = !DILocation(line: 225, column: 8, scope: !249)
!256 = !DILocation(line: 226, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !2, line: 225, column: 14)
!258 = !DILocation(line: 226, column: 15, scope: !257)
!259 = !DILocation(line: 226, column: 7, scope: !257)
!260 = !DILocation(line: 227, column: 25, scope: !257)
!261 = !DILocation(line: 227, column: 30, scope: !257)
!262 = !DILocation(line: 227, column: 5, scope: !257)
!263 = !DILocation(line: 228, column: 4, scope: !257)
!264 = !DILocation(line: 229, column: 3, scope: !249)
!265 = !DILocation(line: 230, column: 3, scope: !236)
!266 = !DILocation(line: 231, column: 2, scope: !236)
!267 = !DILocation(line: 232, column: 9, scope: !222)
!268 = !DILocation(line: 232, column: 2, scope: !222)
!269 = distinct !DISubprogram(name: "rtcp_map_del_savefd", scope: !2, file: !2, line: 128, type: !270, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!270 = !DISubroutineType(types: !271)
!271 = !{!64, !10, !49}
!272 = !DILocalVariable(name: "map", arg: 1, scope: !269, file: !2, line: 128, type: !10)
!273 = !DILocation(line: 128, column: 42, scope: !269)
!274 = !DILocalVariable(name: "token", arg: 2, scope: !269, file: !2, line: 128, type: !49)
!275 = !DILocation(line: 128, column: 63, scope: !269)
!276 = !DILocation(line: 129, column: 22, scope: !277)
!277 = distinct !DILexicalBlock(scope: !269, file: !2, line: 129, column: 6)
!278 = !DILocation(line: 129, column: 7, scope: !277)
!279 = !DILocation(line: 129, column: 6, scope: !269)
!280 = !DILocation(line: 129, column: 28, scope: !277)
!281 = !DILocalVariable(name: "ret", scope: !282, file: !2, line: 131, type: !64)
!282 = distinct !DILexicalBlock(scope: !277, file: !2, line: 130, column: 8)
!283 = !DILocation(line: 131, column: 9, scope: !282)
!284 = !DILocation(line: 131, column: 26, scope: !282)
!285 = !DILocation(line: 131, column: 31, scope: !282)
!286 = !DILocation(line: 131, column: 35, scope: !282)
!287 = !DILocation(line: 131, column: 15, scope: !282)
!288 = !DILocation(line: 132, column: 12, scope: !282)
!289 = !DILocation(line: 132, column: 5, scope: !282)
!290 = !DILocation(line: 134, column: 1, scope: !269)
!291 = distinct !DISubprogram(name: "rtcp_map_free", scope: !2, file: !2, line: 235, type: !292, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !85)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!295 = !DILocalVariable(name: "map", arg: 1, scope: !291, file: !2, line: 235, type: !294)
!296 = !DILocation(line: 235, column: 31, scope: !291)
!297 = !DILocation(line: 236, column: 6, scope: !298)
!298 = distinct !DILexicalBlock(scope: !291, file: !2, line: 236, column: 6)
!299 = !DILocation(line: 236, column: 10, scope: !298)
!300 = !DILocation(line: 236, column: 29, scope: !298)
!301 = !DILocation(line: 236, column: 28, scope: !298)
!302 = !DILocation(line: 236, column: 13, scope: !298)
!303 = !DILocation(line: 236, column: 6, scope: !291)
!304 = !DILocation(line: 237, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !2, line: 236, column: 35)
!306 = !DILocation(line: 238, column: 5, scope: !305)
!307 = !DILocation(line: 238, column: 5, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 238, column: 5)
!309 = distinct !DILexicalBlock(scope: !305, file: !2, line: 238, column: 5)
!310 = !DILocation(line: 238, column: 5, scope: !309)
!311 = !DILocation(line: 238, column: 5, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !2, line: 238, column: 5)
!313 = !DILocation(line: 239, column: 22, scope: !305)
!314 = !DILocation(line: 239, column: 21, scope: !305)
!315 = !DILocation(line: 239, column: 28, scope: !305)
!316 = !DILocation(line: 239, column: 5, scope: !305)
!317 = !DILocation(line: 240, column: 21, scope: !305)
!318 = !DILocation(line: 240, column: 20, scope: !305)
!319 = !DILocation(line: 240, column: 27, scope: !305)
!320 = !DILocation(line: 240, column: 5, scope: !305)
!321 = !DILocation(line: 241, column: 7, scope: !305)
!322 = !DILocation(line: 241, column: 6, scope: !305)
!323 = !DILocation(line: 241, column: 13, scope: !305)
!324 = !DILocation(line: 241, column: 18, scope: !305)
!325 = !DILocation(line: 242, column: 5, scope: !305)
!326 = !DILocation(line: 243, column: 5, scope: !305)
!327 = !DILocation(line: 244, column: 11, scope: !305)
!328 = !DILocation(line: 244, column: 10, scope: !305)
!329 = !DILocation(line: 244, column: 5, scope: !305)
!330 = !DILocation(line: 245, column: 6, scope: !305)
!331 = !DILocation(line: 245, column: 9, scope: !305)
!332 = !DILocation(line: 246, column: 3, scope: !305)
!333 = !DILocation(line: 247, column: 1, scope: !291)
!334 = distinct !DISubprogram(name: "foreachcb_free", scope: !2, file: !2, line: 105, type: !335, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!335 = !DISubroutineType(types: !336)
!336 = !{!64, !50, !54}
!337 = !DILocalVariable(name: "key", arg: 1, scope: !334, file: !2, line: 105, type: !50)
!338 = !DILocation(line: 105, column: 43, scope: !334)
!339 = !DILocalVariable(name: "value", arg: 2, scope: !334, file: !2, line: 105, type: !54)
!340 = !DILocation(line: 105, column: 66, scope: !334)
!341 = !DILocation(line: 106, column: 3, scope: !334)
!342 = !DILocation(line: 106, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !334, file: !2, line: 106, column: 3)
!344 = !DILocation(line: 107, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !334, file: !2, line: 107, column: 6)
!346 = !DILocation(line: 107, column: 6, scope: !334)
!347 = !DILocation(line: 108, column: 21, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !2, line: 107, column: 13)
!349 = !DILocation(line: 108, column: 5, scope: !348)
!350 = !DILocation(line: 109, column: 3, scope: !348)
!351 = !DILocation(line: 110, column: 3, scope: !334)
!352 = distinct !DISubprogram(name: "rtcp_map_size", scope: !2, file: !2, line: 249, type: !353, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !85)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !208}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !356, line: 46, baseType: !53)
!356 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!357 = !DILocalVariable(name: "map", arg: 1, scope: !352, file: !2, line: 249, type: !208)
!358 = !DILocation(line: 249, column: 38, scope: !352)
!359 = !DILocation(line: 250, column: 21, scope: !360)
!360 = distinct !DILexicalBlock(scope: !352, file: !2, line: 250, column: 6)
!361 = !DILocation(line: 250, column: 6, scope: !360)
!362 = !DILocation(line: 250, column: 6, scope: !352)
!363 = !DILocation(line: 251, column: 5, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !2, line: 250, column: 27)
!365 = !DILocalVariable(name: "ret", scope: !364, file: !2, line: 252, type: !355)
!366 = !DILocation(line: 252, column: 12, scope: !364)
!367 = !DILocation(line: 252, column: 30, scope: !364)
!368 = !DILocation(line: 252, column: 35, scope: !364)
!369 = !DILocation(line: 252, column: 18, scope: !364)
!370 = !DILocation(line: 253, column: 5, scope: !364)
!371 = !DILocation(line: 254, column: 12, scope: !364)
!372 = !DILocation(line: 254, column: 5, scope: !364)
!373 = !DILocation(line: 256, column: 5, scope: !374)
!374 = distinct !DILexicalBlock(scope: !360, file: !2, line: 255, column: 10)
!375 = !DILocation(line: 258, column: 1, scope: !352)
!376 = distinct !DISubprogram(name: "rtcp_map_timeout_handler", scope: !2, file: !2, line: 136, type: !377, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !81, !29}
!379 = !DILocalVariable(name: "e", arg: 1, scope: !376, file: !2, line: 136, type: !81)
!380 = !DILocation(line: 136, column: 56, scope: !376)
!381 = !DILocalVariable(name: "arg", arg: 2, scope: !376, file: !2, line: 136, type: !29)
!382 = !DILocation(line: 136, column: 65, scope: !376)
!383 = !DILocation(line: 138, column: 3, scope: !376)
!384 = !DILocation(line: 138, column: 3, scope: !385)
!385 = distinct !DILexicalBlock(scope: !376, file: !2, line: 138, column: 3)
!386 = !DILocation(line: 140, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !376, file: !2, line: 140, column: 6)
!388 = !DILocation(line: 140, column: 6, scope: !376)
!389 = !DILocation(line: 140, column: 12, scope: !387)
!390 = !DILocalVariable(name: "map", scope: !376, file: !2, line: 142, type: !10)
!391 = !DILocation(line: 142, column: 13, scope: !376)
!392 = !DILocation(line: 142, column: 28, scope: !376)
!393 = !DILocation(line: 144, column: 21, scope: !394)
!394 = distinct !DILexicalBlock(scope: !376, file: !2, line: 144, column: 6)
!395 = !DILocation(line: 144, column: 6, scope: !394)
!396 = !DILocation(line: 144, column: 6, scope: !376)
!397 = !DILocation(line: 146, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !2, line: 144, column: 27)
!399 = !DILocalVariable(name: "tcat", scope: !398, file: !2, line: 148, type: !56)
!400 = !DILocation(line: 148, column: 28, scope: !398)
!401 = !DILocation(line: 149, column: 10, scope: !398)
!402 = !DILocation(line: 149, column: 12, scope: !398)
!403 = !DILocation(line: 150, column: 12, scope: !398)
!404 = !DILocation(line: 150, column: 10, scope: !398)
!405 = !DILocation(line: 150, column: 11, scope: !398)
!406 = !DILocation(line: 152, column: 24, scope: !398)
!407 = !DILocation(line: 152, column: 29, scope: !398)
!408 = !DILocation(line: 152, column: 5, scope: !398)
!409 = !DILocation(line: 154, column: 5, scope: !398)
!410 = !DILocalVariable(name: "i", scope: !398, file: !2, line: 156, type: !64)
!411 = !DILocation(line: 156, column: 9, scope: !398)
!412 = !DILocation(line: 157, column: 10, scope: !413)
!413 = distinct !DILexicalBlock(scope: !398, file: !2, line: 157, column: 5)
!414 = !DILocation(line: 157, column: 9, scope: !413)
!415 = !DILocation(line: 157, column: 13, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !2, line: 157, column: 5)
!417 = !DILocation(line: 157, column: 20, scope: !416)
!418 = !DILocation(line: 157, column: 14, scope: !416)
!419 = !DILocation(line: 157, column: 5, scope: !413)
!420 = !DILocation(line: 158, column: 20, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !2, line: 157, column: 28)
!422 = !DILocation(line: 158, column: 29, scope: !421)
!423 = !DILocation(line: 158, column: 36, scope: !421)
!424 = !DILocation(line: 158, column: 24, scope: !421)
!425 = !DILocation(line: 158, column: 7, scope: !421)
!426 = !DILocation(line: 159, column: 5, scope: !421)
!427 = !DILocation(line: 157, column: 24, scope: !416)
!428 = !DILocation(line: 157, column: 5, scope: !416)
!429 = distinct !{!429, !419, !430, !431}
!430 = !DILocation(line: 159, column: 5, scope: !413)
!431 = !{!"llvm.loop.mustprogress"}
!432 = !DILocation(line: 160, column: 3, scope: !398)
!433 = !DILocation(line: 161, column: 1, scope: !376)
!434 = distinct !DISubprogram(name: "timeout_check", scope: !2, file: !2, line: 70, type: !435, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!435 = !DISubroutineType(types: !436)
!436 = !{!64, !50, !54, !29}
!437 = !DILocalVariable(name: "key", arg: 1, scope: !434, file: !2, line: 70, type: !50)
!438 = !DILocation(line: 70, column: 42, scope: !434)
!439 = !DILocalVariable(name: "value", arg: 2, scope: !434, file: !2, line: 71, type: !54)
!440 = !DILocation(line: 71, column: 23, scope: !434)
!441 = !DILocalVariable(name: "arg", arg: 3, scope: !434, file: !2, line: 72, type: !29)
!442 = !DILocation(line: 72, column: 11, scope: !434)
!443 = !DILocation(line: 74, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !434, file: !2, line: 74, column: 6)
!445 = !DILocation(line: 74, column: 12, scope: !444)
!446 = !DILocation(line: 74, column: 15, scope: !444)
!447 = !DILocation(line: 74, column: 6, scope: !434)
!448 = !DILocalVariable(name: "tcat", scope: !449, file: !2, line: 76, type: !55)
!449 = distinct !DILexicalBlock(scope: !444, file: !2, line: 74, column: 20)
!450 = !DILocation(line: 76, column: 29, scope: !449)
!451 = !DILocation(line: 76, column: 59, scope: !449)
!452 = !DILocalVariable(name: "rat", scope: !449, file: !2, line: 78, type: !36)
!453 = !DILocation(line: 78, column: 22, scope: !449)
!454 = !DILocation(line: 78, column: 44, scope: !449)
!455 = !DILocation(line: 78, column: 26, scope: !449)
!456 = !DILocation(line: 80, column: 8, scope: !457)
!457 = distinct !DILexicalBlock(scope: !449, file: !2, line: 80, column: 8)
!458 = !DILocation(line: 80, column: 42, scope: !457)
!459 = !DILocation(line: 80, column: 46, scope: !457)
!460 = !DILocation(line: 80, column: 52, scope: !457)
!461 = !DILocation(line: 80, column: 54, scope: !457)
!462 = !DILocation(line: 80, column: 8, scope: !449)
!463 = !DILocation(line: 81, column: 34, scope: !464)
!464 = distinct !DILexicalBlock(scope: !457, file: !2, line: 80, column: 71)
!465 = !DILocation(line: 81, column: 7, scope: !464)
!466 = !DILocation(line: 81, column: 13, scope: !464)
!467 = !DILocation(line: 81, column: 21, scope: !464)
!468 = !DILocation(line: 81, column: 27, scope: !464)
!469 = !DILocation(line: 81, column: 30, scope: !464)
!470 = !DILocation(line: 81, column: 33, scope: !464)
!471 = !DILocation(line: 82, column: 5, scope: !464)
!472 = !DILocation(line: 83, column: 3, scope: !449)
!473 = !DILocation(line: 85, column: 3, scope: !434)
!474 = distinct !DISubprogram(name: "rtcp_map_del", scope: !2, file: !2, line: 118, type: !270, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!475 = !DILocalVariable(name: "map", arg: 1, scope: !474, file: !2, line: 118, type: !10)
!476 = !DILocation(line: 118, column: 35, scope: !474)
!477 = !DILocalVariable(name: "token", arg: 2, scope: !474, file: !2, line: 118, type: !49)
!478 = !DILocation(line: 118, column: 56, scope: !474)
!479 = !DILocation(line: 119, column: 22, scope: !480)
!480 = distinct !DILexicalBlock(scope: !474, file: !2, line: 119, column: 6)
!481 = !DILocation(line: 119, column: 7, scope: !480)
!482 = !DILocation(line: 119, column: 6, scope: !474)
!483 = !DILocation(line: 119, column: 28, scope: !480)
!484 = !DILocation(line: 121, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !2, line: 120, column: 8)
!486 = !DILocalVariable(name: "ret", scope: !485, file: !2, line: 122, type: !64)
!487 = !DILocation(line: 122, column: 9, scope: !485)
!488 = !DILocation(line: 122, column: 26, scope: !485)
!489 = !DILocation(line: 122, column: 31, scope: !485)
!490 = !DILocation(line: 122, column: 35, scope: !485)
!491 = !DILocation(line: 122, column: 15, scope: !485)
!492 = !DILocation(line: 123, column: 5, scope: !485)
!493 = !DILocation(line: 124, column: 12, scope: !485)
!494 = !DILocation(line: 124, column: 5, scope: !485)
!495 = !DILocation(line: 126, column: 1, scope: !474)
!496 = distinct !DISubprogram(name: "rtcp_alloc_free", scope: !2, file: !2, line: 88, type: !497, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !54}
!499 = !DILocalVariable(name: "value", arg: 1, scope: !496, file: !2, line: 88, type: !54)
!500 = !DILocation(line: 88, column: 47, scope: !496)
!501 = !DILocalVariable(name: "at", scope: !496, file: !2, line: 90, type: !36)
!502 = !DILocation(line: 90, column: 19, scope: !496)
!503 = !DILocation(line: 90, column: 43, scope: !496)
!504 = !DILocation(line: 90, column: 24, scope: !496)
!505 = !DILocation(line: 91, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !496, file: !2, line: 91, column: 6)
!507 = !DILocation(line: 91, column: 6, scope: !496)
!508 = !DILocation(line: 92, column: 3, scope: !509)
!509 = distinct !DILexicalBlock(scope: !506, file: !2, line: 91, column: 10)
!510 = !DILocation(line: 92, column: 3, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 92, column: 3)
!512 = distinct !DILexicalBlock(scope: !509, file: !2, line: 92, column: 3)
!513 = !DILocation(line: 92, column: 3, scope: !512)
!514 = !DILocation(line: 92, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !2, line: 92, column: 3)
!516 = !DILocation(line: 93, column: 8, scope: !509)
!517 = !DILocation(line: 93, column: 3, scope: !509)
!518 = !DILocation(line: 94, column: 2, scope: !509)
!519 = !DILocation(line: 95, column: 1, scope: !496)
!520 = distinct !DISubprogram(name: "rtcp_alloc_free_savefd", scope: !2, file: !2, line: 97, type: !497, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !85)
!521 = !DILocalVariable(name: "value", arg: 1, scope: !520, file: !2, line: 97, type: !54)
!522 = !DILocation(line: 97, column: 54, scope: !520)
!523 = !DILocalVariable(name: "at", scope: !520, file: !2, line: 99, type: !36)
!524 = !DILocation(line: 99, column: 19, scope: !520)
!525 = !DILocation(line: 99, column: 44, scope: !520)
!526 = !DILocation(line: 99, column: 24, scope: !520)
!527 = !DILocation(line: 100, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !520, file: !2, line: 100, column: 6)
!529 = !DILocation(line: 100, column: 6, scope: !520)
!530 = !DILocation(line: 101, column: 8, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !2, line: 100, column: 10)
!532 = !DILocation(line: 101, column: 3, scope: !531)
!533 = !DILocation(line: 102, column: 2, scope: !531)
!534 = !DILocation(line: 103, column: 1, scope: !520)
