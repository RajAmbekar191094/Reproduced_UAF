; ModuleID = './src/core/sockbase.c'
source_filename = "./src/core/sockbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sockbase = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sockbase_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !319 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !324, metadata !DIExpression()), !dbg !325
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !326, metadata !DIExpression()), !dbg !327
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !328, metadata !DIExpression()), !dbg !329
  %7 = load ptr, ptr %5, align 8, !dbg !330
  %8 = load ptr, ptr %4, align 8, !dbg !331
  %9 = getelementptr inbounds %struct.nn_sockbase, ptr %8, i32 0, i32 0, !dbg !332
  store ptr %7, ptr %9, align 8, !dbg !333
  %10 = load ptr, ptr %6, align 8, !dbg !334
  %11 = load ptr, ptr %4, align 8, !dbg !335
  %12 = getelementptr inbounds %struct.nn_sockbase, ptr %11, i32 0, i32 1, !dbg !336
  store ptr %10, ptr %12, align 8, !dbg !337
  ret void, !dbg !338
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sockbase_term(ptr noundef %0) #0 !dbg !339 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sockbase_stopped(ptr noundef %0) #0 !dbg !343 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !344, metadata !DIExpression()), !dbg !345
  %3 = load ptr, ptr %2, align 8, !dbg !346
  %4 = getelementptr inbounds %struct.nn_sockbase, ptr %3, i32 0, i32 1, !dbg !347
  %5 = load ptr, ptr %4, align 8, !dbg !347
  call void @nn_sock_stopped(ptr noundef %5), !dbg !348
  ret void, !dbg !349
}

declare void @nn_sock_stopped(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_sockbase_getctx(ptr noundef %0) #0 !dbg !350 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !353, metadata !DIExpression()), !dbg !354
  %3 = load ptr, ptr %2, align 8, !dbg !355
  %4 = getelementptr inbounds %struct.nn_sockbase, ptr %3, i32 0, i32 1, !dbg !356
  %5 = load ptr, ptr %4, align 8, !dbg !356
  %6 = call ptr @nn_sock_getctx(ptr noundef %5), !dbg !357
  ret ptr %6, !dbg !358
}

declare ptr @nn_sock_getctx(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sockbase_getopt(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !359 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !362, metadata !DIExpression()), !dbg !363
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !364, metadata !DIExpression()), !dbg !365
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !366, metadata !DIExpression()), !dbg !367
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !368, metadata !DIExpression()), !dbg !369
  %9 = load ptr, ptr %5, align 8, !dbg !370
  %10 = getelementptr inbounds %struct.nn_sockbase, ptr %9, i32 0, i32 1, !dbg !371
  %11 = load ptr, ptr %10, align 8, !dbg !371
  %12 = load i32, ptr %6, align 4, !dbg !372
  %13 = load ptr, ptr %7, align 8, !dbg !373
  %14 = load ptr, ptr %8, align 8, !dbg !374
  %15 = call i32 @nn_sock_getopt_inner(ptr noundef %11, i32 noundef 0, i32 noundef %12, ptr noundef %13, ptr noundef %14), !dbg !375
  ret i32 %15, !dbg !376
}

declare i32 @nn_sock_getopt_inner(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!311, !312, !313, !314, !315, !316, !317}
!llvm.ident = !{!318}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/core/sockbase.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d210adafc793ee1da0597d484438a5ad")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !5, line: 42, size: 2752, elements: !6)
!5 = !DIFile(filename: "./src/core/sock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "81758969b613e986f7c84ae94c8bce2a")
!6 = !{!7, !174, !175, !241, !258, !259, !260, !261, !262, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !4, file: !5, line: 45, baseType: !8, size: 640)
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
!88 = !DIFile(filename: "src/utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
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
!148 = !DIFile(filename: "src/utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
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
!174 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4, file: !5, line: 46, baseType: !17, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !4, file: !5, line: 49, baseType: !176, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !178, line: 123, size: 128, elements: !179)
!178 = !DIFile(filename: "./src/core/../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!179 = !{!180, !240}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !177, file: !178, line: 124, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !178, line: 84, size: 704, elements: !184)
!184 = !{!185, !189, !190, !196, !200, !201, !202, !206, !226, !227, !235}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !183, file: !178, line: 87, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !176}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !183, file: !178, line: 90, baseType: !186, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !183, file: !178, line: 97, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!17, !176, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !178, line: 56, flags: DIFlagFwdDecl)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !183, file: !178, line: 98, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !176, !194}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !183, file: !178, line: 99, baseType: !197, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !183, file: !178, line: 100, baseType: !197, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !183, file: !178, line: 104, baseType: !203, size: 64, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!17, !176}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !183, file: !178, line: 108, baseType: !207, size: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!17, !176, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !212, line: 30, size: 512, elements: !213)
!212 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!213 = !{!214, !225}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !211, file: !212, line: 33, baseType: !215, size: 256)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !216, line: 39, size: 256, elements: !217)
!216 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !215, file: !216, line: 40, baseType: !219, size: 256)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !130, line: 24, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !132, line: 38, baseType: !222)
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !211, file: !212, line: 36, baseType: !215, size: 256, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !183, file: !178, line: 112, baseType: !207, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !183, file: !178, line: 115, baseType: !228, size: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!17, !176, !17, !17, !231, !233}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !234, line: 46, baseType: !133)
!234 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!235 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !183, file: !178, line: 119, baseType: !236, size: 64, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!17, !176, !17, !17, !18, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !177, file: !178, line: 125, baseType: !3, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "socktype", scope: !4, file: !5, line: 52, baseType: !242, size: 64, offset: 768)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !178, line: 160, size: 384, elements: !244)
!244 = !{!245, !246, !247, !248, !253, !257}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !243, file: !178, line: 163, baseType: !17, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !243, file: !178, line: 164, baseType: !17, size: 32, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !178, line: 167, baseType: !17, size: 32, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !243, file: !178, line: 173, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!17, !18, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !243, file: !178, line: 179, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!17, !17}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !243, file: !178, line: 183, baseType: !141, size: 128, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4, file: !5, line: 54, baseType: !17, size: 32, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4, file: !5, line: 56, baseType: !25, size: 704, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sndfd", scope: !4, file: !5, line: 57, baseType: !87, size: 64, offset: 1600)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rcvfd", scope: !4, file: !5, line: 58, baseType: !87, size: 64, offset: 1664)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "termsem", scope: !4, file: !5, line: 59, baseType: !263, size: 256, offset: 1728)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sem", file: !264, line: 64, size: 256, elements: !265)
!264 = !DIFile(filename: "src/aio/../utils/sem.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "925a3ae06fa6fbb251fb87fc0fbd3a0b")
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !263, file: !264, line: 65, baseType: !267, size: 256)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !268, line: 39, baseType: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !268, line: 35, size: 256, elements: !270)
!270 = !{!271, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !269, file: !268, line: 37, baseType: !272, size: 256)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !223)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !269, file: !268, line: 38, baseType: !64, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4, file: !5, line: 63, baseType: !125, size: 128, offset: 1984)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !4, file: !5, line: 66, baseType: !136, size: 128, offset: 2112)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !4, file: !5, line: 69, baseType: !17, size: 32, offset: 2240)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "linger", scope: !4, file: !5, line: 72, baseType: !17, size: 32, offset: 2272)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !4, file: !5, line: 73, baseType: !17, size: 32, offset: 2304)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !4, file: !5, line: 74, baseType: !17, size: 32, offset: 2336)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sndtimeo", scope: !4, file: !5, line: 75, baseType: !17, size: 32, offset: 2368)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rcvtimeo", scope: !4, file: !5, line: 76, baseType: !17, size: 32, offset: 2400)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl", scope: !4, file: !5, line: 77, baseType: !17, size: 32, offset: 2432)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl_max", scope: !4, file: !5, line: 78, baseType: !17, size: 32, offset: 2464)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sndprio", scope: !4, file: !5, line: 79, baseType: !17, size: 32, offset: 2496)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4only", scope: !4, file: !5, line: 80, baseType: !17, size: 32, offset: 2528)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "optsets", scope: !4, file: !5, line: 83, baseType: !287, size: 192, offset: 2560)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 192, elements: !309)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset", file: !290, line: 56, size: 64, elements: !291)
!290 = !DIFile(filename: "./src/core/../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !289, file: !290, line: 57, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset_vfptr", file: !290, line: 48, size: 192, elements: !296)
!296 = !{!297, !301, !305}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !295, file: !290, line: 49, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !288}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !295, file: !290, line: 50, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!17, !288, !17, !231, !233}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !295, file: !290, line: 52, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!17, !288, !17, !18, !239}
!309 = !{!310}
!310 = !DISubrange(count: 3)
!311 = !{i32 7, !"Dwarf Version", i32 5}
!312 = !{i32 2, !"Debug Info Version", i32 3}
!313 = !{i32 1, !"wchar_size", i32 4}
!314 = !{i32 8, !"PIC Level", i32 2}
!315 = !{i32 7, !"PIE Level", i32 2}
!316 = !{i32 7, !"uwtable", i32 2}
!317 = !{i32 7, !"frame-pointer", i32 2}
!318 = !{!"clang version 16.0.0"}
!319 = distinct !DISubprogram(name: "nn_sockbase_init", scope: !320, file: !320, line: 29, type: !321, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !323)
!320 = !DIFile(filename: "./src/core/sockbase.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d210adafc793ee1da0597d484438a5ad")
!321 = !DISubroutineType(types: !322)
!322 = !{null, !176, !181, !18}
!323 = !{}
!324 = !DILocalVariable(name: "self", arg: 1, scope: !319, file: !320, line: 29, type: !176)
!325 = !DILocation(line: 29, column: 44, scope: !319)
!326 = !DILocalVariable(name: "vfptr", arg: 2, scope: !319, file: !320, line: 30, type: !181)
!327 = !DILocation(line: 30, column: 37, scope: !319)
!328 = !DILocalVariable(name: "hint", arg: 3, scope: !319, file: !320, line: 30, type: !18)
!329 = !DILocation(line: 30, column: 50, scope: !319)
!330 = !DILocation(line: 32, column: 19, scope: !319)
!331 = !DILocation(line: 32, column: 5, scope: !319)
!332 = !DILocation(line: 32, column: 11, scope: !319)
!333 = !DILocation(line: 32, column: 17, scope: !319)
!334 = !DILocation(line: 33, column: 36, scope: !319)
!335 = !DILocation(line: 33, column: 5, scope: !319)
!336 = !DILocation(line: 33, column: 11, scope: !319)
!337 = !DILocation(line: 33, column: 16, scope: !319)
!338 = !DILocation(line: 34, column: 1, scope: !319)
!339 = distinct !DISubprogram(name: "nn_sockbase_term", scope: !320, file: !320, line: 36, type: !187, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !323)
!340 = !DILocalVariable(name: "self", arg: 1, scope: !339, file: !320, line: 36, type: !176)
!341 = !DILocation(line: 36, column: 44, scope: !339)
!342 = !DILocation(line: 38, column: 1, scope: !339)
!343 = distinct !DISubprogram(name: "nn_sockbase_stopped", scope: !320, file: !320, line: 40, type: !187, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !323)
!344 = !DILocalVariable(name: "self", arg: 1, scope: !343, file: !320, line: 40, type: !176)
!345 = !DILocation(line: 40, column: 47, scope: !343)
!346 = !DILocation(line: 42, column: 22, scope: !343)
!347 = !DILocation(line: 42, column: 28, scope: !343)
!348 = !DILocation(line: 42, column: 5, scope: !343)
!349 = !DILocation(line: 43, column: 1, scope: !343)
!350 = distinct !DISubprogram(name: "nn_sockbase_getctx", scope: !320, file: !320, line: 45, type: !351, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !323)
!351 = !DISubroutineType(types: !352)
!352 = !{!24, !176}
!353 = !DILocalVariable(name: "self", arg: 1, scope: !350, file: !320, line: 45, type: !176)
!354 = !DILocation(line: 45, column: 56, scope: !350)
!355 = !DILocation(line: 47, column: 28, scope: !350)
!356 = !DILocation(line: 47, column: 34, scope: !350)
!357 = !DILocation(line: 47, column: 12, scope: !350)
!358 = !DILocation(line: 47, column: 5, scope: !350)
!359 = distinct !DISubprogram(name: "nn_sockbase_getopt", scope: !320, file: !320, line: 50, type: !360, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !323)
!360 = !DISubroutineType(types: !361)
!361 = !{!17, !176, !17, !18, !239}
!362 = !DILocalVariable(name: "self", arg: 1, scope: !359, file: !320, line: 50, type: !176)
!363 = !DILocation(line: 50, column: 45, scope: !359)
!364 = !DILocalVariable(name: "option", arg: 2, scope: !359, file: !320, line: 50, type: !17)
!365 = !DILocation(line: 50, column: 55, scope: !359)
!366 = !DILocalVariable(name: "optval", arg: 3, scope: !359, file: !320, line: 51, type: !18)
!367 = !DILocation(line: 51, column: 11, scope: !359)
!368 = !DILocalVariable(name: "optvallen", arg: 4, scope: !359, file: !320, line: 51, type: !239)
!369 = !DILocation(line: 51, column: 27, scope: !359)
!370 = !DILocation(line: 53, column: 34, scope: !359)
!371 = !DILocation(line: 53, column: 40, scope: !359)
!372 = !DILocation(line: 53, column: 61, scope: !359)
!373 = !DILocation(line: 54, column: 9, scope: !359)
!374 = !DILocation(line: 54, column: 17, scope: !359)
!375 = !DILocation(line: 53, column: 12, scope: !359)
!376 = !DILocation(line: 53, column: 5, scope: !359)
