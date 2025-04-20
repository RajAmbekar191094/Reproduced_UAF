; ModuleID = './ydynabin.c'
source_filename = "./ydynabin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ydynabin_s = type { ptr, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ydynabin_new(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 !dbg !21 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !36, metadata !DIExpression()), !dbg !37
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata ptr %8, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata ptr %9, metadata !44, metadata !DIExpression()), !dbg !45
  %10 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #5, !dbg !46
  store ptr %10, ptr %8, align 8, !dbg !47
  %11 = load ptr, ptr %8, align 8, !dbg !48
  %12 = icmp eq ptr %11, null, !dbg !50
  br i1 %12, label %13, label %14, !dbg !51

13:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !52
  br label %69, !dbg !52

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8, !dbg !53
  %16 = icmp eq ptr %15, null, !dbg !55
  br i1 %16, label %20, label %17, !dbg !56

17:                                               ; preds = %14
  %18 = load i64, ptr %6, align 8, !dbg !57
  %19 = icmp eq i64 %18, 0, !dbg !58
  br i1 %19, label %20, label %22, !dbg !59

20:                                               ; preds = %17, %14
  %21 = load ptr, ptr %8, align 8, !dbg !60
  store ptr %21, ptr %4, align 8, !dbg !61
  br label %69, !dbg !61

22:                                               ; preds = %17
  %23 = load i32, ptr %7, align 4, !dbg !62
  %24 = icmp ne i32 %23, 0, !dbg !62
  br i1 %24, label %25, label %60, !dbg !64

25:                                               ; preds = %22
  %26 = load i64, ptr %6, align 8, !dbg !65
  %27 = icmp ne i64 %26, 0, !dbg !65
  br i1 %27, label %29, label %28, !dbg !65

28:                                               ; preds = %25
  br label %40, !dbg !65

29:                                               ; preds = %25
  %30 = load i64, ptr %6, align 8, !dbg !65
  %31 = icmp ult i64 %30, 104857600, !dbg !65
  br i1 %31, label %32, label %35, !dbg !65

32:                                               ; preds = %29
  %33 = load i64, ptr %6, align 8, !dbg !65
  %34 = mul i64 %33, 2, !dbg !65
  br label %38, !dbg !65

35:                                               ; preds = %29
  %36 = load i64, ptr %6, align 8, !dbg !65
  %37 = add i64 %36, 104857600, !dbg !65
  br label %38, !dbg !65

38:                                               ; preds = %35, %32
  %39 = phi i64 [ %34, %32 ], [ %37, %35 ], !dbg !65
  br label %40, !dbg !65

40:                                               ; preds = %38, %28
  %41 = phi i64 [ 0, %28 ], [ %39, %38 ], !dbg !65
  store i64 %41, ptr %9, align 8, !dbg !67
  %42 = load i64, ptr %9, align 8, !dbg !68
  %43 = load i64, ptr %9, align 8, !dbg !68
  %44 = urem i64 %43, 8192, !dbg !68
  %45 = add i64 %42, %44, !dbg !68
  store i64 %45, ptr %9, align 8, !dbg !69
  %46 = load i64, ptr %9, align 8, !dbg !70
  %47 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %46) #5, !dbg !70
  %48 = load ptr, ptr %8, align 8, !dbg !71
  %49 = getelementptr inbounds %struct.ydynabin_s, ptr %48, i32 0, i32 0, !dbg !72
  store ptr %47, ptr %49, align 8, !dbg !73
  %50 = load ptr, ptr %8, align 8, !dbg !74
  %51 = getelementptr inbounds %struct.ydynabin_s, ptr %50, i32 0, i32 0, !dbg !75
  %52 = load ptr, ptr %51, align 8, !dbg !75
  %53 = load ptr, ptr %5, align 8, !dbg !76
  %54 = load i64, ptr %6, align 8, !dbg !77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %53, i64 %54, i1 false), !dbg !78
  %55 = load i64, ptr %9, align 8, !dbg !79
  %56 = load i64, ptr %6, align 8, !dbg !80
  %57 = sub i64 %55, %56, !dbg !81
  %58 = load ptr, ptr %8, align 8, !dbg !82
  %59 = getelementptr inbounds %struct.ydynabin_s, ptr %58, i32 0, i32 3, !dbg !83
  store i64 %57, ptr %59, align 8, !dbg !84
  br label %64, !dbg !85

60:                                               ; preds = %22
  %61 = load ptr, ptr %5, align 8, !dbg !86
  %62 = load ptr, ptr %8, align 8, !dbg !87
  %63 = getelementptr inbounds %struct.ydynabin_s, ptr %62, i32 0, i32 0, !dbg !88
  store ptr %61, ptr %63, align 8, !dbg !89
  br label %64

64:                                               ; preds = %60, %40
  %65 = load i64, ptr %6, align 8, !dbg !90
  %66 = load ptr, ptr %8, align 8, !dbg !91
  %67 = getelementptr inbounds %struct.ydynabin_s, ptr %66, i32 0, i32 1, !dbg !92
  store i64 %65, ptr %67, align 8, !dbg !93
  %68 = load ptr, ptr %8, align 8, !dbg !94
  store ptr %68, ptr %4, align 8, !dbg !95
  br label %69, !dbg !95

69:                                               ; preds = %64, %20, %13
  %70 = load ptr, ptr %4, align 8, !dbg !96
  ret ptr %70, !dbg !96
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @ydynabin_delete(ptr noundef %0) #0 !dbg !97 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata ptr %3, metadata !102, metadata !DIExpression()), !dbg !103
  %4 = load ptr, ptr %2, align 8, !dbg !104
  %5 = icmp eq ptr %4, null, !dbg !106
  br i1 %5, label %6, label %7, !dbg !107

6:                                                ; preds = %1
  br label %37, !dbg !108

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !109
  %9 = getelementptr inbounds %struct.ydynabin_s, ptr %8, i32 0, i32 0, !dbg !111
  %10 = load ptr, ptr %9, align 8, !dbg !111
  %11 = icmp ne ptr %10, null, !dbg !109
  br i1 %11, label %12, label %29, !dbg !112

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !dbg !113
  %14 = getelementptr inbounds %struct.ydynabin_s, ptr %13, i32 0, i32 0, !dbg !115
  %15 = load ptr, ptr %14, align 8, !dbg !115
  %16 = ptrtoint ptr %15 to i64, !dbg !116
  %17 = load ptr, ptr %2, align 8, !dbg !117
  %18 = getelementptr inbounds %struct.ydynabin_s, ptr %17, i32 0, i32 2, !dbg !118
  %19 = load i64, ptr %18, align 8, !dbg !118
  %20 = sub i64 %16, %19, !dbg !119
  %21 = inttoptr i64 %20 to ptr, !dbg !120
  store ptr %21, ptr %3, align 8, !dbg !121
  %22 = load ptr, ptr %3, align 8, !dbg !122
  %23 = icmp ne ptr %22, null, !dbg !122
  br i1 %23, label %24, label %26, !dbg !122

24:                                               ; preds = %12
  %25 = load ptr, ptr %3, align 8, !dbg !122
  call void @free(ptr noundef %25) #6, !dbg !122
  br label %27, !dbg !122

26:                                               ; preds = %12
  br label %27, !dbg !122

27:                                               ; preds = %26, %24
  %28 = phi ptr [ null, %24 ], [ null, %26 ], !dbg !122
  store ptr null, ptr %3, align 8, !dbg !122
  br label %29, !dbg !123

29:                                               ; preds = %27, %7
  %30 = load ptr, ptr %2, align 8, !dbg !124
  %31 = icmp ne ptr %30, null, !dbg !124
  br i1 %31, label %32, label %34, !dbg !124

32:                                               ; preds = %29
  %33 = load ptr, ptr %2, align 8, !dbg !124
  call void @free(ptr noundef %33) #6, !dbg !124
  br label %35, !dbg !124

34:                                               ; preds = %29
  br label %35, !dbg !124

35:                                               ; preds = %34, %32
  %36 = phi ptr [ null, %32 ], [ null, %34 ], !dbg !124
  store ptr null, ptr %2, align 8, !dbg !124
  br label %37, !dbg !125

37:                                               ; preds = %35, %6
  ret void, !dbg !125
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ydynabin_expand(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !126 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !132, metadata !DIExpression()), !dbg !133
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !134, metadata !DIExpression()), !dbg !135
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata ptr %8, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata ptr %9, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata ptr %10, metadata !142, metadata !DIExpression()), !dbg !143
  %11 = load ptr, ptr %6, align 8, !dbg !144
  %12 = icmp ne ptr %11, null, !dbg !144
  br i1 %12, label %13, label %16, !dbg !146

13:                                               ; preds = %3
  %14 = load i64, ptr %7, align 8, !dbg !147
  %15 = icmp ne i64 %14, 0, !dbg !147
  br i1 %15, label %17, label %16, !dbg !148

16:                                               ; preds = %13, %3
  store i32 1, ptr %4, align 4, !dbg !149
  br label %118, !dbg !149

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 8, !dbg !150
  %19 = getelementptr inbounds %struct.ydynabin_s, ptr %18, i32 0, i32 3, !dbg !152
  %20 = load i64, ptr %19, align 8, !dbg !152
  %21 = load i64, ptr %7, align 8, !dbg !153
  %22 = icmp ult i64 %20, %21, !dbg !154
  br i1 %22, label %23, label %95, !dbg !155

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 8, !dbg !156
  %25 = getelementptr inbounds %struct.ydynabin_s, ptr %24, i32 0, i32 1, !dbg !158
  %26 = load i64, ptr %25, align 8, !dbg !158
  %27 = load i64, ptr %7, align 8, !dbg !159
  %28 = add i64 %26, %27, !dbg !160
  store i64 %28, ptr %8, align 8, !dbg !161
  %29 = load i64, ptr %7, align 8, !dbg !162
  %30 = icmp ne i64 %29, 0, !dbg !162
  br i1 %30, label %32, label %31, !dbg !162

31:                                               ; preds = %23
  br label %43, !dbg !162

32:                                               ; preds = %23
  %33 = load i64, ptr %7, align 8, !dbg !162
  %34 = icmp ult i64 %33, 104857600, !dbg !162
  br i1 %34, label %35, label %38, !dbg !162

35:                                               ; preds = %32
  %36 = load i64, ptr %7, align 8, !dbg !162
  %37 = mul i64 %36, 2, !dbg !162
  br label %41, !dbg !162

38:                                               ; preds = %32
  %39 = load i64, ptr %7, align 8, !dbg !162
  %40 = add i64 %39, 104857600, !dbg !162
  br label %41, !dbg !162

41:                                               ; preds = %38, %35
  %42 = phi i64 [ %37, %35 ], [ %40, %38 ], !dbg !162
  br label %43, !dbg !162

43:                                               ; preds = %41, %31
  %44 = phi i64 [ 0, %31 ], [ %42, %41 ], !dbg !162
  store i64 %44, ptr %8, align 8, !dbg !163
  %45 = load i64, ptr %8, align 8, !dbg !164
  %46 = load i64, ptr %8, align 8, !dbg !164
  %47 = urem i64 %46, 8192, !dbg !164
  %48 = add i64 %45, %47, !dbg !164
  store i64 %48, ptr %8, align 8, !dbg !165
  %49 = load i64, ptr %8, align 8, !dbg !166
  %50 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %49) #5, !dbg !166
  store ptr %50, ptr %9, align 8, !dbg !168
  %51 = icmp eq ptr %50, null, !dbg !169
  br i1 %51, label %52, label %53, !dbg !170

52:                                               ; preds = %43
  store i32 -12, ptr %4, align 4, !dbg !171
  br label %118, !dbg !171

53:                                               ; preds = %43
  %54 = load ptr, ptr %5, align 8, !dbg !172
  %55 = getelementptr inbounds %struct.ydynabin_s, ptr %54, i32 0, i32 1, !dbg !174
  %56 = load i64, ptr %55, align 8, !dbg !174
  %57 = icmp ne i64 %56, 0, !dbg !172
  br i1 %57, label %58, label %66, !dbg !175

58:                                               ; preds = %53
  %59 = load ptr, ptr %9, align 8, !dbg !176
  %60 = load ptr, ptr %5, align 8, !dbg !177
  %61 = getelementptr inbounds %struct.ydynabin_s, ptr %60, i32 0, i32 0, !dbg !178
  %62 = load ptr, ptr %61, align 8, !dbg !178
  %63 = load ptr, ptr %5, align 8, !dbg !179
  %64 = getelementptr inbounds %struct.ydynabin_s, ptr %63, i32 0, i32 1, !dbg !180
  %65 = load i64, ptr %64, align 8, !dbg !180
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %62, i64 %65, i1 false), !dbg !181
  br label %66, !dbg !181

66:                                               ; preds = %58, %53
  %67 = load ptr, ptr %5, align 8, !dbg !182
  %68 = getelementptr inbounds %struct.ydynabin_s, ptr %67, i32 0, i32 0, !dbg !183
  %69 = load ptr, ptr %68, align 8, !dbg !183
  %70 = ptrtoint ptr %69 to i64, !dbg !184
  %71 = load ptr, ptr %5, align 8, !dbg !185
  %72 = getelementptr inbounds %struct.ydynabin_s, ptr %71, i32 0, i32 2, !dbg !186
  %73 = load i64, ptr %72, align 8, !dbg !186
  %74 = sub i64 %70, %73, !dbg !187
  %75 = inttoptr i64 %74 to ptr, !dbg !188
  store ptr %75, ptr %10, align 8, !dbg !189
  %76 = load ptr, ptr %10, align 8, !dbg !190
  %77 = icmp ne ptr %76, null, !dbg !190
  br i1 %77, label %78, label %80, !dbg !190

78:                                               ; preds = %66
  %79 = load ptr, ptr %10, align 8, !dbg !190
  call void @free(ptr noundef %79) #6, !dbg !190
  br label %81, !dbg !190

80:                                               ; preds = %66
  br label %81, !dbg !190

81:                                               ; preds = %80, %78
  %82 = phi ptr [ null, %78 ], [ null, %80 ], !dbg !190
  store ptr null, ptr %10, align 8, !dbg !190
  %83 = load ptr, ptr %9, align 8, !dbg !191
  %84 = load ptr, ptr %5, align 8, !dbg !192
  %85 = getelementptr inbounds %struct.ydynabin_s, ptr %84, i32 0, i32 0, !dbg !193
  store ptr %83, ptr %85, align 8, !dbg !194
  %86 = load i64, ptr %8, align 8, !dbg !195
  %87 = load ptr, ptr %5, align 8, !dbg !196
  %88 = getelementptr inbounds %struct.ydynabin_s, ptr %87, i32 0, i32 1, !dbg !197
  %89 = load i64, ptr %88, align 8, !dbg !197
  %90 = sub i64 %86, %89, !dbg !198
  %91 = load ptr, ptr %5, align 8, !dbg !199
  %92 = getelementptr inbounds %struct.ydynabin_s, ptr %91, i32 0, i32 3, !dbg !200
  store i64 %90, ptr %92, align 8, !dbg !201
  %93 = load ptr, ptr %5, align 8, !dbg !202
  %94 = getelementptr inbounds %struct.ydynabin_s, ptr %93, i32 0, i32 2, !dbg !203
  store i64 0, ptr %94, align 8, !dbg !204
  br label %95, !dbg !205

95:                                               ; preds = %81, %17
  %96 = load ptr, ptr %5, align 8, !dbg !206
  %97 = getelementptr inbounds %struct.ydynabin_s, ptr %96, i32 0, i32 0, !dbg !207
  %98 = load ptr, ptr %97, align 8, !dbg !207
  %99 = ptrtoint ptr %98 to i64, !dbg !208
  %100 = load ptr, ptr %5, align 8, !dbg !209
  %101 = getelementptr inbounds %struct.ydynabin_s, ptr %100, i32 0, i32 1, !dbg !210
  %102 = load i64, ptr %101, align 8, !dbg !210
  %103 = add i64 %99, %102, !dbg !211
  %104 = inttoptr i64 %103 to ptr, !dbg !212
  store ptr %104, ptr %10, align 8, !dbg !213
  %105 = load ptr, ptr %10, align 8, !dbg !214
  %106 = load ptr, ptr %6, align 8, !dbg !215
  %107 = load i64, ptr %7, align 8, !dbg !216
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %105, ptr align 1 %106, i64 %107, i1 false), !dbg !217
  %108 = load i64, ptr %7, align 8, !dbg !218
  %109 = load ptr, ptr %5, align 8, !dbg !219
  %110 = getelementptr inbounds %struct.ydynabin_s, ptr %109, i32 0, i32 1, !dbg !220
  %111 = load i64, ptr %110, align 8, !dbg !221
  %112 = add i64 %111, %108, !dbg !221
  store i64 %112, ptr %110, align 8, !dbg !221
  %113 = load i64, ptr %7, align 8, !dbg !222
  %114 = load ptr, ptr %5, align 8, !dbg !223
  %115 = getelementptr inbounds %struct.ydynabin_s, ptr %114, i32 0, i32 3, !dbg !224
  %116 = load i64, ptr %115, align 8, !dbg !225
  %117 = sub i64 %116, %113, !dbg !225
  store i64 %117, ptr %115, align 8, !dbg !225
  store i32 1, ptr %4, align 4, !dbg !226
  br label %118, !dbg !226

118:                                              ; preds = %95, %52, %16
  %119 = load i32, ptr %4, align 4, !dbg !227
  ret i32 %119, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ydynabin_forward(ptr noundef %0, i64 noundef %1) #0 !dbg !228 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !231, metadata !DIExpression()), !dbg !232
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata ptr %6, metadata !235, metadata !DIExpression()), !dbg !236
  %7 = load ptr, ptr %4, align 8, !dbg !237
  %8 = getelementptr inbounds %struct.ydynabin_s, ptr %7, i32 0, i32 0, !dbg !238
  %9 = load ptr, ptr %8, align 8, !dbg !238
  store ptr %9, ptr %6, align 8, !dbg !236
  %10 = load ptr, ptr %4, align 8, !dbg !239
  %11 = getelementptr inbounds %struct.ydynabin_s, ptr %10, i32 0, i32 1, !dbg !241
  %12 = load i64, ptr %11, align 8, !dbg !241
  %13 = load i64, ptr %5, align 8, !dbg !242
  %14 = icmp ult i64 %12, %13, !dbg !243
  br i1 %14, label %15, label %16, !dbg !244

15:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !245
  br label %37, !dbg !245

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !dbg !246
  %18 = getelementptr inbounds %struct.ydynabin_s, ptr %17, i32 0, i32 0, !dbg !247
  %19 = load ptr, ptr %18, align 8, !dbg !247
  %20 = ptrtoint ptr %19 to i64, !dbg !248
  %21 = load i64, ptr %5, align 8, !dbg !249
  %22 = add i64 %20, %21, !dbg !250
  %23 = inttoptr i64 %22 to ptr, !dbg !251
  %24 = load ptr, ptr %4, align 8, !dbg !252
  %25 = getelementptr inbounds %struct.ydynabin_s, ptr %24, i32 0, i32 0, !dbg !253
  store ptr %23, ptr %25, align 8, !dbg !254
  %26 = load i64, ptr %5, align 8, !dbg !255
  %27 = load ptr, ptr %4, align 8, !dbg !256
  %28 = getelementptr inbounds %struct.ydynabin_s, ptr %27, i32 0, i32 1, !dbg !257
  %29 = load i64, ptr %28, align 8, !dbg !258
  %30 = sub i64 %29, %26, !dbg !258
  store i64 %30, ptr %28, align 8, !dbg !258
  %31 = load i64, ptr %5, align 8, !dbg !259
  %32 = load ptr, ptr %4, align 8, !dbg !260
  %33 = getelementptr inbounds %struct.ydynabin_s, ptr %32, i32 0, i32 2, !dbg !261
  %34 = load i64, ptr %33, align 8, !dbg !262
  %35 = add i64 %34, %31, !dbg !262
  store i64 %35, ptr %33, align 8, !dbg !262
  %36 = load ptr, ptr %6, align 8, !dbg !263
  store ptr %36, ptr %3, align 8, !dbg !264
  br label %37, !dbg !264

37:                                               ; preds = %16, %15
  %38 = load ptr, ptr %3, align 8, !dbg !265
  ret ptr %38, !dbg !265
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ydynabin.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "af9f250252d84b3bfd54663655395d9d")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !4, line: 45, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./ydefs.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "YFALSE", value: 0)
!8 = !DIEnumerator(name: "YTRUE", value: 1)
!9 = !{!10, !11}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 46, baseType: !13)
!12 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 16.0.0"}
!21 = distinct !DISubprogram(name: "ydynabin_new", scope: !22, file: !22, line: 5, type: !23, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!22 = !DIFile(filename: "./ydynabin.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "af9f250252d84b3bfd54663655395d9d")
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !10, !11, !34}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !27, line: 45, baseType: !28)
!27 = !DIFile(filename: "./ydynabin.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !27, line: 37, size: 256, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !28, file: !27, line: 38, baseType: !10, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !28, file: !27, line: 39, baseType: !11, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !28, file: !27, line: 40, baseType: !11, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !28, file: !27, line: 41, baseType: !11, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !4, line: 52, baseType: !3)
!35 = !{}
!36 = !DILocalVariable(name: "data", arg: 1, scope: !21, file: !22, line: 5, type: !10)
!37 = !DILocation(line: 5, column: 32, scope: !21)
!38 = !DILocalVariable(name: "len", arg: 2, scope: !21, file: !22, line: 5, type: !11)
!39 = !DILocation(line: 5, column: 45, scope: !21)
!40 = !DILocalVariable(name: "must_copy", arg: 3, scope: !21, file: !22, line: 5, type: !34)
!41 = !DILocation(line: 5, column: 58, scope: !21)
!42 = !DILocalVariable(name: "container", scope: !21, file: !22, line: 6, type: !25)
!43 = !DILocation(line: 6, column: 14, scope: !21)
!44 = !DILocalVariable(name: "sz", scope: !21, file: !22, line: 7, type: !11)
!45 = !DILocation(line: 7, column: 9, scope: !21)
!46 = !DILocation(line: 9, column: 14, scope: !21)
!47 = !DILocation(line: 9, column: 12, scope: !21)
!48 = !DILocation(line: 10, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !21, file: !22, line: 10, column: 6)
!50 = !DILocation(line: 10, column: 16, scope: !49)
!51 = !DILocation(line: 10, column: 6, scope: !21)
!52 = !DILocation(line: 11, column: 3, scope: !49)
!53 = !DILocation(line: 12, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !21, file: !22, line: 12, column: 6)
!55 = !DILocation(line: 12, column: 11, scope: !54)
!56 = !DILocation(line: 12, column: 19, scope: !54)
!57 = !DILocation(line: 12, column: 22, scope: !54)
!58 = !DILocation(line: 12, column: 26, scope: !54)
!59 = !DILocation(line: 12, column: 6, scope: !21)
!60 = !DILocation(line: 13, column: 11, scope: !54)
!61 = !DILocation(line: 13, column: 3, scope: !54)
!62 = !DILocation(line: 14, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !21, file: !22, line: 14, column: 6)
!64 = !DILocation(line: 14, column: 6, scope: !21)
!65 = !DILocation(line: 15, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !22, line: 14, column: 17)
!67 = !DILocation(line: 15, column: 6, scope: !66)
!68 = !DILocation(line: 16, column: 8, scope: !66)
!69 = !DILocation(line: 16, column: 6, scope: !66)
!70 = !DILocation(line: 17, column: 21, scope: !66)
!71 = !DILocation(line: 17, column: 3, scope: !66)
!72 = !DILocation(line: 17, column: 14, scope: !66)
!73 = !DILocation(line: 17, column: 19, scope: !66)
!74 = !DILocation(line: 18, column: 10, scope: !66)
!75 = !DILocation(line: 18, column: 21, scope: !66)
!76 = !DILocation(line: 18, column: 27, scope: !66)
!77 = !DILocation(line: 18, column: 33, scope: !66)
!78 = !DILocation(line: 18, column: 3, scope: !66)
!79 = !DILocation(line: 19, column: 21, scope: !66)
!80 = !DILocation(line: 19, column: 26, scope: !66)
!81 = !DILocation(line: 19, column: 24, scope: !66)
!82 = !DILocation(line: 19, column: 3, scope: !66)
!83 = !DILocation(line: 19, column: 14, scope: !66)
!84 = !DILocation(line: 19, column: 19, scope: !66)
!85 = !DILocation(line: 20, column: 2, scope: !66)
!86 = !DILocation(line: 21, column: 21, scope: !63)
!87 = !DILocation(line: 21, column: 3, scope: !63)
!88 = !DILocation(line: 21, column: 14, scope: !63)
!89 = !DILocation(line: 21, column: 19, scope: !63)
!90 = !DILocation(line: 22, column: 19, scope: !21)
!91 = !DILocation(line: 22, column: 2, scope: !21)
!92 = !DILocation(line: 22, column: 13, scope: !21)
!93 = !DILocation(line: 22, column: 17, scope: !21)
!94 = !DILocation(line: 23, column: 10, scope: !21)
!95 = !DILocation(line: 23, column: 2, scope: !21)
!96 = !DILocation(line: 24, column: 1, scope: !21)
!97 = distinct !DISubprogram(name: "ydynabin_delete", scope: !22, file: !22, line: 27, type: !98, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !25}
!100 = !DILocalVariable(name: "container", arg: 1, scope: !97, file: !22, line: 27, type: !25)
!101 = !DILocation(line: 27, column: 34, scope: !97)
!102 = !DILocalVariable(name: "ptr", scope: !97, file: !22, line: 28, type: !10)
!103 = !DILocation(line: 28, column: 8, scope: !97)
!104 = !DILocation(line: 30, column: 6, scope: !105)
!105 = distinct !DILexicalBlock(scope: !97, file: !22, line: 30, column: 6)
!106 = !DILocation(line: 30, column: 16, scope: !105)
!107 = !DILocation(line: 30, column: 6, scope: !97)
!108 = !DILocation(line: 31, column: 3, scope: !105)
!109 = !DILocation(line: 32, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !97, file: !22, line: 32, column: 6)
!111 = !DILocation(line: 32, column: 17, scope: !110)
!112 = !DILocation(line: 32, column: 6, scope: !97)
!113 = !DILocation(line: 33, column: 25, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !22, line: 32, column: 23)
!115 = !DILocation(line: 33, column: 36, scope: !114)
!116 = !DILocation(line: 33, column: 17, scope: !114)
!117 = !DILocation(line: 33, column: 43, scope: !114)
!118 = !DILocation(line: 33, column: 54, scope: !114)
!119 = !DILocation(line: 33, column: 41, scope: !114)
!120 = !DILocation(line: 33, column: 9, scope: !114)
!121 = !DILocation(line: 33, column: 7, scope: !114)
!122 = !DILocation(line: 34, column: 3, scope: !114)
!123 = !DILocation(line: 35, column: 2, scope: !114)
!124 = !DILocation(line: 36, column: 2, scope: !97)
!125 = !DILocation(line: 37, column: 1, scope: !97)
!126 = distinct !DISubprogram(name: "ydynabin_expand", scope: !22, file: !22, line: 40, type: !127, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !25, !10, !11}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !130, line: 23, baseType: !131)
!130 = !DIFile(filename: "./yerror.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!131 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!132 = !DILocalVariable(name: "container", arg: 1, scope: !126, file: !22, line: 40, type: !25)
!133 = !DILocation(line: 40, column: 36, scope: !126)
!134 = !DILocalVariable(name: "data", arg: 2, scope: !126, file: !22, line: 40, type: !10)
!135 = !DILocation(line: 40, column: 53, scope: !126)
!136 = !DILocalVariable(name: "len", arg: 3, scope: !126, file: !22, line: 40, type: !11)
!137 = !DILocation(line: 40, column: 66, scope: !126)
!138 = !DILocalVariable(name: "sz", scope: !126, file: !22, line: 41, type: !11)
!139 = !DILocation(line: 41, column: 9, scope: !126)
!140 = !DILocalVariable(name: "ptr", scope: !126, file: !22, line: 42, type: !10)
!141 = !DILocation(line: 42, column: 8, scope: !126)
!142 = !DILocalVariable(name: "pt", scope: !126, file: !22, line: 42, type: !10)
!143 = !DILocation(line: 42, column: 14, scope: !126)
!144 = !DILocation(line: 44, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !126, file: !22, line: 44, column: 6)
!146 = !DILocation(line: 44, column: 12, scope: !145)
!147 = !DILocation(line: 44, column: 16, scope: !145)
!148 = !DILocation(line: 44, column: 6, scope: !126)
!149 = !DILocation(line: 45, column: 3, scope: !145)
!150 = !DILocation(line: 46, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !126, file: !22, line: 46, column: 6)
!152 = !DILocation(line: 46, column: 17, scope: !151)
!153 = !DILocation(line: 46, column: 24, scope: !151)
!154 = !DILocation(line: 46, column: 22, scope: !151)
!155 = !DILocation(line: 46, column: 6, scope: !126)
!156 = !DILocation(line: 49, column: 8, scope: !157)
!157 = distinct !DILexicalBlock(scope: !151, file: !22, line: 46, column: 29)
!158 = !DILocation(line: 49, column: 19, scope: !157)
!159 = !DILocation(line: 49, column: 25, scope: !157)
!160 = !DILocation(line: 49, column: 23, scope: !157)
!161 = !DILocation(line: 49, column: 6, scope: !157)
!162 = !DILocation(line: 50, column: 8, scope: !157)
!163 = !DILocation(line: 50, column: 6, scope: !157)
!164 = !DILocation(line: 51, column: 8, scope: !157)
!165 = !DILocation(line: 51, column: 6, scope: !157)
!166 = !DILocation(line: 52, column: 14, scope: !167)
!167 = distinct !DILexicalBlock(scope: !157, file: !22, line: 52, column: 7)
!168 = !DILocation(line: 52, column: 12, scope: !167)
!169 = !DILocation(line: 52, column: 27, scope: !167)
!170 = !DILocation(line: 52, column: 7, scope: !157)
!171 = !DILocation(line: 53, column: 4, scope: !167)
!172 = !DILocation(line: 55, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !157, file: !22, line: 55, column: 7)
!174 = !DILocation(line: 55, column: 18, scope: !173)
!175 = !DILocation(line: 55, column: 7, scope: !157)
!176 = !DILocation(line: 56, column: 11, scope: !173)
!177 = !DILocation(line: 56, column: 16, scope: !173)
!178 = !DILocation(line: 56, column: 27, scope: !173)
!179 = !DILocation(line: 56, column: 33, scope: !173)
!180 = !DILocation(line: 56, column: 44, scope: !173)
!181 = !DILocation(line: 56, column: 4, scope: !173)
!182 = !DILocation(line: 58, column: 24, scope: !157)
!183 = !DILocation(line: 58, column: 35, scope: !157)
!184 = !DILocation(line: 58, column: 16, scope: !157)
!185 = !DILocation(line: 58, column: 42, scope: !157)
!186 = !DILocation(line: 58, column: 53, scope: !157)
!187 = !DILocation(line: 58, column: 40, scope: !157)
!188 = !DILocation(line: 58, column: 8, scope: !157)
!189 = !DILocation(line: 58, column: 6, scope: !157)
!190 = !DILocation(line: 59, column: 3, scope: !157)
!191 = !DILocation(line: 61, column: 21, scope: !157)
!192 = !DILocation(line: 61, column: 3, scope: !157)
!193 = !DILocation(line: 61, column: 14, scope: !157)
!194 = !DILocation(line: 61, column: 19, scope: !157)
!195 = !DILocation(line: 62, column: 21, scope: !157)
!196 = !DILocation(line: 62, column: 26, scope: !157)
!197 = !DILocation(line: 62, column: 37, scope: !157)
!198 = !DILocation(line: 62, column: 24, scope: !157)
!199 = !DILocation(line: 62, column: 3, scope: !157)
!200 = !DILocation(line: 62, column: 14, scope: !157)
!201 = !DILocation(line: 62, column: 19, scope: !157)
!202 = !DILocation(line: 63, column: 3, scope: !157)
!203 = !DILocation(line: 63, column: 14, scope: !157)
!204 = !DILocation(line: 63, column: 21, scope: !157)
!205 = !DILocation(line: 64, column: 2, scope: !157)
!206 = !DILocation(line: 66, column: 23, scope: !126)
!207 = !DILocation(line: 66, column: 34, scope: !126)
!208 = !DILocation(line: 66, column: 15, scope: !126)
!209 = !DILocation(line: 66, column: 41, scope: !126)
!210 = !DILocation(line: 66, column: 52, scope: !126)
!211 = !DILocation(line: 66, column: 39, scope: !126)
!212 = !DILocation(line: 66, column: 7, scope: !126)
!213 = !DILocation(line: 66, column: 5, scope: !126)
!214 = !DILocation(line: 67, column: 9, scope: !126)
!215 = !DILocation(line: 67, column: 13, scope: !126)
!216 = !DILocation(line: 67, column: 19, scope: !126)
!217 = !DILocation(line: 67, column: 2, scope: !126)
!218 = !DILocation(line: 69, column: 20, scope: !126)
!219 = !DILocation(line: 69, column: 2, scope: !126)
!220 = !DILocation(line: 69, column: 13, scope: !126)
!221 = !DILocation(line: 69, column: 17, scope: !126)
!222 = !DILocation(line: 70, column: 21, scope: !126)
!223 = !DILocation(line: 70, column: 2, scope: !126)
!224 = !DILocation(line: 70, column: 13, scope: !126)
!225 = !DILocation(line: 70, column: 18, scope: !126)
!226 = !DILocation(line: 71, column: 2, scope: !126)
!227 = !DILocation(line: 72, column: 1, scope: !126)
!228 = distinct !DISubprogram(name: "ydynabin_forward", scope: !22, file: !22, line: 75, type: !229, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!229 = !DISubroutineType(types: !230)
!230 = !{!10, !25, !11}
!231 = !DILocalVariable(name: "container", arg: 1, scope: !228, file: !22, line: 75, type: !25)
!232 = !DILocation(line: 75, column: 36, scope: !228)
!233 = !DILocalVariable(name: "forward", arg: 2, scope: !228, file: !22, line: 75, type: !11)
!234 = !DILocation(line: 75, column: 54, scope: !228)
!235 = !DILocalVariable(name: "orig", scope: !228, file: !22, line: 76, type: !10)
!236 = !DILocation(line: 76, column: 8, scope: !228)
!237 = !DILocation(line: 76, column: 15, scope: !228)
!238 = !DILocation(line: 76, column: 26, scope: !228)
!239 = !DILocation(line: 78, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !228, file: !22, line: 78, column: 6)
!241 = !DILocation(line: 78, column: 17, scope: !240)
!242 = !DILocation(line: 78, column: 23, scope: !240)
!243 = !DILocation(line: 78, column: 21, scope: !240)
!244 = !DILocation(line: 78, column: 6, scope: !228)
!245 = !DILocation(line: 79, column: 3, scope: !240)
!246 = !DILocation(line: 80, column: 36, scope: !228)
!247 = !DILocation(line: 80, column: 47, scope: !228)
!248 = !DILocation(line: 80, column: 28, scope: !228)
!249 = !DILocation(line: 80, column: 54, scope: !228)
!250 = !DILocation(line: 80, column: 52, scope: !228)
!251 = !DILocation(line: 80, column: 20, scope: !228)
!252 = !DILocation(line: 80, column: 2, scope: !228)
!253 = !DILocation(line: 80, column: 13, scope: !228)
!254 = !DILocation(line: 80, column: 18, scope: !228)
!255 = !DILocation(line: 81, column: 20, scope: !228)
!256 = !DILocation(line: 81, column: 2, scope: !228)
!257 = !DILocation(line: 81, column: 13, scope: !228)
!258 = !DILocation(line: 81, column: 17, scope: !228)
!259 = !DILocation(line: 82, column: 23, scope: !228)
!260 = !DILocation(line: 82, column: 2, scope: !228)
!261 = !DILocation(line: 82, column: 13, scope: !228)
!262 = !DILocation(line: 82, column: 20, scope: !228)
!263 = !DILocation(line: 83, column: 10, scope: !228)
!264 = !DILocation(line: 83, column: 2, scope: !228)
!265 = !DILocation(line: 84, column: 1, scope: !228)
