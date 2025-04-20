; ModuleID = './src/protocols/utils/priolist.c'
source_filename = "./src/protocols/utils/priolist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_priolist_data = type { ptr, i32, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"self->current > 0\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [33 x i8] c"./src/protocols/utils/priolist.c\00", align 1, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_priolist_init(ptr noundef %0) #0 !dbg !47 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata ptr %3, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 0, ptr %3, align 4, !dbg !71
  br label %4, !dbg !73

4:                                                ; preds = %20, %1
  %5 = load i32, ptr %3, align 4, !dbg !74
  %6 = icmp ne i32 %5, 16, !dbg !76
  br i1 %6, label %7, label %23, !dbg !77

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !dbg !78
  %9 = getelementptr inbounds %struct.nn_priolist, ptr %8, i32 0, i32 0, !dbg !80
  %10 = load i32, ptr %3, align 4, !dbg !81
  %11 = sext i32 %10 to i64, !dbg !78
  %12 = getelementptr inbounds [16 x %struct.nn_priolist_slot], ptr %9, i64 0, i64 %11, !dbg !78
  %13 = getelementptr inbounds %struct.nn_priolist_slot, ptr %12, i32 0, i32 0, !dbg !82
  call void @nn_list_init(ptr noundef %13), !dbg !83
  %14 = load ptr, ptr %2, align 8, !dbg !84
  %15 = getelementptr inbounds %struct.nn_priolist, ptr %14, i32 0, i32 0, !dbg !85
  %16 = load i32, ptr %3, align 4, !dbg !86
  %17 = sext i32 %16 to i64, !dbg !84
  %18 = getelementptr inbounds [16 x %struct.nn_priolist_slot], ptr %15, i64 0, i64 %17, !dbg !84
  %19 = getelementptr inbounds %struct.nn_priolist_slot, ptr %18, i32 0, i32 1, !dbg !87
  store ptr null, ptr %19, align 8, !dbg !88
  br label %20, !dbg !89

20:                                               ; preds = %7
  %21 = load i32, ptr %3, align 4, !dbg !90
  %22 = add nsw i32 %21, 1, !dbg !90
  store i32 %22, ptr %3, align 4, !dbg !90
  br label %4, !dbg !91, !llvm.loop !92

23:                                               ; preds = %4
  %24 = load ptr, ptr %2, align 8, !dbg !95
  %25 = getelementptr inbounds %struct.nn_priolist, ptr %24, i32 0, i32 1, !dbg !96
  store i32 -1, ptr %25, align 8, !dbg !97
  ret void, !dbg !98
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_list_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_priolist_term(ptr noundef %0) #0 !dbg !99 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata ptr %3, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 0, ptr %3, align 4, !dbg !104
  br label %4, !dbg !106

4:                                                ; preds = %14, %1
  %5 = load i32, ptr %3, align 4, !dbg !107
  %6 = icmp ne i32 %5, 16, !dbg !109
  br i1 %6, label %7, label %17, !dbg !110

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !dbg !111
  %9 = getelementptr inbounds %struct.nn_priolist, ptr %8, i32 0, i32 0, !dbg !112
  %10 = load i32, ptr %3, align 4, !dbg !113
  %11 = sext i32 %10 to i64, !dbg !111
  %12 = getelementptr inbounds [16 x %struct.nn_priolist_slot], ptr %9, i64 0, i64 %11, !dbg !111
  %13 = getelementptr inbounds %struct.nn_priolist_slot, ptr %12, i32 0, i32 0, !dbg !114
  call void @nn_list_term(ptr noundef %13), !dbg !115
  br label %14, !dbg !115

14:                                               ; preds = %7
  %15 = load i32, ptr %3, align 4, !dbg !116
  %16 = add nsw i32 %15, 1, !dbg !116
  store i32 %16, ptr %3, align 4, !dbg !116
  br label %4, !dbg !117, !llvm.loop !118

17:                                               ; preds = %4
  ret void, !dbg !120
}

declare void @nn_list_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_priolist_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !121 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !124, metadata !DIExpression()), !dbg !125
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !126, metadata !DIExpression()), !dbg !127
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !128, metadata !DIExpression()), !dbg !129
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !130, metadata !DIExpression()), !dbg !131
  %9 = load ptr, ptr %6, align 8, !dbg !132
  %10 = load ptr, ptr %7, align 8, !dbg !133
  %11 = getelementptr inbounds %struct.nn_priolist_data, ptr %10, i32 0, i32 0, !dbg !134
  store ptr %9, ptr %11, align 8, !dbg !135
  %12 = load i32, ptr %8, align 4, !dbg !136
  %13 = load ptr, ptr %7, align 8, !dbg !137
  %14 = getelementptr inbounds %struct.nn_priolist_data, ptr %13, i32 0, i32 1, !dbg !138
  store i32 %12, ptr %14, align 8, !dbg !139
  %15 = load ptr, ptr %7, align 8, !dbg !140
  %16 = getelementptr inbounds %struct.nn_priolist_data, ptr %15, i32 0, i32 2, !dbg !141
  call void @nn_list_item_init(ptr noundef %16), !dbg !142
  ret void, !dbg !143
}

declare void @nn_list_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_priolist_rm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !144 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !147, metadata !DIExpression()), !dbg !148
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !149, metadata !DIExpression()), !dbg !150
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !151, metadata !DIExpression()), !dbg !152
  %7 = load ptr, ptr %6, align 8, !dbg !153
  %8 = getelementptr inbounds %struct.nn_priolist_data, ptr %7, i32 0, i32 2, !dbg !155
  %9 = call i32 @nn_list_item_isinlist(ptr noundef %8), !dbg !156
  %10 = icmp ne i32 %9, 0, !dbg !156
  br i1 %10, label %11, label %24, !dbg !157

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !dbg !158
  %13 = getelementptr inbounds %struct.nn_priolist, ptr %12, i32 0, i32 0, !dbg !159
  %14 = load ptr, ptr %6, align 8, !dbg !160
  %15 = getelementptr inbounds %struct.nn_priolist_data, ptr %14, i32 0, i32 1, !dbg !161
  %16 = load i32, ptr %15, align 8, !dbg !161
  %17 = sub nsw i32 %16, 1, !dbg !162
  %18 = sext i32 %17 to i64, !dbg !158
  %19 = getelementptr inbounds [16 x %struct.nn_priolist_slot], ptr %13, i64 0, i64 %18, !dbg !158
  %20 = getelementptr inbounds %struct.nn_priolist_slot, ptr %19, i32 0, i32 0, !dbg !163
  %21 = load ptr, ptr %6, align 8, !dbg !164
  %22 = getelementptr inbounds %struct.nn_priolist_data, ptr %21, i32 0, i32 2, !dbg !165
  %23 = call ptr @nn_list_erase(ptr noundef %20, ptr noundef %22), !dbg !166
  br label %24, !dbg !166

24:                                               ; preds = %11, %3
  %25 = load ptr, ptr %6, align 8, !dbg !167
  %26 = getelementptr inbounds %struct.nn_priolist_data, ptr %25, i32 0, i32 2, !dbg !168
  call void @nn_list_item_term(ptr noundef %26), !dbg !169
  ret void, !dbg !170
}

declare i32 @nn_list_item_isinlist(ptr noundef) #2

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #2

declare void @nn_list_item_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_priolist_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !171 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !172, metadata !DIExpression()), !dbg !173
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !174, metadata !DIExpression()), !dbg !175
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata ptr %7, metadata !178, metadata !DIExpression()), !dbg !180
  %8 = load ptr, ptr %4, align 8, !dbg !181
  %9 = getelementptr inbounds %struct.nn_priolist, ptr %8, i32 0, i32 0, !dbg !182
  %10 = load ptr, ptr %6, align 8, !dbg !183
  %11 = getelementptr inbounds %struct.nn_priolist_data, ptr %10, i32 0, i32 1, !dbg !184
  %12 = load i32, ptr %11, align 8, !dbg !184
  %13 = sub nsw i32 %12, 1, !dbg !185
  %14 = sext i32 %13 to i64, !dbg !181
  %15 = getelementptr inbounds [16 x %struct.nn_priolist_slot], ptr %9, i64 0, i64 %14, !dbg !181
  store ptr %15, ptr %7, align 8, !dbg !186
  %16 = load ptr, ptr %7, align 8, !dbg !187
  %17 = getelementptr inbounds %struct.nn_priolist_slot, ptr %16, i32 0, i32 0, !dbg !189
  %18 = call i32 @nn_list_empty(ptr noundef %17), !dbg !190
  %19 = icmp ne i32 %18, 0, !dbg !190
  br i1 %19, label %28, label %20, !dbg !191

20:                                               ; preds = %3
  %21 = load ptr, ptr %7, align 8, !dbg !192
  %22 = getelementptr inbounds %struct.nn_priolist_slot, ptr %21, i32 0, i32 0, !dbg !194
  %23 = load ptr, ptr %6, align 8, !dbg !195
  %24 = getelementptr inbounds %struct.nn_priolist_data, ptr %23, i32 0, i32 2, !dbg !196
  %25 = load ptr, ptr %7, align 8, !dbg !197
  %26 = getelementptr inbounds %struct.nn_priolist_slot, ptr %25, i32 0, i32 0, !dbg !198
  %27 = call ptr @nn_list_end(ptr noundef %26), !dbg !199
  call void @nn_list_insert(ptr noundef %22, ptr noundef %24, ptr noundef %27), !dbg !200
  br label %63, !dbg !201

28:                                               ; preds = %3
  %29 = load ptr, ptr %7, align 8, !dbg !202
  %30 = getelementptr inbounds %struct.nn_priolist_slot, ptr %29, i32 0, i32 0, !dbg !203
  %31 = load ptr, ptr %6, align 8, !dbg !204
  %32 = getelementptr inbounds %struct.nn_priolist_data, ptr %31, i32 0, i32 2, !dbg !205
  %33 = load ptr, ptr %7, align 8, !dbg !206
  %34 = getelementptr inbounds %struct.nn_priolist_slot, ptr %33, i32 0, i32 0, !dbg !207
  %35 = call ptr @nn_list_end(ptr noundef %34), !dbg !208
  call void @nn_list_insert(ptr noundef %30, ptr noundef %32, ptr noundef %35), !dbg !209
  %36 = load ptr, ptr %6, align 8, !dbg !210
  %37 = load ptr, ptr %7, align 8, !dbg !211
  %38 = getelementptr inbounds %struct.nn_priolist_slot, ptr %37, i32 0, i32 1, !dbg !212
  store ptr %36, ptr %38, align 8, !dbg !213
  %39 = load ptr, ptr %4, align 8, !dbg !214
  %40 = getelementptr inbounds %struct.nn_priolist, ptr %39, i32 0, i32 1, !dbg !216
  %41 = load i32, ptr %40, align 8, !dbg !216
  %42 = icmp eq i32 %41, -1, !dbg !217
  br i1 %42, label %43, label %49, !dbg !218

43:                                               ; preds = %28
  %44 = load ptr, ptr %6, align 8, !dbg !219
  %45 = getelementptr inbounds %struct.nn_priolist_data, ptr %44, i32 0, i32 1, !dbg !221
  %46 = load i32, ptr %45, align 8, !dbg !221
  %47 = load ptr, ptr %4, align 8, !dbg !222
  %48 = getelementptr inbounds %struct.nn_priolist, ptr %47, i32 0, i32 1, !dbg !223
  store i32 %46, ptr %48, align 8, !dbg !224
  br label %63, !dbg !225

49:                                               ; preds = %28
  %50 = load ptr, ptr %4, align 8, !dbg !226
  %51 = getelementptr inbounds %struct.nn_priolist, ptr %50, i32 0, i32 1, !dbg !228
  %52 = load i32, ptr %51, align 8, !dbg !228
  %53 = load ptr, ptr %6, align 8, !dbg !229
  %54 = getelementptr inbounds %struct.nn_priolist_data, ptr %53, i32 0, i32 1, !dbg !230
  %55 = load i32, ptr %54, align 8, !dbg !230
  %56 = icmp sgt i32 %52, %55, !dbg !231
  br i1 %56, label %57, label %63, !dbg !232

57:                                               ; preds = %49
  %58 = load ptr, ptr %6, align 8, !dbg !233
  %59 = getelementptr inbounds %struct.nn_priolist_data, ptr %58, i32 0, i32 1, !dbg !235
  %60 = load i32, ptr %59, align 8, !dbg !235
  %61 = load ptr, ptr %4, align 8, !dbg !236
  %62 = getelementptr inbounds %struct.nn_priolist, ptr %61, i32 0, i32 1, !dbg !237
  store i32 %60, ptr %62, align 8, !dbg !238
  br label %63, !dbg !239

63:                                               ; preds = %20, %43, %57, %49
  ret void, !dbg !240
}

declare i32 @nn_list_empty(ptr noundef) #2

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_list_end(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_priolist_is_active(ptr noundef %0) #0 !dbg !241 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !245
  %3 = load ptr, ptr %2, align 8, !dbg !246
  %4 = getelementptr inbounds %struct.nn_priolist, ptr %3, i32 0, i32 1, !dbg !247
  %5 = load i32, ptr %4, align 8, !dbg !247
  %6 = icmp eq i32 %5, -1, !dbg !248
  %7 = zext i1 %6 to i64, !dbg !246
  %8 = select i1 %6, i32 0, i32 1, !dbg !246
  ret i32 %8, !dbg !249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_priolist_getpipe(ptr noundef %0) #0 !dbg !250 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !253, metadata !DIExpression()), !dbg !254
  %4 = load ptr, ptr %3, align 8, !dbg !255
  %5 = getelementptr inbounds %struct.nn_priolist, ptr %4, i32 0, i32 1, !dbg !255
  %6 = load i32, ptr %5, align 8, !dbg !255
  %7 = icmp eq i32 %6, -1, !dbg !255
  %8 = zext i1 %7 to i32, !dbg !255
  %9 = sext i32 %8 to i64, !dbg !255
  %10 = icmp ne i64 %9, 0, !dbg !255
  br i1 %10, label %11, label %12, !dbg !257

11:                                               ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !258
  br label %25, !dbg !258

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !259
  %14 = getelementptr inbounds %struct.nn_priolist, ptr %13, i32 0, i32 0, !dbg !260
  %15 = load ptr, ptr %3, align 8, !dbg !261
  %16 = getelementptr inbounds %struct.nn_priolist, ptr %15, i32 0, i32 1, !dbg !262
  %17 = load i32, ptr %16, align 8, !dbg !262
  %18 = sub nsw i32 %17, 1, !dbg !263
  %19 = sext i32 %18 to i64, !dbg !259
  %20 = getelementptr inbounds [16 x %struct.nn_priolist_slot], ptr %14, i64 0, i64 %19, !dbg !259
  %21 = getelementptr inbounds %struct.nn_priolist_slot, ptr %20, i32 0, i32 1, !dbg !264
  %22 = load ptr, ptr %21, align 8, !dbg !264
  %23 = getelementptr inbounds %struct.nn_priolist_data, ptr %22, i32 0, i32 0, !dbg !265
  %24 = load ptr, ptr %23, align 8, !dbg !265
  store ptr %24, ptr %2, align 8, !dbg !266
  br label %25, !dbg !266

25:                                               ; preds = %12, %11
  %26 = load ptr, ptr %2, align 8, !dbg !267
  ret ptr %26, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_priolist_advance(ptr noundef %0, i32 noundef %1) #0 !dbg !268 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !271, metadata !DIExpression()), !dbg !272
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata ptr %5, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata ptr %6, metadata !277, metadata !DIExpression()), !dbg !278
  br label %7, !dbg !279

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !280
  %9 = getelementptr inbounds %struct.nn_priolist, ptr %8, i32 0, i32 1, !dbg !280
  %10 = load i32, ptr %9, align 8, !dbg !280
  %11 = icmp sgt i32 %10, 0, !dbg !280
  %12 = xor i1 %11, true, !dbg !280
  %13 = zext i1 %12 to i32, !dbg !280
  %14 = sext i32 %13 to i64, !dbg !280
  %15 = icmp ne i64 %14, 0, !dbg !280
  br i1 %15, label %16, label %19, !dbg !283

16:                                               ; preds = %7
  %17 = load ptr, ptr @stderr, align 8, !dbg !284
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 116), !dbg !284
  call void @nn_err_abort() #4, !dbg !284
  unreachable, !dbg !284

19:                                               ; preds = %7
  br label %20, !dbg !283

20:                                               ; preds = %19
  %21 = load ptr, ptr %3, align 8, !dbg !286
  %22 = getelementptr inbounds %struct.nn_priolist, ptr %21, i32 0, i32 0, !dbg !287
  %23 = load ptr, ptr %3, align 8, !dbg !288
  %24 = getelementptr inbounds %struct.nn_priolist, ptr %23, i32 0, i32 1, !dbg !289
  %25 = load i32, ptr %24, align 8, !dbg !289
  %26 = sub nsw i32 %25, 1, !dbg !290
  %27 = sext i32 %26 to i64, !dbg !286
  %28 = getelementptr inbounds [16 x %struct.nn_priolist_slot], ptr %22, i64 0, i64 %27, !dbg !286
  store ptr %28, ptr %5, align 8, !dbg !291
  %29 = load i32, ptr %4, align 4, !dbg !292
  %30 = icmp ne i32 %29, 0, !dbg !292
  br i1 %30, label %31, label %39, !dbg !294

31:                                               ; preds = %20
  %32 = load ptr, ptr %5, align 8, !dbg !295
  %33 = getelementptr inbounds %struct.nn_priolist_slot, ptr %32, i32 0, i32 0, !dbg !296
  %34 = load ptr, ptr %5, align 8, !dbg !297
  %35 = getelementptr inbounds %struct.nn_priolist_slot, ptr %34, i32 0, i32 1, !dbg !298
  %36 = load ptr, ptr %35, align 8, !dbg !298
  %37 = getelementptr inbounds %struct.nn_priolist_data, ptr %36, i32 0, i32 2, !dbg !299
  %38 = call ptr @nn_list_erase(ptr noundef %33, ptr noundef %37), !dbg !300
  store ptr %38, ptr %6, align 8, !dbg !301
  br label %47, !dbg !302

39:                                               ; preds = %20
  %40 = load ptr, ptr %5, align 8, !dbg !303
  %41 = getelementptr inbounds %struct.nn_priolist_slot, ptr %40, i32 0, i32 0, !dbg !304
  %42 = load ptr, ptr %5, align 8, !dbg !305
  %43 = getelementptr inbounds %struct.nn_priolist_slot, ptr %42, i32 0, i32 1, !dbg !306
  %44 = load ptr, ptr %43, align 8, !dbg !306
  %45 = getelementptr inbounds %struct.nn_priolist_data, ptr %44, i32 0, i32 2, !dbg !307
  %46 = call ptr @nn_list_next(ptr noundef %41, ptr noundef %45), !dbg !308
  store ptr %46, ptr %6, align 8, !dbg !309
  br label %47

47:                                               ; preds = %39, %31
  %48 = load ptr, ptr %6, align 8, !dbg !310
  %49 = icmp ne ptr %48, null, !dbg !310
  br i1 %49, label %54, label %50, !dbg !312

50:                                               ; preds = %47
  %51 = load ptr, ptr %5, align 8, !dbg !313
  %52 = getelementptr inbounds %struct.nn_priolist_slot, ptr %51, i32 0, i32 0, !dbg !314
  %53 = call ptr @nn_list_begin(ptr noundef %52), !dbg !315
  store ptr %53, ptr %6, align 8, !dbg !316
  br label %54, !dbg !317

54:                                               ; preds = %50, %47
  %55 = load ptr, ptr %6, align 8, !dbg !318
  %56 = icmp ne ptr %55, null, !dbg !318
  br i1 %56, label %57, label %60, !dbg !318

57:                                               ; preds = %54
  %58 = load ptr, ptr %6, align 8, !dbg !318
  %59 = getelementptr inbounds i8, ptr %58, i64 -16, !dbg !318
  br label %61, !dbg !318

60:                                               ; preds = %54
  br label %61, !dbg !318

61:                                               ; preds = %60, %57
  %62 = phi ptr [ %59, %57 ], [ null, %60 ], !dbg !318
  %63 = load ptr, ptr %5, align 8, !dbg !319
  %64 = getelementptr inbounds %struct.nn_priolist_slot, ptr %63, i32 0, i32 1, !dbg !320
  store ptr %62, ptr %64, align 8, !dbg !321
  br label %65, !dbg !322

65:                                               ; preds = %82, %61
  %66 = load ptr, ptr %5, align 8, !dbg !323
  %67 = getelementptr inbounds %struct.nn_priolist_slot, ptr %66, i32 0, i32 0, !dbg !324
  %68 = call i32 @nn_list_empty(ptr noundef %67), !dbg !325
  %69 = icmp ne i32 %68, 0, !dbg !322
  br i1 %69, label %70, label %91, !dbg !322

70:                                               ; preds = %65
  %71 = load ptr, ptr %3, align 8, !dbg !326
  %72 = getelementptr inbounds %struct.nn_priolist, ptr %71, i32 0, i32 1, !dbg !328
  %73 = load i32, ptr %72, align 8, !dbg !329
  %74 = add nsw i32 %73, 1, !dbg !329
  store i32 %74, ptr %72, align 8, !dbg !329
  %75 = load ptr, ptr %3, align 8, !dbg !330
  %76 = getelementptr inbounds %struct.nn_priolist, ptr %75, i32 0, i32 1, !dbg !332
  %77 = load i32, ptr %76, align 8, !dbg !332
  %78 = icmp sgt i32 %77, 16, !dbg !333
  br i1 %78, label %79, label %82, !dbg !334

79:                                               ; preds = %70
  %80 = load ptr, ptr %3, align 8, !dbg !335
  %81 = getelementptr inbounds %struct.nn_priolist, ptr %80, i32 0, i32 1, !dbg !337
  store i32 -1, ptr %81, align 8, !dbg !338
  br label %91, !dbg !339

82:                                               ; preds = %70
  %83 = load ptr, ptr %3, align 8, !dbg !340
  %84 = getelementptr inbounds %struct.nn_priolist, ptr %83, i32 0, i32 0, !dbg !341
  %85 = load ptr, ptr %3, align 8, !dbg !342
  %86 = getelementptr inbounds %struct.nn_priolist, ptr %85, i32 0, i32 1, !dbg !343
  %87 = load i32, ptr %86, align 8, !dbg !343
  %88 = sub nsw i32 %87, 1, !dbg !344
  %89 = sext i32 %88 to i64, !dbg !340
  %90 = getelementptr inbounds [16 x %struct.nn_priolist_slot], ptr %84, i64 0, i64 %89, !dbg !340
  store ptr %90, ptr %5, align 8, !dbg !345
  br label %65, !dbg !322, !llvm.loop !346

91:                                               ; preds = %79, %65
  ret void, !dbg !348
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare ptr @nn_list_next(ptr noundef, ptr noundef) #2

declare ptr @nn_list_begin(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/utils/priolist.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "56e6b364d1d3196d472a43465606e4cb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 33)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !18, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !19, globals: !38, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "src/protocols/utils/priolist.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "56e6b364d1d3196d472a43465606e4cb")
!19 = !{!20, !37}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !22, line: 34, size: 256, elements: !23)
!22 = !DIFile(filename: "./src/protocols/utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!23 = !{!24, !28, !30}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !21, file: !22, line: 35, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !27, line: 56, flags: DIFlagFwdDecl)
!27 = !DIFile(filename: "./src/protocols/utils/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !21, file: !22, line: 36, baseType: !29, size: 32, offset: 64)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !21, file: !22, line: 37, baseType: !31, size: 128, offset: 128)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !32, line: 26, size: 128, elements: !33)
!32 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!33 = !{!34, !36}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !32, line: 27, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !31, file: !32, line: 28, baseType: !35, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!38 = !{!0, !7, !12}
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 8, !"PIC Level", i32 2}
!43 = !{i32 7, !"PIE Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 2}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 16.0.0"}
!47 = distinct !DISubprogram(name: "nn_priolist_init", scope: !2, file: !2, line: 31, type: !48, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !66)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !22, line: 45, size: 3136, elements: !52)
!52 = !{!53, !65}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !51, file: !22, line: 46, baseType: !54, size: 3072)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3072, elements: !63)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !22, line: 40, size: 192, elements: !56)
!56 = !{!57, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !55, file: !22, line: 41, baseType: !58, size: 128)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !32, line: 31, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !58, file: !32, line: 32, baseType: !35, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !58, file: !32, line: 33, baseType: !35, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !55, file: !22, line: 42, baseType: !20, size: 64, offset: 128)
!63 = !{!64}
!64 = !DISubrange(count: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !51, file: !22, line: 47, baseType: !29, size: 32, offset: 3072)
!66 = !{}
!67 = !DILocalVariable(name: "self", arg: 1, scope: !47, file: !2, line: 31, type: !50)
!68 = !DILocation(line: 31, column: 44, scope: !47)
!69 = !DILocalVariable(name: "i", scope: !47, file: !2, line: 33, type: !29)
!70 = !DILocation(line: 33, column: 9, scope: !47)
!71 = !DILocation(line: 35, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !47, file: !2, line: 35, column: 5)
!73 = !DILocation(line: 35, column: 10, scope: !72)
!74 = !DILocation(line: 35, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !2, line: 35, column: 5)
!76 = !DILocation(line: 35, column: 19, scope: !75)
!77 = !DILocation(line: 35, column: 5, scope: !72)
!78 = !DILocation(line: 36, column: 24, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !2, line: 35, column: 46)
!80 = !DILocation(line: 36, column: 30, scope: !79)
!81 = !DILocation(line: 36, column: 37, scope: !79)
!82 = !DILocation(line: 36, column: 40, scope: !79)
!83 = !DILocation(line: 36, column: 9, scope: !79)
!84 = !DILocation(line: 37, column: 9, scope: !79)
!85 = !DILocation(line: 37, column: 15, scope: !79)
!86 = !DILocation(line: 37, column: 22, scope: !79)
!87 = !DILocation(line: 37, column: 25, scope: !79)
!88 = !DILocation(line: 37, column: 33, scope: !79)
!89 = !DILocation(line: 38, column: 5, scope: !79)
!90 = !DILocation(line: 35, column: 41, scope: !75)
!91 = !DILocation(line: 35, column: 5, scope: !75)
!92 = distinct !{!92, !77, !93, !94}
!93 = !DILocation(line: 38, column: 5, scope: !72)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !DILocation(line: 39, column: 5, scope: !47)
!96 = !DILocation(line: 39, column: 11, scope: !47)
!97 = !DILocation(line: 39, column: 19, scope: !47)
!98 = !DILocation(line: 40, column: 1, scope: !47)
!99 = distinct !DISubprogram(name: "nn_priolist_term", scope: !2, file: !2, line: 42, type: !48, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !66)
!100 = !DILocalVariable(name: "self", arg: 1, scope: !99, file: !2, line: 42, type: !50)
!101 = !DILocation(line: 42, column: 44, scope: !99)
!102 = !DILocalVariable(name: "i", scope: !99, file: !2, line: 44, type: !29)
!103 = !DILocation(line: 44, column: 9, scope: !99)
!104 = !DILocation(line: 46, column: 12, scope: !105)
!105 = distinct !DILexicalBlock(scope: !99, file: !2, line: 46, column: 5)
!106 = !DILocation(line: 46, column: 10, scope: !105)
!107 = !DILocation(line: 46, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !2, line: 46, column: 5)
!109 = !DILocation(line: 46, column: 19, scope: !108)
!110 = !DILocation(line: 46, column: 5, scope: !105)
!111 = !DILocation(line: 47, column: 24, scope: !108)
!112 = !DILocation(line: 47, column: 30, scope: !108)
!113 = !DILocation(line: 47, column: 37, scope: !108)
!114 = !DILocation(line: 47, column: 40, scope: !108)
!115 = !DILocation(line: 47, column: 9, scope: !108)
!116 = !DILocation(line: 46, column: 41, scope: !108)
!117 = !DILocation(line: 46, column: 5, scope: !108)
!118 = distinct !{!118, !110, !119, !94}
!119 = !DILocation(line: 47, column: 45, scope: !105)
!120 = !DILocation(line: 48, column: 1, scope: !99)
!121 = distinct !DISubprogram(name: "nn_priolist_add", scope: !2, file: !2, line: 50, type: !122, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !66)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !50, !25, !20, !29}
!124 = !DILocalVariable(name: "self", arg: 1, scope: !121, file: !2, line: 50, type: !50)
!125 = !DILocation(line: 50, column: 43, scope: !121)
!126 = !DILocalVariable(name: "pipe", arg: 2, scope: !121, file: !2, line: 50, type: !25)
!127 = !DILocation(line: 50, column: 65, scope: !121)
!128 = !DILocalVariable(name: "data", arg: 3, scope: !121, file: !2, line: 51, type: !20)
!129 = !DILocation(line: 51, column: 30, scope: !121)
!130 = !DILocalVariable(name: "priority", arg: 4, scope: !121, file: !2, line: 51, type: !29)
!131 = !DILocation(line: 51, column: 40, scope: !121)
!132 = !DILocation(line: 53, column: 18, scope: !121)
!133 = !DILocation(line: 53, column: 5, scope: !121)
!134 = !DILocation(line: 53, column: 11, scope: !121)
!135 = !DILocation(line: 53, column: 16, scope: !121)
!136 = !DILocation(line: 54, column: 22, scope: !121)
!137 = !DILocation(line: 54, column: 5, scope: !121)
!138 = !DILocation(line: 54, column: 11, scope: !121)
!139 = !DILocation(line: 54, column: 20, scope: !121)
!140 = !DILocation(line: 55, column: 25, scope: !121)
!141 = !DILocation(line: 55, column: 31, scope: !121)
!142 = !DILocation(line: 55, column: 5, scope: !121)
!143 = !DILocation(line: 56, column: 1, scope: !121)
!144 = distinct !DISubprogram(name: "nn_priolist_rm", scope: !2, file: !2, line: 58, type: !145, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !66)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !50, !25, !20}
!147 = !DILocalVariable(name: "self", arg: 1, scope: !144, file: !2, line: 58, type: !50)
!148 = !DILocation(line: 58, column: 42, scope: !144)
!149 = !DILocalVariable(name: "pipe", arg: 2, scope: !144, file: !2, line: 58, type: !25)
!150 = !DILocation(line: 58, column: 64, scope: !144)
!151 = !DILocalVariable(name: "data", arg: 3, scope: !144, file: !2, line: 59, type: !20)
!152 = !DILocation(line: 59, column: 30, scope: !144)
!153 = !DILocation(line: 61, column: 33, scope: !154)
!154 = distinct !DILexicalBlock(scope: !144, file: !2, line: 61, column: 9)
!155 = !DILocation(line: 61, column: 39, scope: !154)
!156 = !DILocation(line: 61, column: 9, scope: !154)
!157 = !DILocation(line: 61, column: 9, scope: !144)
!158 = !DILocation(line: 62, column: 25, scope: !154)
!159 = !DILocation(line: 62, column: 31, scope: !154)
!160 = !DILocation(line: 62, column: 38, scope: !154)
!161 = !DILocation(line: 62, column: 44, scope: !154)
!162 = !DILocation(line: 62, column: 53, scope: !154)
!163 = !DILocation(line: 62, column: 58, scope: !154)
!164 = !DILocation(line: 62, column: 66, scope: !154)
!165 = !DILocation(line: 62, column: 72, scope: !154)
!166 = !DILocation(line: 62, column: 9, scope: !154)
!167 = !DILocation(line: 63, column: 25, scope: !144)
!168 = !DILocation(line: 63, column: 31, scope: !144)
!169 = !DILocation(line: 63, column: 5, scope: !144)
!170 = !DILocation(line: 64, column: 1, scope: !144)
!171 = distinct !DISubprogram(name: "nn_priolist_activate", scope: !2, file: !2, line: 66, type: !145, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !66)
!172 = !DILocalVariable(name: "self", arg: 1, scope: !171, file: !2, line: 66, type: !50)
!173 = !DILocation(line: 66, column: 48, scope: !171)
!174 = !DILocalVariable(name: "pipe", arg: 2, scope: !171, file: !2, line: 66, type: !25)
!175 = !DILocation(line: 66, column: 70, scope: !171)
!176 = !DILocalVariable(name: "data", arg: 3, scope: !171, file: !2, line: 67, type: !20)
!177 = !DILocation(line: 67, column: 30, scope: !171)
!178 = !DILocalVariable(name: "slot", scope: !171, file: !2, line: 69, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!180 = !DILocation(line: 69, column: 30, scope: !171)
!181 = !DILocation(line: 71, column: 13, scope: !171)
!182 = !DILocation(line: 71, column: 19, scope: !171)
!183 = !DILocation(line: 71, column: 26, scope: !171)
!184 = !DILocation(line: 71, column: 32, scope: !171)
!185 = !DILocation(line: 71, column: 41, scope: !171)
!186 = !DILocation(line: 71, column: 10, scope: !171)
!187 = !DILocation(line: 75, column: 26, scope: !188)
!188 = distinct !DILexicalBlock(scope: !171, file: !2, line: 75, column: 9)
!189 = !DILocation(line: 75, column: 32, scope: !188)
!190 = !DILocation(line: 75, column: 10, scope: !188)
!191 = !DILocation(line: 75, column: 9, scope: !171)
!192 = !DILocation(line: 76, column: 26, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !2, line: 75, column: 40)
!194 = !DILocation(line: 76, column: 32, scope: !193)
!195 = !DILocation(line: 76, column: 40, scope: !193)
!196 = !DILocation(line: 76, column: 46, scope: !193)
!197 = !DILocation(line: 76, column: 66, scope: !193)
!198 = !DILocation(line: 76, column: 72, scope: !193)
!199 = !DILocation(line: 76, column: 52, scope: !193)
!200 = !DILocation(line: 76, column: 9, scope: !193)
!201 = !DILocation(line: 77, column: 9, scope: !193)
!202 = !DILocation(line: 82, column: 22, scope: !171)
!203 = !DILocation(line: 82, column: 28, scope: !171)
!204 = !DILocation(line: 82, column: 36, scope: !171)
!205 = !DILocation(line: 82, column: 42, scope: !171)
!206 = !DILocation(line: 82, column: 62, scope: !171)
!207 = !DILocation(line: 82, column: 68, scope: !171)
!208 = !DILocation(line: 82, column: 48, scope: !171)
!209 = !DILocation(line: 82, column: 5, scope: !171)
!210 = !DILocation(line: 83, column: 21, scope: !171)
!211 = !DILocation(line: 83, column: 5, scope: !171)
!212 = !DILocation(line: 83, column: 11, scope: !171)
!213 = !DILocation(line: 83, column: 19, scope: !171)
!214 = !DILocation(line: 84, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !171, file: !2, line: 84, column: 9)
!216 = !DILocation(line: 84, column: 15, scope: !215)
!217 = !DILocation(line: 84, column: 23, scope: !215)
!218 = !DILocation(line: 84, column: 9, scope: !171)
!219 = !DILocation(line: 85, column: 25, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !2, line: 84, column: 30)
!221 = !DILocation(line: 85, column: 31, scope: !220)
!222 = !DILocation(line: 85, column: 9, scope: !220)
!223 = !DILocation(line: 85, column: 15, scope: !220)
!224 = !DILocation(line: 85, column: 23, scope: !220)
!225 = !DILocation(line: 86, column: 9, scope: !220)
!226 = !DILocation(line: 91, column: 9, scope: !227)
!227 = distinct !DILexicalBlock(scope: !171, file: !2, line: 91, column: 9)
!228 = !DILocation(line: 91, column: 15, scope: !227)
!229 = !DILocation(line: 91, column: 25, scope: !227)
!230 = !DILocation(line: 91, column: 31, scope: !227)
!231 = !DILocation(line: 91, column: 23, scope: !227)
!232 = !DILocation(line: 91, column: 9, scope: !171)
!233 = !DILocation(line: 92, column: 25, scope: !234)
!234 = distinct !DILexicalBlock(scope: !227, file: !2, line: 91, column: 41)
!235 = !DILocation(line: 92, column: 31, scope: !234)
!236 = !DILocation(line: 92, column: 9, scope: !234)
!237 = !DILocation(line: 92, column: 15, scope: !234)
!238 = !DILocation(line: 92, column: 23, scope: !234)
!239 = !DILocation(line: 93, column: 9, scope: !234)
!240 = !DILocation(line: 97, column: 1, scope: !171)
!241 = distinct !DISubprogram(name: "nn_priolist_is_active", scope: !2, file: !2, line: 99, type: !242, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !66)
!242 = !DISubroutineType(types: !243)
!243 = !{!29, !50}
!244 = !DILocalVariable(name: "self", arg: 1, scope: !241, file: !2, line: 99, type: !50)
!245 = !DILocation(line: 99, column: 48, scope: !241)
!246 = !DILocation(line: 101, column: 12, scope: !241)
!247 = !DILocation(line: 101, column: 18, scope: !241)
!248 = !DILocation(line: 101, column: 26, scope: !241)
!249 = !DILocation(line: 101, column: 5, scope: !241)
!250 = distinct !DISubprogram(name: "nn_priolist_getpipe", scope: !2, file: !2, line: 104, type: !251, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !66)
!251 = !DISubroutineType(types: !252)
!252 = !{!25, !50}
!253 = !DILocalVariable(name: "self", arg: 1, scope: !250, file: !2, line: 104, type: !50)
!254 = !DILocation(line: 104, column: 58, scope: !250)
!255 = !DILocation(line: 106, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !250, file: !2, line: 106, column: 9)
!257 = !DILocation(line: 106, column: 9, scope: !250)
!258 = !DILocation(line: 107, column: 9, scope: !256)
!259 = !DILocation(line: 108, column: 12, scope: !250)
!260 = !DILocation(line: 108, column: 18, scope: !250)
!261 = !DILocation(line: 108, column: 25, scope: !250)
!262 = !DILocation(line: 108, column: 31, scope: !250)
!263 = !DILocation(line: 108, column: 39, scope: !250)
!264 = !DILocation(line: 108, column: 44, scope: !250)
!265 = !DILocation(line: 108, column: 53, scope: !250)
!266 = !DILocation(line: 108, column: 5, scope: !250)
!267 = !DILocation(line: 109, column: 1, scope: !250)
!268 = distinct !DISubprogram(name: "nn_priolist_advance", scope: !2, file: !2, line: 111, type: !269, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !66)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !50, !29}
!271 = !DILocalVariable(name: "self", arg: 1, scope: !268, file: !2, line: 111, type: !50)
!272 = !DILocation(line: 111, column: 47, scope: !268)
!273 = !DILocalVariable(name: "release", arg: 2, scope: !268, file: !2, line: 111, type: !29)
!274 = !DILocation(line: 111, column: 57, scope: !268)
!275 = !DILocalVariable(name: "slot", scope: !268, file: !2, line: 113, type: !179)
!276 = !DILocation(line: 113, column: 30, scope: !268)
!277 = !DILocalVariable(name: "it", scope: !268, file: !2, line: 114, type: !35)
!278 = !DILocation(line: 114, column: 26, scope: !268)
!279 = !DILocation(line: 116, column: 5, scope: !268)
!280 = !DILocation(line: 116, column: 5, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 116, column: 5)
!282 = distinct !DILexicalBlock(scope: !268, file: !2, line: 116, column: 5)
!283 = !DILocation(line: 116, column: 5, scope: !282)
!284 = !DILocation(line: 116, column: 5, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !2, line: 116, column: 5)
!286 = !DILocation(line: 117, column: 13, scope: !268)
!287 = !DILocation(line: 117, column: 19, scope: !268)
!288 = !DILocation(line: 117, column: 26, scope: !268)
!289 = !DILocation(line: 117, column: 32, scope: !268)
!290 = !DILocation(line: 117, column: 40, scope: !268)
!291 = !DILocation(line: 117, column: 10, scope: !268)
!292 = !DILocation(line: 120, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !268, file: !2, line: 120, column: 9)
!294 = !DILocation(line: 120, column: 9, scope: !268)
!295 = !DILocation(line: 121, column: 30, scope: !293)
!296 = !DILocation(line: 121, column: 36, scope: !293)
!297 = !DILocation(line: 121, column: 44, scope: !293)
!298 = !DILocation(line: 121, column: 50, scope: !293)
!299 = !DILocation(line: 121, column: 59, scope: !293)
!300 = !DILocation(line: 121, column: 14, scope: !293)
!301 = !DILocation(line: 121, column: 12, scope: !293)
!302 = !DILocation(line: 121, column: 9, scope: !293)
!303 = !DILocation(line: 123, column: 29, scope: !293)
!304 = !DILocation(line: 123, column: 35, scope: !293)
!305 = !DILocation(line: 123, column: 43, scope: !293)
!306 = !DILocation(line: 123, column: 49, scope: !293)
!307 = !DILocation(line: 123, column: 58, scope: !293)
!308 = !DILocation(line: 123, column: 14, scope: !293)
!309 = !DILocation(line: 123, column: 12, scope: !293)
!310 = !DILocation(line: 124, column: 10, scope: !311)
!311 = distinct !DILexicalBlock(scope: !268, file: !2, line: 124, column: 9)
!312 = !DILocation(line: 124, column: 9, scope: !268)
!313 = !DILocation(line: 125, column: 30, scope: !311)
!314 = !DILocation(line: 125, column: 36, scope: !311)
!315 = !DILocation(line: 125, column: 14, scope: !311)
!316 = !DILocation(line: 125, column: 12, scope: !311)
!317 = !DILocation(line: 125, column: 9, scope: !311)
!318 = !DILocation(line: 126, column: 21, scope: !268)
!319 = !DILocation(line: 126, column: 5, scope: !268)
!320 = !DILocation(line: 126, column: 11, scope: !268)
!321 = !DILocation(line: 126, column: 19, scope: !268)
!322 = !DILocation(line: 130, column: 5, scope: !268)
!323 = !DILocation(line: 130, column: 28, scope: !268)
!324 = !DILocation(line: 130, column: 34, scope: !268)
!325 = !DILocation(line: 130, column: 12, scope: !268)
!326 = !DILocation(line: 131, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !268, file: !2, line: 130, column: 42)
!328 = !DILocation(line: 131, column: 17, scope: !327)
!329 = !DILocation(line: 131, column: 9, scope: !327)
!330 = !DILocation(line: 132, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !2, line: 132, column: 13)
!332 = !DILocation(line: 132, column: 19, scope: !331)
!333 = !DILocation(line: 132, column: 27, scope: !331)
!334 = !DILocation(line: 132, column: 13, scope: !327)
!335 = !DILocation(line: 133, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !2, line: 132, column: 48)
!337 = !DILocation(line: 133, column: 19, scope: !336)
!338 = !DILocation(line: 133, column: 27, scope: !336)
!339 = !DILocation(line: 134, column: 13, scope: !336)
!340 = !DILocation(line: 136, column: 17, scope: !327)
!341 = !DILocation(line: 136, column: 23, scope: !327)
!342 = !DILocation(line: 136, column: 30, scope: !327)
!343 = !DILocation(line: 136, column: 36, scope: !327)
!344 = !DILocation(line: 136, column: 44, scope: !327)
!345 = !DILocation(line: 136, column: 14, scope: !327)
!346 = distinct !{!346, !322, !347, !94}
!347 = !DILocation(line: 137, column: 5, scope: !268)
!348 = !DILocation(line: 138, column: 1, scope: !268)
