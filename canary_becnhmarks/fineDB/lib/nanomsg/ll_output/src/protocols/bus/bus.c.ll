; ModuleID = './src/protocols/bus/bus.c'
source_filename = "./src/protocols/bus/bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_bus = type { %struct.nn_xbus }
%struct.nn_xbus = type { %struct.nn_sockbase, %struct.nn_dist, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_dist = type { i64, %struct.nn_list }
%struct.nn_list = type { ptr, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@nn_bus_socktype_struct = internal global %struct.nn_socktype { i32 1, i32 112, i32 0, ptr @nn_bus_create, ptr @nn_xbus_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_bus_socktype = dso_local global ptr @nn_bus_socktype_struct, align 8, !dbg !128
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !146
@.str.1 = private unnamed_addr constant [26 x i8] c"./src/protocols/bus/bus.c\00", align 1, !dbg !151
@nn_bus_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr null, ptr @nn_bus_destroy, ptr @nn_xbus_add, ptr @nn_xbus_rm, ptr @nn_xbus_in, ptr @nn_xbus_out, ptr @nn_xbus_events, ptr @nn_bus_send, ptr @nn_bus_recv, ptr @nn_xbus_setopt, ptr @nn_xbus_getopt }, align 8, !dbg !156
@.str.2 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !158
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !163
@.str.4 = private unnamed_addr constant [50 x i8] c"nn_chunkref_size (&msg->hdr) == sizeof (uint64_t)\00", align 1, !dbg !168

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_bus_create(ptr noundef %0, ptr noundef %1) #0 !dbg !181 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !183, metadata !DIExpression()), !dbg !184
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata ptr %5, metadata !187, metadata !DIExpression()), !dbg !188
  %6 = call ptr @nn_alloc_(i64 noundef 432), !dbg !189
  store ptr %6, ptr %5, align 8, !dbg !190
  br label %7, !dbg !191

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !192
  %9 = icmp ne ptr %8, null, !dbg !192
  %10 = xor i1 %9, true, !dbg !192
  %11 = zext i1 %10 to i32, !dbg !192
  %12 = sext i32 %11 to i64, !dbg !192
  %13 = icmp ne i64 %12, 0, !dbg !192
  br i1 %13, label %14, label %17, !dbg !195

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !196
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 126), !dbg !196
  call void @nn_err_abort() #4, !dbg !196
  unreachable, !dbg !196

17:                                               ; preds = %7
  br label %18, !dbg !195

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !198
  %20 = load ptr, ptr %3, align 8, !dbg !199
  call void @nn_bus_init(ptr noundef %19, ptr noundef @nn_bus_sockbase_vfptr, ptr noundef %20), !dbg !200
  %21 = load ptr, ptr %5, align 8, !dbg !201
  %22 = getelementptr inbounds %struct.nn_bus, ptr %21, i32 0, i32 0, !dbg !202
  %23 = getelementptr inbounds %struct.nn_xbus, ptr %22, i32 0, i32 0, !dbg !203
  %24 = load ptr, ptr %4, align 8, !dbg !204
  store ptr %23, ptr %24, align 8, !dbg !205
  ret i32 0, !dbg !206
}

declare i32 @nn_xbus_ispeer(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare ptr @nn_alloc_(i64 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bus_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !207 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !210, metadata !DIExpression()), !dbg !211
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !212, metadata !DIExpression()), !dbg !213
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !214, metadata !DIExpression()), !dbg !215
  %7 = load ptr, ptr %4, align 8, !dbg !216
  %8 = getelementptr inbounds %struct.nn_bus, ptr %7, i32 0, i32 0, !dbg !217
  %9 = load ptr, ptr %5, align 8, !dbg !218
  %10 = load ptr, ptr %6, align 8, !dbg !219
  call void @nn_xbus_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !220
  ret void, !dbg !221
}

declare void @nn_xbus_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bus_destroy(ptr noundef %0) #0 !dbg !222 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata ptr %3, metadata !225, metadata !DIExpression()), !dbg !226
  %4 = load ptr, ptr %2, align 8, !dbg !227
  %5 = icmp ne ptr %4, null, !dbg !227
  br i1 %5, label %6, label %9, !dbg !227

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !227
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !227
  br label %10, !dbg !227

9:                                                ; preds = %1
  br label %10, !dbg !227

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !227
  store ptr %11, ptr %3, align 8, !dbg !228
  %12 = load ptr, ptr %3, align 8, !dbg !229
  call void @nn_bus_term(ptr noundef %12), !dbg !230
  %13 = load ptr, ptr %3, align 8, !dbg !231
  call void @nn_free(ptr noundef %13), !dbg !232
  ret void, !dbg !233
}

declare i32 @nn_xbus_add(ptr noundef, ptr noundef) #1

declare void @nn_xbus_rm(ptr noundef, ptr noundef) #1

declare void @nn_xbus_in(ptr noundef, ptr noundef) #1

declare void @nn_xbus_out(ptr noundef, ptr noundef) #1

declare i32 @nn_xbus_events(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_bus_send(ptr noundef %0, ptr noundef %1) #0 !dbg !234 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !235, metadata !DIExpression()), !dbg !236
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata ptr %6, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata ptr %7, metadata !241, metadata !DIExpression()), !dbg !242
  %8 = load ptr, ptr %4, align 8, !dbg !243
  %9 = icmp ne ptr %8, null, !dbg !243
  br i1 %9, label %10, label %13, !dbg !243

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !243
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !243
  br label %14, !dbg !243

13:                                               ; preds = %2
  br label %14, !dbg !243

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !243
  store ptr %15, ptr %7, align 8, !dbg !244
  %16 = load ptr, ptr %5, align 8, !dbg !245
  %17 = getelementptr inbounds %struct.nn_msg, ptr %16, i32 0, i32 0, !dbg !247
  %18 = call i64 @nn_chunkref_size(ptr noundef %17), !dbg !248
  %19 = icmp ne i64 %18, 0, !dbg !248
  br i1 %19, label %20, label %21, !dbg !249

20:                                               ; preds = %14
  store i32 -22, ptr %3, align 4, !dbg !250
  br label %44, !dbg !250

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 8, !dbg !251
  %23 = getelementptr inbounds %struct.nn_bus, ptr %22, i32 0, i32 0, !dbg !252
  %24 = getelementptr inbounds %struct.nn_xbus, ptr %23, i32 0, i32 0, !dbg !253
  %25 = load ptr, ptr %5, align 8, !dbg !254
  %26 = call i32 @nn_xbus_send(ptr noundef %24, ptr noundef %25), !dbg !255
  store i32 %26, ptr %6, align 4, !dbg !256
  br label %27, !dbg !257

27:                                               ; preds = %21
  %28 = load i32, ptr %6, align 4, !dbg !258
  %29 = icmp eq i32 %28, 0, !dbg !258
  %30 = xor i1 %29, true, !dbg !258
  %31 = zext i1 %30 to i32, !dbg !258
  %32 = sext i32 %31 to i64, !dbg !258
  %33 = icmp ne i64 %32, 0, !dbg !258
  br i1 %33, label %34, label %42, !dbg !261

34:                                               ; preds = %27
  %35 = load ptr, ptr @stderr, align 8, !dbg !262
  %36 = load i32, ptr %6, align 4, !dbg !262
  %37 = sub nsw i32 0, %36, !dbg !262
  %38 = call ptr @nn_err_strerror(i32 noundef %37), !dbg !262
  %39 = load i32, ptr %6, align 4, !dbg !262
  %40 = sub nsw i32 0, %39, !dbg !262
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.2, ptr noundef %38, i32 noundef %40, ptr noundef @.str.1, i32 noundef 95), !dbg !262
  call void @nn_err_abort() #4, !dbg !262
  unreachable, !dbg !262

42:                                               ; preds = %27
  br label %43, !dbg !261

43:                                               ; preds = %42
  store i32 0, ptr %3, align 4, !dbg !264
  br label %44, !dbg !264

44:                                               ; preds = %43, %20
  %45 = load i32, ptr %3, align 4, !dbg !265
  ret i32 %45, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_bus_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !266 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !267, metadata !DIExpression()), !dbg !268
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata ptr %6, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata ptr %7, metadata !273, metadata !DIExpression()), !dbg !274
  %8 = load ptr, ptr %4, align 8, !dbg !275
  %9 = icmp ne ptr %8, null, !dbg !275
  br i1 %9, label %10, label %13, !dbg !275

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !275
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !275
  br label %14, !dbg !275

13:                                               ; preds = %2
  br label %14, !dbg !275

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !275
  store ptr %15, ptr %7, align 8, !dbg !276
  %16 = load ptr, ptr %7, align 8, !dbg !277
  %17 = getelementptr inbounds %struct.nn_bus, ptr %16, i32 0, i32 0, !dbg !278
  %18 = getelementptr inbounds %struct.nn_xbus, ptr %17, i32 0, i32 0, !dbg !279
  %19 = load ptr, ptr %5, align 8, !dbg !280
  %20 = call i32 @nn_xbus_recv(ptr noundef %18, ptr noundef %19), !dbg !281
  store i32 %20, ptr %6, align 4, !dbg !282
  %21 = load i32, ptr %6, align 4, !dbg !283
  %22 = icmp eq i32 %21, -11, !dbg !283
  %23 = zext i1 %22 to i32, !dbg !283
  %24 = sext i32 %23 to i64, !dbg !283
  %25 = icmp ne i64 %24, 0, !dbg !283
  br i1 %25, label %26, label %27, !dbg !285

26:                                               ; preds = %14
  store i32 -11, ptr %3, align 4, !dbg !286
  br label %63, !dbg !286

27:                                               ; preds = %14
  br label %28, !dbg !287

28:                                               ; preds = %27
  %29 = load i32, ptr %6, align 4, !dbg !288
  %30 = icmp eq i32 %29, 0, !dbg !288
  %31 = xor i1 %30, true, !dbg !288
  %32 = zext i1 %31 to i32, !dbg !288
  %33 = sext i32 %32 to i64, !dbg !288
  %34 = icmp ne i64 %33, 0, !dbg !288
  br i1 %34, label %35, label %43, !dbg !291

35:                                               ; preds = %28
  %36 = load ptr, ptr @stderr, align 8, !dbg !292
  %37 = load i32, ptr %6, align 4, !dbg !292
  %38 = sub nsw i32 0, %37, !dbg !292
  %39 = call ptr @nn_err_strerror(i32 noundef %38), !dbg !292
  %40 = load i32, ptr %6, align 4, !dbg !292
  %41 = sub nsw i32 0, %40, !dbg !292
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.2, ptr noundef %39, i32 noundef %41, ptr noundef @.str.1, i32 noundef 111), !dbg !292
  call void @nn_err_abort() #4, !dbg !292
  unreachable, !dbg !292

43:                                               ; preds = %28
  br label %44, !dbg !291

44:                                               ; preds = %43
  br label %45, !dbg !294

45:                                               ; preds = %44
  %46 = load ptr, ptr %5, align 8, !dbg !295
  %47 = getelementptr inbounds %struct.nn_msg, ptr %46, i32 0, i32 0, !dbg !295
  %48 = call i64 @nn_chunkref_size(ptr noundef %47), !dbg !295
  %49 = icmp eq i64 %48, 8, !dbg !295
  %50 = xor i1 %49, true, !dbg !295
  %51 = zext i1 %50 to i32, !dbg !295
  %52 = sext i32 %51 to i64, !dbg !295
  %53 = icmp ne i64 %52, 0, !dbg !295
  br i1 %53, label %54, label %57, !dbg !298

54:                                               ; preds = %45
  %55 = load ptr, ptr @stderr, align 8, !dbg !299
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 112), !dbg !299
  call void @nn_err_abort() #4, !dbg !299
  unreachable, !dbg !299

57:                                               ; preds = %45
  br label %58, !dbg !298

58:                                               ; preds = %57
  %59 = load ptr, ptr %5, align 8, !dbg !301
  %60 = getelementptr inbounds %struct.nn_msg, ptr %59, i32 0, i32 0, !dbg !302
  call void @nn_chunkref_term(ptr noundef %60), !dbg !303
  %61 = load ptr, ptr %5, align 8, !dbg !304
  %62 = getelementptr inbounds %struct.nn_msg, ptr %61, i32 0, i32 0, !dbg !305
  call void @nn_chunkref_init(ptr noundef %62, i64 noundef 0), !dbg !306
  store i32 0, ptr %3, align 4, !dbg !307
  br label %63, !dbg !307

63:                                               ; preds = %58, %26
  %64 = load i32, ptr %3, align 4, !dbg !308
  ret i32 %64, !dbg !308
}

declare i32 @nn_xbus_setopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) #1

declare i32 @nn_xbus_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bus_term(ptr noundef %0) #0 !dbg !309 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load ptr, ptr %2, align 8, !dbg !314
  %4 = getelementptr inbounds %struct.nn_bus, ptr %3, i32 0, i32 0, !dbg !315
  call void @nn_xbus_term(ptr noundef %4), !dbg !316
  ret void, !dbg !317
}

declare void @nn_free(ptr noundef) #1

declare void @nn_xbus_term(ptr noundef) #1

declare i64 @nn_chunkref_size(ptr noundef) #1

declare i32 @nn_xbus_send(ptr noundef, ptr noundef) #1

declare ptr @nn_err_strerror(i32 noundef) #1

declare i32 @nn_xbus_recv(ptr noundef, ptr noundef) #1

declare void @nn_chunkref_term(ptr noundef) #1

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_bus_socktype_struct", scope: !2, file: !7, line: 133, type: !131, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !127, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/protocols/bus/bus.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b7decdd14af1e61e381200acd4dd165f")
!4 = !{!5, !125, !32}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_bus", file: !7, line: 34, size: 3456, elements: !8)
!7 = !DIFile(filename: "./src/protocols/bus/bus.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b7decdd14af1e61e381200acd4dd165f")
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "xbus", scope: !6, file: !7, line: 35, baseType: !10, size: 3456)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xbus", file: !11, line: 38, size: 3456, elements: !12)
!11 = !DIFile(filename: "./src/protocols/bus/xbus.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f88088650de267aee352723b18bd57ef")
!12 = !{!13, !86, !102}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !10, file: !11, line: 39, baseType: !14, size: 128)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !15, line: 123, size: 128, elements: !16)
!15 = !DIFile(filename: "./src/protocols/bus/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!16 = !{!17, !83}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !14, file: !15, line: 124, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !15, line: 84, size: 704, elements: !21)
!21 = !{!22, !27, !28, !35, !39, !40, !41, !45, !67, !68, !77}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !20, file: !15, line: 87, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !20, file: !15, line: 90, baseType: !23, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !20, file: !15, line: 97, baseType: !29, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !26, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !15, line: 56, flags: DIFlagFwdDecl)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !20, file: !15, line: 98, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !26, !33}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !20, file: !15, line: 99, baseType: !36, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !20, file: !15, line: 100, baseType: !36, size: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !20, file: !15, line: 104, baseType: !42, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!32, !26}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !20, file: !15, line: 108, baseType: !46, size: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!32, !26, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !51, line: 30, size: 512, elements: !52)
!51 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!52 = !{!53, !66}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !50, file: !51, line: 33, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !55, line: 39, size: 256, elements: !56)
!55 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !54, file: !55, line: 40, baseType: !58, size: 256)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !60, line: 24, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !62, line: 38, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65}
!65 = !DISubrange(count: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !50, file: !51, line: 36, baseType: !54, size: 256, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !20, file: !15, line: 112, baseType: !46, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !20, file: !15, line: 115, baseType: !69, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!32, !26, !32, !32, !72, !74}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !20, file: !15, line: 119, baseType: !78, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!32, !26, !32, !32, !81, !82}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !14, file: !15, line: 125, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !15, line: 125, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "outpipes", scope: !10, file: !11, line: 40, baseType: !87, size: 192, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist", file: !88, line: 37, size: 192, elements: !89)
!88 = !DIFile(filename: "./src/protocols/bus/../utils/dist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8b675b0838905739d217dd53d5a3b3af")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !87, file: !88, line: 38, baseType: !74, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !87, file: !88, line: 39, baseType: !92, size: 128, offset: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !93, line: 31, size: 128, elements: !94)
!93 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!94 = !{!95, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !92, file: !93, line: 32, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !93, line: 26, size: 128, elements: !98)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !93, line: 27, baseType: !96, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !93, line: 28, baseType: !96, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !92, file: !93, line: 33, baseType: !96, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "inpipes", scope: !10, file: !11, line: 41, baseType: !103, size: 3136, offset: 320)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !104, line: 37, size: 3136, elements: !105)
!104 = !DIFile(filename: "./src/protocols/bus/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !103, file: !104, line: 38, baseType: !107, size: 3136)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !108, line: 45, size: 3136, elements: !109)
!108 = !DIFile(filename: "./src/protocols/bus/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!109 = !{!110, !124}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !107, file: !108, line: 46, baseType: !111, size: 3072)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 3072, elements: !122)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !108, line: 40, size: 192, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !112, file: !108, line: 41, baseType: !92, size: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !112, file: !108, line: 42, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !108, line: 34, size: 256, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !117, file: !108, line: 35, baseType: !33, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !117, file: !108, line: 36, baseType: !32, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !117, file: !108, line: 37, baseType: !97, size: 128, offset: 128)
!122 = !{!123}
!123 = !DISubrange(count: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !107, file: !108, line: 47, baseType: !32, size: 32, offset: 3072)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!127 = !{!128, !0, !146, !151, !156, !158, !163, !168}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "nn_bus_socktype", scope: !2, file: !7, line: 142, type: !130, isLocal: false, isDefinition: true)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !15, line: 160, size: 384, elements: !132)
!132 = !{!133, !134, !135, !136, !141, !145}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !131, file: !15, line: 163, baseType: !32, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !131, file: !15, line: 164, baseType: !32, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !15, line: 167, baseType: !32, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !131, file: !15, line: 173, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!32, !81, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !131, file: !15, line: 179, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!32, !32}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !131, file: !15, line: 183, baseType: !97, size: 128, offset: 256)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !7, line: 126, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 184, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 23)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !7, line: 126, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 208, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 26)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "nn_bus_sockbase_vfptr", scope: !2, file: !7, line: 47, type: !19, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !7, line: 95, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 136, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 17)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !7, line: 112, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 240, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 30)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !7, line: 112, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 400, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 50)
!173 = !{i32 7, !"Dwarf Version", i32 5}
!174 = !{i32 2, !"Debug Info Version", i32 3}
!175 = !{i32 1, !"wchar_size", i32 4}
!176 = !{i32 8, !"PIC Level", i32 2}
!177 = !{i32 7, !"PIE Level", i32 2}
!178 = !{i32 7, !"uwtable", i32 2}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 16.0.0"}
!181 = distinct !DISubprogram(name: "nn_bus_create", scope: !7, file: !7, line: 121, type: !138, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!182 = !{}
!183 = !DILocalVariable(name: "hint", arg: 1, scope: !181, file: !7, line: 121, type: !81)
!184 = !DILocation(line: 121, column: 33, scope: !181)
!185 = !DILocalVariable(name: "sockbase", arg: 2, scope: !181, file: !7, line: 121, type: !140)
!186 = !DILocation(line: 121, column: 60, scope: !181)
!187 = !DILocalVariable(name: "self", scope: !181, file: !7, line: 123, type: !5)
!188 = !DILocation(line: 123, column: 20, scope: !181)
!189 = !DILocation(line: 125, column: 12, scope: !181)
!190 = !DILocation(line: 125, column: 10, scope: !181)
!191 = !DILocation(line: 126, column: 5, scope: !181)
!192 = !DILocation(line: 126, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !7, line: 126, column: 5)
!194 = distinct !DILexicalBlock(scope: !181, file: !7, line: 126, column: 5)
!195 = !DILocation(line: 126, column: 5, scope: !194)
!196 = !DILocation(line: 126, column: 5, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !7, line: 126, column: 5)
!198 = !DILocation(line: 127, column: 18, scope: !181)
!199 = !DILocation(line: 127, column: 48, scope: !181)
!200 = !DILocation(line: 127, column: 5, scope: !181)
!201 = !DILocation(line: 128, column: 18, scope: !181)
!202 = !DILocation(line: 128, column: 24, scope: !181)
!203 = !DILocation(line: 128, column: 29, scope: !181)
!204 = !DILocation(line: 128, column: 6, scope: !181)
!205 = !DILocation(line: 128, column: 15, scope: !181)
!206 = !DILocation(line: 130, column: 5, scope: !181)
!207 = distinct !DISubprogram(name: "nn_bus_init", scope: !7, file: !7, line: 61, type: !208, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !5, !18, !81}
!210 = !DILocalVariable(name: "self", arg: 1, scope: !207, file: !7, line: 61, type: !5)
!211 = !DILocation(line: 61, column: 41, scope: !207)
!212 = !DILocalVariable(name: "vfptr", arg: 2, scope: !207, file: !7, line: 62, type: !18)
!213 = !DILocation(line: 62, column: 37, scope: !207)
!214 = !DILocalVariable(name: "hint", arg: 3, scope: !207, file: !7, line: 62, type: !81)
!215 = !DILocation(line: 62, column: 50, scope: !207)
!216 = !DILocation(line: 64, column: 20, scope: !207)
!217 = !DILocation(line: 64, column: 26, scope: !207)
!218 = !DILocation(line: 64, column: 32, scope: !207)
!219 = !DILocation(line: 64, column: 39, scope: !207)
!220 = !DILocation(line: 64, column: 5, scope: !207)
!221 = !DILocation(line: 65, column: 1, scope: !207)
!222 = distinct !DISubprogram(name: "nn_bus_destroy", scope: !7, file: !7, line: 72, type: !24, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!223 = !DILocalVariable(name: "self", arg: 1, scope: !222, file: !7, line: 72, type: !26)
!224 = !DILocation(line: 72, column: 49, scope: !222)
!225 = !DILocalVariable(name: "bus", scope: !222, file: !7, line: 74, type: !5)
!226 = !DILocation(line: 74, column: 20, scope: !222)
!227 = !DILocation(line: 76, column: 11, scope: !222)
!228 = !DILocation(line: 76, column: 9, scope: !222)
!229 = !DILocation(line: 78, column: 18, scope: !222)
!230 = !DILocation(line: 78, column: 5, scope: !222)
!231 = !DILocation(line: 79, column: 14, scope: !222)
!232 = !DILocation(line: 79, column: 5, scope: !222)
!233 = !DILocation(line: 80, column: 1, scope: !222)
!234 = distinct !DISubprogram(name: "nn_bus_send", scope: !7, file: !7, line: 82, type: !47, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!235 = !DILocalVariable(name: "self", arg: 1, scope: !234, file: !7, line: 82, type: !26)
!236 = !DILocation(line: 82, column: 45, scope: !234)
!237 = !DILocalVariable(name: "msg", arg: 2, scope: !234, file: !7, line: 82, type: !49)
!238 = !DILocation(line: 82, column: 66, scope: !234)
!239 = !DILocalVariable(name: "rc", scope: !234, file: !7, line: 84, type: !32)
!240 = !DILocation(line: 84, column: 9, scope: !234)
!241 = !DILocalVariable(name: "bus", scope: !234, file: !7, line: 85, type: !5)
!242 = !DILocation(line: 85, column: 20, scope: !234)
!243 = !DILocation(line: 87, column: 11, scope: !234)
!244 = !DILocation(line: 87, column: 9, scope: !234)
!245 = !DILocation(line: 90, column: 28, scope: !246)
!246 = distinct !DILexicalBlock(scope: !234, file: !7, line: 90, column: 9)
!247 = !DILocation(line: 90, column: 33, scope: !246)
!248 = !DILocation(line: 90, column: 9, scope: !246)
!249 = !DILocation(line: 90, column: 9, scope: !234)
!250 = !DILocation(line: 91, column: 9, scope: !246)
!251 = !DILocation(line: 94, column: 25, scope: !234)
!252 = !DILocation(line: 94, column: 30, scope: !234)
!253 = !DILocation(line: 94, column: 35, scope: !234)
!254 = !DILocation(line: 94, column: 45, scope: !234)
!255 = !DILocation(line: 94, column: 10, scope: !234)
!256 = !DILocation(line: 94, column: 8, scope: !234)
!257 = !DILocation(line: 95, column: 5, scope: !234)
!258 = !DILocation(line: 95, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !7, line: 95, column: 5)
!260 = distinct !DILexicalBlock(scope: !234, file: !7, line: 95, column: 5)
!261 = !DILocation(line: 95, column: 5, scope: !260)
!262 = !DILocation(line: 95, column: 5, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !7, line: 95, column: 5)
!264 = !DILocation(line: 97, column: 5, scope: !234)
!265 = !DILocation(line: 98, column: 1, scope: !234)
!266 = distinct !DISubprogram(name: "nn_bus_recv", scope: !7, file: !7, line: 100, type: !47, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!267 = !DILocalVariable(name: "self", arg: 1, scope: !266, file: !7, line: 100, type: !26)
!268 = !DILocation(line: 100, column: 45, scope: !266)
!269 = !DILocalVariable(name: "msg", arg: 2, scope: !266, file: !7, line: 100, type: !49)
!270 = !DILocation(line: 100, column: 66, scope: !266)
!271 = !DILocalVariable(name: "rc", scope: !266, file: !7, line: 102, type: !32)
!272 = !DILocation(line: 102, column: 9, scope: !266)
!273 = !DILocalVariable(name: "bus", scope: !266, file: !7, line: 103, type: !5)
!274 = !DILocation(line: 103, column: 20, scope: !266)
!275 = !DILocation(line: 105, column: 11, scope: !266)
!276 = !DILocation(line: 105, column: 9, scope: !266)
!277 = !DILocation(line: 108, column: 25, scope: !266)
!278 = !DILocation(line: 108, column: 30, scope: !266)
!279 = !DILocation(line: 108, column: 35, scope: !266)
!280 = !DILocation(line: 108, column: 45, scope: !266)
!281 = !DILocation(line: 108, column: 10, scope: !266)
!282 = !DILocation(line: 108, column: 8, scope: !266)
!283 = !DILocation(line: 109, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !266, file: !7, line: 109, column: 9)
!285 = !DILocation(line: 109, column: 9, scope: !266)
!286 = !DILocation(line: 110, column: 9, scope: !284)
!287 = !DILocation(line: 111, column: 5, scope: !266)
!288 = !DILocation(line: 111, column: 5, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !7, line: 111, column: 5)
!290 = distinct !DILexicalBlock(scope: !266, file: !7, line: 111, column: 5)
!291 = !DILocation(line: 111, column: 5, scope: !290)
!292 = !DILocation(line: 111, column: 5, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !7, line: 111, column: 5)
!294 = !DILocation(line: 112, column: 5, scope: !266)
!295 = !DILocation(line: 112, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !7, line: 112, column: 5)
!297 = distinct !DILexicalBlock(scope: !266, file: !7, line: 112, column: 5)
!298 = !DILocation(line: 112, column: 5, scope: !297)
!299 = !DILocation(line: 112, column: 5, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !7, line: 112, column: 5)
!301 = !DILocation(line: 115, column: 24, scope: !266)
!302 = !DILocation(line: 115, column: 29, scope: !266)
!303 = !DILocation(line: 115, column: 5, scope: !266)
!304 = !DILocation(line: 116, column: 24, scope: !266)
!305 = !DILocation(line: 116, column: 29, scope: !266)
!306 = !DILocation(line: 116, column: 5, scope: !266)
!307 = !DILocation(line: 118, column: 5, scope: !266)
!308 = !DILocation(line: 119, column: 1, scope: !266)
!309 = distinct !DISubprogram(name: "nn_bus_term", scope: !7, file: !7, line: 67, type: !310, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !5}
!312 = !DILocalVariable(name: "self", arg: 1, scope: !309, file: !7, line: 67, type: !5)
!313 = !DILocation(line: 67, column: 41, scope: !309)
!314 = !DILocation(line: 69, column: 20, scope: !309)
!315 = !DILocation(line: 69, column: 26, scope: !309)
!316 = !DILocation(line: 69, column: 5, scope: !309)
!317 = !DILocation(line: 70, column: 1, scope: !309)
