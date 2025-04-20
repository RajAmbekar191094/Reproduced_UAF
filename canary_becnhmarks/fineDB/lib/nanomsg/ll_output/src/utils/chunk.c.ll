; ModuleID = './src/utils/chunk.c'
source_filename = "./src/utils/chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_chunk = type { %struct.nn_atomic, i64, ptr }
%struct.nn_atomic = type { %struct.nn_mutex, i32 }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"./src/utils/chunk.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [26 x i8] c"n >= 0 && n <= self->size\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [59 x i8] c"nn_getl ((uint8_t*) p - sizeof (uint32_t)) == NN_CHUNK_TAG\00", align 1, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_chunk_alloc(i64 noundef %0, i32 noundef %1) #0 !dbg !104 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store i64 %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata ptr %6, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata ptr %7, metadata !114, metadata !DIExpression()), !dbg !115
  %8 = load i64, ptr %4, align 8, !dbg !116
  %9 = add i64 72, %8, !dbg !117
  store i64 %9, ptr %6, align 8, !dbg !118
  %10 = load i32, ptr %5, align 4, !dbg !119
  switch i32 %10, label %14 [
    i32 0, label %11
  ], !dbg !120

11:                                               ; preds = %2
  %12 = load i64, ptr %6, align 8, !dbg !121
  %13 = call ptr @nn_alloc_(i64 noundef %12), !dbg !121
  store ptr %13, ptr %7, align 8, !dbg !123
  br label %15, !dbg !124

14:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !125
  br label %43, !dbg !125

15:                                               ; preds = %11
  br label %16, !dbg !126

16:                                               ; preds = %15
  %17 = load ptr, ptr %7, align 8, !dbg !127
  %18 = icmp ne ptr %17, null, !dbg !127
  %19 = xor i1 %18, true, !dbg !127
  %20 = zext i1 %19 to i32, !dbg !127
  %21 = sext i32 %20 to i64, !dbg !127
  %22 = icmp ne i64 %21, 0, !dbg !127
  br i1 %22, label %23, label %26, !dbg !130

23:                                               ; preds = %16
  %24 = load ptr, ptr @stderr, align 8, !dbg !131
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 72), !dbg !131
  call void @nn_err_abort() #4, !dbg !131
  unreachable, !dbg !131

26:                                               ; preds = %16
  br label %27, !dbg !130

27:                                               ; preds = %26
  %28 = load ptr, ptr %7, align 8, !dbg !133
  %29 = getelementptr inbounds %struct.nn_chunk, ptr %28, i32 0, i32 0, !dbg !134
  call void @nn_atomic_init(ptr noundef %29, i32 noundef 1), !dbg !135
  %30 = load i64, ptr %4, align 8, !dbg !136
  %31 = load ptr, ptr %7, align 8, !dbg !137
  %32 = getelementptr inbounds %struct.nn_chunk, ptr %31, i32 0, i32 1, !dbg !138
  store i64 %30, ptr %32, align 8, !dbg !139
  %33 = load ptr, ptr %7, align 8, !dbg !140
  %34 = getelementptr inbounds %struct.nn_chunk, ptr %33, i32 0, i32 2, !dbg !141
  store ptr @nn_chunk_default_free, ptr %34, align 8, !dbg !142
  %35 = load ptr, ptr %7, align 8, !dbg !143
  %36 = getelementptr inbounds %struct.nn_chunk, ptr %35, i64 1, !dbg !144
  call void @nn_putl(ptr noundef %36, i32 noundef 0), !dbg !145
  %37 = load ptr, ptr %7, align 8, !dbg !146
  %38 = getelementptr inbounds %struct.nn_chunk, ptr %37, i64 1, !dbg !147
  %39 = getelementptr inbounds i32, ptr %38, i64 1, !dbg !148
  call void @nn_putl(ptr noundef %39, i32 noundef -559035650), !dbg !149
  %40 = load ptr, ptr %7, align 8, !dbg !150
  %41 = getelementptr inbounds %struct.nn_chunk, ptr %40, i64 1, !dbg !151
  %42 = getelementptr inbounds i8, ptr %41, i64 8, !dbg !152
  store ptr %42, ptr %3, align 8, !dbg !153
  br label %43, !dbg !153

43:                                               ; preds = %27, %14
  %44 = load ptr, ptr %3, align 8, !dbg !154
  ret ptr %44, !dbg !154
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_atomic_init(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_chunk_default_free(ptr noundef %0) #0 !dbg !155 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !156, metadata !DIExpression()), !dbg !157
  %3 = load ptr, ptr %2, align 8, !dbg !158
  call void @nn_free(ptr noundef %3), !dbg !159
  ret void, !dbg !160
}

declare void @nn_putl(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunk_free(ptr noundef %0) #0 !dbg !161 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata ptr %3, metadata !164, metadata !DIExpression()), !dbg !165
  %4 = load ptr, ptr %2, align 8, !dbg !166
  %5 = call ptr @nn_chunk_getptr(ptr noundef %4), !dbg !167
  store ptr %5, ptr %3, align 8, !dbg !168
  %6 = load ptr, ptr %3, align 8, !dbg !169
  %7 = getelementptr inbounds %struct.nn_chunk, ptr %6, i32 0, i32 0, !dbg !171
  %8 = call i32 @nn_atomic_dec(ptr noundef %7, i32 noundef 1), !dbg !172
  %9 = icmp ule i32 %8, 1, !dbg !173
  br i1 %9, label %10, label %19, !dbg !174

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !175
  %12 = getelementptr inbounds i32, ptr %11, i64 -1, !dbg !177
  call void @nn_putl(ptr noundef %12, i32 noundef -1095893267), !dbg !178
  %13 = load ptr, ptr %3, align 8, !dbg !179
  %14 = getelementptr inbounds %struct.nn_chunk, ptr %13, i32 0, i32 0, !dbg !180
  call void @nn_atomic_term(ptr noundef %14), !dbg !181
  %15 = load ptr, ptr %3, align 8, !dbg !182
  %16 = getelementptr inbounds %struct.nn_chunk, ptr %15, i32 0, i32 2, !dbg !183
  %17 = load ptr, ptr %16, align 8, !dbg !183
  %18 = load ptr, ptr %3, align 8, !dbg !184
  call void %17(ptr noundef %18), !dbg !182
  br label %19, !dbg !185

19:                                               ; preds = %10, %1
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @nn_chunk_getptr(ptr noundef %0) #0 !dbg !187 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata ptr %3, metadata !192, metadata !DIExpression()), !dbg !193
  br label %4, !dbg !194

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !dbg !195
  %6 = getelementptr inbounds i8, ptr %5, i64 -4, !dbg !195
  %7 = call i32 @nn_getl(ptr noundef %6), !dbg !195
  %8 = icmp eq i32 %7, -559035650, !dbg !195
  %9 = xor i1 %8, true, !dbg !195
  %10 = zext i1 %9 to i32, !dbg !195
  %11 = sext i32 %10 to i64, !dbg !195
  %12 = icmp ne i64 %11, 0, !dbg !195
  br i1 %12, label %13, label %16, !dbg !198

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !dbg !199
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 151), !dbg !199
  call void @nn_err_abort() #4, !dbg !199
  unreachable, !dbg !199

16:                                               ; preds = %4
  br label %17, !dbg !198

17:                                               ; preds = %16
  %18 = load ptr, ptr %2, align 8, !dbg !201
  %19 = getelementptr inbounds i8, ptr %18, i64 -8, !dbg !202
  %20 = call i32 @nn_getl(ptr noundef %19), !dbg !203
  store i32 %20, ptr %3, align 4, !dbg !204
  %21 = load ptr, ptr %2, align 8, !dbg !205
  %22 = getelementptr inbounds i8, ptr %21, i64 -8, !dbg !206
  %23 = load i32, ptr %3, align 4, !dbg !207
  %24 = zext i32 %23 to i64, !dbg !208
  %25 = sub i64 0, %24, !dbg !208
  %26 = getelementptr inbounds i8, ptr %22, i64 %25, !dbg !208
  %27 = getelementptr inbounds i8, ptr %26, i64 -64, !dbg !209
  ret ptr %27, !dbg !210
}

declare i32 @nn_atomic_dec(ptr noundef, i32 noundef) #2

declare void @nn_atomic_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_chunk_addref(ptr noundef %0, i32 noundef %1) #0 !dbg !211 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !214, metadata !DIExpression()), !dbg !215
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr %5, metadata !218, metadata !DIExpression()), !dbg !219
  %6 = load ptr, ptr %3, align 8, !dbg !220
  %7 = call ptr @nn_chunk_getptr(ptr noundef %6), !dbg !221
  store ptr %7, ptr %5, align 8, !dbg !222
  %8 = load ptr, ptr %5, align 8, !dbg !223
  %9 = getelementptr inbounds %struct.nn_chunk, ptr %8, i32 0, i32 0, !dbg !224
  %10 = load i32, ptr %4, align 4, !dbg !225
  %11 = call i32 @nn_atomic_inc(ptr noundef %9, i32 noundef %10), !dbg !226
  ret void, !dbg !227
}

declare i32 @nn_atomic_inc(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nn_chunk_size(ptr noundef %0) #0 !dbg !228 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !231, metadata !DIExpression()), !dbg !232
  %3 = load ptr, ptr %2, align 8, !dbg !233
  %4 = call ptr @nn_chunk_getptr(ptr noundef %3), !dbg !234
  %5 = getelementptr inbounds %struct.nn_chunk, ptr %4, i32 0, i32 1, !dbg !235
  %6 = load i64, ptr %5, align 8, !dbg !235
  ret i64 %6, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_chunk_trim(ptr noundef %0, i64 noundef %1) #0 !dbg !237 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !240, metadata !DIExpression()), !dbg !241
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata ptr %5, metadata !244, metadata !DIExpression()), !dbg !245
  %6 = load ptr, ptr %3, align 8, !dbg !246
  %7 = call ptr @nn_chunk_getptr(ptr noundef %6), !dbg !247
  store ptr %7, ptr %5, align 8, !dbg !248
  br label %8, !dbg !249

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8, !dbg !250
  %10 = icmp uge i64 %9, 0, !dbg !250
  br i1 %10, label %11, label %17, !dbg !250

11:                                               ; preds = %8
  %12 = load i64, ptr %4, align 8, !dbg !250
  %13 = load ptr, ptr %5, align 8, !dbg !250
  %14 = getelementptr inbounds %struct.nn_chunk, ptr %13, i32 0, i32 1, !dbg !250
  %15 = load i64, ptr %14, align 8, !dbg !250
  %16 = icmp ule i64 %12, %15, !dbg !250
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ], !dbg !253
  %19 = xor i1 %18, true, !dbg !250
  %20 = zext i1 %19 to i32, !dbg !250
  %21 = sext i32 %20 to i64, !dbg !250
  %22 = icmp ne i64 %21, 0, !dbg !250
  br i1 %22, label %23, label %26, !dbg !254

23:                                               ; preds = %17
  %24 = load ptr, ptr @stderr, align 8, !dbg !255
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 133), !dbg !255
  call void @nn_err_abort() #4, !dbg !255
  unreachable, !dbg !255

26:                                               ; preds = %17
  br label %27, !dbg !254

27:                                               ; preds = %26
  %28 = load ptr, ptr %3, align 8, !dbg !257
  %29 = load i64, ptr %4, align 8, !dbg !258
  %30 = getelementptr inbounds i8, ptr %28, i64 %29, !dbg !259
  store ptr %30, ptr %3, align 8, !dbg !260
  %31 = load ptr, ptr %3, align 8, !dbg !261
  %32 = getelementptr inbounds i32, ptr %31, i64 -1, !dbg !262
  call void @nn_putl(ptr noundef %32, i32 noundef -559035650), !dbg !263
  %33 = load ptr, ptr %3, align 8, !dbg !264
  %34 = getelementptr inbounds i32, ptr %33, i64 -2, !dbg !265
  %35 = load ptr, ptr %3, align 8, !dbg !266
  %36 = load ptr, ptr %5, align 8, !dbg !267
  %37 = ptrtoint ptr %35 to i64, !dbg !268
  %38 = ptrtoint ptr %36 to i64, !dbg !268
  %39 = sub i64 %37, %38, !dbg !268
  %40 = sub i64 %39, 8, !dbg !269
  %41 = sub i64 %40, 64, !dbg !270
  %42 = trunc i64 %41 to i32, !dbg !271
  call void @nn_putl(ptr noundef %34, i32 noundef %42), !dbg !272
  %43 = load i64, ptr %4, align 8, !dbg !273
  %44 = load ptr, ptr %5, align 8, !dbg !274
  %45 = getelementptr inbounds %struct.nn_chunk, ptr %44, i32 0, i32 1, !dbg !275
  %46 = load i64, ptr %45, align 8, !dbg !276
  %47 = sub i64 %46, %43, !dbg !276
  store i64 %47, ptr %45, align 8, !dbg !276
  %48 = load ptr, ptr %3, align 8, !dbg !277
  ret ptr %48, !dbg !278
}

declare i32 @nn_getl(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/utils/chunk.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "03636f14a6e64917cc8f3ad60c0316a4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 26)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 59)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !28, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !29, globals: !95, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "src/utils/chunk.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "03636f14a6e64917cc8f3ad60c0316a4")
!29 = !{!30, !31, !37, !41}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !35, line: 38, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 26, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !35, line: 42, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunk", file: !2, line: 38, size: 512, elements: !43)
!43 = !{!44, !86, !90}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !42, file: !2, line: 41, baseType: !45, size: 384)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_atomic", file: !46, line: 38, size: 384, elements: !47)
!46 = !DIFile(filename: "./src/utils/atomic.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "05feb58b704f2e12cda95c62b9cebb8d")
!47 = !{!48, !84}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !45, file: !46, line: 40, baseType: !49, size: 320)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !50, line: 32, size: 320, elements: !51)
!50 = !DIFile(filename: "./src/utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !49, file: !50, line: 36, baseType: !53, size: 320)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !54, line: 72, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !54, line: 67, size: 320, elements: !56)
!56 = !{!57, !78, !82}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !55, file: !54, line: 69, baseType: !58, size: 320)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !59, line: 22, size: 320, elements: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!60 = !{!61, !63, !64, !65, !66, !67, !69, !70}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !58, file: !59, line: 24, baseType: !62, size: 32)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !58, file: !59, line: 25, baseType: !40, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !58, file: !59, line: 26, baseType: !62, size: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !58, file: !59, line: 28, baseType: !40, size: 32, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !58, file: !59, line: 32, baseType: !62, size: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !58, file: !59, line: 34, baseType: !68, size: 16, offset: 160)
!68 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !58, file: !59, line: 35, baseType: !68, size: 16, offset: 176)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !58, file: !59, line: 36, baseType: !71, size: 128, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !72, line: 55, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !72, line: 51, size: 128, elements: !74)
!74 = !{!75, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !73, file: !72, line: 53, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !73, file: !72, line: 54, baseType: !76, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !55, file: !54, line: 70, baseType: !79, size: 320)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 40)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !55, file: !54, line: 71, baseType: !83, size: 64)
!83 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !45, file: !46, line: 42, baseType: !85, size: 32, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !42, file: !2, line: 44, baseType: !87, size: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 46, baseType: !89)
!88 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ffn", scope: !42, file: !2, line: 47, baseType: !91, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_chunk_free_fn", file: !2, line: 36, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !30}
!95 = !{!0, !7, !12, !17, !22}
!96 = !{i32 7, !"Dwarf Version", i32 5}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{i32 1, !"wchar_size", i32 4}
!99 = !{i32 8, !"PIC Level", i32 2}
!100 = !{i32 7, !"PIE Level", i32 2}
!101 = !{i32 7, !"uwtable", i32 2}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 16.0.0"}
!104 = distinct !DISubprogram(name: "nn_chunk_alloc", scope: !2, file: !2, line: 58, type: !105, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!30, !87, !62}
!107 = !{}
!108 = !DILocalVariable(name: "size", arg: 1, scope: !104, file: !2, line: 58, type: !87)
!109 = !DILocation(line: 58, column: 30, scope: !104)
!110 = !DILocalVariable(name: "type", arg: 2, scope: !104, file: !2, line: 58, type: !62)
!111 = !DILocation(line: 58, column: 40, scope: !104)
!112 = !DILocalVariable(name: "sz", scope: !104, file: !2, line: 60, type: !87)
!113 = !DILocation(line: 60, column: 12, scope: !104)
!114 = !DILocalVariable(name: "self", scope: !104, file: !2, line: 61, type: !41)
!115 = !DILocation(line: 61, column: 22, scope: !104)
!116 = !DILocation(line: 64, column: 61, scope: !104)
!117 = !DILocation(line: 64, column: 59, scope: !104)
!118 = !DILocation(line: 64, column: 8, scope: !104)
!119 = !DILocation(line: 65, column: 13, scope: !104)
!120 = !DILocation(line: 65, column: 5, scope: !104)
!121 = !DILocation(line: 67, column: 16, scope: !122)
!122 = distinct !DILexicalBlock(scope: !104, file: !2, line: 65, column: 19)
!123 = !DILocation(line: 67, column: 14, scope: !122)
!124 = !DILocation(line: 68, column: 9, scope: !122)
!125 = !DILocation(line: 70, column: 9, scope: !122)
!126 = !DILocation(line: 72, column: 5, scope: !104)
!127 = !DILocation(line: 72, column: 5, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 72, column: 5)
!129 = distinct !DILexicalBlock(scope: !104, file: !2, line: 72, column: 5)
!130 = !DILocation(line: 72, column: 5, scope: !129)
!131 = !DILocation(line: 72, column: 5, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !2, line: 72, column: 5)
!133 = !DILocation(line: 75, column: 22, scope: !104)
!134 = !DILocation(line: 75, column: 28, scope: !104)
!135 = !DILocation(line: 75, column: 5, scope: !104)
!136 = !DILocation(line: 76, column: 18, scope: !104)
!137 = !DILocation(line: 76, column: 5, scope: !104)
!138 = !DILocation(line: 76, column: 11, scope: !104)
!139 = !DILocation(line: 76, column: 16, scope: !104)
!140 = !DILocation(line: 77, column: 5, scope: !104)
!141 = !DILocation(line: 77, column: 11, scope: !104)
!142 = !DILocation(line: 77, column: 15, scope: !104)
!143 = !DILocation(line: 81, column: 39, scope: !104)
!144 = !DILocation(line: 81, column: 44, scope: !104)
!145 = !DILocation(line: 81, column: 5, scope: !104)
!146 = !DILocation(line: 84, column: 41, scope: !104)
!147 = !DILocation(line: 84, column: 46, scope: !104)
!148 = !DILocation(line: 84, column: 53, scope: !104)
!149 = !DILocation(line: 84, column: 5, scope: !104)
!150 = !DILocation(line: 86, column: 25, scope: !104)
!151 = !DILocation(line: 86, column: 30, scope: !104)
!152 = !DILocation(line: 86, column: 36, scope: !104)
!153 = !DILocation(line: 86, column: 5, scope: !104)
!154 = !DILocation(line: 87, column: 1, scope: !104)
!155 = distinct !DISubprogram(name: "nn_chunk_default_free", scope: !2, file: !2, line: 158, type: !93, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !107)
!156 = !DILocalVariable(name: "p", arg: 1, scope: !155, file: !2, line: 158, type: !30)
!157 = !DILocation(line: 158, column: 42, scope: !155)
!158 = !DILocation(line: 160, column: 14, scope: !155)
!159 = !DILocation(line: 160, column: 5, scope: !155)
!160 = !DILocation(line: 161, column: 1, scope: !155)
!161 = distinct !DISubprogram(name: "nn_chunk_free", scope: !2, file: !2, line: 89, type: !93, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !107)
!162 = !DILocalVariable(name: "p", arg: 1, scope: !161, file: !2, line: 89, type: !30)
!163 = !DILocation(line: 89, column: 27, scope: !161)
!164 = !DILocalVariable(name: "self", scope: !161, file: !2, line: 91, type: !41)
!165 = !DILocation(line: 91, column: 22, scope: !161)
!166 = !DILocation(line: 93, column: 29, scope: !161)
!167 = !DILocation(line: 93, column: 12, scope: !161)
!168 = !DILocation(line: 93, column: 10, scope: !161)
!169 = !DILocation(line: 97, column: 25, scope: !170)
!170 = distinct !DILexicalBlock(scope: !161, file: !2, line: 97, column: 9)
!171 = !DILocation(line: 97, column: 31, scope: !170)
!172 = !DILocation(line: 97, column: 9, scope: !170)
!173 = !DILocation(line: 97, column: 44, scope: !170)
!174 = !DILocation(line: 97, column: 9, scope: !161)
!175 = !DILocation(line: 100, column: 43, scope: !176)
!176 = distinct !DILexicalBlock(scope: !170, file: !2, line: 97, column: 50)
!177 = !DILocation(line: 100, column: 46, scope: !176)
!178 = !DILocation(line: 100, column: 9, scope: !176)
!179 = !DILocation(line: 103, column: 26, scope: !176)
!180 = !DILocation(line: 103, column: 32, scope: !176)
!181 = !DILocation(line: 103, column: 9, scope: !176)
!182 = !DILocation(line: 107, column: 9, scope: !176)
!183 = !DILocation(line: 107, column: 15, scope: !176)
!184 = !DILocation(line: 107, column: 20, scope: !176)
!185 = !DILocation(line: 108, column: 5, scope: !176)
!186 = !DILocation(line: 109, column: 1, scope: !161)
!187 = distinct !DISubprogram(name: "nn_chunk_getptr", scope: !2, file: !2, line: 147, type: !188, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !107)
!188 = !DISubroutineType(types: !189)
!189 = !{!41, !30}
!190 = !DILocalVariable(name: "p", arg: 1, scope: !187, file: !2, line: 147, type: !30)
!191 = !DILocation(line: 147, column: 48, scope: !187)
!192 = !DILocalVariable(name: "off", scope: !187, file: !2, line: 149, type: !38)
!193 = !DILocation(line: 149, column: 14, scope: !187)
!194 = !DILocation(line: 151, column: 5, scope: !187)
!195 = !DILocation(line: 151, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 151, column: 5)
!197 = distinct !DILexicalBlock(scope: !187, file: !2, line: 151, column: 5)
!198 = !DILocation(line: 151, column: 5, scope: !197)
!199 = !DILocation(line: 151, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !2, line: 151, column: 5)
!201 = !DILocation(line: 152, column: 31, scope: !187)
!202 = !DILocation(line: 152, column: 33, scope: !187)
!203 = !DILocation(line: 152, column: 11, scope: !187)
!204 = !DILocation(line: 152, column: 9, scope: !187)
!205 = !DILocation(line: 154, column: 44, scope: !187)
!206 = !DILocation(line: 154, column: 46, scope: !187)
!207 = !DILocation(line: 154, column: 71, scope: !187)
!208 = !DILocation(line: 154, column: 69, scope: !187)
!209 = !DILocation(line: 154, column: 75, scope: !187)
!210 = !DILocation(line: 154, column: 5, scope: !187)
!211 = distinct !DISubprogram(name: "nn_chunk_addref", scope: !2, file: !2, line: 111, type: !212, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !107)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !30, !62}
!214 = !DILocalVariable(name: "p", arg: 1, scope: !211, file: !2, line: 111, type: !30)
!215 = !DILocation(line: 111, column: 29, scope: !211)
!216 = !DILocalVariable(name: "n", arg: 2, scope: !211, file: !2, line: 111, type: !62)
!217 = !DILocation(line: 111, column: 36, scope: !211)
!218 = !DILocalVariable(name: "self", scope: !211, file: !2, line: 113, type: !41)
!219 = !DILocation(line: 113, column: 22, scope: !211)
!220 = !DILocation(line: 115, column: 29, scope: !211)
!221 = !DILocation(line: 115, column: 12, scope: !211)
!222 = !DILocation(line: 115, column: 10, scope: !211)
!223 = !DILocation(line: 117, column: 21, scope: !211)
!224 = !DILocation(line: 117, column: 27, scope: !211)
!225 = !DILocation(line: 117, column: 37, scope: !211)
!226 = !DILocation(line: 117, column: 5, scope: !211)
!227 = !DILocation(line: 118, column: 1, scope: !211)
!228 = distinct !DISubprogram(name: "nn_chunk_size", scope: !2, file: !2, line: 121, type: !229, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !107)
!229 = !DISubroutineType(types: !230)
!230 = !{!87, !30}
!231 = !DILocalVariable(name: "p", arg: 1, scope: !228, file: !2, line: 121, type: !30)
!232 = !DILocation(line: 121, column: 29, scope: !228)
!233 = !DILocation(line: 123, column: 29, scope: !228)
!234 = !DILocation(line: 123, column: 12, scope: !228)
!235 = !DILocation(line: 123, column: 33, scope: !228)
!236 = !DILocation(line: 123, column: 5, scope: !228)
!237 = distinct !DISubprogram(name: "nn_chunk_trim", scope: !2, file: !2, line: 126, type: !238, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !107)
!238 = !DISubroutineType(types: !239)
!239 = !{!30, !30, !87}
!240 = !DILocalVariable(name: "p", arg: 1, scope: !237, file: !2, line: 126, type: !30)
!241 = !DILocation(line: 126, column: 28, scope: !237)
!242 = !DILocalVariable(name: "n", arg: 2, scope: !237, file: !2, line: 126, type: !87)
!243 = !DILocation(line: 126, column: 38, scope: !237)
!244 = !DILocalVariable(name: "self", scope: !237, file: !2, line: 128, type: !41)
!245 = !DILocation(line: 128, column: 22, scope: !237)
!246 = !DILocation(line: 130, column: 29, scope: !237)
!247 = !DILocation(line: 130, column: 12, scope: !237)
!248 = !DILocation(line: 130, column: 10, scope: !237)
!249 = !DILocation(line: 133, column: 5, scope: !237)
!250 = !DILocation(line: 133, column: 5, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !2, line: 133, column: 5)
!252 = distinct !DILexicalBlock(scope: !237, file: !2, line: 133, column: 5)
!253 = !DILocation(line: 0, scope: !251)
!254 = !DILocation(line: 133, column: 5, scope: !252)
!255 = !DILocation(line: 133, column: 5, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !2, line: 133, column: 5)
!257 = !DILocation(line: 136, column: 21, scope: !237)
!258 = !DILocation(line: 136, column: 26, scope: !237)
!259 = !DILocation(line: 136, column: 24, scope: !237)
!260 = !DILocation(line: 136, column: 7, scope: !237)
!261 = !DILocation(line: 137, column: 39, scope: !237)
!262 = !DILocation(line: 137, column: 42, scope: !237)
!263 = !DILocation(line: 137, column: 5, scope: !237)
!264 = !DILocation(line: 138, column: 39, scope: !237)
!265 = !DILocation(line: 138, column: 42, scope: !237)
!266 = !DILocation(line: 138, column: 59, scope: !237)
!267 = !DILocation(line: 138, column: 74, scope: !237)
!268 = !DILocation(line: 138, column: 61, scope: !237)
!269 = !DILocation(line: 138, column: 79, scope: !237)
!270 = !DILocation(line: 139, column: 31, scope: !237)
!271 = !DILocation(line: 138, column: 48, scope: !237)
!272 = !DILocation(line: 138, column: 5, scope: !237)
!273 = !DILocation(line: 142, column: 19, scope: !237)
!274 = !DILocation(line: 142, column: 5, scope: !237)
!275 = !DILocation(line: 142, column: 11, scope: !237)
!276 = !DILocation(line: 142, column: 16, scope: !237)
!277 = !DILocation(line: 144, column: 12, scope: !237)
!278 = !DILocation(line: 144, column: 5, scope: !237)
