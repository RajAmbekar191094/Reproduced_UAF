; ModuleID = './src/aio/ctx.c'
source_filename = "./src/aio/ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ctx = type { %struct.nn_mutex, ptr, %struct.nn_queue, %struct.nn_queue, ptr }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.nn_queue = type { ptr, ptr }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ctx_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !179 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !184, metadata !DIExpression()), !dbg !185
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !186, metadata !DIExpression()), !dbg !187
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !188, metadata !DIExpression()), !dbg !189
  %7 = load ptr, ptr %4, align 8, !dbg !190
  %8 = getelementptr inbounds %struct.nn_ctx, ptr %7, i32 0, i32 0, !dbg !191
  call void @nn_mutex_init(ptr noundef %8), !dbg !192
  %9 = load ptr, ptr %5, align 8, !dbg !193
  %10 = load ptr, ptr %4, align 8, !dbg !194
  %11 = getelementptr inbounds %struct.nn_ctx, ptr %10, i32 0, i32 1, !dbg !195
  store ptr %9, ptr %11, align 8, !dbg !196
  %12 = load ptr, ptr %4, align 8, !dbg !197
  %13 = getelementptr inbounds %struct.nn_ctx, ptr %12, i32 0, i32 2, !dbg !198
  call void @nn_queue_init(ptr noundef %13), !dbg !199
  %14 = load ptr, ptr %4, align 8, !dbg !200
  %15 = getelementptr inbounds %struct.nn_ctx, ptr %14, i32 0, i32 3, !dbg !201
  call void @nn_queue_init(ptr noundef %15), !dbg !202
  %16 = load ptr, ptr %6, align 8, !dbg !203
  %17 = load ptr, ptr %4, align 8, !dbg !204
  %18 = getelementptr inbounds %struct.nn_ctx, ptr %17, i32 0, i32 4, !dbg !205
  store ptr %16, ptr %18, align 8, !dbg !206
  ret void, !dbg !207
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_mutex_init(ptr noundef) #2

declare void @nn_queue_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ctx_term(ptr noundef %0) #0 !dbg !208 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !209, metadata !DIExpression()), !dbg !210
  %3 = load ptr, ptr %2, align 8, !dbg !211
  %4 = getelementptr inbounds %struct.nn_ctx, ptr %3, i32 0, i32 3, !dbg !212
  call void @nn_queue_term(ptr noundef %4), !dbg !213
  %5 = load ptr, ptr %2, align 8, !dbg !214
  %6 = getelementptr inbounds %struct.nn_ctx, ptr %5, i32 0, i32 2, !dbg !215
  call void @nn_queue_term(ptr noundef %6), !dbg !216
  %7 = load ptr, ptr %2, align 8, !dbg !217
  %8 = getelementptr inbounds %struct.nn_ctx, ptr %7, i32 0, i32 0, !dbg !218
  call void @nn_mutex_term(ptr noundef %8), !dbg !219
  ret void, !dbg !220
}

declare void @nn_queue_term(ptr noundef) #2

declare void @nn_mutex_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ctx_enter(ptr noundef %0) #0 !dbg !221 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !222, metadata !DIExpression()), !dbg !223
  %3 = load ptr, ptr %2, align 8, !dbg !224
  %4 = getelementptr inbounds %struct.nn_ctx, ptr %3, i32 0, i32 0, !dbg !225
  call void @nn_mutex_lock(ptr noundef %4), !dbg !226
  ret void, !dbg !227
}

declare void @nn_mutex_lock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ctx_leave(ptr noundef %0) #0 !dbg !228 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.nn_queue, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata ptr %3, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata ptr %4, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata ptr %5, metadata !235, metadata !DIExpression()), !dbg !236
  br label %6, !dbg !237

6:                                                ; preds = %1, %21
  %7 = load ptr, ptr %2, align 8, !dbg !238
  %8 = getelementptr inbounds %struct.nn_ctx, ptr %7, i32 0, i32 2, !dbg !240
  %9 = call ptr @nn_queue_pop(ptr noundef %8), !dbg !241
  store ptr %9, ptr %3, align 8, !dbg !242
  %10 = load ptr, ptr %3, align 8, !dbg !243
  %11 = icmp ne ptr %10, null, !dbg !243
  br i1 %11, label %12, label %15, !dbg !243

12:                                               ; preds = %6
  %13 = load ptr, ptr %3, align 8, !dbg !243
  %14 = getelementptr inbounds i8, ptr %13, i64 -32, !dbg !243
  br label %16, !dbg !243

15:                                               ; preds = %6
  br label %16, !dbg !243

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !243
  store ptr %17, ptr %4, align 8, !dbg !244
  %18 = load ptr, ptr %4, align 8, !dbg !245
  %19 = icmp ne ptr %18, null, !dbg !245
  br i1 %19, label %21, label %20, !dbg !247

20:                                               ; preds = %16
  br label %23, !dbg !248

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 8, !dbg !249
  call void @nn_fsm_event_process(ptr noundef %22), !dbg !250
  br label %6, !dbg !237, !llvm.loop !251

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 8, !dbg !253
  %25 = getelementptr inbounds %struct.nn_ctx, ptr %24, i32 0, i32 4, !dbg !253
  %26 = load ptr, ptr %25, align 8, !dbg !253
  %27 = icmp ne ptr %26, null, !dbg !253
  %28 = zext i1 %27 to i32, !dbg !253
  %29 = sext i32 %28 to i64, !dbg !253
  %30 = icmp ne i64 %29, 0, !dbg !253
  br i1 %30, label %31, label %36, !dbg !255

31:                                               ; preds = %23
  %32 = load ptr, ptr %2, align 8, !dbg !256
  %33 = getelementptr inbounds %struct.nn_ctx, ptr %32, i32 0, i32 4, !dbg !257
  %34 = load ptr, ptr %33, align 8, !dbg !257
  %35 = load ptr, ptr %2, align 8, !dbg !258
  call void %34(ptr noundef %35), !dbg !256
  br label %36, !dbg !256

36:                                               ; preds = %31, %23
  %37 = load ptr, ptr %2, align 8, !dbg !259
  %38 = getelementptr inbounds %struct.nn_ctx, ptr %37, i32 0, i32 3, !dbg !261
  %39 = call i32 @nn_queue_empty(ptr noundef %38), !dbg !262
  %40 = icmp ne i32 %39, 0, !dbg !262
  br i1 %40, label %41, label %44, !dbg !263

41:                                               ; preds = %36
  %42 = load ptr, ptr %2, align 8, !dbg !264
  %43 = getelementptr inbounds %struct.nn_ctx, ptr %42, i32 0, i32 0, !dbg !266
  call void @nn_mutex_unlock(ptr noundef %43), !dbg !267
  br label %77, !dbg !268

44:                                               ; preds = %36
  %45 = load ptr, ptr %2, align 8, !dbg !269
  %46 = getelementptr inbounds %struct.nn_ctx, ptr %45, i32 0, i32 3, !dbg !270
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %46, i64 16, i1 false), !dbg !270
  %47 = load ptr, ptr %2, align 8, !dbg !271
  %48 = getelementptr inbounds %struct.nn_ctx, ptr %47, i32 0, i32 3, !dbg !272
  call void @nn_queue_init(ptr noundef %48), !dbg !273
  %49 = load ptr, ptr %2, align 8, !dbg !274
  %50 = getelementptr inbounds %struct.nn_ctx, ptr %49, i32 0, i32 0, !dbg !275
  call void @nn_mutex_unlock(ptr noundef %50), !dbg !276
  br label %51, !dbg !277

51:                                               ; preds = %44, %64
  %52 = call ptr @nn_queue_pop(ptr noundef %5), !dbg !278
  store ptr %52, ptr %3, align 8, !dbg !280
  %53 = load ptr, ptr %3, align 8, !dbg !281
  %54 = icmp ne ptr %53, null, !dbg !281
  br i1 %54, label %55, label %58, !dbg !281

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 8, !dbg !281
  %57 = getelementptr inbounds i8, ptr %56, i64 -32, !dbg !281
  br label %59, !dbg !281

58:                                               ; preds = %51
  br label %59, !dbg !281

59:                                               ; preds = %58, %55
  %60 = phi ptr [ %57, %55 ], [ null, %58 ], !dbg !281
  store ptr %60, ptr %4, align 8, !dbg !282
  %61 = load ptr, ptr %4, align 8, !dbg !283
  %62 = icmp ne ptr %61, null, !dbg !283
  br i1 %62, label %64, label %63, !dbg !285

63:                                               ; preds = %59
  br label %76, !dbg !286

64:                                               ; preds = %59
  %65 = load ptr, ptr %4, align 8, !dbg !287
  %66 = getelementptr inbounds %struct.nn_fsm_event, ptr %65, i32 0, i32 0, !dbg !288
  %67 = load ptr, ptr %66, align 8, !dbg !288
  %68 = getelementptr inbounds %struct.nn_fsm, ptr %67, i32 0, i32 5, !dbg !289
  %69 = load ptr, ptr %68, align 8, !dbg !289
  call void @nn_ctx_enter(ptr noundef %69), !dbg !290
  %70 = load ptr, ptr %4, align 8, !dbg !291
  call void @nn_fsm_event_process(ptr noundef %70), !dbg !292
  %71 = load ptr, ptr %4, align 8, !dbg !293
  %72 = getelementptr inbounds %struct.nn_fsm_event, ptr %71, i32 0, i32 0, !dbg !294
  %73 = load ptr, ptr %72, align 8, !dbg !294
  %74 = getelementptr inbounds %struct.nn_fsm, ptr %73, i32 0, i32 5, !dbg !295
  %75 = load ptr, ptr %74, align 8, !dbg !295
  call void @nn_ctx_leave(ptr noundef %75), !dbg !296
  br label %51, !dbg !277, !llvm.loop !297

76:                                               ; preds = %63
  call void @nn_queue_term(ptr noundef %5), !dbg !299
  br label %77, !dbg !300

77:                                               ; preds = %76, %41
  ret void, !dbg !300
}

declare ptr @nn_queue_pop(ptr noundef) #2

declare void @nn_fsm_event_process(ptr noundef) #2

declare i32 @nn_queue_empty(ptr noundef) #2

declare void @nn_mutex_unlock(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_ctx_choose_worker(ptr noundef %0) #0 !dbg !301 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !305, metadata !DIExpression()), !dbg !306
  %3 = load ptr, ptr %2, align 8, !dbg !307
  %4 = getelementptr inbounds %struct.nn_ctx, ptr %3, i32 0, i32 1, !dbg !308
  %5 = load ptr, ptr %4, align 8, !dbg !308
  %6 = call ptr @nn_pool_choose_worker(ptr noundef %5), !dbg !309
  ret ptr %6, !dbg !310
}

declare ptr @nn_pool_choose_worker(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ctx_raise(ptr noundef %0, ptr noundef %1) #0 !dbg !311 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !314, metadata !DIExpression()), !dbg !315
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !316, metadata !DIExpression()), !dbg !317
  %5 = load ptr, ptr %3, align 8, !dbg !318
  %6 = getelementptr inbounds %struct.nn_ctx, ptr %5, i32 0, i32 2, !dbg !319
  %7 = load ptr, ptr %4, align 8, !dbg !320
  %8 = getelementptr inbounds %struct.nn_fsm_event, ptr %7, i32 0, i32 4, !dbg !321
  call void @nn_queue_push(ptr noundef %6, ptr noundef %8), !dbg !322
  ret void, !dbg !323
}

declare void @nn_queue_push(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ctx_raiseto(ptr noundef %0, ptr noundef %1) #0 !dbg !324 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !325, metadata !DIExpression()), !dbg !326
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !328
  %5 = load ptr, ptr %3, align 8, !dbg !329
  %6 = getelementptr inbounds %struct.nn_ctx, ptr %5, i32 0, i32 3, !dbg !330
  %7 = load ptr, ptr %4, align 8, !dbg !331
  %8 = getelementptr inbounds %struct.nn_fsm_event, ptr %7, i32 0, i32 4, !dbg !332
  call void @nn_queue_push(ptr noundef %6, ptr noundef %8), !dbg !333
  ret void, !dbg !334
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/aio/ctx.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "683642e00595437a6cd89d052a2a268f")
!2 = !{!3, !170, !17}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !5, line: 34, size: 320, elements: !6)
!5 = !DIFile(filename: "./src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!6 = !{!7, !166, !167, !168, !169}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !4, file: !5, line: 35, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !5, line: 66, size: 640, elements: !10)
!10 = !{!11, !18, !19, !20, !21, !22, !165}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !9, file: !5, line: 67, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !5, line: 58, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !8, !16, !16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !9, file: !5, line: 68, baseType: !16, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !9, file: !5, line: 69, baseType: !16, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !9, file: !5, line: 70, baseType: !17, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !9, file: !5, line: 71, baseType: !8, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !9, file: !5, line: 72, baseType: !23, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !25, line: 37, size: 704, elements: !26)
!25 = !DIFile(filename: "./src/aio/ctx.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "02553d3500c8d7bb20cd89fa252fe2c2")
!26 = !{!27, !64, !158, !159, !160}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !24, file: !25, line: 38, baseType: !28, size: 320)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !29, line: 32, size: 320, elements: !30)
!29 = !DIFile(filename: "./src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !28, file: !29, line: 36, baseType: !32, size: 320)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !33, line: 72, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 67, size: 320, elements: !35)
!35 = !{!36, !57, !62}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !34, file: !33, line: 69, baseType: !37, size: 320)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !38, line: 22, size: 320, elements: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!39 = !{!40, !41, !43, !44, !45, !46, !48, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !37, file: !38, line: 24, baseType: !16, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !37, file: !38, line: 25, baseType: !42, size: 32, offset: 32)
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !37, file: !38, line: 26, baseType: !16, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !37, file: !38, line: 28, baseType: !42, size: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !37, file: !38, line: 32, baseType: !16, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !37, file: !38, line: 34, baseType: !47, size: 16, offset: 160)
!47 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !37, file: !38, line: 35, baseType: !47, size: 16, offset: 176)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !37, file: !38, line: 36, baseType: !50, size: 128, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !51, line: 55, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !51, line: 51, size: 128, elements: !53)
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !52, file: !51, line: 53, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !52, file: !51, line: 54, baseType: !55, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !34, file: !33, line: 70, baseType: !58, size: 320)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 320, elements: !60)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !{!61}
!61 = !DISubrange(count: 40)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !34, file: !33, line: 71, baseType: !63, size: 64)
!63 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !24, file: !25, line: 39, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !67, line: 30, size: 1408, elements: !68)
!67 = !DIFile(filename: "./src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !66, file: !67, line: 31, baseType: !70, size: 1408)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !71, line: 53, size: 1408, elements: !72)
!71 = !DIFile(filename: "./src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!72 = !{!73, !74, !84, !85, !91, !118, !119, !145}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !70, file: !71, line: 54, baseType: !28, size: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !70, file: !71, line: 55, baseType: !75, size: 128, offset: 320)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !76, line: 37, size: 128, elements: !77)
!76 = !DIFile(filename: "./src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!77 = !{!78, !83}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !75, file: !76, line: 38, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !76, line: 33, size: 64, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !76, line: 34, baseType: !79, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !75, file: !76, line: 39, baseType: !79, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !70, file: !71, line: 56, baseType: !80, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !70, file: !71, line: 57, baseType: !86, size: 64, offset: 512)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !87, line: 25, size: 64, elements: !88)
!87 = !DIFile(filename: "./src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !86, file: !87, line: 26, baseType: !16, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !86, file: !87, line: 27, baseType: !16, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !70, file: !71, line: 58, baseType: !92, size: 320, offset: 576)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !93, line: 31, size: 320, elements: !94)
!93 = !DIFile(filename: "./src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!94 = !{!95, !96, !97, !98, !106, !117}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !92, file: !93, line: 34, baseType: !16, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !92, file: !93, line: 37, baseType: !16, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !92, file: !93, line: 40, baseType: !16, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !92, file: !93, line: 43, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !101, line: 36, size: 64, elements: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!102 = !{!103, !104, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !100, file: !101, line: 38, baseType: !16, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !100, file: !101, line: 39, baseType: !47, size: 16, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !100, file: !101, line: 40, baseType: !47, size: 16, offset: 48)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !92, file: !93, line: 52, baseType: !107, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !93, line: 48, size: 128, elements: !109)
!109 = !{!110, !115, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !108, file: !93, line: 49, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !93, line: 27, size: 32, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !112, file: !93, line: 28, baseType: !16, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !108, file: !93, line: 50, baseType: !16, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !93, line: 51, baseType: !16, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !92, file: !93, line: 55, baseType: !16, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !70, file: !71, line: 59, baseType: !112, size: 32, offset: 896)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !70, file: !71, line: 60, baseType: !120, size: 256, offset: 960)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !121, line: 37, size: 256, elements: !122)
!121 = !DIFile(filename: "./src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!122 = !{!123, !134}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !120, file: !121, line: 38, baseType: !124, size: 128)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !125, line: 31, size: 128, elements: !126)
!125 = !DIFile(filename: "./src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!126 = !{!127, !133}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !124, file: !125, line: 33, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !129, line: 27, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !131, line: 45, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !124, file: !125, line: 34, baseType: !128, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !120, file: !121, line: 39, baseType: !135, size: 128, offset: 128)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !136, line: 31, size: 128, elements: !137)
!136 = !DIFile(filename: "./src/aio/../utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!137 = !{!138, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !135, file: !136, line: 32, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !136, line: 26, size: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !136, line: 27, baseType: !139, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !136, line: 28, baseType: !139, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !135, file: !136, line: 33, baseType: !139, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !70, file: !71, line: 61, baseType: !146, size: 192, offset: 1216)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !147, line: 25, size: 192, elements: !148)
!147 = !DIFile(filename: "./src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!148 = !{!149, !155, !156}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !146, file: !147, line: 27, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !152, line: 28, baseType: !153)
!152 = !DIFile(filename: "./src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!153 = !DISubroutineType(types: !154)
!154 = !{null, !17}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !146, file: !147, line: 28, baseType: !17, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !146, file: !147, line: 29, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !33, line: 27, baseType: !132)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !24, file: !25, line: 40, baseType: !75, size: 128, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "eventsto", scope: !24, file: !25, line: 41, baseType: !75, size: 128, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "onleave", scope: !24, file: !25, line: 42, baseType: !161, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ctx_onleave", file: !25, line: 35, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !23}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !9, file: !5, line: 73, baseType: !4, size: 320, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4, file: !5, line: 36, baseType: !16, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !4, file: !5, line: 37, baseType: !17, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4, file: !5, line: 38, baseType: !16, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !4, file: !5, line: 39, baseType: !80, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!171 = !{i32 7, !"Dwarf Version", i32 5}
!172 = !{i32 2, !"Debug Info Version", i32 3}
!173 = !{i32 1, !"wchar_size", i32 4}
!174 = !{i32 8, !"PIC Level", i32 2}
!175 = !{i32 7, !"PIE Level", i32 2}
!176 = !{i32 7, !"uwtable", i32 2}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 16.0.0"}
!179 = distinct !DISubprogram(name: "nn_ctx_init", scope: !180, file: !180, line: 29, type: !181, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !183)
!180 = !DIFile(filename: "./src/aio/ctx.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "683642e00595437a6cd89d052a2a268f")
!181 = !DISubroutineType(types: !182)
!182 = !{null, !23, !65, !161}
!183 = !{}
!184 = !DILocalVariable(name: "self", arg: 1, scope: !179, file: !180, line: 29, type: !23)
!185 = !DILocation(line: 29, column: 34, scope: !179)
!186 = !DILocalVariable(name: "pool", arg: 2, scope: !179, file: !180, line: 29, type: !65)
!187 = !DILocation(line: 29, column: 56, scope: !179)
!188 = !DILocalVariable(name: "onleave", arg: 3, scope: !179, file: !180, line: 30, type: !161)
!189 = !DILocation(line: 30, column: 20, scope: !179)
!190 = !DILocation(line: 32, column: 21, scope: !179)
!191 = !DILocation(line: 32, column: 27, scope: !179)
!192 = !DILocation(line: 32, column: 5, scope: !179)
!193 = !DILocation(line: 33, column: 18, scope: !179)
!194 = !DILocation(line: 33, column: 5, scope: !179)
!195 = !DILocation(line: 33, column: 11, scope: !179)
!196 = !DILocation(line: 33, column: 16, scope: !179)
!197 = !DILocation(line: 34, column: 21, scope: !179)
!198 = !DILocation(line: 34, column: 27, scope: !179)
!199 = !DILocation(line: 34, column: 5, scope: !179)
!200 = !DILocation(line: 35, column: 21, scope: !179)
!201 = !DILocation(line: 35, column: 27, scope: !179)
!202 = !DILocation(line: 35, column: 5, scope: !179)
!203 = !DILocation(line: 36, column: 21, scope: !179)
!204 = !DILocation(line: 36, column: 5, scope: !179)
!205 = !DILocation(line: 36, column: 11, scope: !179)
!206 = !DILocation(line: 36, column: 19, scope: !179)
!207 = !DILocation(line: 37, column: 1, scope: !179)
!208 = distinct !DISubprogram(name: "nn_ctx_term", scope: !180, file: !180, line: 39, type: !163, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !183)
!209 = !DILocalVariable(name: "self", arg: 1, scope: !208, file: !180, line: 39, type: !23)
!210 = !DILocation(line: 39, column: 34, scope: !208)
!211 = !DILocation(line: 41, column: 21, scope: !208)
!212 = !DILocation(line: 41, column: 27, scope: !208)
!213 = !DILocation(line: 41, column: 5, scope: !208)
!214 = !DILocation(line: 42, column: 21, scope: !208)
!215 = !DILocation(line: 42, column: 27, scope: !208)
!216 = !DILocation(line: 42, column: 5, scope: !208)
!217 = !DILocation(line: 43, column: 21, scope: !208)
!218 = !DILocation(line: 43, column: 27, scope: !208)
!219 = !DILocation(line: 43, column: 5, scope: !208)
!220 = !DILocation(line: 44, column: 1, scope: !208)
!221 = distinct !DISubprogram(name: "nn_ctx_enter", scope: !180, file: !180, line: 46, type: !163, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !183)
!222 = !DILocalVariable(name: "self", arg: 1, scope: !221, file: !180, line: 46, type: !23)
!223 = !DILocation(line: 46, column: 35, scope: !221)
!224 = !DILocation(line: 48, column: 21, scope: !221)
!225 = !DILocation(line: 48, column: 27, scope: !221)
!226 = !DILocation(line: 48, column: 5, scope: !221)
!227 = !DILocation(line: 49, column: 1, scope: !221)
!228 = distinct !DISubprogram(name: "nn_ctx_leave", scope: !180, file: !180, line: 51, type: !163, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !183)
!229 = !DILocalVariable(name: "self", arg: 1, scope: !228, file: !180, line: 51, type: !23)
!230 = !DILocation(line: 51, column: 35, scope: !228)
!231 = !DILocalVariable(name: "item", scope: !228, file: !180, line: 53, type: !79)
!232 = !DILocation(line: 53, column: 27, scope: !228)
!233 = !DILocalVariable(name: "event", scope: !228, file: !180, line: 54, type: !3)
!234 = !DILocation(line: 54, column: 26, scope: !228)
!235 = !DILocalVariable(name: "eventsto", scope: !228, file: !180, line: 55, type: !75)
!236 = !DILocation(line: 55, column: 21, scope: !228)
!237 = !DILocation(line: 58, column: 5, scope: !228)
!238 = !DILocation(line: 59, column: 31, scope: !239)
!239 = distinct !DILexicalBlock(scope: !228, file: !180, line: 58, column: 15)
!240 = !DILocation(line: 59, column: 37, scope: !239)
!241 = !DILocation(line: 59, column: 16, scope: !239)
!242 = !DILocation(line: 59, column: 14, scope: !239)
!243 = !DILocation(line: 60, column: 17, scope: !239)
!244 = !DILocation(line: 60, column: 15, scope: !239)
!245 = !DILocation(line: 61, column: 14, scope: !246)
!246 = distinct !DILexicalBlock(scope: !239, file: !180, line: 61, column: 13)
!247 = !DILocation(line: 61, column: 13, scope: !239)
!248 = !DILocation(line: 62, column: 13, scope: !246)
!249 = !DILocation(line: 63, column: 31, scope: !239)
!250 = !DILocation(line: 63, column: 9, scope: !239)
!251 = distinct !{!251, !237, !252}
!252 = !DILocation(line: 64, column: 5, scope: !228)
!253 = !DILocation(line: 67, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !228, file: !180, line: 67, column: 9)
!255 = !DILocation(line: 67, column: 9, scope: !228)
!256 = !DILocation(line: 68, column: 9, scope: !254)
!257 = !DILocation(line: 68, column: 15, scope: !254)
!258 = !DILocation(line: 68, column: 24, scope: !254)
!259 = !DILocation(line: 71, column: 26, scope: !260)
!260 = distinct !DILexicalBlock(scope: !228, file: !180, line: 71, column: 9)
!261 = !DILocation(line: 71, column: 32, scope: !260)
!262 = !DILocation(line: 71, column: 9, scope: !260)
!263 = !DILocation(line: 71, column: 9, scope: !228)
!264 = !DILocation(line: 72, column: 27, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !180, line: 71, column: 43)
!266 = !DILocation(line: 72, column: 33, scope: !265)
!267 = !DILocation(line: 72, column: 9, scope: !265)
!268 = !DILocation(line: 73, column: 9, scope: !265)
!269 = !DILocation(line: 78, column: 16, scope: !228)
!270 = !DILocation(line: 78, column: 22, scope: !228)
!271 = !DILocation(line: 79, column: 21, scope: !228)
!272 = !DILocation(line: 79, column: 27, scope: !228)
!273 = !DILocation(line: 79, column: 5, scope: !228)
!274 = !DILocation(line: 81, column: 23, scope: !228)
!275 = !DILocation(line: 81, column: 29, scope: !228)
!276 = !DILocation(line: 81, column: 5, scope: !228)
!277 = !DILocation(line: 85, column: 5, scope: !228)
!278 = !DILocation(line: 86, column: 16, scope: !279)
!279 = distinct !DILexicalBlock(scope: !228, file: !180, line: 85, column: 15)
!280 = !DILocation(line: 86, column: 14, scope: !279)
!281 = !DILocation(line: 87, column: 17, scope: !279)
!282 = !DILocation(line: 87, column: 15, scope: !279)
!283 = !DILocation(line: 88, column: 14, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !180, line: 88, column: 13)
!285 = !DILocation(line: 88, column: 13, scope: !279)
!286 = !DILocation(line: 89, column: 13, scope: !284)
!287 = !DILocation(line: 90, column: 23, scope: !279)
!288 = !DILocation(line: 90, column: 30, scope: !279)
!289 = !DILocation(line: 90, column: 35, scope: !279)
!290 = !DILocation(line: 90, column: 9, scope: !279)
!291 = !DILocation(line: 91, column: 31, scope: !279)
!292 = !DILocation(line: 91, column: 9, scope: !279)
!293 = !DILocation(line: 92, column: 23, scope: !279)
!294 = !DILocation(line: 92, column: 30, scope: !279)
!295 = !DILocation(line: 92, column: 35, scope: !279)
!296 = !DILocation(line: 92, column: 9, scope: !279)
!297 = distinct !{!297, !277, !298}
!298 = !DILocation(line: 93, column: 5, scope: !228)
!299 = !DILocation(line: 95, column: 5, scope: !228)
!300 = !DILocation(line: 96, column: 1, scope: !228)
!301 = distinct !DISubprogram(name: "nn_ctx_choose_worker", scope: !180, file: !180, line: 98, type: !302, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !183)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !23}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!305 = !DILocalVariable(name: "self", arg: 1, scope: !301, file: !180, line: 98, type: !23)
!306 = !DILocation(line: 98, column: 56, scope: !301)
!307 = !DILocation(line: 100, column: 35, scope: !301)
!308 = !DILocation(line: 100, column: 41, scope: !301)
!309 = !DILocation(line: 100, column: 12, scope: !301)
!310 = !DILocation(line: 100, column: 5, scope: !301)
!311 = distinct !DISubprogram(name: "nn_ctx_raise", scope: !180, file: !180, line: 103, type: !312, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !183)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !23, !3}
!314 = !DILocalVariable(name: "self", arg: 1, scope: !311, file: !180, line: 103, type: !23)
!315 = !DILocation(line: 103, column: 35, scope: !311)
!316 = !DILocalVariable(name: "event", arg: 2, scope: !311, file: !180, line: 103, type: !3)
!317 = !DILocation(line: 103, column: 62, scope: !311)
!318 = !DILocation(line: 105, column: 21, scope: !311)
!319 = !DILocation(line: 105, column: 27, scope: !311)
!320 = !DILocation(line: 105, column: 36, scope: !311)
!321 = !DILocation(line: 105, column: 43, scope: !311)
!322 = !DILocation(line: 105, column: 5, scope: !311)
!323 = !DILocation(line: 106, column: 1, scope: !311)
!324 = distinct !DISubprogram(name: "nn_ctx_raiseto", scope: !180, file: !180, line: 108, type: !312, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !183)
!325 = !DILocalVariable(name: "self", arg: 1, scope: !324, file: !180, line: 108, type: !23)
!326 = !DILocation(line: 108, column: 37, scope: !324)
!327 = !DILocalVariable(name: "event", arg: 2, scope: !324, file: !180, line: 108, type: !3)
!328 = !DILocation(line: 108, column: 64, scope: !324)
!329 = !DILocation(line: 110, column: 21, scope: !324)
!330 = !DILocation(line: 110, column: 27, scope: !324)
!331 = !DILocation(line: 110, column: 38, scope: !324)
!332 = !DILocation(line: 110, column: 45, scope: !324)
!333 = !DILocation(line: 110, column: 5, scope: !324)
!334 = !DILocation(line: 111, column: 1, scope: !324)
