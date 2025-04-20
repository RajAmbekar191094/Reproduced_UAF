; ModuleID = './src/transports/utils/backoff.c'
source_filename = "./src/transports/utils/backoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_backoff = type { %struct.nn_timer, i32, i32, i32 }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_backoff_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !10 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !200, metadata !DIExpression()), !dbg !201
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !202, metadata !DIExpression()), !dbg !203
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !204, metadata !DIExpression()), !dbg !205
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !206, metadata !DIExpression()), !dbg !207
  %11 = load ptr, ptr %6, align 8, !dbg !208
  %12 = getelementptr inbounds %struct.nn_backoff, ptr %11, i32 0, i32 0, !dbg !209
  %13 = load i32, ptr %7, align 4, !dbg !210
  %14 = load ptr, ptr %10, align 8, !dbg !211
  call void @nn_timer_init(ptr noundef %12, i32 noundef %13, ptr noundef %14), !dbg !212
  %15 = load i32, ptr %8, align 4, !dbg !213
  %16 = load ptr, ptr %6, align 8, !dbg !214
  %17 = getelementptr inbounds %struct.nn_backoff, ptr %16, i32 0, i32 1, !dbg !215
  store i32 %15, ptr %17, align 8, !dbg !216
  %18 = load i32, ptr %9, align 4, !dbg !217
  %19 = load ptr, ptr %6, align 8, !dbg !218
  %20 = getelementptr inbounds %struct.nn_backoff, ptr %19, i32 0, i32 2, !dbg !219
  store i32 %18, ptr %20, align 4, !dbg !220
  %21 = load ptr, ptr %6, align 8, !dbg !221
  %22 = getelementptr inbounds %struct.nn_backoff, ptr %21, i32 0, i32 3, !dbg !222
  store i32 1, ptr %22, align 8, !dbg !223
  ret void, !dbg !224
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_timer_init(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_backoff_term(ptr noundef %0) #0 !dbg !225 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !228, metadata !DIExpression()), !dbg !229
  %3 = load ptr, ptr %2, align 8, !dbg !230
  %4 = getelementptr inbounds %struct.nn_backoff, ptr %3, i32 0, i32 0, !dbg !231
  call void @nn_timer_term(ptr noundef %4), !dbg !232
  ret void, !dbg !233
}

declare void @nn_timer_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_backoff_isidle(ptr noundef %0) #0 !dbg !234 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !237, metadata !DIExpression()), !dbg !238
  %3 = load ptr, ptr %2, align 8, !dbg !239
  %4 = getelementptr inbounds %struct.nn_backoff, ptr %3, i32 0, i32 0, !dbg !240
  %5 = call i32 @nn_timer_isidle(ptr noundef %4), !dbg !241
  ret i32 %5, !dbg !242
}

declare i32 @nn_timer_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_backoff_start(ptr noundef %0) #0 !dbg !243 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !247
  %4 = load ptr, ptr %2, align 8, !dbg !248
  %5 = getelementptr inbounds %struct.nn_backoff, ptr %4, i32 0, i32 3, !dbg !249
  %6 = load i32, ptr %5, align 8, !dbg !249
  %7 = sub nsw i32 %6, 1, !dbg !250
  %8 = load ptr, ptr %2, align 8, !dbg !251
  %9 = getelementptr inbounds %struct.nn_backoff, ptr %8, i32 0, i32 1, !dbg !252
  %10 = load i32, ptr %9, align 8, !dbg !252
  %11 = mul nsw i32 %7, %10, !dbg !253
  store i32 %11, ptr %3, align 4, !dbg !254
  %12 = load i32, ptr %3, align 4, !dbg !255
  %13 = load ptr, ptr %2, align 8, !dbg !257
  %14 = getelementptr inbounds %struct.nn_backoff, ptr %13, i32 0, i32 2, !dbg !258
  %15 = load i32, ptr %14, align 4, !dbg !258
  %16 = icmp sgt i32 %12, %15, !dbg !259
  br i1 %16, label %17, label %21, !dbg !260

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 8, !dbg !261
  %19 = getelementptr inbounds %struct.nn_backoff, ptr %18, i32 0, i32 2, !dbg !262
  %20 = load i32, ptr %19, align 4, !dbg !262
  store i32 %20, ptr %3, align 4, !dbg !263
  br label %26, !dbg !264

21:                                               ; preds = %1
  %22 = load ptr, ptr %2, align 8, !dbg !265
  %23 = getelementptr inbounds %struct.nn_backoff, ptr %22, i32 0, i32 3, !dbg !266
  %24 = load i32, ptr %23, align 8, !dbg !267
  %25 = mul nsw i32 %24, 2, !dbg !267
  store i32 %25, ptr %23, align 8, !dbg !267
  br label %26

26:                                               ; preds = %21, %17
  %27 = load ptr, ptr %2, align 8, !dbg !268
  %28 = getelementptr inbounds %struct.nn_backoff, ptr %27, i32 0, i32 0, !dbg !269
  %29 = load i32, ptr %3, align 4, !dbg !270
  call void @nn_timer_start(ptr noundef %28, i32 noundef %29), !dbg !271
  ret void, !dbg !272
}

declare void @nn_timer_start(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_backoff_stop(ptr noundef %0) #0 !dbg !273 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !274, metadata !DIExpression()), !dbg !275
  %3 = load ptr, ptr %2, align 8, !dbg !276
  %4 = getelementptr inbounds %struct.nn_backoff, ptr %3, i32 0, i32 0, !dbg !277
  call void @nn_timer_stop(ptr noundef %4), !dbg !278
  ret void, !dbg !279
}

declare void @nn_timer_stop(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_backoff_reset(ptr noundef %0) #0 !dbg !280 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !281, metadata !DIExpression()), !dbg !282
  %3 = load ptr, ptr %2, align 8, !dbg !283
  %4 = getelementptr inbounds %struct.nn_backoff, ptr %3, i32 0, i32 3, !dbg !284
  store i32 1, ptr %4, align 8, !dbg !285
  ret void, !dbg !286
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/transports/utils/backoff.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7e6cd54e6fbcaa39198344c05663488a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.0"}
!10 = distinct !DISubprogram(name: "nn_backoff_init", scope: !11, file: !11, line: 25, type: !12, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !197)
!11 = !DIFile(filename: "./src/transports/utils/backoff.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7e6cd54e6fbcaa39198344c05663488a")
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !32, !32, !32, !31}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_backoff", file: !16, line: 34, size: 1792, elements: !17)
!16 = !DIFile(filename: "./src/transports/utils/backoff.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ce08b6a806388576feacec378191aabb")
!17 = !{!18, !194, !195, !196}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !15, file: !16, line: 35, baseType: !19, size: 1664)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !20, line: 32, size: 1664, elements: !21)
!20 = !DIFile(filename: "./src/transports/utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!21 = !{!22, !54, !55, !61, !62, !84, !85, !193}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !19, file: !20, line: 33, baseType: !23, size: 640)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !24, line: 66, size: 640, elements: !25)
!24 = !DIFile(filename: "./src/transports/utils/../../aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!25 = !{!26, !34, !35, !36, !37, !38, !41}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !23, file: !24, line: 67, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !24, line: 58, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !32, !32, !33}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !23, file: !24, line: 68, baseType: !32, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !23, file: !24, line: 69, baseType: !32, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !23, file: !24, line: 70, baseType: !33, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !23, file: !24, line: 71, baseType: !31, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !23, file: !24, line: 72, baseType: !39, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !24, line: 30, flags: DIFlagFwdDecl)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !23, file: !24, line: 73, baseType: !42, size: 320, offset: 320)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !24, line: 34, size: 320, elements: !43)
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !42, file: !24, line: 35, baseType: !31, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !42, file: !24, line: 36, baseType: !32, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !42, file: !24, line: 37, baseType: !33, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !24, line: 38, baseType: !32, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !42, file: !24, line: 39, baseType: !49, size: 64, offset: 256)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !50, line: 33, size: 64, elements: !51)
!50 = !DIFile(filename: "./src/transports/utils/../../aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !50, line: 34, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !19, file: !20, line: 34, baseType: !32, size: 32, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !19, file: !20, line: 35, baseType: !56, size: 128, offset: 704)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !57, line: 48, size: 128, elements: !58)
!57 = !DIFile(filename: "./src/transports/utils/../../aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !56, file: !57, line: 49, baseType: !31, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !56, file: !57, line: 50, baseType: !49, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !19, file: !20, line: 36, baseType: !56, size: 128, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !19, file: !20, line: 37, baseType: !63, size: 256, offset: 960)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !64, line: 37, size: 256, elements: !65)
!64 = !DIFile(filename: "./src/transports/utils/../../aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !63, file: !64, line: 38, baseType: !31, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !63, file: !64, line: 39, baseType: !68, size: 192, offset: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !69, line: 32, size: 192, elements: !70)
!69 = !DIFile(filename: "./src/transports/utils/../../aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!70 = !{!71, !78}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !68, file: !69, line: 33, baseType: !72, size: 128)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !73, line: 26, size: 128, elements: !74)
!73 = !DIFile(filename: "./src/transports/utils/../../aio/../utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!74 = !{!75, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !73, line: 27, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !72, file: !73, line: 28, baseType: !76, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !68, file: !69, line: 34, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !80, line: 27, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !82, line: 45, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!83 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !19, file: !20, line: 38, baseType: !42, size: 320, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !19, file: !20, line: 39, baseType: !86, size: 64, offset: 1536)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !57, line: 53, size: 1408, elements: !88)
!88 = !{!89, !126, !131, !132, !138, !165, !166, !180}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !87, file: !57, line: 54, baseType: !90, size: 320)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !91, line: 32, size: 320, elements: !92)
!91 = !DIFile(filename: "./src/transports/utils/../../aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !90, file: !91, line: 36, baseType: !94, size: 320)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !95, line: 72, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !95, line: 67, size: 320, elements: !97)
!97 = !{!98, !119, !124}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !96, file: !95, line: 69, baseType: !99, size: 320)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !100, line: 22, size: 320, elements: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!101 = !{!102, !103, !105, !106, !107, !108, !110, !111}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !99, file: !100, line: 24, baseType: !32, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !99, file: !100, line: 25, baseType: !104, size: 32, offset: 32)
!104 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !99, file: !100, line: 26, baseType: !32, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !99, file: !100, line: 28, baseType: !104, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !99, file: !100, line: 32, baseType: !32, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !99, file: !100, line: 34, baseType: !109, size: 16, offset: 160)
!109 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !99, file: !100, line: 35, baseType: !109, size: 16, offset: 176)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !99, file: !100, line: 36, baseType: !112, size: 128, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !113, line: 55, baseType: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !113, line: 51, size: 128, elements: !115)
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !114, file: !113, line: 53, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !114, file: !113, line: 54, baseType: !117, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !96, file: !95, line: 70, baseType: !120, size: 320)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 320, elements: !122)
!121 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!122 = !{!123}
!123 = !DISubrange(count: 40)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !96, file: !95, line: 71, baseType: !125, size: 64)
!125 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !87, file: !57, line: 55, baseType: !127, size: 128, offset: 320)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !50, line: 37, size: 128, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !127, file: !50, line: 38, baseType: !53, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !127, file: !50, line: 39, baseType: !53, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !87, file: !57, line: 56, baseType: !49, size: 64, offset: 448)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !87, file: !57, line: 57, baseType: !133, size: 64, offset: 512)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !134, line: 25, size: 64, elements: !135)
!134 = !DIFile(filename: "./src/transports/utils/../../aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !133, file: !134, line: 26, baseType: !32, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !133, file: !134, line: 27, baseType: !32, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !87, file: !57, line: 58, baseType: !139, size: 320, offset: 576)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !140, line: 31, size: 320, elements: !141)
!140 = !DIFile(filename: "./src/transports/utils/../../aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!141 = !{!142, !143, !144, !145, !153, !164}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !139, file: !140, line: 34, baseType: !32, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !139, file: !140, line: 37, baseType: !32, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !139, file: !140, line: 40, baseType: !32, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !139, file: !140, line: 43, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !148, line: 36, size: 64, elements: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!149 = !{!150, !151, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !147, file: !148, line: 38, baseType: !32, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !147, file: !148, line: 39, baseType: !109, size: 16, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !147, file: !148, line: 40, baseType: !109, size: 16, offset: 48)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !139, file: !140, line: 52, baseType: !154, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !140, line: 48, size: 128, elements: !156)
!156 = !{!157, !162, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !155, file: !140, line: 49, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !140, line: 27, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !159, file: !140, line: 28, baseType: !32, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !140, line: 50, baseType: !32, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !140, line: 51, baseType: !32, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !139, file: !140, line: 55, baseType: !32, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !87, file: !57, line: 59, baseType: !159, size: 32, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !87, file: !57, line: 60, baseType: !167, size: 256, offset: 960)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !69, line: 37, size: 256, elements: !168)
!168 = !{!169, !175}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !167, file: !69, line: 38, baseType: !170, size: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !171, line: 31, size: 128, elements: !172)
!171 = !DIFile(filename: "./src/transports/utils/../../aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !170, file: !171, line: 33, baseType: !79, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !170, file: !171, line: 34, baseType: !79, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !167, file: !69, line: 39, baseType: !176, size: 128, offset: 128)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !73, line: 31, size: 128, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !176, file: !73, line: 32, baseType: !76, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !176, file: !73, line: 33, baseType: !76, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !87, file: !57, line: 61, baseType: !181, size: 192, offset: 1216)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !182, line: 25, size: 192, elements: !183)
!182 = !DIFile(filename: "./src/transports/utils/../../aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!183 = !{!184, !190, !191}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !181, file: !182, line: 27, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !187, line: 28, baseType: !188)
!187 = !DIFile(filename: "./src/transports/utils/../../aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!188 = !DISubroutineType(types: !189)
!189 = !{null, !33}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !181, file: !182, line: 28, baseType: !33, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !181, file: !182, line: 29, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !95, line: 27, baseType: !83)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !19, file: !20, line: 40, baseType: !32, size: 32, offset: 1600)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "minivl", scope: !15, file: !16, line: 36, baseType: !32, size: 32, offset: 1664)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "maxivl", scope: !15, file: !16, line: 37, baseType: !32, size: 32, offset: 1696)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !15, file: !16, line: 38, baseType: !32, size: 32, offset: 1728)
!197 = !{}
!198 = !DILocalVariable(name: "self", arg: 1, scope: !10, file: !11, line: 25, type: !14)
!199 = !DILocation(line: 25, column: 42, scope: !10)
!200 = !DILocalVariable(name: "src", arg: 2, scope: !10, file: !11, line: 25, type: !32)
!201 = !DILocation(line: 25, column: 52, scope: !10)
!202 = !DILocalVariable(name: "minivl", arg: 3, scope: !10, file: !11, line: 25, type: !32)
!203 = !DILocation(line: 25, column: 61, scope: !10)
!204 = !DILocalVariable(name: "maxivl", arg: 4, scope: !10, file: !11, line: 25, type: !32)
!205 = !DILocation(line: 25, column: 73, scope: !10)
!206 = !DILocalVariable(name: "owner", arg: 5, scope: !10, file: !11, line: 26, type: !31)
!207 = !DILocation(line: 26, column: 20, scope: !10)
!208 = !DILocation(line: 28, column: 21, scope: !10)
!209 = !DILocation(line: 28, column: 27, scope: !10)
!210 = !DILocation(line: 28, column: 34, scope: !10)
!211 = !DILocation(line: 28, column: 39, scope: !10)
!212 = !DILocation(line: 28, column: 5, scope: !10)
!213 = !DILocation(line: 29, column: 20, scope: !10)
!214 = !DILocation(line: 29, column: 5, scope: !10)
!215 = !DILocation(line: 29, column: 11, scope: !10)
!216 = !DILocation(line: 29, column: 18, scope: !10)
!217 = !DILocation(line: 30, column: 20, scope: !10)
!218 = !DILocation(line: 30, column: 5, scope: !10)
!219 = !DILocation(line: 30, column: 11, scope: !10)
!220 = !DILocation(line: 30, column: 18, scope: !10)
!221 = !DILocation(line: 31, column: 5, scope: !10)
!222 = !DILocation(line: 31, column: 11, scope: !10)
!223 = !DILocation(line: 31, column: 13, scope: !10)
!224 = !DILocation(line: 32, column: 1, scope: !10)
!225 = distinct !DISubprogram(name: "nn_backoff_term", scope: !11, file: !11, line: 34, type: !226, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !197)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !14}
!228 = !DILocalVariable(name: "self", arg: 1, scope: !225, file: !11, line: 34, type: !14)
!229 = !DILocation(line: 34, column: 42, scope: !225)
!230 = !DILocation(line: 36, column: 21, scope: !225)
!231 = !DILocation(line: 36, column: 27, scope: !225)
!232 = !DILocation(line: 36, column: 5, scope: !225)
!233 = !DILocation(line: 37, column: 1, scope: !225)
!234 = distinct !DISubprogram(name: "nn_backoff_isidle", scope: !11, file: !11, line: 39, type: !235, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !197)
!235 = !DISubroutineType(types: !236)
!236 = !{!32, !14}
!237 = !DILocalVariable(name: "self", arg: 1, scope: !234, file: !11, line: 39, type: !14)
!238 = !DILocation(line: 39, column: 43, scope: !234)
!239 = !DILocation(line: 41, column: 30, scope: !234)
!240 = !DILocation(line: 41, column: 36, scope: !234)
!241 = !DILocation(line: 41, column: 12, scope: !234)
!242 = !DILocation(line: 41, column: 5, scope: !234)
!243 = distinct !DISubprogram(name: "nn_backoff_start", scope: !11, file: !11, line: 44, type: !226, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !197)
!244 = !DILocalVariable(name: "self", arg: 1, scope: !243, file: !11, line: 44, type: !14)
!245 = !DILocation(line: 44, column: 43, scope: !243)
!246 = !DILocalVariable(name: "timeout", scope: !243, file: !11, line: 46, type: !32)
!247 = !DILocation(line: 46, column: 10, scope: !243)
!248 = !DILocation(line: 50, column: 17, scope: !243)
!249 = !DILocation(line: 50, column: 23, scope: !243)
!250 = !DILocation(line: 50, column: 25, scope: !243)
!251 = !DILocation(line: 50, column: 32, scope: !243)
!252 = !DILocation(line: 50, column: 38, scope: !243)
!253 = !DILocation(line: 50, column: 30, scope: !243)
!254 = !DILocation(line: 50, column: 14, scope: !243)
!255 = !DILocation(line: 51, column: 10, scope: !256)
!256 = distinct !DILexicalBlock(scope: !243, file: !11, line: 51, column: 10)
!257 = !DILocation(line: 51, column: 20, scope: !256)
!258 = !DILocation(line: 51, column: 26, scope: !256)
!259 = !DILocation(line: 51, column: 18, scope: !256)
!260 = !DILocation(line: 51, column: 10, scope: !243)
!261 = !DILocation(line: 52, column: 20, scope: !256)
!262 = !DILocation(line: 52, column: 26, scope: !256)
!263 = !DILocation(line: 52, column: 18, scope: !256)
!264 = !DILocation(line: 52, column: 10, scope: !256)
!265 = !DILocation(line: 54, column: 10, scope: !256)
!266 = !DILocation(line: 54, column: 16, scope: !256)
!267 = !DILocation(line: 54, column: 18, scope: !256)
!268 = !DILocation(line: 55, column: 23, scope: !243)
!269 = !DILocation(line: 55, column: 29, scope: !243)
!270 = !DILocation(line: 55, column: 36, scope: !243)
!271 = !DILocation(line: 55, column: 6, scope: !243)
!272 = !DILocation(line: 56, column: 1, scope: !243)
!273 = distinct !DISubprogram(name: "nn_backoff_stop", scope: !11, file: !11, line: 58, type: !226, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !197)
!274 = !DILocalVariable(name: "self", arg: 1, scope: !273, file: !11, line: 58, type: !14)
!275 = !DILocation(line: 58, column: 42, scope: !273)
!276 = !DILocation(line: 60, column: 21, scope: !273)
!277 = !DILocation(line: 60, column: 27, scope: !273)
!278 = !DILocation(line: 60, column: 5, scope: !273)
!279 = !DILocation(line: 61, column: 1, scope: !273)
!280 = distinct !DISubprogram(name: "nn_backoff_reset", scope: !11, file: !11, line: 63, type: !226, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !197)
!281 = !DILocalVariable(name: "self", arg: 1, scope: !280, file: !11, line: 63, type: !14)
!282 = !DILocation(line: 63, column: 43, scope: !280)
!283 = !DILocation(line: 65, column: 5, scope: !280)
!284 = !DILocation(line: 65, column: 11, scope: !280)
!285 = !DILocation(line: 65, column: 13, scope: !280)
!286 = !DILocation(line: 66, column: 1, scope: !280)
