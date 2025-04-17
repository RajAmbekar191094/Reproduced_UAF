; ModuleID = '/home/raj/coturn/src/server/ns_turn_maps.c'
source_filename = "/home/raj/coturn/src/server/ns_turn_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ur_map = type { ptr, i64, %struct._turn_mutex }
%struct._turn_mutex = type { i32, ptr }
%struct.kh_3_t = type { i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct._lm_map = type { [8 x %struct._lm_map_array] }
%struct._lm_map_array = type { [3 x i64], [3 x i64], i64, ptr, ptr }
%struct._ur_addr_map = type { [1024 x %struct._addr_list_header], i64 }
%struct._addr_list_header = type { [4 x %struct._addr_elem], ptr, i64 }
%struct._addr_elem = type { %union.ioa_addr, i64 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._ur_string_map = type { [1024 x %struct._string_list_header], i64, ptr, %struct._turn_mutex }
%struct._string_list_header = type { ptr }
%struct._string_elem = type { %struct._string_list, ptr, i32, ptr }
%struct._string_list = type { ptr }

@ur_map_free.khctest = internal global i32 0, align 4, !dbg !0
@__ac_prime_list = internal constant [32 x i32] [i32 0, i32 3, i32 11, i32 23, i32 53, i32 97, i32 193, i32 389, i32 769, i32 1543, i32 3079, i32 6151, i32 12289, i32 24593, i32 49157, i32 98317, i32 196613, i32 393241, i32 786433, i32 1572869, i32 3145739, i32 6291469, i32 12582917, i32 25165843, i32 50331653, i32 100663319, i32 201326611, i32 402653189, i32 805306457, i32 1610612741, i32 -1073741823, i32 -5], align 16, !dbg !172

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @ur_map_create() #0 !dbg !187 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !190, metadata !DIExpression()), !dbg !191
  %3 = call noalias ptr @malloc(i64 noundef 32) #9, !dbg !192
  store ptr %3, ptr %2, align 8, !dbg !191
  %4 = load ptr, ptr %2, align 8, !dbg !193
  %5 = call i32 @ur_map_init(ptr noundef %4), !dbg !195
  %6 = icmp slt i32 %5, 0, !dbg !196
  br i1 %6, label %7, label %9, !dbg !197

7:                                                ; preds = %0
  %8 = load ptr, ptr %2, align 8, !dbg !198
  call void @free(ptr noundef %8) #10, !dbg !200
  store ptr null, ptr %1, align 8, !dbg !201
  br label %11, !dbg !201

9:                                                ; preds = %0
  %10 = load ptr, ptr %2, align 8, !dbg !202
  store ptr %10, ptr %1, align 8, !dbg !203
  br label %11, !dbg !203

11:                                               ; preds = %9, %7
  %12 = load ptr, ptr %1, align 8, !dbg !204
  ret ptr %12, !dbg !204
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_map_init(ptr noundef %0) #0 !dbg !205 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !208, metadata !DIExpression()), !dbg !209
  %4 = load ptr, ptr %3, align 8, !dbg !210
  %5 = icmp ne ptr %4, null, !dbg !210
  br i1 %5, label %6, label %21, !dbg !212

6:                                                ; preds = %1
  %7 = call ptr @kh_init_3(), !dbg !213
  %8 = load ptr, ptr %3, align 8, !dbg !215
  %9 = getelementptr inbounds %struct._ur_map, ptr %8, i32 0, i32 0, !dbg !216
  store ptr %7, ptr %9, align 8, !dbg !217
  %10 = load ptr, ptr %3, align 8, !dbg !218
  %11 = getelementptr inbounds %struct._ur_map, ptr %10, i32 0, i32 0, !dbg !220
  %12 = load ptr, ptr %11, align 8, !dbg !220
  %13 = icmp ne ptr %12, null, !dbg !218
  br i1 %13, label %14, label %20, !dbg !221

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !dbg !222
  %16 = getelementptr inbounds %struct._ur_map, ptr %15, i32 0, i32 1, !dbg !224
  store i64 2427178479, ptr %16, align 8, !dbg !225
  %17 = load ptr, ptr %3, align 8, !dbg !226
  %18 = getelementptr inbounds %struct._ur_map, ptr %17, i32 0, i32 2, !dbg !226
  %19 = call i32 @turn_mutex_init_recursive(ptr noundef %18), !dbg !226
  store i32 0, ptr %2, align 4, !dbg !227
  br label %22, !dbg !227

20:                                               ; preds = %6
  br label %21, !dbg !228

21:                                               ; preds = %20, %1
  store i32 -1, ptr %2, align 4, !dbg !229
  br label %22, !dbg !229

22:                                               ; preds = %21, %14
  %23 = load i32, ptr %2, align 4, !dbg !230
  ret i32 %23, !dbg !230
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_map_put(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !231 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !234, metadata !DIExpression()), !dbg !235
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !236, metadata !DIExpression()), !dbg !237
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !238, metadata !DIExpression()), !dbg !239
  %10 = load ptr, ptr %5, align 8, !dbg !240
  %11 = icmp ne ptr %10, null, !dbg !240
  br i1 %11, label %12, label %22, !dbg !240

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !240
  %14 = getelementptr inbounds %struct._ur_map, ptr %13, i32 0, i32 0, !dbg !240
  %15 = load ptr, ptr %14, align 8, !dbg !240
  %16 = icmp ne ptr %15, null, !dbg !240
  br i1 %16, label %17, label %22, !dbg !240

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !dbg !240
  %19 = getelementptr inbounds %struct._ur_map, ptr %18, i32 0, i32 1, !dbg !240
  %20 = load i64, ptr %19, align 8, !dbg !240
  %21 = icmp eq i64 %20, 2427178479, !dbg !240
  br i1 %21, label %23, label %22, !dbg !242

22:                                               ; preds = %17, %12, %3
  store i32 -1, ptr %4, align 4, !dbg !243
  br label %64, !dbg !243

23:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %8, metadata !244, metadata !DIExpression()), !dbg !246
  store i32 0, ptr %8, align 4, !dbg !246
  call void @llvm.dbg.declare(metadata ptr %9, metadata !247, metadata !DIExpression()), !dbg !249
  %24 = load ptr, ptr %5, align 8, !dbg !250
  %25 = getelementptr inbounds %struct._ur_map, ptr %24, i32 0, i32 0, !dbg !250
  %26 = load ptr, ptr %25, align 8, !dbg !250
  %27 = load i64, ptr %6, align 8, !dbg !250
  %28 = call i32 @kh_get_3(ptr noundef %26, i64 noundef %27), !dbg !250
  store i32 %28, ptr %9, align 4, !dbg !251
  %29 = load i32, ptr %9, align 4, !dbg !252
  %30 = load ptr, ptr %5, align 8, !dbg !254
  %31 = getelementptr inbounds %struct._ur_map, ptr %30, i32 0, i32 0, !dbg !254
  %32 = load ptr, ptr %31, align 8, !dbg !254
  %33 = getelementptr inbounds %struct.kh_3_t, ptr %32, i32 0, i32 0, !dbg !254
  %34 = load i32, ptr %33, align 8, !dbg !254
  %35 = icmp ne i32 %29, %34, !dbg !255
  br i1 %35, label %36, label %41, !dbg !256

36:                                               ; preds = %23
  %37 = load ptr, ptr %5, align 8, !dbg !257
  %38 = getelementptr inbounds %struct._ur_map, ptr %37, i32 0, i32 0, !dbg !257
  %39 = load ptr, ptr %38, align 8, !dbg !257
  %40 = load i32, ptr %9, align 4, !dbg !257
  call void @kh_del_3(ptr noundef %39, i32 noundef %40), !dbg !257
  br label %41, !dbg !259

41:                                               ; preds = %36, %23
  %42 = load ptr, ptr %5, align 8, !dbg !260
  %43 = getelementptr inbounds %struct._ur_map, ptr %42, i32 0, i32 0, !dbg !260
  %44 = load ptr, ptr %43, align 8, !dbg !260
  %45 = load i64, ptr %6, align 8, !dbg !260
  %46 = call i32 @kh_put_3(ptr noundef %44, i64 noundef %45, ptr noundef %8), !dbg !260
  store i32 %46, ptr %9, align 4, !dbg !261
  %47 = load i32, ptr %8, align 4, !dbg !262
  %48 = icmp ne i32 %47, 0, !dbg !262
  br i1 %48, label %54, label %49, !dbg !264

49:                                               ; preds = %41
  %50 = load ptr, ptr %5, align 8, !dbg !265
  %51 = getelementptr inbounds %struct._ur_map, ptr %50, i32 0, i32 0, !dbg !265
  %52 = load ptr, ptr %51, align 8, !dbg !265
  %53 = load i32, ptr %9, align 4, !dbg !265
  call void @kh_del_3(ptr noundef %52, i32 noundef %53), !dbg !265
  store i32 -1, ptr %4, align 4, !dbg !267
  br label %64, !dbg !267

54:                                               ; preds = %41
  %55 = load i64, ptr %7, align 8, !dbg !268
  %56 = load ptr, ptr %5, align 8, !dbg !269
  %57 = getelementptr inbounds %struct._ur_map, ptr %56, i32 0, i32 0, !dbg !269
  %58 = load ptr, ptr %57, align 8, !dbg !269
  %59 = getelementptr inbounds %struct.kh_3_t, ptr %58, i32 0, i32 8, !dbg !269
  %60 = load ptr, ptr %59, align 8, !dbg !269
  %61 = load i32, ptr %9, align 4, !dbg !269
  %62 = zext i32 %61 to i64, !dbg !269
  %63 = getelementptr inbounds i64, ptr %60, i64 %62, !dbg !269
  store i64 %55, ptr %63, align 8, !dbg !270
  store i32 0, ptr %4, align 4, !dbg !271
  br label %64, !dbg !271

64:                                               ; preds = %54, %49, %22
  %65 = load i32, ptr %4, align 4, !dbg !272
  ret i32 %65, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kh_get_3(ptr noundef %0, i64 noundef %1) #0 !dbg !273 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !276, metadata !DIExpression()), !dbg !277
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !278, metadata !DIExpression()), !dbg !277
  %10 = load ptr, ptr %4, align 8, !dbg !279
  %11 = getelementptr inbounds %struct.kh_3_t, ptr %10, i32 0, i32 0, !dbg !279
  %12 = load i32, ptr %11, align 8, !dbg !279
  %13 = icmp ne i32 %12, 0, !dbg !279
  br i1 %13, label %14, label %133, !dbg !277

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !281, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata ptr %7, metadata !284, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata ptr %8, metadata !285, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata ptr %9, metadata !286, metadata !DIExpression()), !dbg !283
  %15 = load i64, ptr %5, align 8, !dbg !283
  %16 = lshr i64 %15, 33, !dbg !283
  %17 = load i64, ptr %5, align 8, !dbg !283
  %18 = xor i64 %16, %17, !dbg !283
  %19 = load i64, ptr %5, align 8, !dbg !283
  %20 = shl i64 %19, 11, !dbg !283
  %21 = xor i64 %18, %20, !dbg !283
  %22 = trunc i64 %21 to i32, !dbg !283
  store i32 %22, ptr %7, align 4, !dbg !283
  %23 = load i32, ptr %7, align 4, !dbg !283
  %24 = load ptr, ptr %4, align 8, !dbg !283
  %25 = getelementptr inbounds %struct.kh_3_t, ptr %24, i32 0, i32 0, !dbg !283
  %26 = load i32, ptr %25, align 8, !dbg !283
  %27 = urem i32 %23, %26, !dbg !283
  store i32 %27, ptr %8, align 4, !dbg !283
  %28 = load i32, ptr %7, align 4, !dbg !283
  %29 = load ptr, ptr %4, align 8, !dbg !283
  %30 = getelementptr inbounds %struct.kh_3_t, ptr %29, i32 0, i32 0, !dbg !283
  %31 = load i32, ptr %30, align 8, !dbg !283
  %32 = sub i32 %31, 1, !dbg !283
  %33 = urem i32 %28, %32, !dbg !283
  %34 = add i32 1, %33, !dbg !283
  store i32 %34, ptr %6, align 4, !dbg !283
  %35 = load i32, ptr %8, align 4, !dbg !283
  store i32 %35, ptr %9, align 4, !dbg !283
  br label %36, !dbg !283

36:                                               ; preds = %109, %14
  %37 = load ptr, ptr %4, align 8, !dbg !283
  %38 = getelementptr inbounds %struct.kh_3_t, ptr %37, i32 0, i32 4, !dbg !283
  %39 = load ptr, ptr %38, align 8, !dbg !283
  %40 = load i32, ptr %8, align 4, !dbg !283
  %41 = lshr i32 %40, 4, !dbg !283
  %42 = zext i32 %41 to i64, !dbg !283
  %43 = getelementptr inbounds i32, ptr %39, i64 %42, !dbg !283
  %44 = load i32, ptr %43, align 4, !dbg !283
  %45 = load i32, ptr %8, align 4, !dbg !283
  %46 = and i32 %45, 15, !dbg !283
  %47 = shl i32 %46, 1, !dbg !283
  %48 = lshr i32 %44, %47, !dbg !283
  %49 = and i32 %48, 2, !dbg !283
  %50 = icmp ne i32 %49, 0, !dbg !283
  br i1 %50, label %79, label %51, !dbg !283

51:                                               ; preds = %36
  %52 = load ptr, ptr %4, align 8, !dbg !283
  %53 = getelementptr inbounds %struct.kh_3_t, ptr %52, i32 0, i32 4, !dbg !283
  %54 = load ptr, ptr %53, align 8, !dbg !283
  %55 = load i32, ptr %8, align 4, !dbg !283
  %56 = lshr i32 %55, 4, !dbg !283
  %57 = zext i32 %56 to i64, !dbg !283
  %58 = getelementptr inbounds i32, ptr %54, i64 %57, !dbg !283
  %59 = load i32, ptr %58, align 4, !dbg !283
  %60 = load i32, ptr %8, align 4, !dbg !283
  %61 = and i32 %60, 15, !dbg !283
  %62 = shl i32 %61, 1, !dbg !283
  %63 = lshr i32 %59, %62, !dbg !283
  %64 = and i32 %63, 1, !dbg !283
  %65 = icmp ne i32 %64, 0, !dbg !283
  br i1 %65, label %77, label %66, !dbg !283

66:                                               ; preds = %51
  %67 = load ptr, ptr %4, align 8, !dbg !283
  %68 = getelementptr inbounds %struct.kh_3_t, ptr %67, i32 0, i32 6, !dbg !283
  %69 = load ptr, ptr %68, align 8, !dbg !283
  %70 = load i32, ptr %8, align 4, !dbg !283
  %71 = zext i32 %70 to i64, !dbg !283
  %72 = getelementptr inbounds i64, ptr %69, i64 %71, !dbg !283
  %73 = load i64, ptr %72, align 8, !dbg !283
  %74 = load i64, ptr %5, align 8, !dbg !283
  %75 = icmp eq i64 %73, %74, !dbg !283
  %76 = xor i1 %75, true, !dbg !283
  br label %77, !dbg !283

77:                                               ; preds = %66, %51
  %78 = phi i1 [ true, %51 ], [ %76, %66 ]
  br label %79

79:                                               ; preds = %77, %36
  %80 = phi i1 [ false, %36 ], [ %78, %77 ], !dbg !287
  br i1 %80, label %81, label %110, !dbg !283

81:                                               ; preds = %79
  %82 = load i32, ptr %8, align 4, !dbg !288
  %83 = load i32, ptr %6, align 4, !dbg !288
  %84 = add i32 %82, %83, !dbg !288
  %85 = load ptr, ptr %4, align 8, !dbg !288
  %86 = getelementptr inbounds %struct.kh_3_t, ptr %85, i32 0, i32 0, !dbg !288
  %87 = load i32, ptr %86, align 8, !dbg !288
  %88 = icmp uge i32 %84, %87, !dbg !288
  br i1 %88, label %89, label %97, !dbg !291

89:                                               ; preds = %81
  %90 = load i32, ptr %8, align 4, !dbg !288
  %91 = load i32, ptr %6, align 4, !dbg !288
  %92 = add i32 %90, %91, !dbg !288
  %93 = load ptr, ptr %4, align 8, !dbg !288
  %94 = getelementptr inbounds %struct.kh_3_t, ptr %93, i32 0, i32 0, !dbg !288
  %95 = load i32, ptr %94, align 8, !dbg !288
  %96 = sub i32 %92, %95, !dbg !288
  store i32 %96, ptr %8, align 4, !dbg !288
  br label %101, !dbg !288

97:                                               ; preds = %81
  %98 = load i32, ptr %6, align 4, !dbg !288
  %99 = load i32, ptr %8, align 4, !dbg !288
  %100 = add i32 %99, %98, !dbg !288
  store i32 %100, ptr %8, align 4, !dbg !288
  br label %101

101:                                              ; preds = %97, %89
  %102 = load i32, ptr %8, align 4, !dbg !292
  %103 = load i32, ptr %9, align 4, !dbg !292
  %104 = icmp eq i32 %102, %103, !dbg !292
  br i1 %104, label %105, label %109, !dbg !291

105:                                              ; preds = %101
  %106 = load ptr, ptr %4, align 8, !dbg !292
  %107 = getelementptr inbounds %struct.kh_3_t, ptr %106, i32 0, i32 0, !dbg !292
  %108 = load i32, ptr %107, align 8, !dbg !292
  store i32 %108, ptr %3, align 4, !dbg !292
  br label %134, !dbg !292

109:                                              ; preds = %101
  br label %36, !dbg !283, !llvm.loop !294

110:                                              ; preds = %79
  %111 = load ptr, ptr %4, align 8, !dbg !283
  %112 = getelementptr inbounds %struct.kh_3_t, ptr %111, i32 0, i32 4, !dbg !283
  %113 = load ptr, ptr %112, align 8, !dbg !283
  %114 = load i32, ptr %8, align 4, !dbg !283
  %115 = lshr i32 %114, 4, !dbg !283
  %116 = zext i32 %115 to i64, !dbg !283
  %117 = getelementptr inbounds i32, ptr %113, i64 %116, !dbg !283
  %118 = load i32, ptr %117, align 4, !dbg !283
  %119 = load i32, ptr %8, align 4, !dbg !283
  %120 = and i32 %119, 15, !dbg !283
  %121 = shl i32 %120, 1, !dbg !283
  %122 = lshr i32 %118, %121, !dbg !283
  %123 = and i32 %122, 3, !dbg !283
  %124 = icmp ne i32 %123, 0, !dbg !283
  br i1 %124, label %125, label %129, !dbg !283

125:                                              ; preds = %110
  %126 = load ptr, ptr %4, align 8, !dbg !283
  %127 = getelementptr inbounds %struct.kh_3_t, ptr %126, i32 0, i32 0, !dbg !283
  %128 = load i32, ptr %127, align 8, !dbg !283
  br label %131, !dbg !283

129:                                              ; preds = %110
  %130 = load i32, ptr %8, align 4, !dbg !283
  br label %131, !dbg !283

131:                                              ; preds = %129, %125
  %132 = phi i32 [ %128, %125 ], [ %130, %129 ], !dbg !283
  store i32 %132, ptr %3, align 4, !dbg !283
  br label %134, !dbg !283

133:                                              ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !279
  br label %134, !dbg !279

134:                                              ; preds = %133, %131, %105
  %135 = load i32, ptr %3, align 4, !dbg !277
  ret i32 %135, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kh_del_3(ptr noundef %0, i32 noundef %1) #0 !dbg !296 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !299, metadata !DIExpression()), !dbg !300
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !301, metadata !DIExpression()), !dbg !300
  %5 = load i32, ptr %4, align 4, !dbg !302
  %6 = load ptr, ptr %3, align 8, !dbg !302
  %7 = getelementptr inbounds %struct.kh_3_t, ptr %6, i32 0, i32 0, !dbg !302
  %8 = load i32, ptr %7, align 8, !dbg !302
  %9 = icmp ne i32 %5, %8, !dbg !302
  br i1 %9, label %10, label %46, !dbg !302

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !302
  %12 = getelementptr inbounds %struct.kh_3_t, ptr %11, i32 0, i32 4, !dbg !302
  %13 = load ptr, ptr %12, align 8, !dbg !302
  %14 = load i32, ptr %4, align 4, !dbg !302
  %15 = lshr i32 %14, 4, !dbg !302
  %16 = zext i32 %15 to i64, !dbg !302
  %17 = getelementptr inbounds i32, ptr %13, i64 %16, !dbg !302
  %18 = load i32, ptr %17, align 4, !dbg !302
  %19 = load i32, ptr %4, align 4, !dbg !302
  %20 = and i32 %19, 15, !dbg !302
  %21 = shl i32 %20, 1, !dbg !302
  %22 = lshr i32 %18, %21, !dbg !302
  %23 = and i32 %22, 3, !dbg !302
  %24 = icmp ne i32 %23, 0, !dbg !302
  br i1 %24, label %46, label %25, !dbg !300

25:                                               ; preds = %10
  %26 = load i32, ptr %4, align 4, !dbg !304
  %27 = and i32 %26, 15, !dbg !304
  %28 = shl i32 %27, 1, !dbg !304
  %29 = zext i32 %28 to i64, !dbg !304
  %30 = shl i64 1, %29, !dbg !304
  %31 = load ptr, ptr %3, align 8, !dbg !304
  %32 = getelementptr inbounds %struct.kh_3_t, ptr %31, i32 0, i32 4, !dbg !304
  %33 = load ptr, ptr %32, align 8, !dbg !304
  %34 = load i32, ptr %4, align 4, !dbg !304
  %35 = lshr i32 %34, 4, !dbg !304
  %36 = zext i32 %35 to i64, !dbg !304
  %37 = getelementptr inbounds i32, ptr %33, i64 %36, !dbg !304
  %38 = load i32, ptr %37, align 4, !dbg !304
  %39 = zext i32 %38 to i64, !dbg !304
  %40 = or i64 %39, %30, !dbg !304
  %41 = trunc i64 %40 to i32, !dbg !304
  store i32 %41, ptr %37, align 4, !dbg !304
  %42 = load ptr, ptr %3, align 8, !dbg !304
  %43 = getelementptr inbounds %struct.kh_3_t, ptr %42, i32 0, i32 1, !dbg !304
  %44 = load i32, ptr %43, align 4, !dbg !304
  %45 = add i32 %44, -1, !dbg !304
  store i32 %45, ptr %43, align 4, !dbg !304
  br label %46, !dbg !304

46:                                               ; preds = %25, %10, %2
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kh_put_3(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !306 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !310, metadata !DIExpression()), !dbg !311
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !312, metadata !DIExpression()), !dbg !311
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !313, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata ptr %7, metadata !314, metadata !DIExpression()), !dbg !311
  %13 = load ptr, ptr %4, align 8, !dbg !315
  %14 = getelementptr inbounds %struct.kh_3_t, ptr %13, i32 0, i32 2, !dbg !315
  %15 = load i32, ptr %14, align 8, !dbg !315
  %16 = load ptr, ptr %4, align 8, !dbg !315
  %17 = getelementptr inbounds %struct.kh_3_t, ptr %16, i32 0, i32 3, !dbg !315
  %18 = load i32, ptr %17, align 4, !dbg !315
  %19 = icmp uge i32 %15, %18, !dbg !315
  br i1 %19, label %20, label %42, !dbg !311

20:                                               ; preds = %3
  %21 = load ptr, ptr %4, align 8, !dbg !317
  %22 = getelementptr inbounds %struct.kh_3_t, ptr %21, i32 0, i32 0, !dbg !317
  %23 = load i32, ptr %22, align 8, !dbg !317
  %24 = load ptr, ptr %4, align 8, !dbg !317
  %25 = getelementptr inbounds %struct.kh_3_t, ptr %24, i32 0, i32 1, !dbg !317
  %26 = load i32, ptr %25, align 4, !dbg !317
  %27 = shl i32 %26, 1, !dbg !317
  %28 = icmp ugt i32 %23, %27, !dbg !317
  br i1 %28, label %29, label %35, !dbg !320

29:                                               ; preds = %20
  %30 = load ptr, ptr %4, align 8, !dbg !317
  %31 = load ptr, ptr %4, align 8, !dbg !317
  %32 = getelementptr inbounds %struct.kh_3_t, ptr %31, i32 0, i32 0, !dbg !317
  %33 = load i32, ptr %32, align 8, !dbg !317
  %34 = sub i32 %33, 1, !dbg !317
  call void @kh_resize_3(ptr noundef %30, i32 noundef %34), !dbg !317
  br label %41, !dbg !317

35:                                               ; preds = %20
  %36 = load ptr, ptr %4, align 8, !dbg !317
  %37 = load ptr, ptr %4, align 8, !dbg !317
  %38 = getelementptr inbounds %struct.kh_3_t, ptr %37, i32 0, i32 0, !dbg !317
  %39 = load i32, ptr %38, align 8, !dbg !317
  %40 = add i32 %39, 1, !dbg !317
  call void @kh_resize_3(ptr noundef %36, i32 noundef %40), !dbg !317
  br label %41

41:                                               ; preds = %35, %29
  br label %42, !dbg !320

42:                                               ; preds = %41, %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !321, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata ptr %9, metadata !324, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata ptr %10, metadata !325, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata ptr %11, metadata !326, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata ptr %12, metadata !327, metadata !DIExpression()), !dbg !323
  %43 = load ptr, ptr %4, align 8, !dbg !323
  %44 = getelementptr inbounds %struct.kh_3_t, ptr %43, i32 0, i32 0, !dbg !323
  %45 = load i32, ptr %44, align 8, !dbg !323
  store i32 %45, ptr %11, align 4, !dbg !323
  store i32 %45, ptr %7, align 4, !dbg !323
  %46 = load i64, ptr %5, align 8, !dbg !323
  %47 = lshr i64 %46, 33, !dbg !323
  %48 = load i64, ptr %5, align 8, !dbg !323
  %49 = xor i64 %47, %48, !dbg !323
  %50 = load i64, ptr %5, align 8, !dbg !323
  %51 = shl i64 %50, 11, !dbg !323
  %52 = xor i64 %49, %51, !dbg !323
  %53 = trunc i64 %52 to i32, !dbg !323
  store i32 %53, ptr %9, align 4, !dbg !323
  %54 = load i32, ptr %9, align 4, !dbg !323
  %55 = load ptr, ptr %4, align 8, !dbg !323
  %56 = getelementptr inbounds %struct.kh_3_t, ptr %55, i32 0, i32 0, !dbg !323
  %57 = load i32, ptr %56, align 8, !dbg !323
  %58 = urem i32 %54, %57, !dbg !323
  store i32 %58, ptr %10, align 4, !dbg !323
  %59 = load ptr, ptr %4, align 8, !dbg !328
  %60 = getelementptr inbounds %struct.kh_3_t, ptr %59, i32 0, i32 4, !dbg !328
  %61 = load ptr, ptr %60, align 8, !dbg !328
  %62 = load i32, ptr %10, align 4, !dbg !328
  %63 = lshr i32 %62, 4, !dbg !328
  %64 = zext i32 %63 to i64, !dbg !328
  %65 = getelementptr inbounds i32, ptr %61, i64 %64, !dbg !328
  %66 = load i32, ptr %65, align 4, !dbg !328
  %67 = load i32, ptr %10, align 4, !dbg !328
  %68 = and i32 %67, 15, !dbg !328
  %69 = shl i32 %68, 1, !dbg !328
  %70 = lshr i32 %66, %69, !dbg !328
  %71 = and i32 %70, 2, !dbg !328
  %72 = icmp ne i32 %71, 0, !dbg !328
  br i1 %72, label %73, label %75, !dbg !323

73:                                               ; preds = %42
  %74 = load i32, ptr %10, align 4, !dbg !328
  store i32 %74, ptr %7, align 4, !dbg !328
  br label %206, !dbg !328

75:                                               ; preds = %42
  %76 = load i32, ptr %9, align 4, !dbg !330
  %77 = load ptr, ptr %4, align 8, !dbg !330
  %78 = getelementptr inbounds %struct.kh_3_t, ptr %77, i32 0, i32 0, !dbg !330
  %79 = load i32, ptr %78, align 8, !dbg !330
  %80 = sub i32 %79, 1, !dbg !330
  %81 = urem i32 %76, %80, !dbg !330
  %82 = add i32 1, %81, !dbg !330
  store i32 %82, ptr %8, align 4, !dbg !330
  %83 = load i32, ptr %10, align 4, !dbg !330
  store i32 %83, ptr %12, align 4, !dbg !330
  br label %84, !dbg !330

84:                                               ; preds = %172, %75
  %85 = load ptr, ptr %4, align 8, !dbg !330
  %86 = getelementptr inbounds %struct.kh_3_t, ptr %85, i32 0, i32 4, !dbg !330
  %87 = load ptr, ptr %86, align 8, !dbg !330
  %88 = load i32, ptr %10, align 4, !dbg !330
  %89 = lshr i32 %88, 4, !dbg !330
  %90 = zext i32 %89 to i64, !dbg !330
  %91 = getelementptr inbounds i32, ptr %87, i64 %90, !dbg !330
  %92 = load i32, ptr %91, align 4, !dbg !330
  %93 = load i32, ptr %10, align 4, !dbg !330
  %94 = and i32 %93, 15, !dbg !330
  %95 = shl i32 %94, 1, !dbg !330
  %96 = lshr i32 %92, %95, !dbg !330
  %97 = and i32 %96, 2, !dbg !330
  %98 = icmp ne i32 %97, 0, !dbg !330
  br i1 %98, label %127, label %99, !dbg !330

99:                                               ; preds = %84
  %100 = load ptr, ptr %4, align 8, !dbg !330
  %101 = getelementptr inbounds %struct.kh_3_t, ptr %100, i32 0, i32 4, !dbg !330
  %102 = load ptr, ptr %101, align 8, !dbg !330
  %103 = load i32, ptr %10, align 4, !dbg !330
  %104 = lshr i32 %103, 4, !dbg !330
  %105 = zext i32 %104 to i64, !dbg !330
  %106 = getelementptr inbounds i32, ptr %102, i64 %105, !dbg !330
  %107 = load i32, ptr %106, align 4, !dbg !330
  %108 = load i32, ptr %10, align 4, !dbg !330
  %109 = and i32 %108, 15, !dbg !330
  %110 = shl i32 %109, 1, !dbg !330
  %111 = lshr i32 %107, %110, !dbg !330
  %112 = and i32 %111, 1, !dbg !330
  %113 = icmp ne i32 %112, 0, !dbg !330
  br i1 %113, label %125, label %114, !dbg !330

114:                                              ; preds = %99
  %115 = load ptr, ptr %4, align 8, !dbg !330
  %116 = getelementptr inbounds %struct.kh_3_t, ptr %115, i32 0, i32 6, !dbg !330
  %117 = load ptr, ptr %116, align 8, !dbg !330
  %118 = load i32, ptr %10, align 4, !dbg !330
  %119 = zext i32 %118 to i64, !dbg !330
  %120 = getelementptr inbounds i64, ptr %117, i64 %119, !dbg !330
  %121 = load i64, ptr %120, align 8, !dbg !330
  %122 = load i64, ptr %5, align 8, !dbg !330
  %123 = icmp eq i64 %121, %122, !dbg !330
  %124 = xor i1 %123, true, !dbg !330
  br label %125, !dbg !330

125:                                              ; preds = %114, %99
  %126 = phi i1 [ true, %99 ], [ %124, %114 ]
  br label %127

127:                                              ; preds = %125, %84
  %128 = phi i1 [ false, %84 ], [ %126, %125 ], !dbg !332
  br i1 %128, label %129, label %173, !dbg !330

129:                                              ; preds = %127
  %130 = load ptr, ptr %4, align 8, !dbg !333
  %131 = getelementptr inbounds %struct.kh_3_t, ptr %130, i32 0, i32 4, !dbg !333
  %132 = load ptr, ptr %131, align 8, !dbg !333
  %133 = load i32, ptr %10, align 4, !dbg !333
  %134 = lshr i32 %133, 4, !dbg !333
  %135 = zext i32 %134 to i64, !dbg !333
  %136 = getelementptr inbounds i32, ptr %132, i64 %135, !dbg !333
  %137 = load i32, ptr %136, align 4, !dbg !333
  %138 = load i32, ptr %10, align 4, !dbg !333
  %139 = and i32 %138, 15, !dbg !333
  %140 = shl i32 %139, 1, !dbg !333
  %141 = lshr i32 %137, %140, !dbg !333
  %142 = and i32 %141, 1, !dbg !333
  %143 = icmp ne i32 %142, 0, !dbg !333
  br i1 %143, label %144, label %146, !dbg !336

144:                                              ; preds = %129
  %145 = load i32, ptr %10, align 4, !dbg !333
  store i32 %145, ptr %11, align 4, !dbg !333
  br label %146, !dbg !333

146:                                              ; preds = %144, %129
  %147 = load i32, ptr %10, align 4, !dbg !337
  %148 = load i32, ptr %8, align 4, !dbg !337
  %149 = add i32 %147, %148, !dbg !337
  %150 = load ptr, ptr %4, align 8, !dbg !337
  %151 = getelementptr inbounds %struct.kh_3_t, ptr %150, i32 0, i32 0, !dbg !337
  %152 = load i32, ptr %151, align 8, !dbg !337
  %153 = icmp uge i32 %149, %152, !dbg !337
  br i1 %153, label %154, label %162, !dbg !336

154:                                              ; preds = %146
  %155 = load i32, ptr %10, align 4, !dbg !337
  %156 = load i32, ptr %8, align 4, !dbg !337
  %157 = add i32 %155, %156, !dbg !337
  %158 = load ptr, ptr %4, align 8, !dbg !337
  %159 = getelementptr inbounds %struct.kh_3_t, ptr %158, i32 0, i32 0, !dbg !337
  %160 = load i32, ptr %159, align 8, !dbg !337
  %161 = sub i32 %157, %160, !dbg !337
  store i32 %161, ptr %10, align 4, !dbg !337
  br label %166, !dbg !337

162:                                              ; preds = %146
  %163 = load i32, ptr %8, align 4, !dbg !337
  %164 = load i32, ptr %10, align 4, !dbg !337
  %165 = add i32 %164, %163, !dbg !337
  store i32 %165, ptr %10, align 4, !dbg !337
  br label %166

166:                                              ; preds = %162, %154
  %167 = load i32, ptr %10, align 4, !dbg !339
  %168 = load i32, ptr %12, align 4, !dbg !339
  %169 = icmp eq i32 %167, %168, !dbg !339
  br i1 %169, label %170, label %172, !dbg !336

170:                                              ; preds = %166
  %171 = load i32, ptr %11, align 4, !dbg !341
  store i32 %171, ptr %7, align 4, !dbg !341
  br label %173, !dbg !341

172:                                              ; preds = %166
  br label %84, !dbg !330, !llvm.loop !343

173:                                              ; preds = %170, %127
  %174 = load i32, ptr %7, align 4, !dbg !344
  %175 = load ptr, ptr %4, align 8, !dbg !344
  %176 = getelementptr inbounds %struct.kh_3_t, ptr %175, i32 0, i32 0, !dbg !344
  %177 = load i32, ptr %176, align 8, !dbg !344
  %178 = icmp eq i32 %174, %177, !dbg !344
  br i1 %178, label %179, label %205, !dbg !330

179:                                              ; preds = %173
  %180 = load ptr, ptr %4, align 8, !dbg !346
  %181 = getelementptr inbounds %struct.kh_3_t, ptr %180, i32 0, i32 4, !dbg !346
  %182 = load ptr, ptr %181, align 8, !dbg !346
  %183 = load i32, ptr %10, align 4, !dbg !346
  %184 = lshr i32 %183, 4, !dbg !346
  %185 = zext i32 %184 to i64, !dbg !346
  %186 = getelementptr inbounds i32, ptr %182, i64 %185, !dbg !346
  %187 = load i32, ptr %186, align 4, !dbg !346
  %188 = load i32, ptr %10, align 4, !dbg !346
  %189 = and i32 %188, 15, !dbg !346
  %190 = shl i32 %189, 1, !dbg !346
  %191 = lshr i32 %187, %190, !dbg !346
  %192 = and i32 %191, 2, !dbg !346
  %193 = icmp ne i32 %192, 0, !dbg !346
  br i1 %193, label %194, label %202, !dbg !346

194:                                              ; preds = %179
  %195 = load i32, ptr %11, align 4, !dbg !346
  %196 = load ptr, ptr %4, align 8, !dbg !346
  %197 = getelementptr inbounds %struct.kh_3_t, ptr %196, i32 0, i32 0, !dbg !346
  %198 = load i32, ptr %197, align 8, !dbg !346
  %199 = icmp ne i32 %195, %198, !dbg !346
  br i1 %199, label %200, label %202, !dbg !349

200:                                              ; preds = %194
  %201 = load i32, ptr %11, align 4, !dbg !346
  store i32 %201, ptr %7, align 4, !dbg !346
  br label %204, !dbg !346

202:                                              ; preds = %194, %179
  %203 = load i32, ptr %10, align 4, !dbg !346
  store i32 %203, ptr %7, align 4, !dbg !346
  br label %204

204:                                              ; preds = %202, %200
  br label %205, !dbg !349

205:                                              ; preds = %204, %173
  br label %206

206:                                              ; preds = %205, %73
  %207 = load ptr, ptr %4, align 8, !dbg !350
  %208 = getelementptr inbounds %struct.kh_3_t, ptr %207, i32 0, i32 4, !dbg !350
  %209 = load ptr, ptr %208, align 8, !dbg !350
  %210 = load i32, ptr %7, align 4, !dbg !350
  %211 = lshr i32 %210, 4, !dbg !350
  %212 = zext i32 %211 to i64, !dbg !350
  %213 = getelementptr inbounds i32, ptr %209, i64 %212, !dbg !350
  %214 = load i32, ptr %213, align 4, !dbg !350
  %215 = load i32, ptr %7, align 4, !dbg !350
  %216 = and i32 %215, 15, !dbg !350
  %217 = shl i32 %216, 1, !dbg !350
  %218 = lshr i32 %214, %217, !dbg !350
  %219 = and i32 %218, 2, !dbg !350
  %220 = icmp ne i32 %219, 0, !dbg !350
  br i1 %220, label %221, label %255, !dbg !311

221:                                              ; preds = %206
  %222 = load i64, ptr %5, align 8, !dbg !352
  %223 = load ptr, ptr %4, align 8, !dbg !352
  %224 = getelementptr inbounds %struct.kh_3_t, ptr %223, i32 0, i32 6, !dbg !352
  %225 = load ptr, ptr %224, align 8, !dbg !352
  %226 = load i32, ptr %7, align 4, !dbg !352
  %227 = zext i32 %226 to i64, !dbg !352
  %228 = getelementptr inbounds i64, ptr %225, i64 %227, !dbg !352
  store i64 %222, ptr %228, align 8, !dbg !352
  %229 = load i32, ptr %7, align 4, !dbg !352
  %230 = and i32 %229, 15, !dbg !352
  %231 = shl i32 %230, 1, !dbg !352
  %232 = zext i32 %231 to i64, !dbg !352
  %233 = shl i64 3, %232, !dbg !352
  %234 = xor i64 %233, -1, !dbg !352
  %235 = load ptr, ptr %4, align 8, !dbg !352
  %236 = getelementptr inbounds %struct.kh_3_t, ptr %235, i32 0, i32 4, !dbg !352
  %237 = load ptr, ptr %236, align 8, !dbg !352
  %238 = load i32, ptr %7, align 4, !dbg !352
  %239 = lshr i32 %238, 4, !dbg !352
  %240 = zext i32 %239 to i64, !dbg !352
  %241 = getelementptr inbounds i32, ptr %237, i64 %240, !dbg !352
  %242 = load i32, ptr %241, align 4, !dbg !352
  %243 = zext i32 %242 to i64, !dbg !352
  %244 = and i64 %243, %234, !dbg !352
  %245 = trunc i64 %244 to i32, !dbg !352
  store i32 %245, ptr %241, align 4, !dbg !352
  %246 = load ptr, ptr %4, align 8, !dbg !352
  %247 = getelementptr inbounds %struct.kh_3_t, ptr %246, i32 0, i32 1, !dbg !352
  %248 = load i32, ptr %247, align 4, !dbg !352
  %249 = add i32 %248, 1, !dbg !352
  store i32 %249, ptr %247, align 4, !dbg !352
  %250 = load ptr, ptr %4, align 8, !dbg !352
  %251 = getelementptr inbounds %struct.kh_3_t, ptr %250, i32 0, i32 2, !dbg !352
  %252 = load i32, ptr %251, align 8, !dbg !352
  %253 = add i32 %252, 1, !dbg !352
  store i32 %253, ptr %251, align 8, !dbg !352
  %254 = load ptr, ptr %6, align 8, !dbg !352
  store i32 1, ptr %254, align 4, !dbg !352
  br label %303, !dbg !352

255:                                              ; preds = %206
  %256 = load ptr, ptr %4, align 8, !dbg !354
  %257 = getelementptr inbounds %struct.kh_3_t, ptr %256, i32 0, i32 4, !dbg !354
  %258 = load ptr, ptr %257, align 8, !dbg !354
  %259 = load i32, ptr %7, align 4, !dbg !354
  %260 = lshr i32 %259, 4, !dbg !354
  %261 = zext i32 %260 to i64, !dbg !354
  %262 = getelementptr inbounds i32, ptr %258, i64 %261, !dbg !354
  %263 = load i32, ptr %262, align 4, !dbg !354
  %264 = load i32, ptr %7, align 4, !dbg !354
  %265 = and i32 %264, 15, !dbg !354
  %266 = shl i32 %265, 1, !dbg !354
  %267 = lshr i32 %263, %266, !dbg !354
  %268 = and i32 %267, 1, !dbg !354
  %269 = icmp ne i32 %268, 0, !dbg !354
  br i1 %269, label %270, label %300, !dbg !350

270:                                              ; preds = %255
  %271 = load i64, ptr %5, align 8, !dbg !356
  %272 = load ptr, ptr %4, align 8, !dbg !356
  %273 = getelementptr inbounds %struct.kh_3_t, ptr %272, i32 0, i32 6, !dbg !356
  %274 = load ptr, ptr %273, align 8, !dbg !356
  %275 = load i32, ptr %7, align 4, !dbg !356
  %276 = zext i32 %275 to i64, !dbg !356
  %277 = getelementptr inbounds i64, ptr %274, i64 %276, !dbg !356
  store i64 %271, ptr %277, align 8, !dbg !356
  %278 = load i32, ptr %7, align 4, !dbg !356
  %279 = and i32 %278, 15, !dbg !356
  %280 = shl i32 %279, 1, !dbg !356
  %281 = zext i32 %280 to i64, !dbg !356
  %282 = shl i64 3, %281, !dbg !356
  %283 = xor i64 %282, -1, !dbg !356
  %284 = load ptr, ptr %4, align 8, !dbg !356
  %285 = getelementptr inbounds %struct.kh_3_t, ptr %284, i32 0, i32 4, !dbg !356
  %286 = load ptr, ptr %285, align 8, !dbg !356
  %287 = load i32, ptr %7, align 4, !dbg !356
  %288 = lshr i32 %287, 4, !dbg !356
  %289 = zext i32 %288 to i64, !dbg !356
  %290 = getelementptr inbounds i32, ptr %286, i64 %289, !dbg !356
  %291 = load i32, ptr %290, align 4, !dbg !356
  %292 = zext i32 %291 to i64, !dbg !356
  %293 = and i64 %292, %283, !dbg !356
  %294 = trunc i64 %293 to i32, !dbg !356
  store i32 %294, ptr %290, align 4, !dbg !356
  %295 = load ptr, ptr %4, align 8, !dbg !356
  %296 = getelementptr inbounds %struct.kh_3_t, ptr %295, i32 0, i32 1, !dbg !356
  %297 = load i32, ptr %296, align 4, !dbg !356
  %298 = add i32 %297, 1, !dbg !356
  store i32 %298, ptr %296, align 4, !dbg !356
  %299 = load ptr, ptr %6, align 8, !dbg !356
  store i32 2, ptr %299, align 4, !dbg !356
  br label %302, !dbg !356

300:                                              ; preds = %255
  %301 = load ptr, ptr %6, align 8, !dbg !354
  store i32 0, ptr %301, align 4, !dbg !354
  br label %302

302:                                              ; preds = %300, %270
  br label %303

303:                                              ; preds = %302, %221
  %304 = load i32, ptr %7, align 4, !dbg !311
  ret i32 %304, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_map_get(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !358 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !363, metadata !DIExpression()), !dbg !364
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !365, metadata !DIExpression()), !dbg !366
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !367, metadata !DIExpression()), !dbg !368
  %9 = load ptr, ptr %5, align 8, !dbg !369
  %10 = icmp ne ptr %9, null, !dbg !369
  br i1 %10, label %11, label %21, !dbg !369

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !dbg !369
  %13 = getelementptr inbounds %struct._ur_map, ptr %12, i32 0, i32 0, !dbg !369
  %14 = load ptr, ptr %13, align 8, !dbg !369
  %15 = icmp ne ptr %14, null, !dbg !369
  br i1 %15, label %16, label %21, !dbg !369

16:                                               ; preds = %11
  %17 = load ptr, ptr %5, align 8, !dbg !369
  %18 = getelementptr inbounds %struct._ur_map, ptr %17, i32 0, i32 1, !dbg !369
  %19 = load i64, ptr %18, align 8, !dbg !369
  %20 = icmp eq i64 %19, 2427178479, !dbg !369
  br i1 %20, label %22, label %21, !dbg !371

21:                                               ; preds = %16, %11, %3
  store i32 0, ptr %4, align 4, !dbg !372
  br label %68, !dbg !372

22:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %8, metadata !373, metadata !DIExpression()), !dbg !375
  %23 = load ptr, ptr %5, align 8, !dbg !376
  %24 = getelementptr inbounds %struct._ur_map, ptr %23, i32 0, i32 0, !dbg !376
  %25 = load ptr, ptr %24, align 8, !dbg !376
  %26 = load i64, ptr %6, align 8, !dbg !376
  %27 = call i32 @kh_get_3(ptr noundef %25, i64 noundef %26), !dbg !376
  store i32 %27, ptr %8, align 4, !dbg !377
  %28 = load i32, ptr %8, align 4, !dbg !378
  %29 = load ptr, ptr %5, align 8, !dbg !380
  %30 = getelementptr inbounds %struct._ur_map, ptr %29, i32 0, i32 0, !dbg !380
  %31 = load ptr, ptr %30, align 8, !dbg !380
  %32 = getelementptr inbounds %struct.kh_3_t, ptr %31, i32 0, i32 0, !dbg !380
  %33 = load i32, ptr %32, align 8, !dbg !380
  %34 = icmp ne i32 %28, %33, !dbg !381
  br i1 %34, label %35, label %67, !dbg !382

35:                                               ; preds = %22
  %36 = load ptr, ptr %5, align 8, !dbg !383
  %37 = getelementptr inbounds %struct._ur_map, ptr %36, i32 0, i32 0, !dbg !383
  %38 = load ptr, ptr %37, align 8, !dbg !383
  %39 = getelementptr inbounds %struct.kh_3_t, ptr %38, i32 0, i32 4, !dbg !383
  %40 = load ptr, ptr %39, align 8, !dbg !383
  %41 = load i32, ptr %8, align 4, !dbg !383
  %42 = lshr i32 %41, 4, !dbg !383
  %43 = zext i32 %42 to i64, !dbg !383
  %44 = getelementptr inbounds i32, ptr %40, i64 %43, !dbg !383
  %45 = load i32, ptr %44, align 4, !dbg !383
  %46 = load i32, ptr %8, align 4, !dbg !383
  %47 = and i32 %46, 15, !dbg !383
  %48 = shl i32 %47, 1, !dbg !383
  %49 = lshr i32 %45, %48, !dbg !383
  %50 = and i32 %49, 3, !dbg !383
  %51 = icmp ne i32 %50, 0, !dbg !383
  br i1 %51, label %67, label %52, !dbg !384

52:                                               ; preds = %35
  %53 = load ptr, ptr %7, align 8, !dbg !385
  %54 = icmp ne ptr %53, null, !dbg !385
  br i1 %54, label %55, label %66, !dbg !388

55:                                               ; preds = %52
  %56 = load ptr, ptr %5, align 8, !dbg !389
  %57 = getelementptr inbounds %struct._ur_map, ptr %56, i32 0, i32 0, !dbg !389
  %58 = load ptr, ptr %57, align 8, !dbg !389
  %59 = getelementptr inbounds %struct.kh_3_t, ptr %58, i32 0, i32 8, !dbg !389
  %60 = load ptr, ptr %59, align 8, !dbg !389
  %61 = load i32, ptr %8, align 4, !dbg !389
  %62 = zext i32 %61 to i64, !dbg !389
  %63 = getelementptr inbounds i64, ptr %60, i64 %62, !dbg !389
  %64 = load i64, ptr %63, align 8, !dbg !389
  %65 = load ptr, ptr %7, align 8, !dbg !390
  store i64 %64, ptr %65, align 8, !dbg !391
  br label %66, !dbg !392

66:                                               ; preds = %55, %52
  store i32 1, ptr %4, align 4, !dbg !393
  br label %68, !dbg !393

67:                                               ; preds = %35, %22
  store i32 0, ptr %4, align 4, !dbg !394
  br label %68, !dbg !394

68:                                               ; preds = %67, %66, %21
  %69 = load i32, ptr %4, align 4, !dbg !395
  ret i32 %69, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_map_del(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !396 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !403, metadata !DIExpression()), !dbg !404
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !405, metadata !DIExpression()), !dbg !406
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !407, metadata !DIExpression()), !dbg !408
  %9 = load ptr, ptr %5, align 8, !dbg !409
  %10 = icmp ne ptr %9, null, !dbg !409
  br i1 %10, label %11, label %21, !dbg !409

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !dbg !409
  %13 = getelementptr inbounds %struct._ur_map, ptr %12, i32 0, i32 0, !dbg !409
  %14 = load ptr, ptr %13, align 8, !dbg !409
  %15 = icmp ne ptr %14, null, !dbg !409
  br i1 %15, label %16, label %21, !dbg !409

16:                                               ; preds = %11
  %17 = load ptr, ptr %5, align 8, !dbg !409
  %18 = getelementptr inbounds %struct._ur_map, ptr %17, i32 0, i32 1, !dbg !409
  %19 = load i64, ptr %18, align 8, !dbg !409
  %20 = icmp eq i64 %19, 2427178479, !dbg !409
  br i1 %20, label %22, label %21, !dbg !411

21:                                               ; preds = %16, %11, %3
  store i32 0, ptr %4, align 4, !dbg !412
  br label %72, !dbg !412

22:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %8, metadata !413, metadata !DIExpression()), !dbg !415
  %23 = load ptr, ptr %5, align 8, !dbg !416
  %24 = getelementptr inbounds %struct._ur_map, ptr %23, i32 0, i32 0, !dbg !416
  %25 = load ptr, ptr %24, align 8, !dbg !416
  %26 = load i64, ptr %6, align 8, !dbg !416
  %27 = call i32 @kh_get_3(ptr noundef %25, i64 noundef %26), !dbg !416
  store i32 %27, ptr %8, align 4, !dbg !417
  %28 = load i32, ptr %8, align 4, !dbg !418
  %29 = load ptr, ptr %5, align 8, !dbg !420
  %30 = getelementptr inbounds %struct._ur_map, ptr %29, i32 0, i32 0, !dbg !420
  %31 = load ptr, ptr %30, align 8, !dbg !420
  %32 = getelementptr inbounds %struct.kh_3_t, ptr %31, i32 0, i32 0, !dbg !420
  %33 = load i32, ptr %32, align 8, !dbg !420
  %34 = icmp ne i32 %28, %33, !dbg !421
  br i1 %34, label %35, label %71, !dbg !422

35:                                               ; preds = %22
  %36 = load ptr, ptr %5, align 8, !dbg !423
  %37 = getelementptr inbounds %struct._ur_map, ptr %36, i32 0, i32 0, !dbg !423
  %38 = load ptr, ptr %37, align 8, !dbg !423
  %39 = getelementptr inbounds %struct.kh_3_t, ptr %38, i32 0, i32 4, !dbg !423
  %40 = load ptr, ptr %39, align 8, !dbg !423
  %41 = load i32, ptr %8, align 4, !dbg !423
  %42 = lshr i32 %41, 4, !dbg !423
  %43 = zext i32 %42 to i64, !dbg !423
  %44 = getelementptr inbounds i32, ptr %40, i64 %43, !dbg !423
  %45 = load i32, ptr %44, align 4, !dbg !423
  %46 = load i32, ptr %8, align 4, !dbg !423
  %47 = and i32 %46, 15, !dbg !423
  %48 = shl i32 %47, 1, !dbg !423
  %49 = lshr i32 %45, %48, !dbg !423
  %50 = and i32 %49, 3, !dbg !423
  %51 = icmp ne i32 %50, 0, !dbg !423
  br i1 %51, label %71, label %52, !dbg !424

52:                                               ; preds = %35
  %53 = load ptr, ptr %7, align 8, !dbg !425
  %54 = icmp ne ptr %53, null, !dbg !425
  br i1 %54, label %55, label %66, !dbg !428

55:                                               ; preds = %52
  %56 = load ptr, ptr %7, align 8, !dbg !429
  %57 = load ptr, ptr %5, align 8, !dbg !431
  %58 = getelementptr inbounds %struct._ur_map, ptr %57, i32 0, i32 0, !dbg !431
  %59 = load ptr, ptr %58, align 8, !dbg !431
  %60 = getelementptr inbounds %struct.kh_3_t, ptr %59, i32 0, i32 8, !dbg !431
  %61 = load ptr, ptr %60, align 8, !dbg !431
  %62 = load i32, ptr %8, align 4, !dbg !431
  %63 = zext i32 %62 to i64, !dbg !431
  %64 = getelementptr inbounds i64, ptr %61, i64 %63, !dbg !431
  %65 = load i64, ptr %64, align 8, !dbg !431
  call void %56(i64 noundef %65), !dbg !429
  br label %66, !dbg !432

66:                                               ; preds = %55, %52
  %67 = load ptr, ptr %5, align 8, !dbg !433
  %68 = getelementptr inbounds %struct._ur_map, ptr %67, i32 0, i32 0, !dbg !433
  %69 = load ptr, ptr %68, align 8, !dbg !433
  %70 = load i32, ptr %8, align 4, !dbg !433
  call void @kh_del_3(ptr noundef %69, i32 noundef %70), !dbg !433
  store i32 1, ptr %4, align 4, !dbg !434
  br label %72, !dbg !434

71:                                               ; preds = %35, %22
  store i32 0, ptr %4, align 4, !dbg !435
  br label %72, !dbg !435

72:                                               ; preds = %71, %66, %21
  %73 = load i32, ptr %4, align 4, !dbg !436
  ret i32 %73, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_map_exist(ptr noundef %0, i64 noundef %1) #0 !dbg !437 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !440, metadata !DIExpression()), !dbg !441
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !442, metadata !DIExpression()), !dbg !443
  %7 = load ptr, ptr %4, align 8, !dbg !444
  %8 = icmp ne ptr %7, null, !dbg !444
  br i1 %8, label %9, label %19, !dbg !444

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !444
  %11 = getelementptr inbounds %struct._ur_map, ptr %10, i32 0, i32 0, !dbg !444
  %12 = load ptr, ptr %11, align 8, !dbg !444
  %13 = icmp ne ptr %12, null, !dbg !444
  br i1 %13, label %14, label %19, !dbg !444

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !dbg !444
  %16 = getelementptr inbounds %struct._ur_map, ptr %15, i32 0, i32 1, !dbg !444
  %17 = load i64, ptr %16, align 8, !dbg !444
  %18 = icmp eq i64 %17, 2427178479, !dbg !444
  br i1 %18, label %20, label %19, !dbg !446

19:                                               ; preds = %14, %9, %2
  store i32 0, ptr %3, align 4, !dbg !447
  br label %52, !dbg !447

20:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %6, metadata !448, metadata !DIExpression()), !dbg !450
  %21 = load ptr, ptr %4, align 8, !dbg !451
  %22 = getelementptr inbounds %struct._ur_map, ptr %21, i32 0, i32 0, !dbg !451
  %23 = load ptr, ptr %22, align 8, !dbg !451
  %24 = load i64, ptr %5, align 8, !dbg !451
  %25 = call i32 @kh_get_3(ptr noundef %23, i64 noundef %24), !dbg !451
  store i32 %25, ptr %6, align 4, !dbg !452
  %26 = load i32, ptr %6, align 4, !dbg !453
  %27 = load ptr, ptr %4, align 8, !dbg !455
  %28 = getelementptr inbounds %struct._ur_map, ptr %27, i32 0, i32 0, !dbg !455
  %29 = load ptr, ptr %28, align 8, !dbg !455
  %30 = getelementptr inbounds %struct.kh_3_t, ptr %29, i32 0, i32 0, !dbg !455
  %31 = load i32, ptr %30, align 8, !dbg !455
  %32 = icmp ne i32 %26, %31, !dbg !456
  br i1 %32, label %33, label %51, !dbg !457

33:                                               ; preds = %20
  %34 = load ptr, ptr %4, align 8, !dbg !458
  %35 = getelementptr inbounds %struct._ur_map, ptr %34, i32 0, i32 0, !dbg !458
  %36 = load ptr, ptr %35, align 8, !dbg !458
  %37 = getelementptr inbounds %struct.kh_3_t, ptr %36, i32 0, i32 4, !dbg !458
  %38 = load ptr, ptr %37, align 8, !dbg !458
  %39 = load i32, ptr %6, align 4, !dbg !458
  %40 = lshr i32 %39, 4, !dbg !458
  %41 = zext i32 %40 to i64, !dbg !458
  %42 = getelementptr inbounds i32, ptr %38, i64 %41, !dbg !458
  %43 = load i32, ptr %42, align 4, !dbg !458
  %44 = load i32, ptr %6, align 4, !dbg !458
  %45 = and i32 %44, 15, !dbg !458
  %46 = shl i32 %45, 1, !dbg !458
  %47 = lshr i32 %43, %46, !dbg !458
  %48 = and i32 %47, 3, !dbg !458
  %49 = icmp ne i32 %48, 0, !dbg !458
  br i1 %49, label %51, label %50, !dbg !459

50:                                               ; preds = %33
  store i32 1, ptr %3, align 4, !dbg !460
  br label %52, !dbg !460

51:                                               ; preds = %33, %20
  store i32 0, ptr %3, align 4, !dbg !462
  br label %52, !dbg !462

52:                                               ; preds = %51, %50, %19
  %53 = load i32, ptr %3, align 4, !dbg !463
  ret i32 %53, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ur_map_free(ptr noundef %0) #0 !dbg !2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !465
  %3 = load ptr, ptr %2, align 8, !dbg !466
  %4 = icmp ne ptr %3, null, !dbg !466
  br i1 %4, label %5, label %47, !dbg !468

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !469
  %7 = load ptr, ptr %6, align 8, !dbg !469
  %8 = icmp ne ptr %7, null, !dbg !469
  br i1 %8, label %9, label %47, !dbg !469

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !dbg !469
  %11 = load ptr, ptr %10, align 8, !dbg !469
  %12 = getelementptr inbounds %struct._ur_map, ptr %11, i32 0, i32 0, !dbg !469
  %13 = load ptr, ptr %12, align 8, !dbg !469
  %14 = icmp ne ptr %13, null, !dbg !469
  br i1 %14, label %15, label %47, !dbg !469

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !dbg !469
  %17 = load ptr, ptr %16, align 8, !dbg !469
  %18 = getelementptr inbounds %struct._ur_map, ptr %17, i32 0, i32 1, !dbg !469
  %19 = load i64, ptr %18, align 8, !dbg !469
  %20 = icmp eq i64 %19, 2427178479, !dbg !469
  br i1 %20, label %21, label %47, !dbg !470

21:                                               ; preds = %15
  %22 = load i32, ptr @ur_map_free.khctest, align 4, !dbg !471
  %23 = icmp ne i32 %22, 0, !dbg !471
  br i1 %23, label %24, label %29, !dbg !475

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8, !dbg !476
  %26 = load ptr, ptr %25, align 8, !dbg !476
  %27 = getelementptr inbounds %struct._ur_map, ptr %26, i32 0, i32 0, !dbg !476
  %28 = load ptr, ptr %27, align 8, !dbg !476
  call void @kh_clear_3(ptr noundef %28), !dbg !476
  br label %29, !dbg !476

29:                                               ; preds = %24, %21
  %30 = load ptr, ptr %2, align 8, !dbg !477
  %31 = load ptr, ptr %30, align 8, !dbg !477
  %32 = getelementptr inbounds %struct._ur_map, ptr %31, i32 0, i32 0, !dbg !477
  %33 = load ptr, ptr %32, align 8, !dbg !477
  call void @kh_destroy_3(ptr noundef %33), !dbg !477
  %34 = load ptr, ptr %2, align 8, !dbg !478
  %35 = load ptr, ptr %34, align 8, !dbg !479
  %36 = getelementptr inbounds %struct._ur_map, ptr %35, i32 0, i32 0, !dbg !480
  store ptr null, ptr %36, align 8, !dbg !481
  %37 = load ptr, ptr %2, align 8, !dbg !482
  %38 = load ptr, ptr %37, align 8, !dbg !483
  %39 = getelementptr inbounds %struct._ur_map, ptr %38, i32 0, i32 1, !dbg !484
  store i64 0, ptr %39, align 8, !dbg !485
  %40 = load ptr, ptr %2, align 8, !dbg !486
  %41 = load ptr, ptr %40, align 8, !dbg !486
  %42 = getelementptr inbounds %struct._ur_map, ptr %41, i32 0, i32 2, !dbg !486
  %43 = call i32 @turn_mutex_destroy(ptr noundef %42), !dbg !486
  %44 = load ptr, ptr %2, align 8, !dbg !487
  %45 = load ptr, ptr %44, align 8, !dbg !488
  call void @free(ptr noundef %45) #10, !dbg !489
  %46 = load ptr, ptr %2, align 8, !dbg !490
  store ptr null, ptr %46, align 8, !dbg !491
  br label %47, !dbg !492

47:                                               ; preds = %29, %15, %9, %5, %1
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kh_clear_3(ptr noundef %0) #0 !dbg !494 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !497, metadata !DIExpression()), !dbg !498
  %3 = load ptr, ptr %2, align 8, !dbg !499
  %4 = icmp ne ptr %3, null, !dbg !499
  br i1 %4, label %5, label %25, !dbg !499

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !499
  %7 = getelementptr inbounds %struct.kh_3_t, ptr %6, i32 0, i32 4, !dbg !499
  %8 = load ptr, ptr %7, align 8, !dbg !499
  %9 = icmp ne ptr %8, null, !dbg !499
  br i1 %9, label %10, label %25, !dbg !498

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !501
  %12 = getelementptr inbounds %struct.kh_3_t, ptr %11, i32 0, i32 4, !dbg !501
  %13 = load ptr, ptr %12, align 8, !dbg !501
  %14 = load ptr, ptr %2, align 8, !dbg !501
  %15 = getelementptr inbounds %struct.kh_3_t, ptr %14, i32 0, i32 0, !dbg !501
  %16 = load i32, ptr %15, align 8, !dbg !501
  %17 = lshr i32 %16, 4, !dbg !501
  %18 = add i32 %17, 1, !dbg !501
  %19 = zext i32 %18 to i64, !dbg !501
  %20 = mul i64 %19, 4, !dbg !501
  call void @llvm.memset.p0.i64(ptr align 4 %13, i8 -86, i64 %20, i1 false), !dbg !501
  %21 = load ptr, ptr %2, align 8, !dbg !501
  %22 = getelementptr inbounds %struct.kh_3_t, ptr %21, i32 0, i32 2, !dbg !501
  store i32 0, ptr %22, align 8, !dbg !501
  %23 = load ptr, ptr %2, align 8, !dbg !501
  %24 = getelementptr inbounds %struct.kh_3_t, ptr %23, i32 0, i32 1, !dbg !501
  store i32 0, ptr %24, align 4, !dbg !501
  br label %25, !dbg !501

25:                                               ; preds = %10, %5, %1
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kh_destroy_3(ptr noundef %0) #0 !dbg !503 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !504, metadata !DIExpression()), !dbg !505
  %3 = load ptr, ptr %2, align 8, !dbg !506
  %4 = icmp ne ptr %3, null, !dbg !506
  br i1 %4, label %5, label %16, !dbg !505

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !508
  %7 = getelementptr inbounds %struct.kh_3_t, ptr %6, i32 0, i32 6, !dbg !508
  %8 = load ptr, ptr %7, align 8, !dbg !508
  call void @free(ptr noundef %8) #10, !dbg !508
  %9 = load ptr, ptr %2, align 8, !dbg !508
  %10 = getelementptr inbounds %struct.kh_3_t, ptr %9, i32 0, i32 4, !dbg !508
  %11 = load ptr, ptr %10, align 8, !dbg !508
  call void @free(ptr noundef %11) #10, !dbg !508
  %12 = load ptr, ptr %2, align 8, !dbg !508
  %13 = getelementptr inbounds %struct.kh_3_t, ptr %12, i32 0, i32 8, !dbg !508
  %14 = load ptr, ptr %13, align 8, !dbg !508
  call void @free(ptr noundef %14) #10, !dbg !508
  %15 = load ptr, ptr %2, align 8, !dbg !508
  call void @free(ptr noundef %15) #10, !dbg !508
  br label %16, !dbg !508

16:                                               ; preds = %5, %1
  ret void, !dbg !505
}

declare i32 @turn_mutex_destroy(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ur_map_size(ptr noundef %0) #0 !dbg !510 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !513, metadata !DIExpression()), !dbg !514
  %4 = load ptr, ptr %3, align 8, !dbg !515
  %5 = icmp ne ptr %4, null, !dbg !515
  br i1 %5, label %6, label %23, !dbg !515

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !515
  %8 = getelementptr inbounds %struct._ur_map, ptr %7, i32 0, i32 0, !dbg !515
  %9 = load ptr, ptr %8, align 8, !dbg !515
  %10 = icmp ne ptr %9, null, !dbg !515
  br i1 %10, label %11, label %23, !dbg !515

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !515
  %13 = getelementptr inbounds %struct._ur_map, ptr %12, i32 0, i32 1, !dbg !515
  %14 = load i64, ptr %13, align 8, !dbg !515
  %15 = icmp eq i64 %14, 2427178479, !dbg !515
  br i1 %15, label %16, label %23, !dbg !517

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8, !dbg !518
  %18 = getelementptr inbounds %struct._ur_map, ptr %17, i32 0, i32 0, !dbg !518
  %19 = load ptr, ptr %18, align 8, !dbg !518
  %20 = getelementptr inbounds %struct.kh_3_t, ptr %19, i32 0, i32 1, !dbg !518
  %21 = load i32, ptr %20, align 4, !dbg !518
  %22 = zext i32 %21 to i64, !dbg !518
  store i64 %22, ptr %2, align 8, !dbg !520
  br label %24, !dbg !520

23:                                               ; preds = %11, %6, %1
  store i64 0, ptr %2, align 8, !dbg !521
  br label %24, !dbg !521

24:                                               ; preds = %23, %16
  %25 = load i64, ptr %2, align 8, !dbg !523
  ret i64 %25, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_map_foreach(ptr noundef %0, ptr noundef %1) #0 !dbg !524 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !531, metadata !DIExpression()), !dbg !532
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !533, metadata !DIExpression()), !dbg !534
  %7 = load ptr, ptr %4, align 8, !dbg !535
  %8 = icmp ne ptr %7, null, !dbg !535
  br i1 %8, label %9, label %80, !dbg !537

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !538
  %11 = icmp ne ptr %10, null, !dbg !538
  br i1 %11, label %12, label %80, !dbg !539

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !dbg !540
  %14 = icmp ne ptr %13, null, !dbg !540
  br i1 %14, label %15, label %80, !dbg !540

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8, !dbg !540
  %17 = getelementptr inbounds %struct._ur_map, ptr %16, i32 0, i32 0, !dbg !540
  %18 = load ptr, ptr %17, align 8, !dbg !540
  %19 = icmp ne ptr %18, null, !dbg !540
  br i1 %19, label %20, label %80, !dbg !540

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !dbg !540
  %22 = getelementptr inbounds %struct._ur_map, ptr %21, i32 0, i32 1, !dbg !540
  %23 = load i64, ptr %22, align 8, !dbg !540
  %24 = icmp eq i64 %23, 2427178479, !dbg !540
  br i1 %24, label %25, label %80, !dbg !541

25:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %6, metadata !542, metadata !DIExpression()), !dbg !544
  store i32 0, ptr %6, align 4, !dbg !545
  br label %26, !dbg !547

26:                                               ; preds = %76, %25
  %27 = load i32, ptr %6, align 4, !dbg !548
  %28 = load ptr, ptr %4, align 8, !dbg !550
  %29 = getelementptr inbounds %struct._ur_map, ptr %28, i32 0, i32 0, !dbg !550
  %30 = load ptr, ptr %29, align 8, !dbg !550
  %31 = getelementptr inbounds %struct.kh_3_t, ptr %30, i32 0, i32 0, !dbg !550
  %32 = load i32, ptr %31, align 8, !dbg !550
  %33 = icmp ne i32 %27, %32, !dbg !551
  br i1 %33, label %34, label %79, !dbg !552

34:                                               ; preds = %26
  %35 = load ptr, ptr %4, align 8, !dbg !553
  %36 = getelementptr inbounds %struct._ur_map, ptr %35, i32 0, i32 0, !dbg !553
  %37 = load ptr, ptr %36, align 8, !dbg !553
  %38 = getelementptr inbounds %struct.kh_3_t, ptr %37, i32 0, i32 4, !dbg !553
  %39 = load ptr, ptr %38, align 8, !dbg !553
  %40 = load i32, ptr %6, align 4, !dbg !553
  %41 = lshr i32 %40, 4, !dbg !553
  %42 = zext i32 %41 to i64, !dbg !553
  %43 = getelementptr inbounds i32, ptr %39, i64 %42, !dbg !553
  %44 = load i32, ptr %43, align 4, !dbg !553
  %45 = load i32, ptr %6, align 4, !dbg !553
  %46 = and i32 %45, 15, !dbg !553
  %47 = shl i32 %46, 1, !dbg !553
  %48 = lshr i32 %44, %47, !dbg !553
  %49 = and i32 %48, 3, !dbg !553
  %50 = icmp ne i32 %49, 0, !dbg !553
  br i1 %50, label %75, label %51, !dbg !556

51:                                               ; preds = %34
  %52 = load ptr, ptr %5, align 8, !dbg !557
  %53 = load ptr, ptr %4, align 8, !dbg !560
  %54 = getelementptr inbounds %struct._ur_map, ptr %53, i32 0, i32 0, !dbg !560
  %55 = load ptr, ptr %54, align 8, !dbg !560
  %56 = getelementptr inbounds %struct.kh_3_t, ptr %55, i32 0, i32 6, !dbg !560
  %57 = load ptr, ptr %56, align 8, !dbg !560
  %58 = load i32, ptr %6, align 4, !dbg !560
  %59 = zext i32 %58 to i64, !dbg !560
  %60 = getelementptr inbounds i64, ptr %57, i64 %59, !dbg !560
  %61 = load i64, ptr %60, align 8, !dbg !560
  %62 = load ptr, ptr %4, align 8, !dbg !561
  %63 = getelementptr inbounds %struct._ur_map, ptr %62, i32 0, i32 0, !dbg !561
  %64 = load ptr, ptr %63, align 8, !dbg !561
  %65 = getelementptr inbounds %struct.kh_3_t, ptr %64, i32 0, i32 8, !dbg !561
  %66 = load ptr, ptr %65, align 8, !dbg !561
  %67 = load i32, ptr %6, align 4, !dbg !561
  %68 = zext i32 %67 to i64, !dbg !561
  %69 = getelementptr inbounds i64, ptr %66, i64 %68, !dbg !561
  %70 = load i64, ptr %69, align 8, !dbg !561
  %71 = call i32 %52(i64 noundef %61, i64 noundef %70), !dbg !557
  %72 = icmp ne i32 %71, 0, !dbg !557
  br i1 %72, label %73, label %74, !dbg !562

73:                                               ; preds = %51
  store i32 1, ptr %3, align 4, !dbg !563
  br label %81, !dbg !563

74:                                               ; preds = %51
  br label %75, !dbg !565

75:                                               ; preds = %74, %34
  br label %76, !dbg !566

76:                                               ; preds = %75
  %77 = load i32, ptr %6, align 4, !dbg !567
  %78 = add i32 %77, 1, !dbg !567
  store i32 %78, ptr %6, align 4, !dbg !567
  br label %26, !dbg !568, !llvm.loop !569

79:                                               ; preds = %26
  br label %80, !dbg !571

80:                                               ; preds = %79, %20, %15, %12, %9, %2
  store i32 0, ptr %3, align 4, !dbg !572
  br label %81, !dbg !572

81:                                               ; preds = %80, %73
  %82 = load i32, ptr %3, align 4, !dbg !573
  ret i32 %82, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_map_foreach_arg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !574 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !581, metadata !DIExpression()), !dbg !582
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !583, metadata !DIExpression()), !dbg !584
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !585, metadata !DIExpression()), !dbg !586
  %9 = load ptr, ptr %5, align 8, !dbg !587
  %10 = icmp ne ptr %9, null, !dbg !587
  br i1 %10, label %11, label %83, !dbg !589

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !dbg !590
  %13 = icmp ne ptr %12, null, !dbg !590
  br i1 %13, label %14, label %83, !dbg !591

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !dbg !592
  %16 = icmp ne ptr %15, null, !dbg !592
  br i1 %16, label %17, label %83, !dbg !592

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 8, !dbg !592
  %19 = getelementptr inbounds %struct._ur_map, ptr %18, i32 0, i32 0, !dbg !592
  %20 = load ptr, ptr %19, align 8, !dbg !592
  %21 = icmp ne ptr %20, null, !dbg !592
  br i1 %21, label %22, label %83, !dbg !592

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !dbg !592
  %24 = getelementptr inbounds %struct._ur_map, ptr %23, i32 0, i32 1, !dbg !592
  %25 = load i64, ptr %24, align 8, !dbg !592
  %26 = icmp eq i64 %25, 2427178479, !dbg !592
  br i1 %26, label %27, label %83, !dbg !593

27:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %8, metadata !594, metadata !DIExpression()), !dbg !596
  store i32 0, ptr %8, align 4, !dbg !597
  br label %28, !dbg !599

28:                                               ; preds = %79, %27
  %29 = load i32, ptr %8, align 4, !dbg !600
  %30 = load ptr, ptr %5, align 8, !dbg !602
  %31 = getelementptr inbounds %struct._ur_map, ptr %30, i32 0, i32 0, !dbg !602
  %32 = load ptr, ptr %31, align 8, !dbg !602
  %33 = getelementptr inbounds %struct.kh_3_t, ptr %32, i32 0, i32 0, !dbg !602
  %34 = load i32, ptr %33, align 8, !dbg !602
  %35 = icmp ne i32 %29, %34, !dbg !603
  br i1 %35, label %36, label %82, !dbg !604

36:                                               ; preds = %28
  %37 = load ptr, ptr %5, align 8, !dbg !605
  %38 = getelementptr inbounds %struct._ur_map, ptr %37, i32 0, i32 0, !dbg !605
  %39 = load ptr, ptr %38, align 8, !dbg !605
  %40 = getelementptr inbounds %struct.kh_3_t, ptr %39, i32 0, i32 4, !dbg !605
  %41 = load ptr, ptr %40, align 8, !dbg !605
  %42 = load i32, ptr %8, align 4, !dbg !605
  %43 = lshr i32 %42, 4, !dbg !605
  %44 = zext i32 %43 to i64, !dbg !605
  %45 = getelementptr inbounds i32, ptr %41, i64 %44, !dbg !605
  %46 = load i32, ptr %45, align 4, !dbg !605
  %47 = load i32, ptr %8, align 4, !dbg !605
  %48 = and i32 %47, 15, !dbg !605
  %49 = shl i32 %48, 1, !dbg !605
  %50 = lshr i32 %46, %49, !dbg !605
  %51 = and i32 %50, 3, !dbg !605
  %52 = icmp ne i32 %51, 0, !dbg !605
  br i1 %52, label %78, label %53, !dbg !608

53:                                               ; preds = %36
  %54 = load ptr, ptr %6, align 8, !dbg !609
  %55 = load ptr, ptr %5, align 8, !dbg !612
  %56 = getelementptr inbounds %struct._ur_map, ptr %55, i32 0, i32 0, !dbg !612
  %57 = load ptr, ptr %56, align 8, !dbg !612
  %58 = getelementptr inbounds %struct.kh_3_t, ptr %57, i32 0, i32 6, !dbg !612
  %59 = load ptr, ptr %58, align 8, !dbg !612
  %60 = load i32, ptr %8, align 4, !dbg !612
  %61 = zext i32 %60 to i64, !dbg !612
  %62 = getelementptr inbounds i64, ptr %59, i64 %61, !dbg !612
  %63 = load i64, ptr %62, align 8, !dbg !612
  %64 = load ptr, ptr %5, align 8, !dbg !613
  %65 = getelementptr inbounds %struct._ur_map, ptr %64, i32 0, i32 0, !dbg !613
  %66 = load ptr, ptr %65, align 8, !dbg !613
  %67 = getelementptr inbounds %struct.kh_3_t, ptr %66, i32 0, i32 8, !dbg !613
  %68 = load ptr, ptr %67, align 8, !dbg !613
  %69 = load i32, ptr %8, align 4, !dbg !613
  %70 = zext i32 %69 to i64, !dbg !613
  %71 = getelementptr inbounds i64, ptr %68, i64 %70, !dbg !613
  %72 = load i64, ptr %71, align 8, !dbg !613
  %73 = load ptr, ptr %7, align 8, !dbg !614
  %74 = call i32 %54(i64 noundef %63, i64 noundef %72, ptr noundef %73), !dbg !609
  %75 = icmp ne i32 %74, 0, !dbg !609
  br i1 %75, label %76, label %77, !dbg !615

76:                                               ; preds = %53
  store i32 1, ptr %4, align 4, !dbg !616
  br label %84, !dbg !616

77:                                               ; preds = %53
  br label %78, !dbg !618

78:                                               ; preds = %77, %36
  br label %79, !dbg !619

79:                                               ; preds = %78
  %80 = load i32, ptr %8, align 4, !dbg !620
  %81 = add i32 %80, 1, !dbg !620
  store i32 %81, ptr %8, align 4, !dbg !620
  br label %28, !dbg !621, !llvm.loop !622

82:                                               ; preds = %28
  br label %83, !dbg !624

83:                                               ; preds = %82, %22, %17, %14, %11, %3
  store i32 0, ptr %4, align 4, !dbg !625
  br label %84, !dbg !625

84:                                               ; preds = %83, %76
  %85 = load i32, ptr %4, align 4, !dbg !626
  ret i32 %85, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_map_lock(ptr noundef %0) #0 !dbg !627 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !630, metadata !DIExpression()), !dbg !631
  %4 = load ptr, ptr %3, align 8, !dbg !632
  %5 = icmp ne ptr %4, null, !dbg !632
  br i1 %5, label %6, label %20, !dbg !632

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !632
  %8 = getelementptr inbounds %struct._ur_map, ptr %7, i32 0, i32 0, !dbg !632
  %9 = load ptr, ptr %8, align 8, !dbg !632
  %10 = icmp ne ptr %9, null, !dbg !632
  br i1 %10, label %11, label %20, !dbg !632

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !632
  %13 = getelementptr inbounds %struct._ur_map, ptr %12, i32 0, i32 1, !dbg !632
  %14 = load i64, ptr %13, align 8, !dbg !632
  %15 = icmp eq i64 %14, 2427178479, !dbg !632
  br i1 %15, label %16, label %20, !dbg !634

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8, !dbg !635
  %18 = getelementptr inbounds %struct._ur_map, ptr %17, i32 0, i32 2, !dbg !635
  %19 = call i32 @turn_mutex_lock(ptr noundef %18), !dbg !635
  store i32 0, ptr %2, align 4, !dbg !637
  br label %21, !dbg !637

20:                                               ; preds = %11, %6, %1
  store i32 -1, ptr %2, align 4, !dbg !638
  br label %21, !dbg !638

21:                                               ; preds = %20, %16
  %22 = load i32, ptr %2, align 4, !dbg !639
  ret i32 %22, !dbg !639
}

declare i32 @turn_mutex_lock(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_map_unlock(ptr noundef %0) #0 !dbg !640 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !641, metadata !DIExpression()), !dbg !642
  %4 = load ptr, ptr %3, align 8, !dbg !643
  %5 = icmp ne ptr %4, null, !dbg !643
  br i1 %5, label %6, label %20, !dbg !643

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !643
  %8 = getelementptr inbounds %struct._ur_map, ptr %7, i32 0, i32 0, !dbg !643
  %9 = load ptr, ptr %8, align 8, !dbg !643
  %10 = icmp ne ptr %9, null, !dbg !643
  br i1 %10, label %11, label %20, !dbg !643

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !643
  %13 = getelementptr inbounds %struct._ur_map, ptr %12, i32 0, i32 1, !dbg !643
  %14 = load i64, ptr %13, align 8, !dbg !643
  %15 = icmp eq i64 %14, 2427178479, !dbg !643
  br i1 %15, label %16, label %20, !dbg !645

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8, !dbg !646
  %18 = getelementptr inbounds %struct._ur_map, ptr %17, i32 0, i32 2, !dbg !646
  %19 = call i32 @turn_mutex_unlock(ptr noundef %18), !dbg !646
  store i32 0, ptr %2, align 4, !dbg !648
  br label %21, !dbg !648

20:                                               ; preds = %11, %6, %1
  store i32 -1, ptr %2, align 4, !dbg !649
  br label %21, !dbg !649

21:                                               ; preds = %20, %16
  %22 = load i32, ptr %2, align 4, !dbg !650
  ret i32 %22, !dbg !650
}

declare i32 @turn_mutex_unlock(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lm_map_init(ptr noundef %0) #0 !dbg !651 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !673
  %3 = load ptr, ptr %2, align 8, !dbg !674
  %4 = icmp ne ptr %3, null, !dbg !674
  br i1 %4, label %5, label %7, !dbg !676

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !677
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 576, i1 false), !dbg !679
  br label %7, !dbg !680

7:                                                ; preds = %5, %1
  ret void, !dbg !681
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm_map_put(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !682 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !685, metadata !DIExpression()), !dbg !686
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !687, metadata !DIExpression()), !dbg !688
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata ptr %8, metadata !691, metadata !DIExpression()), !dbg !692
  store i32 -1, ptr %8, align 4, !dbg !692
  %19 = load ptr, ptr %5, align 8, !dbg !693
  %20 = icmp ne ptr %19, null, !dbg !693
  br i1 %20, label %21, label %227, !dbg !695

21:                                               ; preds = %3
  %22 = load i64, ptr %6, align 8, !dbg !696
  %23 = icmp ne i64 %22, 0, !dbg !696
  br i1 %23, label %24, label %227, !dbg !697

24:                                               ; preds = %21
  %25 = load i64, ptr %7, align 8, !dbg !698
  %26 = icmp ne i64 %25, 0, !dbg !698
  br i1 %26, label %27, label %227, !dbg !699

27:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %9, metadata !700, metadata !DIExpression()), !dbg !702
  %28 = load i64, ptr %6, align 8, !dbg !703
  %29 = and i64 %28, 7, !dbg !704
  store i64 %29, ptr %9, align 8, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %10, metadata !705, metadata !DIExpression()), !dbg !707
  %30 = load ptr, ptr %5, align 8, !dbg !708
  %31 = getelementptr inbounds %struct._lm_map, ptr %30, i32 0, i32 0, !dbg !709
  %32 = load i64, ptr %9, align 8, !dbg !710
  %33 = getelementptr inbounds [8 x %struct._lm_map_array], ptr %31, i64 0, i64 %32, !dbg !708
  store ptr %33, ptr %10, align 8, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %11, metadata !711, metadata !DIExpression()), !dbg !712
  store i64 0, ptr %11, align 8, !dbg !713
  br label %34, !dbg !715

34:                                               ; preds = %75, %27
  %35 = load i64, ptr %11, align 8, !dbg !716
  %36 = icmp ult i64 %35, 3, !dbg !718
  br i1 %36, label %37, label %78, !dbg !719

37:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %12, metadata !720, metadata !DIExpression()), !dbg !722
  %38 = load ptr, ptr %10, align 8, !dbg !723
  %39 = getelementptr inbounds %struct._lm_map_array, ptr %38, i32 0, i32 0, !dbg !724
  %40 = load i64, ptr %11, align 8, !dbg !725
  %41 = getelementptr inbounds [3 x i64], ptr %39, i64 0, i64 %40, !dbg !723
  %42 = load i64, ptr %41, align 8, !dbg !723
  store i64 %42, ptr %12, align 8, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %13, metadata !726, metadata !DIExpression()), !dbg !727
  %43 = load ptr, ptr %10, align 8, !dbg !728
  %44 = getelementptr inbounds %struct._lm_map_array, ptr %43, i32 0, i32 1, !dbg !729
  %45 = load i64, ptr %11, align 8, !dbg !730
  %46 = getelementptr inbounds [3 x i64], ptr %44, i64 0, i64 %45, !dbg !728
  %47 = load i64, ptr %46, align 8, !dbg !728
  store i64 %47, ptr %13, align 8, !dbg !727
  %48 = load i64, ptr %12, align 8, !dbg !731
  %49 = load i64, ptr %6, align 8, !dbg !733
  %50 = icmp eq i64 %48, %49, !dbg !734
  br i1 %50, label %51, label %57, !dbg !735

51:                                               ; preds = %37
  %52 = load i64, ptr %13, align 8, !dbg !736
  %53 = load i64, ptr %7, align 8, !dbg !739
  %54 = icmp eq i64 %52, %53, !dbg !740
  br i1 %54, label %55, label %56, !dbg !741

55:                                               ; preds = %51
  store i32 0, ptr %4, align 4, !dbg !742
  br label %229, !dbg !742

56:                                               ; preds = %51
  store i32 -1, ptr %4, align 4, !dbg !744
  br label %229, !dbg !744

57:                                               ; preds = %37
  %58 = load i64, ptr %12, align 8, !dbg !746
  %59 = icmp ne i64 %58, 0, !dbg !746
  br i1 %59, label %60, label %63, !dbg !748

60:                                               ; preds = %57
  %61 = load i64, ptr %13, align 8, !dbg !749
  %62 = icmp ne i64 %61, 0, !dbg !749
  br i1 %62, label %74, label %63, !dbg !750

63:                                               ; preds = %60, %57
  %64 = load i64, ptr %6, align 8, !dbg !751
  %65 = load ptr, ptr %10, align 8, !dbg !753
  %66 = getelementptr inbounds %struct._lm_map_array, ptr %65, i32 0, i32 0, !dbg !754
  %67 = load i64, ptr %11, align 8, !dbg !755
  %68 = getelementptr inbounds [3 x i64], ptr %66, i64 0, i64 %67, !dbg !753
  store i64 %64, ptr %68, align 8, !dbg !756
  %69 = load i64, ptr %7, align 8, !dbg !757
  %70 = load ptr, ptr %10, align 8, !dbg !758
  %71 = getelementptr inbounds %struct._lm_map_array, ptr %70, i32 0, i32 1, !dbg !759
  %72 = load i64, ptr %11, align 8, !dbg !760
  %73 = getelementptr inbounds [3 x i64], ptr %71, i64 0, i64 %72, !dbg !758
  store i64 %69, ptr %73, align 8, !dbg !761
  store i32 0, ptr %4, align 4, !dbg !762
  br label %229, !dbg !762

74:                                               ; preds = %60
  br label %75, !dbg !763

75:                                               ; preds = %74
  %76 = load i64, ptr %11, align 8, !dbg !764
  %77 = add i64 %76, 1, !dbg !764
  store i64 %77, ptr %11, align 8, !dbg !764
  br label %34, !dbg !765, !llvm.loop !766

78:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %14, metadata !768, metadata !DIExpression()), !dbg !769
  %79 = load ptr, ptr %10, align 8, !dbg !770
  %80 = getelementptr inbounds %struct._lm_map_array, ptr %79, i32 0, i32 2, !dbg !771
  %81 = load i64, ptr %80, align 8, !dbg !771
  store i64 %81, ptr %14, align 8, !dbg !769
  %82 = load i64, ptr %14, align 8, !dbg !772
  %83 = icmp ne i64 %82, 0, !dbg !772
  br i1 %83, label %84, label %175, !dbg !774

84:                                               ; preds = %78
  %85 = load ptr, ptr %10, align 8, !dbg !775
  %86 = getelementptr inbounds %struct._lm_map_array, ptr %85, i32 0, i32 3, !dbg !776
  %87 = load ptr, ptr %86, align 8, !dbg !776
  %88 = icmp ne ptr %87, null, !dbg !775
  br i1 %88, label %89, label %175, !dbg !777

89:                                               ; preds = %84
  %90 = load ptr, ptr %10, align 8, !dbg !778
  %91 = getelementptr inbounds %struct._lm_map_array, ptr %90, i32 0, i32 4, !dbg !779
  %92 = load ptr, ptr %91, align 8, !dbg !779
  %93 = icmp ne ptr %92, null, !dbg !778
  br i1 %93, label %94, label %175, !dbg !780

94:                                               ; preds = %89
  store i64 0, ptr %11, align 8, !dbg !781
  br label %95, !dbg !784

95:                                               ; preds = %171, %94
  %96 = load i64, ptr %11, align 8, !dbg !785
  %97 = load i64, ptr %14, align 8, !dbg !787
  %98 = icmp ult i64 %96, %97, !dbg !788
  br i1 %98, label %99, label %174, !dbg !789

99:                                               ; preds = %95
  call void @llvm.dbg.declare(metadata ptr %15, metadata !790, metadata !DIExpression()), !dbg !792
  %100 = load ptr, ptr %10, align 8, !dbg !793
  %101 = getelementptr inbounds %struct._lm_map_array, ptr %100, i32 0, i32 3, !dbg !794
  %102 = load ptr, ptr %101, align 8, !dbg !794
  %103 = load i64, ptr %11, align 8, !dbg !795
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103, !dbg !793
  %105 = load ptr, ptr %104, align 8, !dbg !793
  store ptr %105, ptr %15, align 8, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %16, metadata !796, metadata !DIExpression()), !dbg !797
  %106 = load ptr, ptr %10, align 8, !dbg !798
  %107 = getelementptr inbounds %struct._lm_map_array, ptr %106, i32 0, i32 4, !dbg !799
  %108 = load ptr, ptr %107, align 8, !dbg !799
  %109 = load i64, ptr %11, align 8, !dbg !800
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109, !dbg !798
  %111 = load ptr, ptr %110, align 8, !dbg !798
  store ptr %111, ptr %16, align 8, !dbg !797
  %112 = load ptr, ptr %15, align 8, !dbg !801
  %113 = icmp ne ptr %112, null, !dbg !801
  br i1 %113, label %114, label %131, !dbg !803

114:                                              ; preds = %99
  %115 = load ptr, ptr %16, align 8, !dbg !804
  %116 = icmp ne ptr %115, null, !dbg !804
  br i1 %116, label %117, label %131, !dbg !805

117:                                              ; preds = %114
  %118 = load ptr, ptr %15, align 8, !dbg !806
  %119 = load i64, ptr %118, align 8, !dbg !809
  %120 = icmp ne i64 %119, 0, !dbg !810
  br i1 %120, label %121, label %125, !dbg !811

121:                                              ; preds = %117
  %122 = load ptr, ptr %16, align 8, !dbg !812
  %123 = load i64, ptr %122, align 8, !dbg !813
  %124 = icmp ne i64 %123, 0, !dbg !814
  br i1 %124, label %130, label %125, !dbg !815

125:                                              ; preds = %121, %117
  %126 = load i64, ptr %6, align 8, !dbg !816
  %127 = load ptr, ptr %15, align 8, !dbg !818
  store i64 %126, ptr %127, align 8, !dbg !819
  %128 = load i64, ptr %7, align 8, !dbg !820
  %129 = load ptr, ptr %16, align 8, !dbg !821
  store i64 %128, ptr %129, align 8, !dbg !822
  store i32 0, ptr %4, align 4, !dbg !823
  br label %229, !dbg !823

130:                                              ; preds = %121
  br label %170, !dbg !824

131:                                              ; preds = %114, %99
  %132 = load ptr, ptr %15, align 8, !dbg !825
  %133 = load i64, ptr %132, align 8, !dbg !828
  %134 = icmp ne i64 %133, 0, !dbg !829
  br i1 %134, label %148, label %135, !dbg !830

135:                                              ; preds = %131
  %136 = call noalias ptr @malloc(i64 noundef 8) #9, !dbg !831
  %137 = load ptr, ptr %10, align 8, !dbg !833
  %138 = getelementptr inbounds %struct._lm_map_array, ptr %137, i32 0, i32 3, !dbg !834
  %139 = load ptr, ptr %138, align 8, !dbg !834
  %140 = load i64, ptr %11, align 8, !dbg !835
  %141 = getelementptr inbounds ptr, ptr %139, i64 %140, !dbg !833
  store ptr %136, ptr %141, align 8, !dbg !836
  %142 = load ptr, ptr %10, align 8, !dbg !837
  %143 = getelementptr inbounds %struct._lm_map_array, ptr %142, i32 0, i32 3, !dbg !838
  %144 = load ptr, ptr %143, align 8, !dbg !838
  %145 = load i64, ptr %11, align 8, !dbg !839
  %146 = getelementptr inbounds ptr, ptr %144, i64 %145, !dbg !837
  %147 = load ptr, ptr %146, align 8, !dbg !837
  store ptr %147, ptr %15, align 8, !dbg !840
  br label %148, !dbg !841

148:                                              ; preds = %135, %131
  %149 = load ptr, ptr %16, align 8, !dbg !842
  %150 = load i64, ptr %149, align 8, !dbg !844
  %151 = icmp ne i64 %150, 0, !dbg !845
  br i1 %151, label %165, label %152, !dbg !846

152:                                              ; preds = %148
  %153 = call noalias ptr @malloc(i64 noundef 8) #9, !dbg !847
  %154 = load ptr, ptr %10, align 8, !dbg !849
  %155 = getelementptr inbounds %struct._lm_map_array, ptr %154, i32 0, i32 4, !dbg !850
  %156 = load ptr, ptr %155, align 8, !dbg !850
  %157 = load i64, ptr %11, align 8, !dbg !851
  %158 = getelementptr inbounds ptr, ptr %156, i64 %157, !dbg !849
  store ptr %153, ptr %158, align 8, !dbg !852
  %159 = load ptr, ptr %10, align 8, !dbg !853
  %160 = getelementptr inbounds %struct._lm_map_array, ptr %159, i32 0, i32 4, !dbg !854
  %161 = load ptr, ptr %160, align 8, !dbg !854
  %162 = load i64, ptr %11, align 8, !dbg !855
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162, !dbg !853
  %164 = load ptr, ptr %163, align 8, !dbg !853
  store ptr %164, ptr %16, align 8, !dbg !856
  br label %165, !dbg !857

165:                                              ; preds = %152, %148
  %166 = load i64, ptr %6, align 8, !dbg !858
  %167 = load ptr, ptr %15, align 8, !dbg !859
  store i64 %166, ptr %167, align 8, !dbg !860
  %168 = load i64, ptr %7, align 8, !dbg !861
  %169 = load ptr, ptr %16, align 8, !dbg !862
  store i64 %168, ptr %169, align 8, !dbg !863
  store i32 0, ptr %4, align 4, !dbg !864
  br label %229, !dbg !864

170:                                              ; preds = %130
  br label %171, !dbg !865

171:                                              ; preds = %170
  %172 = load i64, ptr %11, align 8, !dbg !866
  %173 = add i64 %172, 1, !dbg !866
  store i64 %173, ptr %11, align 8, !dbg !866
  br label %95, !dbg !867, !llvm.loop !868

174:                                              ; preds = %95
  br label %175, !dbg !870

175:                                              ; preds = %174, %89, %84, %78
  call void @llvm.dbg.declare(metadata ptr %17, metadata !871, metadata !DIExpression()), !dbg !872
  %176 = load i64, ptr %14, align 8, !dbg !873
  store i64 %176, ptr %17, align 8, !dbg !872
  call void @llvm.dbg.declare(metadata ptr %18, metadata !874, metadata !DIExpression()), !dbg !875
  %177 = load i64, ptr %14, align 8, !dbg !876
  %178 = mul i64 %177, 8, !dbg !877
  store i64 %178, ptr %18, align 8, !dbg !875
  %179 = load ptr, ptr %10, align 8, !dbg !878
  %180 = getelementptr inbounds %struct._lm_map_array, ptr %179, i32 0, i32 3, !dbg !879
  %181 = load ptr, ptr %180, align 8, !dbg !879
  %182 = load i64, ptr %18, align 8, !dbg !880
  %183 = add i64 %182, 8, !dbg !881
  %184 = call ptr @realloc(ptr noundef %181, i64 noundef %183) #11, !dbg !882
  %185 = load ptr, ptr %10, align 8, !dbg !883
  %186 = getelementptr inbounds %struct._lm_map_array, ptr %185, i32 0, i32 3, !dbg !884
  store ptr %184, ptr %186, align 8, !dbg !885
  %187 = call noalias ptr @malloc(i64 noundef 8) #9, !dbg !886
  %188 = load ptr, ptr %10, align 8, !dbg !887
  %189 = getelementptr inbounds %struct._lm_map_array, ptr %188, i32 0, i32 3, !dbg !888
  %190 = load ptr, ptr %189, align 8, !dbg !888
  %191 = load i64, ptr %17, align 8, !dbg !889
  %192 = getelementptr inbounds ptr, ptr %190, i64 %191, !dbg !887
  store ptr %187, ptr %192, align 8, !dbg !890
  %193 = load i64, ptr %6, align 8, !dbg !891
  %194 = load ptr, ptr %10, align 8, !dbg !892
  %195 = getelementptr inbounds %struct._lm_map_array, ptr %194, i32 0, i32 3, !dbg !893
  %196 = load ptr, ptr %195, align 8, !dbg !893
  %197 = load i64, ptr %17, align 8, !dbg !894
  %198 = getelementptr inbounds ptr, ptr %196, i64 %197, !dbg !892
  %199 = load ptr, ptr %198, align 8, !dbg !892
  store i64 %193, ptr %199, align 8, !dbg !895
  %200 = load i64, ptr %14, align 8, !dbg !896
  %201 = mul i64 %200, 8, !dbg !897
  store i64 %201, ptr %18, align 8, !dbg !898
  %202 = load ptr, ptr %10, align 8, !dbg !899
  %203 = getelementptr inbounds %struct._lm_map_array, ptr %202, i32 0, i32 4, !dbg !900
  %204 = load ptr, ptr %203, align 8, !dbg !900
  %205 = load i64, ptr %18, align 8, !dbg !901
  %206 = add i64 %205, 8, !dbg !902
  %207 = call ptr @realloc(ptr noundef %204, i64 noundef %206) #11, !dbg !903
  %208 = load ptr, ptr %10, align 8, !dbg !904
  %209 = getelementptr inbounds %struct._lm_map_array, ptr %208, i32 0, i32 4, !dbg !905
  store ptr %207, ptr %209, align 8, !dbg !906
  %210 = call noalias ptr @malloc(i64 noundef 8) #9, !dbg !907
  %211 = load ptr, ptr %10, align 8, !dbg !908
  %212 = getelementptr inbounds %struct._lm_map_array, ptr %211, i32 0, i32 4, !dbg !909
  %213 = load ptr, ptr %212, align 8, !dbg !909
  %214 = load i64, ptr %17, align 8, !dbg !910
  %215 = getelementptr inbounds ptr, ptr %213, i64 %214, !dbg !908
  store ptr %210, ptr %215, align 8, !dbg !911
  %216 = load i64, ptr %7, align 8, !dbg !912
  %217 = load ptr, ptr %10, align 8, !dbg !913
  %218 = getelementptr inbounds %struct._lm_map_array, ptr %217, i32 0, i32 4, !dbg !914
  %219 = load ptr, ptr %218, align 8, !dbg !914
  %220 = load i64, ptr %17, align 8, !dbg !915
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220, !dbg !913
  %222 = load ptr, ptr %221, align 8, !dbg !913
  store i64 %216, ptr %222, align 8, !dbg !916
  %223 = load ptr, ptr %10, align 8, !dbg !917
  %224 = getelementptr inbounds %struct._lm_map_array, ptr %223, i32 0, i32 2, !dbg !918
  %225 = load i64, ptr %224, align 8, !dbg !919
  %226 = add i64 %225, 1, !dbg !919
  store i64 %226, ptr %224, align 8, !dbg !919
  store i32 0, ptr %4, align 4, !dbg !920
  br label %229, !dbg !920

227:                                              ; preds = %24, %21, %3
  %228 = load i32, ptr %8, align 4, !dbg !921
  store i32 %228, ptr %4, align 4, !dbg !922
  br label %229, !dbg !922

229:                                              ; preds = %227, %175, %165, %125, %63, %56, %55
  %230 = load i32, ptr %4, align 4, !dbg !923
  ret i32 %230, !dbg !923
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm_map_get(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !924 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !929, metadata !DIExpression()), !dbg !930
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !931, metadata !DIExpression()), !dbg !932
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata ptr %8, metadata !935, metadata !DIExpression()), !dbg !936
  store i32 0, ptr %8, align 4, !dbg !936
  %16 = load ptr, ptr %5, align 8, !dbg !937
  %17 = icmp ne ptr %16, null, !dbg !937
  br i1 %17, label %18, label %121, !dbg !939

18:                                               ; preds = %3
  %19 = load i64, ptr %6, align 8, !dbg !940
  %20 = icmp ne i64 %19, 0, !dbg !940
  br i1 %20, label %21, label %121, !dbg !941

21:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %9, metadata !942, metadata !DIExpression()), !dbg !944
  %22 = load i64, ptr %6, align 8, !dbg !945
  %23 = and i64 %22, 7, !dbg !946
  store i64 %23, ptr %9, align 8, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %10, metadata !947, metadata !DIExpression()), !dbg !950
  %24 = load ptr, ptr %5, align 8, !dbg !951
  %25 = getelementptr inbounds %struct._lm_map, ptr %24, i32 0, i32 0, !dbg !952
  %26 = load i64, ptr %9, align 8, !dbg !953
  %27 = getelementptr inbounds [8 x %struct._lm_map_array], ptr %25, i64 0, i64 %26, !dbg !951
  store ptr %27, ptr %10, align 8, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %11, metadata !954, metadata !DIExpression()), !dbg !955
  store i64 0, ptr %11, align 8, !dbg !956
  br label %28, !dbg !958

28:                                               ; preds = %59, %21
  %29 = load i64, ptr %11, align 8, !dbg !959
  %30 = icmp ult i64 %29, 3, !dbg !961
  br i1 %30, label %31, label %62, !dbg !962

31:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %12, metadata !963, metadata !DIExpression()), !dbg !965
  %32 = load ptr, ptr %10, align 8, !dbg !966
  %33 = getelementptr inbounds %struct._lm_map_array, ptr %32, i32 0, i32 0, !dbg !967
  %34 = load i64, ptr %11, align 8, !dbg !968
  %35 = getelementptr inbounds [3 x i64], ptr %33, i64 0, i64 %34, !dbg !966
  %36 = load i64, ptr %35, align 8, !dbg !966
  store i64 %36, ptr %12, align 8, !dbg !965
  %37 = load i64, ptr %12, align 8, !dbg !969
  %38 = load i64, ptr %6, align 8, !dbg !971
  %39 = icmp eq i64 %37, %38, !dbg !972
  br i1 %39, label %40, label %58, !dbg !973

40:                                               ; preds = %31
  %41 = load ptr, ptr %10, align 8, !dbg !974
  %42 = getelementptr inbounds %struct._lm_map_array, ptr %41, i32 0, i32 1, !dbg !975
  %43 = load i64, ptr %11, align 8, !dbg !976
  %44 = getelementptr inbounds [3 x i64], ptr %42, i64 0, i64 %43, !dbg !974
  %45 = load i64, ptr %44, align 8, !dbg !974
  %46 = icmp ne i64 %45, 0, !dbg !974
  br i1 %46, label %47, label %58, !dbg !977

47:                                               ; preds = %40
  %48 = load ptr, ptr %7, align 8, !dbg !978
  %49 = icmp ne ptr %48, null, !dbg !978
  br i1 %49, label %50, label %57, !dbg !981

50:                                               ; preds = %47
  %51 = load ptr, ptr %10, align 8, !dbg !982
  %52 = getelementptr inbounds %struct._lm_map_array, ptr %51, i32 0, i32 1, !dbg !984
  %53 = load i64, ptr %11, align 8, !dbg !985
  %54 = getelementptr inbounds [3 x i64], ptr %52, i64 0, i64 %53, !dbg !982
  %55 = load i64, ptr %54, align 8, !dbg !982
  %56 = load ptr, ptr %7, align 8, !dbg !986
  store i64 %55, ptr %56, align 8, !dbg !987
  br label %57, !dbg !988

57:                                               ; preds = %50, %47
  store i32 1, ptr %4, align 4, !dbg !989
  br label %123, !dbg !989

58:                                               ; preds = %40, %31
  br label %59, !dbg !990

59:                                               ; preds = %58
  %60 = load i64, ptr %11, align 8, !dbg !991
  %61 = add i64 %60, 1, !dbg !991
  store i64 %61, ptr %11, align 8, !dbg !991
  br label %28, !dbg !992, !llvm.loop !993

62:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %13, metadata !995, metadata !DIExpression()), !dbg !996
  %63 = load ptr, ptr %10, align 8, !dbg !997
  %64 = getelementptr inbounds %struct._lm_map_array, ptr %63, i32 0, i32 2, !dbg !998
  %65 = load i64, ptr %64, align 8, !dbg !998
  store i64 %65, ptr %13, align 8, !dbg !996
  %66 = load i64, ptr %13, align 8, !dbg !999
  %67 = icmp ne i64 %66, 0, !dbg !999
  br i1 %67, label %68, label %120, !dbg !1001

68:                                               ; preds = %62
  %69 = load ptr, ptr %10, align 8, !dbg !1002
  %70 = getelementptr inbounds %struct._lm_map_array, ptr %69, i32 0, i32 3, !dbg !1003
  %71 = load ptr, ptr %70, align 8, !dbg !1003
  %72 = icmp ne ptr %71, null, !dbg !1002
  br i1 %72, label %73, label %120, !dbg !1004

73:                                               ; preds = %68
  %74 = load ptr, ptr %10, align 8, !dbg !1005
  %75 = getelementptr inbounds %struct._lm_map_array, ptr %74, i32 0, i32 4, !dbg !1006
  %76 = load ptr, ptr %75, align 8, !dbg !1006
  %77 = icmp ne ptr %76, null, !dbg !1005
  br i1 %77, label %78, label %120, !dbg !1007

78:                                               ; preds = %73
  store i64 0, ptr %11, align 8, !dbg !1008
  br label %79, !dbg !1011

79:                                               ; preds = %116, %78
  %80 = load i64, ptr %11, align 8, !dbg !1012
  %81 = load i64, ptr %13, align 8, !dbg !1014
  %82 = icmp ult i64 %80, %81, !dbg !1015
  br i1 %82, label %83, label %119, !dbg !1016

83:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1017, metadata !DIExpression()), !dbg !1019
  %84 = load ptr, ptr %10, align 8, !dbg !1020
  %85 = getelementptr inbounds %struct._lm_map_array, ptr %84, i32 0, i32 3, !dbg !1021
  %86 = load ptr, ptr %85, align 8, !dbg !1021
  %87 = load i64, ptr %11, align 8, !dbg !1022
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87, !dbg !1020
  %89 = load ptr, ptr %88, align 8, !dbg !1020
  store ptr %89, ptr %14, align 8, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1023, metadata !DIExpression()), !dbg !1024
  %90 = load ptr, ptr %10, align 8, !dbg !1025
  %91 = getelementptr inbounds %struct._lm_map_array, ptr %90, i32 0, i32 4, !dbg !1026
  %92 = load ptr, ptr %91, align 8, !dbg !1026
  %93 = load i64, ptr %11, align 8, !dbg !1027
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93, !dbg !1025
  %95 = load ptr, ptr %94, align 8, !dbg !1025
  store ptr %95, ptr %15, align 8, !dbg !1024
  %96 = load ptr, ptr %14, align 8, !dbg !1028
  %97 = icmp ne ptr %96, null, !dbg !1028
  br i1 %97, label %98, label %115, !dbg !1030

98:                                               ; preds = %83
  %99 = load ptr, ptr %15, align 8, !dbg !1031
  %100 = icmp ne ptr %99, null, !dbg !1031
  br i1 %100, label %101, label %115, !dbg !1032

101:                                              ; preds = %98
  %102 = load ptr, ptr %14, align 8, !dbg !1033
  %103 = load i64, ptr %102, align 8, !dbg !1036
  %104 = load i64, ptr %6, align 8, !dbg !1037
  %105 = icmp eq i64 %103, %104, !dbg !1038
  br i1 %105, label %106, label %114, !dbg !1039

106:                                              ; preds = %101
  %107 = load ptr, ptr %7, align 8, !dbg !1040
  %108 = icmp ne ptr %107, null, !dbg !1040
  br i1 %108, label %109, label %113, !dbg !1043

109:                                              ; preds = %106
  %110 = load ptr, ptr %15, align 8, !dbg !1044
  %111 = load i64, ptr %110, align 8, !dbg !1045
  %112 = load ptr, ptr %7, align 8, !dbg !1046
  store i64 %111, ptr %112, align 8, !dbg !1047
  br label %113, !dbg !1048

113:                                              ; preds = %109, %106
  store i32 1, ptr %4, align 4, !dbg !1049
  br label %123, !dbg !1049

114:                                              ; preds = %101
  br label %115, !dbg !1050

115:                                              ; preds = %114, %98, %83
  br label %116, !dbg !1051

116:                                              ; preds = %115
  %117 = load i64, ptr %11, align 8, !dbg !1052
  %118 = add i64 %117, 1, !dbg !1052
  store i64 %118, ptr %11, align 8, !dbg !1052
  br label %79, !dbg !1053, !llvm.loop !1054

119:                                              ; preds = %79
  br label %120, !dbg !1056

120:                                              ; preds = %119, %73, %68, %62
  br label %121, !dbg !1057

121:                                              ; preds = %120, %18, %3
  %122 = load i32, ptr %8, align 4, !dbg !1058
  store i32 %122, ptr %4, align 4, !dbg !1059
  br label %123, !dbg !1059

123:                                              ; preds = %121, %113, %57
  %124 = load i32, ptr %4, align 4, !dbg !1060
  ret i32 %124, !dbg !1060
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm_map_del(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !1061 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1064, metadata !DIExpression()), !dbg !1065
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1066, metadata !DIExpression()), !dbg !1067
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1068, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1070, metadata !DIExpression()), !dbg !1071
  store i32 0, ptr %8, align 4, !dbg !1071
  %16 = load ptr, ptr %5, align 8, !dbg !1072
  %17 = icmp ne ptr %16, null, !dbg !1072
  br i1 %17, label %18, label %131, !dbg !1074

18:                                               ; preds = %3
  %19 = load i64, ptr %6, align 8, !dbg !1075
  %20 = icmp ne i64 %19, 0, !dbg !1075
  br i1 %20, label %21, label %131, !dbg !1076

21:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1077, metadata !DIExpression()), !dbg !1079
  %22 = load i64, ptr %6, align 8, !dbg !1080
  %23 = and i64 %22, 7, !dbg !1081
  store i64 %23, ptr %9, align 8, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1082, metadata !DIExpression()), !dbg !1083
  %24 = load ptr, ptr %5, align 8, !dbg !1084
  %25 = getelementptr inbounds %struct._lm_map, ptr %24, i32 0, i32 0, !dbg !1085
  %26 = load i64, ptr %9, align 8, !dbg !1086
  %27 = getelementptr inbounds [8 x %struct._lm_map_array], ptr %25, i64 0, i64 %26, !dbg !1084
  store ptr %27, ptr %10, align 8, !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1087, metadata !DIExpression()), !dbg !1088
  store i64 0, ptr %11, align 8, !dbg !1089
  br label %28, !dbg !1091

28:                                               ; preds = %67, %21
  %29 = load i64, ptr %11, align 8, !dbg !1092
  %30 = icmp ult i64 %29, 3, !dbg !1094
  br i1 %30, label %31, label %70, !dbg !1095

31:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1096, metadata !DIExpression()), !dbg !1098
  %32 = load ptr, ptr %10, align 8, !dbg !1099
  %33 = getelementptr inbounds %struct._lm_map_array, ptr %32, i32 0, i32 0, !dbg !1100
  %34 = load i64, ptr %11, align 8, !dbg !1101
  %35 = getelementptr inbounds [3 x i64], ptr %33, i64 0, i64 %34, !dbg !1099
  %36 = load i64, ptr %35, align 8, !dbg !1099
  store i64 %36, ptr %12, align 8, !dbg !1098
  %37 = load i64, ptr %12, align 8, !dbg !1102
  %38 = load i64, ptr %6, align 8, !dbg !1104
  %39 = icmp eq i64 %37, %38, !dbg !1105
  br i1 %39, label %40, label %66, !dbg !1106

40:                                               ; preds = %31
  %41 = load ptr, ptr %10, align 8, !dbg !1107
  %42 = getelementptr inbounds %struct._lm_map_array, ptr %41, i32 0, i32 1, !dbg !1108
  %43 = load i64, ptr %11, align 8, !dbg !1109
  %44 = getelementptr inbounds [3 x i64], ptr %42, i64 0, i64 %43, !dbg !1107
  %45 = load i64, ptr %44, align 8, !dbg !1107
  %46 = icmp ne i64 %45, 0, !dbg !1107
  br i1 %46, label %47, label %66, !dbg !1110

47:                                               ; preds = %40
  %48 = load ptr, ptr %7, align 8, !dbg !1111
  %49 = icmp ne ptr %48, null, !dbg !1111
  br i1 %49, label %50, label %57, !dbg !1114

50:                                               ; preds = %47
  %51 = load ptr, ptr %7, align 8, !dbg !1115
  %52 = load ptr, ptr %10, align 8, !dbg !1117
  %53 = getelementptr inbounds %struct._lm_map_array, ptr %52, i32 0, i32 1, !dbg !1118
  %54 = load i64, ptr %11, align 8, !dbg !1119
  %55 = getelementptr inbounds [3 x i64], ptr %53, i64 0, i64 %54, !dbg !1117
  %56 = load i64, ptr %55, align 8, !dbg !1117
  call void %51(i64 noundef %56), !dbg !1115
  br label %57, !dbg !1120

57:                                               ; preds = %50, %47
  %58 = load ptr, ptr %10, align 8, !dbg !1121
  %59 = getelementptr inbounds %struct._lm_map_array, ptr %58, i32 0, i32 0, !dbg !1122
  %60 = load i64, ptr %11, align 8, !dbg !1123
  %61 = getelementptr inbounds [3 x i64], ptr %59, i64 0, i64 %60, !dbg !1121
  store i64 0, ptr %61, align 8, !dbg !1124
  %62 = load ptr, ptr %10, align 8, !dbg !1125
  %63 = getelementptr inbounds %struct._lm_map_array, ptr %62, i32 0, i32 1, !dbg !1126
  %64 = load i64, ptr %11, align 8, !dbg !1127
  %65 = getelementptr inbounds [3 x i64], ptr %63, i64 0, i64 %64, !dbg !1125
  store i64 0, ptr %65, align 8, !dbg !1128
  store i32 1, ptr %4, align 4, !dbg !1129
  br label %133, !dbg !1129

66:                                               ; preds = %40, %31
  br label %67, !dbg !1130

67:                                               ; preds = %66
  %68 = load i64, ptr %11, align 8, !dbg !1131
  %69 = add i64 %68, 1, !dbg !1131
  store i64 %69, ptr %11, align 8, !dbg !1131
  br label %28, !dbg !1132, !llvm.loop !1133

70:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1135, metadata !DIExpression()), !dbg !1136
  %71 = load ptr, ptr %10, align 8, !dbg !1137
  %72 = getelementptr inbounds %struct._lm_map_array, ptr %71, i32 0, i32 2, !dbg !1138
  %73 = load i64, ptr %72, align 8, !dbg !1138
  store i64 %73, ptr %13, align 8, !dbg !1136
  %74 = load i64, ptr %13, align 8, !dbg !1139
  %75 = icmp ne i64 %74, 0, !dbg !1139
  br i1 %75, label %76, label %130, !dbg !1141

76:                                               ; preds = %70
  %77 = load ptr, ptr %10, align 8, !dbg !1142
  %78 = getelementptr inbounds %struct._lm_map_array, ptr %77, i32 0, i32 3, !dbg !1143
  %79 = load ptr, ptr %78, align 8, !dbg !1143
  %80 = icmp ne ptr %79, null, !dbg !1142
  br i1 %80, label %81, label %130, !dbg !1144

81:                                               ; preds = %76
  %82 = load ptr, ptr %10, align 8, !dbg !1145
  %83 = getelementptr inbounds %struct._lm_map_array, ptr %82, i32 0, i32 4, !dbg !1146
  %84 = load ptr, ptr %83, align 8, !dbg !1146
  %85 = icmp ne ptr %84, null, !dbg !1145
  br i1 %85, label %86, label %130, !dbg !1147

86:                                               ; preds = %81
  store i64 0, ptr %11, align 8, !dbg !1148
  br label %87, !dbg !1151

87:                                               ; preds = %126, %86
  %88 = load i64, ptr %11, align 8, !dbg !1152
  %89 = load i64, ptr %13, align 8, !dbg !1154
  %90 = icmp ult i64 %88, %89, !dbg !1155
  br i1 %90, label %91, label %129, !dbg !1156

91:                                               ; preds = %87
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1157, metadata !DIExpression()), !dbg !1159
  %92 = load ptr, ptr %10, align 8, !dbg !1160
  %93 = getelementptr inbounds %struct._lm_map_array, ptr %92, i32 0, i32 3, !dbg !1161
  %94 = load ptr, ptr %93, align 8, !dbg !1161
  %95 = load i64, ptr %11, align 8, !dbg !1162
  %96 = getelementptr inbounds ptr, ptr %94, i64 %95, !dbg !1160
  %97 = load ptr, ptr %96, align 8, !dbg !1160
  store ptr %97, ptr %14, align 8, !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1163, metadata !DIExpression()), !dbg !1164
  %98 = load ptr, ptr %10, align 8, !dbg !1165
  %99 = getelementptr inbounds %struct._lm_map_array, ptr %98, i32 0, i32 4, !dbg !1166
  %100 = load ptr, ptr %99, align 8, !dbg !1166
  %101 = load i64, ptr %11, align 8, !dbg !1167
  %102 = getelementptr inbounds ptr, ptr %100, i64 %101, !dbg !1165
  %103 = load ptr, ptr %102, align 8, !dbg !1165
  store ptr %103, ptr %15, align 8, !dbg !1164
  %104 = load ptr, ptr %14, align 8, !dbg !1168
  %105 = icmp ne ptr %104, null, !dbg !1168
  br i1 %105, label %106, label %125, !dbg !1170

106:                                              ; preds = %91
  %107 = load ptr, ptr %15, align 8, !dbg !1171
  %108 = icmp ne ptr %107, null, !dbg !1171
  br i1 %108, label %109, label %125, !dbg !1172

109:                                              ; preds = %106
  %110 = load ptr, ptr %14, align 8, !dbg !1173
  %111 = load i64, ptr %110, align 8, !dbg !1176
  %112 = load i64, ptr %6, align 8, !dbg !1177
  %113 = icmp eq i64 %111, %112, !dbg !1178
  br i1 %113, label %114, label %124, !dbg !1179

114:                                              ; preds = %109
  %115 = load ptr, ptr %7, align 8, !dbg !1180
  %116 = icmp ne ptr %115, null, !dbg !1180
  br i1 %116, label %117, label %121, !dbg !1183

117:                                              ; preds = %114
  %118 = load ptr, ptr %7, align 8, !dbg !1184
  %119 = load ptr, ptr %15, align 8, !dbg !1185
  %120 = load i64, ptr %119, align 8, !dbg !1186
  call void %118(i64 noundef %120), !dbg !1184
  br label %121, !dbg !1184

121:                                              ; preds = %117, %114
  %122 = load ptr, ptr %14, align 8, !dbg !1187
  store i64 0, ptr %122, align 8, !dbg !1188
  %123 = load ptr, ptr %15, align 8, !dbg !1189
  store i64 0, ptr %123, align 8, !dbg !1190
  store i32 1, ptr %4, align 4, !dbg !1191
  br label %133, !dbg !1191

124:                                              ; preds = %109
  br label %125, !dbg !1192

125:                                              ; preds = %124, %106, %91
  br label %126, !dbg !1193

126:                                              ; preds = %125
  %127 = load i64, ptr %11, align 8, !dbg !1194
  %128 = add i64 %127, 1, !dbg !1194
  store i64 %128, ptr %11, align 8, !dbg !1194
  br label %87, !dbg !1195, !llvm.loop !1196

129:                                              ; preds = %87
  br label %130, !dbg !1198

130:                                              ; preds = %129, %81, %76, %70
  br label %131, !dbg !1199

131:                                              ; preds = %130, %18, %3
  %132 = load i32, ptr %8, align 4, !dbg !1200
  store i32 %132, ptr %4, align 4, !dbg !1201
  br label %133, !dbg !1201

133:                                              ; preds = %131, %121, %57
  %134 = load i32, ptr %4, align 4, !dbg !1202
  ret i32 %134, !dbg !1202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm_map_exist(ptr noundef %0, i64 noundef %1) #0 !dbg !1203 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1206, metadata !DIExpression()), !dbg !1207
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1208, metadata !DIExpression()), !dbg !1209
  %5 = load ptr, ptr %3, align 8, !dbg !1210
  %6 = load i64, ptr %4, align 8, !dbg !1211
  %7 = call i32 @lm_map_get(ptr noundef %5, i64 noundef %6, ptr noundef null), !dbg !1212
  ret i32 %7, !dbg !1213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lm_map_clean(ptr noundef %0) #0 !dbg !1214 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1215, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1217, metadata !DIExpression()), !dbg !1218
  store i64 0, ptr %3, align 8, !dbg !1219
  br label %9, !dbg !1221

9:                                                ; preds = %88, %1
  %10 = load i64, ptr %3, align 8, !dbg !1222
  %11 = icmp ult i64 %10, 8, !dbg !1224
  br i1 %11, label %12, label %91, !dbg !1225

12:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1226, metadata !DIExpression()), !dbg !1228
  %13 = load ptr, ptr %2, align 8, !dbg !1229
  %14 = getelementptr inbounds %struct._lm_map, ptr %13, i32 0, i32 0, !dbg !1230
  %15 = load i64, ptr %3, align 8, !dbg !1231
  %16 = getelementptr inbounds [8 x %struct._lm_map_array], ptr %14, i64 0, i64 %15, !dbg !1229
  store ptr %16, ptr %4, align 8, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1232, metadata !DIExpression()), !dbg !1233
  %17 = load ptr, ptr %4, align 8, !dbg !1234
  %18 = getelementptr inbounds %struct._lm_map_array, ptr %17, i32 0, i32 2, !dbg !1235
  %19 = load i64, ptr %18, align 8, !dbg !1235
  store i64 %19, ptr %5, align 8, !dbg !1233
  %20 = load i64, ptr %5, align 8, !dbg !1236
  %21 = icmp ne i64 %20, 0, !dbg !1236
  br i1 %21, label %22, label %87, !dbg !1238

22:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1239, metadata !DIExpression()), !dbg !1241
  %23 = load ptr, ptr %4, align 8, !dbg !1242
  %24 = getelementptr inbounds %struct._lm_map_array, ptr %23, i32 0, i32 3, !dbg !1244
  %25 = load ptr, ptr %24, align 8, !dbg !1244
  %26 = icmp ne ptr %25, null, !dbg !1242
  br i1 %26, label %27, label %54, !dbg !1245

27:                                               ; preds = %22
  store i64 0, ptr %6, align 8, !dbg !1246
  br label %28, !dbg !1249

28:                                               ; preds = %45, %27
  %29 = load i64, ptr %6, align 8, !dbg !1250
  %30 = load i64, ptr %5, align 8, !dbg !1252
  %31 = icmp ult i64 %29, %30, !dbg !1253
  br i1 %31, label %32, label %48, !dbg !1254

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1255, metadata !DIExpression()), !dbg !1257
  %33 = load ptr, ptr %4, align 8, !dbg !1258
  %34 = getelementptr inbounds %struct._lm_map_array, ptr %33, i32 0, i32 3, !dbg !1259
  %35 = load ptr, ptr %34, align 8, !dbg !1259
  %36 = load i64, ptr %6, align 8, !dbg !1260
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36, !dbg !1258
  %38 = load ptr, ptr %37, align 8, !dbg !1258
  store ptr %38, ptr %7, align 8, !dbg !1257
  %39 = load ptr, ptr %7, align 8, !dbg !1261
  %40 = icmp ne ptr %39, null, !dbg !1261
  br i1 %40, label %41, label %44, !dbg !1263

41:                                               ; preds = %32
  %42 = load ptr, ptr %7, align 8, !dbg !1264
  store i64 0, ptr %42, align 8, !dbg !1266
  %43 = load ptr, ptr %7, align 8, !dbg !1267
  call void @free(ptr noundef %43) #10, !dbg !1268
  br label %44, !dbg !1269

44:                                               ; preds = %41, %32
  br label %45, !dbg !1270

45:                                               ; preds = %44
  %46 = load i64, ptr %6, align 8, !dbg !1271
  %47 = add i64 %46, 1, !dbg !1271
  store i64 %47, ptr %6, align 8, !dbg !1271
  br label %28, !dbg !1272, !llvm.loop !1273

48:                                               ; preds = %28
  %49 = load ptr, ptr %4, align 8, !dbg !1275
  %50 = getelementptr inbounds %struct._lm_map_array, ptr %49, i32 0, i32 3, !dbg !1276
  %51 = load ptr, ptr %50, align 8, !dbg !1276
  call void @free(ptr noundef %51) #10, !dbg !1277
  %52 = load ptr, ptr %4, align 8, !dbg !1278
  %53 = getelementptr inbounds %struct._lm_map_array, ptr %52, i32 0, i32 3, !dbg !1279
  store ptr null, ptr %53, align 8, !dbg !1280
  br label %54, !dbg !1281

54:                                               ; preds = %48, %22
  %55 = load ptr, ptr %4, align 8, !dbg !1282
  %56 = getelementptr inbounds %struct._lm_map_array, ptr %55, i32 0, i32 4, !dbg !1284
  %57 = load ptr, ptr %56, align 8, !dbg !1284
  %58 = icmp ne ptr %57, null, !dbg !1282
  br i1 %58, label %59, label %86, !dbg !1285

59:                                               ; preds = %54
  store i64 0, ptr %6, align 8, !dbg !1286
  br label %60, !dbg !1289

60:                                               ; preds = %77, %59
  %61 = load i64, ptr %6, align 8, !dbg !1290
  %62 = load i64, ptr %5, align 8, !dbg !1292
  %63 = icmp ult i64 %61, %62, !dbg !1293
  br i1 %63, label %64, label %80, !dbg !1294

64:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1295, metadata !DIExpression()), !dbg !1297
  %65 = load ptr, ptr %4, align 8, !dbg !1298
  %66 = getelementptr inbounds %struct._lm_map_array, ptr %65, i32 0, i32 4, !dbg !1299
  %67 = load ptr, ptr %66, align 8, !dbg !1299
  %68 = load i64, ptr %6, align 8, !dbg !1300
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68, !dbg !1298
  %70 = load ptr, ptr %69, align 8, !dbg !1298
  store ptr %70, ptr %8, align 8, !dbg !1297
  %71 = load ptr, ptr %8, align 8, !dbg !1301
  %72 = icmp ne ptr %71, null, !dbg !1301
  br i1 %72, label %73, label %76, !dbg !1303

73:                                               ; preds = %64
  %74 = load ptr, ptr %8, align 8, !dbg !1304
  store i64 0, ptr %74, align 8, !dbg !1306
  %75 = load ptr, ptr %8, align 8, !dbg !1307
  call void @free(ptr noundef %75) #10, !dbg !1308
  br label %76, !dbg !1309

76:                                               ; preds = %73, %64
  br label %77, !dbg !1310

77:                                               ; preds = %76
  %78 = load i64, ptr %6, align 8, !dbg !1311
  %79 = add i64 %78, 1, !dbg !1311
  store i64 %79, ptr %6, align 8, !dbg !1311
  br label %60, !dbg !1312, !llvm.loop !1313

80:                                               ; preds = %60
  %81 = load ptr, ptr %4, align 8, !dbg !1315
  %82 = getelementptr inbounds %struct._lm_map_array, ptr %81, i32 0, i32 4, !dbg !1316
  %83 = load ptr, ptr %82, align 8, !dbg !1316
  call void @free(ptr noundef %83) #10, !dbg !1317
  %84 = load ptr, ptr %4, align 8, !dbg !1318
  %85 = getelementptr inbounds %struct._lm_map_array, ptr %84, i32 0, i32 4, !dbg !1319
  store ptr null, ptr %85, align 8, !dbg !1320
  br label %86, !dbg !1321

86:                                               ; preds = %80, %54
  br label %87, !dbg !1322

87:                                               ; preds = %86, %12
  br label %88, !dbg !1323

88:                                               ; preds = %87
  %89 = load i64, ptr %3, align 8, !dbg !1324
  %90 = add i64 %89, 1, !dbg !1324
  store i64 %90, ptr %3, align 8, !dbg !1324
  br label %9, !dbg !1325, !llvm.loop !1326

91:                                               ; preds = %9
  %92 = load ptr, ptr %2, align 8, !dbg !1328
  call void @lm_map_init(ptr noundef %92), !dbg !1329
  ret void, !dbg !1330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lm_map_size(ptr noundef %0) #0 !dbg !1331 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1334, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1336, metadata !DIExpression()), !dbg !1337
  store i64 0, ptr %3, align 8, !dbg !1337
  %8 = load ptr, ptr %2, align 8, !dbg !1338
  %9 = icmp ne ptr %8, null, !dbg !1338
  br i1 %9, label %10, label %95, !dbg !1340

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1341, metadata !DIExpression()), !dbg !1343
  store i64 0, ptr %4, align 8, !dbg !1344
  br label %11, !dbg !1346

11:                                               ; preds = %91, %10
  %12 = load i64, ptr %4, align 8, !dbg !1347
  %13 = icmp ult i64 %12, 8, !dbg !1349
  br i1 %13, label %14, label %94, !dbg !1350

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1351, metadata !DIExpression()), !dbg !1353
  %15 = load ptr, ptr %2, align 8, !dbg !1354
  %16 = getelementptr inbounds %struct._lm_map, ptr %15, i32 0, i32 0, !dbg !1355
  %17 = load i64, ptr %4, align 8, !dbg !1356
  %18 = getelementptr inbounds [8 x %struct._lm_map_array], ptr %16, i64 0, i64 %17, !dbg !1354
  store ptr %18, ptr %5, align 8, !dbg !1353
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1357, metadata !DIExpression()), !dbg !1358
  store i64 0, ptr %6, align 8, !dbg !1359
  br label %19, !dbg !1361

19:                                               ; preds = %40, %14
  %20 = load i64, ptr %6, align 8, !dbg !1362
  %21 = icmp ult i64 %20, 3, !dbg !1364
  br i1 %21, label %22, label %43, !dbg !1365

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8, !dbg !1366
  %24 = getelementptr inbounds %struct._lm_map_array, ptr %23, i32 0, i32 0, !dbg !1369
  %25 = load i64, ptr %6, align 8, !dbg !1370
  %26 = getelementptr inbounds [3 x i64], ptr %24, i64 0, i64 %25, !dbg !1366
  %27 = load i64, ptr %26, align 8, !dbg !1366
  %28 = icmp ne i64 %27, 0, !dbg !1366
  br i1 %28, label %29, label %39, !dbg !1371

29:                                               ; preds = %22
  %30 = load ptr, ptr %5, align 8, !dbg !1372
  %31 = getelementptr inbounds %struct._lm_map_array, ptr %30, i32 0, i32 1, !dbg !1373
  %32 = load i64, ptr %6, align 8, !dbg !1374
  %33 = getelementptr inbounds [3 x i64], ptr %31, i64 0, i64 %32, !dbg !1372
  %34 = load i64, ptr %33, align 8, !dbg !1372
  %35 = icmp ne i64 %34, 0, !dbg !1372
  br i1 %35, label %36, label %39, !dbg !1375

36:                                               ; preds = %29
  %37 = load i64, ptr %3, align 8, !dbg !1376
  %38 = add i64 %37, 1, !dbg !1376
  store i64 %38, ptr %3, align 8, !dbg !1376
  br label %39, !dbg !1378

39:                                               ; preds = %36, %29, %22
  br label %40, !dbg !1379

40:                                               ; preds = %39
  %41 = load i64, ptr %6, align 8, !dbg !1380
  %42 = add i64 %41, 1, !dbg !1380
  store i64 %42, ptr %6, align 8, !dbg !1380
  br label %19, !dbg !1381, !llvm.loop !1382

43:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1384, metadata !DIExpression()), !dbg !1385
  %44 = load ptr, ptr %5, align 8, !dbg !1386
  %45 = getelementptr inbounds %struct._lm_map_array, ptr %44, i32 0, i32 2, !dbg !1387
  %46 = load i64, ptr %45, align 8, !dbg !1387
  store i64 %46, ptr %7, align 8, !dbg !1385
  %47 = load i64, ptr %7, align 8, !dbg !1388
  %48 = icmp ne i64 %47, 0, !dbg !1388
  br i1 %48, label %49, label %90, !dbg !1390

49:                                               ; preds = %43
  %50 = load ptr, ptr %5, align 8, !dbg !1391
  %51 = getelementptr inbounds %struct._lm_map_array, ptr %50, i32 0, i32 4, !dbg !1392
  %52 = load ptr, ptr %51, align 8, !dbg !1392
  %53 = icmp ne ptr %52, null, !dbg !1391
  br i1 %53, label %54, label %90, !dbg !1393

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 8, !dbg !1394
  %56 = getelementptr inbounds %struct._lm_map_array, ptr %55, i32 0, i32 3, !dbg !1395
  %57 = load ptr, ptr %56, align 8, !dbg !1395
  %58 = icmp ne ptr %57, null, !dbg !1394
  br i1 %58, label %59, label %90, !dbg !1396

59:                                               ; preds = %54
  store i64 0, ptr %6, align 8, !dbg !1397
  br label %60, !dbg !1400

60:                                               ; preds = %86, %59
  %61 = load i64, ptr %6, align 8, !dbg !1401
  %62 = load i64, ptr %7, align 8, !dbg !1403
  %63 = icmp ult i64 %61, %62, !dbg !1404
  br i1 %63, label %64, label %89, !dbg !1405

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 8, !dbg !1406
  %66 = getelementptr inbounds %struct._lm_map_array, ptr %65, i32 0, i32 3, !dbg !1409
  %67 = load ptr, ptr %66, align 8, !dbg !1409
  %68 = load i64, ptr %6, align 8, !dbg !1410
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68, !dbg !1406
  %70 = load ptr, ptr %69, align 8, !dbg !1406
  %71 = load i64, ptr %70, align 8, !dbg !1411
  %72 = icmp ne i64 %71, 0, !dbg !1411
  br i1 %72, label %73, label %85, !dbg !1412

73:                                               ; preds = %64
  %74 = load ptr, ptr %5, align 8, !dbg !1413
  %75 = getelementptr inbounds %struct._lm_map_array, ptr %74, i32 0, i32 4, !dbg !1414
  %76 = load ptr, ptr %75, align 8, !dbg !1414
  %77 = load i64, ptr %6, align 8, !dbg !1415
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77, !dbg !1413
  %79 = load ptr, ptr %78, align 8, !dbg !1413
  %80 = load i64, ptr %79, align 8, !dbg !1416
  %81 = icmp ne i64 %80, 0, !dbg !1416
  br i1 %81, label %82, label %85, !dbg !1417

82:                                               ; preds = %73
  %83 = load i64, ptr %3, align 8, !dbg !1418
  %84 = add i64 %83, 1, !dbg !1418
  store i64 %84, ptr %3, align 8, !dbg !1418
  br label %85, !dbg !1420

85:                                               ; preds = %82, %73, %64
  br label %86, !dbg !1421

86:                                               ; preds = %85
  %87 = load i64, ptr %6, align 8, !dbg !1422
  %88 = add i64 %87, 1, !dbg !1422
  store i64 %88, ptr %6, align 8, !dbg !1422
  br label %60, !dbg !1423, !llvm.loop !1424

89:                                               ; preds = %60
  br label %90, !dbg !1426

90:                                               ; preds = %89, %54, %49, %43
  br label %91, !dbg !1427

91:                                               ; preds = %90
  %92 = load i64, ptr %4, align 8, !dbg !1428
  %93 = add i64 %92, 1, !dbg !1428
  store i64 %93, ptr %4, align 8, !dbg !1428
  br label %11, !dbg !1429, !llvm.loop !1430

94:                                               ; preds = %11
  br label %95, !dbg !1432

95:                                               ; preds = %94, %1
  %96 = load i64, ptr %3, align 8, !dbg !1433
  ret i64 %96, !dbg !1434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm_map_foreach(ptr noundef %0, ptr noundef %1) #0 !dbg !1435 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1438, metadata !DIExpression()), !dbg !1439
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1440, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1442, metadata !DIExpression()), !dbg !1443
  store i64 0, ptr %6, align 8, !dbg !1443
  %11 = load ptr, ptr %4, align 8, !dbg !1444
  %12 = icmp ne ptr %11, null, !dbg !1444
  br i1 %12, label %13, label %128, !dbg !1446

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1447, metadata !DIExpression()), !dbg !1449
  store i64 0, ptr %7, align 8, !dbg !1450
  br label %14, !dbg !1452

14:                                               ; preds = %124, %13
  %15 = load i64, ptr %7, align 8, !dbg !1453
  %16 = icmp ult i64 %15, 8, !dbg !1455
  br i1 %16, label %17, label %127, !dbg !1456

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1457, metadata !DIExpression()), !dbg !1459
  %18 = load ptr, ptr %4, align 8, !dbg !1460
  %19 = getelementptr inbounds %struct._lm_map, ptr %18, i32 0, i32 0, !dbg !1461
  %20 = load i64, ptr %7, align 8, !dbg !1462
  %21 = getelementptr inbounds [8 x %struct._lm_map_array], ptr %19, i64 0, i64 %20, !dbg !1460
  store ptr %21, ptr %8, align 8, !dbg !1459
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i64 0, ptr %9, align 8, !dbg !1465
  br label %22, !dbg !1467

22:                                               ; preds = %56, %17
  %23 = load i64, ptr %9, align 8, !dbg !1468
  %24 = icmp ult i64 %23, 3, !dbg !1470
  br i1 %24, label %25, label %59, !dbg !1471

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8, !dbg !1472
  %27 = getelementptr inbounds %struct._lm_map_array, ptr %26, i32 0, i32 0, !dbg !1475
  %28 = load i64, ptr %9, align 8, !dbg !1476
  %29 = getelementptr inbounds [3 x i64], ptr %27, i64 0, i64 %28, !dbg !1472
  %30 = load i64, ptr %29, align 8, !dbg !1472
  %31 = icmp ne i64 %30, 0, !dbg !1472
  br i1 %31, label %32, label %55, !dbg !1477

32:                                               ; preds = %25
  %33 = load ptr, ptr %8, align 8, !dbg !1478
  %34 = getelementptr inbounds %struct._lm_map_array, ptr %33, i32 0, i32 1, !dbg !1479
  %35 = load i64, ptr %9, align 8, !dbg !1480
  %36 = getelementptr inbounds [3 x i64], ptr %34, i64 0, i64 %35, !dbg !1478
  %37 = load i64, ptr %36, align 8, !dbg !1478
  %38 = icmp ne i64 %37, 0, !dbg !1478
  br i1 %38, label %39, label %55, !dbg !1481

39:                                               ; preds = %32
  %40 = load ptr, ptr %5, align 8, !dbg !1482
  %41 = load ptr, ptr %8, align 8, !dbg !1485
  %42 = getelementptr inbounds %struct._lm_map_array, ptr %41, i32 0, i32 0, !dbg !1486
  %43 = load i64, ptr %9, align 8, !dbg !1487
  %44 = getelementptr inbounds [3 x i64], ptr %42, i64 0, i64 %43, !dbg !1485
  %45 = load i64, ptr %44, align 8, !dbg !1485
  %46 = load ptr, ptr %8, align 8, !dbg !1488
  %47 = getelementptr inbounds %struct._lm_map_array, ptr %46, i32 0, i32 1, !dbg !1489
  %48 = load i64, ptr %9, align 8, !dbg !1490
  %49 = getelementptr inbounds [3 x i64], ptr %47, i64 0, i64 %48, !dbg !1488
  %50 = load i64, ptr %49, align 8, !dbg !1488
  %51 = call i32 %40(i64 noundef %45, i64 noundef %50), !dbg !1482
  %52 = icmp ne i32 %51, 0, !dbg !1482
  br i1 %52, label %53, label %54, !dbg !1491

53:                                               ; preds = %39
  store i32 1, ptr %3, align 4, !dbg !1492
  br label %131, !dbg !1492

54:                                               ; preds = %39
  br label %55, !dbg !1494

55:                                               ; preds = %54, %32, %25
  br label %56, !dbg !1495

56:                                               ; preds = %55
  %57 = load i64, ptr %9, align 8, !dbg !1496
  %58 = add i64 %57, 1, !dbg !1496
  store i64 %58, ptr %9, align 8, !dbg !1496
  br label %22, !dbg !1497, !llvm.loop !1498

59:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1500, metadata !DIExpression()), !dbg !1501
  %60 = load ptr, ptr %8, align 8, !dbg !1502
  %61 = getelementptr inbounds %struct._lm_map_array, ptr %60, i32 0, i32 2, !dbg !1503
  %62 = load i64, ptr %61, align 8, !dbg !1503
  store i64 %62, ptr %10, align 8, !dbg !1501
  %63 = load i64, ptr %10, align 8, !dbg !1504
  %64 = icmp ne i64 %63, 0, !dbg !1504
  br i1 %64, label %65, label %123, !dbg !1506

65:                                               ; preds = %59
  %66 = load ptr, ptr %8, align 8, !dbg !1507
  %67 = getelementptr inbounds %struct._lm_map_array, ptr %66, i32 0, i32 4, !dbg !1508
  %68 = load ptr, ptr %67, align 8, !dbg !1508
  %69 = icmp ne ptr %68, null, !dbg !1507
  br i1 %69, label %70, label %123, !dbg !1509

70:                                               ; preds = %65
  %71 = load ptr, ptr %8, align 8, !dbg !1510
  %72 = getelementptr inbounds %struct._lm_map_array, ptr %71, i32 0, i32 3, !dbg !1511
  %73 = load ptr, ptr %72, align 8, !dbg !1511
  %74 = icmp ne ptr %73, null, !dbg !1510
  br i1 %74, label %75, label %123, !dbg !1512

75:                                               ; preds = %70
  store i64 0, ptr %9, align 8, !dbg !1513
  br label %76, !dbg !1516

76:                                               ; preds = %119, %75
  %77 = load i64, ptr %9, align 8, !dbg !1517
  %78 = load i64, ptr %10, align 8, !dbg !1519
  %79 = icmp ult i64 %77, %78, !dbg !1520
  br i1 %79, label %80, label %122, !dbg !1521

80:                                               ; preds = %76
  %81 = load ptr, ptr %8, align 8, !dbg !1522
  %82 = getelementptr inbounds %struct._lm_map_array, ptr %81, i32 0, i32 3, !dbg !1525
  %83 = load ptr, ptr %82, align 8, !dbg !1525
  %84 = load i64, ptr %9, align 8, !dbg !1526
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84, !dbg !1522
  %86 = load ptr, ptr %85, align 8, !dbg !1522
  %87 = load i64, ptr %86, align 8, !dbg !1527
  %88 = icmp ne i64 %87, 0, !dbg !1527
  br i1 %88, label %89, label %118, !dbg !1528

89:                                               ; preds = %80
  %90 = load ptr, ptr %8, align 8, !dbg !1529
  %91 = getelementptr inbounds %struct._lm_map_array, ptr %90, i32 0, i32 4, !dbg !1530
  %92 = load ptr, ptr %91, align 8, !dbg !1530
  %93 = load i64, ptr %9, align 8, !dbg !1531
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93, !dbg !1529
  %95 = load ptr, ptr %94, align 8, !dbg !1529
  %96 = load i64, ptr %95, align 8, !dbg !1532
  %97 = icmp ne i64 %96, 0, !dbg !1532
  br i1 %97, label %98, label %118, !dbg !1533

98:                                               ; preds = %89
  %99 = load ptr, ptr %5, align 8, !dbg !1534
  %100 = load ptr, ptr %8, align 8, !dbg !1537
  %101 = getelementptr inbounds %struct._lm_map_array, ptr %100, i32 0, i32 3, !dbg !1538
  %102 = load ptr, ptr %101, align 8, !dbg !1538
  %103 = load i64, ptr %9, align 8, !dbg !1539
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103, !dbg !1537
  %105 = load ptr, ptr %104, align 8, !dbg !1537
  %106 = load i64, ptr %105, align 8, !dbg !1540
  %107 = load ptr, ptr %8, align 8, !dbg !1541
  %108 = getelementptr inbounds %struct._lm_map_array, ptr %107, i32 0, i32 4, !dbg !1542
  %109 = load ptr, ptr %108, align 8, !dbg !1542
  %110 = load i64, ptr %9, align 8, !dbg !1543
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110, !dbg !1541
  %112 = load ptr, ptr %111, align 8, !dbg !1541
  %113 = load i64, ptr %112, align 8, !dbg !1544
  %114 = call i32 %99(i64 noundef %106, i64 noundef %113), !dbg !1534
  %115 = icmp ne i32 %114, 0, !dbg !1534
  br i1 %115, label %116, label %117, !dbg !1545

116:                                              ; preds = %98
  store i32 1, ptr %3, align 4, !dbg !1546
  br label %131, !dbg !1546

117:                                              ; preds = %98
  br label %118, !dbg !1548

118:                                              ; preds = %117, %89, %80
  br label %119, !dbg !1549

119:                                              ; preds = %118
  %120 = load i64, ptr %9, align 8, !dbg !1550
  %121 = add i64 %120, 1, !dbg !1550
  store i64 %121, ptr %9, align 8, !dbg !1550
  br label %76, !dbg !1551, !llvm.loop !1552

122:                                              ; preds = %76
  br label %123, !dbg !1554

123:                                              ; preds = %122, %70, %65, %59
  br label %124, !dbg !1555

124:                                              ; preds = %123
  %125 = load i64, ptr %7, align 8, !dbg !1556
  %126 = add i64 %125, 1, !dbg !1556
  store i64 %126, ptr %7, align 8, !dbg !1556
  br label %14, !dbg !1557, !llvm.loop !1558

127:                                              ; preds = %14
  br label %128, !dbg !1560

128:                                              ; preds = %127, %2
  %129 = load i64, ptr %6, align 8, !dbg !1561
  %130 = trunc i64 %129 to i32, !dbg !1561
  store i32 %130, ptr %3, align 4, !dbg !1562
  br label %131, !dbg !1562

131:                                              ; preds = %128, %116, %53
  %132 = load i32, ptr %3, align 4, !dbg !1563
  ret i32 %132, !dbg !1563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm_map_foreach_arg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1564 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1567, metadata !DIExpression()), !dbg !1568
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1569, metadata !DIExpression()), !dbg !1570
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1571, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1573, metadata !DIExpression()), !dbg !1574
  store i64 0, ptr %8, align 8, !dbg !1574
  %13 = load ptr, ptr %5, align 8, !dbg !1575
  %14 = icmp ne ptr %13, null, !dbg !1575
  br i1 %14, label %15, label %132, !dbg !1577

15:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1578, metadata !DIExpression()), !dbg !1580
  store i64 0, ptr %9, align 8, !dbg !1581
  br label %16, !dbg !1583

16:                                               ; preds = %128, %15
  %17 = load i64, ptr %9, align 8, !dbg !1584
  %18 = icmp ult i64 %17, 8, !dbg !1586
  br i1 %18, label %19, label %131, !dbg !1587

19:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1588, metadata !DIExpression()), !dbg !1590
  %20 = load ptr, ptr %5, align 8, !dbg !1591
  %21 = getelementptr inbounds %struct._lm_map, ptr %20, i32 0, i32 0, !dbg !1592
  %22 = load i64, ptr %9, align 8, !dbg !1593
  %23 = getelementptr inbounds [8 x %struct._lm_map_array], ptr %21, i64 0, i64 %22, !dbg !1591
  store ptr %23, ptr %10, align 8, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1594, metadata !DIExpression()), !dbg !1595
  store i64 0, ptr %11, align 8, !dbg !1596
  br label %24, !dbg !1598

24:                                               ; preds = %59, %19
  %25 = load i64, ptr %11, align 8, !dbg !1599
  %26 = icmp ult i64 %25, 3, !dbg !1601
  br i1 %26, label %27, label %62, !dbg !1602

27:                                               ; preds = %24
  %28 = load ptr, ptr %10, align 8, !dbg !1603
  %29 = getelementptr inbounds %struct._lm_map_array, ptr %28, i32 0, i32 0, !dbg !1606
  %30 = load i64, ptr %11, align 8, !dbg !1607
  %31 = getelementptr inbounds [3 x i64], ptr %29, i64 0, i64 %30, !dbg !1603
  %32 = load i64, ptr %31, align 8, !dbg !1603
  %33 = icmp ne i64 %32, 0, !dbg !1603
  br i1 %33, label %34, label %58, !dbg !1608

34:                                               ; preds = %27
  %35 = load ptr, ptr %10, align 8, !dbg !1609
  %36 = getelementptr inbounds %struct._lm_map_array, ptr %35, i32 0, i32 1, !dbg !1610
  %37 = load i64, ptr %11, align 8, !dbg !1611
  %38 = getelementptr inbounds [3 x i64], ptr %36, i64 0, i64 %37, !dbg !1609
  %39 = load i64, ptr %38, align 8, !dbg !1609
  %40 = icmp ne i64 %39, 0, !dbg !1609
  br i1 %40, label %41, label %58, !dbg !1612

41:                                               ; preds = %34
  %42 = load ptr, ptr %6, align 8, !dbg !1613
  %43 = load ptr, ptr %10, align 8, !dbg !1616
  %44 = getelementptr inbounds %struct._lm_map_array, ptr %43, i32 0, i32 0, !dbg !1617
  %45 = load i64, ptr %11, align 8, !dbg !1618
  %46 = getelementptr inbounds [3 x i64], ptr %44, i64 0, i64 %45, !dbg !1616
  %47 = load i64, ptr %46, align 8, !dbg !1616
  %48 = load ptr, ptr %10, align 8, !dbg !1619
  %49 = getelementptr inbounds %struct._lm_map_array, ptr %48, i32 0, i32 1, !dbg !1620
  %50 = load i64, ptr %11, align 8, !dbg !1621
  %51 = getelementptr inbounds [3 x i64], ptr %49, i64 0, i64 %50, !dbg !1619
  %52 = load i64, ptr %51, align 8, !dbg !1619
  %53 = load ptr, ptr %7, align 8, !dbg !1622
  %54 = call i32 %42(i64 noundef %47, i64 noundef %52, ptr noundef %53), !dbg !1613
  %55 = icmp ne i32 %54, 0, !dbg !1613
  br i1 %55, label %56, label %57, !dbg !1623

56:                                               ; preds = %41
  store i32 1, ptr %4, align 4, !dbg !1624
  br label %135, !dbg !1624

57:                                               ; preds = %41
  br label %58, !dbg !1626

58:                                               ; preds = %57, %34, %27
  br label %59, !dbg !1627

59:                                               ; preds = %58
  %60 = load i64, ptr %11, align 8, !dbg !1628
  %61 = add i64 %60, 1, !dbg !1628
  store i64 %61, ptr %11, align 8, !dbg !1628
  br label %24, !dbg !1629, !llvm.loop !1630

62:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1632, metadata !DIExpression()), !dbg !1633
  %63 = load ptr, ptr %10, align 8, !dbg !1634
  %64 = getelementptr inbounds %struct._lm_map_array, ptr %63, i32 0, i32 2, !dbg !1635
  %65 = load i64, ptr %64, align 8, !dbg !1635
  store i64 %65, ptr %12, align 8, !dbg !1633
  %66 = load i64, ptr %12, align 8, !dbg !1636
  %67 = icmp ne i64 %66, 0, !dbg !1636
  br i1 %67, label %68, label %127, !dbg !1638

68:                                               ; preds = %62
  %69 = load ptr, ptr %10, align 8, !dbg !1639
  %70 = getelementptr inbounds %struct._lm_map_array, ptr %69, i32 0, i32 4, !dbg !1640
  %71 = load ptr, ptr %70, align 8, !dbg !1640
  %72 = icmp ne ptr %71, null, !dbg !1639
  br i1 %72, label %73, label %127, !dbg !1641

73:                                               ; preds = %68
  %74 = load ptr, ptr %10, align 8, !dbg !1642
  %75 = getelementptr inbounds %struct._lm_map_array, ptr %74, i32 0, i32 3, !dbg !1643
  %76 = load ptr, ptr %75, align 8, !dbg !1643
  %77 = icmp ne ptr %76, null, !dbg !1642
  br i1 %77, label %78, label %127, !dbg !1644

78:                                               ; preds = %73
  store i64 0, ptr %11, align 8, !dbg !1645
  br label %79, !dbg !1648

79:                                               ; preds = %123, %78
  %80 = load i64, ptr %11, align 8, !dbg !1649
  %81 = load i64, ptr %12, align 8, !dbg !1651
  %82 = icmp ult i64 %80, %81, !dbg !1652
  br i1 %82, label %83, label %126, !dbg !1653

83:                                               ; preds = %79
  %84 = load ptr, ptr %10, align 8, !dbg !1654
  %85 = getelementptr inbounds %struct._lm_map_array, ptr %84, i32 0, i32 3, !dbg !1657
  %86 = load ptr, ptr %85, align 8, !dbg !1657
  %87 = load i64, ptr %11, align 8, !dbg !1658
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87, !dbg !1654
  %89 = load ptr, ptr %88, align 8, !dbg !1654
  %90 = load i64, ptr %89, align 8, !dbg !1659
  %91 = icmp ne i64 %90, 0, !dbg !1659
  br i1 %91, label %92, label %122, !dbg !1660

92:                                               ; preds = %83
  %93 = load ptr, ptr %10, align 8, !dbg !1661
  %94 = getelementptr inbounds %struct._lm_map_array, ptr %93, i32 0, i32 4, !dbg !1662
  %95 = load ptr, ptr %94, align 8, !dbg !1662
  %96 = load i64, ptr %11, align 8, !dbg !1663
  %97 = getelementptr inbounds ptr, ptr %95, i64 %96, !dbg !1661
  %98 = load ptr, ptr %97, align 8, !dbg !1661
  %99 = load i64, ptr %98, align 8, !dbg !1664
  %100 = icmp ne i64 %99, 0, !dbg !1664
  br i1 %100, label %101, label %122, !dbg !1665

101:                                              ; preds = %92
  %102 = load ptr, ptr %6, align 8, !dbg !1666
  %103 = load ptr, ptr %10, align 8, !dbg !1669
  %104 = getelementptr inbounds %struct._lm_map_array, ptr %103, i32 0, i32 3, !dbg !1670
  %105 = load ptr, ptr %104, align 8, !dbg !1670
  %106 = load i64, ptr %11, align 8, !dbg !1671
  %107 = getelementptr inbounds ptr, ptr %105, i64 %106, !dbg !1669
  %108 = load ptr, ptr %107, align 8, !dbg !1669
  %109 = load i64, ptr %108, align 8, !dbg !1672
  %110 = load ptr, ptr %10, align 8, !dbg !1673
  %111 = getelementptr inbounds %struct._lm_map_array, ptr %110, i32 0, i32 4, !dbg !1674
  %112 = load ptr, ptr %111, align 8, !dbg !1674
  %113 = load i64, ptr %11, align 8, !dbg !1675
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113, !dbg !1673
  %115 = load ptr, ptr %114, align 8, !dbg !1673
  %116 = load i64, ptr %115, align 8, !dbg !1676
  %117 = load ptr, ptr %7, align 8, !dbg !1677
  %118 = call i32 %102(i64 noundef %109, i64 noundef %116, ptr noundef %117), !dbg !1666
  %119 = icmp ne i32 %118, 0, !dbg !1666
  br i1 %119, label %120, label %121, !dbg !1678

120:                                              ; preds = %101
  store i32 1, ptr %4, align 4, !dbg !1679
  br label %135, !dbg !1679

121:                                              ; preds = %101
  br label %122, !dbg !1681

122:                                              ; preds = %121, %92, %83
  br label %123, !dbg !1682

123:                                              ; preds = %122
  %124 = load i64, ptr %11, align 8, !dbg !1683
  %125 = add i64 %124, 1, !dbg !1683
  store i64 %125, ptr %11, align 8, !dbg !1683
  br label %79, !dbg !1684, !llvm.loop !1685

126:                                              ; preds = %79
  br label %127, !dbg !1687

127:                                              ; preds = %126, %73, %68, %62
  br label %128, !dbg !1688

128:                                              ; preds = %127
  %129 = load i64, ptr %9, align 8, !dbg !1689
  %130 = add i64 %129, 1, !dbg !1689
  store i64 %130, ptr %9, align 8, !dbg !1689
  br label %16, !dbg !1690, !llvm.loop !1691

131:                                              ; preds = %16
  br label %132, !dbg !1693

132:                                              ; preds = %131, %3
  %133 = load i64, ptr %8, align 8, !dbg !1694
  %134 = trunc i64 %133 to i32, !dbg !1694
  store i32 %134, ptr %4, align 4, !dbg !1695
  br label %135, !dbg !1695

135:                                              ; preds = %132, %120, %56
  %136 = load i32, ptr %4, align 4, !dbg !1696
  ret i32 %136, !dbg !1696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ur_addr_map_init(ptr noundef %0) #0 !dbg !1697 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1714, metadata !DIExpression()), !dbg !1715
  %3 = load ptr, ptr %2, align 8, !dbg !1716
  %4 = icmp ne ptr %3, null, !dbg !1716
  br i1 %4, label %5, label %9, !dbg !1718

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !1719
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 180232, i1 false), !dbg !1721
  %7 = load ptr, ptr %2, align 8, !dbg !1722
  %8 = getelementptr inbounds %struct._ur_addr_map, ptr %7, i32 0, i32 1, !dbg !1723
  store i64 2427178479, ptr %8, align 8, !dbg !1724
  br label %9, !dbg !1725

9:                                                ; preds = %5, %1
  ret void, !dbg !1726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ur_addr_map_clean(ptr noundef %0) #0 !dbg !1727 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1728, metadata !DIExpression()), !dbg !1729
  %4 = load ptr, ptr %2, align 8, !dbg !1730
  %5 = icmp ne ptr %4, null, !dbg !1730
  br i1 %5, label %6, label %29, !dbg !1732

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !1733
  %8 = icmp ne ptr %7, null, !dbg !1733
  br i1 %8, label %9, label %29, !dbg !1733

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 8, !dbg !1733
  %11 = getelementptr inbounds %struct._ur_addr_map, ptr %10, i32 0, i32 1, !dbg !1733
  %12 = load i64, ptr %11, align 8, !dbg !1733
  %13 = icmp eq i64 %12, 2427178479, !dbg !1733
  br i1 %13, label %14, label %29, !dbg !1734

14:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1735, metadata !DIExpression()), !dbg !1737
  store i32 0, ptr %3, align 4, !dbg !1737
  store i32 0, ptr %3, align 4, !dbg !1738
  br label %15, !dbg !1740

15:                                               ; preds = %24, %14
  %16 = load i32, ptr %3, align 4, !dbg !1741
  %17 = icmp ult i32 %16, 1024, !dbg !1743
  br i1 %17, label %18, label %27, !dbg !1744

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !dbg !1745
  %20 = getelementptr inbounds %struct._ur_addr_map, ptr %19, i32 0, i32 0, !dbg !1747
  %21 = load i32, ptr %3, align 4, !dbg !1748
  %22 = zext i32 %21 to i64, !dbg !1745
  %23 = getelementptr inbounds [1024 x %struct._addr_list_header], ptr %20, i64 0, i64 %22, !dbg !1745
  call void @addr_list_free(ptr noundef %23), !dbg !1749
  br label %24, !dbg !1750

24:                                               ; preds = %18
  %25 = load i32, ptr %3, align 4, !dbg !1751
  %26 = add i32 %25, 1, !dbg !1751
  store i32 %26, ptr %3, align 4, !dbg !1751
  br label %15, !dbg !1752, !llvm.loop !1753

27:                                               ; preds = %15
  %28 = load ptr, ptr %2, align 8, !dbg !1755
  call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 180232, i1 false), !dbg !1756
  br label %29, !dbg !1757

29:                                               ; preds = %27, %9, %6, %1
  ret void, !dbg !1758
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_list_free(ptr noundef %0) #0 !dbg !1759 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1763, metadata !DIExpression()), !dbg !1764
  %3 = load ptr, ptr %2, align 8, !dbg !1765
  %4 = icmp ne ptr %3, null, !dbg !1765
  br i1 %4, label %5, label %16, !dbg !1767

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !1768
  %7 = getelementptr inbounds %struct._addr_list_header, ptr %6, i32 0, i32 1, !dbg !1771
  %8 = load ptr, ptr %7, align 8, !dbg !1771
  %9 = icmp ne ptr %8, null, !dbg !1768
  br i1 %9, label %10, label %14, !dbg !1772

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !1773
  %12 = getelementptr inbounds %struct._addr_list_header, ptr %11, i32 0, i32 1, !dbg !1775
  %13 = load ptr, ptr %12, align 8, !dbg !1775
  call void @free(ptr noundef %13) #10, !dbg !1776
  br label %14, !dbg !1777

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %2, align 8, !dbg !1778
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 176, i1 false), !dbg !1779
  br label %16, !dbg !1780

16:                                               ; preds = %14, %1
  ret void, !dbg !1781
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_addr_map_put(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1782 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1786, metadata !DIExpression()), !dbg !1787
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1788, metadata !DIExpression()), !dbg !1789
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1790, metadata !DIExpression()), !dbg !1791
  %10 = load ptr, ptr %5, align 8, !dbg !1792
  %11 = icmp ne ptr %10, null, !dbg !1792
  br i1 %11, label %12, label %17, !dbg !1792

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !1792
  %14 = getelementptr inbounds %struct._ur_addr_map, ptr %13, i32 0, i32 1, !dbg !1792
  %15 = load i64, ptr %14, align 8, !dbg !1792
  %16 = icmp eq i64 %15, 2427178479, !dbg !1792
  br i1 %16, label %18, label %17, !dbg !1794

17:                                               ; preds = %12, %3
  store i32 -1, ptr %4, align 4, !dbg !1795
  br label %40, !dbg !1795

18:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1796, metadata !DIExpression()), !dbg !1798
  %19 = load ptr, ptr %5, align 8, !dbg !1799
  %20 = getelementptr inbounds %struct._ur_addr_map, ptr %19, i32 0, i32 0, !dbg !1799
  %21 = load ptr, ptr %6, align 8, !dbg !1799
  %22 = call i32 @addr_hash(ptr noundef %21), !dbg !1799
  %23 = and i32 %22, 1023, !dbg !1799
  %24 = zext i32 %23 to i64, !dbg !1799
  %25 = getelementptr inbounds [1024 x %struct._addr_list_header], ptr %20, i64 0, i64 %24, !dbg !1799
  store ptr %25, ptr %8, align 8, !dbg !1798
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1800, metadata !DIExpression()), !dbg !1801
  %26 = load ptr, ptr %8, align 8, !dbg !1802
  %27 = load ptr, ptr %6, align 8, !dbg !1803
  %28 = call ptr @addr_list_get(ptr noundef %26, ptr noundef %27), !dbg !1804
  store ptr %28, ptr %9, align 8, !dbg !1801
  %29 = load ptr, ptr %9, align 8, !dbg !1805
  %30 = icmp ne ptr %29, null, !dbg !1805
  br i1 %30, label %31, label %35, !dbg !1807

31:                                               ; preds = %18
  %32 = load i64, ptr %7, align 8, !dbg !1808
  %33 = load ptr, ptr %9, align 8, !dbg !1810
  %34 = getelementptr inbounds %struct._addr_elem, ptr %33, i32 0, i32 1, !dbg !1811
  store i64 %32, ptr %34, align 8, !dbg !1812
  br label %39, !dbg !1813

35:                                               ; preds = %18
  %36 = load ptr, ptr %8, align 8, !dbg !1814
  %37 = load ptr, ptr %6, align 8, !dbg !1816
  %38 = load i64, ptr %7, align 8, !dbg !1817
  call void @addr_list_add(ptr noundef %36, ptr noundef %37, i64 noundef %38), !dbg !1818
  br label %39

39:                                               ; preds = %35, %31
  store i32 0, ptr %4, align 4, !dbg !1819
  br label %40, !dbg !1819

40:                                               ; preds = %39, %17
  %41 = load i32, ptr %4, align 4, !dbg !1820
  ret i32 %41, !dbg !1820
}

declare i32 @addr_hash(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @addr_list_get(ptr noundef %0, ptr noundef %1) #0 !dbg !1821 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1826, metadata !DIExpression()), !dbg !1827
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1828, metadata !DIExpression()), !dbg !1829
  %9 = load ptr, ptr %4, align 8, !dbg !1830
  %10 = icmp ne ptr %9, null, !dbg !1830
  br i1 %10, label %11, label %14, !dbg !1832

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !1833
  %13 = icmp ne ptr %12, null, !dbg !1833
  br i1 %13, label %15, label %14, !dbg !1834

14:                                               ; preds = %11, %2
  store ptr null, ptr %3, align 8, !dbg !1835
  br label %78, !dbg !1835

15:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1836, metadata !DIExpression()), !dbg !1837
  store i64 0, ptr %6, align 8, !dbg !1838
  br label %16, !dbg !1840

16:                                               ; preds = %38, %15
  %17 = load i64, ptr %6, align 8, !dbg !1841
  %18 = icmp ult i64 %17, 4, !dbg !1843
  br i1 %18, label %19, label %41, !dbg !1844

19:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1845, metadata !DIExpression()), !dbg !1847
  %20 = load ptr, ptr %4, align 8, !dbg !1848
  %21 = getelementptr inbounds %struct._addr_list_header, ptr %20, i32 0, i32 0, !dbg !1849
  %22 = load i64, ptr %6, align 8, !dbg !1850
  %23 = getelementptr inbounds [4 x %struct._addr_elem], ptr %21, i64 0, i64 %22, !dbg !1848
  store ptr %23, ptr %7, align 8, !dbg !1847
  %24 = load ptr, ptr %7, align 8, !dbg !1851
  %25 = getelementptr inbounds %struct._addr_elem, ptr %24, i32 0, i32 1, !dbg !1853
  %26 = load i64, ptr %25, align 8, !dbg !1853
  %27 = icmp ne i64 %26, 0, !dbg !1851
  br i1 %27, label %28, label %37, !dbg !1854

28:                                               ; preds = %19
  %29 = load ptr, ptr %7, align 8, !dbg !1855
  %30 = getelementptr inbounds %struct._addr_elem, ptr %29, i32 0, i32 0, !dbg !1858
  %31 = load ptr, ptr %5, align 8, !dbg !1859
  %32 = call i32 @addr_eq(ptr noundef %30, ptr noundef %31), !dbg !1860
  %33 = icmp ne i32 %32, 0, !dbg !1860
  br i1 %33, label %34, label %36, !dbg !1861

34:                                               ; preds = %28
  %35 = load ptr, ptr %7, align 8, !dbg !1862
  store ptr %35, ptr %3, align 8, !dbg !1864
  br label %78, !dbg !1864

36:                                               ; preds = %28
  br label %37, !dbg !1865

37:                                               ; preds = %36, %19
  br label %38, !dbg !1866

38:                                               ; preds = %37
  %39 = load i64, ptr %6, align 8, !dbg !1867
  %40 = add i64 %39, 1, !dbg !1867
  store i64 %40, ptr %6, align 8, !dbg !1867
  br label %16, !dbg !1868, !llvm.loop !1869

41:                                               ; preds = %16
  %42 = load ptr, ptr %4, align 8, !dbg !1871
  %43 = getelementptr inbounds %struct._addr_list_header, ptr %42, i32 0, i32 1, !dbg !1873
  %44 = load ptr, ptr %43, align 8, !dbg !1873
  %45 = icmp ne ptr %44, null, !dbg !1871
  br i1 %45, label %46, label %77, !dbg !1874

46:                                               ; preds = %41
  store i64 0, ptr %6, align 8, !dbg !1875
  br label %47, !dbg !1878

47:                                               ; preds = %73, %46
  %48 = load i64, ptr %6, align 8, !dbg !1879
  %49 = load ptr, ptr %4, align 8, !dbg !1881
  %50 = getelementptr inbounds %struct._addr_list_header, ptr %49, i32 0, i32 2, !dbg !1882
  %51 = load i64, ptr %50, align 8, !dbg !1882
  %52 = icmp ult i64 %48, %51, !dbg !1883
  br i1 %52, label %53, label %76, !dbg !1884

53:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1885, metadata !DIExpression()), !dbg !1887
  %54 = load ptr, ptr %4, align 8, !dbg !1888
  %55 = getelementptr inbounds %struct._addr_list_header, ptr %54, i32 0, i32 1, !dbg !1889
  %56 = load ptr, ptr %55, align 8, !dbg !1889
  %57 = load i64, ptr %6, align 8, !dbg !1890
  %58 = getelementptr inbounds %struct._addr_elem, ptr %56, i64 %57, !dbg !1888
  store ptr %58, ptr %8, align 8, !dbg !1887
  %59 = load ptr, ptr %8, align 8, !dbg !1891
  %60 = getelementptr inbounds %struct._addr_elem, ptr %59, i32 0, i32 1, !dbg !1893
  %61 = load i64, ptr %60, align 8, !dbg !1893
  %62 = icmp ne i64 %61, 0, !dbg !1891
  br i1 %62, label %63, label %72, !dbg !1894

63:                                               ; preds = %53
  %64 = load ptr, ptr %8, align 8, !dbg !1895
  %65 = getelementptr inbounds %struct._addr_elem, ptr %64, i32 0, i32 0, !dbg !1898
  %66 = load ptr, ptr %5, align 8, !dbg !1899
  %67 = call i32 @addr_eq(ptr noundef %65, ptr noundef %66), !dbg !1900
  %68 = icmp ne i32 %67, 0, !dbg !1900
  br i1 %68, label %69, label %71, !dbg !1901

69:                                               ; preds = %63
  %70 = load ptr, ptr %8, align 8, !dbg !1902
  store ptr %70, ptr %3, align 8, !dbg !1904
  br label %78, !dbg !1904

71:                                               ; preds = %63
  br label %72, !dbg !1905

72:                                               ; preds = %71, %53
  br label %73, !dbg !1906

73:                                               ; preds = %72
  %74 = load i64, ptr %6, align 8, !dbg !1907
  %75 = add i64 %74, 1, !dbg !1907
  store i64 %75, ptr %6, align 8, !dbg !1907
  br label %47, !dbg !1908, !llvm.loop !1909

76:                                               ; preds = %47
  br label %77, !dbg !1911

77:                                               ; preds = %76, %41
  store ptr null, ptr %3, align 8, !dbg !1912
  br label %78, !dbg !1912

78:                                               ; preds = %77, %69, %34, %14
  %79 = load ptr, ptr %3, align 8, !dbg !1913
  ret ptr %79, !dbg !1913
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_list_add(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1914 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1917, metadata !DIExpression()), !dbg !1918
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1919, metadata !DIExpression()), !dbg !1920
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1921, metadata !DIExpression()), !dbg !1922
  %11 = load ptr, ptr %5, align 8, !dbg !1923
  %12 = icmp ne ptr %11, null, !dbg !1923
  br i1 %12, label %13, label %16, !dbg !1925

13:                                               ; preds = %3
  %14 = load i64, ptr %6, align 8, !dbg !1926
  %15 = icmp ne i64 %14, 0, !dbg !1926
  br i1 %15, label %17, label %16, !dbg !1927

16:                                               ; preds = %13, %3
  br label %106, !dbg !1928

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1929, metadata !DIExpression()), !dbg !1930
  store ptr null, ptr %7, align 8, !dbg !1930
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1931, metadata !DIExpression()), !dbg !1932
  store i64 0, ptr %8, align 8, !dbg !1933
  br label %18, !dbg !1935

18:                                               ; preds = %35, %17
  %19 = load i64, ptr %8, align 8, !dbg !1936
  %20 = icmp ult i64 %19, 4, !dbg !1938
  br i1 %20, label %21, label %38, !dbg !1939

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8, !dbg !1940
  %23 = getelementptr inbounds %struct._addr_list_header, ptr %22, i32 0, i32 0, !dbg !1943
  %24 = load i64, ptr %8, align 8, !dbg !1944
  %25 = getelementptr inbounds [4 x %struct._addr_elem], ptr %23, i64 0, i64 %24, !dbg !1940
  %26 = getelementptr inbounds %struct._addr_elem, ptr %25, i32 0, i32 1, !dbg !1945
  %27 = load i64, ptr %26, align 8, !dbg !1945
  %28 = icmp ne i64 %27, 0, !dbg !1946
  br i1 %28, label %34, label %29, !dbg !1947

29:                                               ; preds = %21
  %30 = load ptr, ptr %4, align 8, !dbg !1948
  %31 = getelementptr inbounds %struct._addr_list_header, ptr %30, i32 0, i32 0, !dbg !1950
  %32 = load i64, ptr %8, align 8, !dbg !1951
  %33 = getelementptr inbounds [4 x %struct._addr_elem], ptr %31, i64 0, i64 %32, !dbg !1948
  store ptr %33, ptr %7, align 8, !dbg !1952
  br label %38, !dbg !1953

34:                                               ; preds = %21
  br label %35, !dbg !1954

35:                                               ; preds = %34
  %36 = load i64, ptr %8, align 8, !dbg !1955
  %37 = add i64 %36, 1, !dbg !1955
  store i64 %37, ptr %8, align 8, !dbg !1955
  br label %18, !dbg !1956, !llvm.loop !1957

38:                                               ; preds = %29, %18
  %39 = load ptr, ptr %7, align 8, !dbg !1959
  %40 = icmp ne ptr %39, null, !dbg !1959
  br i1 %40, label %73, label %41, !dbg !1961

41:                                               ; preds = %38
  %42 = load ptr, ptr %4, align 8, !dbg !1962
  %43 = getelementptr inbounds %struct._addr_list_header, ptr %42, i32 0, i32 1, !dbg !1963
  %44 = load ptr, ptr %43, align 8, !dbg !1963
  %45 = icmp ne ptr %44, null, !dbg !1962
  br i1 %45, label %46, label %73, !dbg !1964

46:                                               ; preds = %41
  store i64 0, ptr %8, align 8, !dbg !1965
  br label %47, !dbg !1968

47:                                               ; preds = %69, %46
  %48 = load i64, ptr %8, align 8, !dbg !1969
  %49 = load ptr, ptr %4, align 8, !dbg !1971
  %50 = getelementptr inbounds %struct._addr_list_header, ptr %49, i32 0, i32 2, !dbg !1972
  %51 = load i64, ptr %50, align 8, !dbg !1972
  %52 = icmp ult i64 %48, %51, !dbg !1973
  br i1 %52, label %53, label %72, !dbg !1974

53:                                               ; preds = %47
  %54 = load ptr, ptr %4, align 8, !dbg !1975
  %55 = getelementptr inbounds %struct._addr_list_header, ptr %54, i32 0, i32 1, !dbg !1978
  %56 = load ptr, ptr %55, align 8, !dbg !1978
  %57 = load i64, ptr %8, align 8, !dbg !1979
  %58 = getelementptr inbounds %struct._addr_elem, ptr %56, i64 %57, !dbg !1975
  %59 = getelementptr inbounds %struct._addr_elem, ptr %58, i32 0, i32 1, !dbg !1980
  %60 = load i64, ptr %59, align 8, !dbg !1980
  %61 = icmp ne i64 %60, 0, !dbg !1981
  br i1 %61, label %68, label %62, !dbg !1982

62:                                               ; preds = %53
  %63 = load ptr, ptr %4, align 8, !dbg !1983
  %64 = getelementptr inbounds %struct._addr_list_header, ptr %63, i32 0, i32 1, !dbg !1985
  %65 = load ptr, ptr %64, align 8, !dbg !1985
  %66 = load i64, ptr %8, align 8, !dbg !1986
  %67 = getelementptr inbounds %struct._addr_elem, ptr %65, i64 %66, !dbg !1983
  store ptr %67, ptr %7, align 8, !dbg !1987
  br label %72, !dbg !1988

68:                                               ; preds = %53
  br label %69, !dbg !1989

69:                                               ; preds = %68
  %70 = load i64, ptr %8, align 8, !dbg !1990
  %71 = add i64 %70, 1, !dbg !1990
  store i64 %71, ptr %8, align 8, !dbg !1990
  br label %47, !dbg !1991, !llvm.loop !1992

72:                                               ; preds = %62, %47
  br label %73, !dbg !1994

73:                                               ; preds = %72, %41, %38
  %74 = load ptr, ptr %7, align 8, !dbg !1995
  %75 = icmp ne ptr %74, null, !dbg !1995
  br i1 %75, label %99, label %76, !dbg !1997

76:                                               ; preds = %73
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1998, metadata !DIExpression()), !dbg !2000
  %77 = load ptr, ptr %4, align 8, !dbg !2001
  %78 = getelementptr inbounds %struct._addr_list_header, ptr %77, i32 0, i32 2, !dbg !2002
  %79 = load i64, ptr %78, align 8, !dbg !2002
  store i64 %79, ptr %9, align 8, !dbg !2000
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2003, metadata !DIExpression()), !dbg !2004
  %80 = load i64, ptr %9, align 8, !dbg !2005
  %81 = mul i64 %80, 40, !dbg !2006
  store i64 %81, ptr %10, align 8, !dbg !2004
  %82 = load ptr, ptr %4, align 8, !dbg !2007
  %83 = getelementptr inbounds %struct._addr_list_header, ptr %82, i32 0, i32 1, !dbg !2008
  %84 = load ptr, ptr %83, align 8, !dbg !2008
  %85 = load i64, ptr %10, align 8, !dbg !2009
  %86 = add i64 %85, 40, !dbg !2010
  %87 = call ptr @realloc(ptr noundef %84, i64 noundef %86) #11, !dbg !2011
  %88 = load ptr, ptr %4, align 8, !dbg !2012
  %89 = getelementptr inbounds %struct._addr_list_header, ptr %88, i32 0, i32 1, !dbg !2013
  store ptr %87, ptr %89, align 8, !dbg !2014
  %90 = load ptr, ptr %4, align 8, !dbg !2015
  %91 = getelementptr inbounds %struct._addr_list_header, ptr %90, i32 0, i32 1, !dbg !2016
  %92 = load ptr, ptr %91, align 8, !dbg !2016
  %93 = load i64, ptr %9, align 8, !dbg !2017
  %94 = getelementptr inbounds %struct._addr_elem, ptr %92, i64 %93, !dbg !2015
  store ptr %94, ptr %7, align 8, !dbg !2018
  %95 = load ptr, ptr %4, align 8, !dbg !2019
  %96 = getelementptr inbounds %struct._addr_list_header, ptr %95, i32 0, i32 2, !dbg !2020
  %97 = load i64, ptr %96, align 8, !dbg !2021
  %98 = add i64 %97, 1, !dbg !2021
  store i64 %98, ptr %96, align 8, !dbg !2021
  br label %99, !dbg !2022

99:                                               ; preds = %76, %73
  %100 = load ptr, ptr %7, align 8, !dbg !2023
  %101 = getelementptr inbounds %struct._addr_elem, ptr %100, i32 0, i32 0, !dbg !2024
  %102 = load ptr, ptr %5, align 8, !dbg !2025
  call void @addr_cpy(ptr noundef %101, ptr noundef %102), !dbg !2026
  %103 = load i64, ptr %6, align 8, !dbg !2027
  %104 = load ptr, ptr %7, align 8, !dbg !2028
  %105 = getelementptr inbounds %struct._addr_elem, ptr %104, i32 0, i32 1, !dbg !2029
  store i64 %103, ptr %105, align 8, !dbg !2030
  br label %106, !dbg !2031

106:                                              ; preds = %99, %16
  ret void, !dbg !2031
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_addr_map_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2032 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2038, metadata !DIExpression()), !dbg !2039
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2040, metadata !DIExpression()), !dbg !2041
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2042, metadata !DIExpression()), !dbg !2043
  %10 = load ptr, ptr %5, align 8, !dbg !2044
  %11 = icmp ne ptr %10, null, !dbg !2044
  br i1 %11, label %12, label %17, !dbg !2044

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !2044
  %14 = getelementptr inbounds %struct._ur_addr_map, ptr %13, i32 0, i32 1, !dbg !2044
  %15 = load i64, ptr %14, align 8, !dbg !2044
  %16 = icmp eq i64 %15, 2427178479, !dbg !2044
  br i1 %16, label %18, label %17, !dbg !2046

17:                                               ; preds = %12, %3
  store i32 0, ptr %4, align 4, !dbg !2047
  br label %41, !dbg !2047

18:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2048, metadata !DIExpression()), !dbg !2052
  %19 = load ptr, ptr %5, align 8, !dbg !2053
  %20 = getelementptr inbounds %struct._ur_addr_map, ptr %19, i32 0, i32 0, !dbg !2053
  %21 = load ptr, ptr %6, align 8, !dbg !2053
  %22 = call i32 @addr_hash(ptr noundef %21), !dbg !2053
  %23 = and i32 %22, 1023, !dbg !2053
  %24 = zext i32 %23 to i64, !dbg !2053
  %25 = getelementptr inbounds [1024 x %struct._addr_list_header], ptr %20, i64 0, i64 %24, !dbg !2053
  store ptr %25, ptr %8, align 8, !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2054, metadata !DIExpression()), !dbg !2057
  %26 = load ptr, ptr %8, align 8, !dbg !2058
  %27 = load ptr, ptr %6, align 8, !dbg !2059
  %28 = call ptr @addr_list_get_const(ptr noundef %26, ptr noundef %27), !dbg !2060
  store ptr %28, ptr %9, align 8, !dbg !2057
  %29 = load ptr, ptr %9, align 8, !dbg !2061
  %30 = icmp ne ptr %29, null, !dbg !2061
  br i1 %30, label %31, label %40, !dbg !2063

31:                                               ; preds = %18
  %32 = load ptr, ptr %7, align 8, !dbg !2064
  %33 = icmp ne ptr %32, null, !dbg !2064
  br i1 %33, label %34, label %39, !dbg !2067

34:                                               ; preds = %31
  %35 = load ptr, ptr %9, align 8, !dbg !2068
  %36 = getelementptr inbounds %struct._addr_elem, ptr %35, i32 0, i32 1, !dbg !2069
  %37 = load i64, ptr %36, align 8, !dbg !2069
  %38 = load ptr, ptr %7, align 8, !dbg !2070
  store i64 %37, ptr %38, align 8, !dbg !2071
  br label %39, !dbg !2072

39:                                               ; preds = %34, %31
  store i32 1, ptr %4, align 4, !dbg !2073
  br label %41, !dbg !2073

40:                                               ; preds = %18
  store i32 0, ptr %4, align 4, !dbg !2074
  br label %41, !dbg !2074

41:                                               ; preds = %40, %39, %17
  %42 = load i32, ptr %4, align 4, !dbg !2075
  ret i32 %42, !dbg !2075
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @addr_list_get_const(ptr noundef %0, ptr noundef %1) #0 !dbg !2076 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2079, metadata !DIExpression()), !dbg !2080
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2081, metadata !DIExpression()), !dbg !2082
  %9 = load ptr, ptr %4, align 8, !dbg !2083
  %10 = icmp ne ptr %9, null, !dbg !2083
  br i1 %10, label %11, label %14, !dbg !2085

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !2086
  %13 = icmp ne ptr %12, null, !dbg !2086
  br i1 %13, label %15, label %14, !dbg !2087

14:                                               ; preds = %11, %2
  store ptr null, ptr %3, align 8, !dbg !2088
  br label %78, !dbg !2088

15:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2089, metadata !DIExpression()), !dbg !2090
  store i64 0, ptr %6, align 8, !dbg !2091
  br label %16, !dbg !2093

16:                                               ; preds = %38, %15
  %17 = load i64, ptr %6, align 8, !dbg !2094
  %18 = icmp ult i64 %17, 4, !dbg !2096
  br i1 %18, label %19, label %41, !dbg !2097

19:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2098, metadata !DIExpression()), !dbg !2100
  %20 = load ptr, ptr %4, align 8, !dbg !2101
  %21 = getelementptr inbounds %struct._addr_list_header, ptr %20, i32 0, i32 0, !dbg !2102
  %22 = load i64, ptr %6, align 8, !dbg !2103
  %23 = getelementptr inbounds [4 x %struct._addr_elem], ptr %21, i64 0, i64 %22, !dbg !2101
  store ptr %23, ptr %7, align 8, !dbg !2100
  %24 = load ptr, ptr %7, align 8, !dbg !2104
  %25 = getelementptr inbounds %struct._addr_elem, ptr %24, i32 0, i32 1, !dbg !2106
  %26 = load i64, ptr %25, align 8, !dbg !2106
  %27 = icmp ne i64 %26, 0, !dbg !2104
  br i1 %27, label %28, label %37, !dbg !2107

28:                                               ; preds = %19
  %29 = load ptr, ptr %7, align 8, !dbg !2108
  %30 = getelementptr inbounds %struct._addr_elem, ptr %29, i32 0, i32 0, !dbg !2111
  %31 = load ptr, ptr %5, align 8, !dbg !2112
  %32 = call i32 @addr_eq(ptr noundef %30, ptr noundef %31), !dbg !2113
  %33 = icmp ne i32 %32, 0, !dbg !2113
  br i1 %33, label %34, label %36, !dbg !2114

34:                                               ; preds = %28
  %35 = load ptr, ptr %7, align 8, !dbg !2115
  store ptr %35, ptr %3, align 8, !dbg !2117
  br label %78, !dbg !2117

36:                                               ; preds = %28
  br label %37, !dbg !2118

37:                                               ; preds = %36, %19
  br label %38, !dbg !2119

38:                                               ; preds = %37
  %39 = load i64, ptr %6, align 8, !dbg !2120
  %40 = add i64 %39, 1, !dbg !2120
  store i64 %40, ptr %6, align 8, !dbg !2120
  br label %16, !dbg !2121, !llvm.loop !2122

41:                                               ; preds = %16
  %42 = load ptr, ptr %4, align 8, !dbg !2124
  %43 = getelementptr inbounds %struct._addr_list_header, ptr %42, i32 0, i32 1, !dbg !2126
  %44 = load ptr, ptr %43, align 8, !dbg !2126
  %45 = icmp ne ptr %44, null, !dbg !2124
  br i1 %45, label %46, label %77, !dbg !2127

46:                                               ; preds = %41
  store i64 0, ptr %6, align 8, !dbg !2128
  br label %47, !dbg !2131

47:                                               ; preds = %73, %46
  %48 = load i64, ptr %6, align 8, !dbg !2132
  %49 = load ptr, ptr %4, align 8, !dbg !2134
  %50 = getelementptr inbounds %struct._addr_list_header, ptr %49, i32 0, i32 2, !dbg !2135
  %51 = load i64, ptr %50, align 8, !dbg !2135
  %52 = icmp ult i64 %48, %51, !dbg !2136
  br i1 %52, label %53, label %76, !dbg !2137

53:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2138, metadata !DIExpression()), !dbg !2140
  %54 = load ptr, ptr %4, align 8, !dbg !2141
  %55 = getelementptr inbounds %struct._addr_list_header, ptr %54, i32 0, i32 1, !dbg !2142
  %56 = load ptr, ptr %55, align 8, !dbg !2142
  %57 = load i64, ptr %6, align 8, !dbg !2143
  %58 = getelementptr inbounds %struct._addr_elem, ptr %56, i64 %57, !dbg !2141
  store ptr %58, ptr %8, align 8, !dbg !2140
  %59 = load ptr, ptr %8, align 8, !dbg !2144
  %60 = getelementptr inbounds %struct._addr_elem, ptr %59, i32 0, i32 1, !dbg !2146
  %61 = load i64, ptr %60, align 8, !dbg !2146
  %62 = icmp ne i64 %61, 0, !dbg !2144
  br i1 %62, label %63, label %72, !dbg !2147

63:                                               ; preds = %53
  %64 = load ptr, ptr %8, align 8, !dbg !2148
  %65 = getelementptr inbounds %struct._addr_elem, ptr %64, i32 0, i32 0, !dbg !2151
  %66 = load ptr, ptr %5, align 8, !dbg !2152
  %67 = call i32 @addr_eq(ptr noundef %65, ptr noundef %66), !dbg !2153
  %68 = icmp ne i32 %67, 0, !dbg !2153
  br i1 %68, label %69, label %71, !dbg !2154

69:                                               ; preds = %63
  %70 = load ptr, ptr %8, align 8, !dbg !2155
  store ptr %70, ptr %3, align 8, !dbg !2157
  br label %78, !dbg !2157

71:                                               ; preds = %63
  br label %72, !dbg !2158

72:                                               ; preds = %71, %53
  br label %73, !dbg !2159

73:                                               ; preds = %72
  %74 = load i64, ptr %6, align 8, !dbg !2160
  %75 = add i64 %74, 1, !dbg !2160
  store i64 %75, ptr %6, align 8, !dbg !2160
  br label %47, !dbg !2161, !llvm.loop !2162

76:                                               ; preds = %47
  br label %77, !dbg !2164

77:                                               ; preds = %76, %41
  store ptr null, ptr %3, align 8, !dbg !2165
  br label %78, !dbg !2165

78:                                               ; preds = %77, %69, %34, %14
  %79 = load ptr, ptr %3, align 8, !dbg !2166
  ret ptr %79, !dbg !2166
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_addr_map_del(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2167 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2174, metadata !DIExpression()), !dbg !2175
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2176, metadata !DIExpression()), !dbg !2177
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2178, metadata !DIExpression()), !dbg !2179
  %10 = load ptr, ptr %5, align 8, !dbg !2180
  %11 = icmp ne ptr %10, null, !dbg !2180
  br i1 %11, label %12, label %17, !dbg !2180

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !2180
  %14 = getelementptr inbounds %struct._ur_addr_map, ptr %13, i32 0, i32 1, !dbg !2180
  %15 = load i64, ptr %14, align 8, !dbg !2180
  %16 = icmp eq i64 %15, 2427178479, !dbg !2180
  br i1 %16, label %18, label %17, !dbg !2182

17:                                               ; preds = %12, %3
  store i32 0, ptr %4, align 4, !dbg !2183
  br label %32, !dbg !2183

18:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2184, metadata !DIExpression()), !dbg !2186
  %19 = load ptr, ptr %5, align 8, !dbg !2187
  %20 = getelementptr inbounds %struct._ur_addr_map, ptr %19, i32 0, i32 0, !dbg !2187
  %21 = load ptr, ptr %6, align 8, !dbg !2187
  %22 = call i32 @addr_hash(ptr noundef %21), !dbg !2187
  %23 = and i32 %22, 1023, !dbg !2187
  %24 = zext i32 %23 to i64, !dbg !2187
  %25 = getelementptr inbounds [1024 x %struct._addr_list_header], ptr %20, i64 0, i64 %24, !dbg !2187
  store ptr %25, ptr %8, align 8, !dbg !2186
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2188, metadata !DIExpression()), !dbg !2189
  store i32 0, ptr %9, align 4, !dbg !2189
  %26 = load ptr, ptr %8, align 8, !dbg !2190
  %27 = load ptr, ptr %6, align 8, !dbg !2191
  %28 = load ptr, ptr %7, align 8, !dbg !2192
  call void @addr_list_remove(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %9), !dbg !2193
  %29 = load i32, ptr %9, align 4, !dbg !2194
  %30 = icmp sgt i32 %29, 0, !dbg !2195
  %31 = zext i1 %30 to i32, !dbg !2195
  store i32 %31, ptr %4, align 4, !dbg !2196
  br label %32, !dbg !2196

32:                                               ; preds = %18, %17
  %33 = load i32, ptr %4, align 4, !dbg !2197
  ret i32 %33, !dbg !2197
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_list_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2198 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2201, metadata !DIExpression()), !dbg !2202
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2203, metadata !DIExpression()), !dbg !2204
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2205, metadata !DIExpression()), !dbg !2206
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2207, metadata !DIExpression()), !dbg !2208
  %12 = load ptr, ptr %5, align 8, !dbg !2209
  %13 = icmp ne ptr %12, null, !dbg !2209
  br i1 %13, label %14, label %17, !dbg !2211

14:                                               ; preds = %4
  %15 = load ptr, ptr %6, align 8, !dbg !2212
  %16 = icmp ne ptr %15, null, !dbg !2212
  br i1 %16, label %18, label %17, !dbg !2213

17:                                               ; preds = %14, %4
  br label %127, !dbg !2214

18:                                               ; preds = %14
  %19 = load ptr, ptr %8, align 8, !dbg !2215
  %20 = icmp ne ptr %19, null, !dbg !2215
  br i1 %20, label %21, label %23, !dbg !2217

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 8, !dbg !2218
  store i32 0, ptr %22, align 4, !dbg !2219
  br label %23, !dbg !2220

23:                                               ; preds = %21, %18
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2221, metadata !DIExpression()), !dbg !2222
  store i64 0, ptr %9, align 8, !dbg !2223
  br label %24, !dbg !2225

24:                                               ; preds = %67, %23
  %25 = load i64, ptr %9, align 8, !dbg !2226
  %26 = icmp ult i64 %25, 4, !dbg !2228
  br i1 %26, label %27, label %70, !dbg !2229

27:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2230, metadata !DIExpression()), !dbg !2232
  %28 = load ptr, ptr %5, align 8, !dbg !2233
  %29 = getelementptr inbounds %struct._addr_list_header, ptr %28, i32 0, i32 0, !dbg !2234
  %30 = load i64, ptr %9, align 8, !dbg !2235
  %31 = getelementptr inbounds [4 x %struct._addr_elem], ptr %29, i64 0, i64 %30, !dbg !2233
  store ptr %31, ptr %10, align 8, !dbg !2232
  %32 = load ptr, ptr %10, align 8, !dbg !2236
  %33 = getelementptr inbounds %struct._addr_elem, ptr %32, i32 0, i32 1, !dbg !2238
  %34 = load i64, ptr %33, align 8, !dbg !2238
  %35 = icmp ne i64 %34, 0, !dbg !2236
  br i1 %35, label %36, label %66, !dbg !2239

36:                                               ; preds = %27
  %37 = load ptr, ptr %10, align 8, !dbg !2240
  %38 = getelementptr inbounds %struct._addr_elem, ptr %37, i32 0, i32 0, !dbg !2243
  %39 = load ptr, ptr %6, align 8, !dbg !2244
  %40 = call i32 @addr_eq(ptr noundef %38, ptr noundef %39), !dbg !2245
  %41 = icmp ne i32 %40, 0, !dbg !2245
  br i1 %41, label %42, label %65, !dbg !2246

42:                                               ; preds = %36
  %43 = load ptr, ptr %7, align 8, !dbg !2247
  %44 = icmp ne ptr %43, null, !dbg !2247
  br i1 %44, label %45, label %55, !dbg !2250

45:                                               ; preds = %42
  %46 = load ptr, ptr %10, align 8, !dbg !2251
  %47 = getelementptr inbounds %struct._addr_elem, ptr %46, i32 0, i32 1, !dbg !2252
  %48 = load i64, ptr %47, align 8, !dbg !2252
  %49 = icmp ne i64 %48, 0, !dbg !2251
  br i1 %49, label %50, label %55, !dbg !2253

50:                                               ; preds = %45
  %51 = load ptr, ptr %7, align 8, !dbg !2254
  %52 = load ptr, ptr %10, align 8, !dbg !2255
  %53 = getelementptr inbounds %struct._addr_elem, ptr %52, i32 0, i32 1, !dbg !2256
  %54 = load i64, ptr %53, align 8, !dbg !2256
  call void %51(i64 noundef %54), !dbg !2254
  br label %55, !dbg !2254

55:                                               ; preds = %50, %45, %42
  %56 = load ptr, ptr %10, align 8, !dbg !2257
  %57 = getelementptr inbounds %struct._addr_elem, ptr %56, i32 0, i32 1, !dbg !2258
  store i64 0, ptr %57, align 8, !dbg !2259
  %58 = load ptr, ptr %8, align 8, !dbg !2260
  %59 = icmp ne ptr %58, null, !dbg !2260
  br i1 %59, label %60, label %64, !dbg !2262

60:                                               ; preds = %55
  %61 = load ptr, ptr %8, align 8, !dbg !2263
  %62 = load i32, ptr %61, align 4, !dbg !2265
  %63 = add nsw i32 %62, 1, !dbg !2265
  store i32 %63, ptr %61, align 4, !dbg !2265
  br label %64, !dbg !2266

64:                                               ; preds = %60, %55
  br label %65, !dbg !2267

65:                                               ; preds = %64, %36
  br label %66, !dbg !2268

66:                                               ; preds = %65, %27
  br label %67, !dbg !2269

67:                                               ; preds = %66
  %68 = load i64, ptr %9, align 8, !dbg !2270
  %69 = add i64 %68, 1, !dbg !2270
  store i64 %69, ptr %9, align 8, !dbg !2270
  br label %24, !dbg !2271, !llvm.loop !2272

70:                                               ; preds = %24
  %71 = load ptr, ptr %5, align 8, !dbg !2274
  %72 = getelementptr inbounds %struct._addr_list_header, ptr %71, i32 0, i32 1, !dbg !2276
  %73 = load ptr, ptr %72, align 8, !dbg !2276
  %74 = icmp ne ptr %73, null, !dbg !2274
  br i1 %74, label %75, label %127, !dbg !2277

75:                                               ; preds = %70
  store i64 0, ptr %9, align 8, !dbg !2278
  br label %76, !dbg !2281

76:                                               ; preds = %123, %75
  %77 = load i64, ptr %9, align 8, !dbg !2282
  %78 = load ptr, ptr %5, align 8, !dbg !2284
  %79 = getelementptr inbounds %struct._addr_list_header, ptr %78, i32 0, i32 2, !dbg !2285
  %80 = load i64, ptr %79, align 8, !dbg !2285
  %81 = icmp ult i64 %77, %80, !dbg !2286
  br i1 %81, label %82, label %126, !dbg !2287

82:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2288, metadata !DIExpression()), !dbg !2290
  %83 = load ptr, ptr %5, align 8, !dbg !2291
  %84 = getelementptr inbounds %struct._addr_list_header, ptr %83, i32 0, i32 1, !dbg !2292
  %85 = load ptr, ptr %84, align 8, !dbg !2292
  %86 = load i64, ptr %9, align 8, !dbg !2293
  %87 = getelementptr inbounds %struct._addr_elem, ptr %85, i64 %86, !dbg !2291
  store ptr %87, ptr %11, align 8, !dbg !2290
  %88 = load ptr, ptr %11, align 8, !dbg !2294
  %89 = getelementptr inbounds %struct._addr_elem, ptr %88, i32 0, i32 1, !dbg !2296
  %90 = load i64, ptr %89, align 8, !dbg !2296
  %91 = icmp ne i64 %90, 0, !dbg !2294
  br i1 %91, label %92, label %122, !dbg !2297

92:                                               ; preds = %82
  %93 = load ptr, ptr %11, align 8, !dbg !2298
  %94 = getelementptr inbounds %struct._addr_elem, ptr %93, i32 0, i32 0, !dbg !2301
  %95 = load ptr, ptr %6, align 8, !dbg !2302
  %96 = call i32 @addr_eq(ptr noundef %94, ptr noundef %95), !dbg !2303
  %97 = icmp ne i32 %96, 0, !dbg !2303
  br i1 %97, label %98, label %121, !dbg !2304

98:                                               ; preds = %92
  %99 = load ptr, ptr %7, align 8, !dbg !2305
  %100 = icmp ne ptr %99, null, !dbg !2305
  br i1 %100, label %101, label %111, !dbg !2308

101:                                              ; preds = %98
  %102 = load ptr, ptr %11, align 8, !dbg !2309
  %103 = getelementptr inbounds %struct._addr_elem, ptr %102, i32 0, i32 1, !dbg !2310
  %104 = load i64, ptr %103, align 8, !dbg !2310
  %105 = icmp ne i64 %104, 0, !dbg !2309
  br i1 %105, label %106, label %111, !dbg !2311

106:                                              ; preds = %101
  %107 = load ptr, ptr %7, align 8, !dbg !2312
  %108 = load ptr, ptr %11, align 8, !dbg !2313
  %109 = getelementptr inbounds %struct._addr_elem, ptr %108, i32 0, i32 1, !dbg !2314
  %110 = load i64, ptr %109, align 8, !dbg !2314
  call void %107(i64 noundef %110), !dbg !2312
  br label %111, !dbg !2312

111:                                              ; preds = %106, %101, %98
  %112 = load ptr, ptr %11, align 8, !dbg !2315
  %113 = getelementptr inbounds %struct._addr_elem, ptr %112, i32 0, i32 1, !dbg !2316
  store i64 0, ptr %113, align 8, !dbg !2317
  %114 = load ptr, ptr %8, align 8, !dbg !2318
  %115 = icmp ne ptr %114, null, !dbg !2318
  br i1 %115, label %116, label %120, !dbg !2320

116:                                              ; preds = %111
  %117 = load ptr, ptr %8, align 8, !dbg !2321
  %118 = load i32, ptr %117, align 4, !dbg !2323
  %119 = add nsw i32 %118, 1, !dbg !2323
  store i32 %119, ptr %117, align 4, !dbg !2323
  br label %120, !dbg !2324

120:                                              ; preds = %116, %111
  br label %121, !dbg !2325

121:                                              ; preds = %120, %92
  br label %122, !dbg !2326

122:                                              ; preds = %121, %82
  br label %123, !dbg !2327

123:                                              ; preds = %122
  %124 = load i64, ptr %9, align 8, !dbg !2328
  %125 = add i64 %124, 1, !dbg !2328
  store i64 %125, ptr %9, align 8, !dbg !2328
  br label %76, !dbg !2329, !llvm.loop !2330

126:                                              ; preds = %76
  br label %127, !dbg !2332

127:                                              ; preds = %17, %126, %70
  ret void, !dbg !2333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ur_addr_map_foreach(ptr noundef %0, ptr noundef %1) #0 !dbg !2334 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2337, metadata !DIExpression()), !dbg !2338
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2339, metadata !DIExpression()), !dbg !2340
  %7 = load ptr, ptr %3, align 8, !dbg !2341
  %8 = icmp ne ptr %7, null, !dbg !2341
  br i1 %8, label %9, label %30, !dbg !2341

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !2341
  %11 = getelementptr inbounds %struct._ur_addr_map, ptr %10, i32 0, i32 1, !dbg !2341
  %12 = load i64, ptr %11, align 8, !dbg !2341
  %13 = icmp eq i64 %12, 2427178479, !dbg !2341
  br i1 %13, label %14, label %30, !dbg !2343

14:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2344, metadata !DIExpression()), !dbg !2346
  store i32 0, ptr %5, align 4, !dbg !2346
  store i32 0, ptr %5, align 4, !dbg !2347
  br label %15, !dbg !2349

15:                                               ; preds = %26, %14
  %16 = load i32, ptr %5, align 4, !dbg !2350
  %17 = icmp ult i32 %16, 1024, !dbg !2352
  br i1 %17, label %18, label %29, !dbg !2353

18:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2354, metadata !DIExpression()), !dbg !2356
  %19 = load ptr, ptr %3, align 8, !dbg !2357
  %20 = getelementptr inbounds %struct._ur_addr_map, ptr %19, i32 0, i32 0, !dbg !2358
  %21 = load i32, ptr %5, align 4, !dbg !2359
  %22 = zext i32 %21 to i64, !dbg !2357
  %23 = getelementptr inbounds [1024 x %struct._addr_list_header], ptr %20, i64 0, i64 %22, !dbg !2357
  store ptr %23, ptr %6, align 8, !dbg !2356
  %24 = load ptr, ptr %6, align 8, !dbg !2360
  %25 = load ptr, ptr %4, align 8, !dbg !2361
  call void @addr_list_foreach(ptr noundef %24, ptr noundef %25), !dbg !2362
  br label %26, !dbg !2363

26:                                               ; preds = %18
  %27 = load i32, ptr %5, align 4, !dbg !2364
  %28 = add i32 %27, 1, !dbg !2364
  store i32 %28, ptr %5, align 4, !dbg !2364
  br label %15, !dbg !2365, !llvm.loop !2366

29:                                               ; preds = %15
  br label %30, !dbg !2368

30:                                               ; preds = %29, %9, %2
  ret void, !dbg !2369
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_list_foreach(ptr noundef %0, ptr noundef %1) #0 !dbg !2370 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2373, metadata !DIExpression()), !dbg !2374
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2375, metadata !DIExpression()), !dbg !2376
  %8 = load ptr, ptr %3, align 8, !dbg !2377
  %9 = icmp ne ptr %8, null, !dbg !2377
  br i1 %9, label %10, label %68, !dbg !2379

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !2380
  %12 = icmp ne ptr %11, null, !dbg !2380
  br i1 %12, label %13, label %68, !dbg !2381

13:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2382, metadata !DIExpression()), !dbg !2384
  store i64 0, ptr %5, align 8, !dbg !2385
  br label %14, !dbg !2387

14:                                               ; preds = %32, %13
  %15 = load i64, ptr %5, align 8, !dbg !2388
  %16 = icmp ult i64 %15, 4, !dbg !2390
  br i1 %16, label %17, label %35, !dbg !2391

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2392, metadata !DIExpression()), !dbg !2394
  %18 = load ptr, ptr %3, align 8, !dbg !2395
  %19 = getelementptr inbounds %struct._addr_list_header, ptr %18, i32 0, i32 0, !dbg !2396
  %20 = load i64, ptr %5, align 8, !dbg !2397
  %21 = getelementptr inbounds [4 x %struct._addr_elem], ptr %19, i64 0, i64 %20, !dbg !2395
  store ptr %21, ptr %6, align 8, !dbg !2394
  %22 = load ptr, ptr %6, align 8, !dbg !2398
  %23 = getelementptr inbounds %struct._addr_elem, ptr %22, i32 0, i32 1, !dbg !2400
  %24 = load i64, ptr %23, align 8, !dbg !2400
  %25 = icmp ne i64 %24, 0, !dbg !2398
  br i1 %25, label %26, label %31, !dbg !2401

26:                                               ; preds = %17
  %27 = load ptr, ptr %4, align 8, !dbg !2402
  %28 = load ptr, ptr %6, align 8, !dbg !2404
  %29 = getelementptr inbounds %struct._addr_elem, ptr %28, i32 0, i32 1, !dbg !2405
  %30 = load i64, ptr %29, align 8, !dbg !2405
  call void %27(i64 noundef %30), !dbg !2402
  br label %31, !dbg !2406

31:                                               ; preds = %26, %17
  br label %32, !dbg !2407

32:                                               ; preds = %31
  %33 = load i64, ptr %5, align 8, !dbg !2408
  %34 = add i64 %33, 1, !dbg !2408
  store i64 %34, ptr %5, align 8, !dbg !2408
  br label %14, !dbg !2409, !llvm.loop !2410

35:                                               ; preds = %14
  %36 = load ptr, ptr %3, align 8, !dbg !2412
  %37 = getelementptr inbounds %struct._addr_list_header, ptr %36, i32 0, i32 1, !dbg !2414
  %38 = load ptr, ptr %37, align 8, !dbg !2414
  %39 = icmp ne ptr %38, null, !dbg !2412
  br i1 %39, label %40, label %67, !dbg !2415

40:                                               ; preds = %35
  store i64 0, ptr %5, align 8, !dbg !2416
  br label %41, !dbg !2419

41:                                               ; preds = %63, %40
  %42 = load i64, ptr %5, align 8, !dbg !2420
  %43 = load ptr, ptr %3, align 8, !dbg !2422
  %44 = getelementptr inbounds %struct._addr_list_header, ptr %43, i32 0, i32 2, !dbg !2423
  %45 = load i64, ptr %44, align 8, !dbg !2423
  %46 = icmp ult i64 %42, %45, !dbg !2424
  br i1 %46, label %47, label %66, !dbg !2425

47:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2426, metadata !DIExpression()), !dbg !2428
  %48 = load ptr, ptr %3, align 8, !dbg !2429
  %49 = getelementptr inbounds %struct._addr_list_header, ptr %48, i32 0, i32 1, !dbg !2430
  %50 = load ptr, ptr %49, align 8, !dbg !2430
  %51 = load i64, ptr %5, align 8, !dbg !2431
  %52 = getelementptr inbounds %struct._addr_elem, ptr %50, i64 %51, !dbg !2429
  store ptr %52, ptr %7, align 8, !dbg !2428
  %53 = load ptr, ptr %7, align 8, !dbg !2432
  %54 = getelementptr inbounds %struct._addr_elem, ptr %53, i32 0, i32 1, !dbg !2434
  %55 = load i64, ptr %54, align 8, !dbg !2434
  %56 = icmp ne i64 %55, 0, !dbg !2432
  br i1 %56, label %57, label %62, !dbg !2435

57:                                               ; preds = %47
  %58 = load ptr, ptr %4, align 8, !dbg !2436
  %59 = load ptr, ptr %7, align 8, !dbg !2438
  %60 = getelementptr inbounds %struct._addr_elem, ptr %59, i32 0, i32 1, !dbg !2439
  %61 = load i64, ptr %60, align 8, !dbg !2439
  call void %58(i64 noundef %61), !dbg !2436
  br label %62, !dbg !2440

62:                                               ; preds = %57, %47
  br label %63, !dbg !2441

63:                                               ; preds = %62
  %64 = load i64, ptr %5, align 8, !dbg !2442
  %65 = add i64 %64, 1, !dbg !2442
  store i64 %65, ptr %5, align 8, !dbg !2442
  br label %41, !dbg !2443, !llvm.loop !2444

66:                                               ; preds = %41
  br label %67, !dbg !2446

67:                                               ; preds = %66, %35
  br label %68, !dbg !2447

68:                                               ; preds = %67, %10, %2
  ret void, !dbg !2448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ur_addr_map_num_elements(ptr noundef %0) #0 !dbg !2449 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2452, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2454, metadata !DIExpression()), !dbg !2455
  store i64 0, ptr %3, align 8, !dbg !2455
  %6 = load ptr, ptr %2, align 8, !dbg !2456
  %7 = icmp ne ptr %6, null, !dbg !2456
  br i1 %7, label %8, label %31, !dbg !2456

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !2456
  %10 = getelementptr inbounds %struct._ur_addr_map, ptr %9, i32 0, i32 1, !dbg !2456
  %11 = load i64, ptr %10, align 8, !dbg !2456
  %12 = icmp eq i64 %11, 2427178479, !dbg !2456
  br i1 %12, label %13, label %31, !dbg !2458

13:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2459, metadata !DIExpression()), !dbg !2461
  store i32 0, ptr %4, align 4, !dbg !2461
  store i32 0, ptr %4, align 4, !dbg !2462
  br label %14, !dbg !2464

14:                                               ; preds = %27, %13
  %15 = load i32, ptr %4, align 4, !dbg !2465
  %16 = icmp ult i32 %15, 1024, !dbg !2467
  br i1 %16, label %17, label %30, !dbg !2468

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2469, metadata !DIExpression()), !dbg !2471
  %18 = load ptr, ptr %2, align 8, !dbg !2472
  %19 = getelementptr inbounds %struct._ur_addr_map, ptr %18, i32 0, i32 0, !dbg !2473
  %20 = load i32, ptr %4, align 4, !dbg !2474
  %21 = zext i32 %20 to i64, !dbg !2472
  %22 = getelementptr inbounds [1024 x %struct._addr_list_header], ptr %19, i64 0, i64 %21, !dbg !2472
  store ptr %22, ptr %5, align 8, !dbg !2471
  %23 = load ptr, ptr %5, align 8, !dbg !2475
  %24 = call i64 @addr_list_num_elements(ptr noundef %23), !dbg !2476
  %25 = load i64, ptr %3, align 8, !dbg !2477
  %26 = add i64 %25, %24, !dbg !2477
  store i64 %26, ptr %3, align 8, !dbg !2477
  br label %27, !dbg !2478

27:                                               ; preds = %17
  %28 = load i32, ptr %4, align 4, !dbg !2479
  %29 = add i32 %28, 1, !dbg !2479
  store i32 %29, ptr %4, align 4, !dbg !2479
  br label %14, !dbg !2480, !llvm.loop !2481

30:                                               ; preds = %14
  br label %31, !dbg !2483

31:                                               ; preds = %30, %8, %1
  %32 = load i64, ptr %3, align 8, !dbg !2484
  ret i64 %32, !dbg !2485
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @addr_list_num_elements(ptr noundef %0) #0 !dbg !2486 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2489, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2491, metadata !DIExpression()), !dbg !2492
  store i64 0, ptr %3, align 8, !dbg !2492
  %7 = load ptr, ptr %2, align 8, !dbg !2493
  %8 = icmp ne ptr %7, null, !dbg !2493
  br i1 %8, label %9, label %60, !dbg !2495

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2496, metadata !DIExpression()), !dbg !2498
  store i64 0, ptr %4, align 8, !dbg !2499
  br label %10, !dbg !2501

10:                                               ; preds = %26, %9
  %11 = load i64, ptr %4, align 8, !dbg !2502
  %12 = icmp ult i64 %11, 4, !dbg !2504
  br i1 %12, label %13, label %29, !dbg !2505

13:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2506, metadata !DIExpression()), !dbg !2508
  %14 = load ptr, ptr %2, align 8, !dbg !2509
  %15 = getelementptr inbounds %struct._addr_list_header, ptr %14, i32 0, i32 0, !dbg !2510
  %16 = load i64, ptr %4, align 8, !dbg !2511
  %17 = getelementptr inbounds [4 x %struct._addr_elem], ptr %15, i64 0, i64 %16, !dbg !2509
  store ptr %17, ptr %5, align 8, !dbg !2508
  %18 = load ptr, ptr %5, align 8, !dbg !2512
  %19 = getelementptr inbounds %struct._addr_elem, ptr %18, i32 0, i32 1, !dbg !2514
  %20 = load i64, ptr %19, align 8, !dbg !2514
  %21 = icmp ne i64 %20, 0, !dbg !2512
  br i1 %21, label %22, label %25, !dbg !2515

22:                                               ; preds = %13
  %23 = load i64, ptr %3, align 8, !dbg !2516
  %24 = add i64 %23, 1, !dbg !2516
  store i64 %24, ptr %3, align 8, !dbg !2516
  br label %25, !dbg !2518

25:                                               ; preds = %22, %13
  br label %26, !dbg !2519

26:                                               ; preds = %25
  %27 = load i64, ptr %4, align 8, !dbg !2520
  %28 = add i64 %27, 1, !dbg !2520
  store i64 %28, ptr %4, align 8, !dbg !2520
  br label %10, !dbg !2521, !llvm.loop !2522

29:                                               ; preds = %10
  %30 = load ptr, ptr %2, align 8, !dbg !2524
  %31 = getelementptr inbounds %struct._addr_list_header, ptr %30, i32 0, i32 1, !dbg !2526
  %32 = load ptr, ptr %31, align 8, !dbg !2526
  %33 = icmp ne ptr %32, null, !dbg !2524
  br i1 %33, label %34, label %59, !dbg !2527

34:                                               ; preds = %29
  store i64 0, ptr %4, align 8, !dbg !2528
  br label %35, !dbg !2531

35:                                               ; preds = %55, %34
  %36 = load i64, ptr %4, align 8, !dbg !2532
  %37 = load ptr, ptr %2, align 8, !dbg !2534
  %38 = getelementptr inbounds %struct._addr_list_header, ptr %37, i32 0, i32 2, !dbg !2535
  %39 = load i64, ptr %38, align 8, !dbg !2535
  %40 = icmp ult i64 %36, %39, !dbg !2536
  br i1 %40, label %41, label %58, !dbg !2537

41:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2538, metadata !DIExpression()), !dbg !2540
  %42 = load ptr, ptr %2, align 8, !dbg !2541
  %43 = getelementptr inbounds %struct._addr_list_header, ptr %42, i32 0, i32 1, !dbg !2542
  %44 = load ptr, ptr %43, align 8, !dbg !2542
  %45 = load i64, ptr %4, align 8, !dbg !2543
  %46 = getelementptr inbounds %struct._addr_elem, ptr %44, i64 %45, !dbg !2541
  store ptr %46, ptr %6, align 8, !dbg !2540
  %47 = load ptr, ptr %6, align 8, !dbg !2544
  %48 = getelementptr inbounds %struct._addr_elem, ptr %47, i32 0, i32 1, !dbg !2546
  %49 = load i64, ptr %48, align 8, !dbg !2546
  %50 = icmp ne i64 %49, 0, !dbg !2544
  br i1 %50, label %51, label %54, !dbg !2547

51:                                               ; preds = %41
  %52 = load i64, ptr %3, align 8, !dbg !2548
  %53 = add i64 %52, 1, !dbg !2548
  store i64 %53, ptr %3, align 8, !dbg !2548
  br label %54, !dbg !2550

54:                                               ; preds = %51, %41
  br label %55, !dbg !2551

55:                                               ; preds = %54
  %56 = load i64, ptr %4, align 8, !dbg !2552
  %57 = add i64 %56, 1, !dbg !2552
  store i64 %57, ptr %4, align 8, !dbg !2552
  br label %35, !dbg !2553, !llvm.loop !2554

58:                                               ; preds = %35
  br label %59, !dbg !2556

59:                                               ; preds = %58, %29
  br label %60, !dbg !2557

60:                                               ; preds = %59, %1
  %61 = load i64, ptr %3, align 8, !dbg !2558
  ret i64 %61, !dbg !2559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ur_addr_map_size(ptr noundef %0) #0 !dbg !2560 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2563, metadata !DIExpression()), !dbg !2564
  store i64 0, ptr %3, align 8, !dbg !2564
  %6 = load ptr, ptr %2, align 8, !dbg !2565
  %7 = icmp ne ptr %6, null, !dbg !2565
  br i1 %7, label %8, label %31, !dbg !2565

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !2565
  %10 = getelementptr inbounds %struct._ur_addr_map, ptr %9, i32 0, i32 1, !dbg !2565
  %11 = load i64, ptr %10, align 8, !dbg !2565
  %12 = icmp eq i64 %11, 2427178479, !dbg !2565
  br i1 %12, label %13, label %31, !dbg !2567

13:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2568, metadata !DIExpression()), !dbg !2570
  store i32 0, ptr %4, align 4, !dbg !2570
  store i32 0, ptr %4, align 4, !dbg !2571
  br label %14, !dbg !2573

14:                                               ; preds = %27, %13
  %15 = load i32, ptr %4, align 4, !dbg !2574
  %16 = icmp ult i32 %15, 1024, !dbg !2576
  br i1 %16, label %17, label %30, !dbg !2577

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2578, metadata !DIExpression()), !dbg !2580
  %18 = load ptr, ptr %2, align 8, !dbg !2581
  %19 = getelementptr inbounds %struct._ur_addr_map, ptr %18, i32 0, i32 0, !dbg !2582
  %20 = load i32, ptr %4, align 4, !dbg !2583
  %21 = zext i32 %20 to i64, !dbg !2581
  %22 = getelementptr inbounds [1024 x %struct._addr_list_header], ptr %19, i64 0, i64 %21, !dbg !2581
  store ptr %22, ptr %5, align 8, !dbg !2580
  %23 = load ptr, ptr %5, align 8, !dbg !2584
  %24 = call i64 @addr_list_size(ptr noundef %23), !dbg !2585
  %25 = load i64, ptr %3, align 8, !dbg !2586
  %26 = add i64 %25, %24, !dbg !2586
  store i64 %26, ptr %3, align 8, !dbg !2586
  br label %27, !dbg !2587

27:                                               ; preds = %17
  %28 = load i32, ptr %4, align 4, !dbg !2588
  %29 = add i32 %28, 1, !dbg !2588
  store i32 %29, ptr %4, align 4, !dbg !2588
  br label %14, !dbg !2589, !llvm.loop !2590

30:                                               ; preds = %14
  br label %31, !dbg !2592

31:                                               ; preds = %30, %8, %1
  %32 = load i64, ptr %3, align 8, !dbg !2593
  ret i64 %32, !dbg !2594
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @addr_list_size(ptr noundef %0) #0 !dbg !2595 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2596, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2598, metadata !DIExpression()), !dbg !2599
  store i64 0, ptr %3, align 8, !dbg !2599
  %4 = load ptr, ptr %2, align 8, !dbg !2600
  %5 = icmp ne ptr %4, null, !dbg !2600
  br i1 %5, label %6, label %14, !dbg !2602

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8, !dbg !2603
  %8 = add i64 %7, 4, !dbg !2603
  store i64 %8, ptr %3, align 8, !dbg !2603
  %9 = load ptr, ptr %2, align 8, !dbg !2605
  %10 = getelementptr inbounds %struct._addr_list_header, ptr %9, i32 0, i32 2, !dbg !2606
  %11 = load i64, ptr %10, align 8, !dbg !2606
  %12 = load i64, ptr %3, align 8, !dbg !2607
  %13 = add i64 %12, %11, !dbg !2607
  store i64 %13, ptr %3, align 8, !dbg !2607
  br label %14, !dbg !2608

14:                                               ; preds = %6, %1
  %15 = load i64, ptr %3, align 8, !dbg !2609
  ret i64 %15, !dbg !2610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @ur_string_map_create(ptr noundef %0) #0 !dbg !2611 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2614, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2616, metadata !DIExpression()), !dbg !2617
  %5 = call noalias ptr @malloc(i64 noundef 8224) #9, !dbg !2618
  store ptr %5, ptr %4, align 8, !dbg !2617
  %6 = load ptr, ptr %4, align 8, !dbg !2619
  %7 = call i32 @ur_string_map_init(ptr noundef %6), !dbg !2621
  %8 = icmp slt i32 %7, 0, !dbg !2622
  br i1 %8, label %9, label %11, !dbg !2623

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 8, !dbg !2624
  call void @free(ptr noundef %10) #10, !dbg !2626
  store ptr null, ptr %2, align 8, !dbg !2627
  br label %16, !dbg !2627

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !2628
  %13 = load ptr, ptr %4, align 8, !dbg !2629
  %14 = getelementptr inbounds %struct._ur_string_map, ptr %13, i32 0, i32 2, !dbg !2630
  store ptr %12, ptr %14, align 8, !dbg !2631
  %15 = load ptr, ptr %4, align 8, !dbg !2632
  store ptr %15, ptr %2, align 8, !dbg !2633
  br label %16, !dbg !2633

16:                                               ; preds = %11, %9
  %17 = load ptr, ptr %2, align 8, !dbg !2634
  ret ptr %17, !dbg !2634
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_string_map_init(ptr noundef %0) #0 !dbg !2635 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2638, metadata !DIExpression()), !dbg !2639
  %4 = load ptr, ptr %3, align 8, !dbg !2640
  %5 = icmp ne ptr %4, null, !dbg !2640
  br i1 %5, label %6, label %13, !dbg !2642

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !2643
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 8224, i1 false), !dbg !2645
  %8 = load ptr, ptr %3, align 8, !dbg !2646
  %9 = getelementptr inbounds %struct._ur_string_map, ptr %8, i32 0, i32 1, !dbg !2647
  store i64 2427178479, ptr %9, align 8, !dbg !2648
  %10 = load ptr, ptr %3, align 8, !dbg !2649
  %11 = getelementptr inbounds %struct._ur_string_map, ptr %10, i32 0, i32 3, !dbg !2649
  %12 = call i32 @turn_mutex_init_recursive(ptr noundef %11), !dbg !2649
  store i32 0, ptr %2, align 4, !dbg !2650
  br label %14, !dbg !2650

13:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !2651
  br label %14, !dbg !2651

14:                                               ; preds = %13, %6
  %15 = load i32, ptr %2, align 4, !dbg !2652
  ret i32 %15, !dbg !2652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_string_map_put(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2653 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2657, metadata !DIExpression()), !dbg !2658
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2659, metadata !DIExpression()), !dbg !2660
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2661, metadata !DIExpression()), !dbg !2662
  %10 = load ptr, ptr %5, align 8, !dbg !2663
  %11 = call i32 @ur_string_map_valid(ptr noundef %10), !dbg !2665
  %12 = icmp ne i32 %11, 0, !dbg !2665
  br i1 %12, label %14, label %13, !dbg !2666

13:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !2667
  br label %57, !dbg !2667

14:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2668, metadata !DIExpression()), !dbg !2671
  %15 = load ptr, ptr %5, align 8, !dbg !2672
  %16 = load ptr, ptr %6, align 8, !dbg !2673
  %17 = call ptr @get_string_list_header(ptr noundef %15, ptr noundef %16), !dbg !2674
  store ptr %17, ptr %8, align 8, !dbg !2671
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2675, metadata !DIExpression()), !dbg !2676
  %18 = load ptr, ptr %8, align 8, !dbg !2677
  %19 = getelementptr inbounds %struct._string_list_header, ptr %18, i32 0, i32 0, !dbg !2678
  %20 = load ptr, ptr %19, align 8, !dbg !2678
  %21 = load ptr, ptr %6, align 8, !dbg !2679
  %22 = call ptr @string_list_get(ptr noundef %20, ptr noundef %21), !dbg !2680
  store ptr %22, ptr %9, align 8, !dbg !2676
  %23 = load ptr, ptr %9, align 8, !dbg !2681
  %24 = icmp ne ptr %23, null, !dbg !2681
  br i1 %24, label %25, label %48, !dbg !2683

25:                                               ; preds = %14
  %26 = load ptr, ptr %9, align 8, !dbg !2684
  %27 = getelementptr inbounds %struct._string_elem, ptr %26, i32 0, i32 3, !dbg !2687
  %28 = load ptr, ptr %27, align 8, !dbg !2687
  %29 = load ptr, ptr %7, align 8, !dbg !2688
  %30 = icmp ne ptr %28, %29, !dbg !2689
  br i1 %30, label %31, label %47, !dbg !2690

31:                                               ; preds = %25
  %32 = load ptr, ptr %5, align 8, !dbg !2691
  %33 = getelementptr inbounds %struct._ur_string_map, ptr %32, i32 0, i32 2, !dbg !2694
  %34 = load ptr, ptr %33, align 8, !dbg !2694
  %35 = icmp ne ptr %34, null, !dbg !2691
  br i1 %35, label %36, label %43, !dbg !2695

36:                                               ; preds = %31
  %37 = load ptr, ptr %5, align 8, !dbg !2696
  %38 = getelementptr inbounds %struct._ur_string_map, ptr %37, i32 0, i32 2, !dbg !2697
  %39 = load ptr, ptr %38, align 8, !dbg !2697
  %40 = load ptr, ptr %9, align 8, !dbg !2698
  %41 = getelementptr inbounds %struct._string_elem, ptr %40, i32 0, i32 3, !dbg !2699
  %42 = load ptr, ptr %41, align 8, !dbg !2699
  call void %39(ptr noundef %42), !dbg !2696
  br label %43, !dbg !2696

43:                                               ; preds = %36, %31
  %44 = load ptr, ptr %7, align 8, !dbg !2700
  %45 = load ptr, ptr %9, align 8, !dbg !2701
  %46 = getelementptr inbounds %struct._string_elem, ptr %45, i32 0, i32 3, !dbg !2702
  store ptr %44, ptr %46, align 8, !dbg !2703
  br label %47, !dbg !2704

47:                                               ; preds = %43, %25
  store i32 0, ptr %4, align 4, !dbg !2705
  br label %57, !dbg !2705

48:                                               ; preds = %14
  %49 = load ptr, ptr %8, align 8, !dbg !2706
  %50 = getelementptr inbounds %struct._string_list_header, ptr %49, i32 0, i32 0, !dbg !2707
  %51 = load ptr, ptr %50, align 8, !dbg !2707
  %52 = load ptr, ptr %6, align 8, !dbg !2708
  %53 = load ptr, ptr %7, align 8, !dbg !2709
  %54 = call ptr @string_list_add(ptr noundef %51, ptr noundef %52, ptr noundef %53), !dbg !2710
  %55 = load ptr, ptr %8, align 8, !dbg !2711
  %56 = getelementptr inbounds %struct._string_list_header, ptr %55, i32 0, i32 0, !dbg !2712
  store ptr %54, ptr %56, align 8, !dbg !2713
  store i32 0, ptr %4, align 4, !dbg !2714
  br label %57, !dbg !2714

57:                                               ; preds = %48, %47, %13
  %58 = load i32, ptr %4, align 4, !dbg !2715
  ret i32 %58, !dbg !2715
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_string_map_valid(ptr noundef %0) #0 !dbg !2716 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2722
  %3 = load ptr, ptr %2, align 8, !dbg !2723
  %4 = icmp ne ptr %3, null, !dbg !2723
  br i1 %4, label %5, label %10, !dbg !2724

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !2725
  %7 = getelementptr inbounds %struct._ur_string_map, ptr %6, i32 0, i32 1, !dbg !2726
  %8 = load i64, ptr %7, align 8, !dbg !2726
  %9 = icmp eq i64 %8, 2427178479, !dbg !2727
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ], !dbg !2728
  %12 = zext i1 %11 to i32, !dbg !2724
  ret i32 %12, !dbg !2729
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_string_list_header(ptr noundef %0, ptr noundef %1) #0 !dbg !2730 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2733, metadata !DIExpression()), !dbg !2734
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2735, metadata !DIExpression()), !dbg !2736
  %5 = load ptr, ptr %3, align 8, !dbg !2737
  %6 = getelementptr inbounds %struct._ur_string_map, ptr %5, i32 0, i32 0, !dbg !2738
  %7 = load ptr, ptr %4, align 8, !dbg !2739
  %8 = call i32 @string_map_index(ptr noundef %7), !dbg !2740
  %9 = sext i32 %8 to i64, !dbg !2737
  %10 = getelementptr inbounds [1024 x %struct._string_list_header], ptr %6, i64 0, i64 %9, !dbg !2737
  ret ptr %10, !dbg !2741
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @string_list_get(ptr noundef %0, ptr noundef %1) #0 !dbg !2742 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2745, metadata !DIExpression()), !dbg !2746
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2747, metadata !DIExpression()), !dbg !2748
  %7 = load ptr, ptr %4, align 8, !dbg !2749
  %8 = icmp ne ptr %7, null, !dbg !2749
  br i1 %8, label %9, label %12, !dbg !2751

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !2752
  %11 = icmp ne ptr %10, null, !dbg !2752
  br i1 %11, label %13, label %12, !dbg !2753

12:                                               ; preds = %9, %2
  store ptr null, ptr %3, align 8, !dbg !2754
  br label %30, !dbg !2754

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2755, metadata !DIExpression()), !dbg !2756
  %14 = load ptr, ptr %4, align 8, !dbg !2757
  store ptr %14, ptr %6, align 8, !dbg !2756
  %15 = load ptr, ptr %6, align 8, !dbg !2758
  %16 = getelementptr inbounds %struct._string_elem, ptr %15, i32 0, i32 1, !dbg !2760
  %17 = load ptr, ptr %16, align 8, !dbg !2760
  %18 = load ptr, ptr %5, align 8, !dbg !2761
  %19 = call i32 @strcmp(ptr noundef %17, ptr noundef %18) #12, !dbg !2762
  %20 = icmp eq i32 %19, 0, !dbg !2763
  br i1 %20, label %21, label %23, !dbg !2764

21:                                               ; preds = %13
  %22 = load ptr, ptr %6, align 8, !dbg !2765
  store ptr %22, ptr %3, align 8, !dbg !2767
  br label %30, !dbg !2767

23:                                               ; preds = %13
  %24 = load ptr, ptr %6, align 8, !dbg !2768
  %25 = getelementptr inbounds %struct._string_elem, ptr %24, i32 0, i32 0, !dbg !2770
  %26 = getelementptr inbounds %struct._string_list, ptr %25, i32 0, i32 0, !dbg !2771
  %27 = load ptr, ptr %26, align 8, !dbg !2771
  %28 = load ptr, ptr %5, align 8, !dbg !2772
  %29 = call ptr @string_list_get(ptr noundef %27, ptr noundef %28), !dbg !2773
  store ptr %29, ptr %3, align 8, !dbg !2774
  br label %30, !dbg !2774

30:                                               ; preds = %23, %21, %12
  %31 = load ptr, ptr %3, align 8, !dbg !2775
  ret ptr %31, !dbg !2775
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @string_list_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2776 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2779, metadata !DIExpression()), !dbg !2780
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2781, metadata !DIExpression()), !dbg !2782
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2783, metadata !DIExpression()), !dbg !2784
  %9 = load ptr, ptr %6, align 8, !dbg !2785
  %10 = icmp ne ptr %9, null, !dbg !2785
  br i1 %10, label %13, label %11, !dbg !2787

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8, !dbg !2788
  store ptr %12, ptr %4, align 8, !dbg !2789
  br label %45, !dbg !2789

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2790, metadata !DIExpression()), !dbg !2791
  %14 = call noalias ptr @malloc(i64 noundef 32) #9, !dbg !2792
  store ptr %14, ptr %8, align 8, !dbg !2791
  %15 = load ptr, ptr %5, align 8, !dbg !2793
  %16 = load ptr, ptr %8, align 8, !dbg !2794
  %17 = getelementptr inbounds %struct._string_elem, ptr %16, i32 0, i32 0, !dbg !2795
  %18 = getelementptr inbounds %struct._string_list, ptr %17, i32 0, i32 0, !dbg !2796
  store ptr %15, ptr %18, align 8, !dbg !2797
  %19 = load ptr, ptr %6, align 8, !dbg !2798
  %20 = call i64 @strlen(ptr noundef %19) #12, !dbg !2799
  %21 = add i64 %20, 1, !dbg !2800
  %22 = trunc i64 %21 to i32, !dbg !2799
  %23 = load ptr, ptr %8, align 8, !dbg !2801
  %24 = getelementptr inbounds %struct._string_elem, ptr %23, i32 0, i32 2, !dbg !2802
  store i32 %22, ptr %24, align 8, !dbg !2803
  %25 = load ptr, ptr %8, align 8, !dbg !2804
  %26 = getelementptr inbounds %struct._string_elem, ptr %25, i32 0, i32 2, !dbg !2805
  %27 = load i32, ptr %26, align 8, !dbg !2805
  %28 = zext i32 %27 to i64, !dbg !2804
  %29 = call noalias ptr @malloc(i64 noundef %28) #9, !dbg !2806
  %30 = load ptr, ptr %8, align 8, !dbg !2807
  %31 = getelementptr inbounds %struct._string_elem, ptr %30, i32 0, i32 1, !dbg !2808
  store ptr %29, ptr %31, align 8, !dbg !2809
  %32 = load ptr, ptr %6, align 8, !dbg !2810
  %33 = load ptr, ptr %8, align 8, !dbg !2811
  %34 = getelementptr inbounds %struct._string_elem, ptr %33, i32 0, i32 1, !dbg !2812
  %35 = load ptr, ptr %34, align 8, !dbg !2812
  %36 = load ptr, ptr %8, align 8, !dbg !2813
  %37 = getelementptr inbounds %struct._string_elem, ptr %36, i32 0, i32 2, !dbg !2814
  %38 = load i32, ptr %37, align 8, !dbg !2814
  %39 = zext i32 %38 to i64, !dbg !2813
  call void @bcopy(ptr noundef %32, ptr noundef %35, i64 noundef %39) #10, !dbg !2815
  %40 = load ptr, ptr %7, align 8, !dbg !2816
  %41 = load ptr, ptr %8, align 8, !dbg !2817
  %42 = getelementptr inbounds %struct._string_elem, ptr %41, i32 0, i32 3, !dbg !2818
  store ptr %40, ptr %42, align 8, !dbg !2819
  %43 = load ptr, ptr %8, align 8, !dbg !2820
  %44 = getelementptr inbounds %struct._string_elem, ptr %43, i32 0, i32 0, !dbg !2821
  store ptr %44, ptr %4, align 8, !dbg !2822
  br label %45, !dbg !2822

45:                                               ; preds = %13, %11
  %46 = load ptr, ptr %4, align 8, !dbg !2823
  ret ptr %46, !dbg !2823
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_string_map_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2824 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2828, metadata !DIExpression()), !dbg !2829
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2830, metadata !DIExpression()), !dbg !2831
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2832, metadata !DIExpression()), !dbg !2833
  %10 = load ptr, ptr %5, align 8, !dbg !2834
  %11 = call i32 @ur_string_map_valid(ptr noundef %10), !dbg !2836
  %12 = icmp ne i32 %11, 0, !dbg !2836
  br i1 %12, label %14, label %13, !dbg !2837

13:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !2838
  br label %35, !dbg !2838

14:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2839, metadata !DIExpression()), !dbg !2841
  %15 = load ptr, ptr %5, align 8, !dbg !2842
  %16 = load ptr, ptr %6, align 8, !dbg !2843
  %17 = call ptr @get_string_list_header(ptr noundef %15, ptr noundef %16), !dbg !2844
  store ptr %17, ptr %8, align 8, !dbg !2841
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2845, metadata !DIExpression()), !dbg !2846
  %18 = load ptr, ptr %8, align 8, !dbg !2847
  %19 = getelementptr inbounds %struct._string_list_header, ptr %18, i32 0, i32 0, !dbg !2848
  %20 = load ptr, ptr %19, align 8, !dbg !2848
  %21 = load ptr, ptr %6, align 8, !dbg !2849
  %22 = call ptr @string_list_get(ptr noundef %20, ptr noundef %21), !dbg !2850
  store ptr %22, ptr %9, align 8, !dbg !2846
  %23 = load ptr, ptr %9, align 8, !dbg !2851
  %24 = icmp ne ptr %23, null, !dbg !2851
  br i1 %24, label %25, label %34, !dbg !2853

25:                                               ; preds = %14
  %26 = load ptr, ptr %7, align 8, !dbg !2854
  %27 = icmp ne ptr %26, null, !dbg !2854
  br i1 %27, label %28, label %33, !dbg !2857

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 8, !dbg !2858
  %30 = getelementptr inbounds %struct._string_elem, ptr %29, i32 0, i32 3, !dbg !2859
  %31 = load ptr, ptr %30, align 8, !dbg !2859
  %32 = load ptr, ptr %7, align 8, !dbg !2860
  store ptr %31, ptr %32, align 8, !dbg !2861
  br label %33, !dbg !2862

33:                                               ; preds = %28, %25
  store i32 1, ptr %4, align 4, !dbg !2863
  br label %35, !dbg !2863

34:                                               ; preds = %14
  store i32 0, ptr %4, align 4, !dbg !2864
  br label %35, !dbg !2864

35:                                               ; preds = %34, %33, %13
  %36 = load i32, ptr %4, align 4, !dbg !2866
  ret i32 %36, !dbg !2866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_string_map_del(ptr noundef %0, ptr noundef %1) #0 !dbg !2867 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2870, metadata !DIExpression()), !dbg !2871
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2872, metadata !DIExpression()), !dbg !2873
  %8 = load ptr, ptr %4, align 8, !dbg !2874
  %9 = call i32 @ur_string_map_valid(ptr noundef %8), !dbg !2876
  %10 = icmp ne i32 %9, 0, !dbg !2876
  br i1 %10, label %12, label %11, !dbg !2877

11:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !2878
  br label %29, !dbg !2878

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2879, metadata !DIExpression()), !dbg !2881
  %13 = load ptr, ptr %4, align 8, !dbg !2882
  %14 = load ptr, ptr %5, align 8, !dbg !2883
  %15 = call ptr @get_string_list_header(ptr noundef %13, ptr noundef %14), !dbg !2884
  store ptr %15, ptr %6, align 8, !dbg !2881
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i32 0, ptr %7, align 4, !dbg !2886
  %16 = load ptr, ptr %6, align 8, !dbg !2887
  %17 = getelementptr inbounds %struct._string_list_header, ptr %16, i32 0, i32 0, !dbg !2888
  %18 = load ptr, ptr %17, align 8, !dbg !2888
  %19 = load ptr, ptr %5, align 8, !dbg !2889
  %20 = load ptr, ptr %4, align 8, !dbg !2890
  %21 = getelementptr inbounds %struct._ur_string_map, ptr %20, i32 0, i32 2, !dbg !2891
  %22 = load ptr, ptr %21, align 8, !dbg !2891
  %23 = call ptr @string_list_remove(ptr noundef %18, ptr noundef %19, ptr noundef %22, ptr noundef %7), !dbg !2892
  %24 = load ptr, ptr %6, align 8, !dbg !2893
  %25 = getelementptr inbounds %struct._string_list_header, ptr %24, i32 0, i32 0, !dbg !2894
  store ptr %23, ptr %25, align 8, !dbg !2895
  %26 = load i32, ptr %7, align 4, !dbg !2896
  %27 = icmp sgt i32 %26, 0, !dbg !2897
  %28 = zext i1 %27 to i32, !dbg !2897
  store i32 %28, ptr %3, align 4, !dbg !2898
  br label %29, !dbg !2898

29:                                               ; preds = %12, %11
  %30 = load i32, ptr %3, align 4, !dbg !2899
  ret i32 %30, !dbg !2899
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @string_list_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2900 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2903, metadata !DIExpression()), !dbg !2904
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2905, metadata !DIExpression()), !dbg !2906
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2907, metadata !DIExpression()), !dbg !2908
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2909, metadata !DIExpression()), !dbg !2910
  %12 = load ptr, ptr %6, align 8, !dbg !2911
  %13 = icmp ne ptr %12, null, !dbg !2911
  br i1 %13, label %14, label %17, !dbg !2913

14:                                               ; preds = %4
  %15 = load ptr, ptr %7, align 8, !dbg !2914
  %16 = icmp ne ptr %15, null, !dbg !2914
  br i1 %16, label %19, label %17, !dbg !2915

17:                                               ; preds = %14, %4
  %18 = load ptr, ptr %6, align 8, !dbg !2916
  store ptr %18, ptr %5, align 8, !dbg !2917
  br label %67, !dbg !2917

19:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2918, metadata !DIExpression()), !dbg !2919
  %20 = load ptr, ptr %6, align 8, !dbg !2920
  store ptr %20, ptr %10, align 8, !dbg !2919
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2921, metadata !DIExpression()), !dbg !2922
  %21 = load ptr, ptr %10, align 8, !dbg !2923
  %22 = getelementptr inbounds %struct._string_elem, ptr %21, i32 0, i32 0, !dbg !2924
  %23 = getelementptr inbounds %struct._string_list, ptr %22, i32 0, i32 0, !dbg !2925
  %24 = load ptr, ptr %23, align 8, !dbg !2925
  store ptr %24, ptr %11, align 8, !dbg !2922
  %25 = load ptr, ptr %10, align 8, !dbg !2926
  %26 = getelementptr inbounds %struct._string_elem, ptr %25, i32 0, i32 1, !dbg !2928
  %27 = load ptr, ptr %26, align 8, !dbg !2928
  %28 = load ptr, ptr %7, align 8, !dbg !2929
  %29 = call i32 @strcmp(ptr noundef %27, ptr noundef %28) #12, !dbg !2930
  %30 = icmp eq i32 %29, 0, !dbg !2931
  br i1 %30, label %31, label %56, !dbg !2932

31:                                               ; preds = %19
  %32 = load ptr, ptr %10, align 8, !dbg !2933
  %33 = getelementptr inbounds %struct._string_elem, ptr %32, i32 0, i32 1, !dbg !2935
  %34 = load ptr, ptr %33, align 8, !dbg !2935
  call void @free(ptr noundef %34) #10, !dbg !2936
  %35 = load ptr, ptr %8, align 8, !dbg !2937
  %36 = icmp ne ptr %35, null, !dbg !2937
  br i1 %36, label %37, label %42, !dbg !2939

37:                                               ; preds = %31
  %38 = load ptr, ptr %8, align 8, !dbg !2940
  %39 = load ptr, ptr %10, align 8, !dbg !2941
  %40 = getelementptr inbounds %struct._string_elem, ptr %39, i32 0, i32 3, !dbg !2942
  %41 = load ptr, ptr %40, align 8, !dbg !2942
  call void %38(ptr noundef %41), !dbg !2940
  br label %42, !dbg !2940

42:                                               ; preds = %37, %31
  %43 = load ptr, ptr %10, align 8, !dbg !2943
  call void @free(ptr noundef %43) #10, !dbg !2944
  %44 = load ptr, ptr %9, align 8, !dbg !2945
  %45 = icmp ne ptr %44, null, !dbg !2945
  br i1 %45, label %46, label %50, !dbg !2947

46:                                               ; preds = %42
  %47 = load ptr, ptr %9, align 8, !dbg !2948
  %48 = load i32, ptr %47, align 4, !dbg !2949
  %49 = add nsw i32 %48, 1, !dbg !2949
  store i32 %49, ptr %47, align 4, !dbg !2949
  br label %50, !dbg !2950

50:                                               ; preds = %46, %42
  %51 = load ptr, ptr %11, align 8, !dbg !2951
  %52 = load ptr, ptr %7, align 8, !dbg !2952
  %53 = load ptr, ptr %8, align 8, !dbg !2953
  %54 = load ptr, ptr %9, align 8, !dbg !2954
  %55 = call ptr @string_list_remove(ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54), !dbg !2955
  store ptr %55, ptr %6, align 8, !dbg !2956
  br label %65, !dbg !2957

56:                                               ; preds = %19
  %57 = load ptr, ptr %11, align 8, !dbg !2958
  %58 = load ptr, ptr %7, align 8, !dbg !2960
  %59 = load ptr, ptr %8, align 8, !dbg !2961
  %60 = load ptr, ptr %9, align 8, !dbg !2962
  %61 = call ptr @string_list_remove(ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %60), !dbg !2963
  %62 = load ptr, ptr %10, align 8, !dbg !2964
  %63 = getelementptr inbounds %struct._string_elem, ptr %62, i32 0, i32 0, !dbg !2965
  %64 = getelementptr inbounds %struct._string_list, ptr %63, i32 0, i32 0, !dbg !2966
  store ptr %61, ptr %64, align 8, !dbg !2967
  br label %65

65:                                               ; preds = %56, %50
  %66 = load ptr, ptr %6, align 8, !dbg !2968
  store ptr %66, ptr %5, align 8, !dbg !2969
  br label %67, !dbg !2969

67:                                               ; preds = %65, %17
  %68 = load ptr, ptr %5, align 8, !dbg !2970
  ret ptr %68, !dbg !2970
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ur_string_map_clean(ptr noundef %0) #0 !dbg !2971 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2974, metadata !DIExpression()), !dbg !2975
  %4 = load ptr, ptr %2, align 8, !dbg !2976
  %5 = call i32 @ur_string_map_valid(ptr noundef %4), !dbg !2978
  %6 = icmp ne i32 %5, 0, !dbg !2978
  br i1 %6, label %7, label %24, !dbg !2979

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2980, metadata !DIExpression()), !dbg !2982
  store i32 0, ptr %3, align 4, !dbg !2982
  store i32 0, ptr %3, align 4, !dbg !2983
  br label %8, !dbg !2985

8:                                                ; preds = %20, %7
  %9 = load i32, ptr %3, align 4, !dbg !2986
  %10 = icmp slt i32 %9, 1024, !dbg !2988
  br i1 %10, label %11, label %23, !dbg !2989

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8, !dbg !2990
  %13 = getelementptr inbounds %struct._ur_string_map, ptr %12, i32 0, i32 0, !dbg !2992
  %14 = load i32, ptr %3, align 4, !dbg !2993
  %15 = sext i32 %14 to i64, !dbg !2990
  %16 = getelementptr inbounds [1024 x %struct._string_list_header], ptr %13, i64 0, i64 %15, !dbg !2990
  %17 = load ptr, ptr %2, align 8, !dbg !2994
  %18 = getelementptr inbounds %struct._ur_string_map, ptr %17, i32 0, i32 2, !dbg !2995
  %19 = load ptr, ptr %18, align 8, !dbg !2995
  call void @string_list_free(ptr noundef %16, ptr noundef %19), !dbg !2996
  br label %20, !dbg !2997

20:                                               ; preds = %11
  %21 = load i32, ptr %3, align 4, !dbg !2998
  %22 = add nsw i32 %21, 1, !dbg !2998
  store i32 %22, ptr %3, align 4, !dbg !2998
  br label %8, !dbg !2999, !llvm.loop !3000

23:                                               ; preds = %8
  br label %24, !dbg !3002

24:                                               ; preds = %23, %1
  ret void, !dbg !3003
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @string_list_free(ptr noundef %0, ptr noundef %1) #0 !dbg !3004 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3007, metadata !DIExpression()), !dbg !3008
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3009, metadata !DIExpression()), !dbg !3010
  %8 = load ptr, ptr %3, align 8, !dbg !3011
  %9 = icmp ne ptr %8, null, !dbg !3011
  br i1 %9, label %10, label %50, !dbg !3013

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3014, metadata !DIExpression()), !dbg !3016
  %11 = load ptr, ptr %3, align 8, !dbg !3017
  %12 = getelementptr inbounds %struct._string_list_header, ptr %11, i32 0, i32 0, !dbg !3018
  %13 = load ptr, ptr %12, align 8, !dbg !3018
  store ptr %13, ptr %5, align 8, !dbg !3016
  br label %14, !dbg !3019

14:                                               ; preds = %44, %10
  %15 = load ptr, ptr %5, align 8, !dbg !3020
  %16 = icmp ne ptr %15, null, !dbg !3019
  br i1 %16, label %17, label %47, !dbg !3019

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3021, metadata !DIExpression()), !dbg !3023
  %18 = load ptr, ptr %5, align 8, !dbg !3024
  store ptr %18, ptr %6, align 8, !dbg !3023
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3025, metadata !DIExpression()), !dbg !3026
  %19 = load ptr, ptr %6, align 8, !dbg !3027
  %20 = getelementptr inbounds %struct._string_elem, ptr %19, i32 0, i32 0, !dbg !3028
  %21 = getelementptr inbounds %struct._string_list, ptr %20, i32 0, i32 0, !dbg !3029
  %22 = load ptr, ptr %21, align 8, !dbg !3029
  store ptr %22, ptr %7, align 8, !dbg !3026
  %23 = load ptr, ptr %6, align 8, !dbg !3030
  %24 = getelementptr inbounds %struct._string_elem, ptr %23, i32 0, i32 1, !dbg !3032
  %25 = load ptr, ptr %24, align 8, !dbg !3032
  %26 = icmp ne ptr %25, null, !dbg !3030
  br i1 %26, label %27, label %31, !dbg !3033

27:                                               ; preds = %17
  %28 = load ptr, ptr %6, align 8, !dbg !3034
  %29 = getelementptr inbounds %struct._string_elem, ptr %28, i32 0, i32 1, !dbg !3035
  %30 = load ptr, ptr %29, align 8, !dbg !3035
  call void @free(ptr noundef %30) #10, !dbg !3036
  br label %31, !dbg !3036

31:                                               ; preds = %27, %17
  %32 = load ptr, ptr %4, align 8, !dbg !3037
  %33 = icmp ne ptr %32, null, !dbg !3037
  br i1 %33, label %34, label %44, !dbg !3039

34:                                               ; preds = %31
  %35 = load ptr, ptr %6, align 8, !dbg !3040
  %36 = getelementptr inbounds %struct._string_elem, ptr %35, i32 0, i32 3, !dbg !3041
  %37 = load ptr, ptr %36, align 8, !dbg !3041
  %38 = icmp ne ptr %37, null, !dbg !3040
  br i1 %38, label %39, label %44, !dbg !3042

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !dbg !3043
  %41 = load ptr, ptr %6, align 8, !dbg !3044
  %42 = getelementptr inbounds %struct._string_elem, ptr %41, i32 0, i32 3, !dbg !3045
  %43 = load ptr, ptr %42, align 8, !dbg !3045
  call void %40(ptr noundef %43), !dbg !3043
  br label %44, !dbg !3043

44:                                               ; preds = %39, %34, %31
  %45 = load ptr, ptr %6, align 8, !dbg !3046
  call void @free(ptr noundef %45) #10, !dbg !3047
  %46 = load ptr, ptr %7, align 8, !dbg !3048
  store ptr %46, ptr %5, align 8, !dbg !3049
  br label %14, !dbg !3019, !llvm.loop !3050

47:                                               ; preds = %14
  %48 = load ptr, ptr %3, align 8, !dbg !3052
  %49 = getelementptr inbounds %struct._string_list_header, ptr %48, i32 0, i32 0, !dbg !3053
  store ptr null, ptr %49, align 8, !dbg !3054
  br label %50, !dbg !3055

50:                                               ; preds = %47, %2
  ret void, !dbg !3056
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ur_string_map_free(ptr noundef %0) #0 !dbg !3057 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3061, metadata !DIExpression()), !dbg !3062
  %4 = load ptr, ptr %2, align 8, !dbg !3063
  %5 = icmp ne ptr %4, null, !dbg !3063
  br i1 %5, label %6, label %40, !dbg !3065

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !3066
  %8 = load ptr, ptr %7, align 8, !dbg !3067
  %9 = call i32 @ur_string_map_valid(ptr noundef %8), !dbg !3068
  %10 = icmp ne i32 %9, 0, !dbg !3068
  br i1 %10, label %11, label %40, !dbg !3069

11:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3070, metadata !DIExpression()), !dbg !3072
  store i32 0, ptr %3, align 4, !dbg !3072
  store i32 0, ptr %3, align 4, !dbg !3073
  br label %12, !dbg !3075

12:                                               ; preds = %26, %11
  %13 = load i32, ptr %3, align 4, !dbg !3076
  %14 = icmp slt i32 %13, 1024, !dbg !3078
  br i1 %14, label %15, label %29, !dbg !3079

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !3080
  %17 = load ptr, ptr %16, align 8, !dbg !3082
  %18 = getelementptr inbounds %struct._ur_string_map, ptr %17, i32 0, i32 0, !dbg !3083
  %19 = load i32, ptr %3, align 4, !dbg !3084
  %20 = sext i32 %19 to i64, !dbg !3085
  %21 = getelementptr inbounds [1024 x %struct._string_list_header], ptr %18, i64 0, i64 %20, !dbg !3085
  %22 = load ptr, ptr %2, align 8, !dbg !3086
  %23 = load ptr, ptr %22, align 8, !dbg !3087
  %24 = getelementptr inbounds %struct._ur_string_map, ptr %23, i32 0, i32 2, !dbg !3088
  %25 = load ptr, ptr %24, align 8, !dbg !3088
  call void @string_list_free(ptr noundef %21, ptr noundef %25), !dbg !3089
  br label %26, !dbg !3090

26:                                               ; preds = %15
  %27 = load i32, ptr %3, align 4, !dbg !3091
  %28 = add nsw i32 %27, 1, !dbg !3091
  store i32 %28, ptr %3, align 4, !dbg !3091
  br label %12, !dbg !3092, !llvm.loop !3093

29:                                               ; preds = %12
  %30 = load ptr, ptr %2, align 8, !dbg !3095
  %31 = load ptr, ptr %30, align 8, !dbg !3096
  %32 = getelementptr inbounds %struct._ur_string_map, ptr %31, i32 0, i32 1, !dbg !3097
  store i64 0, ptr %32, align 8, !dbg !3098
  %33 = load ptr, ptr %2, align 8, !dbg !3099
  %34 = load ptr, ptr %33, align 8, !dbg !3099
  %35 = getelementptr inbounds %struct._ur_string_map, ptr %34, i32 0, i32 3, !dbg !3099
  %36 = call i32 @turn_mutex_destroy(ptr noundef %35), !dbg !3099
  %37 = load ptr, ptr %2, align 8, !dbg !3100
  %38 = load ptr, ptr %37, align 8, !dbg !3101
  call void @free(ptr noundef %38) #10, !dbg !3102
  %39 = load ptr, ptr %2, align 8, !dbg !3103
  store ptr null, ptr %39, align 8, !dbg !3104
  br label %40, !dbg !3105

40:                                               ; preds = %29, %6, %1
  ret void, !dbg !3106
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ur_string_map_size(ptr noundef %0) #0 !dbg !3107 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3110, metadata !DIExpression()), !dbg !3111
  %6 = load ptr, ptr %3, align 8, !dbg !3112
  %7 = call i32 @ur_string_map_valid(ptr noundef %6), !dbg !3114
  %8 = icmp ne i32 %7, 0, !dbg !3114
  br i1 %8, label %9, label %29, !dbg !3115

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3116, metadata !DIExpression()), !dbg !3118
  store i64 0, ptr %4, align 8, !dbg !3118
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !3120
  store i32 0, ptr %5, align 4, !dbg !3120
  store i32 0, ptr %5, align 4, !dbg !3121
  br label %10, !dbg !3123

10:                                               ; preds = %24, %9
  %11 = load i32, ptr %5, align 4, !dbg !3124
  %12 = icmp slt i32 %11, 1024, !dbg !3126
  br i1 %12, label %13, label %27, !dbg !3127

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 8, !dbg !3128
  %15 = getelementptr inbounds %struct._ur_string_map, ptr %14, i32 0, i32 0, !dbg !3130
  %16 = load i32, ptr %5, align 4, !dbg !3131
  %17 = sext i32 %16 to i64, !dbg !3128
  %18 = getelementptr inbounds [1024 x %struct._string_list_header], ptr %15, i64 0, i64 %17, !dbg !3128
  %19 = getelementptr inbounds %struct._string_list_header, ptr %18, i32 0, i32 0, !dbg !3132
  %20 = load ptr, ptr %19, align 8, !dbg !3132
  %21 = call i64 @string_list_size(ptr noundef %20), !dbg !3133
  %22 = load i64, ptr %4, align 8, !dbg !3134
  %23 = add i64 %22, %21, !dbg !3134
  store i64 %23, ptr %4, align 8, !dbg !3134
  br label %24, !dbg !3135

24:                                               ; preds = %13
  %25 = load i32, ptr %5, align 4, !dbg !3136
  %26 = add nsw i32 %25, 1, !dbg !3136
  store i32 %26, ptr %5, align 4, !dbg !3136
  br label %10, !dbg !3137, !llvm.loop !3138

27:                                               ; preds = %10
  %28 = load i64, ptr %4, align 8, !dbg !3140
  store i64 %28, ptr %2, align 8, !dbg !3141
  br label %30, !dbg !3141

29:                                               ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !3142
  br label %30, !dbg !3142

30:                                               ; preds = %29, %27
  %31 = load i64, ptr %2, align 8, !dbg !3144
  ret i64 %31, !dbg !3144
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @string_list_size(ptr noundef %0) #0 !dbg !3145 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3150, metadata !DIExpression()), !dbg !3151
  %4 = load ptr, ptr %3, align 8, !dbg !3152
  %5 = icmp ne ptr %4, null, !dbg !3152
  br i1 %5, label %7, label %6, !dbg !3154

6:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !3155
  br label %13, !dbg !3155

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3156
  %9 = getelementptr inbounds %struct._string_list, ptr %8, i32 0, i32 0, !dbg !3157
  %10 = load ptr, ptr %9, align 8, !dbg !3157
  %11 = call i64 @string_list_size(ptr noundef %10), !dbg !3158
  %12 = add i64 1, %11, !dbg !3159
  store i64 %12, ptr %2, align 8, !dbg !3160
  br label %13, !dbg !3160

13:                                               ; preds = %7, %6
  %14 = load i64, ptr %2, align 8, !dbg !3161
  ret i64 %14, !dbg !3161
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_string_map_lock(ptr noundef %0) #0 !dbg !3162 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3163, metadata !DIExpression()), !dbg !3164
  %4 = load ptr, ptr %3, align 8, !dbg !3165
  %5 = call i32 @ur_string_map_valid(ptr noundef %4), !dbg !3167
  %6 = icmp ne i32 %5, 0, !dbg !3167
  br i1 %6, label %7, label %11, !dbg !3168

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3169
  %9 = getelementptr inbounds %struct._ur_string_map, ptr %8, i32 0, i32 3, !dbg !3169
  %10 = call i32 @turn_mutex_lock(ptr noundef %9), !dbg !3169
  store i32 0, ptr %2, align 4, !dbg !3171
  br label %12, !dbg !3171

11:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !3172
  br label %12, !dbg !3172

12:                                               ; preds = %11, %7
  %13 = load i32, ptr %2, align 4, !dbg !3173
  ret i32 %13, !dbg !3173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ur_string_map_unlock(ptr noundef %0) #0 !dbg !3174 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3175, metadata !DIExpression()), !dbg !3176
  %4 = load ptr, ptr %3, align 8, !dbg !3177
  %5 = call i32 @ur_string_map_valid(ptr noundef %4), !dbg !3179
  %6 = icmp ne i32 %5, 0, !dbg !3179
  br i1 %6, label %7, label %11, !dbg !3180

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3181
  %9 = getelementptr inbounds %struct._ur_string_map, ptr %8, i32 0, i32 3, !dbg !3181
  %10 = call i32 @turn_mutex_unlock(ptr noundef %9), !dbg !3181
  store i32 0, ptr %2, align 4, !dbg !3183
  br label %12, !dbg !3183

11:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !3184
  br label %12, !dbg !3184

12:                                               ; preds = %11, %7
  %13 = load i32, ptr %2, align 4, !dbg !3185
  ret i32 %13, !dbg !3185
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @kh_init_3() #0 !dbg !3186 {
  %1 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 64) #13, !dbg !3189
  ret ptr %1, !dbg !3189
}

declare i32 @turn_mutex_init_recursive(ptr noundef) #4

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kh_resize_3(ptr noundef %0, i32 noundef %1) #0 !dbg !3190 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3191, metadata !DIExpression()), !dbg !3192
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3193, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3194, metadata !DIExpression()), !dbg !3192
  store ptr null, ptr %5, align 8, !dbg !3192
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3195, metadata !DIExpression()), !dbg !3192
  store i32 0, ptr %6, align 4, !dbg !3192
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3196, metadata !DIExpression()), !dbg !3192
  store i32 1, ptr %7, align 4, !dbg !3192
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3197, metadata !DIExpression()), !dbg !3199
  store i32 31, ptr %8, align 4, !dbg !3199
  br label %16, !dbg !3199

16:                                               ; preds = %23, %2
  %17 = load i32, ptr %8, align 4, !dbg !3199
  %18 = zext i32 %17 to i64, !dbg !3199
  %19 = getelementptr inbounds [32 x i32], ptr @__ac_prime_list, i64 0, i64 %18, !dbg !3199
  %20 = load i32, ptr %19, align 4, !dbg !3199
  %21 = load i32, ptr %4, align 4, !dbg !3199
  %22 = icmp ugt i32 %20, %21, !dbg !3199
  br i1 %22, label %23, label %26, !dbg !3199

23:                                               ; preds = %16
  %24 = load i32, ptr %8, align 4, !dbg !3199
  %25 = add i32 %24, -1, !dbg !3199
  store i32 %25, ptr %8, align 4, !dbg !3199
  br label %16, !dbg !3199, !llvm.loop !3200

26:                                               ; preds = %16
  %27 = load i32, ptr %8, align 4, !dbg !3199
  %28 = add i32 %27, 1, !dbg !3199
  %29 = zext i32 %28 to i64, !dbg !3199
  %30 = getelementptr inbounds [32 x i32], ptr @__ac_prime_list, i64 0, i64 %29, !dbg !3199
  %31 = load i32, ptr %30, align 4, !dbg !3199
  store i32 %31, ptr %4, align 4, !dbg !3199
  %32 = load ptr, ptr %3, align 8, !dbg !3201
  %33 = getelementptr inbounds %struct.kh_3_t, ptr %32, i32 0, i32 1, !dbg !3201
  %34 = load i32, ptr %33, align 4, !dbg !3201
  %35 = load i32, ptr %4, align 4, !dbg !3201
  %36 = uitofp i32 %35 to double, !dbg !3201
  %37 = call double @llvm.fmuladd.f64(double %36, double 7.700000e-01, double 5.000000e-01), !dbg !3201
  %38 = fptoui double %37 to i32, !dbg !3201
  %39 = icmp uge i32 %34, %38, !dbg !3201
  br i1 %39, label %40, label %41, !dbg !3199

40:                                               ; preds = %26
  store i32 0, ptr %7, align 4, !dbg !3201
  br label %91, !dbg !3201

41:                                               ; preds = %26
  %42 = load i32, ptr %4, align 4, !dbg !3203
  %43 = lshr i32 %42, 4, !dbg !3203
  %44 = add i32 %43, 1, !dbg !3203
  %45 = zext i32 %44 to i64, !dbg !3203
  %46 = mul i64 %45, 4, !dbg !3203
  %47 = trunc i64 %46 to i32, !dbg !3203
  store i32 %47, ptr %6, align 4, !dbg !3203
  %48 = load i32, ptr %6, align 4, !dbg !3203
  %49 = zext i32 %48 to i64, !dbg !3203
  %50 = call noalias ptr @malloc(i64 noundef %49) #9, !dbg !3203
  store ptr %50, ptr %5, align 8, !dbg !3203
  %51 = load ptr, ptr %5, align 8, !dbg !3203
  %52 = load i32, ptr %6, align 4, !dbg !3203
  %53 = zext i32 %52 to i64, !dbg !3203
  call void @llvm.memset.p0.i64(ptr align 4 %51, i8 -86, i64 %53, i1 false), !dbg !3203
  %54 = load ptr, ptr %3, align 8, !dbg !3205
  %55 = getelementptr inbounds %struct.kh_3_t, ptr %54, i32 0, i32 0, !dbg !3205
  %56 = load i32, ptr %55, align 8, !dbg !3205
  %57 = load i32, ptr %4, align 4, !dbg !3205
  %58 = icmp ult i32 %56, %57, !dbg !3205
  br i1 %58, label %59, label %90, !dbg !3203

59:                                               ; preds = %41
  %60 = load ptr, ptr %3, align 8, !dbg !3207
  %61 = getelementptr inbounds %struct.kh_3_t, ptr %60, i32 0, i32 6, !dbg !3207
  %62 = load ptr, ptr %61, align 8, !dbg !3207
  %63 = load i32, ptr %4, align 4, !dbg !3207
  %64 = zext i32 %63 to i64, !dbg !3207
  %65 = mul i64 %64, 8, !dbg !3207
  %66 = call ptr @realloc(ptr noundef %62, i64 noundef %65) #11, !dbg !3207
  %67 = load ptr, ptr %3, align 8, !dbg !3207
  %68 = getelementptr inbounds %struct.kh_3_t, ptr %67, i32 0, i32 6, !dbg !3207
  store ptr %66, ptr %68, align 8, !dbg !3207
  %69 = load i32, ptr %4, align 4, !dbg !3207
  %70 = zext i32 %69 to i64, !dbg !3207
  %71 = mul i64 %70, 8, !dbg !3207
  %72 = trunc i64 %71 to i32, !dbg !3207
  %73 = load ptr, ptr %3, align 8, !dbg !3207
  %74 = getelementptr inbounds %struct.kh_3_t, ptr %73, i32 0, i32 7, !dbg !3207
  store i32 %72, ptr %74, align 8, !dbg !3207
  %75 = load ptr, ptr %3, align 8, !dbg !3209
  %76 = getelementptr inbounds %struct.kh_3_t, ptr %75, i32 0, i32 8, !dbg !3209
  %77 = load ptr, ptr %76, align 8, !dbg !3209
  %78 = load i32, ptr %4, align 4, !dbg !3209
  %79 = zext i32 %78 to i64, !dbg !3209
  %80 = mul i64 %79, 8, !dbg !3209
  %81 = call ptr @realloc(ptr noundef %77, i64 noundef %80) #11, !dbg !3209
  %82 = load ptr, ptr %3, align 8, !dbg !3209
  %83 = getelementptr inbounds %struct.kh_3_t, ptr %82, i32 0, i32 8, !dbg !3209
  store ptr %81, ptr %83, align 8, !dbg !3209
  %84 = load i32, ptr %4, align 4, !dbg !3209
  %85 = zext i32 %84 to i64, !dbg !3209
  %86 = mul i64 %85, 8, !dbg !3209
  %87 = trunc i64 %86 to i32, !dbg !3209
  %88 = load ptr, ptr %3, align 8, !dbg !3209
  %89 = getelementptr inbounds %struct.kh_3_t, ptr %88, i32 0, i32 9, !dbg !3209
  store i32 %87, ptr %89, align 8, !dbg !3209
  br label %90, !dbg !3207

90:                                               ; preds = %59, %41
  br label %91

91:                                               ; preds = %90, %40
  %92 = load i32, ptr %7, align 4, !dbg !3212
  %93 = icmp ne i32 %92, 0, !dbg !3212
  br i1 %93, label %94, label %362, !dbg !3192

94:                                               ; preds = %91
  store i32 0, ptr %7, align 4, !dbg !3214
  br label %95, !dbg !3214

95:                                               ; preds = %296, %94
  %96 = load i32, ptr %7, align 4, !dbg !3217
  %97 = load ptr, ptr %3, align 8, !dbg !3217
  %98 = getelementptr inbounds %struct.kh_3_t, ptr %97, i32 0, i32 0, !dbg !3217
  %99 = load i32, ptr %98, align 8, !dbg !3217
  %100 = icmp ne i32 %96, %99, !dbg !3217
  br i1 %100, label %101, label %299, !dbg !3214

101:                                              ; preds = %95
  %102 = load ptr, ptr %3, align 8, !dbg !3219
  %103 = getelementptr inbounds %struct.kh_3_t, ptr %102, i32 0, i32 4, !dbg !3219
  %104 = load ptr, ptr %103, align 8, !dbg !3219
  %105 = load i32, ptr %7, align 4, !dbg !3219
  %106 = lshr i32 %105, 4, !dbg !3219
  %107 = zext i32 %106 to i64, !dbg !3219
  %108 = getelementptr inbounds i32, ptr %104, i64 %107, !dbg !3219
  %109 = load i32, ptr %108, align 4, !dbg !3219
  %110 = load i32, ptr %7, align 4, !dbg !3219
  %111 = and i32 %110, 15, !dbg !3219
  %112 = shl i32 %111, 1, !dbg !3219
  %113 = lshr i32 %109, %112, !dbg !3219
  %114 = and i32 %113, 3, !dbg !3219
  %115 = icmp eq i32 %114, 0, !dbg !3219
  br i1 %115, label %116, label %295, !dbg !3222

116:                                              ; preds = %101
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3223, metadata !DIExpression()), !dbg !3225
  %117 = load ptr, ptr %3, align 8, !dbg !3225
  %118 = getelementptr inbounds %struct.kh_3_t, ptr %117, i32 0, i32 6, !dbg !3225
  %119 = load ptr, ptr %118, align 8, !dbg !3225
  %120 = load i32, ptr %7, align 4, !dbg !3225
  %121 = zext i32 %120 to i64, !dbg !3225
  %122 = getelementptr inbounds i64, ptr %119, i64 %121, !dbg !3225
  %123 = load i64, ptr %122, align 8, !dbg !3225
  store i64 %123, ptr %9, align 8, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3226, metadata !DIExpression()), !dbg !3225
  %124 = load ptr, ptr %3, align 8, !dbg !3227
  %125 = getelementptr inbounds %struct.kh_3_t, ptr %124, i32 0, i32 8, !dbg !3227
  %126 = load ptr, ptr %125, align 8, !dbg !3227
  %127 = load i32, ptr %7, align 4, !dbg !3227
  %128 = zext i32 %127 to i64, !dbg !3227
  %129 = getelementptr inbounds i64, ptr %126, i64 %128, !dbg !3227
  %130 = load i64, ptr %129, align 8, !dbg !3227
  store i64 %130, ptr %10, align 8, !dbg !3227
  %131 = load i32, ptr %7, align 4, !dbg !3225
  %132 = and i32 %131, 15, !dbg !3225
  %133 = shl i32 %132, 1, !dbg !3225
  %134 = zext i32 %133 to i64, !dbg !3225
  %135 = shl i64 1, %134, !dbg !3225
  %136 = load ptr, ptr %3, align 8, !dbg !3225
  %137 = getelementptr inbounds %struct.kh_3_t, ptr %136, i32 0, i32 4, !dbg !3225
  %138 = load ptr, ptr %137, align 8, !dbg !3225
  %139 = load i32, ptr %7, align 4, !dbg !3225
  %140 = lshr i32 %139, 4, !dbg !3225
  %141 = zext i32 %140 to i64, !dbg !3225
  %142 = getelementptr inbounds i32, ptr %138, i64 %141, !dbg !3225
  %143 = load i32, ptr %142, align 4, !dbg !3225
  %144 = zext i32 %143 to i64, !dbg !3225
  %145 = or i64 %144, %135, !dbg !3225
  %146 = trunc i64 %145 to i32, !dbg !3225
  store i32 %146, ptr %142, align 4, !dbg !3225
  br label %147, !dbg !3225

147:                                              ; preds = %116, %293
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3229, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3232, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3233, metadata !DIExpression()), !dbg !3231
  %148 = load i64, ptr %9, align 8, !dbg !3231
  %149 = lshr i64 %148, 33, !dbg !3231
  %150 = load i64, ptr %9, align 8, !dbg !3231
  %151 = xor i64 %149, %150, !dbg !3231
  %152 = load i64, ptr %9, align 8, !dbg !3231
  %153 = shl i64 %152, 11, !dbg !3231
  %154 = xor i64 %151, %153, !dbg !3231
  %155 = trunc i64 %154 to i32, !dbg !3231
  store i32 %155, ptr %12, align 4, !dbg !3231
  %156 = load i32, ptr %12, align 4, !dbg !3231
  %157 = load i32, ptr %4, align 4, !dbg !3231
  %158 = urem i32 %156, %157, !dbg !3231
  store i32 %158, ptr %13, align 4, !dbg !3231
  %159 = load i32, ptr %12, align 4, !dbg !3231
  %160 = load i32, ptr %4, align 4, !dbg !3231
  %161 = sub i32 %160, 1, !dbg !3231
  %162 = urem i32 %159, %161, !dbg !3231
  %163 = add i32 1, %162, !dbg !3231
  store i32 %163, ptr %11, align 4, !dbg !3231
  br label %164, !dbg !3231

164:                                              ; preds = %194, %147
  %165 = load ptr, ptr %5, align 8, !dbg !3231
  %166 = load i32, ptr %13, align 4, !dbg !3231
  %167 = lshr i32 %166, 4, !dbg !3231
  %168 = zext i32 %167 to i64, !dbg !3231
  %169 = getelementptr inbounds i32, ptr %165, i64 %168, !dbg !3231
  %170 = load i32, ptr %169, align 4, !dbg !3231
  %171 = load i32, ptr %13, align 4, !dbg !3231
  %172 = and i32 %171, 15, !dbg !3231
  %173 = shl i32 %172, 1, !dbg !3231
  %174 = lshr i32 %170, %173, !dbg !3231
  %175 = and i32 %174, 2, !dbg !3231
  %176 = icmp ne i32 %175, 0, !dbg !3231
  %177 = xor i1 %176, true, !dbg !3231
  br i1 %177, label %178, label %195, !dbg !3231

178:                                              ; preds = %164
  %179 = load i32, ptr %13, align 4, !dbg !3234
  %180 = load i32, ptr %11, align 4, !dbg !3234
  %181 = add i32 %179, %180, !dbg !3234
  %182 = load i32, ptr %4, align 4, !dbg !3234
  %183 = icmp uge i32 %181, %182, !dbg !3234
  br i1 %183, label %184, label %190, !dbg !3237

184:                                              ; preds = %178
  %185 = load i32, ptr %13, align 4, !dbg !3234
  %186 = load i32, ptr %11, align 4, !dbg !3234
  %187 = add i32 %185, %186, !dbg !3234
  %188 = load i32, ptr %4, align 4, !dbg !3234
  %189 = sub i32 %187, %188, !dbg !3234
  store i32 %189, ptr %13, align 4, !dbg !3234
  br label %194, !dbg !3234

190:                                              ; preds = %178
  %191 = load i32, ptr %11, align 4, !dbg !3234
  %192 = load i32, ptr %13, align 4, !dbg !3234
  %193 = add i32 %192, %191, !dbg !3234
  store i32 %193, ptr %13, align 4, !dbg !3234
  br label %194

194:                                              ; preds = %190, %184
  br label %164, !dbg !3231, !llvm.loop !3238

195:                                              ; preds = %164
  %196 = load i32, ptr %13, align 4, !dbg !3231
  %197 = and i32 %196, 15, !dbg !3231
  %198 = shl i32 %197, 1, !dbg !3231
  %199 = zext i32 %198 to i64, !dbg !3231
  %200 = shl i64 2, %199, !dbg !3231
  %201 = xor i64 %200, -1, !dbg !3231
  %202 = load ptr, ptr %5, align 8, !dbg !3231
  %203 = load i32, ptr %13, align 4, !dbg !3231
  %204 = lshr i32 %203, 4, !dbg !3231
  %205 = zext i32 %204 to i64, !dbg !3231
  %206 = getelementptr inbounds i32, ptr %202, i64 %205, !dbg !3231
  %207 = load i32, ptr %206, align 4, !dbg !3231
  %208 = zext i32 %207 to i64, !dbg !3231
  %209 = and i64 %208, %201, !dbg !3231
  %210 = trunc i64 %209 to i32, !dbg !3231
  store i32 %210, ptr %206, align 4, !dbg !3231
  %211 = load i32, ptr %13, align 4, !dbg !3239
  %212 = load ptr, ptr %3, align 8, !dbg !3239
  %213 = getelementptr inbounds %struct.kh_3_t, ptr %212, i32 0, i32 0, !dbg !3239
  %214 = load i32, ptr %213, align 8, !dbg !3239
  %215 = icmp ult i32 %211, %214, !dbg !3239
  br i1 %215, label %216, label %278, !dbg !3239

216:                                              ; preds = %195
  %217 = load ptr, ptr %3, align 8, !dbg !3239
  %218 = getelementptr inbounds %struct.kh_3_t, ptr %217, i32 0, i32 4, !dbg !3239
  %219 = load ptr, ptr %218, align 8, !dbg !3239
  %220 = load i32, ptr %13, align 4, !dbg !3239
  %221 = lshr i32 %220, 4, !dbg !3239
  %222 = zext i32 %221 to i64, !dbg !3239
  %223 = getelementptr inbounds i32, ptr %219, i64 %222, !dbg !3239
  %224 = load i32, ptr %223, align 4, !dbg !3239
  %225 = load i32, ptr %13, align 4, !dbg !3239
  %226 = and i32 %225, 15, !dbg !3239
  %227 = shl i32 %226, 1, !dbg !3239
  %228 = lshr i32 %224, %227, !dbg !3239
  %229 = and i32 %228, 3, !dbg !3239
  %230 = icmp eq i32 %229, 0, !dbg !3239
  br i1 %230, label %231, label %278, !dbg !3231

231:                                              ; preds = %216
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3241, metadata !DIExpression()), !dbg !3244
  %232 = load ptr, ptr %3, align 8, !dbg !3244
  %233 = getelementptr inbounds %struct.kh_3_t, ptr %232, i32 0, i32 6, !dbg !3244
  %234 = load ptr, ptr %233, align 8, !dbg !3244
  %235 = load i32, ptr %13, align 4, !dbg !3244
  %236 = zext i32 %235 to i64, !dbg !3244
  %237 = getelementptr inbounds i64, ptr %234, i64 %236, !dbg !3244
  %238 = load i64, ptr %237, align 8, !dbg !3244
  store i64 %238, ptr %14, align 8, !dbg !3244
  %239 = load i64, ptr %9, align 8, !dbg !3244
  %240 = load ptr, ptr %3, align 8, !dbg !3244
  %241 = getelementptr inbounds %struct.kh_3_t, ptr %240, i32 0, i32 6, !dbg !3244
  %242 = load ptr, ptr %241, align 8, !dbg !3244
  %243 = load i32, ptr %13, align 4, !dbg !3244
  %244 = zext i32 %243 to i64, !dbg !3244
  %245 = getelementptr inbounds i64, ptr %242, i64 %244, !dbg !3244
  store i64 %239, ptr %245, align 8, !dbg !3244
  %246 = load i64, ptr %14, align 8, !dbg !3244
  store i64 %246, ptr %9, align 8, !dbg !3244
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3245, metadata !DIExpression()), !dbg !3248
  %247 = load ptr, ptr %3, align 8, !dbg !3248
  %248 = getelementptr inbounds %struct.kh_3_t, ptr %247, i32 0, i32 8, !dbg !3248
  %249 = load ptr, ptr %248, align 8, !dbg !3248
  %250 = load i32, ptr %13, align 4, !dbg !3248
  %251 = zext i32 %250 to i64, !dbg !3248
  %252 = getelementptr inbounds i64, ptr %249, i64 %251, !dbg !3248
  %253 = load i64, ptr %252, align 8, !dbg !3248
  store i64 %253, ptr %15, align 8, !dbg !3248
  %254 = load i64, ptr %10, align 8, !dbg !3248
  %255 = load ptr, ptr %3, align 8, !dbg !3248
  %256 = getelementptr inbounds %struct.kh_3_t, ptr %255, i32 0, i32 8, !dbg !3248
  %257 = load ptr, ptr %256, align 8, !dbg !3248
  %258 = load i32, ptr %13, align 4, !dbg !3248
  %259 = zext i32 %258 to i64, !dbg !3248
  %260 = getelementptr inbounds i64, ptr %257, i64 %259, !dbg !3248
  store i64 %254, ptr %260, align 8, !dbg !3248
  %261 = load i64, ptr %15, align 8, !dbg !3248
  store i64 %261, ptr %10, align 8, !dbg !3248
  %262 = load i32, ptr %13, align 4, !dbg !3249
  %263 = and i32 %262, 15, !dbg !3249
  %264 = shl i32 %263, 1, !dbg !3249
  %265 = zext i32 %264 to i64, !dbg !3249
  %266 = shl i64 1, %265, !dbg !3249
  %267 = load ptr, ptr %3, align 8, !dbg !3249
  %268 = getelementptr inbounds %struct.kh_3_t, ptr %267, i32 0, i32 4, !dbg !3249
  %269 = load ptr, ptr %268, align 8, !dbg !3249
  %270 = load i32, ptr %13, align 4, !dbg !3249
  %271 = lshr i32 %270, 4, !dbg !3249
  %272 = zext i32 %271 to i64, !dbg !3249
  %273 = getelementptr inbounds i32, ptr %269, i64 %272, !dbg !3249
  %274 = load i32, ptr %273, align 4, !dbg !3249
  %275 = zext i32 %274 to i64, !dbg !3249
  %276 = or i64 %275, %266, !dbg !3249
  %277 = trunc i64 %276 to i32, !dbg !3249
  store i32 %277, ptr %273, align 4, !dbg !3249
  br label %293, !dbg !3249

278:                                              ; preds = %216, %195
  %279 = load i64, ptr %9, align 8, !dbg !3250
  %280 = load ptr, ptr %3, align 8, !dbg !3250
  %281 = getelementptr inbounds %struct.kh_3_t, ptr %280, i32 0, i32 6, !dbg !3250
  %282 = load ptr, ptr %281, align 8, !dbg !3250
  %283 = load i32, ptr %13, align 4, !dbg !3250
  %284 = zext i32 %283 to i64, !dbg !3250
  %285 = getelementptr inbounds i64, ptr %282, i64 %284, !dbg !3250
  store i64 %279, ptr %285, align 8, !dbg !3250
  %286 = load i64, ptr %10, align 8, !dbg !3252
  %287 = load ptr, ptr %3, align 8, !dbg !3252
  %288 = getelementptr inbounds %struct.kh_3_t, ptr %287, i32 0, i32 8, !dbg !3252
  %289 = load ptr, ptr %288, align 8, !dbg !3252
  %290 = load i32, ptr %13, align 4, !dbg !3252
  %291 = zext i32 %290 to i64, !dbg !3252
  %292 = getelementptr inbounds i64, ptr %289, i64 %291, !dbg !3252
  store i64 %286, ptr %292, align 8, !dbg !3252
  br label %294, !dbg !3250

293:                                              ; preds = %231
  br label %147, !dbg !3225, !llvm.loop !3254

294:                                              ; preds = %278
  br label %295, !dbg !3225

295:                                              ; preds = %294, %101
  br label %296, !dbg !3222

296:                                              ; preds = %295
  %297 = load i32, ptr %7, align 4, !dbg !3217
  %298 = add i32 %297, 1, !dbg !3217
  store i32 %298, ptr %7, align 4, !dbg !3217
  br label %95, !dbg !3217, !llvm.loop !3255

299:                                              ; preds = %95
  %300 = load ptr, ptr %3, align 8, !dbg !3256
  %301 = getelementptr inbounds %struct.kh_3_t, ptr %300, i32 0, i32 0, !dbg !3256
  %302 = load i32, ptr %301, align 8, !dbg !3256
  %303 = load i32, ptr %4, align 4, !dbg !3256
  %304 = icmp ugt i32 %302, %303, !dbg !3256
  br i1 %304, label %305, label %336, !dbg !3258

305:                                              ; preds = %299
  %306 = load ptr, ptr %3, align 8, !dbg !3259
  %307 = getelementptr inbounds %struct.kh_3_t, ptr %306, i32 0, i32 6, !dbg !3259
  %308 = load ptr, ptr %307, align 8, !dbg !3259
  %309 = load i32, ptr %4, align 4, !dbg !3259
  %310 = zext i32 %309 to i64, !dbg !3259
  %311 = mul i64 %310, 8, !dbg !3259
  %312 = call ptr @realloc(ptr noundef %308, i64 noundef %311) #11, !dbg !3259
  %313 = load ptr, ptr %3, align 8, !dbg !3259
  %314 = getelementptr inbounds %struct.kh_3_t, ptr %313, i32 0, i32 6, !dbg !3259
  store ptr %312, ptr %314, align 8, !dbg !3259
  %315 = load i32, ptr %4, align 4, !dbg !3259
  %316 = zext i32 %315 to i64, !dbg !3259
  %317 = mul i64 %316, 8, !dbg !3259
  %318 = trunc i64 %317 to i32, !dbg !3259
  %319 = load ptr, ptr %3, align 8, !dbg !3259
  %320 = getelementptr inbounds %struct.kh_3_t, ptr %319, i32 0, i32 7, !dbg !3259
  store i32 %318, ptr %320, align 8, !dbg !3259
  %321 = load ptr, ptr %3, align 8, !dbg !3261
  %322 = getelementptr inbounds %struct.kh_3_t, ptr %321, i32 0, i32 8, !dbg !3261
  %323 = load ptr, ptr %322, align 8, !dbg !3261
  %324 = load i32, ptr %4, align 4, !dbg !3261
  %325 = zext i32 %324 to i64, !dbg !3261
  %326 = mul i64 %325, 8, !dbg !3261
  %327 = call ptr @realloc(ptr noundef %323, i64 noundef %326) #11, !dbg !3261
  %328 = load ptr, ptr %3, align 8, !dbg !3261
  %329 = getelementptr inbounds %struct.kh_3_t, ptr %328, i32 0, i32 8, !dbg !3261
  store ptr %327, ptr %329, align 8, !dbg !3261
  %330 = load i32, ptr %4, align 4, !dbg !3261
  %331 = zext i32 %330 to i64, !dbg !3261
  %332 = mul i64 %331, 8, !dbg !3261
  %333 = trunc i64 %332 to i32, !dbg !3261
  %334 = load ptr, ptr %3, align 8, !dbg !3261
  %335 = getelementptr inbounds %struct.kh_3_t, ptr %334, i32 0, i32 9, !dbg !3261
  store i32 %333, ptr %335, align 8, !dbg !3261
  br label %336, !dbg !3259

336:                                              ; preds = %305, %299
  %337 = load ptr, ptr %3, align 8, !dbg !3258
  %338 = getelementptr inbounds %struct.kh_3_t, ptr %337, i32 0, i32 4, !dbg !3258
  %339 = load ptr, ptr %338, align 8, !dbg !3258
  call void @free(ptr noundef %339) #10, !dbg !3258
  %340 = load ptr, ptr %5, align 8, !dbg !3258
  %341 = load ptr, ptr %3, align 8, !dbg !3258
  %342 = getelementptr inbounds %struct.kh_3_t, ptr %341, i32 0, i32 4, !dbg !3258
  store ptr %340, ptr %342, align 8, !dbg !3258
  %343 = load i32, ptr %6, align 4, !dbg !3258
  %344 = load ptr, ptr %3, align 8, !dbg !3258
  %345 = getelementptr inbounds %struct.kh_3_t, ptr %344, i32 0, i32 5, !dbg !3258
  store i32 %343, ptr %345, align 8, !dbg !3258
  %346 = load i32, ptr %4, align 4, !dbg !3258
  %347 = load ptr, ptr %3, align 8, !dbg !3258
  %348 = getelementptr inbounds %struct.kh_3_t, ptr %347, i32 0, i32 0, !dbg !3258
  store i32 %346, ptr %348, align 8, !dbg !3258
  %349 = load ptr, ptr %3, align 8, !dbg !3258
  %350 = getelementptr inbounds %struct.kh_3_t, ptr %349, i32 0, i32 1, !dbg !3258
  %351 = load i32, ptr %350, align 4, !dbg !3258
  %352 = load ptr, ptr %3, align 8, !dbg !3258
  %353 = getelementptr inbounds %struct.kh_3_t, ptr %352, i32 0, i32 2, !dbg !3258
  store i32 %351, ptr %353, align 8, !dbg !3258
  %354 = load ptr, ptr %3, align 8, !dbg !3258
  %355 = getelementptr inbounds %struct.kh_3_t, ptr %354, i32 0, i32 0, !dbg !3258
  %356 = load i32, ptr %355, align 8, !dbg !3258
  %357 = uitofp i32 %356 to double, !dbg !3258
  %358 = call double @llvm.fmuladd.f64(double %357, double 7.700000e-01, double 5.000000e-01), !dbg !3258
  %359 = fptoui double %358 to i32, !dbg !3258
  %360 = load ptr, ptr %3, align 8, !dbg !3258
  %361 = getelementptr inbounds %struct.kh_3_t, ptr %360, i32 0, i32 3, !dbg !3258
  store i32 %359, ptr %361, align 4, !dbg !3258
  br label %362, !dbg !3258

362:                                              ; preds = %336, %91
  ret void, !dbg !3192
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

declare i32 @addr_eq(ptr noundef, ptr noundef) #4

declare void @addr_cpy(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_map_index(ptr noundef %0) #0 !dbg !3264 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3267, metadata !DIExpression()), !dbg !3268
  %3 = load ptr, ptr %2, align 8, !dbg !3269
  %4 = call i32 @string_hash(ptr noundef %3), !dbg !3270
  %5 = urem i32 %4, 1024, !dbg !3271
  ret i32 %5, !dbg !3272
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_hash(ptr noundef %0) #0 !dbg !3273 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3276, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3278, metadata !DIExpression()), !dbg !3279
  %6 = load ptr, ptr %2, align 8, !dbg !3280
  store ptr %6, ptr %3, align 8, !dbg !3279
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3281, metadata !DIExpression()), !dbg !3282
  store i32 0, ptr %4, align 4, !dbg !3282
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3283, metadata !DIExpression()), !dbg !3284
  store i32 0, ptr %5, align 4, !dbg !3284
  br label %7, !dbg !3285

7:                                                ; preds = %13, %1
  %8 = load ptr, ptr %3, align 8, !dbg !3286
  %9 = getelementptr inbounds i8, ptr %8, i32 1, !dbg !3286
  store ptr %9, ptr %3, align 8, !dbg !3286
  %10 = load i8, ptr %8, align 1, !dbg !3287
  %11 = zext i8 %10 to i32, !dbg !3287
  store i32 %11, ptr %5, align 4, !dbg !3288
  %12 = icmp ne i32 %11, 0, !dbg !3285
  br i1 %12, label %13, label %23, !dbg !3285

13:                                               ; preds = %7
  %14 = load i32, ptr %5, align 4, !dbg !3289
  %15 = load i32, ptr %4, align 4, !dbg !3290
  %16 = shl i32 %15, 6, !dbg !3291
  %17 = add i32 %14, %16, !dbg !3292
  %18 = load i32, ptr %4, align 4, !dbg !3293
  %19 = shl i32 %18, 16, !dbg !3294
  %20 = add i32 %17, %19, !dbg !3295
  %21 = load i32, ptr %4, align 4, !dbg !3296
  %22 = sub i32 %20, %21, !dbg !3297
  store i32 %22, ptr %4, align 4, !dbg !3298
  br label %7, !dbg !3285, !llvm.loop !3299

23:                                               ; preds = %7
  %24 = load i32, ptr %4, align 4, !dbg !3300
  ret i32 %24, !dbg !3301
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #8

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #8

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!50}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "khctest", scope: !2, file: !3, line: 168, type: !155, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "ur_map_free", scope: !3, file: !3, line: 165, type: !4, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3 = !DIFile(filename: "src/server/ns_turn_maps.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "21d1059eda3d90ac967fbe58b11325a1")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map", file: !9, line: 43, baseType: !10)
!9 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_map", file: !3, line: 41, size: 256, elements: !11)
!11 = !{!12, !41, !42}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !10, file: !3, line: 42, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_3_t", file: !3, line: 37, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 37, size: 512, elements: !16)
!16 = !{!17, !25, !26, !27, !28, !30, !31, !36, !37, !40}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !15, file: !3, line: 37, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !19, line: 90, baseType: !20)
!19 = !DIFile(filename: "src/server/ns_turn_khash.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "a1fe2c34cff273bbc5c3d3aec006978e")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !21, line: 26, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !23, line: 42, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !3, line: 37, baseType: !18, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !15, file: !3, line: 37, baseType: !18, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !15, file: !3, line: 37, baseType: !18, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !15, file: !3, line: 37, baseType: !29, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "flags_size", scope: !15, file: !3, line: 37, baseType: !20, size: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !15, file: !3, line: 37, baseType: !32, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !21, line: 27, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !23, line: 45, baseType: !35)
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "keys_size", scope: !15, file: !3, line: 37, baseType: !20, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !15, file: !3, line: 37, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_value_type", file: !9, line: 48, baseType: !35)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "vals_size", scope: !15, file: !3, line: 37, baseType: !20, size: 32, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !10, file: !3, line: 43, baseType: !33, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !10, file: !3, line: 44, baseType: !43, size: 128, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !44, line: 60, baseType: !45)
!44 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !44, line: 55, size: 128, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !45, file: !44, line: 56, baseType: !20, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !45, file: !44, line: 57, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = distinct !DICompileUnit(language: DW_LANG_C11, file: !51, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !52, globals: !167, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "/home/raj/coturn/src/server/ns_turn_maps.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "21d1059eda3d90ac967fbe58b11325a1")
!52 = !{!7, !33, !18, !53, !39, !54, !56, !58, !38, !59, !60, !61, !13, !20, !29, !32, !87, !155, !156, !157, !164}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_key_type", file: !9, line: 47, baseType: !33)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 46, baseType: !35)
!57 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !9, line: 227, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !3, line: 1025, size: 65792, elements: !64)
!64 = !{!65, !79, !80, !86}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !63, file: !3, line: 1026, baseType: !66, size: 65536)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 65536, elements: !77)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "string_list_header", file: !3, line: 957, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_string_list_header", file: !3, line: 955, size: 64, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !68, file: !3, line: 956, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "string_list", file: !3, line: 946, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_string_list", file: !3, line: 944, size: 64, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !73, file: !3, line: 945, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!77 = !{!78}
!78 = !DISubrange(count: 1024)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !63, file: !3, line: 1027, baseType: !33, size: 64, offset: 65536)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "del_value_func", scope: !63, file: !3, line: 1028, baseType: !81, size: 64, offset: 65600)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_func", file: !9, line: 229, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_value_type", file: !9, line: 225, baseType: !49)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !63, file: !3, line: 1029, baseType: !43, size: 128, offset: 65664)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_elem", file: !9, line: 169, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_elem", file: !9, line: 166, size: 320, elements: !90)
!90 = !{!91, !153}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !89, file: !9, line: 167, baseType: !92, size: 224)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !93, line: 48, baseType: !94)
!93 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !93, line: 44, size: 224, elements: !95)
!95 = !{!96, !109, !128}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !94, file: !93, line: 45, baseType: !97, size: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !98, line: 180, size: 128, elements: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!99 = !{!100, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !97, file: !98, line: 182, baseType: !101, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !102, line: 28, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!103 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !97, file: !98, line: 183, baseType: !105, size: 112, offset: 16)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 112, elements: !107)
!106 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!107 = !{!108}
!108 = !DISubrange(count: 14)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !94, file: !93, line: 46, baseType: !110, size: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !111, line: 245, size: 128, elements: !112)
!111 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!112 = !{!113, !114, !118, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !110, file: !111, line: 247, baseType: !101, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !110, file: !111, line: 248, baseType: !115, size: 16, offset: 16)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !111, line: 123, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !21, line: 25, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !23, line: 40, baseType: !103)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !110, file: !111, line: 249, baseType: !119, size: 32, offset: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !111, line: 31, size: 32, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !119, file: !111, line: 33, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !111, line: 30, baseType: !20)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !110, file: !111, line: 252, baseType: !124, size: 64, offset: 64)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !126)
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 8)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !94, file: !93, line: 47, baseType: !129, size: 224)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !111, line: 260, size: 224, elements: !130)
!130 = !{!131, !132, !133, !134, !152}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !129, file: !111, line: 262, baseType: !101, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !129, file: !111, line: 263, baseType: !115, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !129, file: !111, line: 264, baseType: !20, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !129, file: !111, line: 265, baseType: !135, size: 128, offset: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !111, line: 219, size: 128, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !135, file: !111, line: 226, baseType: !138, size: 128)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !135, file: !111, line: 221, size: 128, elements: !139)
!139 = !{!140, !146, !148}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !138, file: !111, line: 223, baseType: !141, size: 128)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !144)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !21, line: 24, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !23, line: 38, baseType: !125)
!144 = !{!145}
!145 = !DISubrange(count: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !138, file: !111, line: 224, baseType: !147, size: 128)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 128, elements: !126)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !138, file: !111, line: 225, baseType: !149, size: 128)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 4)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !129, file: !111, line: 266, baseType: !20, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !89, file: !9, line: 168, baseType: !154, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map_value_type", file: !9, line: 161, baseType: !35)
!155 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "string_elem", file: !3, line: 953, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_string_elem", file: !3, line: 948, size: 256, elements: !160)
!160 = !{!161, !162, !165, !166}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !159, file: !3, line: 949, baseType: !72, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !159, file: !3, line: 950, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_key_type", file: !9, line: 224, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !159, file: !3, line: 951, baseType: !20, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !159, file: !3, line: 952, baseType: !85, size: 64, offset: 192)
!167 = !{!0, !168, !172}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression(DW_OP_constu, 4605110762971426980, DW_OP_stack_value))
!169 = distinct !DIGlobalVariable(name: "__ac_HASH_UPPER", scope: !50, file: !19, line: 118, type: !170, isLocal: true, isDefinition: true)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__ac_prime_list", scope: !50, file: !19, line: 99, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 1024, elements: !176)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!176 = !{!177}
!177 = !DISubrange(count: 32)
!178 = !{}
!179 = !{i32 7, !"Dwarf Version", i32 5}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{i32 1, !"wchar_size", i32 4}
!182 = !{i32 8, !"PIC Level", i32 2}
!183 = !{i32 7, !"PIE Level", i32 2}
!184 = !{i32 7, !"uwtable", i32 2}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 16.0.0"}
!187 = distinct !DISubprogram(name: "ur_map_create", scope: !3, file: !3, line: 61, type: !188, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!188 = !DISubroutineType(types: !189)
!189 = !{!7}
!190 = !DILocalVariable(name: "map", scope: !187, file: !3, line: 62, type: !7)
!191 = !DILocation(line: 62, column: 11, scope: !187)
!192 = !DILocation(line: 62, column: 24, scope: !187)
!193 = !DILocation(line: 63, column: 18, scope: !194)
!194 = distinct !DILexicalBlock(scope: !187, file: !3, line: 63, column: 6)
!195 = !DILocation(line: 63, column: 6, scope: !194)
!196 = !DILocation(line: 63, column: 22, scope: !194)
!197 = !DILocation(line: 63, column: 6, scope: !187)
!198 = !DILocation(line: 64, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !3, line: 63, column: 26)
!200 = !DILocation(line: 64, column: 5, scope: !199)
!201 = !DILocation(line: 65, column: 5, scope: !199)
!202 = !DILocation(line: 67, column: 10, scope: !187)
!203 = !DILocation(line: 67, column: 3, scope: !187)
!204 = !DILocation(line: 68, column: 1, scope: !187)
!205 = distinct !DISubprogram(name: "ur_map_init", scope: !3, file: !3, line: 47, type: !206, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!206 = !DISubroutineType(types: !207)
!207 = !{!155, !7}
!208 = !DILocalVariable(name: "map", arg: 1, scope: !205, file: !3, line: 47, type: !7)
!209 = !DILocation(line: 47, column: 32, scope: !205)
!210 = !DILocation(line: 48, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !205, file: !3, line: 48, column: 6)
!212 = !DILocation(line: 48, column: 6, scope: !205)
!213 = !DILocation(line: 49, column: 12, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 48, column: 11)
!215 = !DILocation(line: 49, column: 5, scope: !214)
!216 = !DILocation(line: 49, column: 10, scope: !214)
!217 = !DILocation(line: 49, column: 11, scope: !214)
!218 = !DILocation(line: 50, column: 8, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 50, column: 8)
!220 = !DILocation(line: 50, column: 13, scope: !219)
!221 = !DILocation(line: 50, column: 8, scope: !214)
!222 = !DILocation(line: 51, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 50, column: 16)
!224 = !DILocation(line: 51, column: 12, scope: !223)
!225 = !DILocation(line: 51, column: 17, scope: !223)
!226 = !DILocation(line: 52, column: 7, scope: !223)
!227 = !DILocation(line: 53, column: 7, scope: !223)
!228 = !DILocation(line: 55, column: 3, scope: !214)
!229 = !DILocation(line: 56, column: 3, scope: !205)
!230 = !DILocation(line: 57, column: 1, scope: !205)
!231 = distinct !DISubprogram(name: "ur_map_put", scope: !3, file: !3, line: 75, type: !232, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!232 = !DISubroutineType(types: !233)
!233 = !{!155, !7, !53, !39}
!234 = !DILocalVariable(name: "map", arg: 1, scope: !231, file: !3, line: 75, type: !7)
!235 = !DILocation(line: 75, column: 24, scope: !231)
!236 = !DILocalVariable(name: "key", arg: 2, scope: !231, file: !3, line: 75, type: !53)
!237 = !DILocation(line: 75, column: 45, scope: !231)
!238 = !DILocalVariable(name: "value", arg: 3, scope: !231, file: !3, line: 75, type: !39)
!239 = !DILocation(line: 75, column: 68, scope: !231)
!240 = !DILocation(line: 76, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !231, file: !3, line: 76, column: 6)
!242 = !DILocation(line: 76, column: 6, scope: !231)
!243 = !DILocation(line: 76, column: 26, scope: !241)
!244 = !DILocalVariable(name: "ret", scope: !245, file: !3, line: 79, type: !155)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 77, column: 8)
!246 = !DILocation(line: 79, column: 9, scope: !245)
!247 = !DILocalVariable(name: "k", scope: !245, file: !3, line: 80, type: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "khiter_t", file: !19, line: 91, baseType: !18)
!249 = !DILocation(line: 80, column: 14, scope: !245)
!250 = !DILocation(line: 82, column: 9, scope: !245)
!251 = !DILocation(line: 82, column: 7, scope: !245)
!252 = !DILocation(line: 83, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 83, column: 8)
!254 = !DILocation(line: 83, column: 13, scope: !253)
!255 = !DILocation(line: 83, column: 10, scope: !253)
!256 = !DILocation(line: 83, column: 8, scope: !245)
!257 = !DILocation(line: 84, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 83, column: 29)
!259 = !DILocation(line: 85, column: 5, scope: !258)
!260 = !DILocation(line: 87, column: 9, scope: !245)
!261 = !DILocation(line: 87, column: 7, scope: !245)
!262 = !DILocation(line: 89, column: 10, scope: !263)
!263 = distinct !DILexicalBlock(scope: !245, file: !3, line: 89, column: 9)
!264 = !DILocation(line: 89, column: 9, scope: !245)
!265 = !DILocation(line: 90, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !3, line: 89, column: 15)
!267 = !DILocation(line: 91, column: 7, scope: !266)
!268 = !DILocation(line: 94, column: 27, scope: !245)
!269 = !DILocation(line: 94, column: 5, scope: !245)
!270 = !DILocation(line: 94, column: 25, scope: !245)
!271 = !DILocation(line: 96, column: 5, scope: !245)
!272 = !DILocation(line: 98, column: 1, scope: !231)
!273 = distinct !DISubprogram(name: "kh_get_3", scope: !3, file: !3, line: 37, type: !274, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!274 = !DISubroutineType(types: !275)
!275 = !{!18, !13, !33}
!276 = !DILocalVariable(name: "h", arg: 1, scope: !273, file: !3, line: 37, type: !13)
!277 = !DILocation(line: 37, column: 1, scope: !273)
!278 = !DILocalVariable(name: "key", arg: 2, scope: !273, file: !3, line: 37, type: !33)
!279 = !DILocation(line: 37, column: 1, scope: !280)
!280 = distinct !DILexicalBlock(scope: !273, file: !3, line: 37, column: 1)
!281 = !DILocalVariable(name: "inc", scope: !282, file: !3, line: 37, type: !18)
!282 = distinct !DILexicalBlock(scope: !280, file: !3, line: 37, column: 1)
!283 = !DILocation(line: 37, column: 1, scope: !282)
!284 = !DILocalVariable(name: "k", scope: !282, file: !3, line: 37, type: !18)
!285 = !DILocalVariable(name: "i", scope: !282, file: !3, line: 37, type: !18)
!286 = !DILocalVariable(name: "last", scope: !282, file: !3, line: 37, type: !18)
!287 = !DILocation(line: 0, scope: !282)
!288 = !DILocation(line: 37, column: 1, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 37, column: 1)
!290 = distinct !DILexicalBlock(scope: !282, file: !3, line: 37, column: 1)
!291 = !DILocation(line: 37, column: 1, scope: !290)
!292 = !DILocation(line: 37, column: 1, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !3, line: 37, column: 1)
!294 = distinct !{!294, !283, !283, !295}
!295 = !{!"llvm.loop.mustprogress"}
!296 = distinct !DISubprogram(name: "kh_del_3", scope: !3, file: !3, line: 37, type: !297, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !13, !18}
!299 = !DILocalVariable(name: "h", arg: 1, scope: !296, file: !3, line: 37, type: !13)
!300 = !DILocation(line: 37, column: 1, scope: !296)
!301 = !DILocalVariable(name: "x", arg: 2, scope: !296, file: !3, line: 37, type: !18)
!302 = !DILocation(line: 37, column: 1, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !3, line: 37, column: 1)
!304 = !DILocation(line: 37, column: 1, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !3, line: 37, column: 1)
!306 = distinct !DISubprogram(name: "kh_put_3", scope: !3, file: !3, line: 37, type: !307, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!307 = !DISubroutineType(types: !308)
!308 = !{!18, !13, !33, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!310 = !DILocalVariable(name: "h", arg: 1, scope: !306, file: !3, line: 37, type: !13)
!311 = !DILocation(line: 37, column: 1, scope: !306)
!312 = !DILocalVariable(name: "key", arg: 2, scope: !306, file: !3, line: 37, type: !33)
!313 = !DILocalVariable(name: "ret", arg: 3, scope: !306, file: !3, line: 37, type: !309)
!314 = !DILocalVariable(name: "x", scope: !306, file: !3, line: 37, type: !18)
!315 = !DILocation(line: 37, column: 1, scope: !316)
!316 = distinct !DILexicalBlock(scope: !306, file: !3, line: 37, column: 1)
!317 = !DILocation(line: 37, column: 1, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 37, column: 1)
!319 = distinct !DILexicalBlock(scope: !316, file: !3, line: 37, column: 1)
!320 = !DILocation(line: 37, column: 1, scope: !319)
!321 = !DILocalVariable(name: "inc", scope: !322, file: !3, line: 37, type: !18)
!322 = distinct !DILexicalBlock(scope: !306, file: !3, line: 37, column: 1)
!323 = !DILocation(line: 37, column: 1, scope: !322)
!324 = !DILocalVariable(name: "k", scope: !322, file: !3, line: 37, type: !18)
!325 = !DILocalVariable(name: "i", scope: !322, file: !3, line: 37, type: !18)
!326 = !DILocalVariable(name: "site", scope: !322, file: !3, line: 37, type: !18)
!327 = !DILocalVariable(name: "last", scope: !322, file: !3, line: 37, type: !18)
!328 = !DILocation(line: 37, column: 1, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !3, line: 37, column: 1)
!330 = !DILocation(line: 37, column: 1, scope: !331)
!331 = distinct !DILexicalBlock(scope: !329, file: !3, line: 37, column: 1)
!332 = !DILocation(line: 0, scope: !331)
!333 = !DILocation(line: 37, column: 1, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 37, column: 1)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 37, column: 1)
!336 = !DILocation(line: 37, column: 1, scope: !335)
!337 = !DILocation(line: 37, column: 1, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 37, column: 1)
!339 = !DILocation(line: 37, column: 1, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !3, line: 37, column: 1)
!341 = !DILocation(line: 37, column: 1, scope: !342)
!342 = distinct !DILexicalBlock(scope: !340, file: !3, line: 37, column: 1)
!343 = distinct !{!343, !330, !330, !295}
!344 = !DILocation(line: 37, column: 1, scope: !345)
!345 = distinct !DILexicalBlock(scope: !331, file: !3, line: 37, column: 1)
!346 = !DILocation(line: 37, column: 1, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 37, column: 1)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 37, column: 1)
!349 = !DILocation(line: 37, column: 1, scope: !348)
!350 = !DILocation(line: 37, column: 1, scope: !351)
!351 = distinct !DILexicalBlock(scope: !306, file: !3, line: 37, column: 1)
!352 = !DILocation(line: 37, column: 1, scope: !353)
!353 = distinct !DILexicalBlock(scope: !351, file: !3, line: 37, column: 1)
!354 = !DILocation(line: 37, column: 1, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !3, line: 37, column: 1)
!356 = !DILocation(line: 37, column: 1, scope: !357)
!357 = distinct !DILexicalBlock(scope: !355, file: !3, line: 37, column: 1)
!358 = distinct !DISubprogram(name: "ur_map_get", scope: !3, file: !3, line: 105, type: !359, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!359 = !DISubroutineType(types: !360)
!360 = !{!155, !361, !53, !38}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!363 = !DILocalVariable(name: "map", arg: 1, scope: !358, file: !3, line: 105, type: !361)
!364 = !DILocation(line: 105, column: 30, scope: !358)
!365 = !DILocalVariable(name: "key", arg: 2, scope: !358, file: !3, line: 105, type: !53)
!366 = !DILocation(line: 105, column: 51, scope: !358)
!367 = !DILocalVariable(name: "value", arg: 3, scope: !358, file: !3, line: 105, type: !38)
!368 = !DILocation(line: 105, column: 75, scope: !358)
!369 = !DILocation(line: 106, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !358, file: !3, line: 106, column: 6)
!371 = !DILocation(line: 106, column: 6, scope: !358)
!372 = !DILocation(line: 106, column: 26, scope: !370)
!373 = !DILocalVariable(name: "k", scope: !374, file: !3, line: 109, type: !248)
!374 = distinct !DILexicalBlock(scope: !370, file: !3, line: 107, column: 8)
!375 = !DILocation(line: 109, column: 14, scope: !374)
!376 = !DILocation(line: 111, column: 9, scope: !374)
!377 = !DILocation(line: 111, column: 7, scope: !374)
!378 = !DILocation(line: 112, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !3, line: 112, column: 8)
!380 = !DILocation(line: 112, column: 14, scope: !379)
!381 = !DILocation(line: 112, column: 11, scope: !379)
!382 = !DILocation(line: 112, column: 30, scope: !379)
!383 = !DILocation(line: 112, column: 33, scope: !379)
!384 = !DILocation(line: 112, column: 8, scope: !374)
!385 = !DILocation(line: 113, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 113, column: 10)
!387 = distinct !DILexicalBlock(scope: !379, file: !3, line: 112, column: 53)
!388 = !DILocation(line: 113, column: 10, scope: !387)
!389 = !DILocation(line: 113, column: 24, scope: !386)
!390 = !DILocation(line: 113, column: 18, scope: !386)
!391 = !DILocation(line: 113, column: 23, scope: !386)
!392 = !DILocation(line: 113, column: 17, scope: !386)
!393 = !DILocation(line: 114, column: 7, scope: !387)
!394 = !DILocation(line: 117, column: 5, scope: !374)
!395 = !DILocation(line: 119, column: 1, scope: !358)
!396 = distinct !DISubprogram(name: "ur_map_del", scope: !3, file: !3, line: 126, type: !397, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!397 = !DISubroutineType(types: !398)
!398 = !{!155, !7, !53, !399}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_del_func", file: !9, line: 50, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !39}
!403 = !DILocalVariable(name: "map", arg: 1, scope: !396, file: !3, line: 126, type: !7)
!404 = !DILocation(line: 126, column: 24, scope: !396)
!405 = !DILocalVariable(name: "key", arg: 2, scope: !396, file: !3, line: 126, type: !53)
!406 = !DILocation(line: 126, column: 45, scope: !396)
!407 = !DILocalVariable(name: "delfunc", arg: 3, scope: !396, file: !3, line: 126, type: !399)
!408 = !DILocation(line: 126, column: 65, scope: !396)
!409 = !DILocation(line: 127, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !396, file: !3, line: 127, column: 6)
!411 = !DILocation(line: 127, column: 6, scope: !396)
!412 = !DILocation(line: 127, column: 26, scope: !410)
!413 = !DILocalVariable(name: "k", scope: !414, file: !3, line: 130, type: !248)
!414 = distinct !DILexicalBlock(scope: !410, file: !3, line: 128, column: 8)
!415 = !DILocation(line: 130, column: 14, scope: !414)
!416 = !DILocation(line: 132, column: 9, scope: !414)
!417 = !DILocation(line: 132, column: 7, scope: !414)
!418 = !DILocation(line: 133, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !414, file: !3, line: 133, column: 8)
!420 = !DILocation(line: 133, column: 14, scope: !419)
!421 = !DILocation(line: 133, column: 11, scope: !419)
!422 = !DILocation(line: 133, column: 30, scope: !419)
!423 = !DILocation(line: 133, column: 33, scope: !419)
!424 = !DILocation(line: 133, column: 8, scope: !414)
!425 = !DILocation(line: 134, column: 10, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 134, column: 10)
!427 = distinct !DILexicalBlock(scope: !419, file: !3, line: 133, column: 53)
!428 = !DILocation(line: 134, column: 10, scope: !427)
!429 = !DILocation(line: 135, column: 2, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 134, column: 19)
!431 = !DILocation(line: 135, column: 10, scope: !430)
!432 = !DILocation(line: 136, column: 7, scope: !430)
!433 = !DILocation(line: 137, column: 7, scope: !427)
!434 = !DILocation(line: 138, column: 7, scope: !427)
!435 = !DILocation(line: 141, column: 5, scope: !414)
!436 = !DILocation(line: 143, column: 1, scope: !396)
!437 = distinct !DISubprogram(name: "ur_map_exist", scope: !3, file: !3, line: 150, type: !438, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!438 = !DISubroutineType(types: !439)
!439 = !{!155, !361, !53}
!440 = !DILocalVariable(name: "map", arg: 1, scope: !437, file: !3, line: 150, type: !361)
!441 = !DILocation(line: 150, column: 32, scope: !437)
!442 = !DILocalVariable(name: "key", arg: 2, scope: !437, file: !3, line: 150, type: !53)
!443 = !DILocation(line: 150, column: 53, scope: !437)
!444 = !DILocation(line: 151, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 151, column: 6)
!446 = !DILocation(line: 151, column: 6, scope: !437)
!447 = !DILocation(line: 151, column: 26, scope: !445)
!448 = !DILocalVariable(name: "k", scope: !449, file: !3, line: 154, type: !248)
!449 = distinct !DILexicalBlock(scope: !445, file: !3, line: 152, column: 8)
!450 = !DILocation(line: 154, column: 14, scope: !449)
!451 = !DILocation(line: 156, column: 9, scope: !449)
!452 = !DILocation(line: 156, column: 7, scope: !449)
!453 = !DILocation(line: 157, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !3, line: 157, column: 8)
!455 = !DILocation(line: 157, column: 14, scope: !454)
!456 = !DILocation(line: 157, column: 11, scope: !454)
!457 = !DILocation(line: 157, column: 30, scope: !454)
!458 = !DILocation(line: 157, column: 33, scope: !454)
!459 = !DILocation(line: 157, column: 8, scope: !449)
!460 = !DILocation(line: 158, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !454, file: !3, line: 157, column: 53)
!462 = !DILocation(line: 161, column: 5, scope: !449)
!463 = !DILocation(line: 163, column: 1, scope: !437)
!464 = !DILocalVariable(name: "map", arg: 1, scope: !2, file: !3, line: 165, type: !6)
!465 = !DILocation(line: 165, column: 27, scope: !2)
!466 = !DILocation(line: 166, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !2, file: !3, line: 166, column: 6)
!468 = !DILocation(line: 166, column: 10, scope: !467)
!469 = !DILocation(line: 166, column: 13, scope: !467)
!470 = !DILocation(line: 166, column: 6, scope: !2)
!471 = !DILocation(line: 169, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 169, column: 8)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 167, column: 4)
!474 = distinct !DILexicalBlock(scope: !467, file: !3, line: 166, column: 33)
!475 = !DILocation(line: 169, column: 8, scope: !473)
!476 = !DILocation(line: 170, column: 6, scope: !472)
!477 = !DILocation(line: 172, column: 5, scope: !474)
!478 = !DILocation(line: 173, column: 7, scope: !474)
!479 = !DILocation(line: 173, column: 6, scope: !474)
!480 = !DILocation(line: 173, column: 13, scope: !474)
!481 = !DILocation(line: 173, column: 14, scope: !474)
!482 = !DILocation(line: 174, column: 7, scope: !474)
!483 = !DILocation(line: 174, column: 6, scope: !474)
!484 = !DILocation(line: 174, column: 13, scope: !474)
!485 = !DILocation(line: 174, column: 18, scope: !474)
!486 = !DILocation(line: 175, column: 5, scope: !474)
!487 = !DILocation(line: 176, column: 11, scope: !474)
!488 = !DILocation(line: 176, column: 10, scope: !474)
!489 = !DILocation(line: 176, column: 5, scope: !474)
!490 = !DILocation(line: 177, column: 6, scope: !474)
!491 = !DILocation(line: 177, column: 9, scope: !474)
!492 = !DILocation(line: 178, column: 3, scope: !474)
!493 = !DILocation(line: 179, column: 1, scope: !2)
!494 = distinct !DISubprogram(name: "kh_clear_3", scope: !3, file: !3, line: 37, type: !495, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !13}
!497 = !DILocalVariable(name: "h", arg: 1, scope: !494, file: !3, line: 37, type: !13)
!498 = !DILocation(line: 37, column: 1, scope: !494)
!499 = !DILocation(line: 37, column: 1, scope: !500)
!500 = distinct !DILexicalBlock(scope: !494, file: !3, line: 37, column: 1)
!501 = !DILocation(line: 37, column: 1, scope: !502)
!502 = distinct !DILexicalBlock(scope: !500, file: !3, line: 37, column: 1)
!503 = distinct !DISubprogram(name: "kh_destroy_3", scope: !3, file: !3, line: 37, type: !495, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!504 = !DILocalVariable(name: "h", arg: 1, scope: !503, file: !3, line: 37, type: !13)
!505 = !DILocation(line: 37, column: 1, scope: !503)
!506 = !DILocation(line: 37, column: 1, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !3, line: 37, column: 1)
!508 = !DILocation(line: 37, column: 1, scope: !509)
!509 = distinct !DILexicalBlock(scope: !507, file: !3, line: 37, column: 1)
!510 = distinct !DISubprogram(name: "ur_map_size", scope: !3, file: !3, line: 181, type: !511, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!511 = !DISubroutineType(types: !512)
!512 = !{!56, !361}
!513 = !DILocalVariable(name: "map", arg: 1, scope: !510, file: !3, line: 181, type: !361)
!514 = !DILocation(line: 181, column: 34, scope: !510)
!515 = !DILocation(line: 182, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 182, column: 6)
!517 = !DILocation(line: 182, column: 6, scope: !510)
!518 = !DILocation(line: 183, column: 12, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 182, column: 25)
!520 = !DILocation(line: 183, column: 5, scope: !519)
!521 = !DILocation(line: 185, column: 5, scope: !522)
!522 = distinct !DILexicalBlock(scope: !516, file: !3, line: 184, column: 10)
!523 = !DILocation(line: 187, column: 1, scope: !510)
!524 = distinct !DISubprogram(name: "ur_map_foreach", scope: !3, file: !3, line: 189, type: !525, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!525 = !DISubroutineType(types: !526)
!526 = !{!155, !7, !527}
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "foreachcb_type", file: !9, line: 52, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!155, !53, !39}
!531 = !DILocalVariable(name: "map", arg: 1, scope: !524, file: !3, line: 189, type: !7)
!532 = !DILocation(line: 189, column: 28, scope: !524)
!533 = !DILocalVariable(name: "func", arg: 2, scope: !524, file: !3, line: 189, type: !527)
!534 = !DILocation(line: 189, column: 48, scope: !524)
!535 = !DILocation(line: 190, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !524, file: !3, line: 190, column: 6)
!537 = !DILocation(line: 190, column: 10, scope: !536)
!538 = !DILocation(line: 190, column: 13, scope: !536)
!539 = !DILocation(line: 190, column: 18, scope: !536)
!540 = !DILocation(line: 190, column: 21, scope: !536)
!541 = !DILocation(line: 190, column: 6, scope: !524)
!542 = !DILocalVariable(name: "k", scope: !543, file: !3, line: 191, type: !248)
!543 = distinct !DILexicalBlock(scope: !536, file: !3, line: 190, column: 40)
!544 = !DILocation(line: 191, column: 14, scope: !543)
!545 = !DILocation(line: 192, column: 12, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !3, line: 192, column: 5)
!547 = !DILocation(line: 192, column: 10, scope: !546)
!548 = !DILocation(line: 192, column: 35, scope: !549)
!549 = distinct !DILexicalBlock(scope: !546, file: !3, line: 192, column: 5)
!550 = !DILocation(line: 192, column: 40, scope: !549)
!551 = !DILocation(line: 192, column: 37, scope: !549)
!552 = !DILocation(line: 192, column: 5, scope: !546)
!553 = !DILocation(line: 193, column: 11, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 193, column: 11)
!555 = distinct !DILexicalBlock(scope: !549, file: !3, line: 192, column: 61)
!556 = !DILocation(line: 193, column: 11, scope: !555)
!557 = !DILocation(line: 194, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 194, column: 5)
!559 = distinct !DILexicalBlock(scope: !554, file: !3, line: 193, column: 32)
!560 = !DILocation(line: 194, column: 28, scope: !558)
!561 = !DILocation(line: 195, column: 23, scope: !558)
!562 = !DILocation(line: 194, column: 5, scope: !559)
!563 = !DILocation(line: 196, column: 4, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !3, line: 195, column: 46)
!565 = !DILocation(line: 198, column: 7, scope: !559)
!566 = !DILocation(line: 199, column: 5, scope: !555)
!567 = !DILocation(line: 192, column: 56, scope: !549)
!568 = !DILocation(line: 192, column: 5, scope: !549)
!569 = distinct !{!569, !552, !570, !295}
!570 = !DILocation(line: 199, column: 5, scope: !546)
!571 = !DILocation(line: 200, column: 3, scope: !543)
!572 = !DILocation(line: 201, column: 3, scope: !524)
!573 = !DILocation(line: 202, column: 1, scope: !524)
!574 = distinct !DISubprogram(name: "ur_map_foreach_arg", scope: !3, file: !3, line: 204, type: !575, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!575 = !DISubroutineType(types: !576)
!576 = !{!155, !7, !577, !49}
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "foreachcb_arg_type", file: !9, line: 53, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!155, !53, !39, !49}
!581 = !DILocalVariable(name: "map", arg: 1, scope: !574, file: !3, line: 204, type: !7)
!582 = !DILocation(line: 204, column: 32, scope: !574)
!583 = !DILocalVariable(name: "func", arg: 2, scope: !574, file: !3, line: 204, type: !577)
!584 = !DILocation(line: 204, column: 56, scope: !574)
!585 = !DILocalVariable(name: "arg", arg: 3, scope: !574, file: !3, line: 204, type: !49)
!586 = !DILocation(line: 204, column: 68, scope: !574)
!587 = !DILocation(line: 205, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !574, file: !3, line: 205, column: 6)
!589 = !DILocation(line: 205, column: 10, scope: !588)
!590 = !DILocation(line: 205, column: 13, scope: !588)
!591 = !DILocation(line: 205, column: 18, scope: !588)
!592 = !DILocation(line: 205, column: 21, scope: !588)
!593 = !DILocation(line: 205, column: 6, scope: !574)
!594 = !DILocalVariable(name: "k", scope: !595, file: !3, line: 206, type: !248)
!595 = distinct !DILexicalBlock(scope: !588, file: !3, line: 205, column: 40)
!596 = !DILocation(line: 206, column: 14, scope: !595)
!597 = !DILocation(line: 207, column: 12, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !3, line: 207, column: 5)
!599 = !DILocation(line: 207, column: 10, scope: !598)
!600 = !DILocation(line: 207, column: 35, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !3, line: 207, column: 5)
!602 = !DILocation(line: 207, column: 40, scope: !601)
!603 = !DILocation(line: 207, column: 37, scope: !601)
!604 = !DILocation(line: 207, column: 5, scope: !598)
!605 = !DILocation(line: 208, column: 11, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 208, column: 11)
!607 = distinct !DILexicalBlock(scope: !601, file: !3, line: 207, column: 61)
!608 = !DILocation(line: 208, column: 11, scope: !607)
!609 = !DILocation(line: 209, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 209, column: 5)
!611 = distinct !DILexicalBlock(scope: !606, file: !3, line: 208, column: 32)
!612 = !DILocation(line: 209, column: 28, scope: !610)
!613 = !DILocation(line: 210, column: 23, scope: !610)
!614 = !DILocation(line: 211, column: 3, scope: !610)
!615 = !DILocation(line: 209, column: 5, scope: !611)
!616 = !DILocation(line: 213, column: 4, scope: !617)
!617 = distinct !DILexicalBlock(scope: !610, file: !3, line: 212, column: 7)
!618 = !DILocation(line: 215, column: 7, scope: !611)
!619 = !DILocation(line: 216, column: 5, scope: !607)
!620 = !DILocation(line: 207, column: 56, scope: !601)
!621 = !DILocation(line: 207, column: 5, scope: !601)
!622 = distinct !{!622, !604, !623, !295}
!623 = !DILocation(line: 216, column: 5, scope: !598)
!624 = !DILocation(line: 217, column: 3, scope: !595)
!625 = !DILocation(line: 218, column: 3, scope: !574)
!626 = !DILocation(line: 219, column: 1, scope: !574)
!627 = distinct !DISubprogram(name: "ur_map_lock", scope: !3, file: !3, line: 221, type: !628, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!628 = !DISubroutineType(types: !629)
!629 = !{!155, !361}
!630 = !DILocalVariable(name: "map", arg: 1, scope: !627, file: !3, line: 221, type: !361)
!631 = !DILocation(line: 221, column: 31, scope: !627)
!632 = !DILocation(line: 222, column: 6, scope: !633)
!633 = distinct !DILexicalBlock(scope: !627, file: !3, line: 222, column: 6)
!634 = !DILocation(line: 222, column: 6, scope: !627)
!635 = !DILocation(line: 223, column: 5, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !3, line: 222, column: 25)
!637 = !DILocation(line: 224, column: 5, scope: !636)
!638 = !DILocation(line: 226, column: 3, scope: !627)
!639 = !DILocation(line: 227, column: 1, scope: !627)
!640 = distinct !DISubprogram(name: "ur_map_unlock", scope: !3, file: !3, line: 229, type: !628, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!641 = !DILocalVariable(name: "map", arg: 1, scope: !640, file: !3, line: 229, type: !361)
!642 = !DILocation(line: 229, column: 33, scope: !640)
!643 = !DILocation(line: 230, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !3, line: 230, column: 6)
!645 = !DILocation(line: 230, column: 6, scope: !640)
!646 = !DILocation(line: 231, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !3, line: 230, column: 25)
!648 = !DILocation(line: 232, column: 5, scope: !647)
!649 = !DILocation(line: 234, column: 3, scope: !640)
!650 = !DILocation(line: 235, column: 1, scope: !640)
!651 = distinct !DISubprogram(name: "lm_map_init", scope: !3, file: !3, line: 239, type: !652, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map", file: !9, line: 117, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map", file: !9, line: 115, size: 4608, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !656, file: !9, line: 116, baseType: !659, size: 4608)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 4608, elements: !126)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map_array", file: !9, line: 113, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map_array", file: !9, line: 107, size: 576, elements: !662)
!662 = !{!663, !667, !669, !670, !671}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "main_keys", scope: !661, file: !9, line: 108, baseType: !664, size: 192)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 3)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "main_values", scope: !661, file: !9, line: 109, baseType: !668, size: 192, offset: 192)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !665)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !661, file: !9, line: 110, baseType: !56, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "extra_keys", scope: !661, file: !9, line: 111, baseType: !59, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !661, file: !9, line: 112, baseType: !60, size: 64, offset: 512)
!672 = !DILocalVariable(name: "map", arg: 1, scope: !651, file: !3, line: 239, type: !654)
!673 = !DILocation(line: 239, column: 26, scope: !651)
!674 = !DILocation(line: 241, column: 5, scope: !675)
!675 = distinct !DILexicalBlock(scope: !651, file: !3, line: 241, column: 5)
!676 = !DILocation(line: 241, column: 5, scope: !651)
!677 = !DILocation(line: 242, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !3, line: 241, column: 10)
!679 = !DILocation(line: 242, column: 3, scope: !678)
!680 = !DILocation(line: 243, column: 2, scope: !678)
!681 = !DILocation(line: 244, column: 1, scope: !651)
!682 = distinct !DISubprogram(name: "lm_map_put", scope: !3, file: !3, line: 252, type: !683, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!683 = !DISubroutineType(types: !684)
!684 = !{!155, !654, !53, !39}
!685 = !DILocalVariable(name: "map", arg: 1, scope: !682, file: !3, line: 252, type: !654)
!686 = !DILocation(line: 252, column: 24, scope: !682)
!687 = !DILocalVariable(name: "key", arg: 2, scope: !682, file: !3, line: 252, type: !53)
!688 = !DILocation(line: 252, column: 45, scope: !682)
!689 = !DILocalVariable(name: "value", arg: 3, scope: !682, file: !3, line: 252, type: !39)
!690 = !DILocation(line: 252, column: 68, scope: !682)
!691 = !DILocalVariable(name: "ret", scope: !682, file: !3, line: 254, type: !155)
!692 = !DILocation(line: 254, column: 6, scope: !682)
!693 = !DILocation(line: 255, column: 5, scope: !694)
!694 = distinct !DILexicalBlock(scope: !682, file: !3, line: 255, column: 5)
!695 = !DILocation(line: 255, column: 9, scope: !694)
!696 = !DILocation(line: 255, column: 12, scope: !694)
!697 = !DILocation(line: 255, column: 16, scope: !694)
!698 = !DILocation(line: 255, column: 19, scope: !694)
!699 = !DILocation(line: 255, column: 5, scope: !682)
!700 = !DILocalVariable(name: "index", scope: !701, file: !3, line: 257, type: !56)
!701 = distinct !DILexicalBlock(scope: !694, file: !3, line: 255, column: 26)
!702 = !DILocation(line: 257, column: 10, scope: !701)
!703 = !DILocation(line: 257, column: 27, scope: !701)
!704 = !DILocation(line: 257, column: 31, scope: !701)
!705 = !DILocalVariable(name: "a", scope: !701, file: !3, line: 258, type: !706)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!707 = !DILocation(line: 258, column: 17, scope: !701)
!708 = !DILocation(line: 258, column: 23, scope: !701)
!709 = !DILocation(line: 258, column: 28, scope: !701)
!710 = !DILocation(line: 258, column: 34, scope: !701)
!711 = !DILocalVariable(name: "i", scope: !701, file: !3, line: 260, type: !56)
!712 = !DILocation(line: 260, column: 10, scope: !701)
!713 = !DILocation(line: 262, column: 8, scope: !714)
!714 = distinct !DILexicalBlock(scope: !701, file: !3, line: 262, column: 3)
!715 = !DILocation(line: 262, column: 7, scope: !714)
!716 = !DILocation(line: 262, column: 11, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !3, line: 262, column: 3)
!718 = !DILocation(line: 262, column: 12, scope: !717)
!719 = !DILocation(line: 262, column: 3, scope: !714)
!720 = !DILocalVariable(name: "key0", scope: !721, file: !3, line: 264, type: !53)
!721 = distinct !DILexicalBlock(scope: !717, file: !3, line: 262, column: 36)
!722 = !DILocation(line: 264, column: 20, scope: !721)
!723 = !DILocation(line: 264, column: 27, scope: !721)
!724 = !DILocation(line: 264, column: 30, scope: !721)
!725 = !DILocation(line: 264, column: 40, scope: !721)
!726 = !DILocalVariable(name: "value0", scope: !721, file: !3, line: 265, type: !39)
!727 = !DILocation(line: 265, column: 22, scope: !721)
!728 = !DILocation(line: 265, column: 31, scope: !721)
!729 = !DILocation(line: 265, column: 34, scope: !721)
!730 = !DILocation(line: 265, column: 46, scope: !721)
!731 = !DILocation(line: 267, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !721, file: !3, line: 267, column: 7)
!733 = !DILocation(line: 267, column: 15, scope: !732)
!734 = !DILocation(line: 267, column: 12, scope: !732)
!735 = !DILocation(line: 267, column: 7, scope: !721)
!736 = !DILocation(line: 268, column: 8, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 268, column: 8)
!738 = distinct !DILexicalBlock(scope: !732, file: !3, line: 267, column: 20)
!739 = !DILocation(line: 268, column: 18, scope: !737)
!740 = !DILocation(line: 268, column: 15, scope: !737)
!741 = !DILocation(line: 268, column: 8, scope: !738)
!742 = !DILocation(line: 269, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !3, line: 268, column: 25)
!744 = !DILocation(line: 271, column: 6, scope: !745)
!745 = distinct !DILexicalBlock(scope: !737, file: !3, line: 270, column: 12)
!746 = !DILocation(line: 275, column: 8, scope: !747)
!747 = distinct !DILexicalBlock(scope: !721, file: !3, line: 275, column: 7)
!748 = !DILocation(line: 275, column: 13, scope: !747)
!749 = !DILocation(line: 275, column: 17, scope: !747)
!750 = !DILocation(line: 275, column: 7, scope: !721)
!751 = !DILocation(line: 276, column: 23, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !3, line: 275, column: 25)
!753 = !DILocation(line: 276, column: 5, scope: !752)
!754 = !DILocation(line: 276, column: 8, scope: !752)
!755 = !DILocation(line: 276, column: 18, scope: !752)
!756 = !DILocation(line: 276, column: 21, scope: !752)
!757 = !DILocation(line: 277, column: 25, scope: !752)
!758 = !DILocation(line: 277, column: 5, scope: !752)
!759 = !DILocation(line: 277, column: 8, scope: !752)
!760 = !DILocation(line: 277, column: 20, scope: !752)
!761 = !DILocation(line: 277, column: 23, scope: !752)
!762 = !DILocation(line: 278, column: 5, scope: !752)
!763 = !DILocation(line: 280, column: 3, scope: !721)
!764 = !DILocation(line: 262, column: 31, scope: !717)
!765 = !DILocation(line: 262, column: 3, scope: !717)
!766 = distinct !{!766, !719, !767, !295}
!767 = !DILocation(line: 280, column: 3, scope: !714)
!768 = !DILocalVariable(name: "esz", scope: !701, file: !3, line: 282, type: !56)
!769 = !DILocation(line: 282, column: 10, scope: !701)
!770 = !DILocation(line: 282, column: 16, scope: !701)
!771 = !DILocation(line: 282, column: 19, scope: !701)
!772 = !DILocation(line: 283, column: 6, scope: !773)
!773 = distinct !DILexicalBlock(scope: !701, file: !3, line: 283, column: 6)
!774 = !DILocation(line: 283, column: 10, scope: !773)
!775 = !DILocation(line: 283, column: 13, scope: !773)
!776 = !DILocation(line: 283, column: 16, scope: !773)
!777 = !DILocation(line: 283, column: 27, scope: !773)
!778 = !DILocation(line: 283, column: 30, scope: !773)
!779 = !DILocation(line: 283, column: 33, scope: !773)
!780 = !DILocation(line: 283, column: 6, scope: !701)
!781 = !DILocation(line: 284, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 284, column: 4)
!783 = distinct !DILexicalBlock(scope: !773, file: !3, line: 283, column: 47)
!784 = !DILocation(line: 284, column: 8, scope: !782)
!785 = !DILocation(line: 284, column: 12, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !3, line: 284, column: 4)
!787 = !DILocation(line: 284, column: 14, scope: !786)
!788 = !DILocation(line: 284, column: 13, scope: !786)
!789 = !DILocation(line: 284, column: 4, scope: !782)
!790 = !DILocalVariable(name: "keyp", scope: !791, file: !3, line: 285, type: !58)
!791 = distinct !DILexicalBlock(scope: !786, file: !3, line: 284, column: 23)
!792 = !DILocation(line: 285, column: 22, scope: !791)
!793 = !DILocation(line: 285, column: 29, scope: !791)
!794 = !DILocation(line: 285, column: 32, scope: !791)
!795 = !DILocation(line: 285, column: 43, scope: !791)
!796 = !DILocalVariable(name: "valuep", scope: !791, file: !3, line: 286, type: !38)
!797 = !DILocation(line: 286, column: 24, scope: !791)
!798 = !DILocation(line: 286, column: 33, scope: !791)
!799 = !DILocation(line: 286, column: 36, scope: !791)
!800 = !DILocation(line: 286, column: 49, scope: !791)
!801 = !DILocation(line: 287, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !791, file: !3, line: 287, column: 8)
!803 = !DILocation(line: 287, column: 13, scope: !802)
!804 = !DILocation(line: 287, column: 16, scope: !802)
!805 = !DILocation(line: 287, column: 8, scope: !791)
!806 = !DILocation(line: 288, column: 12, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 288, column: 9)
!808 = distinct !DILexicalBlock(scope: !802, file: !3, line: 287, column: 24)
!809 = !DILocation(line: 288, column: 11, scope: !807)
!810 = !DILocation(line: 288, column: 10, scope: !807)
!811 = !DILocation(line: 288, column: 18, scope: !807)
!812 = !DILocation(line: 288, column: 24, scope: !807)
!813 = !DILocation(line: 288, column: 23, scope: !807)
!814 = !DILocation(line: 288, column: 22, scope: !807)
!815 = !DILocation(line: 288, column: 9, scope: !808)
!816 = !DILocation(line: 289, column: 15, scope: !817)
!817 = distinct !DILexicalBlock(scope: !807, file: !3, line: 288, column: 33)
!818 = !DILocation(line: 289, column: 8, scope: !817)
!819 = !DILocation(line: 289, column: 13, scope: !817)
!820 = !DILocation(line: 290, column: 17, scope: !817)
!821 = !DILocation(line: 290, column: 8, scope: !817)
!822 = !DILocation(line: 290, column: 15, scope: !817)
!823 = !DILocation(line: 291, column: 7, scope: !817)
!824 = !DILocation(line: 293, column: 5, scope: !808)
!825 = !DILocation(line: 294, column: 12, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 294, column: 9)
!827 = distinct !DILexicalBlock(scope: !802, file: !3, line: 293, column: 12)
!828 = !DILocation(line: 294, column: 11, scope: !826)
!829 = !DILocation(line: 294, column: 10, scope: !826)
!830 = !DILocation(line: 294, column: 9, scope: !827)
!831 = !DILocation(line: 295, column: 44, scope: !832)
!832 = distinct !DILexicalBlock(scope: !826, file: !3, line: 294, column: 19)
!833 = !DILocation(line: 295, column: 7, scope: !832)
!834 = !DILocation(line: 295, column: 10, scope: !832)
!835 = !DILocation(line: 295, column: 21, scope: !832)
!836 = !DILocation(line: 295, column: 24, scope: !832)
!837 = !DILocation(line: 296, column: 14, scope: !832)
!838 = !DILocation(line: 296, column: 17, scope: !832)
!839 = !DILocation(line: 296, column: 28, scope: !832)
!840 = !DILocation(line: 296, column: 12, scope: !832)
!841 = !DILocation(line: 297, column: 6, scope: !832)
!842 = !DILocation(line: 298, column: 12, scope: !843)
!843 = distinct !DILexicalBlock(scope: !827, file: !3, line: 298, column: 9)
!844 = !DILocation(line: 298, column: 11, scope: !843)
!845 = !DILocation(line: 298, column: 10, scope: !843)
!846 = !DILocation(line: 298, column: 9, scope: !827)
!847 = !DILocation(line: 299, column: 48, scope: !848)
!848 = distinct !DILexicalBlock(scope: !843, file: !3, line: 298, column: 21)
!849 = !DILocation(line: 299, column: 7, scope: !848)
!850 = !DILocation(line: 299, column: 10, scope: !848)
!851 = !DILocation(line: 299, column: 23, scope: !848)
!852 = !DILocation(line: 299, column: 26, scope: !848)
!853 = !DILocation(line: 300, column: 16, scope: !848)
!854 = !DILocation(line: 300, column: 19, scope: !848)
!855 = !DILocation(line: 300, column: 32, scope: !848)
!856 = !DILocation(line: 300, column: 14, scope: !848)
!857 = !DILocation(line: 301, column: 6, scope: !848)
!858 = !DILocation(line: 302, column: 14, scope: !827)
!859 = !DILocation(line: 302, column: 7, scope: !827)
!860 = !DILocation(line: 302, column: 12, scope: !827)
!861 = !DILocation(line: 303, column: 16, scope: !827)
!862 = !DILocation(line: 303, column: 7, scope: !827)
!863 = !DILocation(line: 303, column: 14, scope: !827)
!864 = !DILocation(line: 304, column: 6, scope: !827)
!865 = !DILocation(line: 306, column: 4, scope: !791)
!866 = !DILocation(line: 284, column: 18, scope: !786)
!867 = !DILocation(line: 284, column: 4, scope: !786)
!868 = distinct !{!868, !789, !869, !295}
!869 = !DILocation(line: 306, column: 4, scope: !782)
!870 = !DILocation(line: 307, column: 3, scope: !783)
!871 = !DILocalVariable(name: "old_sz", scope: !701, file: !3, line: 309, type: !56)
!872 = !DILocation(line: 309, column: 10, scope: !701)
!873 = !DILocation(line: 309, column: 19, scope: !701)
!874 = !DILocalVariable(name: "old_sz_mem", scope: !701, file: !3, line: 310, type: !56)
!875 = !DILocation(line: 310, column: 10, scope: !701)
!876 = !DILocation(line: 310, column: 23, scope: !701)
!877 = !DILocation(line: 310, column: 27, scope: !701)
!878 = !DILocation(line: 311, column: 46, scope: !701)
!879 = !DILocation(line: 311, column: 49, scope: !701)
!880 = !DILocation(line: 311, column: 60, scope: !701)
!881 = !DILocation(line: 311, column: 71, scope: !701)
!882 = !DILocation(line: 311, column: 38, scope: !701)
!883 = !DILocation(line: 311, column: 3, scope: !701)
!884 = !DILocation(line: 311, column: 6, scope: !701)
!885 = !DILocation(line: 311, column: 17, scope: !701)
!886 = !DILocation(line: 312, column: 45, scope: !701)
!887 = !DILocation(line: 312, column: 3, scope: !701)
!888 = !DILocation(line: 312, column: 6, scope: !701)
!889 = !DILocation(line: 312, column: 17, scope: !701)
!890 = !DILocation(line: 312, column: 25, scope: !701)
!891 = !DILocation(line: 313, column: 30, scope: !701)
!892 = !DILocation(line: 313, column: 5, scope: !701)
!893 = !DILocation(line: 313, column: 8, scope: !701)
!894 = !DILocation(line: 313, column: 19, scope: !701)
!895 = !DILocation(line: 313, column: 28, scope: !701)
!896 = !DILocation(line: 315, column: 16, scope: !701)
!897 = !DILocation(line: 315, column: 20, scope: !701)
!898 = !DILocation(line: 315, column: 14, scope: !701)
!899 = !DILocation(line: 316, column: 50, scope: !701)
!900 = !DILocation(line: 316, column: 53, scope: !701)
!901 = !DILocation(line: 316, column: 66, scope: !701)
!902 = !DILocation(line: 316, column: 77, scope: !701)
!903 = !DILocation(line: 316, column: 42, scope: !701)
!904 = !DILocation(line: 316, column: 3, scope: !701)
!905 = !DILocation(line: 316, column: 6, scope: !701)
!906 = !DILocation(line: 316, column: 19, scope: !701)
!907 = !DILocation(line: 317, column: 49, scope: !701)
!908 = !DILocation(line: 317, column: 3, scope: !701)
!909 = !DILocation(line: 317, column: 6, scope: !701)
!910 = !DILocation(line: 317, column: 19, scope: !701)
!911 = !DILocation(line: 317, column: 27, scope: !701)
!912 = !DILocation(line: 318, column: 32, scope: !701)
!913 = !DILocation(line: 318, column: 5, scope: !701)
!914 = !DILocation(line: 318, column: 8, scope: !701)
!915 = !DILocation(line: 318, column: 21, scope: !701)
!916 = !DILocation(line: 318, column: 30, scope: !701)
!917 = !DILocation(line: 320, column: 3, scope: !701)
!918 = !DILocation(line: 320, column: 6, scope: !701)
!919 = !DILocation(line: 320, column: 15, scope: !701)
!920 = !DILocation(line: 322, column: 3, scope: !701)
!921 = !DILocation(line: 324, column: 9, scope: !682)
!922 = !DILocation(line: 324, column: 2, scope: !682)
!923 = !DILocation(line: 325, column: 1, scope: !682)
!924 = distinct !DISubprogram(name: "lm_map_get", scope: !3, file: !3, line: 333, type: !925, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!925 = !DISubroutineType(types: !926)
!926 = !{!155, !927, !53, !38}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!929 = !DILocalVariable(name: "map", arg: 1, scope: !924, file: !3, line: 333, type: !927)
!930 = !DILocation(line: 333, column: 30, scope: !924)
!931 = !DILocalVariable(name: "key", arg: 2, scope: !924, file: !3, line: 333, type: !53)
!932 = !DILocation(line: 333, column: 51, scope: !924)
!933 = !DILocalVariable(name: "value", arg: 3, scope: !924, file: !3, line: 333, type: !38)
!934 = !DILocation(line: 333, column: 75, scope: !924)
!935 = !DILocalVariable(name: "ret", scope: !924, file: !3, line: 335, type: !155)
!936 = !DILocation(line: 335, column: 6, scope: !924)
!937 = !DILocation(line: 336, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !924, file: !3, line: 336, column: 5)
!939 = !DILocation(line: 336, column: 9, scope: !938)
!940 = !DILocation(line: 336, column: 12, scope: !938)
!941 = !DILocation(line: 336, column: 5, scope: !924)
!942 = !DILocalVariable(name: "index", scope: !943, file: !3, line: 337, type: !56)
!943 = distinct !DILexicalBlock(scope: !938, file: !3, line: 336, column: 17)
!944 = !DILocation(line: 337, column: 10, scope: !943)
!945 = !DILocation(line: 337, column: 27, scope: !943)
!946 = !DILocation(line: 337, column: 31, scope: !943)
!947 = !DILocalVariable(name: "a", scope: !943, file: !3, line: 338, type: !948)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!950 = !DILocation(line: 338, column: 23, scope: !943)
!951 = !DILocation(line: 338, column: 29, scope: !943)
!952 = !DILocation(line: 338, column: 34, scope: !943)
!953 = !DILocation(line: 338, column: 40, scope: !943)
!954 = !DILocalVariable(name: "i", scope: !943, file: !3, line: 340, type: !56)
!955 = !DILocation(line: 340, column: 10, scope: !943)
!956 = !DILocation(line: 342, column: 8, scope: !957)
!957 = distinct !DILexicalBlock(scope: !943, file: !3, line: 342, column: 3)
!958 = !DILocation(line: 342, column: 7, scope: !957)
!959 = !DILocation(line: 342, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !3, line: 342, column: 3)
!961 = !DILocation(line: 342, column: 12, scope: !960)
!962 = !DILocation(line: 342, column: 3, scope: !957)
!963 = !DILocalVariable(name: "key0", scope: !964, file: !3, line: 344, type: !53)
!964 = distinct !DILexicalBlock(scope: !960, file: !3, line: 342, column: 36)
!965 = !DILocation(line: 344, column: 20, scope: !964)
!966 = !DILocation(line: 344, column: 27, scope: !964)
!967 = !DILocation(line: 344, column: 30, scope: !964)
!968 = !DILocation(line: 344, column: 40, scope: !964)
!969 = !DILocation(line: 345, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !964, file: !3, line: 345, column: 7)
!971 = !DILocation(line: 345, column: 16, scope: !970)
!972 = !DILocation(line: 345, column: 13, scope: !970)
!973 = !DILocation(line: 345, column: 21, scope: !970)
!974 = !DILocation(line: 345, column: 24, scope: !970)
!975 = !DILocation(line: 345, column: 27, scope: !970)
!976 = !DILocation(line: 345, column: 39, scope: !970)
!977 = !DILocation(line: 345, column: 7, scope: !964)
!978 = !DILocation(line: 346, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 346, column: 8)
!980 = distinct !DILexicalBlock(scope: !970, file: !3, line: 345, column: 43)
!981 = !DILocation(line: 346, column: 8, scope: !980)
!982 = !DILocation(line: 347, column: 15, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !3, line: 346, column: 15)
!984 = !DILocation(line: 347, column: 18, scope: !983)
!985 = !DILocation(line: 347, column: 30, scope: !983)
!986 = !DILocation(line: 347, column: 7, scope: !983)
!987 = !DILocation(line: 347, column: 13, scope: !983)
!988 = !DILocation(line: 348, column: 5, scope: !983)
!989 = !DILocation(line: 349, column: 5, scope: !980)
!990 = !DILocation(line: 351, column: 3, scope: !964)
!991 = !DILocation(line: 342, column: 31, scope: !960)
!992 = !DILocation(line: 342, column: 3, scope: !960)
!993 = distinct !{!993, !962, !994, !295}
!994 = !DILocation(line: 351, column: 3, scope: !957)
!995 = !DILocalVariable(name: "esz", scope: !943, file: !3, line: 353, type: !56)
!996 = !DILocation(line: 353, column: 10, scope: !943)
!997 = !DILocation(line: 353, column: 16, scope: !943)
!998 = !DILocation(line: 353, column: 19, scope: !943)
!999 = !DILocation(line: 354, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !943, file: !3, line: 354, column: 6)
!1001 = !DILocation(line: 354, column: 10, scope: !1000)
!1002 = !DILocation(line: 354, column: 13, scope: !1000)
!1003 = !DILocation(line: 354, column: 16, scope: !1000)
!1004 = !DILocation(line: 354, column: 27, scope: !1000)
!1005 = !DILocation(line: 354, column: 30, scope: !1000)
!1006 = !DILocation(line: 354, column: 33, scope: !1000)
!1007 = !DILocation(line: 354, column: 6, scope: !943)
!1008 = !DILocation(line: 355, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 355, column: 4)
!1010 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 354, column: 47)
!1011 = !DILocation(line: 355, column: 8, scope: !1009)
!1012 = !DILocation(line: 355, column: 12, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 355, column: 4)
!1014 = !DILocation(line: 355, column: 14, scope: !1013)
!1015 = !DILocation(line: 355, column: 13, scope: !1013)
!1016 = !DILocation(line: 355, column: 4, scope: !1009)
!1017 = !DILocalVariable(name: "keyp", scope: !1018, file: !3, line: 356, type: !58)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 355, column: 23)
!1019 = !DILocation(line: 356, column: 22, scope: !1018)
!1020 = !DILocation(line: 356, column: 29, scope: !1018)
!1021 = !DILocation(line: 356, column: 32, scope: !1018)
!1022 = !DILocation(line: 356, column: 43, scope: !1018)
!1023 = !DILocalVariable(name: "valuep", scope: !1018, file: !3, line: 357, type: !38)
!1024 = !DILocation(line: 357, column: 24, scope: !1018)
!1025 = !DILocation(line: 357, column: 33, scope: !1018)
!1026 = !DILocation(line: 357, column: 36, scope: !1018)
!1027 = !DILocation(line: 357, column: 49, scope: !1018)
!1028 = !DILocation(line: 358, column: 8, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 358, column: 8)
!1030 = !DILocation(line: 358, column: 13, scope: !1029)
!1031 = !DILocation(line: 358, column: 16, scope: !1029)
!1032 = !DILocation(line: 358, column: 8, scope: !1018)
!1033 = !DILocation(line: 359, column: 10, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 359, column: 9)
!1035 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 358, column: 24)
!1036 = !DILocation(line: 359, column: 9, scope: !1034)
!1037 = !DILocation(line: 359, column: 18, scope: !1034)
!1038 = !DILocation(line: 359, column: 15, scope: !1034)
!1039 = !DILocation(line: 359, column: 9, scope: !1035)
!1040 = !DILocation(line: 360, column: 10, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 360, column: 10)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 359, column: 23)
!1043 = !DILocation(line: 360, column: 10, scope: !1042)
!1044 = !DILocation(line: 361, column: 18, scope: !1041)
!1045 = !DILocation(line: 361, column: 17, scope: !1041)
!1046 = !DILocation(line: 361, column: 9, scope: !1041)
!1047 = !DILocation(line: 361, column: 15, scope: !1041)
!1048 = !DILocation(line: 361, column: 8, scope: !1041)
!1049 = !DILocation(line: 362, column: 7, scope: !1042)
!1050 = !DILocation(line: 364, column: 5, scope: !1035)
!1051 = !DILocation(line: 365, column: 4, scope: !1018)
!1052 = !DILocation(line: 355, column: 18, scope: !1013)
!1053 = !DILocation(line: 355, column: 4, scope: !1013)
!1054 = distinct !{!1054, !1016, !1055, !295}
!1055 = !DILocation(line: 365, column: 4, scope: !1009)
!1056 = !DILocation(line: 366, column: 3, scope: !1010)
!1057 = !DILocation(line: 367, column: 2, scope: !943)
!1058 = !DILocation(line: 369, column: 9, scope: !924)
!1059 = !DILocation(line: 369, column: 2, scope: !924)
!1060 = !DILocation(line: 370, column: 1, scope: !924)
!1061 = distinct !DISubprogram(name: "lm_map_del", scope: !3, file: !3, line: 377, type: !1062, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!155, !654, !53, !399}
!1064 = !DILocalVariable(name: "map", arg: 1, scope: !1061, file: !3, line: 377, type: !654)
!1065 = !DILocation(line: 377, column: 24, scope: !1061)
!1066 = !DILocalVariable(name: "key", arg: 2, scope: !1061, file: !3, line: 377, type: !53)
!1067 = !DILocation(line: 377, column: 45, scope: !1061)
!1068 = !DILocalVariable(name: "delfunc", arg: 3, scope: !1061, file: !3, line: 377, type: !399)
!1069 = !DILocation(line: 377, column: 65, scope: !1061)
!1070 = !DILocalVariable(name: "ret", scope: !1061, file: !3, line: 379, type: !155)
!1071 = !DILocation(line: 379, column: 6, scope: !1061)
!1072 = !DILocation(line: 381, column: 5, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 381, column: 5)
!1074 = !DILocation(line: 381, column: 9, scope: !1073)
!1075 = !DILocation(line: 381, column: 12, scope: !1073)
!1076 = !DILocation(line: 381, column: 5, scope: !1061)
!1077 = !DILocalVariable(name: "index", scope: !1078, file: !3, line: 382, type: !56)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 381, column: 17)
!1079 = !DILocation(line: 382, column: 10, scope: !1078)
!1080 = !DILocation(line: 382, column: 27, scope: !1078)
!1081 = !DILocation(line: 382, column: 31, scope: !1078)
!1082 = !DILocalVariable(name: "a", scope: !1078, file: !3, line: 383, type: !706)
!1083 = !DILocation(line: 383, column: 17, scope: !1078)
!1084 = !DILocation(line: 383, column: 23, scope: !1078)
!1085 = !DILocation(line: 383, column: 28, scope: !1078)
!1086 = !DILocation(line: 383, column: 34, scope: !1078)
!1087 = !DILocalVariable(name: "i", scope: !1078, file: !3, line: 385, type: !56)
!1088 = !DILocation(line: 385, column: 10, scope: !1078)
!1089 = !DILocation(line: 387, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 387, column: 3)
!1091 = !DILocation(line: 387, column: 7, scope: !1090)
!1092 = !DILocation(line: 387, column: 11, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 387, column: 3)
!1094 = !DILocation(line: 387, column: 12, scope: !1093)
!1095 = !DILocation(line: 387, column: 3, scope: !1090)
!1096 = !DILocalVariable(name: "key0", scope: !1097, file: !3, line: 389, type: !53)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 387, column: 36)
!1098 = !DILocation(line: 389, column: 20, scope: !1097)
!1099 = !DILocation(line: 389, column: 27, scope: !1097)
!1100 = !DILocation(line: 389, column: 30, scope: !1097)
!1101 = !DILocation(line: 389, column: 40, scope: !1097)
!1102 = !DILocation(line: 391, column: 8, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 391, column: 7)
!1104 = !DILocation(line: 391, column: 16, scope: !1103)
!1105 = !DILocation(line: 391, column: 13, scope: !1103)
!1106 = !DILocation(line: 391, column: 21, scope: !1103)
!1107 = !DILocation(line: 391, column: 24, scope: !1103)
!1108 = !DILocation(line: 391, column: 27, scope: !1103)
!1109 = !DILocation(line: 391, column: 39, scope: !1103)
!1110 = !DILocation(line: 391, column: 7, scope: !1097)
!1111 = !DILocation(line: 392, column: 8, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 392, column: 8)
!1113 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 391, column: 43)
!1114 = !DILocation(line: 392, column: 8, scope: !1113)
!1115 = !DILocation(line: 393, column: 6, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 392, column: 17)
!1117 = !DILocation(line: 393, column: 14, scope: !1116)
!1118 = !DILocation(line: 393, column: 17, scope: !1116)
!1119 = !DILocation(line: 393, column: 29, scope: !1116)
!1120 = !DILocation(line: 394, column: 5, scope: !1116)
!1121 = !DILocation(line: 395, column: 5, scope: !1113)
!1122 = !DILocation(line: 395, column: 8, scope: !1113)
!1123 = !DILocation(line: 395, column: 18, scope: !1113)
!1124 = !DILocation(line: 395, column: 21, scope: !1113)
!1125 = !DILocation(line: 396, column: 5, scope: !1113)
!1126 = !DILocation(line: 396, column: 8, scope: !1113)
!1127 = !DILocation(line: 396, column: 20, scope: !1113)
!1128 = !DILocation(line: 396, column: 23, scope: !1113)
!1129 = !DILocation(line: 397, column: 5, scope: !1113)
!1130 = !DILocation(line: 399, column: 3, scope: !1097)
!1131 = !DILocation(line: 387, column: 31, scope: !1093)
!1132 = !DILocation(line: 387, column: 3, scope: !1093)
!1133 = distinct !{!1133, !1095, !1134, !295}
!1134 = !DILocation(line: 399, column: 3, scope: !1090)
!1135 = !DILocalVariable(name: "esz", scope: !1078, file: !3, line: 401, type: !56)
!1136 = !DILocation(line: 401, column: 10, scope: !1078)
!1137 = !DILocation(line: 401, column: 16, scope: !1078)
!1138 = !DILocation(line: 401, column: 19, scope: !1078)
!1139 = !DILocation(line: 402, column: 6, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 402, column: 6)
!1141 = !DILocation(line: 402, column: 10, scope: !1140)
!1142 = !DILocation(line: 402, column: 13, scope: !1140)
!1143 = !DILocation(line: 402, column: 16, scope: !1140)
!1144 = !DILocation(line: 402, column: 27, scope: !1140)
!1145 = !DILocation(line: 402, column: 30, scope: !1140)
!1146 = !DILocation(line: 402, column: 33, scope: !1140)
!1147 = !DILocation(line: 402, column: 6, scope: !1078)
!1148 = !DILocation(line: 403, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 403, column: 4)
!1150 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 402, column: 47)
!1151 = !DILocation(line: 403, column: 8, scope: !1149)
!1152 = !DILocation(line: 403, column: 12, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 403, column: 4)
!1154 = !DILocation(line: 403, column: 14, scope: !1153)
!1155 = !DILocation(line: 403, column: 13, scope: !1153)
!1156 = !DILocation(line: 403, column: 4, scope: !1149)
!1157 = !DILocalVariable(name: "keyp", scope: !1158, file: !3, line: 404, type: !58)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 403, column: 23)
!1159 = !DILocation(line: 404, column: 22, scope: !1158)
!1160 = !DILocation(line: 404, column: 29, scope: !1158)
!1161 = !DILocation(line: 404, column: 32, scope: !1158)
!1162 = !DILocation(line: 404, column: 43, scope: !1158)
!1163 = !DILocalVariable(name: "valuep", scope: !1158, file: !3, line: 405, type: !38)
!1164 = !DILocation(line: 405, column: 24, scope: !1158)
!1165 = !DILocation(line: 405, column: 33, scope: !1158)
!1166 = !DILocation(line: 405, column: 36, scope: !1158)
!1167 = !DILocation(line: 405, column: 49, scope: !1158)
!1168 = !DILocation(line: 406, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 406, column: 8)
!1170 = !DILocation(line: 406, column: 13, scope: !1169)
!1171 = !DILocation(line: 406, column: 16, scope: !1169)
!1172 = !DILocation(line: 406, column: 8, scope: !1158)
!1173 = !DILocation(line: 407, column: 10, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 407, column: 9)
!1175 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 406, column: 24)
!1176 = !DILocation(line: 407, column: 9, scope: !1174)
!1177 = !DILocation(line: 407, column: 18, scope: !1174)
!1178 = !DILocation(line: 407, column: 15, scope: !1174)
!1179 = !DILocation(line: 407, column: 9, scope: !1175)
!1180 = !DILocation(line: 408, column: 10, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 408, column: 10)
!1182 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 407, column: 23)
!1183 = !DILocation(line: 408, column: 10, scope: !1182)
!1184 = !DILocation(line: 409, column: 8, scope: !1181)
!1185 = !DILocation(line: 409, column: 17, scope: !1181)
!1186 = !DILocation(line: 409, column: 16, scope: !1181)
!1187 = !DILocation(line: 410, column: 8, scope: !1182)
!1188 = !DILocation(line: 410, column: 13, scope: !1182)
!1189 = !DILocation(line: 411, column: 8, scope: !1182)
!1190 = !DILocation(line: 411, column: 15, scope: !1182)
!1191 = !DILocation(line: 412, column: 7, scope: !1182)
!1192 = !DILocation(line: 414, column: 5, scope: !1175)
!1193 = !DILocation(line: 415, column: 4, scope: !1158)
!1194 = !DILocation(line: 403, column: 18, scope: !1153)
!1195 = !DILocation(line: 403, column: 4, scope: !1153)
!1196 = distinct !{!1196, !1156, !1197, !295}
!1197 = !DILocation(line: 415, column: 4, scope: !1149)
!1198 = !DILocation(line: 416, column: 3, scope: !1150)
!1199 = !DILocation(line: 417, column: 2, scope: !1078)
!1200 = !DILocation(line: 419, column: 9, scope: !1061)
!1201 = !DILocation(line: 419, column: 2, scope: !1061)
!1202 = !DILocation(line: 420, column: 1, scope: !1061)
!1203 = distinct !DISubprogram(name: "lm_map_exist", scope: !3, file: !3, line: 427, type: !1204, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!155, !927, !53}
!1206 = !DILocalVariable(name: "map", arg: 1, scope: !1203, file: !3, line: 427, type: !927)
!1207 = !DILocation(line: 427, column: 32, scope: !1203)
!1208 = !DILocalVariable(name: "key", arg: 2, scope: !1203, file: !3, line: 427, type: !53)
!1209 = !DILocation(line: 427, column: 53, scope: !1203)
!1210 = !DILocation(line: 429, column: 20, scope: !1203)
!1211 = !DILocation(line: 429, column: 25, scope: !1203)
!1212 = !DILocation(line: 429, column: 9, scope: !1203)
!1213 = !DILocation(line: 429, column: 2, scope: !1203)
!1214 = distinct !DISubprogram(name: "lm_map_clean", scope: !3, file: !3, line: 432, type: !652, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1215 = !DILocalVariable(name: "map", arg: 1, scope: !1214, file: !3, line: 432, type: !654)
!1216 = !DILocation(line: 432, column: 27, scope: !1214)
!1217 = !DILocalVariable(name: "j", scope: !1214, file: !3, line: 434, type: !56)
!1218 = !DILocation(line: 434, column: 9, scope: !1214)
!1219 = !DILocation(line: 435, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 435, column: 2)
!1221 = !DILocation(line: 435, column: 6, scope: !1220)
!1222 = !DILocation(line: 435, column: 10, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 435, column: 2)
!1224 = !DILocation(line: 435, column: 11, scope: !1223)
!1225 = !DILocation(line: 435, column: 2, scope: !1220)
!1226 = !DILocalVariable(name: "a", scope: !1227, file: !3, line: 437, type: !706)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 435, column: 34)
!1228 = !DILocation(line: 437, column: 17, scope: !1227)
!1229 = !DILocation(line: 437, column: 23, scope: !1227)
!1230 = !DILocation(line: 437, column: 28, scope: !1227)
!1231 = !DILocation(line: 437, column: 34, scope: !1227)
!1232 = !DILocalVariable(name: "esz", scope: !1227, file: !3, line: 439, type: !56)
!1233 = !DILocation(line: 439, column: 10, scope: !1227)
!1234 = !DILocation(line: 439, column: 16, scope: !1227)
!1235 = !DILocation(line: 439, column: 19, scope: !1227)
!1236 = !DILocation(line: 440, column: 6, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 440, column: 6)
!1238 = !DILocation(line: 440, column: 6, scope: !1227)
!1239 = !DILocalVariable(name: "i", scope: !1240, file: !3, line: 441, type: !56)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 440, column: 11)
!1241 = !DILocation(line: 441, column: 11, scope: !1240)
!1242 = !DILocation(line: 442, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 442, column: 7)
!1244 = !DILocation(line: 442, column: 10, scope: !1243)
!1245 = !DILocation(line: 442, column: 7, scope: !1240)
!1246 = !DILocation(line: 443, column: 10, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 443, column: 5)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 442, column: 22)
!1249 = !DILocation(line: 443, column: 9, scope: !1247)
!1250 = !DILocation(line: 443, column: 13, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 443, column: 5)
!1252 = !DILocation(line: 443, column: 15, scope: !1251)
!1253 = !DILocation(line: 443, column: 14, scope: !1251)
!1254 = !DILocation(line: 443, column: 5, scope: !1247)
!1255 = !DILocalVariable(name: "keyp", scope: !1256, file: !3, line: 444, type: !58)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 443, column: 24)
!1257 = !DILocation(line: 444, column: 23, scope: !1256)
!1258 = !DILocation(line: 444, column: 30, scope: !1256)
!1259 = !DILocation(line: 444, column: 33, scope: !1256)
!1260 = !DILocation(line: 444, column: 44, scope: !1256)
!1261 = !DILocation(line: 445, column: 9, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 445, column: 9)
!1263 = !DILocation(line: 445, column: 9, scope: !1256)
!1264 = !DILocation(line: 446, column: 8, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 445, column: 15)
!1266 = !DILocation(line: 446, column: 13, scope: !1265)
!1267 = !DILocation(line: 447, column: 12, scope: !1265)
!1268 = !DILocation(line: 447, column: 7, scope: !1265)
!1269 = !DILocation(line: 448, column: 6, scope: !1265)
!1270 = !DILocation(line: 449, column: 5, scope: !1256)
!1271 = !DILocation(line: 443, column: 19, scope: !1251)
!1272 = !DILocation(line: 443, column: 5, scope: !1251)
!1273 = distinct !{!1273, !1254, !1274, !295}
!1274 = !DILocation(line: 449, column: 5, scope: !1247)
!1275 = !DILocation(line: 450, column: 10, scope: !1248)
!1276 = !DILocation(line: 450, column: 13, scope: !1248)
!1277 = !DILocation(line: 450, column: 5, scope: !1248)
!1278 = !DILocation(line: 451, column: 5, scope: !1248)
!1279 = !DILocation(line: 451, column: 8, scope: !1248)
!1280 = !DILocation(line: 451, column: 19, scope: !1248)
!1281 = !DILocation(line: 452, column: 4, scope: !1248)
!1282 = !DILocation(line: 453, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 453, column: 7)
!1284 = !DILocation(line: 453, column: 10, scope: !1283)
!1285 = !DILocation(line: 453, column: 7, scope: !1240)
!1286 = !DILocation(line: 454, column: 10, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 454, column: 5)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 453, column: 24)
!1289 = !DILocation(line: 454, column: 9, scope: !1287)
!1290 = !DILocation(line: 454, column: 13, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 454, column: 5)
!1292 = !DILocation(line: 454, column: 15, scope: !1291)
!1293 = !DILocation(line: 454, column: 14, scope: !1291)
!1294 = !DILocation(line: 454, column: 5, scope: !1287)
!1295 = !DILocalVariable(name: "valuep", scope: !1296, file: !3, line: 455, type: !38)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 454, column: 24)
!1297 = !DILocation(line: 455, column: 25, scope: !1296)
!1298 = !DILocation(line: 455, column: 34, scope: !1296)
!1299 = !DILocation(line: 455, column: 37, scope: !1296)
!1300 = !DILocation(line: 455, column: 50, scope: !1296)
!1301 = !DILocation(line: 456, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 456, column: 9)
!1303 = !DILocation(line: 456, column: 9, scope: !1296)
!1304 = !DILocation(line: 457, column: 8, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 456, column: 17)
!1306 = !DILocation(line: 457, column: 15, scope: !1305)
!1307 = !DILocation(line: 458, column: 12, scope: !1305)
!1308 = !DILocation(line: 458, column: 7, scope: !1305)
!1309 = !DILocation(line: 459, column: 6, scope: !1305)
!1310 = !DILocation(line: 460, column: 5, scope: !1296)
!1311 = !DILocation(line: 454, column: 19, scope: !1291)
!1312 = !DILocation(line: 454, column: 5, scope: !1291)
!1313 = distinct !{!1313, !1294, !1314, !295}
!1314 = !DILocation(line: 460, column: 5, scope: !1287)
!1315 = !DILocation(line: 461, column: 10, scope: !1288)
!1316 = !DILocation(line: 461, column: 13, scope: !1288)
!1317 = !DILocation(line: 461, column: 5, scope: !1288)
!1318 = !DILocation(line: 462, column: 5, scope: !1288)
!1319 = !DILocation(line: 462, column: 8, scope: !1288)
!1320 = !DILocation(line: 462, column: 21, scope: !1288)
!1321 = !DILocation(line: 463, column: 4, scope: !1288)
!1322 = !DILocation(line: 464, column: 3, scope: !1240)
!1323 = !DILocation(line: 465, column: 2, scope: !1227)
!1324 = !DILocation(line: 435, column: 29, scope: !1223)
!1325 = !DILocation(line: 435, column: 2, scope: !1223)
!1326 = distinct !{!1326, !1225, !1327, !295}
!1327 = !DILocation(line: 465, column: 2, scope: !1220)
!1328 = !DILocation(line: 467, column: 14, scope: !1214)
!1329 = !DILocation(line: 467, column: 2, scope: !1214)
!1330 = !DILocation(line: 468, column: 1, scope: !1214)
!1331 = distinct !DISubprogram(name: "lm_map_size", scope: !3, file: !3, line: 470, type: !1332, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!56, !927}
!1334 = !DILocalVariable(name: "map", arg: 1, scope: !1331, file: !3, line: 470, type: !927)
!1335 = !DILocation(line: 470, column: 34, scope: !1331)
!1336 = !DILocalVariable(name: "ret", scope: !1331, file: !3, line: 472, type: !56)
!1337 = !DILocation(line: 472, column: 9, scope: !1331)
!1338 = !DILocation(line: 474, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 474, column: 5)
!1340 = !DILocation(line: 474, column: 5, scope: !1331)
!1341 = !DILocalVariable(name: "i", scope: !1342, file: !3, line: 476, type: !56)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 474, column: 10)
!1343 = !DILocation(line: 476, column: 10, scope: !1342)
!1344 = !DILocation(line: 478, column: 8, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 478, column: 3)
!1346 = !DILocation(line: 478, column: 7, scope: !1345)
!1347 = !DILocation(line: 478, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 478, column: 3)
!1349 = !DILocation(line: 478, column: 12, scope: !1348)
!1350 = !DILocation(line: 478, column: 3, scope: !1345)
!1351 = !DILocalVariable(name: "a", scope: !1352, file: !3, line: 480, type: !948)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 478, column: 35)
!1353 = !DILocation(line: 480, column: 24, scope: !1352)
!1354 = !DILocation(line: 480, column: 30, scope: !1352)
!1355 = !DILocation(line: 480, column: 35, scope: !1352)
!1356 = !DILocation(line: 480, column: 41, scope: !1352)
!1357 = !DILocalVariable(name: "j", scope: !1352, file: !3, line: 482, type: !56)
!1358 = !DILocation(line: 482, column: 11, scope: !1352)
!1359 = !DILocation(line: 484, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 484, column: 4)
!1361 = !DILocation(line: 484, column: 8, scope: !1360)
!1362 = !DILocation(line: 484, column: 12, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 484, column: 4)
!1364 = !DILocation(line: 484, column: 13, scope: !1363)
!1365 = !DILocation(line: 484, column: 4, scope: !1360)
!1366 = !DILocation(line: 485, column: 8, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 485, column: 8)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 484, column: 37)
!1369 = !DILocation(line: 485, column: 11, scope: !1367)
!1370 = !DILocation(line: 485, column: 21, scope: !1367)
!1371 = !DILocation(line: 485, column: 24, scope: !1367)
!1372 = !DILocation(line: 485, column: 27, scope: !1367)
!1373 = !DILocation(line: 485, column: 30, scope: !1367)
!1374 = !DILocation(line: 485, column: 42, scope: !1367)
!1375 = !DILocation(line: 485, column: 8, scope: !1368)
!1376 = !DILocation(line: 486, column: 6, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 485, column: 46)
!1378 = !DILocation(line: 487, column: 5, scope: !1377)
!1379 = !DILocation(line: 488, column: 4, scope: !1368)
!1380 = !DILocation(line: 484, column: 32, scope: !1363)
!1381 = !DILocation(line: 484, column: 4, scope: !1363)
!1382 = distinct !{!1382, !1365, !1383, !295}
!1383 = !DILocation(line: 488, column: 4, scope: !1360)
!1384 = !DILocalVariable(name: "esz", scope: !1352, file: !3, line: 490, type: !56)
!1385 = !DILocation(line: 490, column: 11, scope: !1352)
!1386 = !DILocation(line: 490, column: 17, scope: !1352)
!1387 = !DILocation(line: 490, column: 20, scope: !1352)
!1388 = !DILocation(line: 491, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 491, column: 7)
!1390 = !DILocation(line: 491, column: 11, scope: !1389)
!1391 = !DILocation(line: 491, column: 14, scope: !1389)
!1392 = !DILocation(line: 491, column: 17, scope: !1389)
!1393 = !DILocation(line: 491, column: 30, scope: !1389)
!1394 = !DILocation(line: 491, column: 33, scope: !1389)
!1395 = !DILocation(line: 491, column: 36, scope: !1389)
!1396 = !DILocation(line: 491, column: 7, scope: !1352)
!1397 = !DILocation(line: 492, column: 10, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 492, column: 5)
!1399 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 491, column: 48)
!1400 = !DILocation(line: 492, column: 9, scope: !1398)
!1401 = !DILocation(line: 492, column: 13, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 492, column: 5)
!1403 = !DILocation(line: 492, column: 15, scope: !1402)
!1404 = !DILocation(line: 492, column: 14, scope: !1402)
!1405 = !DILocation(line: 492, column: 5, scope: !1398)
!1406 = !DILocation(line: 493, column: 11, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 493, column: 9)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 492, column: 24)
!1409 = !DILocation(line: 493, column: 14, scope: !1407)
!1410 = !DILocation(line: 493, column: 25, scope: !1407)
!1411 = !DILocation(line: 493, column: 9, scope: !1407)
!1412 = !DILocation(line: 493, column: 29, scope: !1407)
!1413 = !DILocation(line: 493, column: 34, scope: !1407)
!1414 = !DILocation(line: 493, column: 37, scope: !1407)
!1415 = !DILocation(line: 493, column: 50, scope: !1407)
!1416 = !DILocation(line: 493, column: 32, scope: !1407)
!1417 = !DILocation(line: 493, column: 9, scope: !1408)
!1418 = !DILocation(line: 494, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 493, column: 55)
!1420 = !DILocation(line: 495, column: 6, scope: !1419)
!1421 = !DILocation(line: 496, column: 5, scope: !1408)
!1422 = !DILocation(line: 492, column: 19, scope: !1402)
!1423 = !DILocation(line: 492, column: 5, scope: !1402)
!1424 = distinct !{!1424, !1405, !1425, !295}
!1425 = !DILocation(line: 496, column: 5, scope: !1398)
!1426 = !DILocation(line: 497, column: 4, scope: !1399)
!1427 = !DILocation(line: 498, column: 3, scope: !1352)
!1428 = !DILocation(line: 478, column: 30, scope: !1348)
!1429 = !DILocation(line: 478, column: 3, scope: !1348)
!1430 = distinct !{!1430, !1350, !1431, !295}
!1431 = !DILocation(line: 498, column: 3, scope: !1345)
!1432 = !DILocation(line: 499, column: 2, scope: !1342)
!1433 = !DILocation(line: 501, column: 9, scope: !1331)
!1434 = !DILocation(line: 501, column: 2, scope: !1331)
!1435 = distinct !DISubprogram(name: "lm_map_foreach", scope: !3, file: !3, line: 504, type: !1436, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!155, !654, !527}
!1438 = !DILocalVariable(name: "map", arg: 1, scope: !1435, file: !3, line: 504, type: !654)
!1439 = !DILocation(line: 504, column: 28, scope: !1435)
!1440 = !DILocalVariable(name: "func", arg: 2, scope: !1435, file: !3, line: 504, type: !527)
!1441 = !DILocation(line: 504, column: 48, scope: !1435)
!1442 = !DILocalVariable(name: "ret", scope: !1435, file: !3, line: 506, type: !56)
!1443 = !DILocation(line: 506, column: 9, scope: !1435)
!1444 = !DILocation(line: 508, column: 5, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 508, column: 5)
!1446 = !DILocation(line: 508, column: 5, scope: !1435)
!1447 = !DILocalVariable(name: "i", scope: !1448, file: !3, line: 510, type: !56)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 508, column: 10)
!1449 = !DILocation(line: 510, column: 10, scope: !1448)
!1450 = !DILocation(line: 512, column: 8, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 512, column: 3)
!1452 = !DILocation(line: 512, column: 7, scope: !1451)
!1453 = !DILocation(line: 512, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 512, column: 3)
!1455 = !DILocation(line: 512, column: 12, scope: !1454)
!1456 = !DILocation(line: 512, column: 3, scope: !1451)
!1457 = !DILocalVariable(name: "a", scope: !1458, file: !3, line: 514, type: !706)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 512, column: 35)
!1459 = !DILocation(line: 514, column: 18, scope: !1458)
!1460 = !DILocation(line: 514, column: 24, scope: !1458)
!1461 = !DILocation(line: 514, column: 29, scope: !1458)
!1462 = !DILocation(line: 514, column: 35, scope: !1458)
!1463 = !DILocalVariable(name: "j", scope: !1458, file: !3, line: 516, type: !56)
!1464 = !DILocation(line: 516, column: 11, scope: !1458)
!1465 = !DILocation(line: 518, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 518, column: 4)
!1467 = !DILocation(line: 518, column: 8, scope: !1466)
!1468 = !DILocation(line: 518, column: 12, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 518, column: 4)
!1470 = !DILocation(line: 518, column: 13, scope: !1469)
!1471 = !DILocation(line: 518, column: 4, scope: !1466)
!1472 = !DILocation(line: 519, column: 8, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 519, column: 8)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 518, column: 37)
!1475 = !DILocation(line: 519, column: 11, scope: !1473)
!1476 = !DILocation(line: 519, column: 21, scope: !1473)
!1477 = !DILocation(line: 519, column: 24, scope: !1473)
!1478 = !DILocation(line: 519, column: 27, scope: !1473)
!1479 = !DILocation(line: 519, column: 30, scope: !1473)
!1480 = !DILocation(line: 519, column: 42, scope: !1473)
!1481 = !DILocation(line: 519, column: 8, scope: !1474)
!1482 = !DILocation(line: 520, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 520, column: 9)
!1484 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 519, column: 46)
!1485 = !DILocation(line: 520, column: 31, scope: !1483)
!1486 = !DILocation(line: 520, column: 34, scope: !1483)
!1487 = !DILocation(line: 520, column: 44, scope: !1483)
!1488 = !DILocation(line: 521, column: 26, scope: !1483)
!1489 = !DILocation(line: 521, column: 29, scope: !1483)
!1490 = !DILocation(line: 521, column: 41, scope: !1483)
!1491 = !DILocation(line: 520, column: 9, scope: !1484)
!1492 = !DILocation(line: 522, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 521, column: 46)
!1494 = !DILocation(line: 524, column: 5, scope: !1484)
!1495 = !DILocation(line: 525, column: 4, scope: !1474)
!1496 = !DILocation(line: 518, column: 32, scope: !1469)
!1497 = !DILocation(line: 518, column: 4, scope: !1469)
!1498 = distinct !{!1498, !1471, !1499, !295}
!1499 = !DILocation(line: 525, column: 4, scope: !1466)
!1500 = !DILocalVariable(name: "esz", scope: !1458, file: !3, line: 527, type: !56)
!1501 = !DILocation(line: 527, column: 11, scope: !1458)
!1502 = !DILocation(line: 527, column: 17, scope: !1458)
!1503 = !DILocation(line: 527, column: 20, scope: !1458)
!1504 = !DILocation(line: 528, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 528, column: 7)
!1506 = !DILocation(line: 528, column: 11, scope: !1505)
!1507 = !DILocation(line: 528, column: 14, scope: !1505)
!1508 = !DILocation(line: 528, column: 17, scope: !1505)
!1509 = !DILocation(line: 528, column: 30, scope: !1505)
!1510 = !DILocation(line: 528, column: 33, scope: !1505)
!1511 = !DILocation(line: 528, column: 36, scope: !1505)
!1512 = !DILocation(line: 528, column: 7, scope: !1458)
!1513 = !DILocation(line: 529, column: 10, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 529, column: 5)
!1515 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 528, column: 48)
!1516 = !DILocation(line: 529, column: 9, scope: !1514)
!1517 = !DILocation(line: 529, column: 13, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 529, column: 5)
!1519 = !DILocation(line: 529, column: 15, scope: !1518)
!1520 = !DILocation(line: 529, column: 14, scope: !1518)
!1521 = !DILocation(line: 529, column: 5, scope: !1514)
!1522 = !DILocation(line: 530, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 530, column: 9)
!1524 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 529, column: 24)
!1525 = !DILocation(line: 530, column: 14, scope: !1523)
!1526 = !DILocation(line: 530, column: 25, scope: !1523)
!1527 = !DILocation(line: 530, column: 9, scope: !1523)
!1528 = !DILocation(line: 530, column: 29, scope: !1523)
!1529 = !DILocation(line: 530, column: 34, scope: !1523)
!1530 = !DILocation(line: 530, column: 37, scope: !1523)
!1531 = !DILocation(line: 530, column: 50, scope: !1523)
!1532 = !DILocation(line: 530, column: 32, scope: !1523)
!1533 = !DILocation(line: 530, column: 9, scope: !1524)
!1534 = !DILocation(line: 531, column: 10, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 531, column: 10)
!1536 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 530, column: 55)
!1537 = !DILocation(line: 531, column: 34, scope: !1535)
!1538 = !DILocation(line: 531, column: 37, scope: !1535)
!1539 = !DILocation(line: 531, column: 48, scope: !1535)
!1540 = !DILocation(line: 531, column: 32, scope: !1535)
!1541 = !DILocation(line: 532, column: 29, scope: !1535)
!1542 = !DILocation(line: 532, column: 32, scope: !1535)
!1543 = !DILocation(line: 532, column: 45, scope: !1535)
!1544 = !DILocation(line: 532, column: 27, scope: !1535)
!1545 = !DILocation(line: 531, column: 10, scope: !1536)
!1546 = !DILocation(line: 533, column: 8, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 532, column: 51)
!1548 = !DILocation(line: 535, column: 6, scope: !1536)
!1549 = !DILocation(line: 536, column: 5, scope: !1524)
!1550 = !DILocation(line: 529, column: 19, scope: !1518)
!1551 = !DILocation(line: 529, column: 5, scope: !1518)
!1552 = distinct !{!1552, !1521, !1553, !295}
!1553 = !DILocation(line: 536, column: 5, scope: !1514)
!1554 = !DILocation(line: 537, column: 4, scope: !1515)
!1555 = !DILocation(line: 538, column: 3, scope: !1458)
!1556 = !DILocation(line: 512, column: 30, scope: !1454)
!1557 = !DILocation(line: 512, column: 3, scope: !1454)
!1558 = distinct !{!1558, !1456, !1559, !295}
!1559 = !DILocation(line: 538, column: 3, scope: !1451)
!1560 = !DILocation(line: 539, column: 2, scope: !1448)
!1561 = !DILocation(line: 541, column: 9, scope: !1435)
!1562 = !DILocation(line: 541, column: 2, scope: !1435)
!1563 = !DILocation(line: 542, column: 1, scope: !1435)
!1564 = distinct !DISubprogram(name: "lm_map_foreach_arg", scope: !3, file: !3, line: 544, type: !1565, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!155, !654, !577, !49}
!1567 = !DILocalVariable(name: "map", arg: 1, scope: !1564, file: !3, line: 544, type: !654)
!1568 = !DILocation(line: 544, column: 32, scope: !1564)
!1569 = !DILocalVariable(name: "func", arg: 2, scope: !1564, file: !3, line: 544, type: !577)
!1570 = !DILocation(line: 544, column: 56, scope: !1564)
!1571 = !DILocalVariable(name: "arg", arg: 3, scope: !1564, file: !3, line: 544, type: !49)
!1572 = !DILocation(line: 544, column: 68, scope: !1564)
!1573 = !DILocalVariable(name: "ret", scope: !1564, file: !3, line: 546, type: !56)
!1574 = !DILocation(line: 546, column: 9, scope: !1564)
!1575 = !DILocation(line: 548, column: 5, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 548, column: 5)
!1577 = !DILocation(line: 548, column: 5, scope: !1564)
!1578 = !DILocalVariable(name: "i", scope: !1579, file: !3, line: 550, type: !56)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 548, column: 10)
!1580 = !DILocation(line: 550, column: 10, scope: !1579)
!1581 = !DILocation(line: 552, column: 8, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 552, column: 3)
!1583 = !DILocation(line: 552, column: 7, scope: !1582)
!1584 = !DILocation(line: 552, column: 11, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 552, column: 3)
!1586 = !DILocation(line: 552, column: 12, scope: !1585)
!1587 = !DILocation(line: 552, column: 3, scope: !1582)
!1588 = !DILocalVariable(name: "a", scope: !1589, file: !3, line: 554, type: !706)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 552, column: 35)
!1590 = !DILocation(line: 554, column: 18, scope: !1589)
!1591 = !DILocation(line: 554, column: 24, scope: !1589)
!1592 = !DILocation(line: 554, column: 29, scope: !1589)
!1593 = !DILocation(line: 554, column: 35, scope: !1589)
!1594 = !DILocalVariable(name: "j", scope: !1589, file: !3, line: 556, type: !56)
!1595 = !DILocation(line: 556, column: 11, scope: !1589)
!1596 = !DILocation(line: 558, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 558, column: 4)
!1598 = !DILocation(line: 558, column: 8, scope: !1597)
!1599 = !DILocation(line: 558, column: 12, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 558, column: 4)
!1601 = !DILocation(line: 558, column: 13, scope: !1600)
!1602 = !DILocation(line: 558, column: 4, scope: !1597)
!1603 = !DILocation(line: 559, column: 8, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 559, column: 8)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 558, column: 37)
!1606 = !DILocation(line: 559, column: 11, scope: !1604)
!1607 = !DILocation(line: 559, column: 21, scope: !1604)
!1608 = !DILocation(line: 559, column: 24, scope: !1604)
!1609 = !DILocation(line: 559, column: 27, scope: !1604)
!1610 = !DILocation(line: 559, column: 30, scope: !1604)
!1611 = !DILocation(line: 559, column: 42, scope: !1604)
!1612 = !DILocation(line: 559, column: 8, scope: !1605)
!1613 = !DILocation(line: 560, column: 9, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 560, column: 9)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 559, column: 46)
!1616 = !DILocation(line: 560, column: 31, scope: !1614)
!1617 = !DILocation(line: 560, column: 34, scope: !1614)
!1618 = !DILocation(line: 560, column: 44, scope: !1614)
!1619 = !DILocation(line: 561, column: 26, scope: !1614)
!1620 = !DILocation(line: 561, column: 29, scope: !1614)
!1621 = !DILocation(line: 561, column: 41, scope: !1614)
!1622 = !DILocation(line: 562, column: 7, scope: !1614)
!1623 = !DILocation(line: 560, column: 9, scope: !1615)
!1624 = !DILocation(line: 563, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 562, column: 13)
!1626 = !DILocation(line: 565, column: 5, scope: !1615)
!1627 = !DILocation(line: 566, column: 4, scope: !1605)
!1628 = !DILocation(line: 558, column: 32, scope: !1600)
!1629 = !DILocation(line: 558, column: 4, scope: !1600)
!1630 = distinct !{!1630, !1602, !1631, !295}
!1631 = !DILocation(line: 566, column: 4, scope: !1597)
!1632 = !DILocalVariable(name: "esz", scope: !1589, file: !3, line: 568, type: !56)
!1633 = !DILocation(line: 568, column: 11, scope: !1589)
!1634 = !DILocation(line: 568, column: 17, scope: !1589)
!1635 = !DILocation(line: 568, column: 20, scope: !1589)
!1636 = !DILocation(line: 569, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 569, column: 7)
!1638 = !DILocation(line: 569, column: 11, scope: !1637)
!1639 = !DILocation(line: 569, column: 14, scope: !1637)
!1640 = !DILocation(line: 569, column: 17, scope: !1637)
!1641 = !DILocation(line: 569, column: 30, scope: !1637)
!1642 = !DILocation(line: 569, column: 33, scope: !1637)
!1643 = !DILocation(line: 569, column: 36, scope: !1637)
!1644 = !DILocation(line: 569, column: 7, scope: !1589)
!1645 = !DILocation(line: 570, column: 10, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 570, column: 5)
!1647 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 569, column: 48)
!1648 = !DILocation(line: 570, column: 9, scope: !1646)
!1649 = !DILocation(line: 570, column: 13, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 570, column: 5)
!1651 = !DILocation(line: 570, column: 15, scope: !1650)
!1652 = !DILocation(line: 570, column: 14, scope: !1650)
!1653 = !DILocation(line: 570, column: 5, scope: !1646)
!1654 = !DILocation(line: 571, column: 11, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 571, column: 9)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 570, column: 24)
!1657 = !DILocation(line: 571, column: 14, scope: !1655)
!1658 = !DILocation(line: 571, column: 25, scope: !1655)
!1659 = !DILocation(line: 571, column: 9, scope: !1655)
!1660 = !DILocation(line: 571, column: 29, scope: !1655)
!1661 = !DILocation(line: 571, column: 34, scope: !1655)
!1662 = !DILocation(line: 571, column: 37, scope: !1655)
!1663 = !DILocation(line: 571, column: 50, scope: !1655)
!1664 = !DILocation(line: 571, column: 32, scope: !1655)
!1665 = !DILocation(line: 571, column: 9, scope: !1656)
!1666 = !DILocation(line: 572, column: 10, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 572, column: 10)
!1668 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 571, column: 55)
!1669 = !DILocation(line: 572, column: 34, scope: !1667)
!1670 = !DILocation(line: 572, column: 37, scope: !1667)
!1671 = !DILocation(line: 572, column: 48, scope: !1667)
!1672 = !DILocation(line: 572, column: 32, scope: !1667)
!1673 = !DILocation(line: 573, column: 29, scope: !1667)
!1674 = !DILocation(line: 573, column: 32, scope: !1667)
!1675 = !DILocation(line: 573, column: 45, scope: !1667)
!1676 = !DILocation(line: 573, column: 27, scope: !1667)
!1677 = !DILocation(line: 574, column: 8, scope: !1667)
!1678 = !DILocation(line: 572, column: 10, scope: !1668)
!1679 = !DILocation(line: 575, column: 8, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 574, column: 14)
!1681 = !DILocation(line: 577, column: 6, scope: !1668)
!1682 = !DILocation(line: 578, column: 5, scope: !1656)
!1683 = !DILocation(line: 570, column: 19, scope: !1650)
!1684 = !DILocation(line: 570, column: 5, scope: !1650)
!1685 = distinct !{!1685, !1653, !1686, !295}
!1686 = !DILocation(line: 578, column: 5, scope: !1646)
!1687 = !DILocation(line: 579, column: 4, scope: !1647)
!1688 = !DILocation(line: 580, column: 3, scope: !1589)
!1689 = !DILocation(line: 552, column: 30, scope: !1585)
!1690 = !DILocation(line: 552, column: 3, scope: !1585)
!1691 = distinct !{!1691, !1587, !1692, !295}
!1692 = !DILocation(line: 580, column: 3, scope: !1582)
!1693 = !DILocation(line: 581, column: 2, scope: !1579)
!1694 = !DILocation(line: 583, column: 9, scope: !1564)
!1695 = !DILocation(line: 583, column: 2, scope: !1564)
!1696 = !DILocation(line: 584, column: 1, scope: !1564)
!1697 = distinct !DISubprogram(name: "ur_addr_map_init", scope: !3, file: !3, line: 803, type: !1698, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map", file: !9, line: 183, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_addr_map", file: !9, line: 177, size: 1441856, elements: !1703)
!1703 = !{!1704, !1713}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !1702, file: !9, line: 178, baseType: !1705, size: 1441792)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1706, size: 1441792, elements: !77)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_list_header", file: !9, line: 175, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_list_header", file: !9, line: 171, size: 1408, elements: !1708)
!1708 = !{!1709, !1711, !1712}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "main_list", scope: !1707, file: !9, line: 172, baseType: !1710, size: 1280)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1280, elements: !150)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "extra_list", scope: !1707, file: !9, line: 173, baseType: !87, size: 64, offset: 1280)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !1707, file: !9, line: 174, baseType: !56, size: 64, offset: 1344)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1702, file: !9, line: 179, baseType: !33, size: 64, offset: 1441792)
!1714 = !DILocalVariable(name: "map", arg: 1, scope: !1697, file: !3, line: 803, type: !1700)
!1715 = !DILocation(line: 803, column: 36, scope: !1697)
!1716 = !DILocation(line: 804, column: 6, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 804, column: 6)
!1718 = !DILocation(line: 804, column: 6, scope: !1697)
!1719 = !DILocation(line: 805, column: 11, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 804, column: 11)
!1721 = !DILocation(line: 805, column: 5, scope: !1720)
!1722 = !DILocation(line: 806, column: 5, scope: !1720)
!1723 = !DILocation(line: 806, column: 10, scope: !1720)
!1724 = !DILocation(line: 806, column: 15, scope: !1720)
!1725 = !DILocation(line: 807, column: 3, scope: !1720)
!1726 = !DILocation(line: 808, column: 1, scope: !1697)
!1727 = distinct !DISubprogram(name: "ur_addr_map_clean", scope: !3, file: !3, line: 810, type: !1698, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1728 = !DILocalVariable(name: "map", arg: 1, scope: !1727, file: !3, line: 810, type: !1700)
!1729 = !DILocation(line: 810, column: 37, scope: !1727)
!1730 = !DILocation(line: 811, column: 6, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 811, column: 6)
!1732 = !DILocation(line: 811, column: 10, scope: !1731)
!1733 = !DILocation(line: 811, column: 13, scope: !1731)
!1734 = !DILocation(line: 811, column: 6, scope: !1727)
!1735 = !DILocalVariable(name: "i", scope: !1736, file: !3, line: 812, type: !20)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 811, column: 37)
!1737 = !DILocation(line: 812, column: 14, scope: !1736)
!1738 = !DILocation(line: 813, column: 10, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 813, column: 5)
!1740 = !DILocation(line: 813, column: 9, scope: !1739)
!1741 = !DILocation(line: 813, column: 13, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 813, column: 5)
!1743 = !DILocation(line: 813, column: 14, scope: !1742)
!1744 = !DILocation(line: 813, column: 5, scope: !1739)
!1745 = !DILocation(line: 814, column: 24, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 813, column: 34)
!1747 = !DILocation(line: 814, column: 29, scope: !1746)
!1748 = !DILocation(line: 814, column: 35, scope: !1746)
!1749 = !DILocation(line: 814, column: 7, scope: !1746)
!1750 = !DILocation(line: 815, column: 5, scope: !1746)
!1751 = !DILocation(line: 813, column: 30, scope: !1742)
!1752 = !DILocation(line: 813, column: 5, scope: !1742)
!1753 = distinct !{!1753, !1744, !1754, !295}
!1754 = !DILocation(line: 815, column: 5, scope: !1739)
!1755 = !DILocation(line: 816, column: 11, scope: !1736)
!1756 = !DILocation(line: 816, column: 5, scope: !1736)
!1757 = !DILocation(line: 817, column: 3, scope: !1736)
!1758 = !DILocation(line: 818, column: 1, scope: !1727)
!1759 = distinct !DISubprogram(name: "addr_list_free", scope: !3, file: !3, line: 588, type: !1760, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !1762}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1763 = !DILocalVariable(name: "slh", arg: 1, scope: !1759, file: !3, line: 588, type: !1762)
!1764 = !DILocation(line: 588, column: 46, scope: !1759)
!1765 = !DILocation(line: 589, column: 6, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 589, column: 6)
!1767 = !DILocation(line: 589, column: 6, scope: !1759)
!1768 = !DILocation(line: 590, column: 8, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 590, column: 8)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 589, column: 11)
!1771 = !DILocation(line: 590, column: 13, scope: !1769)
!1772 = !DILocation(line: 590, column: 8, scope: !1770)
!1773 = !DILocation(line: 591, column: 12, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 590, column: 25)
!1775 = !DILocation(line: 591, column: 17, scope: !1774)
!1776 = !DILocation(line: 591, column: 7, scope: !1774)
!1777 = !DILocation(line: 592, column: 5, scope: !1774)
!1778 = !DILocation(line: 593, column: 11, scope: !1770)
!1779 = !DILocation(line: 593, column: 5, scope: !1770)
!1780 = !DILocation(line: 594, column: 3, scope: !1770)
!1781 = !DILocation(line: 595, column: 1, scope: !1759)
!1782 = distinct !DISubprogram(name: "ur_addr_map_put", scope: !3, file: !3, line: 826, type: !1783, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!155, !1700, !1785, !154}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1786 = !DILocalVariable(name: "map", arg: 1, scope: !1782, file: !3, line: 826, type: !1700)
!1787 = !DILocation(line: 826, column: 34, scope: !1782)
!1788 = !DILocalVariable(name: "key", arg: 2, scope: !1782, file: !3, line: 826, type: !1785)
!1789 = !DILocation(line: 826, column: 49, scope: !1782)
!1790 = !DILocalVariable(name: "value", arg: 3, scope: !1782, file: !3, line: 826, type: !154)
!1791 = !DILocation(line: 826, column: 77, scope: !1782)
!1792 = !DILocation(line: 828, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 828, column: 6)
!1794 = !DILocation(line: 828, column: 6, scope: !1782)
!1795 = !DILocation(line: 828, column: 31, scope: !1793)
!1796 = !DILocalVariable(name: "slh", scope: !1797, file: !3, line: 832, type: !1762)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 830, column: 8)
!1798 = !DILocation(line: 832, column: 23, scope: !1797)
!1799 = !DILocation(line: 832, column: 29, scope: !1797)
!1800 = !DILocalVariable(name: "elem", scope: !1797, file: !3, line: 834, type: !87)
!1801 = !DILocation(line: 834, column: 16, scope: !1797)
!1802 = !DILocation(line: 834, column: 37, scope: !1797)
!1803 = !DILocation(line: 834, column: 42, scope: !1797)
!1804 = !DILocation(line: 834, column: 23, scope: !1797)
!1805 = !DILocation(line: 835, column: 8, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 835, column: 8)
!1807 = !DILocation(line: 835, column: 8, scope: !1797)
!1808 = !DILocation(line: 836, column: 19, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 835, column: 14)
!1810 = !DILocation(line: 836, column: 7, scope: !1809)
!1811 = !DILocation(line: 836, column: 13, scope: !1809)
!1812 = !DILocation(line: 836, column: 18, scope: !1809)
!1813 = !DILocation(line: 837, column: 5, scope: !1809)
!1814 = !DILocation(line: 838, column: 21, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 837, column: 12)
!1816 = !DILocation(line: 838, column: 25, scope: !1815)
!1817 = !DILocation(line: 838, column: 29, scope: !1815)
!1818 = !DILocation(line: 838, column: 7, scope: !1815)
!1819 = !DILocation(line: 841, column: 5, scope: !1797)
!1820 = !DILocation(line: 843, column: 1, scope: !1782)
!1821 = distinct !DISubprogram(name: "addr_list_get", scope: !3, file: !3, line: 737, type: !1822, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!87, !1762, !1824}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!1826 = !DILocalVariable(name: "slh", arg: 1, scope: !1821, file: !3, line: 737, type: !1762)
!1827 = !DILocation(line: 737, column: 51, scope: !1821)
!1828 = !DILocalVariable(name: "key", arg: 2, scope: !1821, file: !3, line: 737, type: !1824)
!1829 = !DILocation(line: 737, column: 72, scope: !1821)
!1830 = !DILocation(line: 739, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 739, column: 6)
!1832 = !DILocation(line: 739, column: 11, scope: !1831)
!1833 = !DILocation(line: 739, column: 15, scope: !1831)
!1834 = !DILocation(line: 739, column: 6, scope: !1821)
!1835 = !DILocation(line: 739, column: 20, scope: !1831)
!1836 = !DILocalVariable(name: "i", scope: !1821, file: !3, line: 741, type: !56)
!1837 = !DILocation(line: 741, column: 10, scope: !1821)
!1838 = !DILocation(line: 743, column: 8, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 743, column: 3)
!1840 = !DILocation(line: 743, column: 7, scope: !1839)
!1841 = !DILocation(line: 743, column: 11, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 743, column: 3)
!1843 = !DILocation(line: 743, column: 12, scope: !1842)
!1844 = !DILocation(line: 743, column: 3, scope: !1839)
!1845 = !DILocalVariable(name: "elem", scope: !1846, file: !3, line: 744, type: !87)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 743, column: 34)
!1847 = !DILocation(line: 744, column: 15, scope: !1846)
!1848 = !DILocation(line: 744, column: 22, scope: !1846)
!1849 = !DILocation(line: 744, column: 27, scope: !1846)
!1850 = !DILocation(line: 744, column: 37, scope: !1846)
!1851 = !DILocation(line: 745, column: 7, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 745, column: 7)
!1853 = !DILocation(line: 745, column: 13, scope: !1852)
!1854 = !DILocation(line: 745, column: 7, scope: !1846)
!1855 = !DILocation(line: 746, column: 18, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 746, column: 8)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 745, column: 20)
!1858 = !DILocation(line: 746, column: 24, scope: !1856)
!1859 = !DILocation(line: 746, column: 29, scope: !1856)
!1860 = !DILocation(line: 746, column: 8, scope: !1856)
!1861 = !DILocation(line: 746, column: 8, scope: !1857)
!1862 = !DILocation(line: 747, column: 13, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 746, column: 35)
!1864 = !DILocation(line: 747, column: 6, scope: !1863)
!1865 = !DILocation(line: 749, column: 4, scope: !1857)
!1866 = !DILocation(line: 750, column: 3, scope: !1846)
!1867 = !DILocation(line: 743, column: 29, scope: !1842)
!1868 = !DILocation(line: 743, column: 3, scope: !1842)
!1869 = distinct !{!1869, !1844, !1870, !295}
!1870 = !DILocation(line: 750, column: 3, scope: !1839)
!1871 = !DILocation(line: 752, column: 6, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 752, column: 6)
!1873 = !DILocation(line: 752, column: 11, scope: !1872)
!1874 = !DILocation(line: 752, column: 6, scope: !1821)
!1875 = !DILocation(line: 753, column: 13, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 753, column: 8)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 752, column: 23)
!1878 = !DILocation(line: 753, column: 12, scope: !1876)
!1879 = !DILocation(line: 753, column: 16, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 753, column: 8)
!1881 = !DILocation(line: 753, column: 18, scope: !1880)
!1882 = !DILocation(line: 753, column: 23, scope: !1880)
!1883 = !DILocation(line: 753, column: 17, scope: !1880)
!1884 = !DILocation(line: 753, column: 8, scope: !1876)
!1885 = !DILocalVariable(name: "elem", scope: !1886, file: !3, line: 754, type: !87)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 753, column: 37)
!1887 = !DILocation(line: 754, column: 20, scope: !1886)
!1888 = !DILocation(line: 754, column: 27, scope: !1886)
!1889 = !DILocation(line: 754, column: 32, scope: !1886)
!1890 = !DILocation(line: 754, column: 43, scope: !1886)
!1891 = !DILocation(line: 755, column: 12, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 755, column: 12)
!1893 = !DILocation(line: 755, column: 18, scope: !1892)
!1894 = !DILocation(line: 755, column: 12, scope: !1886)
!1895 = !DILocation(line: 756, column: 23, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 756, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 755, column: 25)
!1898 = !DILocation(line: 756, column: 29, scope: !1896)
!1899 = !DILocation(line: 756, column: 34, scope: !1896)
!1900 = !DILocation(line: 756, column: 13, scope: !1896)
!1901 = !DILocation(line: 756, column: 13, scope: !1897)
!1902 = !DILocation(line: 757, column: 18, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 756, column: 40)
!1904 = !DILocation(line: 757, column: 11, scope: !1903)
!1905 = !DILocation(line: 759, column: 9, scope: !1897)
!1906 = !DILocation(line: 760, column: 8, scope: !1886)
!1907 = !DILocation(line: 753, column: 32, scope: !1880)
!1908 = !DILocation(line: 753, column: 8, scope: !1880)
!1909 = distinct !{!1909, !1884, !1910, !295}
!1910 = !DILocation(line: 760, column: 8, scope: !1876)
!1911 = !DILocation(line: 761, column: 3, scope: !1877)
!1912 = !DILocation(line: 763, column: 3, scope: !1821)
!1913 = !DILocation(line: 764, column: 1, scope: !1821)
!1914 = distinct !DISubprogram(name: "addr_list_add", scope: !3, file: !3, line: 597, type: !1915, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1762, !1824, !154}
!1917 = !DILocalVariable(name: "slh", arg: 1, scope: !1914, file: !3, line: 597, type: !1762)
!1918 = !DILocation(line: 597, column: 45, scope: !1914)
!1919 = !DILocalVariable(name: "key", arg: 2, scope: !1914, file: !3, line: 597, type: !1824)
!1920 = !DILocation(line: 597, column: 66, scope: !1914)
!1921 = !DILocalVariable(name: "value", arg: 3, scope: !1914, file: !3, line: 597, type: !154)
!1922 = !DILocation(line: 597, column: 95, scope: !1914)
!1923 = !DILocation(line: 599, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 599, column: 6)
!1925 = !DILocation(line: 599, column: 11, scope: !1924)
!1926 = !DILocation(line: 599, column: 15, scope: !1924)
!1927 = !DILocation(line: 599, column: 6, scope: !1914)
!1928 = !DILocation(line: 599, column: 22, scope: !1924)
!1929 = !DILocalVariable(name: "elem", scope: !1914, file: !3, line: 601, type: !87)
!1930 = !DILocation(line: 601, column: 14, scope: !1914)
!1931 = !DILocalVariable(name: "i", scope: !1914, file: !3, line: 602, type: !56)
!1932 = !DILocation(line: 602, column: 10, scope: !1914)
!1933 = !DILocation(line: 604, column: 8, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 604, column: 3)
!1935 = !DILocation(line: 604, column: 7, scope: !1934)
!1936 = !DILocation(line: 604, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 604, column: 3)
!1938 = !DILocation(line: 604, column: 12, scope: !1937)
!1939 = !DILocation(line: 604, column: 3, scope: !1934)
!1940 = !DILocation(line: 605, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 605, column: 7)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 604, column: 34)
!1943 = !DILocation(line: 605, column: 14, scope: !1941)
!1944 = !DILocation(line: 605, column: 24, scope: !1941)
!1945 = !DILocation(line: 605, column: 27, scope: !1941)
!1946 = !DILocation(line: 605, column: 8, scope: !1941)
!1947 = !DILocation(line: 605, column: 7, scope: !1942)
!1948 = !DILocation(line: 606, column: 14, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 605, column: 35)
!1950 = !DILocation(line: 606, column: 19, scope: !1949)
!1951 = !DILocation(line: 606, column: 29, scope: !1949)
!1952 = !DILocation(line: 606, column: 10, scope: !1949)
!1953 = !DILocation(line: 607, column: 5, scope: !1949)
!1954 = !DILocation(line: 609, column: 3, scope: !1942)
!1955 = !DILocation(line: 604, column: 29, scope: !1937)
!1956 = !DILocation(line: 604, column: 3, scope: !1937)
!1957 = distinct !{!1957, !1939, !1958, !295}
!1958 = !DILocation(line: 609, column: 3, scope: !1934)
!1959 = !DILocation(line: 611, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 611, column: 6)
!1961 = !DILocation(line: 611, column: 12, scope: !1960)
!1962 = !DILocation(line: 611, column: 15, scope: !1960)
!1963 = !DILocation(line: 611, column: 20, scope: !1960)
!1964 = !DILocation(line: 611, column: 6, scope: !1914)
!1965 = !DILocation(line: 612, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 612, column: 4)
!1967 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 611, column: 32)
!1968 = !DILocation(line: 612, column: 8, scope: !1966)
!1969 = !DILocation(line: 612, column: 12, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 612, column: 4)
!1971 = !DILocation(line: 612, column: 14, scope: !1970)
!1972 = !DILocation(line: 612, column: 19, scope: !1970)
!1973 = !DILocation(line: 612, column: 13, scope: !1970)
!1974 = !DILocation(line: 612, column: 4, scope: !1966)
!1975 = !DILocation(line: 613, column: 10, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 613, column: 8)
!1977 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 612, column: 33)
!1978 = !DILocation(line: 613, column: 15, scope: !1976)
!1979 = !DILocation(line: 613, column: 26, scope: !1976)
!1980 = !DILocation(line: 613, column: 29, scope: !1976)
!1981 = !DILocation(line: 613, column: 9, scope: !1976)
!1982 = !DILocation(line: 613, column: 8, scope: !1977)
!1983 = !DILocation(line: 614, column: 15, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 613, column: 37)
!1985 = !DILocation(line: 614, column: 20, scope: !1984)
!1986 = !DILocation(line: 614, column: 31, scope: !1984)
!1987 = !DILocation(line: 614, column: 11, scope: !1984)
!1988 = !DILocation(line: 615, column: 6, scope: !1984)
!1989 = !DILocation(line: 617, column: 4, scope: !1977)
!1990 = !DILocation(line: 612, column: 28, scope: !1970)
!1991 = !DILocation(line: 612, column: 4, scope: !1970)
!1992 = distinct !{!1992, !1974, !1993, !295}
!1993 = !DILocation(line: 617, column: 4, scope: !1966)
!1994 = !DILocation(line: 618, column: 3, scope: !1967)
!1995 = !DILocation(line: 620, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 620, column: 6)
!1997 = !DILocation(line: 620, column: 6, scope: !1914)
!1998 = !DILocalVariable(name: "old_sz", scope: !1999, file: !3, line: 621, type: !56)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 620, column: 13)
!2000 = !DILocation(line: 621, column: 11, scope: !1999)
!2001 = !DILocation(line: 621, column: 20, scope: !1999)
!2002 = !DILocation(line: 621, column: 25, scope: !1999)
!2003 = !DILocalVariable(name: "old_sz_mem", scope: !1999, file: !3, line: 622, type: !56)
!2004 = !DILocation(line: 622, column: 11, scope: !1999)
!2005 = !DILocation(line: 622, column: 24, scope: !1999)
!2006 = !DILocation(line: 622, column: 31, scope: !1999)
!2007 = !DILocation(line: 623, column: 42, scope: !1999)
!2008 = !DILocation(line: 623, column: 47, scope: !1999)
!2009 = !DILocation(line: 623, column: 59, scope: !1999)
!2010 = !DILocation(line: 623, column: 70, scope: !1999)
!2011 = !DILocation(line: 623, column: 34, scope: !1999)
!2012 = !DILocation(line: 623, column: 4, scope: !1999)
!2013 = !DILocation(line: 623, column: 9, scope: !1999)
!2014 = !DILocation(line: 623, column: 20, scope: !1999)
!2015 = !DILocation(line: 624, column: 13, scope: !1999)
!2016 = !DILocation(line: 624, column: 18, scope: !1999)
!2017 = !DILocation(line: 624, column: 29, scope: !1999)
!2018 = !DILocation(line: 624, column: 9, scope: !1999)
!2019 = !DILocation(line: 625, column: 4, scope: !1999)
!2020 = !DILocation(line: 625, column: 9, scope: !1999)
!2021 = !DILocation(line: 625, column: 18, scope: !1999)
!2022 = !DILocation(line: 626, column: 3, scope: !1999)
!2023 = !DILocation(line: 628, column: 14, scope: !1914)
!2024 = !DILocation(line: 628, column: 20, scope: !1914)
!2025 = !DILocation(line: 628, column: 25, scope: !1914)
!2026 = !DILocation(line: 628, column: 3, scope: !1914)
!2027 = !DILocation(line: 629, column: 15, scope: !1914)
!2028 = !DILocation(line: 629, column: 3, scope: !1914)
!2029 = !DILocation(line: 629, column: 9, scope: !1914)
!2030 = !DILocation(line: 629, column: 14, scope: !1914)
!2031 = !DILocation(line: 630, column: 1, scope: !1914)
!2032 = distinct !DISubprogram(name: "ur_addr_map_get", scope: !3, file: !3, line: 850, type: !2033, scopeLine: 850, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!155, !2035, !1785, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2038 = !DILocalVariable(name: "map", arg: 1, scope: !2032, file: !3, line: 850, type: !2035)
!2039 = !DILocation(line: 850, column: 40, scope: !2032)
!2040 = !DILocalVariable(name: "key", arg: 2, scope: !2032, file: !3, line: 850, type: !1785)
!2041 = !DILocation(line: 850, column: 55, scope: !2032)
!2042 = !DILocalVariable(name: "value", arg: 3, scope: !2032, file: !3, line: 850, type: !2037)
!2043 = !DILocation(line: 850, column: 84, scope: !2032)
!2044 = !DILocation(line: 852, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 852, column: 6)
!2046 = !DILocation(line: 852, column: 6, scope: !2032)
!2047 = !DILocation(line: 852, column: 31, scope: !2045)
!2048 = !DILocalVariable(name: "slh", scope: !2049, file: !3, line: 856, type: !2050)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 854, column: 8)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1706)
!2052 = !DILocation(line: 856, column: 29, scope: !2049)
!2053 = !DILocation(line: 856, column: 35, scope: !2049)
!2054 = !DILocalVariable(name: "elem", scope: !2049, file: !3, line: 858, type: !2055)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!2057 = !DILocation(line: 858, column: 22, scope: !2049)
!2058 = !DILocation(line: 858, column: 49, scope: !2049)
!2059 = !DILocation(line: 858, column: 54, scope: !2049)
!2060 = !DILocation(line: 858, column: 29, scope: !2049)
!2061 = !DILocation(line: 859, column: 8, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 859, column: 8)
!2063 = !DILocation(line: 859, column: 8, scope: !2049)
!2064 = !DILocation(line: 860, column: 10, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 860, column: 10)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 859, column: 14)
!2067 = !DILocation(line: 860, column: 10, scope: !2066)
!2068 = !DILocation(line: 860, column: 24, scope: !2065)
!2069 = !DILocation(line: 860, column: 30, scope: !2065)
!2070 = !DILocation(line: 860, column: 18, scope: !2065)
!2071 = !DILocation(line: 860, column: 23, scope: !2065)
!2072 = !DILocation(line: 860, column: 17, scope: !2065)
!2073 = !DILocation(line: 861, column: 7, scope: !2066)
!2074 = !DILocation(line: 864, column: 5, scope: !2049)
!2075 = !DILocation(line: 866, column: 1, scope: !2032)
!2076 = distinct !DISubprogram(name: "addr_list_get_const", scope: !3, file: !3, line: 766, type: !2077, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!2055, !2050, !1824}
!2079 = !DILocalVariable(name: "slh", arg: 1, scope: !2076, file: !3, line: 766, type: !2050)
!2080 = !DILocation(line: 766, column: 69, scope: !2076)
!2081 = !DILocalVariable(name: "key", arg: 2, scope: !2076, file: !3, line: 766, type: !1824)
!2082 = !DILocation(line: 766, column: 90, scope: !2076)
!2083 = !DILocation(line: 768, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 768, column: 6)
!2085 = !DILocation(line: 768, column: 11, scope: !2084)
!2086 = !DILocation(line: 768, column: 15, scope: !2084)
!2087 = !DILocation(line: 768, column: 6, scope: !2076)
!2088 = !DILocation(line: 768, column: 20, scope: !2084)
!2089 = !DILocalVariable(name: "i", scope: !2076, file: !3, line: 770, type: !56)
!2090 = !DILocation(line: 770, column: 10, scope: !2076)
!2091 = !DILocation(line: 772, column: 8, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 772, column: 3)
!2093 = !DILocation(line: 772, column: 7, scope: !2092)
!2094 = !DILocation(line: 772, column: 11, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 772, column: 3)
!2096 = !DILocation(line: 772, column: 12, scope: !2095)
!2097 = !DILocation(line: 772, column: 3, scope: !2092)
!2098 = !DILocalVariable(name: "elem", scope: !2099, file: !3, line: 773, type: !2055)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 772, column: 34)
!2100 = !DILocation(line: 773, column: 21, scope: !2099)
!2101 = !DILocation(line: 773, column: 28, scope: !2099)
!2102 = !DILocation(line: 773, column: 33, scope: !2099)
!2103 = !DILocation(line: 773, column: 43, scope: !2099)
!2104 = !DILocation(line: 774, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 774, column: 7)
!2106 = !DILocation(line: 774, column: 13, scope: !2105)
!2107 = !DILocation(line: 774, column: 7, scope: !2099)
!2108 = !DILocation(line: 775, column: 18, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 775, column: 8)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 774, column: 20)
!2111 = !DILocation(line: 775, column: 24, scope: !2109)
!2112 = !DILocation(line: 775, column: 29, scope: !2109)
!2113 = !DILocation(line: 775, column: 8, scope: !2109)
!2114 = !DILocation(line: 775, column: 8, scope: !2110)
!2115 = !DILocation(line: 776, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 775, column: 35)
!2117 = !DILocation(line: 776, column: 6, scope: !2116)
!2118 = !DILocation(line: 778, column: 4, scope: !2110)
!2119 = !DILocation(line: 779, column: 3, scope: !2099)
!2120 = !DILocation(line: 772, column: 29, scope: !2095)
!2121 = !DILocation(line: 772, column: 3, scope: !2095)
!2122 = distinct !{!2122, !2097, !2123, !295}
!2123 = !DILocation(line: 779, column: 3, scope: !2092)
!2124 = !DILocation(line: 781, column: 6, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 781, column: 6)
!2126 = !DILocation(line: 781, column: 11, scope: !2125)
!2127 = !DILocation(line: 781, column: 6, scope: !2076)
!2128 = !DILocation(line: 782, column: 13, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 782, column: 8)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 781, column: 23)
!2131 = !DILocation(line: 782, column: 12, scope: !2129)
!2132 = !DILocation(line: 782, column: 16, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 782, column: 8)
!2134 = !DILocation(line: 782, column: 18, scope: !2133)
!2135 = !DILocation(line: 782, column: 23, scope: !2133)
!2136 = !DILocation(line: 782, column: 17, scope: !2133)
!2137 = !DILocation(line: 782, column: 8, scope: !2129)
!2138 = !DILocalVariable(name: "elem", scope: !2139, file: !3, line: 783, type: !2055)
!2139 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 782, column: 37)
!2140 = !DILocation(line: 783, column: 26, scope: !2139)
!2141 = !DILocation(line: 783, column: 33, scope: !2139)
!2142 = !DILocation(line: 783, column: 38, scope: !2139)
!2143 = !DILocation(line: 783, column: 49, scope: !2139)
!2144 = !DILocation(line: 784, column: 12, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 784, column: 12)
!2146 = !DILocation(line: 784, column: 18, scope: !2145)
!2147 = !DILocation(line: 784, column: 12, scope: !2139)
!2148 = !DILocation(line: 785, column: 23, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 785, column: 13)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 784, column: 25)
!2151 = !DILocation(line: 785, column: 29, scope: !2149)
!2152 = !DILocation(line: 785, column: 34, scope: !2149)
!2153 = !DILocation(line: 785, column: 13, scope: !2149)
!2154 = !DILocation(line: 785, column: 13, scope: !2150)
!2155 = !DILocation(line: 786, column: 18, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 785, column: 40)
!2157 = !DILocation(line: 786, column: 11, scope: !2156)
!2158 = !DILocation(line: 788, column: 9, scope: !2150)
!2159 = !DILocation(line: 789, column: 8, scope: !2139)
!2160 = !DILocation(line: 782, column: 32, scope: !2133)
!2161 = !DILocation(line: 782, column: 8, scope: !2133)
!2162 = distinct !{!2162, !2137, !2163, !295}
!2163 = !DILocation(line: 789, column: 8, scope: !2129)
!2164 = !DILocation(line: 790, column: 3, scope: !2130)
!2165 = !DILocation(line: 792, column: 3, scope: !2076)
!2166 = !DILocation(line: 793, column: 1, scope: !2076)
!2167 = distinct !DISubprogram(name: "ur_addr_map_del", scope: !3, file: !3, line: 873, type: !2168, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!155, !1700, !1785, !2170}
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map_func", file: !9, line: 185, baseType: !2171)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !154}
!2174 = !DILocalVariable(name: "map", arg: 1, scope: !2167, file: !3, line: 873, type: !1700)
!2175 = !DILocation(line: 873, column: 34, scope: !2167)
!2176 = !DILocalVariable(name: "key", arg: 2, scope: !2167, file: !3, line: 873, type: !1785)
!2177 = !DILocation(line: 873, column: 49, scope: !2167)
!2178 = !DILocalVariable(name: "delfunc", arg: 3, scope: !2167, file: !3, line: 873, type: !2170)
!2179 = !DILocation(line: 873, column: 70, scope: !2167)
!2180 = !DILocation(line: 875, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 875, column: 6)
!2182 = !DILocation(line: 875, column: 6, scope: !2167)
!2183 = !DILocation(line: 875, column: 31, scope: !2181)
!2184 = !DILocalVariable(name: "slh", scope: !2185, file: !3, line: 879, type: !1762)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 877, column: 8)
!2186 = !DILocation(line: 879, column: 23, scope: !2185)
!2187 = !DILocation(line: 879, column: 29, scope: !2185)
!2188 = !DILocalVariable(name: "counter", scope: !2185, file: !3, line: 881, type: !155)
!2189 = !DILocation(line: 881, column: 9, scope: !2185)
!2190 = !DILocation(line: 883, column: 22, scope: !2185)
!2191 = !DILocation(line: 883, column: 27, scope: !2185)
!2192 = !DILocation(line: 883, column: 32, scope: !2185)
!2193 = !DILocation(line: 883, column: 5, scope: !2185)
!2194 = !DILocation(line: 885, column: 13, scope: !2185)
!2195 = !DILocation(line: 885, column: 20, scope: !2185)
!2196 = !DILocation(line: 885, column: 5, scope: !2185)
!2197 = !DILocation(line: 887, column: 1, scope: !2167)
!2198 = distinct !DISubprogram(name: "addr_list_remove", scope: !3, file: !3, line: 632, type: !2199, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !1762, !1824, !2170, !309}
!2201 = !DILocalVariable(name: "slh", arg: 1, scope: !2198, file: !3, line: 632, type: !1762)
!2202 = !DILocation(line: 632, column: 48, scope: !2198)
!2203 = !DILocalVariable(name: "key", arg: 2, scope: !2198, file: !3, line: 632, type: !1824)
!2204 = !DILocation(line: 632, column: 69, scope: !2198)
!2205 = !DILocalVariable(name: "delfunc", arg: 3, scope: !2198, file: !3, line: 633, type: !2170)
!2206 = !DILocation(line: 633, column: 25, scope: !2198)
!2207 = !DILocalVariable(name: "counter", arg: 4, scope: !2198, file: !3, line: 633, type: !309)
!2208 = !DILocation(line: 633, column: 39, scope: !2198)
!2209 = !DILocation(line: 634, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 634, column: 6)
!2211 = !DILocation(line: 634, column: 11, scope: !2210)
!2212 = !DILocation(line: 634, column: 15, scope: !2210)
!2213 = !DILocation(line: 634, column: 6, scope: !2198)
!2214 = !DILocation(line: 634, column: 20, scope: !2210)
!2215 = !DILocation(line: 636, column: 6, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 636, column: 6)
!2217 = !DILocation(line: 636, column: 6, scope: !2198)
!2218 = !DILocation(line: 637, column: 5, scope: !2216)
!2219 = !DILocation(line: 637, column: 13, scope: !2216)
!2220 = !DILocation(line: 637, column: 4, scope: !2216)
!2221 = !DILocalVariable(name: "i", scope: !2198, file: !3, line: 639, type: !56)
!2222 = !DILocation(line: 639, column: 10, scope: !2198)
!2223 = !DILocation(line: 641, column: 8, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 641, column: 3)
!2225 = !DILocation(line: 641, column: 7, scope: !2224)
!2226 = !DILocation(line: 641, column: 11, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 641, column: 3)
!2228 = !DILocation(line: 641, column: 12, scope: !2227)
!2229 = !DILocation(line: 641, column: 3, scope: !2224)
!2230 = !DILocalVariable(name: "elem", scope: !2231, file: !3, line: 642, type: !87)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 641, column: 34)
!2232 = !DILocation(line: 642, column: 13, scope: !2231)
!2233 = !DILocation(line: 642, column: 20, scope: !2231)
!2234 = !DILocation(line: 642, column: 25, scope: !2231)
!2235 = !DILocation(line: 642, column: 35, scope: !2231)
!2236 = !DILocation(line: 643, column: 5, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 643, column: 5)
!2238 = !DILocation(line: 643, column: 11, scope: !2237)
!2239 = !DILocation(line: 643, column: 5, scope: !2231)
!2240 = !DILocation(line: 644, column: 16, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 644, column: 6)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 643, column: 18)
!2243 = !DILocation(line: 644, column: 22, scope: !2241)
!2244 = !DILocation(line: 644, column: 27, scope: !2241)
!2245 = !DILocation(line: 644, column: 6, scope: !2241)
!2246 = !DILocation(line: 644, column: 6, scope: !2242)
!2247 = !DILocation(line: 645, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 645, column: 7)
!2249 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 644, column: 33)
!2250 = !DILocation(line: 645, column: 15, scope: !2248)
!2251 = !DILocation(line: 645, column: 18, scope: !2248)
!2252 = !DILocation(line: 645, column: 24, scope: !2248)
!2253 = !DILocation(line: 645, column: 7, scope: !2249)
!2254 = !DILocation(line: 646, column: 5, scope: !2248)
!2255 = !DILocation(line: 646, column: 13, scope: !2248)
!2256 = !DILocation(line: 646, column: 19, scope: !2248)
!2257 = !DILocation(line: 647, column: 4, scope: !2249)
!2258 = !DILocation(line: 647, column: 10, scope: !2249)
!2259 = !DILocation(line: 647, column: 16, scope: !2249)
!2260 = !DILocation(line: 648, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 648, column: 7)
!2262 = !DILocation(line: 648, column: 7, scope: !2249)
!2263 = !DILocation(line: 649, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 648, column: 16)
!2265 = !DILocation(line: 649, column: 15, scope: !2264)
!2266 = !DILocation(line: 650, column: 4, scope: !2264)
!2267 = !DILocation(line: 651, column: 3, scope: !2249)
!2268 = !DILocation(line: 652, column: 2, scope: !2242)
!2269 = !DILocation(line: 653, column: 3, scope: !2231)
!2270 = !DILocation(line: 641, column: 29, scope: !2227)
!2271 = !DILocation(line: 641, column: 3, scope: !2227)
!2272 = distinct !{!2272, !2229, !2273, !295}
!2273 = !DILocation(line: 653, column: 3, scope: !2224)
!2274 = !DILocation(line: 655, column: 6, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 655, column: 6)
!2276 = !DILocation(line: 655, column: 11, scope: !2275)
!2277 = !DILocation(line: 655, column: 6, scope: !2198)
!2278 = !DILocation(line: 656, column: 11, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 656, column: 6)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 655, column: 23)
!2281 = !DILocation(line: 656, column: 10, scope: !2279)
!2282 = !DILocation(line: 656, column: 14, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 656, column: 6)
!2284 = !DILocation(line: 656, column: 16, scope: !2283)
!2285 = !DILocation(line: 656, column: 21, scope: !2283)
!2286 = !DILocation(line: 656, column: 15, scope: !2283)
!2287 = !DILocation(line: 656, column: 6, scope: !2279)
!2288 = !DILocalVariable(name: "elem", scope: !2289, file: !3, line: 657, type: !87)
!2289 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 656, column: 35)
!2290 = !DILocation(line: 657, column: 18, scope: !2289)
!2291 = !DILocation(line: 657, column: 25, scope: !2289)
!2292 = !DILocation(line: 657, column: 30, scope: !2289)
!2293 = !DILocation(line: 657, column: 41, scope: !2289)
!2294 = !DILocation(line: 658, column: 10, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 658, column: 10)
!2296 = !DILocation(line: 658, column: 16, scope: !2295)
!2297 = !DILocation(line: 658, column: 10, scope: !2289)
!2298 = !DILocation(line: 659, column: 21, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 659, column: 11)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 658, column: 23)
!2301 = !DILocation(line: 659, column: 27, scope: !2299)
!2302 = !DILocation(line: 659, column: 32, scope: !2299)
!2303 = !DILocation(line: 659, column: 11, scope: !2299)
!2304 = !DILocation(line: 659, column: 11, scope: !2300)
!2305 = !DILocation(line: 660, column: 12, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 660, column: 12)
!2307 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 659, column: 38)
!2308 = !DILocation(line: 660, column: 20, scope: !2306)
!2309 = !DILocation(line: 660, column: 23, scope: !2306)
!2310 = !DILocation(line: 660, column: 29, scope: !2306)
!2311 = !DILocation(line: 660, column: 12, scope: !2307)
!2312 = !DILocation(line: 661, column: 10, scope: !2306)
!2313 = !DILocation(line: 661, column: 18, scope: !2306)
!2314 = !DILocation(line: 661, column: 24, scope: !2306)
!2315 = !DILocation(line: 662, column: 9, scope: !2307)
!2316 = !DILocation(line: 662, column: 15, scope: !2307)
!2317 = !DILocation(line: 662, column: 21, scope: !2307)
!2318 = !DILocation(line: 663, column: 12, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 663, column: 12)
!2320 = !DILocation(line: 663, column: 12, scope: !2307)
!2321 = !DILocation(line: 664, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 663, column: 21)
!2323 = !DILocation(line: 664, column: 19, scope: !2322)
!2324 = !DILocation(line: 665, column: 9, scope: !2322)
!2325 = !DILocation(line: 666, column: 8, scope: !2307)
!2326 = !DILocation(line: 667, column: 7, scope: !2300)
!2327 = !DILocation(line: 668, column: 6, scope: !2289)
!2328 = !DILocation(line: 656, column: 30, scope: !2283)
!2329 = !DILocation(line: 656, column: 6, scope: !2283)
!2330 = distinct !{!2330, !2287, !2331, !295}
!2331 = !DILocation(line: 668, column: 6, scope: !2279)
!2332 = !DILocation(line: 669, column: 3, scope: !2280)
!2333 = !DILocation(line: 670, column: 1, scope: !2198)
!2334 = distinct !DISubprogram(name: "ur_addr_map_foreach", scope: !3, file: !3, line: 894, type: !2335, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !1700, !2170}
!2337 = !DILocalVariable(name: "map", arg: 1, scope: !2334, file: !3, line: 894, type: !1700)
!2338 = !DILocation(line: 894, column: 39, scope: !2334)
!2339 = !DILocalVariable(name: "func", arg: 2, scope: !2334, file: !3, line: 894, type: !2170)
!2340 = !DILocation(line: 894, column: 61, scope: !2334)
!2341 = !DILocation(line: 896, column: 6, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 896, column: 6)
!2343 = !DILocation(line: 896, column: 6, scope: !2334)
!2344 = !DILocalVariable(name: "i", scope: !2345, file: !3, line: 898, type: !20)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 896, column: 30)
!2346 = !DILocation(line: 898, column: 14, scope: !2345)
!2347 = !DILocation(line: 899, column: 10, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 899, column: 5)
!2349 = !DILocation(line: 899, column: 9, scope: !2348)
!2350 = !DILocation(line: 899, column: 13, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 899, column: 5)
!2352 = !DILocation(line: 899, column: 14, scope: !2351)
!2353 = !DILocation(line: 899, column: 5, scope: !2348)
!2354 = !DILocalVariable(name: "slh", scope: !2355, file: !3, line: 901, type: !1762)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 899, column: 34)
!2356 = !DILocation(line: 901, column: 25, scope: !2355)
!2357 = !DILocation(line: 901, column: 33, scope: !2355)
!2358 = !DILocation(line: 901, column: 38, scope: !2355)
!2359 = !DILocation(line: 901, column: 44, scope: !2355)
!2360 = !DILocation(line: 903, column: 25, scope: !2355)
!2361 = !DILocation(line: 903, column: 30, scope: !2355)
!2362 = !DILocation(line: 903, column: 7, scope: !2355)
!2363 = !DILocation(line: 904, column: 5, scope: !2355)
!2364 = !DILocation(line: 899, column: 30, scope: !2351)
!2365 = !DILocation(line: 899, column: 5, scope: !2351)
!2366 = distinct !{!2366, !2353, !2367, !295}
!2367 = !DILocation(line: 904, column: 5, scope: !2348)
!2368 = !DILocation(line: 905, column: 3, scope: !2345)
!2369 = !DILocation(line: 906, column: 1, scope: !2334)
!2370 = distinct !DISubprogram(name: "addr_list_foreach", scope: !3, file: !3, line: 672, type: !2371, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !1762, !2170}
!2373 = !DILocalVariable(name: "slh", arg: 1, scope: !2370, file: !3, line: 672, type: !1762)
!2374 = !DILocation(line: 672, column: 49, scope: !2370)
!2375 = !DILocalVariable(name: "func", arg: 2, scope: !2370, file: !3, line: 672, type: !2170)
!2376 = !DILocation(line: 672, column: 72, scope: !2370)
!2377 = !DILocation(line: 673, column: 6, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 673, column: 6)
!2379 = !DILocation(line: 673, column: 10, scope: !2378)
!2380 = !DILocation(line: 673, column: 13, scope: !2378)
!2381 = !DILocation(line: 673, column: 6, scope: !2370)
!2382 = !DILocalVariable(name: "i", scope: !2383, file: !3, line: 675, type: !56)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 673, column: 19)
!2384 = !DILocation(line: 675, column: 15, scope: !2383)
!2385 = !DILocation(line: 677, column: 13, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 677, column: 8)
!2387 = !DILocation(line: 677, column: 12, scope: !2386)
!2388 = !DILocation(line: 677, column: 16, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 677, column: 8)
!2390 = !DILocation(line: 677, column: 17, scope: !2389)
!2391 = !DILocation(line: 677, column: 8, scope: !2386)
!2392 = !DILocalVariable(name: "elem", scope: !2393, file: !3, line: 678, type: !87)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 677, column: 39)
!2394 = !DILocation(line: 678, column: 20, scope: !2393)
!2395 = !DILocation(line: 678, column: 27, scope: !2393)
!2396 = !DILocation(line: 678, column: 32, scope: !2393)
!2397 = !DILocation(line: 678, column: 42, scope: !2393)
!2398 = !DILocation(line: 679, column: 12, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 679, column: 12)
!2400 = !DILocation(line: 679, column: 18, scope: !2399)
!2401 = !DILocation(line: 679, column: 12, scope: !2393)
!2402 = !DILocation(line: 680, column: 10, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 679, column: 25)
!2404 = !DILocation(line: 680, column: 15, scope: !2403)
!2405 = !DILocation(line: 680, column: 21, scope: !2403)
!2406 = !DILocation(line: 681, column: 9, scope: !2403)
!2407 = !DILocation(line: 682, column: 8, scope: !2393)
!2408 = !DILocation(line: 677, column: 34, scope: !2389)
!2409 = !DILocation(line: 677, column: 8, scope: !2389)
!2410 = distinct !{!2410, !2391, !2411, !295}
!2411 = !DILocation(line: 682, column: 8, scope: !2386)
!2412 = !DILocation(line: 684, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 684, column: 7)
!2414 = !DILocation(line: 684, column: 12, scope: !2413)
!2415 = !DILocation(line: 684, column: 7, scope: !2383)
!2416 = !DILocation(line: 685, column: 14, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 685, column: 9)
!2418 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 684, column: 24)
!2419 = !DILocation(line: 685, column: 13, scope: !2417)
!2420 = !DILocation(line: 685, column: 17, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 685, column: 9)
!2422 = !DILocation(line: 685, column: 19, scope: !2421)
!2423 = !DILocation(line: 685, column: 24, scope: !2421)
!2424 = !DILocation(line: 685, column: 18, scope: !2421)
!2425 = !DILocation(line: 685, column: 9, scope: !2417)
!2426 = !DILocalVariable(name: "elem", scope: !2427, file: !3, line: 686, type: !87)
!2427 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 685, column: 38)
!2428 = !DILocation(line: 686, column: 21, scope: !2427)
!2429 = !DILocation(line: 686, column: 28, scope: !2427)
!2430 = !DILocation(line: 686, column: 33, scope: !2427)
!2431 = !DILocation(line: 686, column: 44, scope: !2427)
!2432 = !DILocation(line: 687, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 687, column: 13)
!2434 = !DILocation(line: 687, column: 19, scope: !2433)
!2435 = !DILocation(line: 687, column: 13, scope: !2427)
!2436 = !DILocation(line: 688, column: 9, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 687, column: 26)
!2438 = !DILocation(line: 688, column: 14, scope: !2437)
!2439 = !DILocation(line: 688, column: 20, scope: !2437)
!2440 = !DILocation(line: 689, column: 10, scope: !2437)
!2441 = !DILocation(line: 690, column: 9, scope: !2427)
!2442 = !DILocation(line: 685, column: 33, scope: !2421)
!2443 = !DILocation(line: 685, column: 9, scope: !2421)
!2444 = distinct !{!2444, !2425, !2445, !295}
!2445 = !DILocation(line: 690, column: 9, scope: !2417)
!2446 = !DILocation(line: 691, column: 6, scope: !2418)
!2447 = !DILocation(line: 692, column: 3, scope: !2383)
!2448 = !DILocation(line: 693, column: 1, scope: !2370)
!2449 = distinct !DISubprogram(name: "ur_addr_map_num_elements", scope: !3, file: !3, line: 908, type: !2450, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!56, !2035}
!2452 = !DILocalVariable(name: "map", arg: 1, scope: !2449, file: !3, line: 908, type: !2035)
!2453 = !DILocation(line: 908, column: 52, scope: !2449)
!2454 = !DILocalVariable(name: "ret", scope: !2449, file: !3, line: 910, type: !56)
!2455 = !DILocation(line: 910, column: 9, scope: !2449)
!2456 = !DILocation(line: 912, column: 6, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 912, column: 6)
!2458 = !DILocation(line: 912, column: 6, scope: !2449)
!2459 = !DILocalVariable(name: "i", scope: !2460, file: !3, line: 913, type: !20)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 912, column: 30)
!2461 = !DILocation(line: 913, column: 12, scope: !2460)
!2462 = !DILocation(line: 914, column: 10, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 914, column: 3)
!2464 = !DILocation(line: 914, column: 8, scope: !2463)
!2465 = !DILocation(line: 914, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 914, column: 3)
!2467 = !DILocation(line: 914, column: 17, scope: !2466)
!2468 = !DILocation(line: 914, column: 3, scope: !2463)
!2469 = !DILocalVariable(name: "slh", scope: !2470, file: !3, line: 916, type: !2050)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 914, column: 39)
!2471 = !DILocation(line: 916, column: 28, scope: !2470)
!2472 = !DILocation(line: 916, column: 36, scope: !2470)
!2473 = !DILocation(line: 916, column: 41, scope: !2470)
!2474 = !DILocation(line: 916, column: 47, scope: !2470)
!2475 = !DILocation(line: 918, column: 34, scope: !2470)
!2476 = !DILocation(line: 918, column: 11, scope: !2470)
!2477 = !DILocation(line: 918, column: 8, scope: !2470)
!2478 = !DILocation(line: 919, column: 3, scope: !2470)
!2479 = !DILocation(line: 914, column: 35, scope: !2466)
!2480 = !DILocation(line: 914, column: 3, scope: !2466)
!2481 = distinct !{!2481, !2468, !2482, !295}
!2482 = !DILocation(line: 919, column: 3, scope: !2463)
!2483 = !DILocation(line: 920, column: 2, scope: !2460)
!2484 = !DILocation(line: 922, column: 9, scope: !2449)
!2485 = !DILocation(line: 922, column: 2, scope: !2449)
!2486 = distinct !DISubprogram(name: "addr_list_num_elements", scope: !3, file: !3, line: 695, type: !2487, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!56, !2050}
!2489 = !DILocalVariable(name: "slh", arg: 1, scope: !2486, file: !3, line: 695, type: !2050)
!2490 = !DILocation(line: 695, column: 62, scope: !2486)
!2491 = !DILocalVariable(name: "ret", scope: !2486, file: !3, line: 697, type: !56)
!2492 = !DILocation(line: 697, column: 9, scope: !2486)
!2493 = !DILocation(line: 699, column: 6, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 699, column: 6)
!2495 = !DILocation(line: 699, column: 6, scope: !2486)
!2496 = !DILocalVariable(name: "i", scope: !2497, file: !3, line: 701, type: !56)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 699, column: 11)
!2498 = !DILocation(line: 701, column: 10, scope: !2497)
!2499 = !DILocation(line: 703, column: 10, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 703, column: 3)
!2501 = !DILocation(line: 703, column: 8, scope: !2500)
!2502 = !DILocation(line: 703, column: 15, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 703, column: 3)
!2504 = !DILocation(line: 703, column: 17, scope: !2503)
!2505 = !DILocation(line: 703, column: 3, scope: !2500)
!2506 = !DILocalVariable(name: "elem", scope: !2507, file: !3, line: 704, type: !2055)
!2507 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 703, column: 41)
!2508 = !DILocation(line: 704, column: 21, scope: !2507)
!2509 = !DILocation(line: 704, column: 30, scope: !2507)
!2510 = !DILocation(line: 704, column: 35, scope: !2507)
!2511 = !DILocation(line: 704, column: 45, scope: !2507)
!2512 = !DILocation(line: 705, column: 8, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 705, column: 8)
!2514 = !DILocation(line: 705, column: 14, scope: !2513)
!2515 = !DILocation(line: 705, column: 8, scope: !2507)
!2516 = !DILocation(line: 706, column: 5, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 705, column: 21)
!2518 = !DILocation(line: 707, column: 4, scope: !2517)
!2519 = !DILocation(line: 708, column: 3, scope: !2507)
!2520 = !DILocation(line: 703, column: 36, scope: !2503)
!2521 = !DILocation(line: 703, column: 3, scope: !2503)
!2522 = distinct !{!2522, !2505, !2523, !295}
!2523 = !DILocation(line: 708, column: 3, scope: !2500)
!2524 = !DILocation(line: 710, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 710, column: 7)
!2526 = !DILocation(line: 710, column: 12, scope: !2525)
!2527 = !DILocation(line: 710, column: 7, scope: !2497)
!2528 = !DILocation(line: 711, column: 11, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 711, column: 4)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 710, column: 24)
!2531 = !DILocation(line: 711, column: 9, scope: !2529)
!2532 = !DILocation(line: 711, column: 16, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 711, column: 4)
!2534 = !DILocation(line: 711, column: 20, scope: !2533)
!2535 = !DILocation(line: 711, column: 25, scope: !2533)
!2536 = !DILocation(line: 711, column: 18, scope: !2533)
!2537 = !DILocation(line: 711, column: 4, scope: !2529)
!2538 = !DILocalVariable(name: "elem", scope: !2539, file: !3, line: 712, type: !87)
!2539 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 711, column: 40)
!2540 = !DILocation(line: 712, column: 16, scope: !2539)
!2541 = !DILocation(line: 712, column: 25, scope: !2539)
!2542 = !DILocation(line: 712, column: 30, scope: !2539)
!2543 = !DILocation(line: 712, column: 41, scope: !2539)
!2544 = !DILocation(line: 713, column: 9, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 713, column: 9)
!2546 = !DILocation(line: 713, column: 15, scope: !2545)
!2547 = !DILocation(line: 713, column: 9, scope: !2539)
!2548 = !DILocation(line: 714, column: 6, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 713, column: 22)
!2550 = !DILocation(line: 715, column: 5, scope: !2549)
!2551 = !DILocation(line: 716, column: 4, scope: !2539)
!2552 = !DILocation(line: 711, column: 35, scope: !2533)
!2553 = !DILocation(line: 711, column: 4, scope: !2533)
!2554 = distinct !{!2554, !2537, !2555, !295}
!2555 = !DILocation(line: 716, column: 4, scope: !2529)
!2556 = !DILocation(line: 717, column: 3, scope: !2530)
!2557 = !DILocation(line: 718, column: 2, scope: !2497)
!2558 = !DILocation(line: 720, column: 9, scope: !2486)
!2559 = !DILocation(line: 720, column: 2, scope: !2486)
!2560 = distinct !DISubprogram(name: "ur_addr_map_size", scope: !3, file: !3, line: 925, type: !2450, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2561 = !DILocalVariable(name: "map", arg: 1, scope: !2560, file: !3, line: 925, type: !2035)
!2562 = !DILocation(line: 925, column: 44, scope: !2560)
!2563 = !DILocalVariable(name: "ret", scope: !2560, file: !3, line: 927, type: !56)
!2564 = !DILocation(line: 927, column: 9, scope: !2560)
!2565 = !DILocation(line: 929, column: 6, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 929, column: 6)
!2567 = !DILocation(line: 929, column: 6, scope: !2560)
!2568 = !DILocalVariable(name: "i", scope: !2569, file: !3, line: 930, type: !20)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 929, column: 30)
!2570 = !DILocation(line: 930, column: 12, scope: !2569)
!2571 = !DILocation(line: 931, column: 10, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 931, column: 3)
!2573 = !DILocation(line: 931, column: 8, scope: !2572)
!2574 = !DILocation(line: 931, column: 15, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 931, column: 3)
!2576 = !DILocation(line: 931, column: 17, scope: !2575)
!2577 = !DILocation(line: 931, column: 3, scope: !2572)
!2578 = !DILocalVariable(name: "slh", scope: !2579, file: !3, line: 933, type: !2050)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 931, column: 39)
!2580 = !DILocation(line: 933, column: 28, scope: !2579)
!2581 = !DILocation(line: 933, column: 36, scope: !2579)
!2582 = !DILocation(line: 933, column: 41, scope: !2579)
!2583 = !DILocation(line: 933, column: 47, scope: !2579)
!2584 = !DILocation(line: 935, column: 26, scope: !2579)
!2585 = !DILocation(line: 935, column: 11, scope: !2579)
!2586 = !DILocation(line: 935, column: 8, scope: !2579)
!2587 = !DILocation(line: 936, column: 3, scope: !2579)
!2588 = !DILocation(line: 931, column: 35, scope: !2575)
!2589 = !DILocation(line: 931, column: 3, scope: !2575)
!2590 = distinct !{!2590, !2577, !2591, !295}
!2591 = !DILocation(line: 936, column: 3, scope: !2572)
!2592 = !DILocation(line: 937, column: 2, scope: !2569)
!2593 = !DILocation(line: 939, column: 9, scope: !2560)
!2594 = !DILocation(line: 939, column: 2, scope: !2560)
!2595 = distinct !DISubprogram(name: "addr_list_size", scope: !3, file: !3, line: 723, type: !2487, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2596 = !DILocalVariable(name: "slh", arg: 1, scope: !2595, file: !3, line: 723, type: !2050)
!2597 = !DILocation(line: 723, column: 54, scope: !2595)
!2598 = !DILocalVariable(name: "ret", scope: !2595, file: !3, line: 725, type: !56)
!2599 = !DILocation(line: 725, column: 9, scope: !2595)
!2600 = !DILocation(line: 727, column: 6, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 727, column: 6)
!2602 = !DILocation(line: 727, column: 6, scope: !2595)
!2603 = !DILocation(line: 729, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 727, column: 11)
!2605 = !DILocation(line: 731, column: 10, scope: !2604)
!2606 = !DILocation(line: 731, column: 15, scope: !2604)
!2607 = !DILocation(line: 731, column: 7, scope: !2604)
!2608 = !DILocation(line: 732, column: 2, scope: !2604)
!2609 = !DILocation(line: 734, column: 9, scope: !2595)
!2610 = !DILocation(line: 734, column: 2, scope: !2595)
!2611 = distinct !DISubprogram(name: "ur_string_map_create", scope: !3, file: !3, line: 1069, type: !2612, scopeLine: 1069, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!61, !81}
!2614 = !DILocalVariable(name: "del_value_func", arg: 1, scope: !2611, file: !3, line: 1069, type: !81)
!2615 = !DILocation(line: 1069, column: 56, scope: !2611)
!2616 = !DILocalVariable(name: "map", scope: !2611, file: !3, line: 1070, type: !61)
!2617 = !DILocation(line: 1070, column: 18, scope: !2611)
!2618 = !DILocation(line: 1070, column: 38, scope: !2611)
!2619 = !DILocation(line: 1071, column: 25, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1071, column: 6)
!2621 = !DILocation(line: 1071, column: 6, scope: !2620)
!2622 = !DILocation(line: 1071, column: 29, scope: !2620)
!2623 = !DILocation(line: 1071, column: 6, scope: !2611)
!2624 = !DILocation(line: 1072, column: 10, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 1071, column: 33)
!2626 = !DILocation(line: 1072, column: 5, scope: !2625)
!2627 = !DILocation(line: 1073, column: 5, scope: !2625)
!2628 = !DILocation(line: 1075, column: 25, scope: !2611)
!2629 = !DILocation(line: 1075, column: 3, scope: !2611)
!2630 = !DILocation(line: 1075, column: 8, scope: !2611)
!2631 = !DILocation(line: 1075, column: 23, scope: !2611)
!2632 = !DILocation(line: 1076, column: 10, scope: !2611)
!2633 = !DILocation(line: 1076, column: 3, scope: !2611)
!2634 = !DILocation(line: 1077, column: 1, scope: !2611)
!2635 = distinct !DISubprogram(name: "ur_string_map_init", scope: !3, file: !3, line: 1053, type: !2636, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!155, !61}
!2638 = !DILocalVariable(name: "map", arg: 1, scope: !2635, file: !3, line: 1053, type: !61)
!2639 = !DILocation(line: 1053, column: 46, scope: !2635)
!2640 = !DILocation(line: 1054, column: 6, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 1054, column: 6)
!2642 = !DILocation(line: 1054, column: 6, scope: !2635)
!2643 = !DILocation(line: 1055, column: 11, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1054, column: 11)
!2645 = !DILocation(line: 1055, column: 5, scope: !2644)
!2646 = !DILocation(line: 1056, column: 5, scope: !2644)
!2647 = !DILocation(line: 1056, column: 10, scope: !2644)
!2648 = !DILocation(line: 1056, column: 15, scope: !2644)
!2649 = !DILocation(line: 1058, column: 5, scope: !2644)
!2650 = !DILocation(line: 1060, column: 5, scope: !2644)
!2651 = !DILocation(line: 1062, column: 3, scope: !2635)
!2652 = !DILocation(line: 1063, column: 1, scope: !2635)
!2653 = distinct !DISubprogram(name: "ur_string_map_put", scope: !3, file: !3, line: 1085, type: !2654, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!155, !61, !2656, !85}
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!2657 = !DILocalVariable(name: "map", arg: 1, scope: !2653, file: !3, line: 1085, type: !61)
!2658 = !DILocation(line: 1085, column: 38, scope: !2653)
!2659 = !DILocalVariable(name: "key", arg: 2, scope: !2653, file: !3, line: 1085, type: !2656)
!2660 = !DILocation(line: 1085, column: 72, scope: !2653)
!2661 = !DILocalVariable(name: "value", arg: 3, scope: !2653, file: !3, line: 1085, type: !85)
!2662 = !DILocation(line: 1085, column: 102, scope: !2653)
!2663 = !DILocation(line: 1087, column: 27, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 1087, column: 6)
!2665 = !DILocation(line: 1087, column: 7, scope: !2664)
!2666 = !DILocation(line: 1087, column: 6, scope: !2653)
!2667 = !DILocation(line: 1087, column: 33, scope: !2664)
!2668 = !DILocalVariable(name: "slh", scope: !2669, file: !3, line: 1091, type: !2670)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1089, column: 8)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!2671 = !DILocation(line: 1091, column: 25, scope: !2669)
!2672 = !DILocation(line: 1091, column: 54, scope: !2669)
!2673 = !DILocation(line: 1091, column: 59, scope: !2669)
!2674 = !DILocation(line: 1091, column: 31, scope: !2669)
!2675 = !DILocalVariable(name: "elem", scope: !2669, file: !3, line: 1093, type: !157)
!2676 = !DILocation(line: 1093, column: 18, scope: !2669)
!2677 = !DILocation(line: 1093, column: 41, scope: !2669)
!2678 = !DILocation(line: 1093, column: 46, scope: !2669)
!2679 = !DILocation(line: 1093, column: 52, scope: !2669)
!2680 = !DILocation(line: 1093, column: 25, scope: !2669)
!2681 = !DILocation(line: 1094, column: 8, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1094, column: 8)
!2683 = !DILocation(line: 1094, column: 8, scope: !2669)
!2684 = !DILocation(line: 1095, column: 10, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 1095, column: 10)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 1094, column: 14)
!2687 = !DILocation(line: 1095, column: 16, scope: !2685)
!2688 = !DILocation(line: 1095, column: 25, scope: !2685)
!2689 = !DILocation(line: 1095, column: 22, scope: !2685)
!2690 = !DILocation(line: 1095, column: 10, scope: !2686)
!2691 = !DILocation(line: 1096, column: 11, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1096, column: 11)
!2693 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1095, column: 32)
!2694 = !DILocation(line: 1096, column: 16, scope: !2692)
!2695 = !DILocation(line: 1096, column: 11, scope: !2693)
!2696 = !DILocation(line: 1097, column: 9, scope: !2692)
!2697 = !DILocation(line: 1097, column: 14, scope: !2692)
!2698 = !DILocation(line: 1097, column: 29, scope: !2692)
!2699 = !DILocation(line: 1097, column: 35, scope: !2692)
!2700 = !DILocation(line: 1098, column: 22, scope: !2693)
!2701 = !DILocation(line: 1098, column: 8, scope: !2693)
!2702 = !DILocation(line: 1098, column: 14, scope: !2693)
!2703 = !DILocation(line: 1098, column: 20, scope: !2693)
!2704 = !DILocation(line: 1099, column: 7, scope: !2693)
!2705 = !DILocation(line: 1100, column: 7, scope: !2686)
!2706 = !DILocation(line: 1103, column: 31, scope: !2669)
!2707 = !DILocation(line: 1103, column: 36, scope: !2669)
!2708 = !DILocation(line: 1103, column: 41, scope: !2669)
!2709 = !DILocation(line: 1103, column: 45, scope: !2669)
!2710 = !DILocation(line: 1103, column: 15, scope: !2669)
!2711 = !DILocation(line: 1103, column: 5, scope: !2669)
!2712 = !DILocation(line: 1103, column: 10, scope: !2669)
!2713 = !DILocation(line: 1103, column: 14, scope: !2669)
!2714 = !DILocation(line: 1105, column: 5, scope: !2669)
!2715 = !DILocation(line: 1107, column: 1, scope: !2653)
!2716 = distinct !DISubprogram(name: "ur_string_map_valid", scope: !3, file: !3, line: 1065, type: !2717, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!155, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!2721 = !DILocalVariable(name: "map", arg: 1, scope: !2716, file: !3, line: 1065, type: !2719)
!2722 = !DILocation(line: 1065, column: 53, scope: !2716)
!2723 = !DILocation(line: 1066, column: 11, scope: !2716)
!2724 = !DILocation(line: 1066, column: 15, scope: !2716)
!2725 = !DILocation(line: 1066, column: 18, scope: !2716)
!2726 = !DILocation(line: 1066, column: 23, scope: !2716)
!2727 = !DILocation(line: 1066, column: 28, scope: !2716)
!2728 = !DILocation(line: 0, scope: !2716)
!2729 = !DILocation(line: 1066, column: 3, scope: !2716)
!2730 = distinct !DISubprogram(name: "get_string_list_header", scope: !3, file: !3, line: 1049, type: !2731, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!2670, !61, !2656}
!2733 = !DILocalVariable(name: "map", arg: 1, scope: !2730, file: !3, line: 1049, type: !61)
!2734 = !DILocation(line: 1049, column: 66, scope: !2730)
!2735 = !DILocalVariable(name: "key", arg: 2, scope: !2730, file: !3, line: 1049, type: !2656)
!2736 = !DILocation(line: 1049, column: 100, scope: !2730)
!2737 = !DILocation(line: 1050, column: 12, scope: !2730)
!2738 = !DILocation(line: 1050, column: 17, scope: !2730)
!2739 = !DILocation(line: 1050, column: 40, scope: !2730)
!2740 = !DILocation(line: 1050, column: 23, scope: !2730)
!2741 = !DILocation(line: 1050, column: 3, scope: !2730)
!2742 = distinct !DISubprogram(name: "string_list_get", scope: !3, file: !3, line: 1009, type: !2743, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!157, !71, !2656}
!2745 = !DILocalVariable(name: "sl", arg: 1, scope: !2742, file: !3, line: 1009, type: !71)
!2746 = !DILocation(line: 1009, column: 50, scope: !2742)
!2747 = !DILocalVariable(name: "key", arg: 2, scope: !2742, file: !3, line: 1009, type: !2656)
!2748 = !DILocation(line: 1009, column: 83, scope: !2742)
!2749 = !DILocation(line: 1011, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 1011, column: 6)
!2751 = !DILocation(line: 1011, column: 10, scope: !2750)
!2752 = !DILocation(line: 1011, column: 14, scope: !2750)
!2753 = !DILocation(line: 1011, column: 6, scope: !2742)
!2754 = !DILocation(line: 1011, column: 19, scope: !2750)
!2755 = !DILocalVariable(name: "elem", scope: !2742, file: !3, line: 1013, type: !157)
!2756 = !DILocation(line: 1013, column: 16, scope: !2742)
!2757 = !DILocation(line: 1013, column: 35, scope: !2742)
!2758 = !DILocation(line: 1014, column: 13, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 1014, column: 6)
!2760 = !DILocation(line: 1014, column: 19, scope: !2759)
!2761 = !DILocation(line: 1014, column: 23, scope: !2759)
!2762 = !DILocation(line: 1014, column: 6, scope: !2759)
!2763 = !DILocation(line: 1014, column: 27, scope: !2759)
!2764 = !DILocation(line: 1014, column: 6, scope: !2742)
!2765 = !DILocation(line: 1015, column: 12, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 1014, column: 32)
!2767 = !DILocation(line: 1015, column: 5, scope: !2766)
!2768 = !DILocation(line: 1017, column: 28, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 1016, column: 10)
!2770 = !DILocation(line: 1017, column: 34, scope: !2769)
!2771 = !DILocation(line: 1017, column: 39, scope: !2769)
!2772 = !DILocation(line: 1017, column: 45, scope: !2769)
!2773 = !DILocation(line: 1017, column: 12, scope: !2769)
!2774 = !DILocation(line: 1017, column: 5, scope: !2769)
!2775 = !DILocation(line: 1019, column: 1, scope: !2742)
!2776 = distinct !DISubprogram(name: "string_list_add", scope: !3, file: !3, line: 980, type: !2777, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!71, !71, !2656, !85}
!2779 = !DILocalVariable(name: "sl", arg: 1, scope: !2776, file: !3, line: 980, type: !71)
!2780 = !DILocation(line: 980, column: 50, scope: !2776)
!2781 = !DILocalVariable(name: "key", arg: 2, scope: !2776, file: !3, line: 980, type: !2656)
!2782 = !DILocation(line: 980, column: 83, scope: !2776)
!2783 = !DILocalVariable(name: "value", arg: 3, scope: !2776, file: !3, line: 980, type: !85)
!2784 = !DILocation(line: 980, column: 113, scope: !2776)
!2785 = !DILocation(line: 981, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 981, column: 6)
!2787 = !DILocation(line: 981, column: 6, scope: !2776)
!2788 = !DILocation(line: 981, column: 19, scope: !2786)
!2789 = !DILocation(line: 981, column: 12, scope: !2786)
!2790 = !DILocalVariable(name: "elem", scope: !2776, file: !3, line: 982, type: !157)
!2791 = !DILocation(line: 982, column: 16, scope: !2776)
!2792 = !DILocation(line: 982, column: 35, scope: !2776)
!2793 = !DILocation(line: 983, column: 19, scope: !2776)
!2794 = !DILocation(line: 983, column: 3, scope: !2776)
!2795 = !DILocation(line: 983, column: 9, scope: !2776)
!2796 = !DILocation(line: 983, column: 14, scope: !2776)
!2797 = !DILocation(line: 983, column: 18, scope: !2776)
!2798 = !DILocation(line: 984, column: 27, scope: !2776)
!2799 = !DILocation(line: 984, column: 20, scope: !2776)
!2800 = !DILocation(line: 984, column: 31, scope: !2776)
!2801 = !DILocation(line: 984, column: 3, scope: !2776)
!2802 = !DILocation(line: 984, column: 9, scope: !2776)
!2803 = !DILocation(line: 984, column: 18, scope: !2776)
!2804 = !DILocation(line: 985, column: 27, scope: !2776)
!2805 = !DILocation(line: 985, column: 33, scope: !2776)
!2806 = !DILocation(line: 985, column: 20, scope: !2776)
!2807 = !DILocation(line: 985, column: 3, scope: !2776)
!2808 = !DILocation(line: 985, column: 9, scope: !2776)
!2809 = !DILocation(line: 985, column: 12, scope: !2776)
!2810 = !DILocation(line: 986, column: 9, scope: !2776)
!2811 = !DILocation(line: 986, column: 13, scope: !2776)
!2812 = !DILocation(line: 986, column: 19, scope: !2776)
!2813 = !DILocation(line: 986, column: 23, scope: !2776)
!2814 = !DILocation(line: 986, column: 29, scope: !2776)
!2815 = !DILocation(line: 986, column: 3, scope: !2776)
!2816 = !DILocation(line: 987, column: 15, scope: !2776)
!2817 = !DILocation(line: 987, column: 3, scope: !2776)
!2818 = !DILocation(line: 987, column: 9, scope: !2776)
!2819 = !DILocation(line: 987, column: 14, scope: !2776)
!2820 = !DILocation(line: 988, column: 12, scope: !2776)
!2821 = !DILocation(line: 988, column: 18, scope: !2776)
!2822 = !DILocation(line: 988, column: 3, scope: !2776)
!2823 = !DILocation(line: 989, column: 1, scope: !2776)
!2824 = distinct !DISubprogram(name: "ur_string_map_get", scope: !3, file: !3, line: 1114, type: !2825, scopeLine: 1114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!155, !61, !2656, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2828 = !DILocalVariable(name: "map", arg: 1, scope: !2824, file: !3, line: 1114, type: !61)
!2829 = !DILocation(line: 1114, column: 38, scope: !2824)
!2830 = !DILocalVariable(name: "key", arg: 2, scope: !2824, file: !3, line: 1114, type: !2656)
!2831 = !DILocation(line: 1114, column: 72, scope: !2824)
!2832 = !DILocalVariable(name: "value", arg: 3, scope: !2824, file: !3, line: 1114, type: !2827)
!2833 = !DILocation(line: 1114, column: 103, scope: !2824)
!2834 = !DILocation(line: 1116, column: 27, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1116, column: 6)
!2836 = !DILocation(line: 1116, column: 7, scope: !2835)
!2837 = !DILocation(line: 1116, column: 6, scope: !2824)
!2838 = !DILocation(line: 1116, column: 33, scope: !2835)
!2839 = !DILocalVariable(name: "slh", scope: !2840, file: !3, line: 1120, type: !2670)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 1118, column: 8)
!2841 = !DILocation(line: 1120, column: 25, scope: !2840)
!2842 = !DILocation(line: 1120, column: 54, scope: !2840)
!2843 = !DILocation(line: 1120, column: 59, scope: !2840)
!2844 = !DILocation(line: 1120, column: 31, scope: !2840)
!2845 = !DILocalVariable(name: "elem", scope: !2840, file: !3, line: 1121, type: !157)
!2846 = !DILocation(line: 1121, column: 18, scope: !2840)
!2847 = !DILocation(line: 1121, column: 41, scope: !2840)
!2848 = !DILocation(line: 1121, column: 46, scope: !2840)
!2849 = !DILocation(line: 1121, column: 52, scope: !2840)
!2850 = !DILocation(line: 1121, column: 25, scope: !2840)
!2851 = !DILocation(line: 1122, column: 8, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1122, column: 8)
!2853 = !DILocation(line: 1122, column: 8, scope: !2840)
!2854 = !DILocation(line: 1123, column: 10, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1123, column: 10)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1122, column: 14)
!2857 = !DILocation(line: 1123, column: 10, scope: !2856)
!2858 = !DILocation(line: 1123, column: 24, scope: !2855)
!2859 = !DILocation(line: 1123, column: 30, scope: !2855)
!2860 = !DILocation(line: 1123, column: 18, scope: !2855)
!2861 = !DILocation(line: 1123, column: 23, scope: !2855)
!2862 = !DILocation(line: 1123, column: 17, scope: !2855)
!2863 = !DILocation(line: 1124, column: 7, scope: !2856)
!2864 = !DILocation(line: 1126, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1125, column: 12)
!2866 = !DILocation(line: 1129, column: 1, scope: !2824)
!2867 = distinct !DISubprogram(name: "ur_string_map_del", scope: !3, file: !3, line: 1136, type: !2868, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!155, !61, !2656}
!2870 = !DILocalVariable(name: "map", arg: 1, scope: !2867, file: !3, line: 1136, type: !61)
!2871 = !DILocation(line: 1136, column: 38, scope: !2867)
!2872 = !DILocalVariable(name: "key", arg: 2, scope: !2867, file: !3, line: 1136, type: !2656)
!2873 = !DILocation(line: 1136, column: 72, scope: !2867)
!2874 = !DILocation(line: 1138, column: 27, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1138, column: 6)
!2876 = !DILocation(line: 1138, column: 7, scope: !2875)
!2877 = !DILocation(line: 1138, column: 6, scope: !2867)
!2878 = !DILocation(line: 1138, column: 33, scope: !2875)
!2879 = !DILocalVariable(name: "slh", scope: !2880, file: !3, line: 1142, type: !2670)
!2880 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 1140, column: 8)
!2881 = !DILocation(line: 1142, column: 25, scope: !2880)
!2882 = !DILocation(line: 1142, column: 54, scope: !2880)
!2883 = !DILocation(line: 1142, column: 59, scope: !2880)
!2884 = !DILocation(line: 1142, column: 31, scope: !2880)
!2885 = !DILocalVariable(name: "counter", scope: !2880, file: !3, line: 1144, type: !155)
!2886 = !DILocation(line: 1144, column: 9, scope: !2880)
!2887 = !DILocation(line: 1146, column: 34, scope: !2880)
!2888 = !DILocation(line: 1146, column: 39, scope: !2880)
!2889 = !DILocation(line: 1146, column: 45, scope: !2880)
!2890 = !DILocation(line: 1146, column: 50, scope: !2880)
!2891 = !DILocation(line: 1146, column: 55, scope: !2880)
!2892 = !DILocation(line: 1146, column: 15, scope: !2880)
!2893 = !DILocation(line: 1146, column: 5, scope: !2880)
!2894 = !DILocation(line: 1146, column: 10, scope: !2880)
!2895 = !DILocation(line: 1146, column: 14, scope: !2880)
!2896 = !DILocation(line: 1148, column: 13, scope: !2880)
!2897 = !DILocation(line: 1148, column: 20, scope: !2880)
!2898 = !DILocation(line: 1148, column: 5, scope: !2880)
!2899 = !DILocation(line: 1150, column: 1, scope: !2867)
!2900 = distinct !DISubprogram(name: "string_list_remove", scope: !3, file: !3, line: 991, type: !2901, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!71, !71, !2656, !81, !309}
!2903 = !DILocalVariable(name: "sl", arg: 1, scope: !2900, file: !3, line: 991, type: !71)
!2904 = !DILocation(line: 991, column: 53, scope: !2900)
!2905 = !DILocalVariable(name: "key", arg: 2, scope: !2900, file: !3, line: 991, type: !2656)
!2906 = !DILocation(line: 991, column: 86, scope: !2900)
!2907 = !DILocalVariable(name: "del_value_func", arg: 3, scope: !2900, file: !3, line: 992, type: !81)
!2908 = !DILocation(line: 992, column: 25, scope: !2900)
!2909 = !DILocalVariable(name: "counter", arg: 4, scope: !2900, file: !3, line: 992, type: !309)
!2910 = !DILocation(line: 992, column: 46, scope: !2900)
!2911 = !DILocation(line: 993, column: 7, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 993, column: 6)
!2913 = !DILocation(line: 993, column: 10, scope: !2912)
!2914 = !DILocation(line: 993, column: 14, scope: !2912)
!2915 = !DILocation(line: 993, column: 6, scope: !2900)
!2916 = !DILocation(line: 993, column: 26, scope: !2912)
!2917 = !DILocation(line: 993, column: 19, scope: !2912)
!2918 = !DILocalVariable(name: "elem", scope: !2900, file: !3, line: 994, type: !157)
!2919 = !DILocation(line: 994, column: 16, scope: !2900)
!2920 = !DILocation(line: 994, column: 35, scope: !2900)
!2921 = !DILocalVariable(name: "tail", scope: !2900, file: !3, line: 995, type: !71)
!2922 = !DILocation(line: 995, column: 16, scope: !2900)
!2923 = !DILocation(line: 995, column: 21, scope: !2900)
!2924 = !DILocation(line: 995, column: 27, scope: !2900)
!2925 = !DILocation(line: 995, column: 32, scope: !2900)
!2926 = !DILocation(line: 996, column: 13, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 996, column: 6)
!2928 = !DILocation(line: 996, column: 19, scope: !2927)
!2929 = !DILocation(line: 996, column: 23, scope: !2927)
!2930 = !DILocation(line: 996, column: 6, scope: !2927)
!2931 = !DILocation(line: 996, column: 27, scope: !2927)
!2932 = !DILocation(line: 996, column: 6, scope: !2900)
!2933 = !DILocation(line: 997, column: 10, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 996, column: 32)
!2935 = !DILocation(line: 997, column: 16, scope: !2934)
!2936 = !DILocation(line: 997, column: 5, scope: !2934)
!2937 = !DILocation(line: 998, column: 8, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 998, column: 8)
!2939 = !DILocation(line: 998, column: 8, scope: !2934)
!2940 = !DILocation(line: 999, column: 6, scope: !2938)
!2941 = !DILocation(line: 999, column: 21, scope: !2938)
!2942 = !DILocation(line: 999, column: 27, scope: !2938)
!2943 = !DILocation(line: 1000, column: 10, scope: !2934)
!2944 = !DILocation(line: 1000, column: 5, scope: !2934)
!2945 = !DILocation(line: 1001, column: 8, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 1001, column: 8)
!2947 = !DILocation(line: 1001, column: 8, scope: !2934)
!2948 = !DILocation(line: 1001, column: 18, scope: !2946)
!2949 = !DILocation(line: 1001, column: 25, scope: !2946)
!2950 = !DILocation(line: 1001, column: 17, scope: !2946)
!2951 = !DILocation(line: 1002, column: 27, scope: !2934)
!2952 = !DILocation(line: 1002, column: 33, scope: !2934)
!2953 = !DILocation(line: 1002, column: 38, scope: !2934)
!2954 = !DILocation(line: 1002, column: 54, scope: !2934)
!2955 = !DILocation(line: 1002, column: 8, scope: !2934)
!2956 = !DILocation(line: 1002, column: 7, scope: !2934)
!2957 = !DILocation(line: 1003, column: 3, scope: !2934)
!2958 = !DILocation(line: 1004, column: 40, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1003, column: 10)
!2960 = !DILocation(line: 1004, column: 45, scope: !2959)
!2961 = !DILocation(line: 1004, column: 49, scope: !2959)
!2962 = !DILocation(line: 1004, column: 64, scope: !2959)
!2963 = !DILocation(line: 1004, column: 21, scope: !2959)
!2964 = !DILocation(line: 1004, column: 5, scope: !2959)
!2965 = !DILocation(line: 1004, column: 11, scope: !2959)
!2966 = !DILocation(line: 1004, column: 16, scope: !2959)
!2967 = !DILocation(line: 1004, column: 20, scope: !2959)
!2968 = !DILocation(line: 1006, column: 10, scope: !2900)
!2969 = !DILocation(line: 1006, column: 3, scope: !2900)
!2970 = !DILocation(line: 1007, column: 1, scope: !2900)
!2971 = distinct !DISubprogram(name: "ur_string_map_clean", scope: !3, file: !3, line: 1152, type: !2972, scopeLine: 1152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !61}
!2974 = !DILocalVariable(name: "map", arg: 1, scope: !2971, file: !3, line: 1152, type: !61)
!2975 = !DILocation(line: 1152, column: 41, scope: !2971)
!2976 = !DILocation(line: 1153, column: 26, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1153, column: 6)
!2978 = !DILocation(line: 1153, column: 6, scope: !2977)
!2979 = !DILocation(line: 1153, column: 6, scope: !2971)
!2980 = !DILocalVariable(name: "i", scope: !2981, file: !3, line: 1154, type: !155)
!2981 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1153, column: 32)
!2982 = !DILocation(line: 1154, column: 7, scope: !2981)
!2983 = !DILocation(line: 1155, column: 10, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 1155, column: 3)
!2985 = !DILocation(line: 1155, column: 8, scope: !2984)
!2986 = !DILocation(line: 1155, column: 15, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1155, column: 3)
!2988 = !DILocation(line: 1155, column: 17, scope: !2987)
!2989 = !DILocation(line: 1155, column: 3, scope: !2984)
!2990 = !DILocation(line: 1156, column: 23, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 1155, column: 41)
!2992 = !DILocation(line: 1156, column: 28, scope: !2991)
!2993 = !DILocation(line: 1156, column: 34, scope: !2991)
!2994 = !DILocation(line: 1156, column: 39, scope: !2991)
!2995 = !DILocation(line: 1156, column: 44, scope: !2991)
!2996 = !DILocation(line: 1156, column: 4, scope: !2991)
!2997 = !DILocation(line: 1157, column: 3, scope: !2991)
!2998 = !DILocation(line: 1155, column: 37, scope: !2987)
!2999 = !DILocation(line: 1155, column: 3, scope: !2987)
!3000 = distinct !{!3000, !2989, !3001, !295}
!3001 = !DILocation(line: 1157, column: 3, scope: !2984)
!3002 = !DILocation(line: 1158, column: 2, scope: !2981)
!3003 = !DILocation(line: 1159, column: 1, scope: !2971)
!3004 = distinct !DISubprogram(name: "string_list_free", scope: !3, file: !3, line: 964, type: !3005, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2670, !81}
!3007 = !DILocalVariable(name: "slh", arg: 1, scope: !3004, file: !3, line: 964, type: !2670)
!3008 = !DILocation(line: 964, column: 50, scope: !3004)
!3009 = !DILocalVariable(name: "del_value_func", arg: 2, scope: !3004, file: !3, line: 964, type: !81)
!3010 = !DILocation(line: 964, column: 74, scope: !3004)
!3011 = !DILocation(line: 965, column: 6, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 965, column: 6)
!3013 = !DILocation(line: 965, column: 6, scope: !3004)
!3014 = !DILocalVariable(name: "list", scope: !3015, file: !3, line: 966, type: !71)
!3015 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 965, column: 11)
!3016 = !DILocation(line: 966, column: 18, scope: !3015)
!3017 = !DILocation(line: 966, column: 23, scope: !3015)
!3018 = !DILocation(line: 966, column: 28, scope: !3015)
!3019 = !DILocation(line: 967, column: 5, scope: !3015)
!3020 = !DILocation(line: 967, column: 11, scope: !3015)
!3021 = !DILocalVariable(name: "elem", scope: !3022, file: !3, line: 968, type: !157)
!3022 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 967, column: 17)
!3023 = !DILocation(line: 968, column: 20, scope: !3022)
!3024 = !DILocation(line: 968, column: 39, scope: !3022)
!3025 = !DILocalVariable(name: "tail", scope: !3022, file: !3, line: 969, type: !71)
!3026 = !DILocation(line: 969, column: 20, scope: !3022)
!3027 = !DILocation(line: 969, column: 25, scope: !3022)
!3028 = !DILocation(line: 969, column: 31, scope: !3022)
!3029 = !DILocation(line: 969, column: 36, scope: !3022)
!3030 = !DILocation(line: 970, column: 10, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 970, column: 10)
!3032 = !DILocation(line: 970, column: 16, scope: !3031)
!3033 = !DILocation(line: 970, column: 10, scope: !3022)
!3034 = !DILocation(line: 970, column: 26, scope: !3031)
!3035 = !DILocation(line: 970, column: 32, scope: !3031)
!3036 = !DILocation(line: 970, column: 21, scope: !3031)
!3037 = !DILocation(line: 971, column: 10, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 971, column: 10)
!3039 = !DILocation(line: 971, column: 25, scope: !3038)
!3040 = !DILocation(line: 971, column: 28, scope: !3038)
!3041 = !DILocation(line: 971, column: 34, scope: !3038)
!3042 = !DILocation(line: 971, column: 10, scope: !3022)
!3043 = !DILocation(line: 972, column: 8, scope: !3038)
!3044 = !DILocation(line: 972, column: 23, scope: !3038)
!3045 = !DILocation(line: 972, column: 29, scope: !3038)
!3046 = !DILocation(line: 973, column: 12, scope: !3022)
!3047 = !DILocation(line: 973, column: 7, scope: !3022)
!3048 = !DILocation(line: 974, column: 12, scope: !3022)
!3049 = !DILocation(line: 974, column: 11, scope: !3022)
!3050 = distinct !{!3050, !3019, !3051, !295}
!3051 = !DILocation(line: 975, column: 5, scope: !3015)
!3052 = !DILocation(line: 976, column: 5, scope: !3015)
!3053 = !DILocation(line: 976, column: 10, scope: !3015)
!3054 = !DILocation(line: 976, column: 14, scope: !3015)
!3055 = !DILocation(line: 977, column: 3, scope: !3015)
!3056 = !DILocation(line: 978, column: 1, scope: !3004)
!3057 = distinct !DISubprogram(name: "ur_string_map_free", scope: !3, file: !3, line: 1161, type: !3058, scopeLine: 1161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !3060}
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!3061 = !DILocalVariable(name: "map", arg: 1, scope: !3057, file: !3, line: 1161, type: !3060)
!3062 = !DILocation(line: 1161, column: 41, scope: !3057)
!3063 = !DILocation(line: 1162, column: 6, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 1162, column: 6)
!3065 = !DILocation(line: 1162, column: 10, scope: !3064)
!3066 = !DILocation(line: 1162, column: 34, scope: !3064)
!3067 = !DILocation(line: 1162, column: 33, scope: !3064)
!3068 = !DILocation(line: 1162, column: 13, scope: !3064)
!3069 = !DILocation(line: 1162, column: 6, scope: !3057)
!3070 = !DILocalVariable(name: "i", scope: !3071, file: !3, line: 1163, type: !155)
!3071 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1162, column: 40)
!3072 = !DILocation(line: 1163, column: 9, scope: !3071)
!3073 = !DILocation(line: 1164, column: 10, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1164, column: 5)
!3075 = !DILocation(line: 1164, column: 9, scope: !3074)
!3076 = !DILocation(line: 1164, column: 13, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 1164, column: 5)
!3078 = !DILocation(line: 1164, column: 14, scope: !3077)
!3079 = !DILocation(line: 1164, column: 5, scope: !3074)
!3080 = !DILocation(line: 1165, column: 28, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 1164, column: 36)
!3082 = !DILocation(line: 1165, column: 27, scope: !3081)
!3083 = !DILocation(line: 1165, column: 34, scope: !3081)
!3084 = !DILocation(line: 1165, column: 40, scope: !3081)
!3085 = !DILocation(line: 1165, column: 26, scope: !3081)
!3086 = !DILocation(line: 1165, column: 46, scope: !3081)
!3087 = !DILocation(line: 1165, column: 45, scope: !3081)
!3088 = !DILocation(line: 1165, column: 52, scope: !3081)
!3089 = !DILocation(line: 1165, column: 7, scope: !3081)
!3090 = !DILocation(line: 1166, column: 5, scope: !3081)
!3091 = !DILocation(line: 1164, column: 32, scope: !3077)
!3092 = !DILocation(line: 1164, column: 5, scope: !3077)
!3093 = distinct !{!3093, !3079, !3094, !295}
!3094 = !DILocation(line: 1166, column: 5, scope: !3074)
!3095 = !DILocation(line: 1167, column: 7, scope: !3071)
!3096 = !DILocation(line: 1167, column: 6, scope: !3071)
!3097 = !DILocation(line: 1167, column: 13, scope: !3071)
!3098 = !DILocation(line: 1167, column: 18, scope: !3071)
!3099 = !DILocation(line: 1168, column: 5, scope: !3071)
!3100 = !DILocation(line: 1169, column: 11, scope: !3071)
!3101 = !DILocation(line: 1169, column: 10, scope: !3071)
!3102 = !DILocation(line: 1169, column: 5, scope: !3071)
!3103 = !DILocation(line: 1170, column: 6, scope: !3071)
!3104 = !DILocation(line: 1170, column: 9, scope: !3071)
!3105 = !DILocation(line: 1171, column: 3, scope: !3071)
!3106 = !DILocation(line: 1172, column: 1, scope: !3057)
!3107 = distinct !DISubprogram(name: "ur_string_map_size", scope: !3, file: !3, line: 1174, type: !3108, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!56, !2719}
!3110 = !DILocalVariable(name: "map", arg: 1, scope: !3107, file: !3, line: 1174, type: !2719)
!3111 = !DILocation(line: 1174, column: 48, scope: !3107)
!3112 = !DILocation(line: 1175, column: 26, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1175, column: 6)
!3114 = !DILocation(line: 1175, column: 6, scope: !3113)
!3115 = !DILocation(line: 1175, column: 6, scope: !3107)
!3116 = !DILocalVariable(name: "ret", scope: !3117, file: !3, line: 1176, type: !56)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 1175, column: 32)
!3118 = !DILocation(line: 1176, column: 12, scope: !3117)
!3119 = !DILocalVariable(name: "i", scope: !3117, file: !3, line: 1177, type: !155)
!3120 = !DILocation(line: 1177, column: 9, scope: !3117)
!3121 = !DILocation(line: 1178, column: 10, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 1178, column: 5)
!3123 = !DILocation(line: 1178, column: 9, scope: !3122)
!3124 = !DILocation(line: 1178, column: 13, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1178, column: 5)
!3126 = !DILocation(line: 1178, column: 14, scope: !3125)
!3127 = !DILocation(line: 1178, column: 5, scope: !3122)
!3128 = !DILocation(line: 1179, column: 29, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 1178, column: 36)
!3130 = !DILocation(line: 1179, column: 34, scope: !3129)
!3131 = !DILocation(line: 1179, column: 40, scope: !3129)
!3132 = !DILocation(line: 1179, column: 43, scope: !3129)
!3133 = !DILocation(line: 1179, column: 12, scope: !3129)
!3134 = !DILocation(line: 1179, column: 10, scope: !3129)
!3135 = !DILocation(line: 1180, column: 5, scope: !3129)
!3136 = !DILocation(line: 1178, column: 32, scope: !3125)
!3137 = !DILocation(line: 1178, column: 5, scope: !3125)
!3138 = distinct !{!3138, !3127, !3139, !295}
!3139 = !DILocation(line: 1180, column: 5, scope: !3122)
!3140 = !DILocation(line: 1181, column: 12, scope: !3117)
!3141 = !DILocation(line: 1181, column: 5, scope: !3117)
!3142 = !DILocation(line: 1183, column: 5, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 1182, column: 10)
!3144 = !DILocation(line: 1185, column: 1, scope: !3107)
!3145 = distinct !DISubprogram(name: "string_list_size", scope: !3, file: !3, line: 959, type: !3146, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!56, !3148}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!3150 = !DILocalVariable(name: "sl", arg: 1, scope: !3145, file: !3, line: 959, type: !3148)
!3151 = !DILocation(line: 959, column: 51, scope: !3145)
!3152 = !DILocation(line: 960, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 960, column: 6)
!3154 = !DILocation(line: 960, column: 6, scope: !3145)
!3155 = !DILocation(line: 960, column: 11, scope: !3153)
!3156 = !DILocation(line: 961, column: 29, scope: !3145)
!3157 = !DILocation(line: 961, column: 33, scope: !3145)
!3158 = !DILocation(line: 961, column: 12, scope: !3145)
!3159 = !DILocation(line: 961, column: 11, scope: !3145)
!3160 = !DILocation(line: 961, column: 3, scope: !3145)
!3161 = !DILocation(line: 962, column: 1, scope: !3145)
!3162 = distinct !DISubprogram(name: "ur_string_map_lock", scope: !3, file: !3, line: 1187, type: !2717, scopeLine: 1187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3163 = !DILocalVariable(name: "map", arg: 1, scope: !3162, file: !3, line: 1187, type: !2719)
!3164 = !DILocation(line: 1187, column: 45, scope: !3162)
!3165 = !DILocation(line: 1188, column: 26, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1188, column: 6)
!3167 = !DILocation(line: 1188, column: 6, scope: !3166)
!3168 = !DILocation(line: 1188, column: 6, scope: !3162)
!3169 = !DILocation(line: 1189, column: 5, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 1188, column: 32)
!3171 = !DILocation(line: 1190, column: 5, scope: !3170)
!3172 = !DILocation(line: 1192, column: 3, scope: !3162)
!3173 = !DILocation(line: 1193, column: 1, scope: !3162)
!3174 = distinct !DISubprogram(name: "ur_string_map_unlock", scope: !3, file: !3, line: 1195, type: !2717, scopeLine: 1195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3175 = !DILocalVariable(name: "map", arg: 1, scope: !3174, file: !3, line: 1195, type: !2719)
!3176 = !DILocation(line: 1195, column: 47, scope: !3174)
!3177 = !DILocation(line: 1196, column: 26, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 1196, column: 6)
!3179 = !DILocation(line: 1196, column: 6, scope: !3178)
!3180 = !DILocation(line: 1196, column: 6, scope: !3174)
!3181 = !DILocation(line: 1197, column: 5, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1196, column: 32)
!3183 = !DILocation(line: 1198, column: 5, scope: !3182)
!3184 = !DILocation(line: 1200, column: 3, scope: !3174)
!3185 = !DILocation(line: 1201, column: 1, scope: !3174)
!3186 = distinct !DISubprogram(name: "kh_init_3", scope: !3, file: !3, line: 37, type: !3187, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!13}
!3189 = !DILocation(line: 37, column: 1, scope: !3186)
!3190 = distinct !DISubprogram(name: "kh_resize_3", scope: !3, file: !3, line: 37, type: !297, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3191 = !DILocalVariable(name: "h", arg: 1, scope: !3190, file: !3, line: 37, type: !13)
!3192 = !DILocation(line: 37, column: 1, scope: !3190)
!3193 = !DILocalVariable(name: "new_n_buckets", arg: 2, scope: !3190, file: !3, line: 37, type: !18)
!3194 = !DILocalVariable(name: "new_flags", scope: !3190, file: !3, line: 37, type: !29)
!3195 = !DILocalVariable(name: "new_flags_size", scope: !3190, file: !3, line: 37, type: !20)
!3196 = !DILocalVariable(name: "j", scope: !3190, file: !3, line: 37, type: !18)
!3197 = !DILocalVariable(name: "t", scope: !3198, file: !3, line: 37, type: !18)
!3198 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 37, column: 1)
!3199 = !DILocation(line: 37, column: 1, scope: !3198)
!3200 = distinct !{!3200, !3199, !3199, !295}
!3201 = !DILocation(line: 37, column: 1, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 37, column: 1)
!3203 = !DILocation(line: 37, column: 1, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 37, column: 1)
!3205 = !DILocation(line: 37, column: 1, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 37, column: 1)
!3207 = !DILocation(line: 37, column: 1, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 37, column: 1)
!3209 = !DILocation(line: 37, column: 1, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 37, column: 1)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 37, column: 1)
!3212 = !DILocation(line: 37, column: 1, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 37, column: 1)
!3214 = !DILocation(line: 37, column: 1, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 37, column: 1)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 37, column: 1)
!3217 = !DILocation(line: 37, column: 1, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 37, column: 1)
!3219 = !DILocation(line: 37, column: 1, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 37, column: 1)
!3221 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 37, column: 1)
!3222 = !DILocation(line: 37, column: 1, scope: !3221)
!3223 = !DILocalVariable(name: "key", scope: !3224, file: !3, line: 37, type: !33)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 37, column: 1)
!3225 = !DILocation(line: 37, column: 1, scope: !3224)
!3226 = !DILocalVariable(name: "val", scope: !3224, file: !3, line: 37, type: !39)
!3227 = !DILocation(line: 37, column: 1, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 37, column: 1)
!3229 = !DILocalVariable(name: "inc", scope: !3230, file: !3, line: 37, type: !18)
!3230 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 37, column: 1)
!3231 = !DILocation(line: 37, column: 1, scope: !3230)
!3232 = !DILocalVariable(name: "k", scope: !3230, file: !3, line: 37, type: !18)
!3233 = !DILocalVariable(name: "i", scope: !3230, file: !3, line: 37, type: !18)
!3234 = !DILocation(line: 37, column: 1, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 37, column: 1)
!3236 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 37, column: 1)
!3237 = !DILocation(line: 37, column: 1, scope: !3236)
!3238 = distinct !{!3238, !3231, !3231, !295}
!3239 = !DILocation(line: 37, column: 1, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 37, column: 1)
!3241 = !DILocalVariable(name: "tmp", scope: !3242, file: !3, line: 37, type: !33)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 37, column: 1)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 37, column: 1)
!3244 = !DILocation(line: 37, column: 1, scope: !3242)
!3245 = !DILocalVariable(name: "tmp", scope: !3246, file: !3, line: 37, type: !39)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 37, column: 1)
!3247 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 37, column: 1)
!3248 = !DILocation(line: 37, column: 1, scope: !3246)
!3249 = !DILocation(line: 37, column: 1, scope: !3243)
!3250 = !DILocation(line: 37, column: 1, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 37, column: 1)
!3252 = !DILocation(line: 37, column: 1, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 37, column: 1)
!3254 = distinct !{!3254, !3225, !3225}
!3255 = distinct !{!3255, !3214, !3214, !295}
!3256 = !DILocation(line: 37, column: 1, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 37, column: 1)
!3258 = !DILocation(line: 37, column: 1, scope: !3216)
!3259 = !DILocation(line: 37, column: 1, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 37, column: 1)
!3261 = !DILocation(line: 37, column: 1, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 37, column: 1)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 37, column: 1)
!3264 = distinct !DISubprogram(name: "string_map_index", scope: !3, file: !3, line: 1045, type: !3265, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!155, !2656}
!3267 = !DILocalVariable(name: "key", arg: 1, scope: !3264, file: !3, line: 1045, type: !2656)
!3268 = !DILocation(line: 1045, column: 58, scope: !3264)
!3269 = !DILocation(line: 1046, column: 28, scope: !3264)
!3270 = !DILocation(line: 1046, column: 16, scope: !3264)
!3271 = !DILocation(line: 1046, column: 33, scope: !3264)
!3272 = !DILocation(line: 1046, column: 3, scope: !3264)
!3273 = distinct !DISubprogram(name: "string_hash", scope: !3, file: !3, line: 1032, type: !3274, scopeLine: 1032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !178)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!20, !2656}
!3276 = !DILocalVariable(name: "key", arg: 1, scope: !3273, file: !3, line: 1032, type: !2656)
!3277 = !DILocation(line: 1032, column: 58, scope: !3273)
!3278 = !DILocalVariable(name: "str", scope: !3273, file: !3, line: 1034, type: !156)
!3279 = !DILocation(line: 1034, column: 12, scope: !3273)
!3280 = !DILocation(line: 1034, column: 26, scope: !3273)
!3281 = !DILocalVariable(name: "hash", scope: !3273, file: !3, line: 1036, type: !20)
!3282 = !DILocation(line: 1036, column: 12, scope: !3273)
!3283 = !DILocalVariable(name: "c", scope: !3273, file: !3, line: 1037, type: !155)
!3284 = !DILocation(line: 1037, column: 7, scope: !3273)
!3285 = !DILocation(line: 1039, column: 3, scope: !3273)
!3286 = !DILocation(line: 1039, column: 19, scope: !3273)
!3287 = !DILocation(line: 1039, column: 15, scope: !3273)
!3288 = !DILocation(line: 1039, column: 13, scope: !3273)
!3289 = !DILocation(line: 1040, column: 12, scope: !3273)
!3290 = !DILocation(line: 1040, column: 17, scope: !3273)
!3291 = !DILocation(line: 1040, column: 22, scope: !3273)
!3292 = !DILocation(line: 1040, column: 14, scope: !3273)
!3293 = !DILocation(line: 1040, column: 31, scope: !3273)
!3294 = !DILocation(line: 1040, column: 36, scope: !3273)
!3295 = !DILocation(line: 1040, column: 28, scope: !3273)
!3296 = !DILocation(line: 1040, column: 45, scope: !3273)
!3297 = !DILocation(line: 1040, column: 43, scope: !3273)
!3298 = !DILocation(line: 1040, column: 10, scope: !3273)
!3299 = distinct !{!3299, !3285, !3296, !295}
!3300 = !DILocation(line: 1042, column: 10, scope: !3273)
!3301 = !DILocation(line: 1042, column: 3, scope: !3273)
