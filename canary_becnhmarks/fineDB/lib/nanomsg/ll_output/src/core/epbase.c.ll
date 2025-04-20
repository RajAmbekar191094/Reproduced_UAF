; ModuleID = './src/core/epbase.c'
source_filename = "./src/core/epbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_epbase = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_epbase_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !347 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !352, metadata !DIExpression()), !dbg !353
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !354, metadata !DIExpression()), !dbg !355
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !356, metadata !DIExpression()), !dbg !357
  %7 = load ptr, ptr %5, align 8, !dbg !358
  %8 = load ptr, ptr %4, align 8, !dbg !359
  %9 = getelementptr inbounds %struct.nn_epbase, ptr %8, i32 0, i32 0, !dbg !360
  store ptr %7, ptr %9, align 8, !dbg !361
  %10 = load ptr, ptr %6, align 8, !dbg !362
  %11 = load ptr, ptr %4, align 8, !dbg !363
  %12 = getelementptr inbounds %struct.nn_epbase, ptr %11, i32 0, i32 1, !dbg !364
  store ptr %10, ptr %12, align 8, !dbg !365
  ret void, !dbg !366
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_epbase_term(ptr noundef %0) #0 !dbg !367 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !368, metadata !DIExpression()), !dbg !369
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_epbase_stopped(ptr noundef %0) #0 !dbg !371 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !373
  %3 = load ptr, ptr %2, align 8, !dbg !374
  %4 = getelementptr inbounds %struct.nn_epbase, ptr %3, i32 0, i32 1, !dbg !375
  %5 = load ptr, ptr %4, align 8, !dbg !375
  call void @nn_ep_stopped(ptr noundef %5), !dbg !376
  ret void, !dbg !377
}

declare void @nn_ep_stopped(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_epbase_getctx(ptr noundef %0) #0 !dbg !378 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !381, metadata !DIExpression()), !dbg !382
  %3 = load ptr, ptr %2, align 8, !dbg !383
  %4 = getelementptr inbounds %struct.nn_epbase, ptr %3, i32 0, i32 1, !dbg !384
  %5 = load ptr, ptr %4, align 8, !dbg !384
  %6 = call ptr @nn_ep_getctx(ptr noundef %5), !dbg !385
  ret ptr %6, !dbg !386
}

declare ptr @nn_ep_getctx(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_epbase_getaddr(ptr noundef %0) #0 !dbg !387 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !392, metadata !DIExpression()), !dbg !393
  %3 = load ptr, ptr %2, align 8, !dbg !394
  %4 = getelementptr inbounds %struct.nn_epbase, ptr %3, i32 0, i32 1, !dbg !395
  %5 = load ptr, ptr %4, align 8, !dbg !395
  %6 = call ptr @nn_ep_getaddr(ptr noundef %5), !dbg !396
  ret ptr %6, !dbg !397
}

declare ptr @nn_ep_getaddr(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_epbase_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !398 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !401, metadata !DIExpression()), !dbg !402
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !403, metadata !DIExpression()), !dbg !404
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !405, metadata !DIExpression()), !dbg !406
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !407, metadata !DIExpression()), !dbg !408
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !409, metadata !DIExpression()), !dbg !410
  %11 = load ptr, ptr %6, align 8, !dbg !411
  %12 = getelementptr inbounds %struct.nn_epbase, ptr %11, i32 0, i32 1, !dbg !412
  %13 = load ptr, ptr %12, align 8, !dbg !412
  %14 = load i32, ptr %7, align 4, !dbg !413
  %15 = load i32, ptr %8, align 4, !dbg !414
  %16 = load ptr, ptr %9, align 8, !dbg !415
  %17 = load ptr, ptr %10, align 8, !dbg !416
  call void @nn_ep_getopt(ptr noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17), !dbg !417
  ret void, !dbg !418
}

declare void @nn_ep_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_epbase_ispeer(ptr noundef %0, i32 noundef %1) #0 !dbg !419 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !422, metadata !DIExpression()), !dbg !423
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !424, metadata !DIExpression()), !dbg !425
  %5 = load ptr, ptr %3, align 8, !dbg !426
  %6 = getelementptr inbounds %struct.nn_epbase, ptr %5, i32 0, i32 1, !dbg !427
  %7 = load ptr, ptr %6, align 8, !dbg !427
  %8 = load i32, ptr %4, align 4, !dbg !428
  %9 = call i32 @nn_ep_ispeer(ptr noundef %7, i32 noundef %8), !dbg !429
  ret i32 %9, !dbg !430
}

declare i32 @nn_ep_ispeer(ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!339, !340, !341, !342, !343, !344, !345}
!llvm.ident = !{!346}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/core/epbase.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e82b58823cc16e2204d786127e4e202b")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !5, line: 35, size: 2112, elements: !6)
!5 = !DIFile(filename: "./src/core/ep.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3cb96b08ce030ea933432a57e3a52863")
!6 = !{!7, !174, !175, !191, !333, !334, !335}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !4, file: !5, line: 36, baseType: !8, size: 640)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !9, line: 66, size: 640, elements: !10)
!9 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!10 = !{!11, !19, !20, !21, !22, !23, !166}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !8, file: !9, line: 67, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !9, line: 58, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !17, !17, !18}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !8, file: !9, line: 68, baseType: !17, size: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !8, file: !9, line: 69, baseType: !17, size: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !8, file: !9, line: 70, baseType: !18, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !8, file: !9, line: 71, baseType: !16, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !8, file: !9, line: 72, baseType: !24, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !26, line: 37, size: 704, elements: !27)
!26 = !DIFile(filename: "./src/core/../aio/ctx.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "02553d3500c8d7bb20cd89fa252fe2c2")
!27 = !{!28, !65, !159, !160, !161}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !25, file: !26, line: 38, baseType: !29, size: 320)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !30, line: 32, size: 320, elements: !31)
!30 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !29, file: !30, line: 36, baseType: !33, size: 320)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !34, line: 72, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 67, size: 320, elements: !36)
!36 = !{!37, !58, !63}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !35, file: !34, line: 69, baseType: !38, size: 320)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !39, line: 22, size: 320, elements: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!40 = !{!41, !42, !44, !45, !46, !47, !49, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !38, file: !39, line: 24, baseType: !17, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !38, file: !39, line: 25, baseType: !43, size: 32, offset: 32)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !38, file: !39, line: 26, baseType: !17, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !38, file: !39, line: 28, baseType: !43, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !38, file: !39, line: 32, baseType: !17, size: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !38, file: !39, line: 34, baseType: !48, size: 16, offset: 160)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !38, file: !39, line: 35, baseType: !48, size: 16, offset: 176)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !38, file: !39, line: 36, baseType: !51, size: 128, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !52, line: 55, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !52, line: 51, size: 128, elements: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !53, file: !52, line: 53, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !53, file: !52, line: 54, baseType: !56, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !35, file: !34, line: 70, baseType: !59, size: 320)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 320, elements: !61)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !{!62}
!62 = !DISubrange(count: 40)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !35, file: !34, line: 71, baseType: !64, size: 64)
!64 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !25, file: !26, line: 39, baseType: !66, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !68, line: 30, size: 1408, elements: !69)
!68 = !DIFile(filename: "src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !67, file: !68, line: 31, baseType: !71, size: 1408)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !72, line: 53, size: 1408, elements: !73)
!72 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!73 = !{!74, !75, !85, !86, !92, !119, !120, !146}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !71, file: !72, line: 54, baseType: !29, size: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !71, file: !72, line: 55, baseType: !76, size: 128, offset: 320)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !77, line: 37, size: 128, elements: !78)
!77 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!78 = !{!79, !84}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !77, line: 38, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !77, line: 33, size: 64, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !77, line: 34, baseType: !80, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !76, file: !77, line: 39, baseType: !80, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !71, file: !72, line: 56, baseType: !81, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !71, file: !72, line: 57, baseType: !87, size: 64, offset: 512)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !88, line: 25, size: 64, elements: !89)
!88 = !DIFile(filename: "src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !87, file: !88, line: 26, baseType: !17, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !87, file: !88, line: 27, baseType: !17, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !71, file: !72, line: 58, baseType: !93, size: 320, offset: 576)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !94, line: 31, size: 320, elements: !95)
!94 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!95 = !{!96, !97, !98, !99, !107, !118}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !93, file: !94, line: 34, baseType: !17, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !93, file: !94, line: 37, baseType: !17, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !93, file: !94, line: 40, baseType: !17, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !93, file: !94, line: 43, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !102, line: 36, size: 64, elements: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!103 = !{!104, !105, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !101, file: !102, line: 38, baseType: !17, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !101, file: !102, line: 39, baseType: !48, size: 16, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !101, file: !102, line: 40, baseType: !48, size: 16, offset: 48)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !93, file: !94, line: 52, baseType: !108, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !94, line: 48, size: 128, elements: !110)
!110 = !{!111, !116, !117}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !109, file: !94, line: 49, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !94, line: 27, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !113, file: !94, line: 28, baseType: !17, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !94, line: 50, baseType: !17, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !94, line: 51, baseType: !17, size: 32, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !93, file: !94, line: 55, baseType: !17, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !71, file: !72, line: 59, baseType: !113, size: 32, offset: 896)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !71, file: !72, line: 60, baseType: !121, size: 256, offset: 960)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !122, line: 37, size: 256, elements: !123)
!122 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!123 = !{!124, !135}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !121, file: !122, line: 38, baseType: !125, size: 128)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !126, line: 31, size: 128, elements: !127)
!126 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!127 = !{!128, !134}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !125, file: !126, line: 33, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !130, line: 27, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !132, line: 45, baseType: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!133 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !125, file: !126, line: 34, baseType: !129, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !121, file: !122, line: 39, baseType: !136, size: 128, offset: 128)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !137, line: 31, size: 128, elements: !138)
!137 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!138 = !{!139, !145}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !136, file: !137, line: 32, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !137, line: 26, size: 128, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !137, line: 27, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !141, file: !137, line: 28, baseType: !140, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !136, file: !137, line: 33, baseType: !140, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !71, file: !72, line: 61, baseType: !147, size: 192, offset: 1216)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !148, line: 25, size: 192, elements: !149)
!148 = !DIFile(filename: "src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!149 = !{!150, !156, !157}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !147, file: !148, line: 27, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !153, line: 28, baseType: !154)
!153 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!154 = !DISubroutineType(types: !155)
!155 = !{null, !18}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !147, file: !148, line: 28, baseType: !18, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !147, file: !148, line: 29, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !34, line: 27, baseType: !133)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !25, file: !26, line: 40, baseType: !76, size: 128, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "eventsto", scope: !25, file: !26, line: 41, baseType: !76, size: 128, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "onleave", scope: !25, file: !26, line: 42, baseType: !162, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ctx_onleave", file: !26, line: 35, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !24}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !8, file: !9, line: 73, baseType: !167, size: 320, offset: 320)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !9, line: 34, size: 320, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !167, file: !9, line: 35, baseType: !16, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !167, file: !9, line: 36, baseType: !17, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !167, file: !9, line: 37, baseType: !18, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !9, line: 38, baseType: !17, size: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !167, file: !9, line: 39, baseType: !81, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4, file: !5, line: 37, baseType: !17, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !4, file: !5, line: 38, baseType: !176, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !178, line: 81, size: 128, elements: !179)
!178 = !DIFile(filename: "./src/core/../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!179 = !{!180, !190}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !177, file: !178, line: 82, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !178, line: 70, size: 128, elements: !184)
!184 = !{!185, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !183, file: !178, line: 75, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !176}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !183, file: !178, line: 78, baseType: !186, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !177, file: !178, line: 83, baseType: !3, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !4, file: !5, line: 39, baseType: !192, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !194, line: 42, size: 2752, elements: !195)
!194 = !DIFile(filename: "./src/core/sock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "81758969b613e986f7c84ae94c8bce2a")
!195 = !{!196, !197, !198, !264, !281, !282, !283, !284, !285, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !193, file: !194, line: 45, baseType: !8, size: 640)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !193, file: !194, line: 46, baseType: !17, size: 32, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !193, file: !194, line: 49, baseType: !199, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !201, line: 123, size: 128, elements: !202)
!201 = !DIFile(filename: "./src/core/../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!202 = !{!203, !263}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !200, file: !201, line: 124, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !201, line: 84, size: 704, elements: !207)
!207 = !{!208, !212, !213, !219, !223, !224, !225, !229, !249, !250, !258}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !206, file: !201, line: 87, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !199}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !206, file: !201, line: 90, baseType: !209, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !206, file: !201, line: 97, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!17, !199, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !201, line: 56, flags: DIFlagFwdDecl)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !206, file: !201, line: 98, baseType: !220, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !199, !217}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !206, file: !201, line: 99, baseType: !220, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !206, file: !201, line: 100, baseType: !220, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !206, file: !201, line: 104, baseType: !226, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!17, !199}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !206, file: !201, line: 108, baseType: !230, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!17, !199, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !235, line: 30, size: 512, elements: !236)
!235 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!236 = !{!237, !248}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !234, file: !235, line: 33, baseType: !238, size: 256)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !239, line: 39, size: 256, elements: !240)
!239 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !238, file: !239, line: 40, baseType: !242, size: 256)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 256, elements: !246)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !130, line: 24, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !132, line: 38, baseType: !245)
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !{!247}
!247 = !DISubrange(count: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !234, file: !235, line: 36, baseType: !238, size: 256, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !206, file: !201, line: 112, baseType: !230, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !206, file: !201, line: 115, baseType: !251, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!17, !199, !17, !17, !254, !256}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !257, line: 46, baseType: !133)
!257 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!258 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !206, file: !201, line: 119, baseType: !259, size: 64, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!17, !199, !17, !17, !18, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !200, file: !201, line: 125, baseType: !192, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "socktype", scope: !193, file: !194, line: 52, baseType: !265, size: 64, offset: 768)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !201, line: 160, size: 384, elements: !267)
!267 = !{!268, !269, !270, !271, !276, !280}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !266, file: !201, line: 163, baseType: !17, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !266, file: !201, line: 164, baseType: !17, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !201, line: 167, baseType: !17, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !266, file: !201, line: 173, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!17, !18, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !266, file: !201, line: 179, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!17, !17}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !266, file: !201, line: 183, baseType: !141, size: 128, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !194, line: 54, baseType: !17, size: 32, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !193, file: !194, line: 56, baseType: !25, size: 704, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sndfd", scope: !193, file: !194, line: 57, baseType: !87, size: 64, offset: 1600)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rcvfd", scope: !193, file: !194, line: 58, baseType: !87, size: 64, offset: 1664)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "termsem", scope: !193, file: !194, line: 59, baseType: !286, size: 256, offset: 1728)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sem", file: !287, line: 64, size: 256, elements: !288)
!287 = !DIFile(filename: "src/aio/../utils/sem.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "925a3ae06fa6fbb251fb87fc0fbd3a0b")
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !286, file: !287, line: 65, baseType: !290, size: 256)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !291, line: 39, baseType: !292)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !291, line: 35, size: 256, elements: !293)
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !292, file: !291, line: 37, baseType: !295, size: 256)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !246)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !292, file: !291, line: 38, baseType: !64, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !193, file: !194, line: 63, baseType: !125, size: 128, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !193, file: !194, line: 66, baseType: !136, size: 128, offset: 2112)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !193, file: !194, line: 69, baseType: !17, size: 32, offset: 2240)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "linger", scope: !193, file: !194, line: 72, baseType: !17, size: 32, offset: 2272)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !193, file: !194, line: 73, baseType: !17, size: 32, offset: 2304)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !193, file: !194, line: 74, baseType: !17, size: 32, offset: 2336)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sndtimeo", scope: !193, file: !194, line: 75, baseType: !17, size: 32, offset: 2368)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rcvtimeo", scope: !193, file: !194, line: 76, baseType: !17, size: 32, offset: 2400)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl", scope: !193, file: !194, line: 77, baseType: !17, size: 32, offset: 2432)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl_max", scope: !193, file: !194, line: 78, baseType: !17, size: 32, offset: 2464)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sndprio", scope: !193, file: !194, line: 79, baseType: !17, size: 32, offset: 2496)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4only", scope: !193, file: !194, line: 80, baseType: !17, size: 32, offset: 2528)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "optsets", scope: !193, file: !194, line: 83, baseType: !310, size: 192, offset: 2560)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 192, elements: !331)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset", file: !178, line: 56, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !312, file: !178, line: 57, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset_vfptr", file: !178, line: 48, size: 192, elements: !318)
!318 = !{!319, !323, !327}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !317, file: !178, line: 49, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !311}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !317, file: !178, line: 50, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!17, !311, !17, !254, !256}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !317, file: !178, line: 52, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!17, !311, !17, !18, !262}
!331 = !{!332}
!332 = !DISubrange(count: 3)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !4, file: !5, line: 40, baseType: !17, size: 32, offset: 832)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !4, file: !5, line: 41, baseType: !141, size: 128, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4, file: !5, line: 42, baseType: !336, size: 1032, offset: 1024)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 1032, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 129)
!339 = !{i32 7, !"Dwarf Version", i32 5}
!340 = !{i32 2, !"Debug Info Version", i32 3}
!341 = !{i32 1, !"wchar_size", i32 4}
!342 = !{i32 8, !"PIC Level", i32 2}
!343 = !{i32 7, !"PIE Level", i32 2}
!344 = !{i32 7, !"uwtable", i32 2}
!345 = !{i32 7, !"frame-pointer", i32 2}
!346 = !{!"clang version 16.0.0"}
!347 = distinct !DISubprogram(name: "nn_epbase_init", scope: !348, file: !348, line: 28, type: !349, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !351)
!348 = !DIFile(filename: "./src/core/epbase.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e82b58823cc16e2204d786127e4e202b")
!349 = !DISubroutineType(types: !350)
!350 = !{null, !176, !181, !18}
!351 = !{}
!352 = !DILocalVariable(name: "self", arg: 1, scope: !347, file: !348, line: 28, type: !176)
!353 = !DILocation(line: 28, column: 40, scope: !347)
!354 = !DILocalVariable(name: "vfptr", arg: 2, scope: !347, file: !348, line: 29, type: !181)
!355 = !DILocation(line: 29, column: 35, scope: !347)
!356 = !DILocalVariable(name: "hint", arg: 3, scope: !347, file: !348, line: 29, type: !18)
!357 = !DILocation(line: 29, column: 48, scope: !347)
!358 = !DILocation(line: 31, column: 19, scope: !347)
!359 = !DILocation(line: 31, column: 5, scope: !347)
!360 = !DILocation(line: 31, column: 11, scope: !347)
!361 = !DILocation(line: 31, column: 17, scope: !347)
!362 = !DILocation(line: 32, column: 32, scope: !347)
!363 = !DILocation(line: 32, column: 5, scope: !347)
!364 = !DILocation(line: 32, column: 11, scope: !347)
!365 = !DILocation(line: 32, column: 14, scope: !347)
!366 = !DILocation(line: 33, column: 1, scope: !347)
!367 = distinct !DISubprogram(name: "nn_epbase_term", scope: !348, file: !348, line: 35, type: !187, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !351)
!368 = !DILocalVariable(name: "self", arg: 1, scope: !367, file: !348, line: 35, type: !176)
!369 = !DILocation(line: 35, column: 40, scope: !367)
!370 = !DILocation(line: 37, column: 1, scope: !367)
!371 = distinct !DISubprogram(name: "nn_epbase_stopped", scope: !348, file: !348, line: 39, type: !187, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !351)
!372 = !DILocalVariable(name: "self", arg: 1, scope: !371, file: !348, line: 39, type: !176)
!373 = !DILocation(line: 39, column: 43, scope: !371)
!374 = !DILocation(line: 41, column: 20, scope: !371)
!375 = !DILocation(line: 41, column: 26, scope: !371)
!376 = !DILocation(line: 41, column: 5, scope: !371)
!377 = !DILocation(line: 42, column: 1, scope: !371)
!378 = distinct !DISubprogram(name: "nn_epbase_getctx", scope: !348, file: !348, line: 44, type: !379, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !351)
!379 = !DISubroutineType(types: !380)
!380 = !{!24, !176}
!381 = !DILocalVariable(name: "self", arg: 1, scope: !378, file: !348, line: 44, type: !176)
!382 = !DILocation(line: 44, column: 52, scope: !378)
!383 = !DILocation(line: 46, column: 26, scope: !378)
!384 = !DILocation(line: 46, column: 32, scope: !378)
!385 = !DILocation(line: 46, column: 12, scope: !378)
!386 = !DILocation(line: 46, column: 5, scope: !378)
!387 = distinct !DISubprogram(name: "nn_epbase_getaddr", scope: !348, file: !348, line: 49, type: !388, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !351)
!388 = !DISubroutineType(types: !389)
!389 = !{!390, !176}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!392 = !DILocalVariable(name: "self", arg: 1, scope: !387, file: !348, line: 49, type: !176)
!393 = !DILocation(line: 49, column: 50, scope: !387)
!394 = !DILocation(line: 51, column: 27, scope: !387)
!395 = !DILocation(line: 51, column: 33, scope: !387)
!396 = !DILocation(line: 51, column: 12, scope: !387)
!397 = !DILocation(line: 51, column: 5, scope: !387)
!398 = distinct !DISubprogram(name: "nn_epbase_getopt", scope: !348, file: !348, line: 54, type: !399, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !351)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !176, !17, !17, !18, !262}
!401 = !DILocalVariable(name: "self", arg: 1, scope: !398, file: !348, line: 54, type: !176)
!402 = !DILocation(line: 54, column: 42, scope: !398)
!403 = !DILocalVariable(name: "level", arg: 2, scope: !398, file: !348, line: 54, type: !17)
!404 = !DILocation(line: 54, column: 52, scope: !398)
!405 = !DILocalVariable(name: "option", arg: 3, scope: !398, file: !348, line: 54, type: !17)
!406 = !DILocation(line: 54, column: 63, scope: !398)
!407 = !DILocalVariable(name: "optval", arg: 4, scope: !398, file: !348, line: 55, type: !18)
!408 = !DILocation(line: 55, column: 11, scope: !398)
!409 = !DILocalVariable(name: "optvallen", arg: 5, scope: !398, file: !348, line: 55, type: !262)
!410 = !DILocation(line: 55, column: 27, scope: !398)
!411 = !DILocation(line: 57, column: 19, scope: !398)
!412 = !DILocation(line: 57, column: 25, scope: !398)
!413 = !DILocation(line: 57, column: 29, scope: !398)
!414 = !DILocation(line: 57, column: 36, scope: !398)
!415 = !DILocation(line: 57, column: 44, scope: !398)
!416 = !DILocation(line: 57, column: 52, scope: !398)
!417 = !DILocation(line: 57, column: 5, scope: !398)
!418 = !DILocation(line: 58, column: 1, scope: !398)
!419 = distinct !DISubprogram(name: "nn_epbase_ispeer", scope: !348, file: !348, line: 60, type: !420, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !351)
!420 = !DISubroutineType(types: !421)
!421 = !{!17, !176, !17}
!422 = !DILocalVariable(name: "self", arg: 1, scope: !419, file: !348, line: 60, type: !176)
!423 = !DILocation(line: 60, column: 41, scope: !419)
!424 = !DILocalVariable(name: "socktype", arg: 2, scope: !419, file: !348, line: 60, type: !17)
!425 = !DILocation(line: 60, column: 51, scope: !419)
!426 = !DILocation(line: 62, column: 26, scope: !419)
!427 = !DILocation(line: 62, column: 32, scope: !419)
!428 = !DILocation(line: 62, column: 36, scope: !419)
!429 = !DILocation(line: 62, column: 12, scope: !419)
!430 = !DILocation(line: 62, column: 5, scope: !419)
