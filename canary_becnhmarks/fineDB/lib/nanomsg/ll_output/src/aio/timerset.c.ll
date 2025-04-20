; ModuleID = './src/aio/timerset.c'
source_filename = "./src/aio/timerset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_timerset = type { %struct.nn_clock, %struct.nn_list }
%struct.nn_clock = type { i64, i64 }
%struct.nn_list = type { ptr, ptr }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_list_item = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_timerset_init(ptr noundef %0) #0 !dbg !31 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = load ptr, ptr %2, align 8, !dbg !52
  %4 = getelementptr inbounds %struct.nn_timerset, ptr %3, i32 0, i32 0, !dbg !53
  call void @nn_clock_init(ptr noundef %4), !dbg !54
  %5 = load ptr, ptr %2, align 8, !dbg !55
  %6 = getelementptr inbounds %struct.nn_timerset, ptr %5, i32 0, i32 1, !dbg !56
  call void @nn_list_init(ptr noundef %6), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_clock_init(ptr noundef) #2

declare void @nn_list_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_timerset_term(ptr noundef %0) #0 !dbg !59 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !60, metadata !DIExpression()), !dbg !61
  %3 = load ptr, ptr %2, align 8, !dbg !62
  %4 = getelementptr inbounds %struct.nn_timerset, ptr %3, i32 0, i32 1, !dbg !63
  call void @nn_list_term(ptr noundef %4), !dbg !64
  %5 = load ptr, ptr %2, align 8, !dbg !65
  %6 = getelementptr inbounds %struct.nn_timerset, ptr %5, i32 0, i32 0, !dbg !66
  call void @nn_clock_term(ptr noundef %6), !dbg !67
  ret void, !dbg !68
}

declare void @nn_list_term(ptr noundef) #2

declare void @nn_clock_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_timerset_add(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !69 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !74, metadata !DIExpression()), !dbg !75
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata ptr %7, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata ptr %8, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata ptr %9, metadata !82, metadata !DIExpression()), !dbg !83
  %10 = load ptr, ptr %4, align 8, !dbg !84
  %11 = getelementptr inbounds %struct.nn_timerset, ptr %10, i32 0, i32 0, !dbg !85
  %12 = call i64 @nn_clock_now(ptr noundef %11), !dbg !86
  %13 = load i32, ptr %5, align 4, !dbg !87
  %14 = sext i32 %13 to i64, !dbg !87
  %15 = add i64 %12, %14, !dbg !88
  %16 = load ptr, ptr %6, align 8, !dbg !89
  %17 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %16, i32 0, i32 1, !dbg !90
  store i64 %15, ptr %17, align 8, !dbg !91
  %18 = load ptr, ptr %4, align 8, !dbg !92
  %19 = getelementptr inbounds %struct.nn_timerset, ptr %18, i32 0, i32 1, !dbg !94
  %20 = call ptr @nn_list_begin(ptr noundef %19), !dbg !95
  store ptr %20, ptr %7, align 8, !dbg !96
  br label %21, !dbg !97

21:                                               ; preds = %45, %3
  %22 = load ptr, ptr %7, align 8, !dbg !98
  %23 = load ptr, ptr %4, align 8, !dbg !100
  %24 = getelementptr inbounds %struct.nn_timerset, ptr %23, i32 0, i32 1, !dbg !101
  %25 = call ptr @nn_list_end(ptr noundef %24), !dbg !102
  %26 = icmp ne ptr %22, %25, !dbg !103
  br i1 %26, label %27, label %50, !dbg !104

27:                                               ; preds = %21
  %28 = load ptr, ptr %7, align 8, !dbg !105
  %29 = icmp ne ptr %28, null, !dbg !105
  br i1 %29, label %30, label %33, !dbg !105

30:                                               ; preds = %27
  %31 = load ptr, ptr %7, align 8, !dbg !105
  %32 = getelementptr inbounds i8, ptr %31, i64 0, !dbg !105
  br label %34, !dbg !105

33:                                               ; preds = %27
  br label %34, !dbg !105

34:                                               ; preds = %33, %30
  %35 = phi ptr [ %32, %30 ], [ null, %33 ], !dbg !105
  store ptr %35, ptr %8, align 8, !dbg !107
  %36 = load ptr, ptr %6, align 8, !dbg !108
  %37 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %36, i32 0, i32 1, !dbg !110
  %38 = load i64, ptr %37, align 8, !dbg !110
  %39 = load ptr, ptr %8, align 8, !dbg !111
  %40 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %39, i32 0, i32 1, !dbg !112
  %41 = load i64, ptr %40, align 8, !dbg !112
  %42 = icmp ult i64 %38, %41, !dbg !113
  br i1 %42, label %43, label %44, !dbg !114

43:                                               ; preds = %34
  br label %50, !dbg !115

44:                                               ; preds = %34
  br label %45, !dbg !116

45:                                               ; preds = %44
  %46 = load ptr, ptr %4, align 8, !dbg !117
  %47 = getelementptr inbounds %struct.nn_timerset, ptr %46, i32 0, i32 1, !dbg !118
  %48 = load ptr, ptr %7, align 8, !dbg !119
  %49 = call ptr @nn_list_next(ptr noundef %47, ptr noundef %48), !dbg !120
  store ptr %49, ptr %7, align 8, !dbg !121
  br label %21, !dbg !122, !llvm.loop !123

50:                                               ; preds = %43, %21
  %51 = load ptr, ptr %4, align 8, !dbg !126
  %52 = getelementptr inbounds %struct.nn_timerset, ptr %51, i32 0, i32 1, !dbg !127
  %53 = call ptr @nn_list_begin(ptr noundef %52), !dbg !128
  %54 = load ptr, ptr %7, align 8, !dbg !129
  %55 = icmp eq ptr %53, %54, !dbg !130
  %56 = zext i1 %55 to i64, !dbg !128
  %57 = select i1 %55, i32 1, i32 0, !dbg !128
  store i32 %57, ptr %9, align 4, !dbg !131
  %58 = load ptr, ptr %4, align 8, !dbg !132
  %59 = getelementptr inbounds %struct.nn_timerset, ptr %58, i32 0, i32 1, !dbg !133
  %60 = load ptr, ptr %6, align 8, !dbg !134
  %61 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %60, i32 0, i32 0, !dbg !135
  %62 = load ptr, ptr %7, align 8, !dbg !136
  call void @nn_list_insert(ptr noundef %59, ptr noundef %61, ptr noundef %62), !dbg !137
  %63 = load i32, ptr %9, align 4, !dbg !138
  ret i32 %63, !dbg !139
}

declare i64 @nn_clock_now(ptr noundef) #2

declare ptr @nn_list_begin(ptr noundef) #2

declare ptr @nn_list_end(ptr noundef) #2

declare ptr @nn_list_next(ptr noundef, ptr noundef) #2

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_timerset_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !140 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !143, metadata !DIExpression()), !dbg !144
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata ptr %6, metadata !147, metadata !DIExpression()), !dbg !148
  %7 = load ptr, ptr %5, align 8, !dbg !149
  %8 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %7, i32 0, i32 0, !dbg !151
  %9 = call i32 @nn_list_item_isinlist(ptr noundef %8), !dbg !152
  %10 = icmp ne i32 %9, 0, !dbg !152
  br i1 %10, label %12, label %11, !dbg !153

11:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !154
  br label %27, !dbg !154

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !155
  %14 = getelementptr inbounds %struct.nn_timerset, ptr %13, i32 0, i32 1, !dbg !156
  %15 = call ptr @nn_list_begin(ptr noundef %14), !dbg !157
  %16 = load ptr, ptr %5, align 8, !dbg !158
  %17 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %16, i32 0, i32 0, !dbg !159
  %18 = icmp eq ptr %15, %17, !dbg !160
  %19 = zext i1 %18 to i64, !dbg !157
  %20 = select i1 %18, i32 1, i32 0, !dbg !157
  store i32 %20, ptr %6, align 4, !dbg !161
  %21 = load ptr, ptr %4, align 8, !dbg !162
  %22 = getelementptr inbounds %struct.nn_timerset, ptr %21, i32 0, i32 1, !dbg !163
  %23 = load ptr, ptr %5, align 8, !dbg !164
  %24 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %23, i32 0, i32 0, !dbg !165
  %25 = call ptr @nn_list_erase(ptr noundef %22, ptr noundef %24), !dbg !166
  %26 = load i32, ptr %6, align 4, !dbg !167
  store i32 %26, ptr %3, align 4, !dbg !168
  br label %27, !dbg !168

27:                                               ; preds = %12, %11
  %28 = load i32, ptr %3, align 4, !dbg !169
  ret i32 %28, !dbg !169
}

declare i32 @nn_list_item_isinlist(ptr noundef) #2

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_timerset_timeout(ptr noundef %0) #0 !dbg !170 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata ptr %4, metadata !175, metadata !DIExpression()), !dbg !176
  %5 = load ptr, ptr %3, align 8, !dbg !177
  %6 = getelementptr inbounds %struct.nn_timerset, ptr %5, i32 0, i32 1, !dbg !177
  %7 = call i32 @nn_list_empty(ptr noundef %6), !dbg !177
  %8 = sext i32 %7 to i64, !dbg !177
  %9 = icmp ne i64 %8, 0, !dbg !177
  br i1 %9, label %10, label %11, !dbg !179

10:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !180
  br label %38, !dbg !180

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !181
  %13 = getelementptr inbounds %struct.nn_timerset, ptr %12, i32 0, i32 1, !dbg !181
  %14 = call ptr @nn_list_begin(ptr noundef %13), !dbg !181
  %15 = icmp ne ptr %14, null, !dbg !181
  br i1 %15, label %16, label %21, !dbg !181

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8, !dbg !181
  %18 = getelementptr inbounds %struct.nn_timerset, ptr %17, i32 0, i32 1, !dbg !181
  %19 = call ptr @nn_list_begin(ptr noundef %18), !dbg !181
  %20 = getelementptr inbounds i8, ptr %19, i64 0, !dbg !181
  br label %22, !dbg !181

21:                                               ; preds = %11
  br label %22, !dbg !181

22:                                               ; preds = %21, %16
  %23 = phi ptr [ %20, %16 ], [ null, %21 ], !dbg !181
  %24 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %23, i32 0, i32 1, !dbg !182
  %25 = load i64, ptr %24, align 8, !dbg !182
  %26 = load ptr, ptr %3, align 8, !dbg !183
  %27 = getelementptr inbounds %struct.nn_timerset, ptr %26, i32 0, i32 0, !dbg !184
  %28 = call i64 @nn_clock_now(ptr noundef %27), !dbg !185
  %29 = sub i64 %25, %28, !dbg !186
  %30 = trunc i64 %29 to i32, !dbg !187
  store i32 %30, ptr %4, align 4, !dbg !188
  %31 = load i32, ptr %4, align 4, !dbg !189
  %32 = icmp slt i32 %31, 0, !dbg !190
  br i1 %32, label %33, label %34, !dbg !189

33:                                               ; preds = %22
  br label %36, !dbg !189

34:                                               ; preds = %22
  %35 = load i32, ptr %4, align 4, !dbg !191
  br label %36, !dbg !189

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ], !dbg !189
  store i32 %37, ptr %2, align 4, !dbg !192
  br label %38, !dbg !192

38:                                               ; preds = %36, %10
  %39 = load i32, ptr %2, align 4, !dbg !193
  ret i32 %39, !dbg !193
}

declare i32 @nn_list_empty(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_timerset_event(ptr noundef %0, ptr noundef %1) #0 !dbg !194 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !198, metadata !DIExpression()), !dbg !199
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata ptr %6, metadata !202, metadata !DIExpression()), !dbg !203
  %7 = load ptr, ptr %4, align 8, !dbg !204
  %8 = getelementptr inbounds %struct.nn_timerset, ptr %7, i32 0, i32 1, !dbg !204
  %9 = call i32 @nn_list_empty(ptr noundef %8), !dbg !204
  %10 = sext i32 %9 to i64, !dbg !204
  %11 = icmp ne i64 %10, 0, !dbg !204
  br i1 %11, label %12, label %13, !dbg !206

12:                                               ; preds = %2
  store i32 -11, ptr %3, align 4, !dbg !207
  br label %42, !dbg !207

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !208
  %15 = getelementptr inbounds %struct.nn_timerset, ptr %14, i32 0, i32 1, !dbg !208
  %16 = call ptr @nn_list_begin(ptr noundef %15), !dbg !208
  %17 = icmp ne ptr %16, null, !dbg !208
  br i1 %17, label %18, label %23, !dbg !208

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 8, !dbg !208
  %20 = getelementptr inbounds %struct.nn_timerset, ptr %19, i32 0, i32 1, !dbg !208
  %21 = call ptr @nn_list_begin(ptr noundef %20), !dbg !208
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !208
  br label %24, !dbg !208

23:                                               ; preds = %13
  br label %24, !dbg !208

24:                                               ; preds = %23, %18
  %25 = phi ptr [ %22, %18 ], [ null, %23 ], !dbg !208
  store ptr %25, ptr %6, align 8, !dbg !209
  %26 = load ptr, ptr %6, align 8, !dbg !210
  %27 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %26, i32 0, i32 1, !dbg !212
  %28 = load i64, ptr %27, align 8, !dbg !212
  %29 = load ptr, ptr %4, align 8, !dbg !213
  %30 = getelementptr inbounds %struct.nn_timerset, ptr %29, i32 0, i32 0, !dbg !214
  %31 = call i64 @nn_clock_now(ptr noundef %30), !dbg !215
  %32 = icmp ugt i64 %28, %31, !dbg !216
  br i1 %32, label %33, label %34, !dbg !217

33:                                               ; preds = %24
  store i32 -11, ptr %3, align 4, !dbg !218
  br label %42, !dbg !218

34:                                               ; preds = %24
  %35 = load ptr, ptr %4, align 8, !dbg !219
  %36 = getelementptr inbounds %struct.nn_timerset, ptr %35, i32 0, i32 1, !dbg !220
  %37 = load ptr, ptr %6, align 8, !dbg !221
  %38 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %37, i32 0, i32 0, !dbg !222
  %39 = call ptr @nn_list_erase(ptr noundef %36, ptr noundef %38), !dbg !223
  %40 = load ptr, ptr %6, align 8, !dbg !224
  %41 = load ptr, ptr %5, align 8, !dbg !225
  store ptr %40, ptr %41, align 8, !dbg !226
  store i32 0, ptr %3, align 4, !dbg !227
  br label %42, !dbg !227

42:                                               ; preds = %34, %33, %12
  %43 = load i32, ptr %3, align 4, !dbg !228
  ret i32 %43, !dbg !228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_timerset_hndl_init(ptr noundef %0) #0 !dbg !229 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !232, metadata !DIExpression()), !dbg !233
  %3 = load ptr, ptr %2, align 8, !dbg !234
  %4 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %3, i32 0, i32 0, !dbg !235
  call void @nn_list_item_init(ptr noundef %4), !dbg !236
  ret void, !dbg !237
}

declare void @nn_list_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_timerset_hndl_term(ptr noundef %0) #0 !dbg !238 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load ptr, ptr %2, align 8, !dbg !241
  %4 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %3, i32 0, i32 0, !dbg !242
  call void @nn_list_item_term(ptr noundef %4), !dbg !243
  ret void, !dbg !244
}

declare void @nn_list_item_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_timerset_hndl_isactive(ptr noundef %0) #0 !dbg !245 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !248, metadata !DIExpression()), !dbg !249
  %3 = load ptr, ptr %2, align 8, !dbg !250
  %4 = getelementptr inbounds %struct.nn_timerset_hndl, ptr %3, i32 0, i32 0, !dbg !251
  %5 = call i32 @nn_list_item_isinlist(ptr noundef %4), !dbg !252
  ret i32 %5, !dbg !253
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/aio/timerset.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ce4df78b75ace2da1c8e2e419a09424a")
!2 = !{!3, !20, !22}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !5, line: 32, size: 192, elements: !6)
!5 = !DIFile(filename: "./src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!6 = !{!7, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4, file: !5, line: 33, baseType: !8, size: 128)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !9, line: 26, size: 128, elements: !10)
!9 = !DIFile(filename: "./src/aio/../utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !9, line: 27, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !8, file: !9, line: 28, baseType: !12, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4, file: !5, line: 34, baseType: !15, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 27, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !18, line: 45, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 16.0.0"}
!31 = distinct !DISubprogram(name: "nn_timerset_init", scope: !32, file: !32, line: 29, type: !33, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!32 = !DIFile(filename: "./src/aio/timerset.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ce4df78b75ace2da1c8e2e419a09424a")
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !5, line: 37, size: 256, elements: !37)
!37 = !{!38, !44}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !36, file: !5, line: 38, baseType: !39, size: 128)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !40, line: 31, size: 128, elements: !41)
!40 = !DIFile(filename: "./src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !39, file: !40, line: 33, baseType: !15, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !39, file: !40, line: 34, baseType: !15, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !36, file: !5, line: 39, baseType: !45, size: 128, offset: 128)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !9, line: 31, size: 128, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !45, file: !9, line: 32, baseType: !12, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !45, file: !9, line: 33, baseType: !12, size: 64, offset: 64)
!49 = !{}
!50 = !DILocalVariable(name: "self", arg: 1, scope: !31, file: !32, line: 29, type: !35)
!51 = !DILocation(line: 29, column: 44, scope: !31)
!52 = !DILocation(line: 31, column: 21, scope: !31)
!53 = !DILocation(line: 31, column: 27, scope: !31)
!54 = !DILocation(line: 31, column: 5, scope: !31)
!55 = !DILocation(line: 32, column: 20, scope: !31)
!56 = !DILocation(line: 32, column: 26, scope: !31)
!57 = !DILocation(line: 32, column: 5, scope: !31)
!58 = !DILocation(line: 33, column: 1, scope: !31)
!59 = distinct !DISubprogram(name: "nn_timerset_term", scope: !32, file: !32, line: 35, type: !33, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!60 = !DILocalVariable(name: "self", arg: 1, scope: !59, file: !32, line: 35, type: !35)
!61 = !DILocation(line: 35, column: 44, scope: !59)
!62 = !DILocation(line: 37, column: 20, scope: !59)
!63 = !DILocation(line: 37, column: 26, scope: !59)
!64 = !DILocation(line: 37, column: 5, scope: !59)
!65 = !DILocation(line: 38, column: 21, scope: !59)
!66 = !DILocation(line: 38, column: 27, scope: !59)
!67 = !DILocation(line: 38, column: 5, scope: !59)
!68 = !DILocation(line: 39, column: 1, scope: !59)
!69 = distinct !DISubprogram(name: "nn_timerset_add", scope: !32, file: !32, line: 41, type: !70, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!70 = !DISubroutineType(types: !71)
!71 = !{!22, !35, !22, !3}
!72 = !DILocalVariable(name: "self", arg: 1, scope: !69, file: !32, line: 41, type: !35)
!73 = !DILocation(line: 41, column: 42, scope: !69)
!74 = !DILocalVariable(name: "timeout", arg: 2, scope: !69, file: !32, line: 41, type: !22)
!75 = !DILocation(line: 41, column: 52, scope: !69)
!76 = !DILocalVariable(name: "hndl", arg: 3, scope: !69, file: !32, line: 42, type: !3)
!77 = !DILocation(line: 42, column: 30, scope: !69)
!78 = !DILocalVariable(name: "it", scope: !69, file: !32, line: 44, type: !12)
!79 = !DILocation(line: 44, column: 26, scope: !69)
!80 = !DILocalVariable(name: "ith", scope: !69, file: !32, line: 45, type: !3)
!81 = !DILocation(line: 45, column: 30, scope: !69)
!82 = !DILocalVariable(name: "first", scope: !69, file: !32, line: 46, type: !22)
!83 = !DILocation(line: 46, column: 9, scope: !69)
!84 = !DILocation(line: 49, column: 36, scope: !69)
!85 = !DILocation(line: 49, column: 42, scope: !69)
!86 = !DILocation(line: 49, column: 21, scope: !69)
!87 = !DILocation(line: 49, column: 51, scope: !69)
!88 = !DILocation(line: 49, column: 49, scope: !69)
!89 = !DILocation(line: 49, column: 5, scope: !69)
!90 = !DILocation(line: 49, column: 11, scope: !69)
!91 = !DILocation(line: 49, column: 19, scope: !69)
!92 = !DILocation(line: 52, column: 31, scope: !93)
!93 = distinct !DILexicalBlock(scope: !69, file: !32, line: 52, column: 5)
!94 = !DILocation(line: 52, column: 37, scope: !93)
!95 = !DILocation(line: 52, column: 15, scope: !93)
!96 = !DILocation(line: 52, column: 13, scope: !93)
!97 = !DILocation(line: 52, column: 10, scope: !93)
!98 = !DILocation(line: 53, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !32, line: 52, column: 5)
!100 = !DILocation(line: 53, column: 31, scope: !99)
!101 = !DILocation(line: 53, column: 37, scope: !99)
!102 = !DILocation(line: 53, column: 17, scope: !99)
!103 = !DILocation(line: 53, column: 14, scope: !99)
!104 = !DILocation(line: 52, column: 5, scope: !93)
!105 = !DILocation(line: 55, column: 15, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !32, line: 54, column: 52)
!107 = !DILocation(line: 55, column: 13, scope: !106)
!108 = !DILocation(line: 56, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !32, line: 56, column: 13)
!110 = !DILocation(line: 56, column: 19, scope: !109)
!111 = !DILocation(line: 56, column: 29, scope: !109)
!112 = !DILocation(line: 56, column: 34, scope: !109)
!113 = !DILocation(line: 56, column: 27, scope: !109)
!114 = !DILocation(line: 56, column: 13, scope: !106)
!115 = !DILocation(line: 57, column: 13, scope: !109)
!116 = !DILocation(line: 58, column: 5, scope: !106)
!117 = !DILocation(line: 54, column: 31, scope: !99)
!118 = !DILocation(line: 54, column: 37, scope: !99)
!119 = !DILocation(line: 54, column: 47, scope: !99)
!120 = !DILocation(line: 54, column: 16, scope: !99)
!121 = !DILocation(line: 54, column: 14, scope: !99)
!122 = !DILocation(line: 52, column: 5, scope: !99)
!123 = distinct !{!123, !104, !124, !125}
!124 = !DILocation(line: 58, column: 5, scope: !93)
!125 = !{!"llvm.loop.mustprogress"}
!126 = !DILocation(line: 62, column: 29, scope: !69)
!127 = !DILocation(line: 62, column: 35, scope: !69)
!128 = !DILocation(line: 62, column: 13, scope: !69)
!129 = !DILocation(line: 62, column: 48, scope: !69)
!130 = !DILocation(line: 62, column: 45, scope: !69)
!131 = !DILocation(line: 62, column: 11, scope: !69)
!132 = !DILocation(line: 63, column: 22, scope: !69)
!133 = !DILocation(line: 63, column: 28, scope: !69)
!134 = !DILocation(line: 63, column: 39, scope: !69)
!135 = !DILocation(line: 63, column: 45, scope: !69)
!136 = !DILocation(line: 63, column: 51, scope: !69)
!137 = !DILocation(line: 63, column: 5, scope: !69)
!138 = !DILocation(line: 64, column: 12, scope: !69)
!139 = !DILocation(line: 64, column: 5, scope: !69)
!140 = distinct !DISubprogram(name: "nn_timerset_rm", scope: !32, file: !32, line: 67, type: !141, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!141 = !DISubroutineType(types: !142)
!142 = !{!22, !35, !3}
!143 = !DILocalVariable(name: "self", arg: 1, scope: !140, file: !32, line: 67, type: !35)
!144 = !DILocation(line: 67, column: 41, scope: !140)
!145 = !DILocalVariable(name: "hndl", arg: 2, scope: !140, file: !32, line: 67, type: !3)
!146 = !DILocation(line: 67, column: 72, scope: !140)
!147 = !DILocalVariable(name: "first", scope: !140, file: !32, line: 69, type: !22)
!148 = !DILocation(line: 69, column: 9, scope: !140)
!149 = !DILocation(line: 72, column: 34, scope: !150)
!150 = distinct !DILexicalBlock(scope: !140, file: !32, line: 72, column: 9)
!151 = !DILocation(line: 72, column: 40, scope: !150)
!152 = !DILocation(line: 72, column: 10, scope: !150)
!153 = !DILocation(line: 72, column: 9, scope: !140)
!154 = !DILocation(line: 73, column: 9, scope: !150)
!155 = !DILocation(line: 77, column: 29, scope: !140)
!156 = !DILocation(line: 77, column: 35, scope: !140)
!157 = !DILocation(line: 77, column: 13, scope: !140)
!158 = !DILocation(line: 77, column: 49, scope: !140)
!159 = !DILocation(line: 77, column: 55, scope: !140)
!160 = !DILocation(line: 77, column: 45, scope: !140)
!161 = !DILocation(line: 77, column: 11, scope: !140)
!162 = !DILocation(line: 78, column: 21, scope: !140)
!163 = !DILocation(line: 78, column: 27, scope: !140)
!164 = !DILocation(line: 78, column: 38, scope: !140)
!165 = !DILocation(line: 78, column: 44, scope: !140)
!166 = !DILocation(line: 78, column: 5, scope: !140)
!167 = !DILocation(line: 79, column: 12, scope: !140)
!168 = !DILocation(line: 79, column: 5, scope: !140)
!169 = !DILocation(line: 80, column: 1, scope: !140)
!170 = distinct !DISubprogram(name: "nn_timerset_timeout", scope: !32, file: !32, line: 82, type: !171, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!171 = !DISubroutineType(types: !172)
!172 = !{!22, !35}
!173 = !DILocalVariable(name: "self", arg: 1, scope: !170, file: !32, line: 82, type: !35)
!174 = !DILocation(line: 82, column: 46, scope: !170)
!175 = !DILocalVariable(name: "timeout", scope: !170, file: !32, line: 84, type: !22)
!176 = !DILocation(line: 84, column: 9, scope: !170)
!177 = !DILocation(line: 86, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !32, line: 86, column: 9)
!179 = !DILocation(line: 86, column: 9, scope: !170)
!180 = !DILocation(line: 87, column: 9, scope: !178)
!181 = !DILocation(line: 89, column: 22, scope: !170)
!182 = !DILocation(line: 90, column: 41, scope: !170)
!183 = !DILocation(line: 90, column: 66, scope: !170)
!184 = !DILocation(line: 90, column: 72, scope: !170)
!185 = !DILocation(line: 90, column: 51, scope: !170)
!186 = !DILocation(line: 90, column: 49, scope: !170)
!187 = !DILocation(line: 89, column: 15, scope: !170)
!188 = !DILocation(line: 89, column: 13, scope: !170)
!189 = !DILocation(line: 91, column: 12, scope: !170)
!190 = !DILocation(line: 91, column: 20, scope: !170)
!191 = !DILocation(line: 91, column: 30, scope: !170)
!192 = !DILocation(line: 91, column: 5, scope: !170)
!193 = !DILocation(line: 92, column: 1, scope: !170)
!194 = distinct !DISubprogram(name: "nn_timerset_event", scope: !32, file: !32, line: 94, type: !195, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!195 = !DISubroutineType(types: !196)
!196 = !{!22, !35, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!198 = !DILocalVariable(name: "self", arg: 1, scope: !194, file: !32, line: 94, type: !35)
!199 = !DILocation(line: 94, column: 44, scope: !194)
!200 = !DILocalVariable(name: "hndl", arg: 2, scope: !194, file: !32, line: 94, type: !197)
!201 = !DILocation(line: 94, column: 76, scope: !194)
!202 = !DILocalVariable(name: "first", scope: !194, file: !32, line: 96, type: !3)
!203 = !DILocation(line: 96, column: 30, scope: !194)
!204 = !DILocation(line: 99, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !194, file: !32, line: 99, column: 9)
!206 = !DILocation(line: 99, column: 9, scope: !194)
!207 = !DILocation(line: 100, column: 9, scope: !205)
!208 = !DILocation(line: 103, column: 13, scope: !194)
!209 = !DILocation(line: 103, column: 11, scope: !194)
!210 = !DILocation(line: 105, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !194, file: !32, line: 105, column: 9)
!212 = !DILocation(line: 105, column: 16, scope: !211)
!213 = !DILocation(line: 105, column: 41, scope: !211)
!214 = !DILocation(line: 105, column: 47, scope: !211)
!215 = !DILocation(line: 105, column: 26, scope: !211)
!216 = !DILocation(line: 105, column: 24, scope: !211)
!217 = !DILocation(line: 105, column: 9, scope: !194)
!218 = !DILocation(line: 106, column: 9, scope: !211)
!219 = !DILocation(line: 110, column: 21, scope: !194)
!220 = !DILocation(line: 110, column: 27, scope: !194)
!221 = !DILocation(line: 110, column: 38, scope: !194)
!222 = !DILocation(line: 110, column: 45, scope: !194)
!223 = !DILocation(line: 110, column: 5, scope: !194)
!224 = !DILocation(line: 111, column: 13, scope: !194)
!225 = !DILocation(line: 111, column: 6, scope: !194)
!226 = !DILocation(line: 111, column: 11, scope: !194)
!227 = !DILocation(line: 112, column: 5, scope: !194)
!228 = !DILocation(line: 113, column: 1, scope: !194)
!229 = distinct !DISubprogram(name: "nn_timerset_hndl_init", scope: !32, file: !32, line: 115, type: !230, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !3}
!232 = !DILocalVariable(name: "self", arg: 1, scope: !229, file: !32, line: 115, type: !3)
!233 = !DILocation(line: 115, column: 54, scope: !229)
!234 = !DILocation(line: 117, column: 25, scope: !229)
!235 = !DILocation(line: 117, column: 31, scope: !229)
!236 = !DILocation(line: 117, column: 5, scope: !229)
!237 = !DILocation(line: 118, column: 1, scope: !229)
!238 = distinct !DISubprogram(name: "nn_timerset_hndl_term", scope: !32, file: !32, line: 120, type: !230, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!239 = !DILocalVariable(name: "self", arg: 1, scope: !238, file: !32, line: 120, type: !3)
!240 = !DILocation(line: 120, column: 54, scope: !238)
!241 = !DILocation(line: 122, column: 25, scope: !238)
!242 = !DILocation(line: 122, column: 31, scope: !238)
!243 = !DILocation(line: 122, column: 5, scope: !238)
!244 = !DILocation(line: 123, column: 1, scope: !238)
!245 = distinct !DISubprogram(name: "nn_timerset_hndl_isactive", scope: !32, file: !32, line: 125, type: !246, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !49)
!246 = !DISubroutineType(types: !247)
!247 = !{!22, !3}
!248 = !DILocalVariable(name: "self", arg: 1, scope: !245, file: !32, line: 125, type: !3)
!249 = !DILocation(line: 125, column: 57, scope: !245)
!250 = !DILocation(line: 127, column: 36, scope: !245)
!251 = !DILocation(line: 127, column: 42, scope: !245)
!252 = !DILocation(line: 127, column: 12, scope: !245)
!253 = !DILocation(line: 127, column: 5, scope: !245)
