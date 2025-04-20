; ModuleID = './src/protocols/utils/dist.c'
source_filename = "./src/protocols/utils/dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_dist = type { i64, %struct.nn_list }
%struct.nn_list = type { ptr, ptr }
%struct.nn_dist_data = type { %struct.nn_list_item, ptr }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"self->count == 0\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [29 x i8] c"./src/protocols/utils/dist.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !17

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dist_init(ptr noundef %0) #0 !dbg !48 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !64, metadata !DIExpression()), !dbg !65
  %3 = load ptr, ptr %2, align 8, !dbg !66
  %4 = getelementptr inbounds %struct.nn_dist, ptr %3, i32 0, i32 0, !dbg !67
  store i64 0, ptr %4, align 8, !dbg !68
  %5 = load ptr, ptr %2, align 8, !dbg !69
  %6 = getelementptr inbounds %struct.nn_dist, ptr %5, i32 0, i32 1, !dbg !70
  call void @nn_list_init(ptr noundef %6), !dbg !71
  ret void, !dbg !72
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_list_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dist_term(ptr noundef %0) #0 !dbg !73 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !74, metadata !DIExpression()), !dbg !75
  br label %3, !dbg !76

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !77
  %5 = getelementptr inbounds %struct.nn_dist, ptr %4, i32 0, i32 0, !dbg !77
  %6 = load i64, ptr %5, align 8, !dbg !77
  %7 = icmp eq i64 %6, 0, !dbg !77
  %8 = xor i1 %7, true, !dbg !77
  %9 = zext i1 %8 to i32, !dbg !77
  %10 = sext i32 %9 to i64, !dbg !77
  %11 = icmp ne i64 %10, 0, !dbg !77
  br i1 %11, label %12, label %15, !dbg !80

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !81
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 39), !dbg !81
  call void @nn_err_abort() #4, !dbg !81
  unreachable, !dbg !81

15:                                               ; preds = %3
  br label %16, !dbg !80

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !83
  %18 = getelementptr inbounds %struct.nn_dist, ptr %17, i32 0, i32 1, !dbg !84
  call void @nn_list_term(ptr noundef %18), !dbg !85
  ret void, !dbg !86
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_list_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dist_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !87 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !90, metadata !DIExpression()), !dbg !91
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !92, metadata !DIExpression()), !dbg !93
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !94, metadata !DIExpression()), !dbg !95
  %7 = load ptr, ptr %5, align 8, !dbg !96
  %8 = load ptr, ptr %6, align 8, !dbg !97
  %9 = getelementptr inbounds %struct.nn_dist_data, ptr %8, i32 0, i32 1, !dbg !98
  store ptr %7, ptr %9, align 8, !dbg !99
  %10 = load ptr, ptr %6, align 8, !dbg !100
  %11 = getelementptr inbounds %struct.nn_dist_data, ptr %10, i32 0, i32 0, !dbg !101
  call void @nn_list_item_init(ptr noundef %11), !dbg !102
  ret void, !dbg !103
}

declare void @nn_list_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dist_rm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !104 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !105, metadata !DIExpression()), !dbg !106
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !107, metadata !DIExpression()), !dbg !108
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !109, metadata !DIExpression()), !dbg !110
  %7 = load ptr, ptr %6, align 8, !dbg !111
  %8 = getelementptr inbounds %struct.nn_dist_data, ptr %7, i32 0, i32 0, !dbg !113
  %9 = call i32 @nn_list_item_isinlist(ptr noundef %8), !dbg !114
  %10 = icmp ne i32 %9, 0, !dbg !114
  br i1 %10, label %11, label %21, !dbg !115

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8, !dbg !116
  %13 = getelementptr inbounds %struct.nn_dist, ptr %12, i32 0, i32 0, !dbg !118
  %14 = load i64, ptr %13, align 8, !dbg !119
  %15 = add i64 %14, -1, !dbg !119
  store i64 %15, ptr %13, align 8, !dbg !119
  %16 = load ptr, ptr %4, align 8, !dbg !120
  %17 = getelementptr inbounds %struct.nn_dist, ptr %16, i32 0, i32 1, !dbg !121
  %18 = load ptr, ptr %6, align 8, !dbg !122
  %19 = getelementptr inbounds %struct.nn_dist_data, ptr %18, i32 0, i32 0, !dbg !123
  %20 = call ptr @nn_list_erase(ptr noundef %17, ptr noundef %19), !dbg !124
  br label %21, !dbg !125

21:                                               ; preds = %11, %3
  %22 = load ptr, ptr %6, align 8, !dbg !126
  %23 = getelementptr inbounds %struct.nn_dist_data, ptr %22, i32 0, i32 0, !dbg !127
  call void @nn_list_item_term(ptr noundef %23), !dbg !128
  ret void, !dbg !129
}

declare i32 @nn_list_item_isinlist(ptr noundef) #2

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #2

declare void @nn_list_item_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dist_out(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !130 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !131, metadata !DIExpression()), !dbg !132
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !133, metadata !DIExpression()), !dbg !134
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !135, metadata !DIExpression()), !dbg !136
  %7 = load ptr, ptr %4, align 8, !dbg !137
  %8 = getelementptr inbounds %struct.nn_dist, ptr %7, i32 0, i32 0, !dbg !138
  %9 = load i64, ptr %8, align 8, !dbg !139
  %10 = add i64 %9, 1, !dbg !139
  store i64 %10, ptr %8, align 8, !dbg !139
  %11 = load ptr, ptr %4, align 8, !dbg !140
  %12 = getelementptr inbounds %struct.nn_dist, ptr %11, i32 0, i32 1, !dbg !141
  %13 = load ptr, ptr %6, align 8, !dbg !142
  %14 = getelementptr inbounds %struct.nn_dist_data, ptr %13, i32 0, i32 0, !dbg !143
  %15 = load ptr, ptr %4, align 8, !dbg !144
  %16 = getelementptr inbounds %struct.nn_dist, ptr %15, i32 0, i32 1, !dbg !145
  %17 = call ptr @nn_list_end(ptr noundef %16), !dbg !146
  call void @nn_list_insert(ptr noundef %12, ptr noundef %14, ptr noundef %17), !dbg !147
  ret void, !dbg !148
}

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_list_end(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_dist_send(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !149 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.nn_msg, align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !170, metadata !DIExpression()), !dbg !171
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !172, metadata !DIExpression()), !dbg !173
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata ptr %8, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata ptr %9, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata ptr %10, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata ptr %11, metadata !182, metadata !DIExpression()), !dbg !183
  %12 = load ptr, ptr %5, align 8, !dbg !184
  %13 = getelementptr inbounds %struct.nn_dist, ptr %12, i32 0, i32 0, !dbg !184
  %14 = load i64, ptr %13, align 8, !dbg !184
  %15 = icmp eq i64 %14, 0, !dbg !186
  br i1 %15, label %16, label %18, !dbg !187

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8, !dbg !188
  call void @nn_msg_term(ptr noundef %17), !dbg !190
  store i32 0, ptr %4, align 4, !dbg !191
  br label %94, !dbg !191

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8, !dbg !192
  %20 = load ptr, ptr %5, align 8, !dbg !193
  %21 = getelementptr inbounds %struct.nn_dist, ptr %20, i32 0, i32 0, !dbg !194
  %22 = load i64, ptr %21, align 8, !dbg !194
  %23 = trunc i64 %22 to i32, !dbg !193
  call void @nn_msg_bulkcopy_start(ptr noundef %19, i32 noundef %23), !dbg !195
  %24 = load ptr, ptr %5, align 8, !dbg !196
  %25 = getelementptr inbounds %struct.nn_dist, ptr %24, i32 0, i32 1, !dbg !197
  %26 = call ptr @nn_list_begin(ptr noundef %25), !dbg !198
  store ptr %26, ptr %9, align 8, !dbg !199
  br label %27, !dbg !200

27:                                               ; preds = %87, %77, %18
  %28 = load ptr, ptr %9, align 8, !dbg !201
  %29 = load ptr, ptr %5, align 8, !dbg !202
  %30 = getelementptr inbounds %struct.nn_dist, ptr %29, i32 0, i32 1, !dbg !203
  %31 = call ptr @nn_list_end(ptr noundef %30), !dbg !204
  %32 = icmp ne ptr %28, %31, !dbg !205
  br i1 %32, label %33, label %92, !dbg !200

33:                                               ; preds = %27
  %34 = load ptr, ptr %9, align 8, !dbg !206
  %35 = icmp ne ptr %34, null, !dbg !206
  br i1 %35, label %36, label %39, !dbg !206

36:                                               ; preds = %33
  %37 = load ptr, ptr %9, align 8, !dbg !206
  %38 = getelementptr inbounds i8, ptr %37, i64 0, !dbg !206
  br label %40, !dbg !206

39:                                               ; preds = %33
  br label %40, !dbg !206

40:                                               ; preds = %39, %36
  %41 = phi ptr [ %38, %36 ], [ null, %39 ], !dbg !206
  store ptr %41, ptr %10, align 8, !dbg !208
  %42 = load ptr, ptr %6, align 8, !dbg !209
  call void @nn_msg_bulkcopy_cp(ptr noundef %11, ptr noundef %42), !dbg !210
  %43 = load ptr, ptr %10, align 8, !dbg !211
  %44 = getelementptr inbounds %struct.nn_dist_data, ptr %43, i32 0, i32 1, !dbg !211
  %45 = load ptr, ptr %44, align 8, !dbg !211
  %46 = load ptr, ptr %7, align 8, !dbg !211
  %47 = icmp eq ptr %45, %46, !dbg !211
  %48 = zext i1 %47 to i32, !dbg !211
  %49 = sext i32 %48 to i64, !dbg !211
  %50 = icmp ne i64 %49, 0, !dbg !211
  br i1 %50, label %51, label %52, !dbg !213

51:                                               ; preds = %40
  call void @nn_msg_term(ptr noundef %11), !dbg !214
  br label %87, !dbg !216

52:                                               ; preds = %40
  %53 = load ptr, ptr %10, align 8, !dbg !217
  %54 = getelementptr inbounds %struct.nn_dist_data, ptr %53, i32 0, i32 1, !dbg !219
  %55 = load ptr, ptr %54, align 8, !dbg !219
  %56 = call i32 @nn_pipe_send(ptr noundef %55, ptr noundef %11), !dbg !220
  store i32 %56, ptr %8, align 4, !dbg !221
  br label %57, !dbg !222

57:                                               ; preds = %52
  %58 = load i32, ptr %8, align 4, !dbg !223
  %59 = icmp sge i32 %58, 0, !dbg !223
  %60 = xor i1 %59, true, !dbg !223
  %61 = zext i1 %60 to i32, !dbg !223
  %62 = sext i32 %61 to i64, !dbg !223
  %63 = icmp ne i64 %62, 0, !dbg !223
  br i1 %63, label %64, label %72, !dbg !226

64:                                               ; preds = %57
  %65 = load ptr, ptr @stderr, align 8, !dbg !227
  %66 = load i32, ptr %8, align 4, !dbg !227
  %67 = sub nsw i32 0, %66, !dbg !227
  %68 = call ptr @nn_err_strerror(i32 noundef %67), !dbg !227
  %69 = load i32, ptr %8, align 4, !dbg !227
  %70 = sub nsw i32 0, %69, !dbg !227
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.3, ptr noundef %68, i32 noundef %70, ptr noundef @.str.2, i32 noundef 96), !dbg !227
  call void @nn_err_abort() #4, !dbg !227
  unreachable, !dbg !227

72:                                               ; preds = %57
  br label %73, !dbg !226

73:                                               ; preds = %72
  %74 = load i32, ptr %8, align 4, !dbg !229
  %75 = and i32 %74, 1, !dbg !231
  %76 = icmp ne i32 %75, 0, !dbg !231
  br i1 %76, label %77, label %86, !dbg !232

77:                                               ; preds = %73
  %78 = load ptr, ptr %5, align 8, !dbg !233
  %79 = getelementptr inbounds %struct.nn_dist, ptr %78, i32 0, i32 0, !dbg !235
  %80 = load i64, ptr %79, align 8, !dbg !236
  %81 = add i64 %80, -1, !dbg !236
  store i64 %81, ptr %79, align 8, !dbg !236
  %82 = load ptr, ptr %5, align 8, !dbg !237
  %83 = getelementptr inbounds %struct.nn_dist, ptr %82, i32 0, i32 1, !dbg !238
  %84 = load ptr, ptr %9, align 8, !dbg !239
  %85 = call ptr @nn_list_erase(ptr noundef %83, ptr noundef %84), !dbg !240
  store ptr %85, ptr %9, align 8, !dbg !241
  br label %27, !dbg !242, !llvm.loop !243

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %51
  %88 = load ptr, ptr %5, align 8, !dbg !246
  %89 = getelementptr inbounds %struct.nn_dist, ptr %88, i32 0, i32 1, !dbg !247
  %90 = load ptr, ptr %9, align 8, !dbg !248
  %91 = call ptr @nn_list_next(ptr noundef %89, ptr noundef %90), !dbg !249
  store ptr %91, ptr %9, align 8, !dbg !250
  br label %27, !dbg !200, !llvm.loop !243

92:                                               ; preds = %27
  %93 = load ptr, ptr %6, align 8, !dbg !251
  call void @nn_msg_term(ptr noundef %93), !dbg !252
  store i32 0, ptr %4, align 4, !dbg !253
  br label %94, !dbg !253

94:                                               ; preds = %92, %16
  %95 = load i32, ptr %4, align 4, !dbg !254
  ret i32 %95, !dbg !254
}

declare void @nn_msg_term(ptr noundef) #2

declare void @nn_msg_bulkcopy_start(ptr noundef, i32 noundef) #2

declare ptr @nn_list_begin(ptr noundef) #2

declare void @nn_msg_bulkcopy_cp(ptr noundef, ptr noundef) #2

declare i32 @nn_pipe_send(ptr noundef, ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

declare ptr @nn_list_next(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/protocols/utils/dist.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "6ad8b1a917b64e049e5846b3017bed80")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 17)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 29)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !9, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !21, globals: !39, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "src/protocols/utils/dist.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "6ad8b1a917b64e049e5846b3017bed80")
!21 = !{!22, !37, !38}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist_data", file: !24, line: 32, size: 192, elements: !25)
!24 = !DIFile(filename: "./src/protocols/utils/dist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8b675b0838905739d217dd53d5a3b3af")
!25 = !{!26, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !23, file: !24, line: 33, baseType: !27, size: 128)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !28, line: 26, size: 128, elements: !29)
!28 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !27, file: !28, line: 27, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !27, file: !28, line: 28, baseType: !31, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !23, file: !24, line: 34, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !36, line: 56, flags: DIFlagFwdDecl)
!36 = !DIFile(filename: "./src/protocols/utils/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!0, !7, !12, !17}
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 16.0.0"}
!48 = distinct !DISubprogram(name: "nn_dist_init", scope: !2, file: !2, line: 31, type: !49, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !63)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist", file: !24, line: 37, size: 192, elements: !53)
!53 = !{!54, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !52, file: !24, line: 38, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !52, file: !24, line: 39, baseType: !59, size: 128, offset: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !28, line: 31, size: 128, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !59, file: !28, line: 32, baseType: !31, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !59, file: !28, line: 33, baseType: !31, size: 64, offset: 64)
!63 = !{}
!64 = !DILocalVariable(name: "self", arg: 1, scope: !48, file: !2, line: 31, type: !51)
!65 = !DILocation(line: 31, column: 36, scope: !48)
!66 = !DILocation(line: 33, column: 5, scope: !48)
!67 = !DILocation(line: 33, column: 11, scope: !48)
!68 = !DILocation(line: 33, column: 17, scope: !48)
!69 = !DILocation(line: 34, column: 20, scope: !48)
!70 = !DILocation(line: 34, column: 26, scope: !48)
!71 = !DILocation(line: 34, column: 5, scope: !48)
!72 = !DILocation(line: 35, column: 1, scope: !48)
!73 = distinct !DISubprogram(name: "nn_dist_term", scope: !2, file: !2, line: 37, type: !49, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !63)
!74 = !DILocalVariable(name: "self", arg: 1, scope: !73, file: !2, line: 37, type: !51)
!75 = !DILocation(line: 37, column: 36, scope: !73)
!76 = !DILocation(line: 39, column: 5, scope: !73)
!77 = !DILocation(line: 39, column: 5, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 39, column: 5)
!79 = distinct !DILexicalBlock(scope: !73, file: !2, line: 39, column: 5)
!80 = !DILocation(line: 39, column: 5, scope: !79)
!81 = !DILocation(line: 39, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !2, line: 39, column: 5)
!83 = !DILocation(line: 40, column: 20, scope: !73)
!84 = !DILocation(line: 40, column: 26, scope: !73)
!85 = !DILocation(line: 40, column: 5, scope: !73)
!86 = !DILocation(line: 41, column: 1, scope: !73)
!87 = distinct !DISubprogram(name: "nn_dist_add", scope: !2, file: !2, line: 43, type: !88, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !63)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !51, !34, !22}
!90 = !DILocalVariable(name: "self", arg: 1, scope: !87, file: !2, line: 43, type: !51)
!91 = !DILocation(line: 43, column: 35, scope: !87)
!92 = !DILocalVariable(name: "pipe", arg: 2, scope: !87, file: !2, line: 43, type: !34)
!93 = !DILocation(line: 43, column: 57, scope: !87)
!94 = !DILocalVariable(name: "data", arg: 3, scope: !87, file: !2, line: 44, type: !22)
!95 = !DILocation(line: 44, column: 26, scope: !87)
!96 = !DILocation(line: 46, column: 18, scope: !87)
!97 = !DILocation(line: 46, column: 5, scope: !87)
!98 = !DILocation(line: 46, column: 11, scope: !87)
!99 = !DILocation(line: 46, column: 16, scope: !87)
!100 = !DILocation(line: 47, column: 25, scope: !87)
!101 = !DILocation(line: 47, column: 31, scope: !87)
!102 = !DILocation(line: 47, column: 5, scope: !87)
!103 = !DILocation(line: 48, column: 1, scope: !87)
!104 = distinct !DISubprogram(name: "nn_dist_rm", scope: !2, file: !2, line: 50, type: !88, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !63)
!105 = !DILocalVariable(name: "self", arg: 1, scope: !104, file: !2, line: 50, type: !51)
!106 = !DILocation(line: 50, column: 34, scope: !104)
!107 = !DILocalVariable(name: "pipe", arg: 2, scope: !104, file: !2, line: 50, type: !34)
!108 = !DILocation(line: 50, column: 56, scope: !104)
!109 = !DILocalVariable(name: "data", arg: 3, scope: !104, file: !2, line: 51, type: !22)
!110 = !DILocation(line: 51, column: 26, scope: !104)
!111 = !DILocation(line: 53, column: 33, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !2, line: 53, column: 9)
!113 = !DILocation(line: 53, column: 39, scope: !112)
!114 = !DILocation(line: 53, column: 9, scope: !112)
!115 = !DILocation(line: 53, column: 9, scope: !104)
!116 = !DILocation(line: 54, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !2, line: 53, column: 46)
!118 = !DILocation(line: 54, column: 17, scope: !117)
!119 = !DILocation(line: 54, column: 9, scope: !117)
!120 = !DILocation(line: 55, column: 25, scope: !117)
!121 = !DILocation(line: 55, column: 31, scope: !117)
!122 = !DILocation(line: 55, column: 39, scope: !117)
!123 = !DILocation(line: 55, column: 45, scope: !117)
!124 = !DILocation(line: 55, column: 9, scope: !117)
!125 = !DILocation(line: 56, column: 5, scope: !117)
!126 = !DILocation(line: 57, column: 25, scope: !104)
!127 = !DILocation(line: 57, column: 31, scope: !104)
!128 = !DILocation(line: 57, column: 5, scope: !104)
!129 = !DILocation(line: 58, column: 1, scope: !104)
!130 = distinct !DISubprogram(name: "nn_dist_out", scope: !2, file: !2, line: 60, type: !88, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !63)
!131 = !DILocalVariable(name: "self", arg: 1, scope: !130, file: !2, line: 60, type: !51)
!132 = !DILocation(line: 60, column: 35, scope: !130)
!133 = !DILocalVariable(name: "pipe", arg: 2, scope: !130, file: !2, line: 60, type: !34)
!134 = !DILocation(line: 60, column: 57, scope: !130)
!135 = !DILocalVariable(name: "data", arg: 3, scope: !130, file: !2, line: 61, type: !22)
!136 = !DILocation(line: 61, column: 26, scope: !130)
!137 = !DILocation(line: 63, column: 7, scope: !130)
!138 = !DILocation(line: 63, column: 13, scope: !130)
!139 = !DILocation(line: 63, column: 5, scope: !130)
!140 = !DILocation(line: 64, column: 22, scope: !130)
!141 = !DILocation(line: 64, column: 28, scope: !130)
!142 = !DILocation(line: 64, column: 36, scope: !130)
!143 = !DILocation(line: 64, column: 42, scope: !130)
!144 = !DILocation(line: 64, column: 62, scope: !130)
!145 = !DILocation(line: 64, column: 68, scope: !130)
!146 = !DILocation(line: 64, column: 48, scope: !130)
!147 = !DILocation(line: 64, column: 5, scope: !130)
!148 = !DILocation(line: 65, column: 1, scope: !130)
!149 = distinct !DISubprogram(name: "nn_dist_send", scope: !2, file: !2, line: 67, type: !150, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !63)
!150 = !DISubroutineType(types: !151)
!151 = !{!38, !51, !152, !34}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !154, line: 30, size: 512, elements: !155)
!154 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!155 = !{!156, !169}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !153, file: !154, line: 33, baseType: !157, size: 256)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !158, line: 39, size: 256, elements: !159)
!158 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !157, file: !158, line: 40, baseType: !161, size: 256)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !167)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !163, line: 24, baseType: !164)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !165, line: 38, baseType: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!166 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!167 = !{!168}
!168 = !DISubrange(count: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !153, file: !154, line: 36, baseType: !157, size: 256, offset: 256)
!170 = !DILocalVariable(name: "self", arg: 1, scope: !149, file: !2, line: 67, type: !51)
!171 = !DILocation(line: 67, column: 35, scope: !149)
!172 = !DILocalVariable(name: "msg", arg: 2, scope: !149, file: !2, line: 67, type: !152)
!173 = !DILocation(line: 67, column: 56, scope: !149)
!174 = !DILocalVariable(name: "exclude", arg: 3, scope: !149, file: !2, line: 68, type: !34)
!175 = !DILocation(line: 68, column: 21, scope: !149)
!176 = !DILocalVariable(name: "rc", scope: !149, file: !2, line: 70, type: !38)
!177 = !DILocation(line: 70, column: 9, scope: !149)
!178 = !DILocalVariable(name: "it", scope: !149, file: !2, line: 71, type: !31)
!179 = !DILocation(line: 71, column: 26, scope: !149)
!180 = !DILocalVariable(name: "data", scope: !149, file: !2, line: 72, type: !22)
!181 = !DILocation(line: 72, column: 26, scope: !149)
!182 = !DILocalVariable(name: "copy", scope: !149, file: !2, line: 73, type: !153)
!183 = !DILocation(line: 73, column: 19, scope: !149)
!184 = !DILocation(line: 80, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !149, file: !2, line: 80, column: 9)
!186 = !DILocation(line: 80, column: 31, scope: !185)
!187 = !DILocation(line: 80, column: 9, scope: !149)
!188 = !DILocation(line: 81, column: 22, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !2, line: 80, column: 37)
!190 = !DILocation(line: 81, column: 9, scope: !189)
!191 = !DILocation(line: 82, column: 9, scope: !189)
!192 = !DILocation(line: 86, column: 28, scope: !149)
!193 = !DILocation(line: 86, column: 33, scope: !149)
!194 = !DILocation(line: 86, column: 39, scope: !149)
!195 = !DILocation(line: 86, column: 5, scope: !149)
!196 = !DILocation(line: 87, column: 26, scope: !149)
!197 = !DILocation(line: 87, column: 32, scope: !149)
!198 = !DILocation(line: 87, column: 10, scope: !149)
!199 = !DILocation(line: 87, column: 8, scope: !149)
!200 = !DILocation(line: 88, column: 5, scope: !149)
!201 = !DILocation(line: 88, column: 12, scope: !149)
!202 = !DILocation(line: 88, column: 32, scope: !149)
!203 = !DILocation(line: 88, column: 38, scope: !149)
!204 = !DILocation(line: 88, column: 18, scope: !149)
!205 = !DILocation(line: 88, column: 15, scope: !149)
!206 = !DILocation(line: 89, column: 15, scope: !207)
!207 = distinct !DILexicalBlock(scope: !149, file: !2, line: 88, column: 46)
!208 = !DILocation(line: 89, column: 13, scope: !207)
!209 = !DILocation(line: 90, column: 35, scope: !207)
!210 = !DILocation(line: 90, column: 8, scope: !207)
!211 = !DILocation(line: 91, column: 12, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !2, line: 91, column: 12)
!213 = !DILocation(line: 91, column: 12, scope: !207)
!214 = !DILocation(line: 92, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !2, line: 91, column: 45)
!216 = !DILocation(line: 93, column: 8, scope: !215)
!217 = !DILocation(line: 95, column: 31, scope: !218)
!218 = distinct !DILexicalBlock(scope: !212, file: !2, line: 94, column: 13)
!219 = !DILocation(line: 95, column: 37, scope: !218)
!220 = !DILocation(line: 95, column: 17, scope: !218)
!221 = !DILocation(line: 95, column: 15, scope: !218)
!222 = !DILocation(line: 96, column: 12, scope: !218)
!223 = !DILocation(line: 96, column: 12, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 96, column: 12)
!225 = distinct !DILexicalBlock(scope: !218, file: !2, line: 96, column: 12)
!226 = !DILocation(line: 96, column: 12, scope: !225)
!227 = !DILocation(line: 96, column: 12, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !2, line: 96, column: 12)
!229 = !DILocation(line: 97, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !218, file: !2, line: 97, column: 16)
!231 = !DILocation(line: 97, column: 19, scope: !230)
!232 = !DILocation(line: 97, column: 16, scope: !218)
!233 = !DILocation(line: 98, column: 18, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !2, line: 97, column: 38)
!235 = !DILocation(line: 98, column: 24, scope: !234)
!236 = !DILocation(line: 98, column: 16, scope: !234)
!237 = !DILocation(line: 99, column: 37, scope: !234)
!238 = !DILocation(line: 99, column: 43, scope: !234)
!239 = !DILocation(line: 99, column: 50, scope: !234)
!240 = !DILocation(line: 99, column: 21, scope: !234)
!241 = !DILocation(line: 99, column: 19, scope: !234)
!242 = !DILocation(line: 100, column: 16, scope: !234)
!243 = distinct !{!243, !200, !244, !245}
!244 = !DILocation(line: 104, column: 5, scope: !149)
!245 = !{!"llvm.loop.mustprogress"}
!246 = !DILocation(line: 103, column: 28, scope: !207)
!247 = !DILocation(line: 103, column: 34, scope: !207)
!248 = !DILocation(line: 103, column: 41, scope: !207)
!249 = !DILocation(line: 103, column: 13, scope: !207)
!250 = !DILocation(line: 103, column: 11, scope: !207)
!251 = !DILocation(line: 105, column: 18, scope: !149)
!252 = !DILocation(line: 105, column: 5, scope: !149)
!253 = !DILocation(line: 107, column: 5, scope: !149)
!254 = !DILocation(line: 108, column: 1, scope: !149)
