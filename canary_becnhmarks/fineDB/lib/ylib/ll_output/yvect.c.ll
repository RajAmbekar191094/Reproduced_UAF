; ModuleID = './yvect.c'
source_filename = "./yvect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yvect_head_s = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define ptr @yv_new() #0 !dbg !33 {
  %1 = call ptr @yv_create(i32 noundef 4096), !dbg !38
  ret ptr %1, !dbg !39
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @yv_create(i32 noundef %0) #0 !dbg !40 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata ptr %4, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata ptr %5, metadata !48, metadata !DIExpression()), !dbg !49
  %6 = load i32, ptr %3, align 4, !dbg !50
  %7 = zext i32 %6 to i64, !dbg !50
  %8 = mul i64 %7, 8, !dbg !50
  %9 = add i64 %8, 16, !dbg !50
  %10 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %9) #6, !dbg !50
  store ptr %10, ptr %4, align 8, !dbg !52
  %11 = icmp ne ptr %10, null, !dbg !52
  br i1 %11, label %13, label %12, !dbg !53

12:                                               ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !54
  br label %27, !dbg !54

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 8, !dbg !55
  store ptr %14, ptr %5, align 8, !dbg !56
  %15 = load ptr, ptr %4, align 8, !dbg !57
  %16 = ptrtoint ptr %15 to i64, !dbg !58
  %17 = add i64 %16, 16, !dbg !59
  %18 = inttoptr i64 %17 to ptr, !dbg !60
  store ptr %18, ptr %4, align 8, !dbg !61
  %19 = load i32, ptr %3, align 4, !dbg !62
  %20 = zext i32 %19 to i64, !dbg !62
  %21 = load ptr, ptr %5, align 8, !dbg !63
  %22 = getelementptr inbounds %struct.yvect_head_s, ptr %21, i32 0, i32 0, !dbg !64
  store i64 %20, ptr %22, align 8, !dbg !65
  %23 = load ptr, ptr %5, align 8, !dbg !66
  %24 = getelementptr inbounds %struct.yvect_head_s, ptr %23, i32 0, i32 1, !dbg !67
  store i64 0, ptr %24, align 8, !dbg !68
  %25 = load ptr, ptr %4, align 8, !dbg !69
  store ptr null, ptr %25, align 8, !dbg !70
  %26 = load ptr, ptr %4, align 8, !dbg !71
  store ptr %26, ptr %2, align 8, !dbg !72
  br label %27, !dbg !72

27:                                               ; preds = %13, %12
  %28 = load ptr, ptr %2, align 8, !dbg !73
  ret ptr %28, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @yv_del(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !74 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !81, metadata !DIExpression()), !dbg !82
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !83, metadata !DIExpression()), !dbg !84
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata ptr %7, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata ptr %8, metadata !89, metadata !DIExpression()), !dbg !90
  %9 = load ptr, ptr %4, align 8, !dbg !91
  %10 = icmp ne ptr %9, null, !dbg !91
  br i1 %10, label %11, label %15, !dbg !93

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !dbg !94
  %13 = load ptr, ptr %12, align 8, !dbg !95
  %14 = icmp ne ptr %13, null, !dbg !95
  br i1 %14, label %16, label %15, !dbg !96

15:                                               ; preds = %11, %3
  br label %54, !dbg !97

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8, !dbg !98
  %18 = load ptr, ptr %17, align 8, !dbg !99
  %19 = ptrtoint ptr %18 to i64, !dbg !100
  %20 = sub i64 %19, 16, !dbg !101
  %21 = inttoptr i64 %20 to ptr, !dbg !102
  store ptr %21, ptr %7, align 8, !dbg !103
  %22 = load ptr, ptr %5, align 8, !dbg !104
  %23 = icmp ne ptr %22, null, !dbg !104
  br i1 %23, label %24, label %45, !dbg !106

24:                                               ; preds = %16
  store i32 0, ptr %8, align 4, !dbg !107
  br label %25, !dbg !109

25:                                               ; preds = %41, %24
  %26 = load i32, ptr %8, align 4, !dbg !110
  %27 = zext i32 %26 to i64, !dbg !110
  %28 = load ptr, ptr %7, align 8, !dbg !112
  %29 = getelementptr inbounds %struct.yvect_head_s, ptr %28, i32 0, i32 1, !dbg !113
  %30 = load i64, ptr %29, align 8, !dbg !113
  %31 = icmp ult i64 %27, %30, !dbg !114
  br i1 %31, label %32, label %44, !dbg !115

32:                                               ; preds = %25
  %33 = load ptr, ptr %5, align 8, !dbg !116
  %34 = load ptr, ptr %4, align 8, !dbg !117
  %35 = load ptr, ptr %34, align 8, !dbg !118
  %36 = load i32, ptr %8, align 4, !dbg !119
  %37 = zext i32 %36 to i64, !dbg !120
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37, !dbg !120
  %39 = load ptr, ptr %38, align 8, !dbg !120
  %40 = load ptr, ptr %6, align 8, !dbg !121
  call void %33(ptr noundef %39, ptr noundef %40), !dbg !116
  br label %41, !dbg !116

41:                                               ; preds = %32
  %42 = load i32, ptr %8, align 4, !dbg !122
  %43 = add i32 %42, 1, !dbg !122
  store i32 %43, ptr %8, align 4, !dbg !122
  br label %25, !dbg !123, !llvm.loop !124

44:                                               ; preds = %25
  br label %45, !dbg !125

45:                                               ; preds = %44, %16
  %46 = load ptr, ptr %7, align 8, !dbg !126
  %47 = icmp ne ptr %46, null, !dbg !126
  br i1 %47, label %48, label %50, !dbg !126

48:                                               ; preds = %45
  %49 = load ptr, ptr %7, align 8, !dbg !126
  call void @free(ptr noundef %49) #7, !dbg !126
  br label %51, !dbg !126

50:                                               ; preds = %45
  br label %51, !dbg !126

51:                                               ; preds = %50, %48
  %52 = phi ptr [ null, %48 ], [ null, %50 ], !dbg !126
  store ptr null, ptr %7, align 8, !dbg !126
  %53 = load ptr, ptr %4, align 8, !dbg !127
  store ptr null, ptr %53, align 8, !dbg !128
  br label %54, !dbg !129

54:                                               ; preds = %51, %15
  ret void, !dbg !129
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @yv_trunc(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !130 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !133, metadata !DIExpression()), !dbg !134
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !135, metadata !DIExpression()), !dbg !136
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata ptr %7, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata ptr %8, metadata !141, metadata !DIExpression()), !dbg !142
  %9 = load ptr, ptr %4, align 8, !dbg !143
  %10 = icmp ne ptr %9, null, !dbg !143
  br i1 %10, label %11, label %15, !dbg !145

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !dbg !146
  %13 = load ptr, ptr %12, align 8, !dbg !147
  %14 = icmp ne ptr %13, null, !dbg !147
  br i1 %14, label %16, label %15, !dbg !148

15:                                               ; preds = %11, %3
  br label %48, !dbg !149

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8, !dbg !150
  %18 = load ptr, ptr %17, align 8, !dbg !151
  %19 = ptrtoint ptr %18 to i64, !dbg !152
  %20 = sub i64 %19, 16, !dbg !153
  %21 = inttoptr i64 %20 to ptr, !dbg !154
  store ptr %21, ptr %7, align 8, !dbg !155
  %22 = load ptr, ptr %5, align 8, !dbg !156
  %23 = icmp ne ptr %22, null, !dbg !156
  br i1 %23, label %24, label %44, !dbg !158

24:                                               ; preds = %16
  store i32 0, ptr %8, align 4, !dbg !159
  br label %25, !dbg !161

25:                                               ; preds = %40, %24
  %26 = load i32, ptr %8, align 4, !dbg !162
  %27 = zext i32 %26 to i64, !dbg !162
  %28 = load ptr, ptr %7, align 8, !dbg !164
  %29 = getelementptr inbounds %struct.yvect_head_s, ptr %28, i32 0, i32 1, !dbg !165
  %30 = load i64, ptr %29, align 8, !dbg !165
  %31 = icmp ult i64 %27, %30, !dbg !166
  br i1 %31, label %32, label %43, !dbg !167

32:                                               ; preds = %25
  %33 = load ptr, ptr %5, align 8, !dbg !168
  %34 = load ptr, ptr %4, align 8, !dbg !169
  %35 = load i32, ptr %8, align 4, !dbg !170
  %36 = zext i32 %35 to i64, !dbg !169
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36, !dbg !169
  %38 = load ptr, ptr %37, align 8, !dbg !169
  %39 = load ptr, ptr %6, align 8, !dbg !171
  call void %33(ptr noundef %38, ptr noundef %39), !dbg !168
  br label %40, !dbg !168

40:                                               ; preds = %32
  %41 = load i32, ptr %8, align 4, !dbg !172
  %42 = add i32 %41, 1, !dbg !172
  store i32 %42, ptr %8, align 4, !dbg !172
  br label %25, !dbg !173, !llvm.loop !174

43:                                               ; preds = %25
  br label %44, !dbg !175

44:                                               ; preds = %43, %16
  %45 = load ptr, ptr %7, align 8, !dbg !176
  %46 = getelementptr inbounds %struct.yvect_head_s, ptr %45, i32 0, i32 1, !dbg !177
  store i64 0, ptr %46, align 8, !dbg !178
  %47 = load ptr, ptr %4, align 8, !dbg !179
  store ptr null, ptr %47, align 8, !dbg !180
  br label %48, !dbg !181

48:                                               ; preds = %44, %15
  ret void, !dbg !181
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @yv_setsz(ptr noundef %0, i64 noundef %1) #0 !dbg !182 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !186, metadata !DIExpression()), !dbg !187
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata ptr %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata ptr %7, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata ptr %8, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata ptr %9, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata ptr %10, metadata !198, metadata !DIExpression()), !dbg !199
  %11 = load ptr, ptr %4, align 8, !dbg !200
  %12 = icmp ne ptr %11, null, !dbg !200
  br i1 %12, label %13, label %17, !dbg !202

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !203
  %15 = load ptr, ptr %14, align 8, !dbg !204
  %16 = icmp ne ptr %15, null, !dbg !204
  br i1 %16, label %18, label %17, !dbg !205

17:                                               ; preds = %13, %2
  store i32 0, ptr %3, align 4, !dbg !206
  br label %92, !dbg !206

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 8, !dbg !207
  %20 = load ptr, ptr %19, align 8, !dbg !208
  %21 = load ptr, ptr %20, align 8, !dbg !209
  %22 = ptrtoint ptr %21 to i64, !dbg !210
  %23 = sub i64 %22, 16, !dbg !211
  %24 = inttoptr i64 %23 to ptr, !dbg !212
  store ptr %24, ptr %6, align 8, !dbg !213
  %25 = load i64, ptr %5, align 8, !dbg !214
  %26 = load ptr, ptr %6, align 8, !dbg !216
  %27 = getelementptr inbounds %struct.yvect_head_s, ptr %26, i32 0, i32 0, !dbg !217
  %28 = load i64, ptr %27, align 8, !dbg !217
  %29 = icmp ult i64 %25, %28, !dbg !218
  br i1 %29, label %30, label %31, !dbg !219

30:                                               ; preds = %18
  store i32 1, ptr %3, align 4, !dbg !220
  br label %92, !dbg !220

31:                                               ; preds = %18
  %32 = load i64, ptr %5, align 8, !dbg !221
  %33 = icmp ult i64 %32, 65536, !dbg !222
  br i1 %33, label %34, label %35, !dbg !223

34:                                               ; preds = %31
  br label %40, !dbg !223

35:                                               ; preds = %31
  %36 = load i64, ptr %5, align 8, !dbg !224
  %37 = icmp ult i64 %36, 1048576, !dbg !225
  %38 = zext i1 %37 to i64, !dbg !226
  %39 = select i1 %37, i32 65536, i32 1048576, !dbg !226
  br label %40, !dbg !223

40:                                               ; preds = %35, %34
  %41 = phi i32 [ 4096, %34 ], [ %39, %35 ], !dbg !223
  store i32 %41, ptr %9, align 4, !dbg !227
  %42 = load i64, ptr %5, align 8, !dbg !228
  %43 = add i64 %42, 1, !dbg !229
  %44 = load i32, ptr %9, align 4, !dbg !230
  %45 = zext i32 %44 to i64, !dbg !230
  %46 = udiv i64 %43, %45, !dbg !231
  %47 = add i64 %46, 1, !dbg !232
  %48 = load i32, ptr %9, align 4, !dbg !233
  %49 = zext i32 %48 to i64, !dbg !233
  %50 = mul i64 %47, %49, !dbg !234
  %51 = trunc i64 %50 to i32, !dbg !235
  store i32 %51, ptr %8, align 4, !dbg !236
  %52 = load i32, ptr %8, align 4, !dbg !237
  %53 = zext i32 %52 to i64, !dbg !237
  %54 = mul i64 %53, 8, !dbg !237
  %55 = add i64 %54, 16, !dbg !237
  %56 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %55) #6, !dbg !237
  store ptr %56, ptr %10, align 8, !dbg !239
  %57 = icmp ne ptr %56, null, !dbg !239
  br i1 %57, label %59, label %58, !dbg !240

58:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !dbg !241
  br label %92, !dbg !241

59:                                               ; preds = %40
  %60 = load ptr, ptr %10, align 8, !dbg !242
  store ptr %60, ptr %7, align 8, !dbg !243
  %61 = load ptr, ptr %10, align 8, !dbg !244
  %62 = ptrtoint ptr %61 to i64, !dbg !245
  %63 = add i64 %62, 16, !dbg !246
  %64 = inttoptr i64 %63 to ptr, !dbg !247
  store ptr %64, ptr %10, align 8, !dbg !248
  %65 = load i32, ptr %8, align 4, !dbg !249
  %66 = zext i32 %65 to i64, !dbg !249
  %67 = load ptr, ptr %7, align 8, !dbg !250
  %68 = getelementptr inbounds %struct.yvect_head_s, ptr %67, i32 0, i32 0, !dbg !251
  store i64 %66, ptr %68, align 8, !dbg !252
  %69 = load ptr, ptr %6, align 8, !dbg !253
  %70 = getelementptr inbounds %struct.yvect_head_s, ptr %69, i32 0, i32 1, !dbg !254
  %71 = load i64, ptr %70, align 8, !dbg !254
  %72 = load ptr, ptr %7, align 8, !dbg !255
  %73 = getelementptr inbounds %struct.yvect_head_s, ptr %72, i32 0, i32 1, !dbg !256
  store i64 %71, ptr %73, align 8, !dbg !257
  %74 = load ptr, ptr %10, align 8, !dbg !258
  %75 = load ptr, ptr %4, align 8, !dbg !259
  %76 = load ptr, ptr %75, align 8, !dbg !260
  %77 = load ptr, ptr %76, align 8, !dbg !261
  %78 = load ptr, ptr %6, align 8, !dbg !262
  %79 = getelementptr inbounds %struct.yvect_head_s, ptr %78, i32 0, i32 1, !dbg !263
  %80 = load i64, ptr %79, align 8, !dbg !263
  %81 = add i64 %80, 1, !dbg !264
  %82 = mul i64 %81, 8, !dbg !265
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %74, ptr align 1 %77, i64 %82, i1 false), !dbg !266
  %83 = load ptr, ptr %6, align 8, !dbg !267
  %84 = icmp ne ptr %83, null, !dbg !267
  br i1 %84, label %85, label %87, !dbg !267

85:                                               ; preds = %59
  %86 = load ptr, ptr %6, align 8, !dbg !267
  call void @free(ptr noundef %86) #7, !dbg !267
  br label %88, !dbg !267

87:                                               ; preds = %59
  br label %88, !dbg !267

88:                                               ; preds = %87, %85
  %89 = phi ptr [ null, %85 ], [ null, %87 ], !dbg !267
  store ptr null, ptr %6, align 8, !dbg !267
  %90 = load ptr, ptr %10, align 8, !dbg !268
  %91 = load ptr, ptr %4, align 8, !dbg !269
  store ptr %90, ptr %91, align 8, !dbg !270
  store i32 1, ptr %3, align 4, !dbg !271
  br label %92, !dbg !271

92:                                               ; preds = %88, %58, %30, %17
  %93 = load i32, ptr %3, align 4, !dbg !272
  ret i32 %93, !dbg !272
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define i64 @yv_len(ptr noundef %0) #0 !dbg !273 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !277
  %4 = load ptr, ptr %3, align 8, !dbg !278
  %5 = icmp ne ptr %4, null, !dbg !278
  br i1 %5, label %7, label %6, !dbg !280

6:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !281
  br label %14, !dbg !281

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !282
  %9 = ptrtoint ptr %8 to i64, !dbg !283
  %10 = sub i64 %9, 16, !dbg !284
  %11 = inttoptr i64 %10 to ptr, !dbg !285
  %12 = getelementptr inbounds %struct.yvect_head_s, ptr %11, i32 0, i32 1, !dbg !286
  %13 = load i64, ptr %12, align 8, !dbg !286
  store i64 %13, ptr %2, align 8, !dbg !287
  br label %14, !dbg !287

14:                                               ; preds = %7, %6
  %15 = load i64, ptr %2, align 8, !dbg !288
  ret i64 %15, !dbg !288
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @yv_cat(ptr noundef %0, ptr noundef %1) #0 !dbg !289 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !292, metadata !DIExpression()), !dbg !293
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata ptr %6, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata ptr %7, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata ptr %8, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata ptr %9, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata ptr %10, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata ptr %11, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata ptr %12, metadata !308, metadata !DIExpression()), !dbg !309
  %13 = load ptr, ptr %5, align 8, !dbg !310
  %14 = icmp ne ptr %13, null, !dbg !310
  br i1 %14, label %15, label %27, !dbg !312

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8, !dbg !313
  %17 = icmp ne ptr %16, null, !dbg !313
  br i1 %17, label %18, label %27, !dbg !314

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !dbg !315
  %20 = load ptr, ptr %19, align 8, !dbg !316
  %21 = icmp ne ptr %20, null, !dbg !316
  br i1 %21, label %22, label %27, !dbg !317

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !dbg !318
  %24 = call i64 @yv_len(ptr noundef %23), !dbg !319
  %25 = trunc i64 %24 to i32, !dbg !319
  store i32 %25, ptr %6, align 4, !dbg !320
  %26 = icmp ne i32 %25, 0, !dbg !320
  br i1 %26, label %28, label %27, !dbg !321

27:                                               ; preds = %22, %18, %15, %2
  store i32 1, ptr %3, align 4, !dbg !322
  br label %135, !dbg !322

28:                                               ; preds = %22
  %29 = load ptr, ptr %4, align 8, !dbg !323
  %30 = load ptr, ptr %29, align 8, !dbg !324
  %31 = ptrtoint ptr %30 to i64, !dbg !325
  %32 = sub i64 %31, 16, !dbg !326
  %33 = inttoptr i64 %32 to ptr, !dbg !327
  store ptr %33, ptr %10, align 8, !dbg !328
  %34 = load ptr, ptr %10, align 8, !dbg !329
  %35 = getelementptr inbounds %struct.yvect_head_s, ptr %34, i32 0, i32 1, !dbg !331
  %36 = load i64, ptr %35, align 8, !dbg !331
  %37 = add i64 %36, 1, !dbg !332
  %38 = load i32, ptr %6, align 4, !dbg !333
  %39 = zext i32 %38 to i64, !dbg !333
  %40 = add i64 %37, %39, !dbg !334
  %41 = load ptr, ptr %10, align 8, !dbg !335
  %42 = getelementptr inbounds %struct.yvect_head_s, ptr %41, i32 0, i32 0, !dbg !336
  %43 = load i64, ptr %42, align 8, !dbg !336
  %44 = icmp ule i64 %40, %43, !dbg !337
  br i1 %44, label %45, label %63, !dbg !338

45:                                               ; preds = %28
  %46 = load ptr, ptr %4, align 8, !dbg !339
  %47 = load ptr, ptr %46, align 8, !dbg !341
  %48 = load ptr, ptr %10, align 8, !dbg !342
  %49 = getelementptr inbounds %struct.yvect_head_s, ptr %48, i32 0, i32 1, !dbg !343
  %50 = load i64, ptr %49, align 8, !dbg !343
  %51 = getelementptr inbounds ptr, ptr %47, i64 %50, !dbg !344
  %52 = load ptr, ptr %5, align 8, !dbg !345
  %53 = load i32, ptr %6, align 4, !dbg !346
  %54 = add i32 %53, 1, !dbg !347
  %55 = zext i32 %54 to i64, !dbg !348
  %56 = mul i64 %55, 8, !dbg !349
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %51, ptr align 8 %52, i64 %56, i1 false), !dbg !350
  %57 = load i32, ptr %6, align 4, !dbg !351
  %58 = zext i32 %57 to i64, !dbg !351
  %59 = load ptr, ptr %10, align 8, !dbg !352
  %60 = getelementptr inbounds %struct.yvect_head_s, ptr %59, i32 0, i32 1, !dbg !353
  %61 = load i64, ptr %60, align 8, !dbg !354
  %62 = add i64 %61, %58, !dbg !354
  store i64 %62, ptr %60, align 8, !dbg !354
  store i32 1, ptr %3, align 4, !dbg !355
  br label %135, !dbg !355

63:                                               ; preds = %28
  %64 = load ptr, ptr %10, align 8, !dbg !356
  %65 = getelementptr inbounds %struct.yvect_head_s, ptr %64, i32 0, i32 1, !dbg !357
  %66 = load i64, ptr %65, align 8, !dbg !357
  %67 = load i32, ptr %6, align 4, !dbg !358
  %68 = zext i32 %67 to i64, !dbg !358
  %69 = add i64 %66, %68, !dbg !359
  %70 = trunc i64 %69 to i32, !dbg !356
  store i32 %70, ptr %7, align 4, !dbg !360
  %71 = load i32, ptr %7, align 4, !dbg !361
  %72 = icmp ult i32 %71, 65536, !dbg !362
  br i1 %72, label %73, label %74, !dbg !363

73:                                               ; preds = %63
  br label %79, !dbg !363

74:                                               ; preds = %63
  %75 = load i32, ptr %7, align 4, !dbg !364
  %76 = icmp ult i32 %75, 1048576, !dbg !365
  %77 = zext i1 %76 to i64, !dbg !366
  %78 = select i1 %76, i32 65536, i32 1048576, !dbg !366
  br label %79, !dbg !363

79:                                               ; preds = %74, %73
  %80 = phi i32 [ 4096, %73 ], [ %78, %74 ], !dbg !363
  store i32 %80, ptr %9, align 4, !dbg !367
  %81 = load i32, ptr %7, align 4, !dbg !368
  %82 = add i32 %81, 1, !dbg !369
  %83 = load i32, ptr %9, align 4, !dbg !370
  %84 = udiv i32 %82, %83, !dbg !371
  %85 = add i32 %84, 1, !dbg !372
  %86 = load i32, ptr %9, align 4, !dbg !373
  %87 = mul i32 %85, %86, !dbg !374
  store i32 %87, ptr %8, align 4, !dbg !375
  %88 = load i32, ptr %8, align 4, !dbg !376
  %89 = zext i32 %88 to i64, !dbg !376
  %90 = mul i64 %89, 8, !dbg !376
  %91 = add i64 %90, 16, !dbg !376
  %92 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %91) #6, !dbg !376
  store ptr %92, ptr %12, align 8, !dbg !378
  %93 = icmp ne ptr %92, null, !dbg !378
  br i1 %93, label %95, label %94, !dbg !379

94:                                               ; preds = %79
  store i32 0, ptr %3, align 4, !dbg !380
  br label %135, !dbg !380

95:                                               ; preds = %79
  %96 = load ptr, ptr %12, align 8, !dbg !381
  store ptr %96, ptr %11, align 8, !dbg !382
  %97 = load ptr, ptr %12, align 8, !dbg !383
  %98 = ptrtoint ptr %97 to i64, !dbg !384
  %99 = add i64 %98, 16, !dbg !385
  %100 = inttoptr i64 %99 to ptr, !dbg !386
  store ptr %100, ptr %12, align 8, !dbg !387
  %101 = load i32, ptr %8, align 4, !dbg !388
  %102 = zext i32 %101 to i64, !dbg !388
  %103 = load ptr, ptr %11, align 8, !dbg !389
  %104 = getelementptr inbounds %struct.yvect_head_s, ptr %103, i32 0, i32 0, !dbg !390
  store i64 %102, ptr %104, align 8, !dbg !391
  %105 = load i32, ptr %7, align 4, !dbg !392
  %106 = zext i32 %105 to i64, !dbg !392
  %107 = load ptr, ptr %11, align 8, !dbg !393
  %108 = getelementptr inbounds %struct.yvect_head_s, ptr %107, i32 0, i32 1, !dbg !394
  store i64 %106, ptr %108, align 8, !dbg !395
  %109 = load ptr, ptr %12, align 8, !dbg !396
  %110 = load ptr, ptr %4, align 8, !dbg !397
  %111 = load ptr, ptr %110, align 8, !dbg !398
  %112 = load ptr, ptr %10, align 8, !dbg !399
  %113 = getelementptr inbounds %struct.yvect_head_s, ptr %112, i32 0, i32 1, !dbg !400
  %114 = load i64, ptr %113, align 8, !dbg !400
  %115 = mul i64 %114, 8, !dbg !401
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %109, ptr align 8 %111, i64 %115, i1 false), !dbg !402
  %116 = load ptr, ptr %12, align 8, !dbg !403
  %117 = load ptr, ptr %10, align 8, !dbg !404
  %118 = getelementptr inbounds %struct.yvect_head_s, ptr %117, i32 0, i32 1, !dbg !405
  %119 = load i64, ptr %118, align 8, !dbg !405
  %120 = getelementptr inbounds ptr, ptr %116, i64 %119, !dbg !406
  %121 = load ptr, ptr %5, align 8, !dbg !407
  %122 = load i32, ptr %6, align 4, !dbg !408
  %123 = add i32 %122, 1, !dbg !409
  %124 = zext i32 %123 to i64, !dbg !410
  %125 = mul i64 %124, 8, !dbg !411
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %120, ptr align 8 %121, i64 %125, i1 false), !dbg !412
  %126 = load ptr, ptr %10, align 8, !dbg !413
  %127 = icmp ne ptr %126, null, !dbg !413
  br i1 %127, label %128, label %130, !dbg !413

128:                                              ; preds = %95
  %129 = load ptr, ptr %10, align 8, !dbg !413
  call void @free(ptr noundef %129) #7, !dbg !413
  br label %131, !dbg !413

130:                                              ; preds = %95
  br label %131, !dbg !413

131:                                              ; preds = %130, %128
  %132 = phi ptr [ null, %128 ], [ null, %130 ], !dbg !413
  store ptr null, ptr %10, align 8, !dbg !413
  %133 = load ptr, ptr %12, align 8, !dbg !414
  %134 = load ptr, ptr %4, align 8, !dbg !415
  store ptr %133, ptr %134, align 8, !dbg !416
  store i32 1, ptr %3, align 4, !dbg !417
  br label %135, !dbg !417

135:                                              ; preds = %131, %94, %45, %27
  %136 = load i32, ptr %3, align 4, !dbg !418
  ret i32 %136, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @yv_ncat(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !419 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !422, metadata !DIExpression()), !dbg !423
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !424, metadata !DIExpression()), !dbg !425
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %8, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata ptr %9, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata ptr %10, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata ptr %11, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata ptr %12, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata ptr %13, metadata !438, metadata !DIExpression()), !dbg !439
  %14 = load ptr, ptr %6, align 8, !dbg !440
  %15 = icmp ne ptr %14, null, !dbg !440
  br i1 %15, label %16, label %26, !dbg !442

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8, !dbg !443
  %18 = icmp ne ptr %17, null, !dbg !443
  br i1 %18, label %19, label %26, !dbg !444

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8, !dbg !445
  %21 = load ptr, ptr %20, align 8, !dbg !446
  %22 = icmp ne ptr %21, null, !dbg !446
  br i1 %22, label %23, label %26, !dbg !447

23:                                               ; preds = %19
  %24 = load i32, ptr %7, align 4, !dbg !448
  %25 = icmp ne i32 %24, 0, !dbg !448
  br i1 %25, label %27, label %26, !dbg !449

26:                                               ; preds = %23, %19, %16, %3
  store i32 1, ptr %4, align 4, !dbg !450
  br label %143, !dbg !450

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 8, !dbg !451
  %29 = load ptr, ptr %28, align 8, !dbg !452
  %30 = ptrtoint ptr %29 to i64, !dbg !453
  %31 = sub i64 %30, 16, !dbg !454
  %32 = inttoptr i64 %31 to ptr, !dbg !455
  store ptr %32, ptr %11, align 8, !dbg !456
  %33 = load ptr, ptr %11, align 8, !dbg !457
  %34 = getelementptr inbounds %struct.yvect_head_s, ptr %33, i32 0, i32 1, !dbg !459
  %35 = load i64, ptr %34, align 8, !dbg !459
  %36 = add i64 %35, 1, !dbg !460
  %37 = load i32, ptr %7, align 4, !dbg !461
  %38 = zext i32 %37 to i64, !dbg !461
  %39 = add i64 %36, %38, !dbg !462
  %40 = load ptr, ptr %11, align 8, !dbg !463
  %41 = getelementptr inbounds %struct.yvect_head_s, ptr %40, i32 0, i32 0, !dbg !464
  %42 = load i64, ptr %41, align 8, !dbg !464
  %43 = icmp ule i64 %39, %42, !dbg !465
  br i1 %43, label %44, label %67, !dbg !466

44:                                               ; preds = %27
  %45 = load ptr, ptr %5, align 8, !dbg !467
  %46 = load ptr, ptr %45, align 8, !dbg !469
  %47 = load ptr, ptr %11, align 8, !dbg !470
  %48 = getelementptr inbounds %struct.yvect_head_s, ptr %47, i32 0, i32 1, !dbg !471
  %49 = load i64, ptr %48, align 8, !dbg !471
  %50 = getelementptr inbounds ptr, ptr %46, i64 %49, !dbg !472
  %51 = load ptr, ptr %6, align 8, !dbg !473
  %52 = load i32, ptr %7, align 4, !dbg !474
  %53 = zext i32 %52 to i64, !dbg !474
  %54 = mul i64 %53, 8, !dbg !475
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %50, ptr align 8 %51, i64 %54, i1 false), !dbg !476
  %55 = load i32, ptr %7, align 4, !dbg !477
  %56 = zext i32 %55 to i64, !dbg !477
  %57 = load ptr, ptr %11, align 8, !dbg !478
  %58 = getelementptr inbounds %struct.yvect_head_s, ptr %57, i32 0, i32 1, !dbg !479
  %59 = load i64, ptr %58, align 8, !dbg !480
  %60 = add i64 %59, %56, !dbg !480
  store i64 %60, ptr %58, align 8, !dbg !480
  %61 = load ptr, ptr %5, align 8, !dbg !481
  %62 = load ptr, ptr %61, align 8, !dbg !482
  %63 = load ptr, ptr %11, align 8, !dbg !483
  %64 = getelementptr inbounds %struct.yvect_head_s, ptr %63, i32 0, i32 1, !dbg !484
  %65 = load i64, ptr %64, align 8, !dbg !484
  %66 = getelementptr inbounds ptr, ptr %62, i64 %65, !dbg !485
  store ptr null, ptr %66, align 8, !dbg !486
  store i32 1, ptr %4, align 4, !dbg !487
  br label %143, !dbg !487

67:                                               ; preds = %27
  %68 = load ptr, ptr %11, align 8, !dbg !488
  %69 = getelementptr inbounds %struct.yvect_head_s, ptr %68, i32 0, i32 1, !dbg !489
  %70 = load i64, ptr %69, align 8, !dbg !489
  %71 = load i32, ptr %7, align 4, !dbg !490
  %72 = zext i32 %71 to i64, !dbg !490
  %73 = add i64 %70, %72, !dbg !491
  %74 = trunc i64 %73 to i32, !dbg !488
  store i32 %74, ptr %8, align 4, !dbg !492
  %75 = load i32, ptr %8, align 4, !dbg !493
  %76 = icmp ult i32 %75, 65536, !dbg !494
  br i1 %76, label %77, label %78, !dbg !495

77:                                               ; preds = %67
  br label %83, !dbg !495

78:                                               ; preds = %67
  %79 = load i32, ptr %8, align 4, !dbg !496
  %80 = icmp ult i32 %79, 1048576, !dbg !497
  %81 = zext i1 %80 to i64, !dbg !498
  %82 = select i1 %80, i32 65536, i32 1048576, !dbg !498
  br label %83, !dbg !495

83:                                               ; preds = %78, %77
  %84 = phi i32 [ 4096, %77 ], [ %82, %78 ], !dbg !495
  store i32 %84, ptr %10, align 4, !dbg !499
  %85 = load i32, ptr %8, align 4, !dbg !500
  %86 = add i32 %85, 1, !dbg !501
  %87 = load i32, ptr %10, align 4, !dbg !502
  %88 = udiv i32 %86, %87, !dbg !503
  %89 = add i32 %88, 1, !dbg !504
  %90 = load i32, ptr %10, align 4, !dbg !505
  %91 = mul i32 %89, %90, !dbg !506
  store i32 %91, ptr %9, align 4, !dbg !507
  %92 = load i32, ptr %9, align 4, !dbg !508
  %93 = zext i32 %92 to i64, !dbg !508
  %94 = mul i64 %93, 8, !dbg !508
  %95 = add i64 %94, 16, !dbg !508
  %96 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %95) #6, !dbg !508
  store ptr %96, ptr %13, align 8, !dbg !510
  %97 = icmp ne ptr %96, null, !dbg !510
  br i1 %97, label %99, label %98, !dbg !511

98:                                               ; preds = %83
  store i32 0, ptr %4, align 4, !dbg !512
  br label %143, !dbg !512

99:                                               ; preds = %83
  %100 = load ptr, ptr %13, align 8, !dbg !513
  store ptr %100, ptr %12, align 8, !dbg !514
  %101 = load ptr, ptr %13, align 8, !dbg !515
  %102 = ptrtoint ptr %101 to i64, !dbg !516
  %103 = add i64 %102, 16, !dbg !517
  %104 = inttoptr i64 %103 to ptr, !dbg !518
  store ptr %104, ptr %13, align 8, !dbg !519
  %105 = load i32, ptr %9, align 4, !dbg !520
  %106 = zext i32 %105 to i64, !dbg !520
  %107 = load ptr, ptr %12, align 8, !dbg !521
  %108 = getelementptr inbounds %struct.yvect_head_s, ptr %107, i32 0, i32 0, !dbg !522
  store i64 %106, ptr %108, align 8, !dbg !523
  %109 = load i32, ptr %8, align 4, !dbg !524
  %110 = zext i32 %109 to i64, !dbg !524
  %111 = load ptr, ptr %12, align 8, !dbg !525
  %112 = getelementptr inbounds %struct.yvect_head_s, ptr %111, i32 0, i32 1, !dbg !526
  store i64 %110, ptr %112, align 8, !dbg !527
  %113 = load ptr, ptr %13, align 8, !dbg !528
  %114 = load ptr, ptr %5, align 8, !dbg !529
  %115 = load ptr, ptr %114, align 8, !dbg !530
  %116 = load ptr, ptr %11, align 8, !dbg !531
  %117 = getelementptr inbounds %struct.yvect_head_s, ptr %116, i32 0, i32 1, !dbg !532
  %118 = load i64, ptr %117, align 8, !dbg !532
  %119 = mul i64 %118, 8, !dbg !533
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %113, ptr align 8 %115, i64 %119, i1 false), !dbg !534
  %120 = load ptr, ptr %13, align 8, !dbg !535
  %121 = load ptr, ptr %11, align 8, !dbg !536
  %122 = getelementptr inbounds %struct.yvect_head_s, ptr %121, i32 0, i32 1, !dbg !537
  %123 = load i64, ptr %122, align 8, !dbg !537
  %124 = getelementptr inbounds ptr, ptr %120, i64 %123, !dbg !538
  %125 = load ptr, ptr %6, align 8, !dbg !539
  %126 = load i32, ptr %7, align 4, !dbg !540
  %127 = zext i32 %126 to i64, !dbg !540
  %128 = mul i64 %127, 8, !dbg !541
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %124, ptr align 8 %125, i64 %128, i1 false), !dbg !542
  %129 = load ptr, ptr %13, align 8, !dbg !543
  %130 = load ptr, ptr %12, align 8, !dbg !544
  %131 = getelementptr inbounds %struct.yvect_head_s, ptr %130, i32 0, i32 1, !dbg !545
  %132 = load i64, ptr %131, align 8, !dbg !545
  %133 = getelementptr inbounds ptr, ptr %129, i64 %132, !dbg !543
  store ptr null, ptr %133, align 8, !dbg !546
  %134 = load ptr, ptr %11, align 8, !dbg !547
  %135 = icmp ne ptr %134, null, !dbg !547
  br i1 %135, label %136, label %138, !dbg !547

136:                                              ; preds = %99
  %137 = load ptr, ptr %11, align 8, !dbg !547
  call void @free(ptr noundef %137) #7, !dbg !547
  br label %139, !dbg !547

138:                                              ; preds = %99
  br label %139, !dbg !547

139:                                              ; preds = %138, %136
  %140 = phi ptr [ null, %136 ], [ null, %138 ], !dbg !547
  store ptr null, ptr %11, align 8, !dbg !547
  %141 = load ptr, ptr %13, align 8, !dbg !548
  %142 = load ptr, ptr %5, align 8, !dbg !549
  store ptr %141, ptr %142, align 8, !dbg !550
  store i32 1, ptr %4, align 4, !dbg !551
  br label %143, !dbg !551

143:                                              ; preds = %139, %98, %44, %26
  %144 = load i32, ptr %4, align 4, !dbg !552
  ret i32 %144, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @yv_dup(ptr noundef %0) #0 !dbg !553 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata ptr %4, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata ptr %5, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata ptr %6, metadata !562, metadata !DIExpression()), !dbg !563
  %7 = load ptr, ptr %3, align 8, !dbg !564
  %8 = icmp ne ptr %7, null, !dbg !564
  br i1 %8, label %10, label %9, !dbg !566

9:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !567
  br label %47, !dbg !567

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !568
  %12 = ptrtoint ptr %11 to i64, !dbg !569
  %13 = sub i64 %12, 16, !dbg !570
  %14 = inttoptr i64 %13 to ptr, !dbg !571
  store ptr %14, ptr %4, align 8, !dbg !572
  %15 = load ptr, ptr %4, align 8, !dbg !573
  %16 = getelementptr inbounds %struct.yvect_head_s, ptr %15, i32 0, i32 0, !dbg !573
  %17 = load i64, ptr %16, align 8, !dbg !573
  %18 = mul i64 %17, 8, !dbg !573
  %19 = add i64 %18, 16, !dbg !573
  %20 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %19) #6, !dbg !573
  store ptr %20, ptr %6, align 8, !dbg !575
  %21 = icmp ne ptr %20, null, !dbg !575
  br i1 %21, label %23, label %22, !dbg !576

22:                                               ; preds = %10
  store ptr null, ptr %2, align 8, !dbg !577
  br label %47, !dbg !577

23:                                               ; preds = %10
  %24 = load ptr, ptr %6, align 8, !dbg !578
  store ptr %24, ptr %5, align 8, !dbg !579
  %25 = load ptr, ptr %6, align 8, !dbg !580
  %26 = ptrtoint ptr %25 to i64, !dbg !581
  %27 = add i64 %26, 16, !dbg !582
  %28 = inttoptr i64 %27 to ptr, !dbg !583
  store ptr %28, ptr %6, align 8, !dbg !584
  %29 = load ptr, ptr %4, align 8, !dbg !585
  %30 = getelementptr inbounds %struct.yvect_head_s, ptr %29, i32 0, i32 0, !dbg !586
  %31 = load i64, ptr %30, align 8, !dbg !586
  %32 = load ptr, ptr %5, align 8, !dbg !587
  %33 = getelementptr inbounds %struct.yvect_head_s, ptr %32, i32 0, i32 0, !dbg !588
  store i64 %31, ptr %33, align 8, !dbg !589
  %34 = load ptr, ptr %4, align 8, !dbg !590
  %35 = getelementptr inbounds %struct.yvect_head_s, ptr %34, i32 0, i32 1, !dbg !591
  %36 = load i64, ptr %35, align 8, !dbg !591
  %37 = load ptr, ptr %5, align 8, !dbg !592
  %38 = getelementptr inbounds %struct.yvect_head_s, ptr %37, i32 0, i32 1, !dbg !593
  store i64 %36, ptr %38, align 8, !dbg !594
  %39 = load ptr, ptr %6, align 8, !dbg !595
  %40 = load ptr, ptr %3, align 8, !dbg !596
  %41 = load ptr, ptr %4, align 8, !dbg !597
  %42 = getelementptr inbounds %struct.yvect_head_s, ptr %41, i32 0, i32 1, !dbg !598
  %43 = load i64, ptr %42, align 8, !dbg !598
  %44 = add i64 %43, 1, !dbg !599
  %45 = mul i64 %44, 8, !dbg !600
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %39, ptr align 8 %40, i64 %45, i1 false), !dbg !601
  %46 = load ptr, ptr %6, align 8, !dbg !602
  store ptr %46, ptr %2, align 8, !dbg !603
  br label %47, !dbg !603

47:                                               ; preds = %23, %22, %9
  %48 = load ptr, ptr %2, align 8, !dbg !604
  ret ptr %48, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @yv_concat(ptr noundef %0, ptr noundef %1) #0 !dbg !605 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !608, metadata !DIExpression()), !dbg !609
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata ptr %5, metadata !612, metadata !DIExpression()), !dbg !613
  %6 = load ptr, ptr %3, align 8, !dbg !614
  %7 = call ptr @yv_dup(ptr noundef %6), !dbg !615
  store ptr %7, ptr %5, align 8, !dbg !616
  %8 = load ptr, ptr %4, align 8, !dbg !617
  %9 = call i32 @yv_cat(ptr noundef %5, ptr noundef %8), !dbg !618
  %10 = load ptr, ptr %5, align 8, !dbg !619
  ret ptr %10, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @yv_put(ptr noundef %0, ptr noundef %1) #0 !dbg !621 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !624, metadata !DIExpression()), !dbg !625
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata ptr %6, metadata !628, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.declare(metadata ptr %7, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.declare(metadata ptr %8, metadata !632, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.declare(metadata ptr %9, metadata !634, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.declare(metadata ptr %10, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata ptr %11, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata ptr %12, metadata !640, metadata !DIExpression()), !dbg !641
  %13 = load ptr, ptr %4, align 8, !dbg !642
  %14 = icmp ne ptr %13, null, !dbg !642
  br i1 %14, label %15, label %19, !dbg !644

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8, !dbg !645
  %17 = load ptr, ptr %16, align 8, !dbg !646
  %18 = icmp ne ptr %17, null, !dbg !646
  br i1 %18, label %20, label %19, !dbg !647

19:                                               ; preds = %15, %2
  store i32 0, ptr %3, align 4, !dbg !648
  br label %134, !dbg !648

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !dbg !649
  %22 = load ptr, ptr %21, align 8, !dbg !650
  %23 = ptrtoint ptr %22 to i64, !dbg !651
  %24 = sub i64 %23, 16, !dbg !652
  %25 = inttoptr i64 %24 to ptr, !dbg !653
  store ptr %25, ptr %10, align 8, !dbg !654
  %26 = load ptr, ptr %10, align 8, !dbg !655
  %27 = getelementptr inbounds %struct.yvect_head_s, ptr %26, i32 0, i32 1, !dbg !657
  %28 = load i64, ptr %27, align 8, !dbg !657
  %29 = add i64 %28, 2, !dbg !658
  %30 = load ptr, ptr %10, align 8, !dbg !659
  %31 = getelementptr inbounds %struct.yvect_head_s, ptr %30, i32 0, i32 0, !dbg !660
  %32 = load i64, ptr %31, align 8, !dbg !660
  %33 = icmp ule i64 %29, %32, !dbg !661
  br i1 %33, label %34, label %67, !dbg !662

34:                                               ; preds = %20
  %35 = load ptr, ptr %10, align 8, !dbg !663
  %36 = getelementptr inbounds %struct.yvect_head_s, ptr %35, i32 0, i32 1, !dbg !666
  %37 = load i64, ptr %36, align 8, !dbg !666
  %38 = trunc i64 %37 to i32, !dbg !663
  store i32 %38, ptr %9, align 4, !dbg !667
  br label %39, !dbg !668

39:                                               ; preds = %55, %34
  %40 = load i32, ptr %9, align 4, !dbg !669
  %41 = icmp sge i32 %40, 0, !dbg !671
  br i1 %41, label %42, label %58, !dbg !672

42:                                               ; preds = %39
  %43 = load ptr, ptr %4, align 8, !dbg !673
  %44 = load ptr, ptr %43, align 8, !dbg !674
  %45 = load i32, ptr %9, align 4, !dbg !675
  %46 = sext i32 %45 to i64, !dbg !676
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46, !dbg !676
  %48 = load ptr, ptr %47, align 8, !dbg !676
  %49 = load ptr, ptr %4, align 8, !dbg !677
  %50 = load ptr, ptr %49, align 8, !dbg !678
  %51 = load i32, ptr %9, align 4, !dbg !679
  %52 = add nsw i32 %51, 1, !dbg !680
  %53 = sext i32 %52 to i64, !dbg !681
  %54 = getelementptr inbounds ptr, ptr %50, i64 %53, !dbg !681
  store ptr %48, ptr %54, align 8, !dbg !682
  br label %55, !dbg !681

55:                                               ; preds = %42
  %56 = load i32, ptr %9, align 4, !dbg !683
  %57 = add nsw i32 %56, -1, !dbg !683
  store i32 %57, ptr %9, align 4, !dbg !683
  br label %39, !dbg !684, !llvm.loop !685

58:                                               ; preds = %39
  %59 = load ptr, ptr %5, align 8, !dbg !687
  %60 = load ptr, ptr %4, align 8, !dbg !688
  %61 = load ptr, ptr %60, align 8, !dbg !689
  %62 = getelementptr inbounds ptr, ptr %61, i64 0, !dbg !690
  store ptr %59, ptr %62, align 8, !dbg !691
  %63 = load ptr, ptr %10, align 8, !dbg !692
  %64 = getelementptr inbounds %struct.yvect_head_s, ptr %63, i32 0, i32 1, !dbg !693
  %65 = load i64, ptr %64, align 8, !dbg !694
  %66 = add i64 %65, 1, !dbg !694
  store i64 %66, ptr %64, align 8, !dbg !694
  store i32 1, ptr %3, align 4, !dbg !695
  br label %134, !dbg !695

67:                                               ; preds = %20
  %68 = load ptr, ptr %10, align 8, !dbg !696
  %69 = getelementptr inbounds %struct.yvect_head_s, ptr %68, i32 0, i32 1, !dbg !697
  %70 = load i64, ptr %69, align 8, !dbg !697
  %71 = add i64 %70, 1, !dbg !698
  %72 = trunc i64 %71 to i32, !dbg !696
  store i32 %72, ptr %6, align 4, !dbg !699
  %73 = load i32, ptr %6, align 4, !dbg !700
  %74 = icmp ult i32 %73, 65536, !dbg !701
  br i1 %74, label %75, label %76, !dbg !702

75:                                               ; preds = %67
  br label %81, !dbg !702

76:                                               ; preds = %67
  %77 = load i32, ptr %6, align 4, !dbg !703
  %78 = icmp ult i32 %77, 1048576, !dbg !704
  %79 = zext i1 %78 to i64, !dbg !705
  %80 = select i1 %78, i32 65536, i32 1048576, !dbg !705
  br label %81, !dbg !702

81:                                               ; preds = %76, %75
  %82 = phi i32 [ 4096, %75 ], [ %80, %76 ], !dbg !702
  store i32 %82, ptr %8, align 4, !dbg !706
  %83 = load i32, ptr %6, align 4, !dbg !707
  %84 = add i32 %83, 1, !dbg !708
  %85 = load i32, ptr %8, align 4, !dbg !709
  %86 = udiv i32 %84, %85, !dbg !710
  %87 = add i32 %86, 1, !dbg !711
  %88 = load i32, ptr %8, align 4, !dbg !712
  %89 = mul i32 %87, %88, !dbg !713
  store i32 %89, ptr %7, align 4, !dbg !714
  %90 = load i32, ptr %7, align 4, !dbg !715
  %91 = zext i32 %90 to i64, !dbg !715
  %92 = mul i64 %91, 8, !dbg !715
  %93 = add i64 %92, 16, !dbg !715
  %94 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %93) #6, !dbg !715
  store ptr %94, ptr %12, align 8, !dbg !717
  %95 = icmp ne ptr %94, null, !dbg !717
  br i1 %95, label %97, label %96, !dbg !718

96:                                               ; preds = %81
  store i32 0, ptr %3, align 4, !dbg !719
  br label %134, !dbg !719

97:                                               ; preds = %81
  %98 = load ptr, ptr %12, align 8, !dbg !720
  store ptr %98, ptr %11, align 8, !dbg !721
  %99 = load ptr, ptr %12, align 8, !dbg !722
  %100 = ptrtoint ptr %99 to i64, !dbg !723
  %101 = add i64 %100, 16, !dbg !724
  %102 = inttoptr i64 %101 to ptr, !dbg !725
  store ptr %102, ptr %12, align 8, !dbg !726
  %103 = load i32, ptr %7, align 4, !dbg !727
  %104 = zext i32 %103 to i64, !dbg !727
  %105 = load ptr, ptr %11, align 8, !dbg !728
  %106 = getelementptr inbounds %struct.yvect_head_s, ptr %105, i32 0, i32 0, !dbg !729
  store i64 %104, ptr %106, align 8, !dbg !730
  %107 = load i32, ptr %6, align 4, !dbg !731
  %108 = zext i32 %107 to i64, !dbg !731
  %109 = load ptr, ptr %11, align 8, !dbg !732
  %110 = getelementptr inbounds %struct.yvect_head_s, ptr %109, i32 0, i32 1, !dbg !733
  store i64 %108, ptr %110, align 8, !dbg !734
  %111 = load ptr, ptr %5, align 8, !dbg !735
  %112 = load ptr, ptr %12, align 8, !dbg !736
  %113 = getelementptr inbounds ptr, ptr %112, i64 0, !dbg !736
  store ptr %111, ptr %113, align 8, !dbg !737
  %114 = load ptr, ptr %12, align 8, !dbg !738
  %115 = ptrtoint ptr %114 to i64, !dbg !739
  %116 = add i64 %115, 8, !dbg !740
  %117 = inttoptr i64 %116 to ptr, !dbg !741
  %118 = load ptr, ptr %4, align 8, !dbg !742
  %119 = load ptr, ptr %118, align 8, !dbg !743
  %120 = load ptr, ptr %10, align 8, !dbg !744
  %121 = getelementptr inbounds %struct.yvect_head_s, ptr %120, i32 0, i32 1, !dbg !745
  %122 = load i64, ptr %121, align 8, !dbg !745
  %123 = add i64 %122, 1, !dbg !746
  %124 = mul i64 %123, 8, !dbg !747
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 8 %119, i64 %124, i1 false), !dbg !748
  %125 = load ptr, ptr %10, align 8, !dbg !749
  %126 = icmp ne ptr %125, null, !dbg !749
  br i1 %126, label %127, label %129, !dbg !749

127:                                              ; preds = %97
  %128 = load ptr, ptr %10, align 8, !dbg !749
  call void @free(ptr noundef %128) #7, !dbg !749
  br label %130, !dbg !749

129:                                              ; preds = %97
  br label %130, !dbg !749

130:                                              ; preds = %129, %127
  %131 = phi ptr [ null, %127 ], [ null, %129 ], !dbg !749
  store ptr null, ptr %10, align 8, !dbg !749
  %132 = load ptr, ptr %12, align 8, !dbg !750
  %133 = load ptr, ptr %4, align 8, !dbg !751
  store ptr %132, ptr %133, align 8, !dbg !752
  store i32 1, ptr %3, align 4, !dbg !753
  br label %134, !dbg !753

134:                                              ; preds = %130, %96, %58, %19
  %135 = load i32, ptr %3, align 4, !dbg !754
  ret i32 %135, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @yv_ins(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !755 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !758, metadata !DIExpression()), !dbg !759
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !760, metadata !DIExpression()), !dbg !761
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.declare(metadata ptr %8, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata ptr %9, metadata !766, metadata !DIExpression()), !dbg !767
  %10 = load ptr, ptr %5, align 8, !dbg !768
  %11 = icmp ne ptr %10, null, !dbg !768
  br i1 %11, label %12, label %16, !dbg !770

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !771
  %14 = load ptr, ptr %13, align 8, !dbg !772
  %15 = icmp ne ptr %14, null, !dbg !772
  br i1 %15, label %17, label %16, !dbg !773

16:                                               ; preds = %12, %3
  store i32 0, ptr %4, align 4, !dbg !774
  br label %78, !dbg !774

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !dbg !775
  %19 = load ptr, ptr %18, align 8, !dbg !776
  %20 = ptrtoint ptr %19 to i64, !dbg !777
  %21 = sub i64 %20, 16, !dbg !778
  %22 = inttoptr i64 %21 to ptr, !dbg !779
  store ptr %22, ptr %8, align 8, !dbg !780
  %23 = load ptr, ptr %5, align 8, !dbg !781
  %24 = icmp ne ptr %23, null, !dbg !781
  br i1 %24, label %25, label %37, !dbg !783

25:                                               ; preds = %17
  %26 = load ptr, ptr %5, align 8, !dbg !784
  %27 = load ptr, ptr %26, align 8, !dbg !785
  %28 = icmp ne ptr %27, null, !dbg !785
  br i1 %28, label %29, label %37, !dbg !786

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8, !dbg !787
  %31 = load ptr, ptr %8, align 8, !dbg !788
  %32 = getelementptr inbounds %struct.yvect_head_s, ptr %31, i32 0, i32 1, !dbg !789
  %33 = load i64, ptr %32, align 8, !dbg !789
  %34 = add i64 %33, 2, !dbg !790
  %35 = call i32 @yv_setsz(ptr noundef %30, i64 noundef %34), !dbg !791
  %36 = icmp ne i32 %35, 0, !dbg !791
  br i1 %36, label %38, label %37, !dbg !792

37:                                               ; preds = %29, %25, %17
  store i32 0, ptr %4, align 4, !dbg !793
  br label %78, !dbg !793

38:                                               ; preds = %29
  %39 = load i64, ptr %7, align 8, !dbg !794
  %40 = load ptr, ptr %8, align 8, !dbg !796
  %41 = getelementptr inbounds %struct.yvect_head_s, ptr %40, i32 0, i32 1, !dbg !797
  %42 = load i64, ptr %41, align 8, !dbg !797
  %43 = icmp ugt i64 %39, %42, !dbg !798
  br i1 %43, label %44, label %45, !dbg !799

44:                                               ; preds = %38
  store i32 0, ptr %4, align 4, !dbg !800
  br label %78, !dbg !800

45:                                               ; preds = %38
  %46 = load i64, ptr %7, align 8, !dbg !801
  store i64 %46, ptr %9, align 8, !dbg !803
  br label %47, !dbg !804

47:                                               ; preds = %65, %45
  %48 = load i64, ptr %9, align 8, !dbg !805
  %49 = load ptr, ptr %8, align 8, !dbg !807
  %50 = getelementptr inbounds %struct.yvect_head_s, ptr %49, i32 0, i32 1, !dbg !808
  %51 = load i64, ptr %50, align 8, !dbg !808
  %52 = add i64 %51, 1, !dbg !809
  %53 = icmp ult i64 %48, %52, !dbg !810
  br i1 %53, label %54, label %68, !dbg !811

54:                                               ; preds = %47
  %55 = load ptr, ptr %5, align 8, !dbg !812
  %56 = load ptr, ptr %55, align 8, !dbg !813
  %57 = load i64, ptr %9, align 8, !dbg !814
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57, !dbg !815
  %59 = load ptr, ptr %58, align 8, !dbg !815
  %60 = load ptr, ptr %5, align 8, !dbg !816
  %61 = load ptr, ptr %60, align 8, !dbg !817
  %62 = load i64, ptr %9, align 8, !dbg !818
  %63 = add i64 %62, 1, !dbg !819
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63, !dbg !820
  store ptr %59, ptr %64, align 8, !dbg !821
  br label %65, !dbg !820

65:                                               ; preds = %54
  %66 = load i64, ptr %9, align 8, !dbg !822
  %67 = add i64 %66, 1, !dbg !822
  store i64 %67, ptr %9, align 8, !dbg !822
  br label %47, !dbg !823, !llvm.loop !824

68:                                               ; preds = %47
  %69 = load ptr, ptr %6, align 8, !dbg !826
  %70 = load ptr, ptr %5, align 8, !dbg !827
  %71 = load ptr, ptr %70, align 8, !dbg !828
  %72 = load i64, ptr %7, align 8, !dbg !829
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72, !dbg !830
  store ptr %69, ptr %73, align 8, !dbg !831
  %74 = load ptr, ptr %8, align 8, !dbg !832
  %75 = getelementptr inbounds %struct.yvect_head_s, ptr %74, i32 0, i32 1, !dbg !833
  %76 = load i64, ptr %75, align 8, !dbg !834
  %77 = add i64 %76, 1, !dbg !834
  store i64 %77, ptr %75, align 8, !dbg !834
  store i32 1, ptr %4, align 4, !dbg !835
  br label %78, !dbg !835

78:                                               ; preds = %68, %44, %37, %16
  %79 = load i32, ptr %4, align 4, !dbg !836
  ret i32 %79, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @yv_add(ptr noundef %0, ptr noundef %1) #0 !dbg !837 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !838, metadata !DIExpression()), !dbg !839
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !840, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata ptr %6, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.declare(metadata ptr %7, metadata !844, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata ptr %8, metadata !846, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata ptr %9, metadata !848, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.declare(metadata ptr %10, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata ptr %11, metadata !852, metadata !DIExpression()), !dbg !853
  %12 = load ptr, ptr %4, align 8, !dbg !854
  %13 = icmp ne ptr %12, null, !dbg !854
  br i1 %13, label %14, label %18, !dbg !856

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !857
  %16 = load ptr, ptr %15, align 8, !dbg !858
  %17 = icmp ne ptr %16, null, !dbg !858
  br i1 %17, label %19, label %18, !dbg !859

18:                                               ; preds = %14, %2
  store i32 0, ptr %3, align 4, !dbg !860
  br label %123, !dbg !860

19:                                               ; preds = %14
  %20 = load ptr, ptr %4, align 8, !dbg !861
  %21 = load ptr, ptr %20, align 8, !dbg !862
  %22 = ptrtoint ptr %21 to i64, !dbg !863
  %23 = sub i64 %22, 16, !dbg !864
  %24 = inttoptr i64 %23 to ptr, !dbg !865
  store ptr %24, ptr %9, align 8, !dbg !866
  %25 = load ptr, ptr %9, align 8, !dbg !867
  %26 = getelementptr inbounds %struct.yvect_head_s, ptr %25, i32 0, i32 1, !dbg !869
  %27 = load i64, ptr %26, align 8, !dbg !869
  %28 = add i64 %27, 2, !dbg !870
  %29 = load ptr, ptr %9, align 8, !dbg !871
  %30 = getelementptr inbounds %struct.yvect_head_s, ptr %29, i32 0, i32 0, !dbg !872
  %31 = load i64, ptr %30, align 8, !dbg !872
  %32 = icmp ule i64 %28, %31, !dbg !873
  br i1 %32, label %33, label %52, !dbg !874

33:                                               ; preds = %19
  %34 = load ptr, ptr %5, align 8, !dbg !875
  %35 = load ptr, ptr %4, align 8, !dbg !877
  %36 = load ptr, ptr %35, align 8, !dbg !878
  %37 = load ptr, ptr %9, align 8, !dbg !879
  %38 = getelementptr inbounds %struct.yvect_head_s, ptr %37, i32 0, i32 1, !dbg !880
  %39 = load i64, ptr %38, align 8, !dbg !880
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39, !dbg !881
  store ptr %34, ptr %40, align 8, !dbg !882
  %41 = load ptr, ptr %4, align 8, !dbg !883
  %42 = load ptr, ptr %41, align 8, !dbg !884
  %43 = load ptr, ptr %9, align 8, !dbg !885
  %44 = getelementptr inbounds %struct.yvect_head_s, ptr %43, i32 0, i32 1, !dbg !886
  %45 = load i64, ptr %44, align 8, !dbg !886
  %46 = add i64 %45, 1, !dbg !887
  %47 = getelementptr inbounds ptr, ptr %42, i64 %46, !dbg !888
  store ptr null, ptr %47, align 8, !dbg !889
  %48 = load ptr, ptr %9, align 8, !dbg !890
  %49 = getelementptr inbounds %struct.yvect_head_s, ptr %48, i32 0, i32 1, !dbg !891
  %50 = load i64, ptr %49, align 8, !dbg !892
  %51 = add i64 %50, 1, !dbg !892
  store i64 %51, ptr %49, align 8, !dbg !892
  store i32 1, ptr %3, align 4, !dbg !893
  br label %123, !dbg !893

52:                                               ; preds = %19
  %53 = load ptr, ptr %9, align 8, !dbg !894
  %54 = getelementptr inbounds %struct.yvect_head_s, ptr %53, i32 0, i32 1, !dbg !895
  %55 = load i64, ptr %54, align 8, !dbg !895
  %56 = add i64 %55, 1, !dbg !896
  %57 = trunc i64 %56 to i32, !dbg !894
  store i32 %57, ptr %6, align 4, !dbg !897
  %58 = load i32, ptr %6, align 4, !dbg !898
  %59 = icmp ult i32 %58, 65536, !dbg !899
  br i1 %59, label %60, label %61, !dbg !900

60:                                               ; preds = %52
  br label %66, !dbg !900

61:                                               ; preds = %52
  %62 = load i32, ptr %6, align 4, !dbg !901
  %63 = icmp ult i32 %62, 1048576, !dbg !902
  %64 = zext i1 %63 to i64, !dbg !903
  %65 = select i1 %63, i32 65536, i32 1048576, !dbg !903
  br label %66, !dbg !900

66:                                               ; preds = %61, %60
  %67 = phi i32 [ 4096, %60 ], [ %65, %61 ], !dbg !900
  store i32 %67, ptr %8, align 4, !dbg !904
  %68 = load i32, ptr %6, align 4, !dbg !905
  %69 = add i32 %68, 1, !dbg !906
  %70 = load i32, ptr %8, align 4, !dbg !907
  %71 = udiv i32 %69, %70, !dbg !908
  %72 = add i32 %71, 1, !dbg !909
  %73 = load i32, ptr %8, align 4, !dbg !910
  %74 = mul i32 %72, %73, !dbg !911
  store i32 %74, ptr %7, align 4, !dbg !912
  %75 = load i32, ptr %7, align 4, !dbg !913
  %76 = zext i32 %75 to i64, !dbg !913
  %77 = mul i64 %76, 8, !dbg !913
  %78 = add i64 %77, 16, !dbg !913
  %79 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %78) #6, !dbg !913
  store ptr %79, ptr %11, align 8, !dbg !915
  %80 = icmp ne ptr %79, null, !dbg !915
  br i1 %80, label %82, label %81, !dbg !916

81:                                               ; preds = %66
  store i32 0, ptr %3, align 4, !dbg !917
  br label %123, !dbg !917

82:                                               ; preds = %66
  %83 = load ptr, ptr %11, align 8, !dbg !918
  store ptr %83, ptr %10, align 8, !dbg !919
  %84 = load ptr, ptr %11, align 8, !dbg !920
  %85 = ptrtoint ptr %84 to i64, !dbg !921
  %86 = add i64 %85, 16, !dbg !922
  %87 = inttoptr i64 %86 to ptr, !dbg !923
  store ptr %87, ptr %11, align 8, !dbg !924
  %88 = load i32, ptr %7, align 4, !dbg !925
  %89 = zext i32 %88 to i64, !dbg !925
  %90 = load ptr, ptr %10, align 8, !dbg !926
  %91 = getelementptr inbounds %struct.yvect_head_s, ptr %90, i32 0, i32 0, !dbg !927
  store i64 %89, ptr %91, align 8, !dbg !928
  %92 = load i32, ptr %6, align 4, !dbg !929
  %93 = zext i32 %92 to i64, !dbg !929
  %94 = load ptr, ptr %10, align 8, !dbg !930
  %95 = getelementptr inbounds %struct.yvect_head_s, ptr %94, i32 0, i32 1, !dbg !931
  store i64 %93, ptr %95, align 8, !dbg !932
  %96 = load ptr, ptr %11, align 8, !dbg !933
  %97 = load ptr, ptr %4, align 8, !dbg !934
  %98 = load ptr, ptr %97, align 8, !dbg !935
  %99 = load ptr, ptr %9, align 8, !dbg !936
  %100 = getelementptr inbounds %struct.yvect_head_s, ptr %99, i32 0, i32 1, !dbg !937
  %101 = load i64, ptr %100, align 8, !dbg !937
  %102 = mul i64 %101, 8, !dbg !938
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %96, ptr align 8 %98, i64 %102, i1 false), !dbg !939
  %103 = load ptr, ptr %5, align 8, !dbg !940
  %104 = load ptr, ptr %11, align 8, !dbg !941
  %105 = load ptr, ptr %9, align 8, !dbg !942
  %106 = getelementptr inbounds %struct.yvect_head_s, ptr %105, i32 0, i32 1, !dbg !943
  %107 = load i64, ptr %106, align 8, !dbg !943
  %108 = getelementptr inbounds ptr, ptr %104, i64 %107, !dbg !941
  store ptr %103, ptr %108, align 8, !dbg !944
  %109 = load ptr, ptr %11, align 8, !dbg !945
  %110 = load ptr, ptr %10, align 8, !dbg !946
  %111 = getelementptr inbounds %struct.yvect_head_s, ptr %110, i32 0, i32 1, !dbg !947
  %112 = load i64, ptr %111, align 8, !dbg !947
  %113 = getelementptr inbounds ptr, ptr %109, i64 %112, !dbg !945
  store ptr null, ptr %113, align 8, !dbg !948
  %114 = load ptr, ptr %9, align 8, !dbg !949
  %115 = icmp ne ptr %114, null, !dbg !949
  br i1 %115, label %116, label %118, !dbg !949

116:                                              ; preds = %82
  %117 = load ptr, ptr %9, align 8, !dbg !949
  call void @free(ptr noundef %117) #7, !dbg !949
  br label %119, !dbg !949

118:                                              ; preds = %82
  br label %119, !dbg !949

119:                                              ; preds = %118, %116
  %120 = phi ptr [ null, %116 ], [ null, %118 ], !dbg !949
  store ptr null, ptr %9, align 8, !dbg !949
  %121 = load ptr, ptr %11, align 8, !dbg !950
  %122 = load ptr, ptr %4, align 8, !dbg !951
  store ptr %121, ptr %122, align 8, !dbg !952
  store i32 1, ptr %3, align 4, !dbg !953
  br label %123, !dbg !953

123:                                              ; preds = %119, %81, %33, %18
  %124 = load i32, ptr %3, align 4, !dbg !954
  ret i32 %124, !dbg !954
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @yv_pop(ptr noundef %0) #0 !dbg !955 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata ptr %4, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata ptr %5, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata ptr %6, metadata !964, metadata !DIExpression()), !dbg !965
  %7 = load ptr, ptr %3, align 8, !dbg !966
  %8 = icmp ne ptr %7, null, !dbg !966
  br i1 %8, label %10, label %9, !dbg !968

9:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !969
  br label %50, !dbg !969

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !970
  %12 = ptrtoint ptr %11 to i64, !dbg !971
  %13 = sub i64 %12, 16, !dbg !972
  %14 = inttoptr i64 %13 to ptr, !dbg !973
  store ptr %14, ptr %4, align 8, !dbg !974
  %15 = load ptr, ptr %4, align 8, !dbg !975
  %16 = getelementptr inbounds %struct.yvect_head_s, ptr %15, i32 0, i32 1, !dbg !977
  %17 = load i64, ptr %16, align 8, !dbg !977
  %18 = icmp ne i64 %17, 0, !dbg !975
  br i1 %18, label %20, label %19, !dbg !978

19:                                               ; preds = %10
  store ptr null, ptr %2, align 8, !dbg !979
  br label %50, !dbg !979

20:                                               ; preds = %10
  %21 = load ptr, ptr %3, align 8, !dbg !980
  %22 = load ptr, ptr %21, align 8, !dbg !981
  store ptr %22, ptr %5, align 8, !dbg !982
  store i32 0, ptr %6, align 4, !dbg !983
  br label %23, !dbg !985

23:                                               ; preds = %41, %20
  %24 = load i32, ptr %6, align 4, !dbg !986
  %25 = zext i32 %24 to i64, !dbg !986
  %26 = load ptr, ptr %4, align 8, !dbg !988
  %27 = getelementptr inbounds %struct.yvect_head_s, ptr %26, i32 0, i32 1, !dbg !989
  %28 = load i64, ptr %27, align 8, !dbg !989
  %29 = icmp ult i64 %25, %28, !dbg !990
  br i1 %29, label %30, label %44, !dbg !991

30:                                               ; preds = %23
  %31 = load ptr, ptr %3, align 8, !dbg !992
  %32 = load i32, ptr %6, align 4, !dbg !993
  %33 = add i32 %32, 1, !dbg !994
  %34 = zext i32 %33 to i64, !dbg !992
  %35 = getelementptr inbounds ptr, ptr %31, i64 %34, !dbg !992
  %36 = load ptr, ptr %35, align 8, !dbg !992
  %37 = load ptr, ptr %3, align 8, !dbg !995
  %38 = load i32, ptr %6, align 4, !dbg !996
  %39 = zext i32 %38 to i64, !dbg !995
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39, !dbg !995
  store ptr %36, ptr %40, align 8, !dbg !997
  br label %41, !dbg !995

41:                                               ; preds = %30
  %42 = load i32, ptr %6, align 4, !dbg !998
  %43 = add i32 %42, 1, !dbg !998
  store i32 %43, ptr %6, align 4, !dbg !998
  br label %23, !dbg !999, !llvm.loop !1000

44:                                               ; preds = %23
  %45 = load ptr, ptr %4, align 8, !dbg !1002
  %46 = getelementptr inbounds %struct.yvect_head_s, ptr %45, i32 0, i32 1, !dbg !1003
  %47 = load i64, ptr %46, align 8, !dbg !1004
  %48 = add i64 %47, -1, !dbg !1004
  store i64 %48, ptr %46, align 8, !dbg !1004
  %49 = load ptr, ptr %5, align 8, !dbg !1005
  store ptr %49, ptr %2, align 8, !dbg !1006
  br label %50, !dbg !1006

50:                                               ; preds = %44, %19, %9
  %51 = load ptr, ptr %2, align 8, !dbg !1007
  ret ptr %51, !dbg !1007
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @yv_get(ptr noundef %0) #0 !dbg !1008 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1009, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1011, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1013, metadata !DIExpression()), !dbg !1014
  %6 = load ptr, ptr %3, align 8, !dbg !1015
  %7 = icmp ne ptr %6, null, !dbg !1015
  br i1 %7, label %9, label %8, !dbg !1017

8:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !1018
  br label %38, !dbg !1018

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !1019
  %11 = ptrtoint ptr %10 to i64, !dbg !1020
  %12 = sub i64 %11, 16, !dbg !1021
  %13 = inttoptr i64 %12 to ptr, !dbg !1022
  store ptr %13, ptr %4, align 8, !dbg !1023
  %14 = load ptr, ptr %4, align 8, !dbg !1024
  %15 = getelementptr inbounds %struct.yvect_head_s, ptr %14, i32 0, i32 1, !dbg !1026
  %16 = load i64, ptr %15, align 8, !dbg !1026
  %17 = icmp ne i64 %16, 0, !dbg !1024
  br i1 %17, label %19, label %18, !dbg !1027

18:                                               ; preds = %9
  store ptr null, ptr %2, align 8, !dbg !1028
  br label %38, !dbg !1028

19:                                               ; preds = %9
  %20 = load ptr, ptr %3, align 8, !dbg !1029
  %21 = load ptr, ptr %4, align 8, !dbg !1030
  %22 = getelementptr inbounds %struct.yvect_head_s, ptr %21, i32 0, i32 1, !dbg !1031
  %23 = load i64, ptr %22, align 8, !dbg !1031
  %24 = sub i64 %23, 1, !dbg !1032
  %25 = getelementptr inbounds ptr, ptr %20, i64 %24, !dbg !1029
  %26 = load ptr, ptr %25, align 8, !dbg !1029
  store ptr %26, ptr %5, align 8, !dbg !1033
  %27 = load ptr, ptr %3, align 8, !dbg !1034
  %28 = load ptr, ptr %4, align 8, !dbg !1035
  %29 = getelementptr inbounds %struct.yvect_head_s, ptr %28, i32 0, i32 1, !dbg !1036
  %30 = load i64, ptr %29, align 8, !dbg !1036
  %31 = sub i64 %30, 1, !dbg !1037
  %32 = getelementptr inbounds ptr, ptr %27, i64 %31, !dbg !1034
  store ptr null, ptr %32, align 8, !dbg !1038
  %33 = load ptr, ptr %4, align 8, !dbg !1039
  %34 = getelementptr inbounds %struct.yvect_head_s, ptr %33, i32 0, i32 1, !dbg !1040
  %35 = load i64, ptr %34, align 8, !dbg !1041
  %36 = add i64 %35, -1, !dbg !1041
  store i64 %36, ptr %34, align 8, !dbg !1041
  %37 = load ptr, ptr %5, align 8, !dbg !1042
  store ptr %37, ptr %2, align 8, !dbg !1043
  br label %38, !dbg !1043

38:                                               ; preds = %19, %18, %8
  %39 = load ptr, ptr %2, align 8, !dbg !1044
  ret ptr %39, !dbg !1044
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @yv_ext(ptr noundef %0, i64 noundef %1) #0 !dbg !1045 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1054, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1056, metadata !DIExpression()), !dbg !1057
  %9 = load ptr, ptr %4, align 8, !dbg !1058
  %10 = icmp ne ptr %9, null, !dbg !1058
  br i1 %10, label %12, label %11, !dbg !1060

11:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !1061
  br label %53, !dbg !1061

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !1062
  %14 = ptrtoint ptr %13 to i64, !dbg !1063
  %15 = sub i64 %14, 16, !dbg !1064
  %16 = inttoptr i64 %15 to ptr, !dbg !1065
  store ptr %16, ptr %6, align 8, !dbg !1066
  %17 = load i64, ptr %5, align 8, !dbg !1067
  %18 = load ptr, ptr %6, align 8, !dbg !1069
  %19 = getelementptr inbounds %struct.yvect_head_s, ptr %18, i32 0, i32 1, !dbg !1070
  %20 = load i64, ptr %19, align 8, !dbg !1070
  %21 = icmp uge i64 %17, %20, !dbg !1071
  br i1 %21, label %22, label %23, !dbg !1072

22:                                               ; preds = %12
  store ptr null, ptr %3, align 8, !dbg !1073
  br label %53, !dbg !1073

23:                                               ; preds = %12
  %24 = load ptr, ptr %4, align 8, !dbg !1074
  %25 = load i64, ptr %5, align 8, !dbg !1075
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25, !dbg !1074
  %27 = load ptr, ptr %26, align 8, !dbg !1074
  store ptr %27, ptr %7, align 8, !dbg !1076
  %28 = load i64, ptr %5, align 8, !dbg !1077
  store i64 %28, ptr %8, align 8, !dbg !1079
  br label %29, !dbg !1080

29:                                               ; preds = %44, %23
  %30 = load i64, ptr %8, align 8, !dbg !1081
  %31 = load ptr, ptr %6, align 8, !dbg !1083
  %32 = getelementptr inbounds %struct.yvect_head_s, ptr %31, i32 0, i32 1, !dbg !1084
  %33 = load i64, ptr %32, align 8, !dbg !1084
  %34 = icmp ult i64 %30, %33, !dbg !1085
  br i1 %34, label %35, label %47, !dbg !1086

35:                                               ; preds = %29
  %36 = load ptr, ptr %4, align 8, !dbg !1087
  %37 = load i64, ptr %8, align 8, !dbg !1088
  %38 = add i64 %37, 1, !dbg !1089
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38, !dbg !1087
  %40 = load ptr, ptr %39, align 8, !dbg !1087
  %41 = load ptr, ptr %4, align 8, !dbg !1090
  %42 = load i64, ptr %8, align 8, !dbg !1091
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42, !dbg !1090
  store ptr %40, ptr %43, align 8, !dbg !1092
  br label %44, !dbg !1090

44:                                               ; preds = %35
  %45 = load i64, ptr %8, align 8, !dbg !1093
  %46 = add i64 %45, 1, !dbg !1093
  store i64 %46, ptr %8, align 8, !dbg !1093
  br label %29, !dbg !1094, !llvm.loop !1095

47:                                               ; preds = %29
  %48 = load ptr, ptr %6, align 8, !dbg !1097
  %49 = getelementptr inbounds %struct.yvect_head_s, ptr %48, i32 0, i32 1, !dbg !1098
  %50 = load i64, ptr %49, align 8, !dbg !1099
  %51 = add i64 %50, -1, !dbg !1099
  store i64 %51, ptr %49, align 8, !dbg !1099
  %52 = load ptr, ptr %7, align 8, !dbg !1100
  store ptr %52, ptr %3, align 8, !dbg !1101
  br label %53, !dbg !1101

53:                                               ; preds = %47, %22, %11
  %54 = load ptr, ptr %3, align 8, !dbg !1102
  ret ptr %54, !dbg !1102
}

; Function Attrs: noinline nounwind optnone uwtable
define void @yv_uniq(ptr noundef %0) #0 !dbg !1103 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1114, metadata !DIExpression()), !dbg !1115
  %7 = load ptr, ptr %2, align 8, !dbg !1116
  %8 = icmp ne ptr %7, null, !dbg !1116
  br i1 %8, label %10, label %9, !dbg !1118

9:                                                ; preds = %1
  br label %75, !dbg !1119

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !1120
  %12 = ptrtoint ptr %11 to i64, !dbg !1121
  %13 = sub i64 %12, 16, !dbg !1122
  %14 = inttoptr i64 %13 to ptr, !dbg !1123
  store ptr %14, ptr %3, align 8, !dbg !1124
  store i64 0, ptr %4, align 8, !dbg !1125
  br label %15, !dbg !1127

15:                                               ; preds = %72, %10
  %16 = load i64, ptr %4, align 8, !dbg !1128
  %17 = load ptr, ptr %3, align 8, !dbg !1130
  %18 = getelementptr inbounds %struct.yvect_head_s, ptr %17, i32 0, i32 1, !dbg !1131
  %19 = load i64, ptr %18, align 8, !dbg !1131
  %20 = icmp ult i64 %16, %19, !dbg !1132
  br i1 %20, label %21, label %75, !dbg !1133

21:                                               ; preds = %15
  %22 = load i64, ptr %4, align 8, !dbg !1134
  %23 = add i64 %22, 1, !dbg !1137
  store i64 %23, ptr %5, align 8, !dbg !1138
  br label %24, !dbg !1139

24:                                               ; preds = %68, %21
  %25 = load i64, ptr %5, align 8, !dbg !1140
  %26 = load ptr, ptr %3, align 8, !dbg !1142
  %27 = getelementptr inbounds %struct.yvect_head_s, ptr %26, i32 0, i32 1, !dbg !1143
  %28 = load i64, ptr %27, align 8, !dbg !1143
  %29 = icmp ult i64 %25, %28, !dbg !1144
  br i1 %29, label %30, label %71, !dbg !1145

30:                                               ; preds = %24
  %31 = load ptr, ptr %2, align 8, !dbg !1146
  %32 = load i64, ptr %4, align 8, !dbg !1149
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32, !dbg !1146
  %34 = load ptr, ptr %33, align 8, !dbg !1146
  %35 = load ptr, ptr %2, align 8, !dbg !1150
  %36 = load i64, ptr %5, align 8, !dbg !1151
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36, !dbg !1150
  %38 = load ptr, ptr %37, align 8, !dbg !1150
  %39 = icmp eq ptr %34, %38, !dbg !1152
  br i1 %39, label %40, label %67, !dbg !1153

40:                                               ; preds = %30
  %41 = load i64, ptr %5, align 8, !dbg !1154
  %42 = add i64 %41, 1, !dbg !1157
  store i64 %42, ptr %6, align 8, !dbg !1158
  br label %43, !dbg !1159

43:                                               ; preds = %59, %40
  %44 = load i64, ptr %6, align 8, !dbg !1160
  %45 = load ptr, ptr %3, align 8, !dbg !1162
  %46 = getelementptr inbounds %struct.yvect_head_s, ptr %45, i32 0, i32 1, !dbg !1163
  %47 = load i64, ptr %46, align 8, !dbg !1163
  %48 = sub i64 %47, 1, !dbg !1164
  %49 = icmp ult i64 %44, %48, !dbg !1165
  br i1 %49, label %50, label %62, !dbg !1166

50:                                               ; preds = %43
  %51 = load ptr, ptr %2, align 8, !dbg !1167
  %52 = load i64, ptr %6, align 8, !dbg !1168
  %53 = add i64 %52, 1, !dbg !1169
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53, !dbg !1167
  %55 = load ptr, ptr %54, align 8, !dbg !1167
  %56 = load ptr, ptr %2, align 8, !dbg !1170
  %57 = load i64, ptr %6, align 8, !dbg !1171
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57, !dbg !1170
  store ptr %55, ptr %58, align 8, !dbg !1172
  br label %59, !dbg !1170

59:                                               ; preds = %50
  %60 = load i64, ptr %6, align 8, !dbg !1173
  %61 = add i64 %60, 1, !dbg !1173
  store i64 %61, ptr %6, align 8, !dbg !1173
  br label %43, !dbg !1174, !llvm.loop !1175

62:                                               ; preds = %43
  %63 = load ptr, ptr %3, align 8, !dbg !1177
  %64 = getelementptr inbounds %struct.yvect_head_s, ptr %63, i32 0, i32 1, !dbg !1178
  %65 = load i64, ptr %64, align 8, !dbg !1179
  %66 = add i64 %65, -1, !dbg !1179
  store i64 %66, ptr %64, align 8, !dbg !1179
  br label %67, !dbg !1180

67:                                               ; preds = %62, %30
  br label %68, !dbg !1181

68:                                               ; preds = %67
  %69 = load i64, ptr %5, align 8, !dbg !1182
  %70 = add i64 %69, 1, !dbg !1182
  store i64 %70, ptr %5, align 8, !dbg !1182
  br label %24, !dbg !1183, !llvm.loop !1184

71:                                               ; preds = %24
  br label %72, !dbg !1186

72:                                               ; preds = %71
  %73 = load i64, ptr %4, align 8, !dbg !1187
  %74 = add i64 %73, 1, !dbg !1187
  store i64 %74, ptr %4, align 8, !dbg !1187
  br label %15, !dbg !1188, !llvm.loop !1189

75:                                               ; preds = %9, %15
  ret void, !dbg !1191
}

; Function Attrs: noinline nounwind optnone uwtable
define void @yv_sort(ptr noundef %0, ptr noundef %1) #0 !dbg !1192 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1200, metadata !DIExpression()), !dbg !1201
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1204, metadata !DIExpression()), !dbg !1205
  %6 = load ptr, ptr %3, align 8, !dbg !1206
  %7 = icmp ne ptr %6, null, !dbg !1206
  br i1 %7, label %9, label %8, !dbg !1208

8:                                                ; preds = %2
  br label %19, !dbg !1209

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !1210
  %11 = ptrtoint ptr %10 to i64, !dbg !1211
  %12 = sub i64 %11, 16, !dbg !1212
  %13 = inttoptr i64 %12 to ptr, !dbg !1213
  store ptr %13, ptr %5, align 8, !dbg !1214
  %14 = load ptr, ptr %3, align 8, !dbg !1215
  %15 = load ptr, ptr %5, align 8, !dbg !1216
  %16 = getelementptr inbounds %struct.yvect_head_s, ptr %15, i32 0, i32 1, !dbg !1217
  %17 = load i64, ptr %16, align 8, !dbg !1217
  %18 = load ptr, ptr %4, align 8, !dbg !1218
  call void @qsort(ptr noundef %14, i64 noundef %17, i64 noundef 8, ptr noundef %18), !dbg !1219
  br label %19, !dbg !1220

19:                                               ; preds = %9, %8
  ret void, !dbg !1220
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define i32 @yv_search(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1221 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1224, metadata !DIExpression()), !dbg !1225
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1226, metadata !DIExpression()), !dbg !1227
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1228, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1230, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1232, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1234, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1238, metadata !DIExpression()), !dbg !1239
  %13 = load ptr, ptr %5, align 8, !dbg !1240
  %14 = icmp ne ptr %13, null, !dbg !1240
  br i1 %14, label %15, label %18, !dbg !1242

15:                                               ; preds = %3
  %16 = load ptr, ptr %7, align 8, !dbg !1243
  %17 = icmp ne ptr %16, null, !dbg !1243
  br i1 %17, label %19, label %18, !dbg !1244

18:                                               ; preds = %15, %3
  store i32 -1, ptr %4, align 4, !dbg !1245
  br label %89, !dbg !1245

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 8, !dbg !1246
  %21 = ptrtoint ptr %20 to i64, !dbg !1247
  %22 = sub i64 %21, 16, !dbg !1248
  %23 = inttoptr i64 %22 to ptr, !dbg !1249
  store ptr %23, ptr %8, align 8, !dbg !1250
  store i32 0, ptr %9, align 4, !dbg !1251
  %24 = load ptr, ptr %8, align 8, !dbg !1252
  %25 = getelementptr inbounds %struct.yvect_head_s, ptr %24, i32 0, i32 1, !dbg !1253
  %26 = load i64, ptr %25, align 8, !dbg !1253
  %27 = sub i64 %26, 1, !dbg !1254
  %28 = trunc i64 %27 to i32, !dbg !1252
  store i32 %28, ptr %10, align 4, !dbg !1255
  br label %29, !dbg !1256

29:                                               ; preds = %88, %19
  %30 = load i32, ptr %10, align 4, !dbg !1257
  %31 = load i32, ptr %9, align 4, !dbg !1261
  %32 = add nsw i32 %30, %31, !dbg !1262
  %33 = sdiv i32 %32, 2, !dbg !1263
  store i32 %33, ptr %11, align 4, !dbg !1264
  %34 = load ptr, ptr %7, align 8, !dbg !1265
  %35 = load ptr, ptr %6, align 8, !dbg !1267
  %36 = load ptr, ptr %5, align 8, !dbg !1268
  %37 = load i32, ptr %11, align 4, !dbg !1269
  %38 = sext i32 %37 to i64, !dbg !1268
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38, !dbg !1268
  %40 = load ptr, ptr %39, align 8, !dbg !1268
  %41 = call i32 %34(ptr noundef %35, ptr noundef %40), !dbg !1265
  store i32 %41, ptr %12, align 4, !dbg !1270
  %42 = icmp ne i32 %41, 0, !dbg !1270
  br i1 %42, label %45, label %43, !dbg !1271

43:                                               ; preds = %29
  %44 = load i32, ptr %11, align 4, !dbg !1272
  store i32 %44, ptr %4, align 4, !dbg !1273
  br label %89, !dbg !1273

45:                                               ; preds = %29
  %46 = load i32, ptr %12, align 4, !dbg !1274
  %47 = icmp slt i32 %46, 0, !dbg !1276
  br i1 %47, label %48, label %68, !dbg !1277

48:                                               ; preds = %45
  %49 = load i32, ptr %11, align 4, !dbg !1278
  %50 = load i32, ptr %9, align 4, !dbg !1281
  %51 = add nsw i32 %50, 1, !dbg !1282
  %52 = icmp eq i32 %49, %51, !dbg !1283
  br i1 %52, label %53, label %66, !dbg !1284

53:                                               ; preds = %48
  %54 = load ptr, ptr %7, align 8, !dbg !1285
  %55 = load ptr, ptr %6, align 8, !dbg !1288
  %56 = load ptr, ptr %5, align 8, !dbg !1289
  %57 = load i32, ptr %9, align 4, !dbg !1290
  %58 = sext i32 %57 to i64, !dbg !1289
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58, !dbg !1289
  %60 = load ptr, ptr %59, align 8, !dbg !1289
  %61 = call i32 %54(ptr noundef %55, ptr noundef %60), !dbg !1285
  %62 = icmp ne i32 %61, 0, !dbg !1285
  br i1 %62, label %65, label %63, !dbg !1291

63:                                               ; preds = %53
  %64 = load i32, ptr %9, align 4, !dbg !1292
  store i32 %64, ptr %4, align 4, !dbg !1293
  br label %89, !dbg !1293

65:                                               ; preds = %53
  store i32 -1, ptr %4, align 4, !dbg !1294
  br label %89, !dbg !1294

66:                                               ; preds = %48
  %67 = load i32, ptr %11, align 4, !dbg !1295
  store i32 %67, ptr %10, align 4, !dbg !1296
  br label %88, !dbg !1297

68:                                               ; preds = %45
  %69 = load i32, ptr %11, align 4, !dbg !1298
  %70 = load i32, ptr %10, align 4, !dbg !1301
  %71 = sub nsw i32 %70, 1, !dbg !1302
  %72 = icmp eq i32 %69, %71, !dbg !1303
  br i1 %72, label %73, label %86, !dbg !1304

73:                                               ; preds = %68
  %74 = load ptr, ptr %7, align 8, !dbg !1305
  %75 = load ptr, ptr %6, align 8, !dbg !1308
  %76 = load ptr, ptr %5, align 8, !dbg !1309
  %77 = load i32, ptr %10, align 4, !dbg !1310
  %78 = sext i32 %77 to i64, !dbg !1309
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78, !dbg !1309
  %80 = load ptr, ptr %79, align 8, !dbg !1309
  %81 = call i32 %74(ptr noundef %75, ptr noundef %80), !dbg !1305
  %82 = icmp ne i32 %81, 0, !dbg !1305
  br i1 %82, label %85, label %83, !dbg !1311

83:                                               ; preds = %73
  %84 = load i32, ptr %10, align 4, !dbg !1312
  store i32 %84, ptr %4, align 4, !dbg !1313
  br label %89, !dbg !1313

85:                                               ; preds = %73
  store i32 -1, ptr %4, align 4, !dbg !1314
  br label %89, !dbg !1314

86:                                               ; preds = %68
  %87 = load i32, ptr %11, align 4, !dbg !1315
  store i32 %87, ptr %9, align 4, !dbg !1316
  br label %88

88:                                               ; preds = %86, %66
  br label %29, !dbg !1317, !llvm.loop !1318

89:                                               ; preds = %85, %83, %65, %63, %43, %18
  %90 = load i32, ptr %4, align 4, !dbg !1321
  ret i32 %90, !dbg !1321
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "yvect.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "070c7a84a137beaa67abfe5219a784b3")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yv_size_e", file: !4, line: 31, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./yvect.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "YVECT_SIZE_NANO", value: 4)
!8 = !DIEnumerator(name: "YVECT_SIZE_MINI", value: 32)
!9 = !DIEnumerator(name: "YVECT_SIZE_MEDIUM", value: 256)
!10 = !DIEnumerator(name: "YVECT_SIZE_DEFAULT", value: 4096)
!11 = !DIEnumerator(name: "YVECT_SIZE_BIG", value: 65536)
!12 = !DIEnumerator(name: "YVECT_SIZE_HUGE", value: 1048576)
!13 = !{!14, !16, !21, !15, !25}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_head_t", file: !4, line: 53, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yvect_head_s", file: !4, line: 46, size: 128, elements: !19)
!19 = !{!20, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !18, file: !4, line: 48, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 46, baseType: !23)
!22 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!23 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !18, file: !4, line: 49, baseType: !21, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !4, line: 56, baseType: !14)
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 16.0.0"}
!33 = distinct !DISubprogram(name: "yv_new", scope: !34, file: !34, line: 10, type: !35, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!34 = !DIFile(filename: "./yvect.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "070c7a84a137beaa67abfe5219a784b3")
!35 = !DISubroutineType(types: !36)
!36 = !{!25}
!37 = !{}
!38 = !DILocation(line: 11, column: 10, scope: !33)
!39 = !DILocation(line: 11, column: 2, scope: !33)
!40 = distinct !DISubprogram(name: "yv_create", scope: !34, file: !34, line: 18, type: !41, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!41 = !DISubroutineType(types: !42)
!42 = !{!25, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "yv_size_t", file: !4, line: 38, baseType: !3)
!44 = !DILocalVariable(name: "size", arg: 1, scope: !40, file: !34, line: 18, type: !43)
!45 = !DILocation(line: 18, column: 29, scope: !40)
!46 = !DILocalVariable(name: "nv", scope: !40, file: !34, line: 19, type: !14)
!47 = !DILocation(line: 19, column: 10, scope: !40)
!48 = !DILocalVariable(name: "y", scope: !40, file: !34, line: 20, type: !16)
!49 = !DILocation(line: 20, column: 16, scope: !40)
!50 = !DILocation(line: 22, column: 21, scope: !51)
!51 = distinct !DILexicalBlock(scope: !40, file: !34, line: 22, column: 6)
!52 = !DILocation(line: 22, column: 11, scope: !51)
!53 = !DILocation(line: 22, column: 6, scope: !40)
!54 = !DILocation(line: 24, column: 3, scope: !51)
!55 = !DILocation(line: 25, column: 21, scope: !40)
!56 = !DILocation(line: 25, column: 4, scope: !40)
!57 = !DILocation(line: 26, column: 24, scope: !40)
!58 = !DILocation(line: 26, column: 16, scope: !40)
!59 = !DILocation(line: 26, column: 27, scope: !40)
!60 = !DILocation(line: 26, column: 7, scope: !40)
!61 = !DILocation(line: 26, column: 5, scope: !40)
!62 = !DILocation(line: 27, column: 13, scope: !40)
!63 = !DILocation(line: 27, column: 2, scope: !40)
!64 = !DILocation(line: 27, column: 5, scope: !40)
!65 = !DILocation(line: 27, column: 11, scope: !40)
!66 = !DILocation(line: 28, column: 2, scope: !40)
!67 = !DILocation(line: 28, column: 5, scope: !40)
!68 = !DILocation(line: 28, column: 10, scope: !40)
!69 = !DILocation(line: 29, column: 3, scope: !40)
!70 = !DILocation(line: 29, column: 6, scope: !40)
!71 = !DILocation(line: 30, column: 19, scope: !40)
!72 = !DILocation(line: 30, column: 2, scope: !40)
!73 = !DILocation(line: 31, column: 1, scope: !40)
!74 = distinct !DISubprogram(name: "yv_del", scope: !34, file: !34, line: 37, type: !75, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !78, !15}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !15, !15}
!81 = !DILocalVariable(name: "v", arg: 1, scope: !74, file: !34, line: 37, type: !77)
!82 = !DILocation(line: 37, column: 22, scope: !74)
!83 = !DILocalVariable(name: "f", arg: 2, scope: !74, file: !34, line: 37, type: !78)
!84 = !DILocation(line: 37, column: 32, scope: !74)
!85 = !DILocalVariable(name: "data", arg: 3, scope: !74, file: !34, line: 37, type: !15)
!86 = !DILocation(line: 37, column: 56, scope: !74)
!87 = !DILocalVariable(name: "y", scope: !74, file: !34, line: 39, type: !16)
!88 = !DILocation(line: 39, column: 17, scope: !74)
!89 = !DILocalVariable(name: "i", scope: !74, file: !34, line: 40, type: !5)
!90 = !DILocation(line: 40, column: 16, scope: !74)
!91 = !DILocation(line: 42, column: 8, scope: !92)
!92 = distinct !DILexicalBlock(scope: !74, file: !34, line: 42, column: 7)
!93 = !DILocation(line: 42, column: 10, scope: !92)
!94 = !DILocation(line: 42, column: 15, scope: !92)
!95 = !DILocation(line: 42, column: 14, scope: !92)
!96 = !DILocation(line: 42, column: 7, scope: !74)
!97 = !DILocation(line: 43, column: 5, scope: !92)
!98 = !DILocation(line: 44, column: 32, scope: !74)
!99 = !DILocation(line: 44, column: 31, scope: !74)
!100 = !DILocation(line: 44, column: 23, scope: !74)
!101 = !DILocation(line: 44, column: 34, scope: !74)
!102 = !DILocation(line: 44, column: 7, scope: !74)
!103 = !DILocation(line: 44, column: 5, scope: !74)
!104 = !DILocation(line: 45, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !74, file: !34, line: 45, column: 7)
!106 = !DILocation(line: 45, column: 7, scope: !74)
!107 = !DILocation(line: 46, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !34, line: 46, column: 5)
!109 = !DILocation(line: 46, column: 10, scope: !108)
!110 = !DILocation(line: 46, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !34, line: 46, column: 5)
!112 = !DILocation(line: 46, column: 21, scope: !111)
!113 = !DILocation(line: 46, column: 24, scope: !111)
!114 = !DILocation(line: 46, column: 19, scope: !111)
!115 = !DILocation(line: 46, column: 5, scope: !108)
!116 = !DILocation(line: 47, column: 7, scope: !111)
!117 = !DILocation(line: 47, column: 11, scope: !111)
!118 = !DILocation(line: 47, column: 10, scope: !111)
!119 = !DILocation(line: 47, column: 14, scope: !111)
!120 = !DILocation(line: 47, column: 9, scope: !111)
!121 = !DILocation(line: 47, column: 18, scope: !111)
!122 = !DILocation(line: 46, column: 30, scope: !111)
!123 = !DILocation(line: 46, column: 5, scope: !111)
!124 = distinct !{!124, !115, !125}
!125 = !DILocation(line: 47, column: 22, scope: !108)
!126 = !DILocation(line: 48, column: 3, scope: !74)
!127 = !DILocation(line: 49, column: 4, scope: !74)
!128 = !DILocation(line: 49, column: 6, scope: !74)
!129 = !DILocation(line: 50, column: 1, scope: !74)
!130 = distinct !DISubprogram(name: "yv_trunc", scope: !34, file: !34, line: 56, type: !131, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !25, !78, !15}
!133 = !DILocalVariable(name: "v", arg: 1, scope: !130, file: !34, line: 56, type: !25)
!134 = !DILocation(line: 56, column: 23, scope: !130)
!135 = !DILocalVariable(name: "f", arg: 2, scope: !130, file: !34, line: 56, type: !78)
!136 = !DILocation(line: 56, column: 33, scope: !130)
!137 = !DILocalVariable(name: "data", arg: 3, scope: !130, file: !34, line: 56, type: !15)
!138 = !DILocation(line: 56, column: 57, scope: !130)
!139 = !DILocalVariable(name: "y", scope: !130, file: !34, line: 58, type: !16)
!140 = !DILocation(line: 58, column: 17, scope: !130)
!141 = !DILocalVariable(name: "i", scope: !130, file: !34, line: 59, type: !5)
!142 = !DILocation(line: 59, column: 16, scope: !130)
!143 = !DILocation(line: 61, column: 8, scope: !144)
!144 = distinct !DILexicalBlock(scope: !130, file: !34, line: 61, column: 7)
!145 = !DILocation(line: 61, column: 10, scope: !144)
!146 = !DILocation(line: 61, column: 15, scope: !144)
!147 = !DILocation(line: 61, column: 14, scope: !144)
!148 = !DILocation(line: 61, column: 7, scope: !130)
!149 = !DILocation(line: 62, column: 5, scope: !144)
!150 = !DILocation(line: 63, column: 32, scope: !130)
!151 = !DILocation(line: 63, column: 31, scope: !130)
!152 = !DILocation(line: 63, column: 23, scope: !130)
!153 = !DILocation(line: 63, column: 34, scope: !130)
!154 = !DILocation(line: 63, column: 7, scope: !130)
!155 = !DILocation(line: 63, column: 5, scope: !130)
!156 = !DILocation(line: 64, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !130, file: !34, line: 64, column: 7)
!158 = !DILocation(line: 64, column: 7, scope: !130)
!159 = !DILocation(line: 65, column: 12, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !34, line: 65, column: 5)
!161 = !DILocation(line: 65, column: 10, scope: !160)
!162 = !DILocation(line: 65, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !34, line: 65, column: 5)
!164 = !DILocation(line: 65, column: 21, scope: !163)
!165 = !DILocation(line: 65, column: 24, scope: !163)
!166 = !DILocation(line: 65, column: 19, scope: !163)
!167 = !DILocation(line: 65, column: 5, scope: !160)
!168 = !DILocation(line: 66, column: 7, scope: !163)
!169 = !DILocation(line: 66, column: 9, scope: !163)
!170 = !DILocation(line: 66, column: 11, scope: !163)
!171 = !DILocation(line: 66, column: 15, scope: !163)
!172 = !DILocation(line: 65, column: 30, scope: !163)
!173 = !DILocation(line: 65, column: 5, scope: !163)
!174 = distinct !{!174, !167, !175}
!175 = !DILocation(line: 66, column: 19, scope: !160)
!176 = !DILocation(line: 67, column: 3, scope: !130)
!177 = !DILocation(line: 67, column: 6, scope: !130)
!178 = !DILocation(line: 67, column: 11, scope: !130)
!179 = !DILocation(line: 68, column: 4, scope: !130)
!180 = !DILocation(line: 68, column: 6, scope: !130)
!181 = !DILocation(line: 69, column: 1, scope: !130)
!182 = distinct !DISubprogram(name: "yv_setsz", scope: !34, file: !34, line: 75, type: !183, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !77, !21}
!185 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!186 = !DILocalVariable(name: "v", arg: 1, scope: !182, file: !34, line: 75, type: !77)
!187 = !DILocation(line: 75, column: 23, scope: !182)
!188 = !DILocalVariable(name: "sz", arg: 2, scope: !182, file: !34, line: 75, type: !21)
!189 = !DILocation(line: 75, column: 33, scope: !182)
!190 = !DILocalVariable(name: "y", scope: !182, file: !34, line: 77, type: !16)
!191 = !DILocation(line: 77, column: 17, scope: !182)
!192 = !DILocalVariable(name: "ny", scope: !182, file: !34, line: 77, type: !16)
!193 = !DILocation(line: 77, column: 21, scope: !182)
!194 = !DILocalVariable(name: "totalsz", scope: !182, file: !34, line: 78, type: !5)
!195 = !DILocation(line: 78, column: 16, scope: !182)
!196 = !DILocalVariable(name: "leap", scope: !182, file: !34, line: 78, type: !5)
!197 = !DILocation(line: 78, column: 25, scope: !182)
!198 = !DILocalVariable(name: "nv", scope: !182, file: !34, line: 79, type: !14)
!199 = !DILocation(line: 79, column: 10, scope: !182)
!200 = !DILocation(line: 81, column: 8, scope: !201)
!201 = distinct !DILexicalBlock(scope: !182, file: !34, line: 81, column: 7)
!202 = !DILocation(line: 81, column: 10, scope: !201)
!203 = !DILocation(line: 81, column: 15, scope: !201)
!204 = !DILocation(line: 81, column: 14, scope: !201)
!205 = !DILocation(line: 81, column: 7, scope: !182)
!206 = !DILocation(line: 82, column: 5, scope: !201)
!207 = !DILocation(line: 83, column: 33, scope: !182)
!208 = !DILocation(line: 83, column: 32, scope: !182)
!209 = !DILocation(line: 83, column: 31, scope: !182)
!210 = !DILocation(line: 83, column: 23, scope: !182)
!211 = !DILocation(line: 83, column: 35, scope: !182)
!212 = !DILocation(line: 83, column: 7, scope: !182)
!213 = !DILocation(line: 83, column: 5, scope: !182)
!214 = !DILocation(line: 84, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !182, file: !34, line: 84, column: 7)
!216 = !DILocation(line: 84, column: 12, scope: !215)
!217 = !DILocation(line: 84, column: 15, scope: !215)
!218 = !DILocation(line: 84, column: 10, scope: !215)
!219 = !DILocation(line: 84, column: 7, scope: !182)
!220 = !DILocation(line: 85, column: 5, scope: !215)
!221 = !DILocation(line: 86, column: 11, scope: !182)
!222 = !DILocation(line: 86, column: 14, scope: !182)
!223 = !DILocation(line: 86, column: 10, scope: !182)
!224 = !DILocation(line: 87, column: 6, scope: !182)
!225 = !DILocation(line: 87, column: 9, scope: !182)
!226 = !DILocation(line: 87, column: 5, scope: !182)
!227 = !DILocation(line: 86, column: 8, scope: !182)
!228 = !DILocation(line: 88, column: 16, scope: !182)
!229 = !DILocation(line: 88, column: 19, scope: !182)
!230 = !DILocation(line: 88, column: 26, scope: !182)
!231 = !DILocation(line: 88, column: 24, scope: !182)
!232 = !DILocation(line: 88, column: 32, scope: !182)
!233 = !DILocation(line: 88, column: 39, scope: !182)
!234 = !DILocation(line: 88, column: 37, scope: !182)
!235 = !DILocation(line: 88, column: 13, scope: !182)
!236 = !DILocation(line: 88, column: 11, scope: !182)
!237 = !DILocation(line: 89, column: 22, scope: !238)
!238 = distinct !DILexicalBlock(scope: !182, file: !34, line: 89, column: 7)
!239 = !DILocation(line: 89, column: 12, scope: !238)
!240 = !DILocation(line: 89, column: 7, scope: !182)
!241 = !DILocation(line: 91, column: 5, scope: !238)
!242 = !DILocation(line: 92, column: 23, scope: !182)
!243 = !DILocation(line: 92, column: 6, scope: !182)
!244 = !DILocation(line: 93, column: 25, scope: !182)
!245 = !DILocation(line: 93, column: 17, scope: !182)
!246 = !DILocation(line: 93, column: 28, scope: !182)
!247 = !DILocation(line: 93, column: 8, scope: !182)
!248 = !DILocation(line: 93, column: 6, scope: !182)
!249 = !DILocation(line: 94, column: 15, scope: !182)
!250 = !DILocation(line: 94, column: 3, scope: !182)
!251 = !DILocation(line: 94, column: 7, scope: !182)
!252 = !DILocation(line: 94, column: 13, scope: !182)
!253 = !DILocation(line: 95, column: 14, scope: !182)
!254 = !DILocation(line: 95, column: 17, scope: !182)
!255 = !DILocation(line: 95, column: 3, scope: !182)
!256 = !DILocation(line: 95, column: 7, scope: !182)
!257 = !DILocation(line: 95, column: 12, scope: !182)
!258 = !DILocation(line: 96, column: 10, scope: !182)
!259 = !DILocation(line: 96, column: 16, scope: !182)
!260 = !DILocation(line: 96, column: 15, scope: !182)
!261 = !DILocation(line: 96, column: 14, scope: !182)
!262 = !DILocation(line: 96, column: 20, scope: !182)
!263 = !DILocation(line: 96, column: 23, scope: !182)
!264 = !DILocation(line: 96, column: 28, scope: !182)
!265 = !DILocation(line: 96, column: 33, scope: !182)
!266 = !DILocation(line: 96, column: 3, scope: !182)
!267 = !DILocation(line: 97, column: 3, scope: !182)
!268 = !DILocation(line: 98, column: 8, scope: !182)
!269 = !DILocation(line: 98, column: 4, scope: !182)
!270 = !DILocation(line: 98, column: 6, scope: !182)
!271 = !DILocation(line: 99, column: 3, scope: !182)
!272 = !DILocation(line: 100, column: 1, scope: !182)
!273 = distinct !DISubprogram(name: "yv_len", scope: !34, file: !34, line: 106, type: !274, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!274 = !DISubroutineType(types: !275)
!275 = !{!21, !25}
!276 = !DILocalVariable(name: "v", arg: 1, scope: !273, file: !34, line: 106, type: !25)
!277 = !DILocation(line: 106, column: 23, scope: !273)
!278 = !DILocation(line: 108, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !273, file: !34, line: 108, column: 7)
!280 = !DILocation(line: 108, column: 7, scope: !273)
!281 = !DILocation(line: 109, column: 5, scope: !279)
!282 = !DILocation(line: 110, column: 36, scope: !273)
!283 = !DILocation(line: 110, column: 28, scope: !273)
!284 = !DILocation(line: 110, column: 38, scope: !273)
!285 = !DILocation(line: 110, column: 12, scope: !273)
!286 = !DILocation(line: 110, column: 64, scope: !273)
!287 = !DILocation(line: 110, column: 3, scope: !273)
!288 = !DILocation(line: 111, column: 1, scope: !273)
!289 = distinct !DISubprogram(name: "yv_cat", scope: !34, file: !34, line: 117, type: !290, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!290 = !DISubroutineType(types: !291)
!291 = !{!185, !77, !25}
!292 = !DILocalVariable(name: "dest", arg: 1, scope: !289, file: !34, line: 117, type: !77)
!293 = !DILocation(line: 117, column: 21, scope: !289)
!294 = !DILocalVariable(name: "src", arg: 2, scope: !289, file: !34, line: 117, type: !25)
!295 = !DILocation(line: 117, column: 35, scope: !289)
!296 = !DILocalVariable(name: "srcsz", scope: !289, file: !34, line: 119, type: !5)
!297 = !DILocation(line: 119, column: 16, scope: !289)
!298 = !DILocalVariable(name: "vectsz", scope: !289, file: !34, line: 119, type: !5)
!299 = !DILocation(line: 119, column: 23, scope: !289)
!300 = !DILocalVariable(name: "totalsz", scope: !289, file: !34, line: 119, type: !5)
!301 = !DILocation(line: 119, column: 31, scope: !289)
!302 = !DILocalVariable(name: "leap", scope: !289, file: !34, line: 119, type: !5)
!303 = !DILocation(line: 119, column: 40, scope: !289)
!304 = !DILocalVariable(name: "y", scope: !289, file: !34, line: 120, type: !16)
!305 = !DILocation(line: 120, column: 17, scope: !289)
!306 = !DILocalVariable(name: "ny", scope: !289, file: !34, line: 120, type: !16)
!307 = !DILocation(line: 120, column: 21, scope: !289)
!308 = !DILocalVariable(name: "nv", scope: !289, file: !34, line: 121, type: !14)
!309 = !DILocation(line: 121, column: 10, scope: !289)
!310 = !DILocation(line: 123, column: 8, scope: !311)
!311 = distinct !DILexicalBlock(scope: !289, file: !34, line: 123, column: 7)
!312 = !DILocation(line: 123, column: 12, scope: !311)
!313 = !DILocation(line: 123, column: 16, scope: !311)
!314 = !DILocation(line: 123, column: 21, scope: !311)
!315 = !DILocation(line: 123, column: 26, scope: !311)
!316 = !DILocation(line: 123, column: 25, scope: !311)
!317 = !DILocation(line: 123, column: 31, scope: !311)
!318 = !DILocation(line: 123, column: 51, scope: !311)
!319 = !DILocation(line: 123, column: 44, scope: !311)
!320 = !DILocation(line: 123, column: 42, scope: !311)
!321 = !DILocation(line: 123, column: 7, scope: !289)
!322 = !DILocation(line: 124, column: 5, scope: !311)
!323 = !DILocation(line: 125, column: 32, scope: !289)
!324 = !DILocation(line: 125, column: 31, scope: !289)
!325 = !DILocation(line: 125, column: 23, scope: !289)
!326 = !DILocation(line: 125, column: 37, scope: !289)
!327 = !DILocation(line: 125, column: 7, scope: !289)
!328 = !DILocation(line: 125, column: 5, scope: !289)
!329 = !DILocation(line: 126, column: 8, scope: !330)
!330 = distinct !DILexicalBlock(scope: !289, file: !34, line: 126, column: 7)
!331 = !DILocation(line: 126, column: 11, scope: !330)
!332 = !DILocation(line: 126, column: 16, scope: !330)
!333 = !DILocation(line: 126, column: 22, scope: !330)
!334 = !DILocation(line: 126, column: 20, scope: !330)
!335 = !DILocation(line: 126, column: 32, scope: !330)
!336 = !DILocation(line: 126, column: 35, scope: !330)
!337 = !DILocation(line: 126, column: 29, scope: !330)
!338 = !DILocation(line: 126, column: 7, scope: !289)
!339 = !DILocation(line: 128, column: 15, scope: !340)
!340 = distinct !DILexicalBlock(scope: !330, file: !34, line: 127, column: 5)
!341 = !DILocation(line: 128, column: 14, scope: !340)
!342 = !DILocation(line: 128, column: 22, scope: !340)
!343 = !DILocation(line: 128, column: 25, scope: !340)
!344 = !DILocation(line: 128, column: 20, scope: !340)
!345 = !DILocation(line: 128, column: 31, scope: !340)
!346 = !DILocation(line: 128, column: 37, scope: !340)
!347 = !DILocation(line: 128, column: 43, scope: !340)
!348 = !DILocation(line: 128, column: 36, scope: !340)
!349 = !DILocation(line: 128, column: 48, scope: !340)
!350 = !DILocation(line: 128, column: 7, scope: !340)
!351 = !DILocation(line: 129, column: 18, scope: !340)
!352 = !DILocation(line: 129, column: 7, scope: !340)
!353 = !DILocation(line: 129, column: 10, scope: !340)
!354 = !DILocation(line: 129, column: 15, scope: !340)
!355 = !DILocation(line: 130, column: 7, scope: !340)
!356 = !DILocation(line: 132, column: 12, scope: !289)
!357 = !DILocation(line: 132, column: 15, scope: !289)
!358 = !DILocation(line: 132, column: 22, scope: !289)
!359 = !DILocation(line: 132, column: 20, scope: !289)
!360 = !DILocation(line: 132, column: 10, scope: !289)
!361 = !DILocation(line: 133, column: 11, scope: !289)
!362 = !DILocation(line: 133, column: 18, scope: !289)
!363 = !DILocation(line: 133, column: 10, scope: !289)
!364 = !DILocation(line: 134, column: 6, scope: !289)
!365 = !DILocation(line: 134, column: 13, scope: !289)
!366 = !DILocation(line: 134, column: 5, scope: !289)
!367 = !DILocation(line: 133, column: 8, scope: !289)
!368 = !DILocation(line: 135, column: 16, scope: !289)
!369 = !DILocation(line: 135, column: 23, scope: !289)
!370 = !DILocation(line: 135, column: 30, scope: !289)
!371 = !DILocation(line: 135, column: 28, scope: !289)
!372 = !DILocation(line: 135, column: 36, scope: !289)
!373 = !DILocation(line: 135, column: 43, scope: !289)
!374 = !DILocation(line: 135, column: 41, scope: !289)
!375 = !DILocation(line: 135, column: 11, scope: !289)
!376 = !DILocation(line: 136, column: 22, scope: !377)
!377 = distinct !DILexicalBlock(scope: !289, file: !34, line: 136, column: 7)
!378 = !DILocation(line: 136, column: 12, scope: !377)
!379 = !DILocation(line: 136, column: 7, scope: !289)
!380 = !DILocation(line: 138, column: 5, scope: !377)
!381 = !DILocation(line: 139, column: 23, scope: !289)
!382 = !DILocation(line: 139, column: 6, scope: !289)
!383 = !DILocation(line: 140, column: 25, scope: !289)
!384 = !DILocation(line: 140, column: 17, scope: !289)
!385 = !DILocation(line: 140, column: 28, scope: !289)
!386 = !DILocation(line: 140, column: 8, scope: !289)
!387 = !DILocation(line: 140, column: 6, scope: !289)
!388 = !DILocation(line: 141, column: 15, scope: !289)
!389 = !DILocation(line: 141, column: 3, scope: !289)
!390 = !DILocation(line: 141, column: 7, scope: !289)
!391 = !DILocation(line: 141, column: 13, scope: !289)
!392 = !DILocation(line: 142, column: 14, scope: !289)
!393 = !DILocation(line: 142, column: 3, scope: !289)
!394 = !DILocation(line: 142, column: 7, scope: !289)
!395 = !DILocation(line: 142, column: 12, scope: !289)
!396 = !DILocation(line: 143, column: 10, scope: !289)
!397 = !DILocation(line: 143, column: 15, scope: !289)
!398 = !DILocation(line: 143, column: 14, scope: !289)
!399 = !DILocation(line: 143, column: 21, scope: !289)
!400 = !DILocation(line: 143, column: 24, scope: !289)
!401 = !DILocation(line: 143, column: 29, scope: !289)
!402 = !DILocation(line: 143, column: 3, scope: !289)
!403 = !DILocation(line: 144, column: 10, scope: !289)
!404 = !DILocation(line: 144, column: 15, scope: !289)
!405 = !DILocation(line: 144, column: 18, scope: !289)
!406 = !DILocation(line: 144, column: 13, scope: !289)
!407 = !DILocation(line: 144, column: 24, scope: !289)
!408 = !DILocation(line: 144, column: 30, scope: !289)
!409 = !DILocation(line: 144, column: 36, scope: !289)
!410 = !DILocation(line: 144, column: 29, scope: !289)
!411 = !DILocation(line: 144, column: 41, scope: !289)
!412 = !DILocation(line: 144, column: 3, scope: !289)
!413 = !DILocation(line: 145, column: 3, scope: !289)
!414 = !DILocation(line: 146, column: 11, scope: !289)
!415 = !DILocation(line: 146, column: 4, scope: !289)
!416 = !DILocation(line: 146, column: 9, scope: !289)
!417 = !DILocation(line: 147, column: 3, scope: !289)
!418 = !DILocation(line: 148, column: 1, scope: !289)
!419 = distinct !DISubprogram(name: "yv_ncat", scope: !34, file: !34, line: 155, type: !420, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!420 = !DISubroutineType(types: !421)
!421 = !{!185, !77, !25, !5}
!422 = !DILocalVariable(name: "dest", arg: 1, scope: !419, file: !34, line: 155, type: !77)
!423 = !DILocation(line: 155, column: 22, scope: !419)
!424 = !DILocalVariable(name: "src", arg: 2, scope: !419, file: !34, line: 155, type: !25)
!425 = !DILocation(line: 155, column: 36, scope: !419)
!426 = !DILocalVariable(name: "n", arg: 3, scope: !419, file: !34, line: 155, type: !5)
!427 = !DILocation(line: 155, column: 54, scope: !419)
!428 = !DILocalVariable(name: "vectsz", scope: !419, file: !34, line: 157, type: !5)
!429 = !DILocation(line: 157, column: 16, scope: !419)
!430 = !DILocalVariable(name: "totalsz", scope: !419, file: !34, line: 157, type: !5)
!431 = !DILocation(line: 157, column: 24, scope: !419)
!432 = !DILocalVariable(name: "leap", scope: !419, file: !34, line: 157, type: !5)
!433 = !DILocation(line: 157, column: 33, scope: !419)
!434 = !DILocalVariable(name: "y", scope: !419, file: !34, line: 158, type: !16)
!435 = !DILocation(line: 158, column: 17, scope: !419)
!436 = !DILocalVariable(name: "ny", scope: !419, file: !34, line: 158, type: !16)
!437 = !DILocation(line: 158, column: 21, scope: !419)
!438 = !DILocalVariable(name: "nv", scope: !419, file: !34, line: 159, type: !14)
!439 = !DILocation(line: 159, column: 10, scope: !419)
!440 = !DILocation(line: 161, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !419, file: !34, line: 161, column: 7)
!442 = !DILocation(line: 161, column: 12, scope: !441)
!443 = !DILocation(line: 161, column: 16, scope: !441)
!444 = !DILocation(line: 161, column: 21, scope: !441)
!445 = !DILocation(line: 161, column: 26, scope: !441)
!446 = !DILocation(line: 161, column: 25, scope: !441)
!447 = !DILocation(line: 161, column: 31, scope: !441)
!448 = !DILocation(line: 161, column: 35, scope: !441)
!449 = !DILocation(line: 161, column: 7, scope: !419)
!450 = !DILocation(line: 162, column: 5, scope: !441)
!451 = !DILocation(line: 163, column: 32, scope: !419)
!452 = !DILocation(line: 163, column: 31, scope: !419)
!453 = !DILocation(line: 163, column: 23, scope: !419)
!454 = !DILocation(line: 163, column: 37, scope: !419)
!455 = !DILocation(line: 163, column: 7, scope: !419)
!456 = !DILocation(line: 163, column: 5, scope: !419)
!457 = !DILocation(line: 164, column: 8, scope: !458)
!458 = distinct !DILexicalBlock(scope: !419, file: !34, line: 164, column: 7)
!459 = !DILocation(line: 164, column: 11, scope: !458)
!460 = !DILocation(line: 164, column: 16, scope: !458)
!461 = !DILocation(line: 164, column: 22, scope: !458)
!462 = !DILocation(line: 164, column: 20, scope: !458)
!463 = !DILocation(line: 164, column: 28, scope: !458)
!464 = !DILocation(line: 164, column: 31, scope: !458)
!465 = !DILocation(line: 164, column: 25, scope: !458)
!466 = !DILocation(line: 164, column: 7, scope: !419)
!467 = !DILocation(line: 166, column: 15, scope: !468)
!468 = distinct !DILexicalBlock(scope: !458, file: !34, line: 165, column: 5)
!469 = !DILocation(line: 166, column: 14, scope: !468)
!470 = !DILocation(line: 166, column: 22, scope: !468)
!471 = !DILocation(line: 166, column: 25, scope: !468)
!472 = !DILocation(line: 166, column: 20, scope: !468)
!473 = !DILocation(line: 166, column: 31, scope: !468)
!474 = !DILocation(line: 166, column: 36, scope: !468)
!475 = !DILocation(line: 166, column: 38, scope: !468)
!476 = !DILocation(line: 166, column: 7, scope: !468)
!477 = !DILocation(line: 167, column: 18, scope: !468)
!478 = !DILocation(line: 167, column: 7, scope: !468)
!479 = !DILocation(line: 167, column: 10, scope: !468)
!480 = !DILocation(line: 167, column: 15, scope: !468)
!481 = !DILocation(line: 168, column: 9, scope: !468)
!482 = !DILocation(line: 168, column: 8, scope: !468)
!483 = !DILocation(line: 168, column: 15, scope: !468)
!484 = !DILocation(line: 168, column: 18, scope: !468)
!485 = !DILocation(line: 168, column: 7, scope: !468)
!486 = !DILocation(line: 168, column: 24, scope: !468)
!487 = !DILocation(line: 169, column: 7, scope: !468)
!488 = !DILocation(line: 171, column: 12, scope: !419)
!489 = !DILocation(line: 171, column: 15, scope: !419)
!490 = !DILocation(line: 171, column: 22, scope: !419)
!491 = !DILocation(line: 171, column: 20, scope: !419)
!492 = !DILocation(line: 171, column: 10, scope: !419)
!493 = !DILocation(line: 172, column: 11, scope: !419)
!494 = !DILocation(line: 172, column: 18, scope: !419)
!495 = !DILocation(line: 172, column: 10, scope: !419)
!496 = !DILocation(line: 173, column: 6, scope: !419)
!497 = !DILocation(line: 173, column: 13, scope: !419)
!498 = !DILocation(line: 173, column: 5, scope: !419)
!499 = !DILocation(line: 172, column: 8, scope: !419)
!500 = !DILocation(line: 174, column: 16, scope: !419)
!501 = !DILocation(line: 174, column: 23, scope: !419)
!502 = !DILocation(line: 174, column: 30, scope: !419)
!503 = !DILocation(line: 174, column: 28, scope: !419)
!504 = !DILocation(line: 174, column: 36, scope: !419)
!505 = !DILocation(line: 174, column: 43, scope: !419)
!506 = !DILocation(line: 174, column: 41, scope: !419)
!507 = !DILocation(line: 174, column: 11, scope: !419)
!508 = !DILocation(line: 175, column: 22, scope: !509)
!509 = distinct !DILexicalBlock(scope: !419, file: !34, line: 175, column: 7)
!510 = !DILocation(line: 175, column: 12, scope: !509)
!511 = !DILocation(line: 175, column: 7, scope: !419)
!512 = !DILocation(line: 177, column: 5, scope: !509)
!513 = !DILocation(line: 178, column: 23, scope: !419)
!514 = !DILocation(line: 178, column: 6, scope: !419)
!515 = !DILocation(line: 179, column: 25, scope: !419)
!516 = !DILocation(line: 179, column: 17, scope: !419)
!517 = !DILocation(line: 179, column: 28, scope: !419)
!518 = !DILocation(line: 179, column: 8, scope: !419)
!519 = !DILocation(line: 179, column: 6, scope: !419)
!520 = !DILocation(line: 180, column: 15, scope: !419)
!521 = !DILocation(line: 180, column: 3, scope: !419)
!522 = !DILocation(line: 180, column: 7, scope: !419)
!523 = !DILocation(line: 180, column: 13, scope: !419)
!524 = !DILocation(line: 181, column: 14, scope: !419)
!525 = !DILocation(line: 181, column: 3, scope: !419)
!526 = !DILocation(line: 181, column: 7, scope: !419)
!527 = !DILocation(line: 181, column: 12, scope: !419)
!528 = !DILocation(line: 182, column: 10, scope: !419)
!529 = !DILocation(line: 182, column: 15, scope: !419)
!530 = !DILocation(line: 182, column: 14, scope: !419)
!531 = !DILocation(line: 182, column: 21, scope: !419)
!532 = !DILocation(line: 182, column: 24, scope: !419)
!533 = !DILocation(line: 182, column: 29, scope: !419)
!534 = !DILocation(line: 182, column: 3, scope: !419)
!535 = !DILocation(line: 183, column: 10, scope: !419)
!536 = !DILocation(line: 183, column: 15, scope: !419)
!537 = !DILocation(line: 183, column: 18, scope: !419)
!538 = !DILocation(line: 183, column: 13, scope: !419)
!539 = !DILocation(line: 183, column: 24, scope: !419)
!540 = !DILocation(line: 183, column: 29, scope: !419)
!541 = !DILocation(line: 183, column: 31, scope: !419)
!542 = !DILocation(line: 183, column: 3, scope: !419)
!543 = !DILocation(line: 184, column: 3, scope: !419)
!544 = !DILocation(line: 184, column: 6, scope: !419)
!545 = !DILocation(line: 184, column: 10, scope: !419)
!546 = !DILocation(line: 184, column: 16, scope: !419)
!547 = !DILocation(line: 185, column: 3, scope: !419)
!548 = !DILocation(line: 186, column: 11, scope: !419)
!549 = !DILocation(line: 186, column: 4, scope: !419)
!550 = !DILocation(line: 186, column: 9, scope: !419)
!551 = !DILocation(line: 187, column: 3, scope: !419)
!552 = !DILocation(line: 188, column: 1, scope: !419)
!553 = distinct !DISubprogram(name: "yv_dup", scope: !34, file: !34, line: 194, type: !554, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!554 = !DISubroutineType(types: !555)
!555 = !{!25, !25}
!556 = !DILocalVariable(name: "v", arg: 1, scope: !553, file: !34, line: 194, type: !25)
!557 = !DILocation(line: 194, column: 24, scope: !553)
!558 = !DILocalVariable(name: "y", scope: !553, file: !34, line: 196, type: !16)
!559 = !DILocation(line: 196, column: 17, scope: !553)
!560 = !DILocalVariable(name: "ny", scope: !553, file: !34, line: 196, type: !16)
!561 = !DILocation(line: 196, column: 21, scope: !553)
!562 = !DILocalVariable(name: "nv", scope: !553, file: !34, line: 197, type: !14)
!563 = !DILocation(line: 197, column: 10, scope: !553)
!564 = !DILocation(line: 199, column: 8, scope: !565)
!565 = distinct !DILexicalBlock(scope: !553, file: !34, line: 199, column: 7)
!566 = !DILocation(line: 199, column: 7, scope: !553)
!567 = !DILocation(line: 200, column: 5, scope: !565)
!568 = !DILocation(line: 201, column: 31, scope: !553)
!569 = !DILocation(line: 201, column: 23, scope: !553)
!570 = !DILocation(line: 201, column: 33, scope: !553)
!571 = !DILocation(line: 201, column: 7, scope: !553)
!572 = !DILocation(line: 201, column: 5, scope: !553)
!573 = !DILocation(line: 202, column: 22, scope: !574)
!574 = distinct !DILexicalBlock(scope: !553, file: !34, line: 202, column: 7)
!575 = !DILocation(line: 202, column: 12, scope: !574)
!576 = !DILocation(line: 202, column: 7, scope: !553)
!577 = !DILocation(line: 204, column: 5, scope: !574)
!578 = !DILocation(line: 205, column: 23, scope: !553)
!579 = !DILocation(line: 205, column: 6, scope: !553)
!580 = !DILocation(line: 206, column: 25, scope: !553)
!581 = !DILocation(line: 206, column: 17, scope: !553)
!582 = !DILocation(line: 206, column: 28, scope: !553)
!583 = !DILocation(line: 206, column: 8, scope: !553)
!584 = !DILocation(line: 206, column: 6, scope: !553)
!585 = !DILocation(line: 207, column: 15, scope: !553)
!586 = !DILocation(line: 207, column: 18, scope: !553)
!587 = !DILocation(line: 207, column: 3, scope: !553)
!588 = !DILocation(line: 207, column: 7, scope: !553)
!589 = !DILocation(line: 207, column: 13, scope: !553)
!590 = !DILocation(line: 208, column: 14, scope: !553)
!591 = !DILocation(line: 208, column: 17, scope: !553)
!592 = !DILocation(line: 208, column: 3, scope: !553)
!593 = !DILocation(line: 208, column: 7, scope: !553)
!594 = !DILocation(line: 208, column: 12, scope: !553)
!595 = !DILocation(line: 209, column: 10, scope: !553)
!596 = !DILocation(line: 209, column: 14, scope: !553)
!597 = !DILocation(line: 209, column: 18, scope: !553)
!598 = !DILocation(line: 209, column: 21, scope: !553)
!599 = !DILocation(line: 209, column: 26, scope: !553)
!600 = !DILocation(line: 209, column: 31, scope: !553)
!601 = !DILocation(line: 209, column: 3, scope: !553)
!602 = !DILocation(line: 210, column: 11, scope: !553)
!603 = !DILocation(line: 210, column: 3, scope: !553)
!604 = !DILocation(line: 211, column: 1, scope: !553)
!605 = distinct !DISubprogram(name: "yv_concat", scope: !34, file: !34, line: 217, type: !606, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!606 = !DISubroutineType(types: !607)
!607 = !{!25, !25, !25}
!608 = !DILocalVariable(name: "v1", arg: 1, scope: !605, file: !34, line: 217, type: !25)
!609 = !DILocation(line: 217, column: 27, scope: !605)
!610 = !DILocalVariable(name: "v2", arg: 2, scope: !605, file: !34, line: 217, type: !25)
!611 = !DILocation(line: 217, column: 39, scope: !605)
!612 = !DILocalVariable(name: "nv", scope: !605, file: !34, line: 219, type: !14)
!613 = !DILocation(line: 219, column: 10, scope: !605)
!614 = !DILocation(line: 221, column: 15, scope: !605)
!615 = !DILocation(line: 221, column: 8, scope: !605)
!616 = !DILocation(line: 221, column: 6, scope: !605)
!617 = !DILocation(line: 222, column: 15, scope: !605)
!618 = !DILocation(line: 222, column: 3, scope: !605)
!619 = !DILocation(line: 223, column: 11, scope: !605)
!620 = !DILocation(line: 223, column: 3, scope: !605)
!621 = distinct !DISubprogram(name: "yv_put", scope: !34, file: !34, line: 230, type: !622, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!622 = !DISubroutineType(types: !623)
!623 = !{!185, !77, !15}
!624 = !DILocalVariable(name: "v", arg: 1, scope: !621, file: !34, line: 230, type: !77)
!625 = !DILocation(line: 230, column: 21, scope: !621)
!626 = !DILocalVariable(name: "e", arg: 2, scope: !621, file: !34, line: 230, type: !15)
!627 = !DILocation(line: 230, column: 30, scope: !621)
!628 = !DILocalVariable(name: "vectsz", scope: !621, file: !34, line: 232, type: !5)
!629 = !DILocation(line: 232, column: 16, scope: !621)
!630 = !DILocalVariable(name: "totalsz", scope: !621, file: !34, line: 232, type: !5)
!631 = !DILocation(line: 232, column: 24, scope: !621)
!632 = !DILocalVariable(name: "leap", scope: !621, file: !34, line: 232, type: !5)
!633 = !DILocation(line: 232, column: 33, scope: !621)
!634 = !DILocalVariable(name: "i", scope: !621, file: !34, line: 233, type: !185)
!635 = !DILocation(line: 233, column: 7, scope: !621)
!636 = !DILocalVariable(name: "y", scope: !621, file: !34, line: 234, type: !16)
!637 = !DILocation(line: 234, column: 17, scope: !621)
!638 = !DILocalVariable(name: "ny", scope: !621, file: !34, line: 234, type: !16)
!639 = !DILocation(line: 234, column: 21, scope: !621)
!640 = !DILocalVariable(name: "nv", scope: !621, file: !34, line: 235, type: !14)
!641 = !DILocation(line: 235, column: 10, scope: !621)
!642 = !DILocation(line: 237, column: 8, scope: !643)
!643 = distinct !DILexicalBlock(scope: !621, file: !34, line: 237, column: 7)
!644 = !DILocation(line: 237, column: 10, scope: !643)
!645 = !DILocation(line: 237, column: 15, scope: !643)
!646 = !DILocation(line: 237, column: 14, scope: !643)
!647 = !DILocation(line: 237, column: 7, scope: !621)
!648 = !DILocation(line: 238, column: 5, scope: !643)
!649 = !DILocation(line: 239, column: 32, scope: !621)
!650 = !DILocation(line: 239, column: 31, scope: !621)
!651 = !DILocation(line: 239, column: 23, scope: !621)
!652 = !DILocation(line: 239, column: 34, scope: !621)
!653 = !DILocation(line: 239, column: 7, scope: !621)
!654 = !DILocation(line: 239, column: 5, scope: !621)
!655 = !DILocation(line: 240, column: 8, scope: !656)
!656 = distinct !DILexicalBlock(scope: !621, file: !34, line: 240, column: 7)
!657 = !DILocation(line: 240, column: 11, scope: !656)
!658 = !DILocation(line: 240, column: 16, scope: !656)
!659 = !DILocation(line: 240, column: 24, scope: !656)
!660 = !DILocation(line: 240, column: 27, scope: !656)
!661 = !DILocation(line: 240, column: 21, scope: !656)
!662 = !DILocation(line: 240, column: 7, scope: !621)
!663 = !DILocation(line: 242, column: 16, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !34, line: 242, column: 7)
!665 = distinct !DILexicalBlock(scope: !656, file: !34, line: 241, column: 5)
!666 = !DILocation(line: 242, column: 19, scope: !664)
!667 = !DILocation(line: 242, column: 14, scope: !664)
!668 = !DILocation(line: 242, column: 12, scope: !664)
!669 = !DILocation(line: 242, column: 25, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !34, line: 242, column: 7)
!671 = !DILocation(line: 242, column: 27, scope: !670)
!672 = !DILocation(line: 242, column: 7, scope: !664)
!673 = !DILocation(line: 243, column: 18, scope: !670)
!674 = !DILocation(line: 243, column: 17, scope: !670)
!675 = !DILocation(line: 243, column: 21, scope: !670)
!676 = !DILocation(line: 243, column: 16, scope: !670)
!677 = !DILocation(line: 243, column: 4, scope: !670)
!678 = !DILocation(line: 243, column: 3, scope: !670)
!679 = !DILocation(line: 243, column: 7, scope: !670)
!680 = !DILocation(line: 243, column: 9, scope: !670)
!681 = !DILocation(line: 243, column: 2, scope: !670)
!682 = !DILocation(line: 243, column: 14, scope: !670)
!683 = !DILocation(line: 242, column: 33, scope: !670)
!684 = !DILocation(line: 242, column: 7, scope: !670)
!685 = distinct !{!685, !672, !686}
!686 = !DILocation(line: 243, column: 22, scope: !664)
!687 = !DILocation(line: 244, column: 17, scope: !665)
!688 = !DILocation(line: 244, column: 9, scope: !665)
!689 = !DILocation(line: 244, column: 8, scope: !665)
!690 = !DILocation(line: 244, column: 7, scope: !665)
!691 = !DILocation(line: 244, column: 15, scope: !665)
!692 = !DILocation(line: 245, column: 7, scope: !665)
!693 = !DILocation(line: 245, column: 10, scope: !665)
!694 = !DILocation(line: 245, column: 14, scope: !665)
!695 = !DILocation(line: 246, column: 7, scope: !665)
!696 = !DILocation(line: 248, column: 12, scope: !621)
!697 = !DILocation(line: 248, column: 15, scope: !621)
!698 = !DILocation(line: 248, column: 20, scope: !621)
!699 = !DILocation(line: 248, column: 10, scope: !621)
!700 = !DILocation(line: 249, column: 11, scope: !621)
!701 = !DILocation(line: 249, column: 18, scope: !621)
!702 = !DILocation(line: 249, column: 10, scope: !621)
!703 = !DILocation(line: 250, column: 6, scope: !621)
!704 = !DILocation(line: 250, column: 13, scope: !621)
!705 = !DILocation(line: 250, column: 5, scope: !621)
!706 = !DILocation(line: 249, column: 8, scope: !621)
!707 = !DILocation(line: 251, column: 16, scope: !621)
!708 = !DILocation(line: 251, column: 23, scope: !621)
!709 = !DILocation(line: 251, column: 30, scope: !621)
!710 = !DILocation(line: 251, column: 28, scope: !621)
!711 = !DILocation(line: 251, column: 36, scope: !621)
!712 = !DILocation(line: 251, column: 43, scope: !621)
!713 = !DILocation(line: 251, column: 41, scope: !621)
!714 = !DILocation(line: 251, column: 11, scope: !621)
!715 = !DILocation(line: 252, column: 22, scope: !716)
!716 = distinct !DILexicalBlock(scope: !621, file: !34, line: 252, column: 7)
!717 = !DILocation(line: 252, column: 12, scope: !716)
!718 = !DILocation(line: 252, column: 7, scope: !621)
!719 = !DILocation(line: 254, column: 5, scope: !716)
!720 = !DILocation(line: 255, column: 23, scope: !621)
!721 = !DILocation(line: 255, column: 6, scope: !621)
!722 = !DILocation(line: 256, column: 25, scope: !621)
!723 = !DILocation(line: 256, column: 17, scope: !621)
!724 = !DILocation(line: 256, column: 28, scope: !621)
!725 = !DILocation(line: 256, column: 8, scope: !621)
!726 = !DILocation(line: 256, column: 6, scope: !621)
!727 = !DILocation(line: 257, column: 15, scope: !621)
!728 = !DILocation(line: 257, column: 3, scope: !621)
!729 = !DILocation(line: 257, column: 7, scope: !621)
!730 = !DILocation(line: 257, column: 13, scope: !621)
!731 = !DILocation(line: 258, column: 14, scope: !621)
!732 = !DILocation(line: 258, column: 3, scope: !621)
!733 = !DILocation(line: 258, column: 7, scope: !621)
!734 = !DILocation(line: 258, column: 12, scope: !621)
!735 = !DILocation(line: 259, column: 11, scope: !621)
!736 = !DILocation(line: 259, column: 3, scope: !621)
!737 = !DILocation(line: 259, column: 9, scope: !621)
!738 = !DILocation(line: 260, column: 26, scope: !621)
!739 = !DILocation(line: 260, column: 18, scope: !621)
!740 = !DILocation(line: 260, column: 29, scope: !621)
!741 = !DILocation(line: 260, column: 10, scope: !621)
!742 = !DILocation(line: 260, column: 48, scope: !621)
!743 = !DILocation(line: 260, column: 47, scope: !621)
!744 = !DILocation(line: 260, column: 52, scope: !621)
!745 = !DILocation(line: 260, column: 55, scope: !621)
!746 = !DILocation(line: 260, column: 60, scope: !621)
!747 = !DILocation(line: 260, column: 65, scope: !621)
!748 = !DILocation(line: 260, column: 3, scope: !621)
!749 = !DILocation(line: 261, column: 3, scope: !621)
!750 = !DILocation(line: 262, column: 8, scope: !621)
!751 = !DILocation(line: 262, column: 4, scope: !621)
!752 = !DILocation(line: 262, column: 6, scope: !621)
!753 = !DILocation(line: 263, column: 3, scope: !621)
!754 = !DILocation(line: 264, column: 1, scope: !621)
!755 = distinct !DISubprogram(name: "yv_ins", scope: !34, file: !34, line: 271, type: !756, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!756 = !DISubroutineType(types: !757)
!757 = !{!185, !77, !15, !21}
!758 = !DILocalVariable(name: "v", arg: 1, scope: !755, file: !34, line: 271, type: !77)
!759 = !DILocation(line: 271, column: 21, scope: !755)
!760 = !DILocalVariable(name: "e", arg: 2, scope: !755, file: !34, line: 271, type: !15)
!761 = !DILocation(line: 271, column: 30, scope: !755)
!762 = !DILocalVariable(name: "i", arg: 3, scope: !755, file: !34, line: 271, type: !21)
!763 = !DILocation(line: 271, column: 40, scope: !755)
!764 = !DILocalVariable(name: "y", scope: !755, file: !34, line: 273, type: !16)
!765 = !DILocation(line: 273, column: 17, scope: !755)
!766 = !DILocalVariable(name: "j", scope: !755, file: !34, line: 274, type: !21)
!767 = !DILocation(line: 274, column: 10, scope: !755)
!768 = !DILocation(line: 276, column: 8, scope: !769)
!769 = distinct !DILexicalBlock(scope: !755, file: !34, line: 276, column: 7)
!770 = !DILocation(line: 276, column: 10, scope: !769)
!771 = !DILocation(line: 276, column: 15, scope: !769)
!772 = !DILocation(line: 276, column: 14, scope: !769)
!773 = !DILocation(line: 276, column: 7, scope: !755)
!774 = !DILocation(line: 277, column: 5, scope: !769)
!775 = !DILocation(line: 278, column: 32, scope: !755)
!776 = !DILocation(line: 278, column: 31, scope: !755)
!777 = !DILocation(line: 278, column: 23, scope: !755)
!778 = !DILocation(line: 278, column: 34, scope: !755)
!779 = !DILocation(line: 278, column: 7, scope: !755)
!780 = !DILocation(line: 278, column: 5, scope: !755)
!781 = !DILocation(line: 279, column: 8, scope: !782)
!782 = distinct !DILexicalBlock(scope: !755, file: !34, line: 279, column: 7)
!783 = !DILocation(line: 279, column: 10, scope: !782)
!784 = !DILocation(line: 279, column: 15, scope: !782)
!785 = !DILocation(line: 279, column: 14, scope: !782)
!786 = !DILocation(line: 279, column: 17, scope: !782)
!787 = !DILocation(line: 279, column: 30, scope: !782)
!788 = !DILocation(line: 279, column: 33, scope: !782)
!789 = !DILocation(line: 279, column: 36, scope: !782)
!790 = !DILocation(line: 279, column: 41, scope: !782)
!791 = !DILocation(line: 279, column: 21, scope: !782)
!792 = !DILocation(line: 279, column: 7, scope: !755)
!793 = !DILocation(line: 280, column: 5, scope: !782)
!794 = !DILocation(line: 281, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !755, file: !34, line: 281, column: 7)
!796 = !DILocation(line: 281, column: 11, scope: !795)
!797 = !DILocation(line: 281, column: 14, scope: !795)
!798 = !DILocation(line: 281, column: 9, scope: !795)
!799 = !DILocation(line: 281, column: 7, scope: !755)
!800 = !DILocation(line: 282, column: 5, scope: !795)
!801 = !DILocation(line: 283, column: 12, scope: !802)
!802 = distinct !DILexicalBlock(scope: !755, file: !34, line: 283, column: 3)
!803 = !DILocation(line: 283, column: 10, scope: !802)
!804 = !DILocation(line: 283, column: 8, scope: !802)
!805 = !DILocation(line: 283, column: 15, scope: !806)
!806 = distinct !DILexicalBlock(scope: !802, file: !34, line: 283, column: 3)
!807 = !DILocation(line: 283, column: 20, scope: !806)
!808 = !DILocation(line: 283, column: 23, scope: !806)
!809 = !DILocation(line: 283, column: 28, scope: !806)
!810 = !DILocation(line: 283, column: 17, scope: !806)
!811 = !DILocation(line: 283, column: 3, scope: !802)
!812 = !DILocation(line: 284, column: 21, scope: !806)
!813 = !DILocation(line: 284, column: 20, scope: !806)
!814 = !DILocation(line: 284, column: 24, scope: !806)
!815 = !DILocation(line: 284, column: 19, scope: !806)
!816 = !DILocation(line: 284, column: 7, scope: !806)
!817 = !DILocation(line: 284, column: 6, scope: !806)
!818 = !DILocation(line: 284, column: 10, scope: !806)
!819 = !DILocation(line: 284, column: 12, scope: !806)
!820 = !DILocation(line: 284, column: 5, scope: !806)
!821 = !DILocation(line: 284, column: 17, scope: !806)
!822 = !DILocation(line: 283, column: 34, scope: !806)
!823 = !DILocation(line: 283, column: 3, scope: !806)
!824 = distinct !{!824, !811, !825}
!825 = !DILocation(line: 284, column: 25, scope: !802)
!826 = !DILocation(line: 285, column: 13, scope: !755)
!827 = !DILocation(line: 285, column: 5, scope: !755)
!828 = !DILocation(line: 285, column: 4, scope: !755)
!829 = !DILocation(line: 285, column: 8, scope: !755)
!830 = !DILocation(line: 285, column: 3, scope: !755)
!831 = !DILocation(line: 285, column: 11, scope: !755)
!832 = !DILocation(line: 286, column: 3, scope: !755)
!833 = !DILocation(line: 286, column: 6, scope: !755)
!834 = !DILocation(line: 286, column: 10, scope: !755)
!835 = !DILocation(line: 287, column: 3, scope: !755)
!836 = !DILocation(line: 288, column: 1, scope: !755)
!837 = distinct !DISubprogram(name: "yv_add", scope: !34, file: !34, line: 294, type: !622, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!838 = !DILocalVariable(name: "v", arg: 1, scope: !837, file: !34, line: 294, type: !77)
!839 = !DILocation(line: 294, column: 21, scope: !837)
!840 = !DILocalVariable(name: "e", arg: 2, scope: !837, file: !34, line: 294, type: !15)
!841 = !DILocation(line: 294, column: 30, scope: !837)
!842 = !DILocalVariable(name: "vectsz", scope: !837, file: !34, line: 296, type: !5)
!843 = !DILocation(line: 296, column: 16, scope: !837)
!844 = !DILocalVariable(name: "totalsz", scope: !837, file: !34, line: 296, type: !5)
!845 = !DILocation(line: 296, column: 24, scope: !837)
!846 = !DILocalVariable(name: "leap", scope: !837, file: !34, line: 296, type: !5)
!847 = !DILocation(line: 296, column: 33, scope: !837)
!848 = !DILocalVariable(name: "y", scope: !837, file: !34, line: 297, type: !16)
!849 = !DILocation(line: 297, column: 17, scope: !837)
!850 = !DILocalVariable(name: "ny", scope: !837, file: !34, line: 297, type: !16)
!851 = !DILocation(line: 297, column: 21, scope: !837)
!852 = !DILocalVariable(name: "nv", scope: !837, file: !34, line: 298, type: !14)
!853 = !DILocation(line: 298, column: 10, scope: !837)
!854 = !DILocation(line: 300, column: 8, scope: !855)
!855 = distinct !DILexicalBlock(scope: !837, file: !34, line: 300, column: 7)
!856 = !DILocation(line: 300, column: 10, scope: !855)
!857 = !DILocation(line: 300, column: 15, scope: !855)
!858 = !DILocation(line: 300, column: 14, scope: !855)
!859 = !DILocation(line: 300, column: 7, scope: !837)
!860 = !DILocation(line: 301, column: 5, scope: !855)
!861 = !DILocation(line: 302, column: 32, scope: !837)
!862 = !DILocation(line: 302, column: 31, scope: !837)
!863 = !DILocation(line: 302, column: 23, scope: !837)
!864 = !DILocation(line: 302, column: 34, scope: !837)
!865 = !DILocation(line: 302, column: 7, scope: !837)
!866 = !DILocation(line: 302, column: 5, scope: !837)
!867 = !DILocation(line: 303, column: 8, scope: !868)
!868 = distinct !DILexicalBlock(scope: !837, file: !34, line: 303, column: 7)
!869 = !DILocation(line: 303, column: 11, scope: !868)
!870 = !DILocation(line: 303, column: 16, scope: !868)
!871 = !DILocation(line: 303, column: 24, scope: !868)
!872 = !DILocation(line: 303, column: 27, scope: !868)
!873 = !DILocation(line: 303, column: 21, scope: !868)
!874 = !DILocation(line: 303, column: 7, scope: !837)
!875 = !DILocation(line: 305, column: 23, scope: !876)
!876 = distinct !DILexicalBlock(scope: !868, file: !34, line: 304, column: 5)
!877 = !DILocation(line: 305, column: 9, scope: !876)
!878 = !DILocation(line: 305, column: 8, scope: !876)
!879 = !DILocation(line: 305, column: 12, scope: !876)
!880 = !DILocation(line: 305, column: 15, scope: !876)
!881 = !DILocation(line: 305, column: 7, scope: !876)
!882 = !DILocation(line: 305, column: 21, scope: !876)
!883 = !DILocation(line: 306, column: 9, scope: !876)
!884 = !DILocation(line: 306, column: 8, scope: !876)
!885 = !DILocation(line: 306, column: 12, scope: !876)
!886 = !DILocation(line: 306, column: 15, scope: !876)
!887 = !DILocation(line: 306, column: 20, scope: !876)
!888 = !DILocation(line: 306, column: 7, scope: !876)
!889 = !DILocation(line: 306, column: 25, scope: !876)
!890 = !DILocation(line: 307, column: 7, scope: !876)
!891 = !DILocation(line: 307, column: 10, scope: !876)
!892 = !DILocation(line: 307, column: 14, scope: !876)
!893 = !DILocation(line: 308, column: 7, scope: !876)
!894 = !DILocation(line: 310, column: 12, scope: !837)
!895 = !DILocation(line: 310, column: 15, scope: !837)
!896 = !DILocation(line: 310, column: 20, scope: !837)
!897 = !DILocation(line: 310, column: 10, scope: !837)
!898 = !DILocation(line: 311, column: 11, scope: !837)
!899 = !DILocation(line: 311, column: 18, scope: !837)
!900 = !DILocation(line: 311, column: 10, scope: !837)
!901 = !DILocation(line: 312, column: 6, scope: !837)
!902 = !DILocation(line: 312, column: 13, scope: !837)
!903 = !DILocation(line: 312, column: 5, scope: !837)
!904 = !DILocation(line: 311, column: 8, scope: !837)
!905 = !DILocation(line: 313, column: 16, scope: !837)
!906 = !DILocation(line: 313, column: 23, scope: !837)
!907 = !DILocation(line: 313, column: 30, scope: !837)
!908 = !DILocation(line: 313, column: 28, scope: !837)
!909 = !DILocation(line: 313, column: 36, scope: !837)
!910 = !DILocation(line: 313, column: 43, scope: !837)
!911 = !DILocation(line: 313, column: 41, scope: !837)
!912 = !DILocation(line: 313, column: 11, scope: !837)
!913 = !DILocation(line: 314, column: 22, scope: !914)
!914 = distinct !DILexicalBlock(scope: !837, file: !34, line: 314, column: 7)
!915 = !DILocation(line: 314, column: 12, scope: !914)
!916 = !DILocation(line: 314, column: 7, scope: !837)
!917 = !DILocation(line: 316, column: 5, scope: !914)
!918 = !DILocation(line: 317, column: 23, scope: !837)
!919 = !DILocation(line: 317, column: 6, scope: !837)
!920 = !DILocation(line: 318, column: 25, scope: !837)
!921 = !DILocation(line: 318, column: 17, scope: !837)
!922 = !DILocation(line: 318, column: 28, scope: !837)
!923 = !DILocation(line: 318, column: 8, scope: !837)
!924 = !DILocation(line: 318, column: 6, scope: !837)
!925 = !DILocation(line: 319, column: 15, scope: !837)
!926 = !DILocation(line: 319, column: 3, scope: !837)
!927 = !DILocation(line: 319, column: 7, scope: !837)
!928 = !DILocation(line: 319, column: 13, scope: !837)
!929 = !DILocation(line: 320, column: 14, scope: !837)
!930 = !DILocation(line: 320, column: 3, scope: !837)
!931 = !DILocation(line: 320, column: 7, scope: !837)
!932 = !DILocation(line: 320, column: 12, scope: !837)
!933 = !DILocation(line: 321, column: 10, scope: !837)
!934 = !DILocation(line: 321, column: 15, scope: !837)
!935 = !DILocation(line: 321, column: 14, scope: !837)
!936 = !DILocation(line: 321, column: 18, scope: !837)
!937 = !DILocation(line: 321, column: 21, scope: !837)
!938 = !DILocation(line: 321, column: 26, scope: !837)
!939 = !DILocation(line: 321, column: 3, scope: !837)
!940 = !DILocation(line: 322, column: 17, scope: !837)
!941 = !DILocation(line: 322, column: 3, scope: !837)
!942 = !DILocation(line: 322, column: 6, scope: !837)
!943 = !DILocation(line: 322, column: 9, scope: !837)
!944 = !DILocation(line: 322, column: 15, scope: !837)
!945 = !DILocation(line: 323, column: 3, scope: !837)
!946 = !DILocation(line: 323, column: 6, scope: !837)
!947 = !DILocation(line: 323, column: 10, scope: !837)
!948 = !DILocation(line: 323, column: 16, scope: !837)
!949 = !DILocation(line: 324, column: 3, scope: !837)
!950 = !DILocation(line: 325, column: 8, scope: !837)
!951 = !DILocation(line: 325, column: 4, scope: !837)
!952 = !DILocation(line: 325, column: 6, scope: !837)
!953 = !DILocation(line: 326, column: 3, scope: !837)
!954 = !DILocation(line: 327, column: 1, scope: !837)
!955 = distinct !DISubprogram(name: "yv_pop", scope: !34, file: !34, line: 333, type: !956, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!956 = !DISubroutineType(types: !957)
!957 = !{!15, !25}
!958 = !DILocalVariable(name: "v", arg: 1, scope: !955, file: !34, line: 333, type: !25)
!959 = !DILocation(line: 333, column: 22, scope: !955)
!960 = !DILocalVariable(name: "y", scope: !955, file: !34, line: 335, type: !16)
!961 = !DILocation(line: 335, column: 17, scope: !955)
!962 = !DILocalVariable(name: "res", scope: !955, file: !34, line: 336, type: !15)
!963 = !DILocation(line: 336, column: 9, scope: !955)
!964 = !DILocalVariable(name: "i", scope: !955, file: !34, line: 337, type: !5)
!965 = !DILocation(line: 337, column: 16, scope: !955)
!966 = !DILocation(line: 339, column: 8, scope: !967)
!967 = distinct !DILexicalBlock(scope: !955, file: !34, line: 339, column: 7)
!968 = !DILocation(line: 339, column: 7, scope: !955)
!969 = !DILocation(line: 340, column: 5, scope: !967)
!970 = !DILocation(line: 341, column: 31, scope: !955)
!971 = !DILocation(line: 341, column: 23, scope: !955)
!972 = !DILocation(line: 341, column: 33, scope: !955)
!973 = !DILocation(line: 341, column: 7, scope: !955)
!974 = !DILocation(line: 341, column: 5, scope: !955)
!975 = !DILocation(line: 342, column: 8, scope: !976)
!976 = distinct !DILexicalBlock(scope: !955, file: !34, line: 342, column: 7)
!977 = !DILocation(line: 342, column: 11, scope: !976)
!978 = !DILocation(line: 342, column: 7, scope: !955)
!979 = !DILocation(line: 343, column: 5, scope: !976)
!980 = !DILocation(line: 344, column: 10, scope: !955)
!981 = !DILocation(line: 344, column: 9, scope: !955)
!982 = !DILocation(line: 344, column: 7, scope: !955)
!983 = !DILocation(line: 345, column: 10, scope: !984)
!984 = distinct !DILexicalBlock(scope: !955, file: !34, line: 345, column: 3)
!985 = !DILocation(line: 345, column: 8, scope: !984)
!986 = !DILocation(line: 345, column: 15, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !34, line: 345, column: 3)
!988 = !DILocation(line: 345, column: 19, scope: !987)
!989 = !DILocation(line: 345, column: 22, scope: !987)
!990 = !DILocation(line: 345, column: 17, scope: !987)
!991 = !DILocation(line: 345, column: 3, scope: !984)
!992 = !DILocation(line: 346, column: 12, scope: !987)
!993 = !DILocation(line: 346, column: 14, scope: !987)
!994 = !DILocation(line: 346, column: 16, scope: !987)
!995 = !DILocation(line: 346, column: 5, scope: !987)
!996 = !DILocation(line: 346, column: 7, scope: !987)
!997 = !DILocation(line: 346, column: 10, scope: !987)
!998 = !DILocation(line: 345, column: 28, scope: !987)
!999 = !DILocation(line: 345, column: 3, scope: !987)
!1000 = distinct !{!1000, !991, !1001}
!1001 = !DILocation(line: 346, column: 19, scope: !984)
!1002 = !DILocation(line: 347, column: 3, scope: !955)
!1003 = !DILocation(line: 347, column: 6, scope: !955)
!1004 = !DILocation(line: 347, column: 10, scope: !955)
!1005 = !DILocation(line: 348, column: 11, scope: !955)
!1006 = !DILocation(line: 348, column: 3, scope: !955)
!1007 = !DILocation(line: 349, column: 1, scope: !955)
!1008 = distinct !DISubprogram(name: "yv_get", scope: !34, file: !34, line: 355, type: !956, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!1009 = !DILocalVariable(name: "v", arg: 1, scope: !1008, file: !34, line: 355, type: !25)
!1010 = !DILocation(line: 355, column: 22, scope: !1008)
!1011 = !DILocalVariable(name: "y", scope: !1008, file: !34, line: 357, type: !16)
!1012 = !DILocation(line: 357, column: 17, scope: !1008)
!1013 = !DILocalVariable(name: "res", scope: !1008, file: !34, line: 358, type: !15)
!1014 = !DILocation(line: 358, column: 9, scope: !1008)
!1015 = !DILocation(line: 360, column: 8, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1008, file: !34, line: 360, column: 7)
!1017 = !DILocation(line: 360, column: 7, scope: !1008)
!1018 = !DILocation(line: 361, column: 5, scope: !1016)
!1019 = !DILocation(line: 362, column: 31, scope: !1008)
!1020 = !DILocation(line: 362, column: 23, scope: !1008)
!1021 = !DILocation(line: 362, column: 33, scope: !1008)
!1022 = !DILocation(line: 362, column: 7, scope: !1008)
!1023 = !DILocation(line: 362, column: 5, scope: !1008)
!1024 = !DILocation(line: 363, column: 8, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1008, file: !34, line: 363, column: 7)
!1026 = !DILocation(line: 363, column: 11, scope: !1025)
!1027 = !DILocation(line: 363, column: 7, scope: !1008)
!1028 = !DILocation(line: 364, column: 5, scope: !1025)
!1029 = !DILocation(line: 365, column: 9, scope: !1008)
!1030 = !DILocation(line: 365, column: 11, scope: !1008)
!1031 = !DILocation(line: 365, column: 14, scope: !1008)
!1032 = !DILocation(line: 365, column: 19, scope: !1008)
!1033 = !DILocation(line: 365, column: 7, scope: !1008)
!1034 = !DILocation(line: 366, column: 3, scope: !1008)
!1035 = !DILocation(line: 366, column: 5, scope: !1008)
!1036 = !DILocation(line: 366, column: 8, scope: !1008)
!1037 = !DILocation(line: 366, column: 13, scope: !1008)
!1038 = !DILocation(line: 366, column: 18, scope: !1008)
!1039 = !DILocation(line: 367, column: 3, scope: !1008)
!1040 = !DILocation(line: 367, column: 6, scope: !1008)
!1041 = !DILocation(line: 367, column: 10, scope: !1008)
!1042 = !DILocation(line: 368, column: 11, scope: !1008)
!1043 = !DILocation(line: 368, column: 3, scope: !1008)
!1044 = !DILocation(line: 369, column: 1, scope: !1008)
!1045 = distinct !DISubprogram(name: "yv_ext", scope: !34, file: !34, line: 375, type: !1046, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!15, !25, !21}
!1048 = !DILocalVariable(name: "v", arg: 1, scope: !1045, file: !34, line: 375, type: !25)
!1049 = !DILocation(line: 375, column: 22, scope: !1045)
!1050 = !DILocalVariable(name: "i", arg: 2, scope: !1045, file: !34, line: 375, type: !21)
!1051 = !DILocation(line: 375, column: 32, scope: !1045)
!1052 = !DILocalVariable(name: "y", scope: !1045, file: !34, line: 377, type: !16)
!1053 = !DILocation(line: 377, column: 17, scope: !1045)
!1054 = !DILocalVariable(name: "res", scope: !1045, file: !34, line: 378, type: !15)
!1055 = !DILocation(line: 378, column: 9, scope: !1045)
!1056 = !DILocalVariable(name: "j", scope: !1045, file: !34, line: 379, type: !21)
!1057 = !DILocation(line: 379, column: 10, scope: !1045)
!1058 = !DILocation(line: 381, column: 8, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1045, file: !34, line: 381, column: 7)
!1060 = !DILocation(line: 381, column: 7, scope: !1045)
!1061 = !DILocation(line: 382, column: 5, scope: !1059)
!1062 = !DILocation(line: 383, column: 31, scope: !1045)
!1063 = !DILocation(line: 383, column: 23, scope: !1045)
!1064 = !DILocation(line: 383, column: 33, scope: !1045)
!1065 = !DILocation(line: 383, column: 7, scope: !1045)
!1066 = !DILocation(line: 383, column: 5, scope: !1045)
!1067 = !DILocation(line: 384, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1045, file: !34, line: 384, column: 7)
!1069 = !DILocation(line: 384, column: 12, scope: !1068)
!1070 = !DILocation(line: 384, column: 15, scope: !1068)
!1071 = !DILocation(line: 384, column: 9, scope: !1068)
!1072 = !DILocation(line: 384, column: 7, scope: !1045)
!1073 = !DILocation(line: 385, column: 5, scope: !1068)
!1074 = !DILocation(line: 386, column: 9, scope: !1045)
!1075 = !DILocation(line: 386, column: 11, scope: !1045)
!1076 = !DILocation(line: 386, column: 7, scope: !1045)
!1077 = !DILocation(line: 387, column: 12, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1045, file: !34, line: 387, column: 3)
!1079 = !DILocation(line: 387, column: 10, scope: !1078)
!1080 = !DILocation(line: 387, column: 8, scope: !1078)
!1081 = !DILocation(line: 387, column: 15, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !34, line: 387, column: 3)
!1083 = !DILocation(line: 387, column: 19, scope: !1082)
!1084 = !DILocation(line: 387, column: 22, scope: !1082)
!1085 = !DILocation(line: 387, column: 17, scope: !1082)
!1086 = !DILocation(line: 387, column: 3, scope: !1078)
!1087 = !DILocation(line: 388, column: 12, scope: !1082)
!1088 = !DILocation(line: 388, column: 14, scope: !1082)
!1089 = !DILocation(line: 388, column: 16, scope: !1082)
!1090 = !DILocation(line: 388, column: 5, scope: !1082)
!1091 = !DILocation(line: 388, column: 7, scope: !1082)
!1092 = !DILocation(line: 388, column: 10, scope: !1082)
!1093 = !DILocation(line: 387, column: 28, scope: !1082)
!1094 = !DILocation(line: 387, column: 3, scope: !1082)
!1095 = distinct !{!1095, !1086, !1096}
!1096 = !DILocation(line: 388, column: 19, scope: !1078)
!1097 = !DILocation(line: 389, column: 3, scope: !1045)
!1098 = !DILocation(line: 389, column: 6, scope: !1045)
!1099 = !DILocation(line: 389, column: 10, scope: !1045)
!1100 = !DILocation(line: 390, column: 11, scope: !1045)
!1101 = !DILocation(line: 390, column: 3, scope: !1045)
!1102 = !DILocation(line: 391, column: 1, scope: !1045)
!1103 = distinct !DISubprogram(name: "yv_uniq", scope: !34, file: !34, line: 397, type: !1104, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !25}
!1106 = !DILocalVariable(name: "v", arg: 1, scope: !1103, file: !34, line: 397, type: !25)
!1107 = !DILocation(line: 397, column: 22, scope: !1103)
!1108 = !DILocalVariable(name: "y", scope: !1103, file: !34, line: 399, type: !16)
!1109 = !DILocation(line: 399, column: 17, scope: !1103)
!1110 = !DILocalVariable(name: "i", scope: !1103, file: !34, line: 400, type: !21)
!1111 = !DILocation(line: 400, column: 10, scope: !1103)
!1112 = !DILocalVariable(name: "j", scope: !1103, file: !34, line: 400, type: !21)
!1113 = !DILocation(line: 400, column: 13, scope: !1103)
!1114 = !DILocalVariable(name: "k", scope: !1103, file: !34, line: 400, type: !21)
!1115 = !DILocation(line: 400, column: 16, scope: !1103)
!1116 = !DILocation(line: 402, column: 8, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1103, file: !34, line: 402, column: 7)
!1118 = !DILocation(line: 402, column: 7, scope: !1103)
!1119 = !DILocation(line: 403, column: 5, scope: !1117)
!1120 = !DILocation(line: 404, column: 31, scope: !1103)
!1121 = !DILocation(line: 404, column: 23, scope: !1103)
!1122 = !DILocation(line: 404, column: 33, scope: !1103)
!1123 = !DILocation(line: 404, column: 7, scope: !1103)
!1124 = !DILocation(line: 404, column: 5, scope: !1103)
!1125 = !DILocation(line: 405, column: 10, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1103, file: !34, line: 405, column: 3)
!1127 = !DILocation(line: 405, column: 8, scope: !1126)
!1128 = !DILocation(line: 405, column: 15, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !34, line: 405, column: 3)
!1130 = !DILocation(line: 405, column: 19, scope: !1129)
!1131 = !DILocation(line: 405, column: 22, scope: !1129)
!1132 = !DILocation(line: 405, column: 17, scope: !1129)
!1133 = !DILocation(line: 405, column: 3, scope: !1126)
!1134 = !DILocation(line: 407, column: 16, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !34, line: 407, column: 7)
!1136 = distinct !DILexicalBlock(scope: !1129, file: !34, line: 406, column: 5)
!1137 = !DILocation(line: 407, column: 18, scope: !1135)
!1138 = !DILocation(line: 407, column: 14, scope: !1135)
!1139 = !DILocation(line: 407, column: 12, scope: !1135)
!1140 = !DILocation(line: 407, column: 23, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1135, file: !34, line: 407, column: 7)
!1142 = !DILocation(line: 407, column: 27, scope: !1141)
!1143 = !DILocation(line: 407, column: 30, scope: !1141)
!1144 = !DILocation(line: 407, column: 25, scope: !1141)
!1145 = !DILocation(line: 407, column: 7, scope: !1135)
!1146 = !DILocation(line: 409, column: 15, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !34, line: 409, column: 15)
!1148 = distinct !DILexicalBlock(scope: !1141, file: !34, line: 408, column: 9)
!1149 = !DILocation(line: 409, column: 17, scope: !1147)
!1150 = !DILocation(line: 409, column: 23, scope: !1147)
!1151 = !DILocation(line: 409, column: 25, scope: !1147)
!1152 = !DILocation(line: 409, column: 20, scope: !1147)
!1153 = !DILocation(line: 409, column: 15, scope: !1148)
!1154 = !DILocation(line: 411, column: 24, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !34, line: 411, column: 15)
!1156 = distinct !DILexicalBlock(scope: !1147, file: !34, line: 410, column: 13)
!1157 = !DILocation(line: 411, column: 26, scope: !1155)
!1158 = !DILocation(line: 411, column: 22, scope: !1155)
!1159 = !DILocation(line: 411, column: 20, scope: !1155)
!1160 = !DILocation(line: 411, column: 31, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !34, line: 411, column: 15)
!1162 = !DILocation(line: 411, column: 36, scope: !1161)
!1163 = !DILocation(line: 411, column: 39, scope: !1161)
!1164 = !DILocation(line: 411, column: 44, scope: !1161)
!1165 = !DILocation(line: 411, column: 33, scope: !1161)
!1166 = !DILocation(line: 411, column: 15, scope: !1155)
!1167 = !DILocation(line: 412, column: 24, scope: !1161)
!1168 = !DILocation(line: 412, column: 26, scope: !1161)
!1169 = !DILocation(line: 412, column: 28, scope: !1161)
!1170 = !DILocation(line: 412, column: 17, scope: !1161)
!1171 = !DILocation(line: 412, column: 19, scope: !1161)
!1172 = !DILocation(line: 412, column: 22, scope: !1161)
!1173 = !DILocation(line: 411, column: 50, scope: !1161)
!1174 = !DILocation(line: 411, column: 15, scope: !1161)
!1175 = distinct !{!1175, !1166, !1176}
!1176 = !DILocation(line: 412, column: 31, scope: !1155)
!1177 = !DILocation(line: 413, column: 15, scope: !1156)
!1178 = !DILocation(line: 413, column: 18, scope: !1156)
!1179 = !DILocation(line: 413, column: 22, scope: !1156)
!1180 = !DILocation(line: 414, column: 13, scope: !1156)
!1181 = !DILocation(line: 415, column: 9, scope: !1148)
!1182 = !DILocation(line: 407, column: 36, scope: !1141)
!1183 = !DILocation(line: 407, column: 7, scope: !1141)
!1184 = distinct !{!1184, !1145, !1185}
!1185 = !DILocation(line: 415, column: 9, scope: !1135)
!1186 = !DILocation(line: 416, column: 5, scope: !1136)
!1187 = !DILocation(line: 405, column: 28, scope: !1129)
!1188 = !DILocation(line: 405, column: 3, scope: !1129)
!1189 = distinct !{!1189, !1133, !1190}
!1190 = !DILocation(line: 416, column: 5, scope: !1126)
!1191 = !DILocation(line: 417, column: 1, scope: !1103)
!1192 = distinct !DISubprogram(name: "yv_sort", scope: !34, file: !34, line: 423, type: !1193, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !25, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!185, !1198, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1200 = !DILocalVariable(name: "v", arg: 1, scope: !1192, file: !34, line: 423, type: !25)
!1201 = !DILocation(line: 423, column: 22, scope: !1192)
!1202 = !DILocalVariable(name: "f", arg: 2, scope: !1192, file: !34, line: 423, type: !1195)
!1203 = !DILocation(line: 423, column: 31, scope: !1192)
!1204 = !DILocalVariable(name: "y", scope: !1192, file: !34, line: 425, type: !16)
!1205 = !DILocation(line: 425, column: 17, scope: !1192)
!1206 = !DILocation(line: 427, column: 8, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1192, file: !34, line: 427, column: 7)
!1208 = !DILocation(line: 427, column: 7, scope: !1192)
!1209 = !DILocation(line: 428, column: 5, scope: !1207)
!1210 = !DILocation(line: 429, column: 31, scope: !1192)
!1211 = !DILocation(line: 429, column: 23, scope: !1192)
!1212 = !DILocation(line: 429, column: 33, scope: !1192)
!1213 = !DILocation(line: 429, column: 7, scope: !1192)
!1214 = !DILocation(line: 429, column: 5, scope: !1192)
!1215 = !DILocation(line: 430, column: 9, scope: !1192)
!1216 = !DILocation(line: 430, column: 12, scope: !1192)
!1217 = !DILocation(line: 430, column: 15, scope: !1192)
!1218 = !DILocation(line: 430, column: 36, scope: !1192)
!1219 = !DILocation(line: 430, column: 3, scope: !1192)
!1220 = !DILocation(line: 431, column: 1, scope: !1192)
!1221 = distinct !DISubprogram(name: "yv_search", scope: !34, file: !34, line: 439, type: !1222, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!185, !25, !15, !1195}
!1224 = !DILocalVariable(name: "v", arg: 1, scope: !1221, file: !34, line: 439, type: !25)
!1225 = !DILocation(line: 439, column: 23, scope: !1221)
!1226 = !DILocalVariable(name: "e", arg: 2, scope: !1221, file: !34, line: 439, type: !15)
!1227 = !DILocation(line: 439, column: 32, scope: !1221)
!1228 = !DILocalVariable(name: "f", arg: 3, scope: !1221, file: !34, line: 439, type: !1195)
!1229 = !DILocation(line: 439, column: 41, scope: !1221)
!1230 = !DILocalVariable(name: "y", scope: !1221, file: !34, line: 441, type: !16)
!1231 = !DILocation(line: 441, column: 17, scope: !1221)
!1232 = !DILocalVariable(name: "o_start", scope: !1221, file: !34, line: 442, type: !185)
!1233 = !DILocation(line: 442, column: 7, scope: !1221)
!1234 = !DILocalVariable(name: "o_end", scope: !1221, file: !34, line: 442, type: !185)
!1235 = !DILocation(line: 442, column: 16, scope: !1221)
!1236 = !DILocalVariable(name: "o_pivot", scope: !1221, file: !34, line: 442, type: !185)
!1237 = !DILocation(line: 442, column: 23, scope: !1221)
!1238 = !DILocalVariable(name: "cmp_res", scope: !1221, file: !34, line: 443, type: !185)
!1239 = !DILocation(line: 443, column: 7, scope: !1221)
!1240 = !DILocation(line: 445, column: 8, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1221, file: !34, line: 445, column: 7)
!1242 = !DILocation(line: 445, column: 10, scope: !1241)
!1243 = !DILocation(line: 445, column: 14, scope: !1241)
!1244 = !DILocation(line: 445, column: 7, scope: !1221)
!1245 = !DILocation(line: 446, column: 5, scope: !1241)
!1246 = !DILocation(line: 447, column: 31, scope: !1221)
!1247 = !DILocation(line: 447, column: 23, scope: !1221)
!1248 = !DILocation(line: 447, column: 33, scope: !1221)
!1249 = !DILocation(line: 447, column: 7, scope: !1221)
!1250 = !DILocation(line: 447, column: 5, scope: !1221)
!1251 = !DILocation(line: 448, column: 11, scope: !1221)
!1252 = !DILocation(line: 449, column: 11, scope: !1221)
!1253 = !DILocation(line: 449, column: 14, scope: !1221)
!1254 = !DILocation(line: 449, column: 19, scope: !1221)
!1255 = !DILocation(line: 449, column: 9, scope: !1221)
!1256 = !DILocation(line: 450, column: 3, scope: !1221)
!1257 = !DILocation(line: 452, column: 18, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !34, line: 451, column: 5)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !34, line: 450, column: 3)
!1260 = distinct !DILexicalBlock(scope: !1221, file: !34, line: 450, column: 3)
!1261 = !DILocation(line: 452, column: 26, scope: !1258)
!1262 = !DILocation(line: 452, column: 24, scope: !1258)
!1263 = !DILocation(line: 452, column: 35, scope: !1258)
!1264 = !DILocation(line: 452, column: 15, scope: !1258)
!1265 = !DILocation(line: 453, column: 23, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1258, file: !34, line: 453, column: 11)
!1267 = !DILocation(line: 453, column: 25, scope: !1266)
!1268 = !DILocation(line: 453, column: 28, scope: !1266)
!1269 = !DILocation(line: 453, column: 30, scope: !1266)
!1270 = !DILocation(line: 453, column: 21, scope: !1266)
!1271 = !DILocation(line: 453, column: 11, scope: !1258)
!1272 = !DILocation(line: 454, column: 10, scope: !1266)
!1273 = !DILocation(line: 454, column: 2, scope: !1266)
!1274 = !DILocation(line: 455, column: 11, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1258, file: !34, line: 455, column: 11)
!1276 = !DILocation(line: 455, column: 19, scope: !1275)
!1277 = !DILocation(line: 455, column: 11, scope: !1258)
!1278 = !DILocation(line: 457, column: 8, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !34, line: 457, column: 8)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !34, line: 456, column: 2)
!1281 = !DILocation(line: 457, column: 20, scope: !1279)
!1282 = !DILocation(line: 457, column: 28, scope: !1279)
!1283 = !DILocation(line: 457, column: 16, scope: !1279)
!1284 = !DILocation(line: 457, column: 8, scope: !1280)
!1285 = !DILocation(line: 459, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !34, line: 459, column: 12)
!1287 = distinct !DILexicalBlock(scope: !1279, file: !34, line: 458, column: 6)
!1288 = !DILocation(line: 459, column: 15, scope: !1286)
!1289 = !DILocation(line: 459, column: 18, scope: !1286)
!1290 = !DILocation(line: 459, column: 20, scope: !1286)
!1291 = !DILocation(line: 459, column: 12, scope: !1287)
!1292 = !DILocation(line: 460, column: 11, scope: !1286)
!1293 = !DILocation(line: 460, column: 3, scope: !1286)
!1294 = !DILocation(line: 462, column: 3, scope: !1286)
!1295 = !DILocation(line: 464, column: 12, scope: !1280)
!1296 = !DILocation(line: 464, column: 10, scope: !1280)
!1297 = !DILocation(line: 465, column: 2, scope: !1280)
!1298 = !DILocation(line: 468, column: 8, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !34, line: 468, column: 8)
!1300 = distinct !DILexicalBlock(scope: !1275, file: !34, line: 467, column: 2)
!1301 = !DILocation(line: 468, column: 20, scope: !1299)
!1302 = !DILocation(line: 468, column: 26, scope: !1299)
!1303 = !DILocation(line: 468, column: 16, scope: !1299)
!1304 = !DILocation(line: 468, column: 8, scope: !1300)
!1305 = !DILocation(line: 470, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !34, line: 470, column: 12)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !34, line: 469, column: 6)
!1308 = !DILocation(line: 470, column: 15, scope: !1306)
!1309 = !DILocation(line: 470, column: 18, scope: !1306)
!1310 = !DILocation(line: 470, column: 20, scope: !1306)
!1311 = !DILocation(line: 470, column: 12, scope: !1307)
!1312 = !DILocation(line: 471, column: 11, scope: !1306)
!1313 = !DILocation(line: 471, column: 3, scope: !1306)
!1314 = !DILocation(line: 473, column: 3, scope: !1306)
!1315 = !DILocation(line: 475, column: 14, scope: !1300)
!1316 = !DILocation(line: 475, column: 12, scope: !1300)
!1317 = !DILocation(line: 450, column: 3, scope: !1259)
!1318 = distinct !{!1318, !1319, !1320}
!1319 = !DILocation(line: 450, column: 3, scope: !1260)
!1320 = !DILocation(line: 477, column: 5, scope: !1260)
!1321 = !DILocation(line: 478, column: 1, scope: !1221)
