; ModuleID = './src/utils/list.c'
source_filename = "./src/utils/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_list = type { ptr, ptr }
%struct.nn_list_item = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"self->first == NULL\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [19 x i8] c"./src/utils/list.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [19 x i8] c"self->last == NULL\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [30 x i8] c"it->prev != NN_LIST_NOTINLIST\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [30 x i8] c"it->next != NN_LIST_NOTINLIST\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [30 x i8] c"!nn_list_item_isinlist (item)\00", align 1, !dbg !23
@.str.7 = private unnamed_addr constant [29 x i8] c"nn_list_item_isinlist (item)\00", align 1, !dbg !25
@.str.8 = private unnamed_addr constant [30 x i8] c"!nn_list_item_isinlist (self)\00", align 1, !dbg !30

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_list_init(ptr noundef %0) #0 !dbg !51 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !60, metadata !DIExpression()), !dbg !61
  %3 = load ptr, ptr %2, align 8, !dbg !62
  %4 = getelementptr inbounds %struct.nn_list, ptr %3, i32 0, i32 0, !dbg !63
  store ptr null, ptr %4, align 8, !dbg !64
  %5 = load ptr, ptr %2, align 8, !dbg !65
  %6 = getelementptr inbounds %struct.nn_list, ptr %5, i32 0, i32 1, !dbg !66
  store ptr null, ptr %6, align 8, !dbg !67
  ret void, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_list_term(ptr noundef %0) #0 !dbg !69 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !70, metadata !DIExpression()), !dbg !71
  br label %3, !dbg !72

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !73
  %5 = getelementptr inbounds %struct.nn_list, ptr %4, i32 0, i32 0, !dbg !73
  %6 = load ptr, ptr %5, align 8, !dbg !73
  %7 = icmp eq ptr %6, null, !dbg !73
  %8 = xor i1 %7, true, !dbg !73
  %9 = zext i1 %8 to i32, !dbg !73
  %10 = sext i32 %9 to i64, !dbg !73
  %11 = icmp ne i64 %10, 0, !dbg !73
  br i1 %11, label %12, label %15, !dbg !76

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !77
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 36), !dbg !77
  call void @nn_err_abort() #4, !dbg !77
  unreachable, !dbg !77

15:                                               ; preds = %3
  br label %16, !dbg !76

16:                                               ; preds = %15
  br label %17, !dbg !79

17:                                               ; preds = %16
  %18 = load ptr, ptr %2, align 8, !dbg !80
  %19 = getelementptr inbounds %struct.nn_list, ptr %18, i32 0, i32 1, !dbg !80
  %20 = load ptr, ptr %19, align 8, !dbg !80
  %21 = icmp eq ptr %20, null, !dbg !80
  %22 = xor i1 %21, true, !dbg !80
  %23 = zext i1 %22 to i32, !dbg !80
  %24 = sext i32 %23 to i64, !dbg !80
  %25 = icmp ne i64 %24, 0, !dbg !80
  br i1 %25, label %26, label %29, !dbg !83

26:                                               ; preds = %17
  %27 = load ptr, ptr @stderr, align 8, !dbg !84
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 37), !dbg !84
  call void @nn_err_abort() #4, !dbg !84
  unreachable, !dbg !84

29:                                               ; preds = %17
  br label %30, !dbg !83

30:                                               ; preds = %29
  ret void, !dbg !86
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_list_empty(ptr noundef %0) #0 !dbg !87 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !91, metadata !DIExpression()), !dbg !92
  %3 = load ptr, ptr %2, align 8, !dbg !93
  %4 = getelementptr inbounds %struct.nn_list, ptr %3, i32 0, i32 0, !dbg !94
  %5 = load ptr, ptr %4, align 8, !dbg !94
  %6 = icmp ne ptr %5, null, !dbg !93
  %7 = zext i1 %6 to i64, !dbg !93
  %8 = select i1 %6, i32 0, i32 1, !dbg !93
  ret i32 %8, !dbg !95
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_list_begin(ptr noundef %0) #0 !dbg !96 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !99, metadata !DIExpression()), !dbg !100
  %3 = load ptr, ptr %2, align 8, !dbg !101
  %4 = getelementptr inbounds %struct.nn_list, ptr %3, i32 0, i32 0, !dbg !102
  %5 = load ptr, ptr %4, align 8, !dbg !102
  ret ptr %5, !dbg !103
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_list_end(ptr noundef %0) #0 !dbg !104 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !105, metadata !DIExpression()), !dbg !106
  ret ptr null, !dbg !107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_list_prev(ptr noundef %0, ptr noundef %1) #0 !dbg !108 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !111, metadata !DIExpression()), !dbg !112
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !113, metadata !DIExpression()), !dbg !114
  %6 = load ptr, ptr %5, align 8, !dbg !115
  %7 = icmp ne ptr %6, null, !dbg !115
  br i1 %7, label %12, label %8, !dbg !117

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !118
  %10 = getelementptr inbounds %struct.nn_list, ptr %9, i32 0, i32 1, !dbg !119
  %11 = load ptr, ptr %10, align 8, !dbg !119
  store ptr %11, ptr %3, align 8, !dbg !120
  br label %30, !dbg !120

12:                                               ; preds = %2
  br label %13, !dbg !121

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 8, !dbg !122
  %15 = getelementptr inbounds %struct.nn_list_item, ptr %14, i32 0, i32 1, !dbg !122
  %16 = load ptr, ptr %15, align 8, !dbg !122
  %17 = icmp ne ptr %16, inttoptr (i64 -1 to ptr), !dbg !122
  %18 = xor i1 %17, true, !dbg !122
  %19 = zext i1 %18 to i32, !dbg !122
  %20 = sext i32 %19 to i64, !dbg !122
  %21 = icmp ne i64 %20, 0, !dbg !122
  br i1 %21, label %22, label %25, !dbg !125

22:                                               ; preds = %13
  %23 = load ptr, ptr @stderr, align 8, !dbg !126
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 60), !dbg !126
  call void @nn_err_abort() #4, !dbg !126
  unreachable, !dbg !126

25:                                               ; preds = %13
  br label %26, !dbg !125

26:                                               ; preds = %25
  %27 = load ptr, ptr %5, align 8, !dbg !128
  %28 = getelementptr inbounds %struct.nn_list_item, ptr %27, i32 0, i32 1, !dbg !129
  %29 = load ptr, ptr %28, align 8, !dbg !129
  store ptr %29, ptr %3, align 8, !dbg !130
  br label %30, !dbg !130

30:                                               ; preds = %26, %8
  %31 = load ptr, ptr %3, align 8, !dbg !131
  ret ptr %31, !dbg !131
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_list_next(ptr noundef %0, ptr noundef %1) #0 !dbg !132 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !133, metadata !DIExpression()), !dbg !134
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !135, metadata !DIExpression()), !dbg !136
  br label %5, !dbg !137

5:                                                ; preds = %2
  %6 = load ptr, ptr %4, align 8, !dbg !138
  %7 = getelementptr inbounds %struct.nn_list_item, ptr %6, i32 0, i32 0, !dbg !138
  %8 = load ptr, ptr %7, align 8, !dbg !138
  %9 = icmp ne ptr %8, inttoptr (i64 -1 to ptr), !dbg !138
  %10 = xor i1 %9, true, !dbg !138
  %11 = zext i1 %10 to i32, !dbg !138
  %12 = sext i32 %11 to i64, !dbg !138
  %13 = icmp ne i64 %12, 0, !dbg !138
  br i1 %13, label %14, label %17, !dbg !141

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !dbg !142
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 67), !dbg !142
  call void @nn_err_abort() #4, !dbg !142
  unreachable, !dbg !142

17:                                               ; preds = %5
  br label %18, !dbg !141

18:                                               ; preds = %17
  %19 = load ptr, ptr %4, align 8, !dbg !144
  %20 = getelementptr inbounds %struct.nn_list_item, ptr %19, i32 0, i32 0, !dbg !145
  %21 = load ptr, ptr %20, align 8, !dbg !145
  ret ptr %21, !dbg !146
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_list_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !147 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !150, metadata !DIExpression()), !dbg !151
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !152, metadata !DIExpression()), !dbg !153
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !154, metadata !DIExpression()), !dbg !155
  br label %7, !dbg !156

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !dbg !157
  %9 = call i32 @nn_list_item_isinlist(ptr noundef %8), !dbg !157
  %10 = icmp ne i32 %9, 0, !dbg !157
  %11 = xor i1 %10, true, !dbg !157
  %12 = xor i1 %11, true, !dbg !157
  %13 = zext i1 %12 to i32, !dbg !157
  %14 = sext i32 %13 to i64, !dbg !157
  %15 = icmp ne i64 %14, 0, !dbg !157
  br i1 %15, label %16, label %19, !dbg !160

16:                                               ; preds = %7
  %17 = load ptr, ptr @stderr, align 8, !dbg !161
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 74), !dbg !161
  call void @nn_err_abort() #4, !dbg !161
  unreachable, !dbg !161

19:                                               ; preds = %7
  br label %20, !dbg !160

20:                                               ; preds = %19
  %21 = load ptr, ptr %6, align 8, !dbg !163
  %22 = icmp ne ptr %21, null, !dbg !163
  br i1 %22, label %23, label %27, !dbg !163

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8, !dbg !164
  %25 = getelementptr inbounds %struct.nn_list_item, ptr %24, i32 0, i32 1, !dbg !165
  %26 = load ptr, ptr %25, align 8, !dbg !165
  br label %31, !dbg !163

27:                                               ; preds = %20
  %28 = load ptr, ptr %4, align 8, !dbg !166
  %29 = getelementptr inbounds %struct.nn_list, ptr %28, i32 0, i32 1, !dbg !167
  %30 = load ptr, ptr %29, align 8, !dbg !167
  br label %31, !dbg !163

31:                                               ; preds = %27, %23
  %32 = phi ptr [ %26, %23 ], [ %30, %27 ], !dbg !163
  %33 = load ptr, ptr %5, align 8, !dbg !168
  %34 = getelementptr inbounds %struct.nn_list_item, ptr %33, i32 0, i32 1, !dbg !169
  store ptr %32, ptr %34, align 8, !dbg !170
  %35 = load ptr, ptr %6, align 8, !dbg !171
  %36 = load ptr, ptr %5, align 8, !dbg !172
  %37 = getelementptr inbounds %struct.nn_list_item, ptr %36, i32 0, i32 0, !dbg !173
  store ptr %35, ptr %37, align 8, !dbg !174
  %38 = load ptr, ptr %5, align 8, !dbg !175
  %39 = getelementptr inbounds %struct.nn_list_item, ptr %38, i32 0, i32 1, !dbg !177
  %40 = load ptr, ptr %39, align 8, !dbg !177
  %41 = icmp ne ptr %40, null, !dbg !175
  br i1 %41, label %42, label %48, !dbg !178

42:                                               ; preds = %31
  %43 = load ptr, ptr %5, align 8, !dbg !179
  %44 = load ptr, ptr %5, align 8, !dbg !180
  %45 = getelementptr inbounds %struct.nn_list_item, ptr %44, i32 0, i32 1, !dbg !181
  %46 = load ptr, ptr %45, align 8, !dbg !181
  %47 = getelementptr inbounds %struct.nn_list_item, ptr %46, i32 0, i32 0, !dbg !182
  store ptr %43, ptr %47, align 8, !dbg !183
  br label %48, !dbg !180

48:                                               ; preds = %42, %31
  %49 = load ptr, ptr %5, align 8, !dbg !184
  %50 = getelementptr inbounds %struct.nn_list_item, ptr %49, i32 0, i32 0, !dbg !186
  %51 = load ptr, ptr %50, align 8, !dbg !186
  %52 = icmp ne ptr %51, null, !dbg !184
  br i1 %52, label %53, label %59, !dbg !187

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 8, !dbg !188
  %55 = load ptr, ptr %5, align 8, !dbg !189
  %56 = getelementptr inbounds %struct.nn_list_item, ptr %55, i32 0, i32 0, !dbg !190
  %57 = load ptr, ptr %56, align 8, !dbg !190
  %58 = getelementptr inbounds %struct.nn_list_item, ptr %57, i32 0, i32 1, !dbg !191
  store ptr %54, ptr %58, align 8, !dbg !192
  br label %59, !dbg !189

59:                                               ; preds = %53, %48
  %60 = load ptr, ptr %4, align 8, !dbg !193
  %61 = getelementptr inbounds %struct.nn_list, ptr %60, i32 0, i32 0, !dbg !195
  %62 = load ptr, ptr %61, align 8, !dbg !195
  %63 = icmp ne ptr %62, null, !dbg !193
  br i1 %63, label %64, label %70, !dbg !196

64:                                               ; preds = %59
  %65 = load ptr, ptr %4, align 8, !dbg !197
  %66 = getelementptr inbounds %struct.nn_list, ptr %65, i32 0, i32 0, !dbg !198
  %67 = load ptr, ptr %66, align 8, !dbg !198
  %68 = load ptr, ptr %6, align 8, !dbg !199
  %69 = icmp eq ptr %67, %68, !dbg !200
  br i1 %69, label %70, label %74, !dbg !201

70:                                               ; preds = %64, %59
  %71 = load ptr, ptr %5, align 8, !dbg !202
  %72 = load ptr, ptr %4, align 8, !dbg !203
  %73 = getelementptr inbounds %struct.nn_list, ptr %72, i32 0, i32 0, !dbg !204
  store ptr %71, ptr %73, align 8, !dbg !205
  br label %74, !dbg !203

74:                                               ; preds = %70, %64
  %75 = load ptr, ptr %6, align 8, !dbg !206
  %76 = icmp ne ptr %75, null, !dbg !206
  br i1 %76, label %81, label %77, !dbg !208

77:                                               ; preds = %74
  %78 = load ptr, ptr %5, align 8, !dbg !209
  %79 = load ptr, ptr %4, align 8, !dbg !210
  %80 = getelementptr inbounds %struct.nn_list, ptr %79, i32 0, i32 1, !dbg !211
  store ptr %78, ptr %80, align 8, !dbg !212
  br label %81, !dbg !210

81:                                               ; preds = %77, %74
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_list_item_isinlist(ptr noundef %0) #0 !dbg !214 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !217, metadata !DIExpression()), !dbg !218
  %3 = load ptr, ptr %2, align 8, !dbg !219
  %4 = getelementptr inbounds %struct.nn_list_item, ptr %3, i32 0, i32 1, !dbg !220
  %5 = load ptr, ptr %4, align 8, !dbg !220
  %6 = icmp eq ptr %5, inttoptr (i64 -1 to ptr), !dbg !221
  %7 = zext i1 %6 to i64, !dbg !219
  %8 = select i1 %6, i32 0, i32 1, !dbg !219
  ret i32 %8, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_list_erase(ptr noundef %0, ptr noundef %1) #0 !dbg !223 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !224, metadata !DIExpression()), !dbg !225
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata ptr %5, metadata !228, metadata !DIExpression()), !dbg !229
  br label %6, !dbg !230

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !dbg !231
  %8 = call i32 @nn_list_item_isinlist(ptr noundef %7), !dbg !231
  %9 = icmp ne i32 %8, 0, !dbg !231
  %10 = xor i1 %9, true, !dbg !231
  %11 = zext i1 %10 to i32, !dbg !231
  %12 = sext i32 %11 to i64, !dbg !231
  %13 = icmp ne i64 %12, 0, !dbg !231
  br i1 %13, label %14, label %17, !dbg !234

14:                                               ; preds = %6
  %15 = load ptr, ptr @stderr, align 8, !dbg !235
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 93), !dbg !235
  call void @nn_err_abort() #4, !dbg !235
  unreachable, !dbg !235

17:                                               ; preds = %6
  br label %18, !dbg !234

18:                                               ; preds = %17
  %19 = load ptr, ptr %4, align 8, !dbg !237
  %20 = getelementptr inbounds %struct.nn_list_item, ptr %19, i32 0, i32 1, !dbg !239
  %21 = load ptr, ptr %20, align 8, !dbg !239
  %22 = icmp ne ptr %21, null, !dbg !237
  br i1 %22, label %23, label %31, !dbg !240

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !dbg !241
  %25 = getelementptr inbounds %struct.nn_list_item, ptr %24, i32 0, i32 0, !dbg !242
  %26 = load ptr, ptr %25, align 8, !dbg !242
  %27 = load ptr, ptr %4, align 8, !dbg !243
  %28 = getelementptr inbounds %struct.nn_list_item, ptr %27, i32 0, i32 1, !dbg !244
  %29 = load ptr, ptr %28, align 8, !dbg !244
  %30 = getelementptr inbounds %struct.nn_list_item, ptr %29, i32 0, i32 0, !dbg !245
  store ptr %26, ptr %30, align 8, !dbg !246
  br label %37, !dbg !243

31:                                               ; preds = %18
  %32 = load ptr, ptr %4, align 8, !dbg !247
  %33 = getelementptr inbounds %struct.nn_list_item, ptr %32, i32 0, i32 0, !dbg !248
  %34 = load ptr, ptr %33, align 8, !dbg !248
  %35 = load ptr, ptr %3, align 8, !dbg !249
  %36 = getelementptr inbounds %struct.nn_list, ptr %35, i32 0, i32 0, !dbg !250
  store ptr %34, ptr %36, align 8, !dbg !251
  br label %37

37:                                               ; preds = %31, %23
  %38 = load ptr, ptr %4, align 8, !dbg !252
  %39 = getelementptr inbounds %struct.nn_list_item, ptr %38, i32 0, i32 0, !dbg !254
  %40 = load ptr, ptr %39, align 8, !dbg !254
  %41 = icmp ne ptr %40, null, !dbg !252
  br i1 %41, label %42, label %50, !dbg !255

42:                                               ; preds = %37
  %43 = load ptr, ptr %4, align 8, !dbg !256
  %44 = getelementptr inbounds %struct.nn_list_item, ptr %43, i32 0, i32 1, !dbg !257
  %45 = load ptr, ptr %44, align 8, !dbg !257
  %46 = load ptr, ptr %4, align 8, !dbg !258
  %47 = getelementptr inbounds %struct.nn_list_item, ptr %46, i32 0, i32 0, !dbg !259
  %48 = load ptr, ptr %47, align 8, !dbg !259
  %49 = getelementptr inbounds %struct.nn_list_item, ptr %48, i32 0, i32 1, !dbg !260
  store ptr %45, ptr %49, align 8, !dbg !261
  br label %56, !dbg !258

50:                                               ; preds = %37
  %51 = load ptr, ptr %4, align 8, !dbg !262
  %52 = getelementptr inbounds %struct.nn_list_item, ptr %51, i32 0, i32 1, !dbg !263
  %53 = load ptr, ptr %52, align 8, !dbg !263
  %54 = load ptr, ptr %3, align 8, !dbg !264
  %55 = getelementptr inbounds %struct.nn_list, ptr %54, i32 0, i32 1, !dbg !265
  store ptr %53, ptr %55, align 8, !dbg !266
  br label %56

56:                                               ; preds = %50, %42
  %57 = load ptr, ptr %4, align 8, !dbg !267
  %58 = getelementptr inbounds %struct.nn_list_item, ptr %57, i32 0, i32 0, !dbg !268
  %59 = load ptr, ptr %58, align 8, !dbg !268
  store ptr %59, ptr %5, align 8, !dbg !269
  %60 = load ptr, ptr %4, align 8, !dbg !270
  %61 = getelementptr inbounds %struct.nn_list_item, ptr %60, i32 0, i32 1, !dbg !271
  store ptr inttoptr (i64 -1 to ptr), ptr %61, align 8, !dbg !272
  %62 = load ptr, ptr %4, align 8, !dbg !273
  %63 = getelementptr inbounds %struct.nn_list_item, ptr %62, i32 0, i32 0, !dbg !274
  store ptr inttoptr (i64 -1 to ptr), ptr %63, align 8, !dbg !275
  %64 = load ptr, ptr %5, align 8, !dbg !276
  ret ptr %64, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_list_item_init(ptr noundef %0) #0 !dbg !278 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !281, metadata !DIExpression()), !dbg !282
  %3 = load ptr, ptr %2, align 8, !dbg !283
  %4 = getelementptr inbounds %struct.nn_list_item, ptr %3, i32 0, i32 1, !dbg !284
  store ptr inttoptr (i64 -1 to ptr), ptr %4, align 8, !dbg !285
  %5 = load ptr, ptr %2, align 8, !dbg !286
  %6 = getelementptr inbounds %struct.nn_list_item, ptr %5, i32 0, i32 0, !dbg !287
  store ptr inttoptr (i64 -1 to ptr), ptr %6, align 8, !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_list_item_term(ptr noundef %0) #0 !dbg !290 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !291, metadata !DIExpression()), !dbg !292
  br label %3, !dbg !293

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !294
  %5 = call i32 @nn_list_item_isinlist(ptr noundef %4), !dbg !294
  %6 = icmp ne i32 %5, 0, !dbg !294
  %7 = xor i1 %6, true, !dbg !294
  %8 = xor i1 %7, true, !dbg !294
  %9 = zext i1 %8 to i32, !dbg !294
  %10 = sext i32 %9 to i64, !dbg !294
  %11 = icmp ne i64 %10, 0, !dbg !294
  br i1 %11, label %12, label %15, !dbg !297

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !298
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 120), !dbg !298
  call void @nn_err_abort() #4, !dbg !298
  unreachable, !dbg !298

15:                                               ; preds = %3
  br label %16, !dbg !297

16:                                               ; preds = %15
  ret void, !dbg !300
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/list.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a374fc228ae5be5724a648ec04222ebe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 19)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !3, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !3, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !3, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 29)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !3, isLocal: true, isDefinition: true)
!32 = distinct !DICompileUnit(language: DW_LANG_C11, file: !33, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !34, globals: !42, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "src/utils/list.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a374fc228ae5be5724a648ec04222ebe")
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !38, line: 26, size: 128, elements: !39)
!38 = !DIFile(filename: "./src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !38, line: 27, baseType: !36, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !37, file: !38, line: 28, baseType: !36, size: 64, offset: 64)
!42 = !{!0, !7, !12, !17, !19, !21, !23, !25, !30}
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 16.0.0"}
!51 = distinct !DISubprogram(name: "nn_list_init", scope: !2, file: !2, line: 28, type: !52, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !38, line: 31, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !55, file: !38, line: 32, baseType: !36, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !55, file: !38, line: 33, baseType: !36, size: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "self", arg: 1, scope: !51, file: !2, line: 28, type: !54)
!61 = !DILocation(line: 28, column: 36, scope: !51)
!62 = !DILocation(line: 30, column: 5, scope: !51)
!63 = !DILocation(line: 30, column: 11, scope: !51)
!64 = !DILocation(line: 30, column: 17, scope: !51)
!65 = !DILocation(line: 31, column: 5, scope: !51)
!66 = !DILocation(line: 31, column: 11, scope: !51)
!67 = !DILocation(line: 31, column: 16, scope: !51)
!68 = !DILocation(line: 32, column: 1, scope: !51)
!69 = distinct !DISubprogram(name: "nn_list_term", scope: !2, file: !2, line: 34, type: !52, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!70 = !DILocalVariable(name: "self", arg: 1, scope: !69, file: !2, line: 34, type: !54)
!71 = !DILocation(line: 34, column: 36, scope: !69)
!72 = !DILocation(line: 36, column: 5, scope: !69)
!73 = !DILocation(line: 36, column: 5, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 36, column: 5)
!75 = distinct !DILexicalBlock(scope: !69, file: !2, line: 36, column: 5)
!76 = !DILocation(line: 36, column: 5, scope: !75)
!77 = !DILocation(line: 36, column: 5, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !2, line: 36, column: 5)
!79 = !DILocation(line: 37, column: 5, scope: !69)
!80 = !DILocation(line: 37, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 37, column: 5)
!82 = distinct !DILexicalBlock(scope: !69, file: !2, line: 37, column: 5)
!83 = !DILocation(line: 37, column: 5, scope: !82)
!84 = !DILocation(line: 37, column: 5, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !2, line: 37, column: 5)
!86 = !DILocation(line: 38, column: 1, scope: !69)
!87 = distinct !DISubprogram(name: "nn_list_empty", scope: !2, file: !2, line: 40, type: !88, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !54}
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DILocalVariable(name: "self", arg: 1, scope: !87, file: !2, line: 40, type: !54)
!92 = !DILocation(line: 40, column: 36, scope: !87)
!93 = !DILocation(line: 42, column: 12, scope: !87)
!94 = !DILocation(line: 42, column: 18, scope: !87)
!95 = !DILocation(line: 42, column: 5, scope: !87)
!96 = distinct !DISubprogram(name: "nn_list_begin", scope: !2, file: !2, line: 45, type: !97, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!97 = !DISubroutineType(types: !98)
!98 = !{!36, !54}
!99 = !DILocalVariable(name: "self", arg: 1, scope: !96, file: !2, line: 45, type: !54)
!100 = !DILocation(line: 45, column: 53, scope: !96)
!101 = !DILocation(line: 47, column: 12, scope: !96)
!102 = !DILocation(line: 47, column: 18, scope: !96)
!103 = !DILocation(line: 47, column: 5, scope: !96)
!104 = distinct !DISubprogram(name: "nn_list_end", scope: !2, file: !2, line: 50, type: !97, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!105 = !DILocalVariable(name: "self", arg: 1, scope: !104, file: !2, line: 50, type: !54)
!106 = !DILocation(line: 50, column: 51, scope: !104)
!107 = !DILocation(line: 52, column: 5, scope: !104)
!108 = distinct !DISubprogram(name: "nn_list_prev", scope: !2, file: !2, line: 55, type: !109, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!109 = !DISubroutineType(types: !110)
!110 = !{!36, !54, !36}
!111 = !DILocalVariable(name: "self", arg: 1, scope: !108, file: !2, line: 55, type: !54)
!112 = !DILocation(line: 55, column: 52, scope: !108)
!113 = !DILocalVariable(name: "it", arg: 2, scope: !108, file: !2, line: 56, type: !36)
!114 = !DILocation(line: 56, column: 26, scope: !108)
!115 = !DILocation(line: 58, column: 10, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !2, line: 58, column: 9)
!117 = !DILocation(line: 58, column: 9, scope: !108)
!118 = !DILocation(line: 59, column: 16, scope: !116)
!119 = !DILocation(line: 59, column: 22, scope: !116)
!120 = !DILocation(line: 59, column: 9, scope: !116)
!121 = !DILocation(line: 60, column: 5, scope: !108)
!122 = !DILocation(line: 60, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 60, column: 5)
!124 = distinct !DILexicalBlock(scope: !108, file: !2, line: 60, column: 5)
!125 = !DILocation(line: 60, column: 5, scope: !124)
!126 = !DILocation(line: 60, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !2, line: 60, column: 5)
!128 = !DILocation(line: 61, column: 12, scope: !108)
!129 = !DILocation(line: 61, column: 16, scope: !108)
!130 = !DILocation(line: 61, column: 5, scope: !108)
!131 = !DILocation(line: 62, column: 1, scope: !108)
!132 = distinct !DISubprogram(name: "nn_list_next", scope: !2, file: !2, line: 64, type: !109, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!133 = !DILocalVariable(name: "self", arg: 1, scope: !132, file: !2, line: 64, type: !54)
!134 = !DILocation(line: 64, column: 52, scope: !132)
!135 = !DILocalVariable(name: "it", arg: 2, scope: !132, file: !2, line: 65, type: !36)
!136 = !DILocation(line: 65, column: 26, scope: !132)
!137 = !DILocation(line: 67, column: 5, scope: !132)
!138 = !DILocation(line: 67, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 67, column: 5)
!140 = distinct !DILexicalBlock(scope: !132, file: !2, line: 67, column: 5)
!141 = !DILocation(line: 67, column: 5, scope: !140)
!142 = !DILocation(line: 67, column: 5, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !2, line: 67, column: 5)
!144 = !DILocation(line: 68, column: 12, scope: !132)
!145 = !DILocation(line: 68, column: 16, scope: !132)
!146 = !DILocation(line: 68, column: 5, scope: !132)
!147 = distinct !DISubprogram(name: "nn_list_insert", scope: !2, file: !2, line: 71, type: !148, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !54, !36, !36}
!150 = !DILocalVariable(name: "self", arg: 1, scope: !147, file: !2, line: 71, type: !54)
!151 = !DILocation(line: 71, column: 38, scope: !147)
!152 = !DILocalVariable(name: "item", arg: 2, scope: !147, file: !2, line: 71, type: !36)
!153 = !DILocation(line: 71, column: 65, scope: !147)
!154 = !DILocalVariable(name: "it", arg: 3, scope: !147, file: !2, line: 72, type: !36)
!155 = !DILocation(line: 72, column: 26, scope: !147)
!156 = !DILocation(line: 74, column: 5, scope: !147)
!157 = !DILocation(line: 74, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !2, line: 74, column: 5)
!159 = distinct !DILexicalBlock(scope: !147, file: !2, line: 74, column: 5)
!160 = !DILocation(line: 74, column: 5, scope: !159)
!161 = !DILocation(line: 74, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !2, line: 74, column: 5)
!163 = !DILocation(line: 76, column: 18, scope: !147)
!164 = !DILocation(line: 76, column: 23, scope: !147)
!165 = !DILocation(line: 76, column: 27, scope: !147)
!166 = !DILocation(line: 76, column: 34, scope: !147)
!167 = !DILocation(line: 76, column: 40, scope: !147)
!168 = !DILocation(line: 76, column: 5, scope: !147)
!169 = !DILocation(line: 76, column: 11, scope: !147)
!170 = !DILocation(line: 76, column: 16, scope: !147)
!171 = !DILocation(line: 77, column: 18, scope: !147)
!172 = !DILocation(line: 77, column: 5, scope: !147)
!173 = !DILocation(line: 77, column: 11, scope: !147)
!174 = !DILocation(line: 77, column: 16, scope: !147)
!175 = !DILocation(line: 78, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !147, file: !2, line: 78, column: 9)
!177 = !DILocation(line: 78, column: 15, scope: !176)
!178 = !DILocation(line: 78, column: 9, scope: !147)
!179 = !DILocation(line: 79, column: 28, scope: !176)
!180 = !DILocation(line: 79, column: 9, scope: !176)
!181 = !DILocation(line: 79, column: 15, scope: !176)
!182 = !DILocation(line: 79, column: 21, scope: !176)
!183 = !DILocation(line: 79, column: 26, scope: !176)
!184 = !DILocation(line: 80, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !147, file: !2, line: 80, column: 9)
!186 = !DILocation(line: 80, column: 15, scope: !185)
!187 = !DILocation(line: 80, column: 9, scope: !147)
!188 = !DILocation(line: 81, column: 28, scope: !185)
!189 = !DILocation(line: 81, column: 9, scope: !185)
!190 = !DILocation(line: 81, column: 15, scope: !185)
!191 = !DILocation(line: 81, column: 21, scope: !185)
!192 = !DILocation(line: 81, column: 26, scope: !185)
!193 = !DILocation(line: 82, column: 10, scope: !194)
!194 = distinct !DILexicalBlock(scope: !147, file: !2, line: 82, column: 9)
!195 = !DILocation(line: 82, column: 16, scope: !194)
!196 = !DILocation(line: 82, column: 22, scope: !194)
!197 = !DILocation(line: 82, column: 25, scope: !194)
!198 = !DILocation(line: 82, column: 31, scope: !194)
!199 = !DILocation(line: 82, column: 40, scope: !194)
!200 = !DILocation(line: 82, column: 37, scope: !194)
!201 = !DILocation(line: 82, column: 9, scope: !147)
!202 = !DILocation(line: 83, column: 23, scope: !194)
!203 = !DILocation(line: 83, column: 9, scope: !194)
!204 = !DILocation(line: 83, column: 15, scope: !194)
!205 = !DILocation(line: 83, column: 21, scope: !194)
!206 = !DILocation(line: 84, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !147, file: !2, line: 84, column: 9)
!208 = !DILocation(line: 84, column: 9, scope: !147)
!209 = !DILocation(line: 85, column: 22, scope: !207)
!210 = !DILocation(line: 85, column: 9, scope: !207)
!211 = !DILocation(line: 85, column: 15, scope: !207)
!212 = !DILocation(line: 85, column: 20, scope: !207)
!213 = !DILocation(line: 86, column: 1, scope: !147)
!214 = distinct !DISubprogram(name: "nn_list_item_isinlist", scope: !2, file: !2, line: 123, type: !215, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!215 = !DISubroutineType(types: !216)
!216 = !{!90, !36}
!217 = !DILocalVariable(name: "self", arg: 1, scope: !214, file: !2, line: 123, type: !36)
!218 = !DILocation(line: 123, column: 49, scope: !214)
!219 = !DILocation(line: 125, column: 12, scope: !214)
!220 = !DILocation(line: 125, column: 18, scope: !214)
!221 = !DILocation(line: 125, column: 23, scope: !214)
!222 = !DILocation(line: 125, column: 5, scope: !214)
!223 = distinct !DISubprogram(name: "nn_list_erase", scope: !2, file: !2, line: 88, type: !109, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!224 = !DILocalVariable(name: "self", arg: 1, scope: !223, file: !2, line: 88, type: !54)
!225 = !DILocation(line: 88, column: 53, scope: !223)
!226 = !DILocalVariable(name: "item", arg: 2, scope: !223, file: !2, line: 89, type: !36)
!227 = !DILocation(line: 89, column: 26, scope: !223)
!228 = !DILocalVariable(name: "next", scope: !223, file: !2, line: 91, type: !36)
!229 = !DILocation(line: 91, column: 26, scope: !223)
!230 = !DILocation(line: 93, column: 5, scope: !223)
!231 = !DILocation(line: 93, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 93, column: 5)
!233 = distinct !DILexicalBlock(scope: !223, file: !2, line: 93, column: 5)
!234 = !DILocation(line: 93, column: 5, scope: !233)
!235 = !DILocation(line: 93, column: 5, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !2, line: 93, column: 5)
!237 = !DILocation(line: 95, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !223, file: !2, line: 95, column: 9)
!239 = !DILocation(line: 95, column: 15, scope: !238)
!240 = !DILocation(line: 95, column: 9, scope: !223)
!241 = !DILocation(line: 96, column: 28, scope: !238)
!242 = !DILocation(line: 96, column: 34, scope: !238)
!243 = !DILocation(line: 96, column: 9, scope: !238)
!244 = !DILocation(line: 96, column: 15, scope: !238)
!245 = !DILocation(line: 96, column: 21, scope: !238)
!246 = !DILocation(line: 96, column: 26, scope: !238)
!247 = !DILocation(line: 98, column: 23, scope: !238)
!248 = !DILocation(line: 98, column: 29, scope: !238)
!249 = !DILocation(line: 98, column: 9, scope: !238)
!250 = !DILocation(line: 98, column: 15, scope: !238)
!251 = !DILocation(line: 98, column: 21, scope: !238)
!252 = !DILocation(line: 99, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !223, file: !2, line: 99, column: 9)
!254 = !DILocation(line: 99, column: 15, scope: !253)
!255 = !DILocation(line: 99, column: 9, scope: !223)
!256 = !DILocation(line: 100, column: 28, scope: !253)
!257 = !DILocation(line: 100, column: 34, scope: !253)
!258 = !DILocation(line: 100, column: 9, scope: !253)
!259 = !DILocation(line: 100, column: 15, scope: !253)
!260 = !DILocation(line: 100, column: 21, scope: !253)
!261 = !DILocation(line: 100, column: 26, scope: !253)
!262 = !DILocation(line: 102, column: 22, scope: !253)
!263 = !DILocation(line: 102, column: 28, scope: !253)
!264 = !DILocation(line: 102, column: 9, scope: !253)
!265 = !DILocation(line: 102, column: 15, scope: !253)
!266 = !DILocation(line: 102, column: 20, scope: !253)
!267 = !DILocation(line: 104, column: 12, scope: !223)
!268 = !DILocation(line: 104, column: 18, scope: !223)
!269 = !DILocation(line: 104, column: 10, scope: !223)
!270 = !DILocation(line: 106, column: 5, scope: !223)
!271 = !DILocation(line: 106, column: 11, scope: !223)
!272 = !DILocation(line: 106, column: 16, scope: !223)
!273 = !DILocation(line: 107, column: 5, scope: !223)
!274 = !DILocation(line: 107, column: 11, scope: !223)
!275 = !DILocation(line: 107, column: 16, scope: !223)
!276 = !DILocation(line: 109, column: 12, scope: !223)
!277 = !DILocation(line: 109, column: 5, scope: !223)
!278 = distinct !DISubprogram(name: "nn_list_item_init", scope: !2, file: !2, line: 112, type: !279, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !36}
!281 = !DILocalVariable(name: "self", arg: 1, scope: !278, file: !2, line: 112, type: !36)
!282 = !DILocation(line: 112, column: 46, scope: !278)
!283 = !DILocation(line: 114, column: 5, scope: !278)
!284 = !DILocation(line: 114, column: 11, scope: !278)
!285 = !DILocation(line: 114, column: 16, scope: !278)
!286 = !DILocation(line: 115, column: 5, scope: !278)
!287 = !DILocation(line: 115, column: 11, scope: !278)
!288 = !DILocation(line: 115, column: 16, scope: !278)
!289 = !DILocation(line: 116, column: 1, scope: !278)
!290 = distinct !DISubprogram(name: "nn_list_item_term", scope: !2, file: !2, line: 118, type: !279, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !59)
!291 = !DILocalVariable(name: "self", arg: 1, scope: !290, file: !2, line: 118, type: !36)
!292 = !DILocation(line: 118, column: 46, scope: !290)
!293 = !DILocation(line: 120, column: 5, scope: !290)
!294 = !DILocation(line: 120, column: 5, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 120, column: 5)
!296 = distinct !DILexicalBlock(scope: !290, file: !2, line: 120, column: 5)
!297 = !DILocation(line: 120, column: 5, scope: !296)
!298 = !DILocation(line: 120, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !2, line: 120, column: 5)
!300 = !DILocation(line: 121, column: 1, scope: !290)
