; ModuleID = './src/transports/tcp/tcp.c'
source_filename = "./src/transports/tcp/tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_transport = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_optset_vfptr = type { ptr, ptr, ptr }
%struct.nn_tcp_optset = type { %struct.nn_optset, i32 }
%struct.nn_optset = type { ptr }

@nn_tcp_vfptr = internal global %struct.nn_transport { ptr @.str, i32 -3, ptr null, ptr null, ptr @nn_tcp_bind, ptr @nn_tcp_connect, ptr @nn_tcp_optset, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_tcp = dso_local global ptr @nn_tcp_vfptr, align 8, !dbg !44
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1, !dbg !91
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !96
@.str.2 = private unnamed_addr constant [27 x i8] c"./src/transports/tcp/tcp.c\00", align 1, !dbg !101
@nn_tcp_optset_vfptr = internal constant %struct.nn_optset_vfptr { ptr @nn_tcp_optset_destroy, ptr @nn_tcp_optset_setopt, ptr @nn_tcp_optset_getopt }, align 8, !dbg !106

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_tcp_bind(ptr noundef %0, ptr noundef %1) #0 !dbg !116 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !118, metadata !DIExpression()), !dbg !119
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !120, metadata !DIExpression()), !dbg !121
  %5 = load ptr, ptr %3, align 8, !dbg !122
  %6 = load ptr, ptr %4, align 8, !dbg !123
  %7 = call i32 @nn_btcp_create(ptr noundef %5, ptr noundef %6), !dbg !124
  ret i32 %7, !dbg !125
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_tcp_connect(ptr noundef %0, ptr noundef %1) #0 !dbg !126 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !127, metadata !DIExpression()), !dbg !128
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !129, metadata !DIExpression()), !dbg !130
  %5 = load ptr, ptr %3, align 8, !dbg !131
  %6 = load ptr, ptr %4, align 8, !dbg !132
  %7 = call i32 @nn_ctcp_create(ptr noundef %5, ptr noundef %6), !dbg !133
  ret i32 %7, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @nn_tcp_optset() #0 !dbg !135 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !136, metadata !DIExpression()), !dbg !137
  %2 = call ptr @nn_alloc_(i64 noundef 16), !dbg !138
  store ptr %2, ptr %1, align 8, !dbg !139
  br label %3, !dbg !140

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !dbg !141
  %5 = icmp ne ptr %4, null, !dbg !141
  %6 = xor i1 %5, true, !dbg !141
  %7 = zext i1 %6 to i32, !dbg !141
  %8 = sext i32 %7 to i64, !dbg !141
  %9 = icmp ne i64 %8, 0, !dbg !141
  br i1 %9, label %10, label %13, !dbg !144

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !dbg !145
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 98), !dbg !145
  call void @nn_err_abort() #5, !dbg !145
  unreachable, !dbg !145

13:                                               ; preds = %3
  br label %14, !dbg !144

14:                                               ; preds = %13
  %15 = load ptr, ptr %1, align 8, !dbg !147
  %16 = getelementptr inbounds %struct.nn_tcp_optset, ptr %15, i32 0, i32 0, !dbg !148
  %17 = getelementptr inbounds %struct.nn_optset, ptr %16, i32 0, i32 0, !dbg !149
  store ptr @nn_tcp_optset_vfptr, ptr %17, align 8, !dbg !150
  %18 = load ptr, ptr %1, align 8, !dbg !151
  %19 = getelementptr inbounds %struct.nn_tcp_optset, ptr %18, i32 0, i32 1, !dbg !152
  store i32 0, ptr %19, align 8, !dbg !153
  %20 = load ptr, ptr %1, align 8, !dbg !154
  %21 = getelementptr inbounds %struct.nn_tcp_optset, ptr %20, i32 0, i32 0, !dbg !155
  ret ptr %21, !dbg !156
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @nn_btcp_create(ptr noundef, ptr noundef) #2

declare i32 @nn_ctcp_create(ptr noundef, ptr noundef) #2

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_tcp_optset_destroy(ptr noundef %0) #0 !dbg !157 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata ptr %3, metadata !160, metadata !DIExpression()), !dbg !161
  %4 = load ptr, ptr %2, align 8, !dbg !162
  %5 = icmp ne ptr %4, null, !dbg !162
  br i1 %5, label %6, label %9, !dbg !162

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !162
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !162
  br label %10, !dbg !162

9:                                                ; preds = %1
  br label %10, !dbg !162

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !162
  store ptr %11, ptr %3, align 8, !dbg !163
  %12 = load ptr, ptr %3, align 8, !dbg !164
  call void @nn_free(ptr noundef %12), !dbg !165
  ret void, !dbg !166
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_tcp_optset_setopt(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) #0 !dbg !167 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !168, metadata !DIExpression()), !dbg !169
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !170, metadata !DIExpression()), !dbg !171
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !172, metadata !DIExpression()), !dbg !173
  store i64 %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata ptr %10, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata ptr %11, metadata !178, metadata !DIExpression()), !dbg !179
  %12 = load ptr, ptr %6, align 8, !dbg !180
  %13 = icmp ne ptr %12, null, !dbg !180
  br i1 %13, label %14, label %17, !dbg !180

14:                                               ; preds = %4
  %15 = load ptr, ptr %6, align 8, !dbg !180
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !180
  br label %18, !dbg !180

17:                                               ; preds = %4
  br label %18, !dbg !180

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !180
  store ptr %19, ptr %10, align 8, !dbg !181
  %20 = load i64, ptr %9, align 8, !dbg !182
  %21 = icmp ne i64 %20, 4, !dbg !184
  br i1 %21, label %22, label %23, !dbg !185

22:                                               ; preds = %18
  store i32 -22, ptr %5, align 4, !dbg !186
  br label %44, !dbg !186

23:                                               ; preds = %18
  %24 = load ptr, ptr %8, align 8, !dbg !187
  %25 = load i32, ptr %24, align 4, !dbg !188
  store i32 %25, ptr %11, align 4, !dbg !189
  %26 = load i32, ptr %7, align 4, !dbg !190
  switch i32 %26, label %43 [
    i32 1, label %27
  ], !dbg !191

27:                                               ; preds = %23
  %28 = load i32, ptr %11, align 4, !dbg !192
  %29 = icmp ne i32 %28, 0, !dbg !192
  br i1 %29, label %30, label %33, !dbg !192

30:                                               ; preds = %27
  %31 = load i32, ptr %11, align 4, !dbg !192
  %32 = icmp ne i32 %31, 1, !dbg !192
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ], !dbg !195
  %35 = zext i1 %34 to i32, !dbg !192
  %36 = sext i32 %35 to i64, !dbg !192
  %37 = icmp ne i64 %36, 0, !dbg !192
  br i1 %37, label %38, label %39, !dbg !196

38:                                               ; preds = %33
  store i32 -22, ptr %5, align 4, !dbg !197
  br label %44, !dbg !197

39:                                               ; preds = %33
  %40 = load i32, ptr %11, align 4, !dbg !198
  %41 = load ptr, ptr %10, align 8, !dbg !199
  %42 = getelementptr inbounds %struct.nn_tcp_optset, ptr %41, i32 0, i32 1, !dbg !200
  store i32 %40, ptr %42, align 8, !dbg !201
  store i32 0, ptr %5, align 4, !dbg !202
  br label %44, !dbg !202

43:                                               ; preds = %23
  store i32 -92, ptr %5, align 4, !dbg !203
  br label %44, !dbg !203

44:                                               ; preds = %43, %39, %38, %22
  %45 = load i32, ptr %5, align 4, !dbg !204
  ret i32 %45, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_tcp_optset_getopt(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !205 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !206, metadata !DIExpression()), !dbg !207
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !208, metadata !DIExpression()), !dbg !209
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !210, metadata !DIExpression()), !dbg !211
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata ptr %10, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata ptr %11, metadata !216, metadata !DIExpression()), !dbg !217
  %12 = load ptr, ptr %6, align 8, !dbg !218
  %13 = icmp ne ptr %12, null, !dbg !218
  br i1 %13, label %14, label %17, !dbg !218

14:                                               ; preds = %4
  %15 = load ptr, ptr %6, align 8, !dbg !218
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !218
  br label %18, !dbg !218

17:                                               ; preds = %4
  br label %18, !dbg !218

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !218
  store ptr %19, ptr %10, align 8, !dbg !219
  %20 = load i32, ptr %7, align 4, !dbg !220
  switch i32 %20, label %25 [
    i32 1, label %21
  ], !dbg !221

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !dbg !222
  %23 = getelementptr inbounds %struct.nn_tcp_optset, ptr %22, i32 0, i32 1, !dbg !224
  %24 = load i32, ptr %23, align 8, !dbg !224
  store i32 %24, ptr %11, align 4, !dbg !225
  br label %26, !dbg !226

25:                                               ; preds = %18
  store i32 -92, ptr %5, align 4, !dbg !227
  br label %38, !dbg !227

26:                                               ; preds = %21
  %27 = load ptr, ptr %8, align 8, !dbg !228
  %28 = load ptr, ptr %9, align 8, !dbg !229
  %29 = load i64, ptr %28, align 8, !dbg !230
  %30 = icmp ult i64 %29, 4, !dbg !231
  br i1 %30, label %31, label %34, !dbg !230

31:                                               ; preds = %26
  %32 = load ptr, ptr %9, align 8, !dbg !232
  %33 = load i64, ptr %32, align 8, !dbg !233
  br label %35, !dbg !230

34:                                               ; preds = %26
  br label %35, !dbg !230

35:                                               ; preds = %34, %31
  %36 = phi i64 [ %33, %31 ], [ 4, %34 ], !dbg !230
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 4 %11, i64 %36, i1 false), !dbg !234
  %37 = load ptr, ptr %9, align 8, !dbg !235
  store i64 4, ptr %37, align 8, !dbg !236
  store i32 0, ptr %5, align 4, !dbg !237
  br label %38, !dbg !237

38:                                               ; preds = %35, %25
  %39 = load i32, ptr %5, align 4, !dbg !238
  ret i32 %39, !dbg !238
}

declare void @nn_free(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_tcp_vfptr", scope: !2, file: !7, line: 70, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !43, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/tcp/tcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2bea3ab5586d259787caf0c8b2018d97")
!4 = !{!5, !40, !42}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_tcp_optset", file: !7, line: 49, size: 128, elements: !8)
!7 = !DIFile(filename: "./src/transports/tcp/tcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2bea3ab5586d259787caf0c8b2018d97")
!8 = !{!9, !39}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6, file: !7, line: 50, baseType: !10, size: 64)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset", file: !11, line: 56, size: 64, elements: !12)
!11 = !DIFile(filename: "./src/transports/tcp/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !10, file: !11, line: 57, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset_vfptr", file: !11, line: 48, size: 192, elements: !17)
!17 = !{!18, !23, !33}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !16, file: !11, line: 49, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !16, file: !11, line: 50, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !22, !27, !28, !30}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !16, file: !11, line: 52, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!27, !22, !27, !37, !38}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "nodelay", scope: !6, file: !7, line: 51, baseType: !27, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!43 = !{!44, !91, !0, !96, !101, !106}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "nn_tcp", scope: !2, file: !7, line: 81, type: !46, isLocal: false, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_transport", file: !11, line: 190, size: 576, elements: !48)
!48 = !{!49, !52, !53, !57, !58, !79, !80, !84}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !47, file: !11, line: 194, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !47, file: !11, line: 197, baseType: !27, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !47, file: !11, line: 204, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "term", scope: !47, file: !11, line: 205, baseType: !54, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !47, file: !11, line: 213, baseType: !59, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!27, !37, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !11, line: 81, size: 128, elements: !65)
!65 = !{!66, !76}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !64, file: !11, line: 82, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !11, line: 70, size: 128, elements: !70)
!70 = !{!71, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !69, file: !11, line: 75, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !63}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !69, file: !11, line: 78, baseType: !72, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !64, file: !11, line: 83, baseType: !77, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !11, line: 83, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !47, file: !11, line: 214, baseType: !59, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "optset", scope: !47, file: !11, line: 219, baseType: !81, size: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!22}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !47, file: !11, line: 223, baseType: !85, size: 128, offset: 448)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !86, line: 26, size: 128, elements: !87)
!86 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!87 = !{!88, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !86, line: 27, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !85, file: !86, line: 28, baseType: !89, size: 64, offset: 64)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !7, line: 71, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 4)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !7, line: 98, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 184, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 23)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !7, line: 98, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 216, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 27)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "nn_tcp_optset_vfptr", scope: !2, file: !7, line: 59, type: !15, isLocal: true, isDefinition: true)
!108 = !{i32 7, !"Dwarf Version", i32 5}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = !{i32 8, !"PIC Level", i32 2}
!112 = !{i32 7, !"PIE Level", i32 2}
!113 = !{i32 7, !"uwtable", i32 2}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 16.0.0"}
!116 = distinct !DISubprogram(name: "nn_tcp_bind", scope: !7, file: !7, line: 83, type: !60, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !117)
!117 = !{}
!118 = !DILocalVariable(name: "hint", arg: 1, scope: !116, file: !7, line: 83, type: !37)
!119 = !DILocation(line: 83, column: 31, scope: !116)
!120 = !DILocalVariable(name: "epbase", arg: 2, scope: !116, file: !7, line: 83, type: !62)
!121 = !DILocation(line: 83, column: 56, scope: !116)
!122 = !DILocation(line: 85, column: 28, scope: !116)
!123 = !DILocation(line: 85, column: 34, scope: !116)
!124 = !DILocation(line: 85, column: 12, scope: !116)
!125 = !DILocation(line: 85, column: 5, scope: !116)
!126 = distinct !DISubprogram(name: "nn_tcp_connect", scope: !7, file: !7, line: 88, type: !60, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !117)
!127 = !DILocalVariable(name: "hint", arg: 1, scope: !126, file: !7, line: 88, type: !37)
!128 = !DILocation(line: 88, column: 34, scope: !126)
!129 = !DILocalVariable(name: "epbase", arg: 2, scope: !126, file: !7, line: 88, type: !62)
!130 = !DILocation(line: 88, column: 59, scope: !126)
!131 = !DILocation(line: 90, column: 28, scope: !126)
!132 = !DILocation(line: 90, column: 34, scope: !126)
!133 = !DILocation(line: 90, column: 12, scope: !126)
!134 = !DILocation(line: 90, column: 5, scope: !126)
!135 = distinct !DISubprogram(name: "nn_tcp_optset", scope: !7, file: !7, line: 93, type: !82, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !117)
!136 = !DILocalVariable(name: "optset", scope: !135, file: !7, line: 95, type: !5)
!137 = !DILocation(line: 95, column: 27, scope: !135)
!138 = !DILocation(line: 97, column: 14, scope: !135)
!139 = !DILocation(line: 97, column: 12, scope: !135)
!140 = !DILocation(line: 98, column: 5, scope: !135)
!141 = !DILocation(line: 98, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !7, line: 98, column: 5)
!143 = distinct !DILexicalBlock(scope: !135, file: !7, line: 98, column: 5)
!144 = !DILocation(line: 98, column: 5, scope: !143)
!145 = !DILocation(line: 98, column: 5, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !7, line: 98, column: 5)
!147 = !DILocation(line: 99, column: 5, scope: !135)
!148 = !DILocation(line: 99, column: 13, scope: !135)
!149 = !DILocation(line: 99, column: 18, scope: !135)
!150 = !DILocation(line: 99, column: 24, scope: !135)
!151 = !DILocation(line: 102, column: 5, scope: !135)
!152 = !DILocation(line: 102, column: 13, scope: !135)
!153 = !DILocation(line: 102, column: 21, scope: !135)
!154 = !DILocation(line: 104, column: 13, scope: !135)
!155 = !DILocation(line: 104, column: 21, scope: !135)
!156 = !DILocation(line: 104, column: 5, scope: !135)
!157 = distinct !DISubprogram(name: "nn_tcp_optset_destroy", scope: !7, file: !7, line: 107, type: !20, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !117)
!158 = !DILocalVariable(name: "self", arg: 1, scope: !157, file: !7, line: 107, type: !22)
!159 = !DILocation(line: 107, column: 54, scope: !157)
!160 = !DILocalVariable(name: "optset", scope: !157, file: !7, line: 109, type: !5)
!161 = !DILocation(line: 109, column: 27, scope: !157)
!162 = !DILocation(line: 111, column: 14, scope: !157)
!163 = !DILocation(line: 111, column: 12, scope: !157)
!164 = !DILocation(line: 112, column: 14, scope: !157)
!165 = !DILocation(line: 112, column: 5, scope: !157)
!166 = !DILocation(line: 113, column: 1, scope: !157)
!167 = distinct !DISubprogram(name: "nn_tcp_optset_setopt", scope: !7, file: !7, line: 115, type: !25, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !117)
!168 = !DILocalVariable(name: "self", arg: 1, scope: !167, file: !7, line: 115, type: !22)
!169 = !DILocation(line: 115, column: 52, scope: !167)
!170 = !DILocalVariable(name: "option", arg: 2, scope: !167, file: !7, line: 115, type: !27)
!171 = !DILocation(line: 115, column: 62, scope: !167)
!172 = !DILocalVariable(name: "optval", arg: 3, scope: !167, file: !7, line: 116, type: !28)
!173 = !DILocation(line: 116, column: 17, scope: !167)
!174 = !DILocalVariable(name: "optvallen", arg: 4, scope: !167, file: !7, line: 116, type: !30)
!175 = !DILocation(line: 116, column: 32, scope: !167)
!176 = !DILocalVariable(name: "optset", scope: !167, file: !7, line: 118, type: !5)
!177 = !DILocation(line: 118, column: 27, scope: !167)
!178 = !DILocalVariable(name: "val", scope: !167, file: !7, line: 119, type: !27)
!179 = !DILocation(line: 119, column: 9, scope: !167)
!180 = !DILocation(line: 121, column: 14, scope: !167)
!181 = !DILocation(line: 121, column: 12, scope: !167)
!182 = !DILocation(line: 124, column: 9, scope: !183)
!183 = distinct !DILexicalBlock(scope: !167, file: !7, line: 124, column: 9)
!184 = !DILocation(line: 124, column: 19, scope: !183)
!185 = !DILocation(line: 124, column: 9, scope: !167)
!186 = !DILocation(line: 125, column: 9, scope: !183)
!187 = !DILocation(line: 126, column: 19, scope: !167)
!188 = !DILocation(line: 126, column: 11, scope: !167)
!189 = !DILocation(line: 126, column: 9, scope: !167)
!190 = !DILocation(line: 128, column: 13, scope: !167)
!191 = !DILocation(line: 128, column: 5, scope: !167)
!192 = !DILocation(line: 130, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !7, line: 130, column: 13)
!194 = distinct !DILexicalBlock(scope: !167, file: !7, line: 128, column: 21)
!195 = !DILocation(line: 0, scope: !193)
!196 = !DILocation(line: 130, column: 13, scope: !194)
!197 = !DILocation(line: 131, column: 13, scope: !193)
!198 = !DILocation(line: 132, column: 27, scope: !194)
!199 = !DILocation(line: 132, column: 9, scope: !194)
!200 = !DILocation(line: 132, column: 17, scope: !194)
!201 = !DILocation(line: 132, column: 25, scope: !194)
!202 = !DILocation(line: 133, column: 9, scope: !194)
!203 = !DILocation(line: 135, column: 9, scope: !194)
!204 = !DILocation(line: 137, column: 1, scope: !167)
!205 = distinct !DISubprogram(name: "nn_tcp_optset_getopt", scope: !7, file: !7, line: 139, type: !35, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !117)
!206 = !DILocalVariable(name: "self", arg: 1, scope: !205, file: !7, line: 139, type: !22)
!207 = !DILocation(line: 139, column: 52, scope: !205)
!208 = !DILocalVariable(name: "option", arg: 2, scope: !205, file: !7, line: 139, type: !27)
!209 = !DILocation(line: 139, column: 62, scope: !205)
!210 = !DILocalVariable(name: "optval", arg: 3, scope: !205, file: !7, line: 140, type: !37)
!211 = !DILocation(line: 140, column: 11, scope: !205)
!212 = !DILocalVariable(name: "optvallen", arg: 4, scope: !205, file: !7, line: 140, type: !38)
!213 = !DILocation(line: 140, column: 27, scope: !205)
!214 = !DILocalVariable(name: "optset", scope: !205, file: !7, line: 142, type: !5)
!215 = !DILocation(line: 142, column: 27, scope: !205)
!216 = !DILocalVariable(name: "intval", scope: !205, file: !7, line: 143, type: !27)
!217 = !DILocation(line: 143, column: 9, scope: !205)
!218 = !DILocation(line: 145, column: 14, scope: !205)
!219 = !DILocation(line: 145, column: 12, scope: !205)
!220 = !DILocation(line: 147, column: 13, scope: !205)
!221 = !DILocation(line: 147, column: 5, scope: !205)
!222 = !DILocation(line: 149, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !205, file: !7, line: 147, column: 21)
!224 = !DILocation(line: 149, column: 26, scope: !223)
!225 = !DILocation(line: 149, column: 16, scope: !223)
!226 = !DILocation(line: 150, column: 9, scope: !223)
!227 = !DILocation(line: 152, column: 9, scope: !223)
!228 = !DILocation(line: 154, column: 13, scope: !205)
!229 = !DILocation(line: 155, column: 10, scope: !205)
!230 = !DILocation(line: 155, column: 9, scope: !205)
!231 = !DILocation(line: 155, column: 20, scope: !205)
!232 = !DILocation(line: 155, column: 38, scope: !205)
!233 = !DILocation(line: 155, column: 37, scope: !205)
!234 = !DILocation(line: 154, column: 5, scope: !205)
!235 = !DILocation(line: 156, column: 6, scope: !205)
!236 = !DILocation(line: 156, column: 16, scope: !205)
!237 = !DILocation(line: 157, column: 5, scope: !205)
!238 = !DILocation(line: 158, column: 1, scope: !205)
