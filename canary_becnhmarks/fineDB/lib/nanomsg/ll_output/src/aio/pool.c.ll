; ModuleID = './src/aio/pool.c'
source_filename = "./src/aio/pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pool = type { %struct.nn_worker }
%struct.nn_worker = type { %struct.nn_mutex, %struct.nn_queue, %struct.nn_queue_item, %struct.nn_efd, %struct.nn_poller, %struct.nn_poller_hndl, %struct.nn_timerset, %struct.nn_thread }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.nn_queue = type { ptr, ptr }
%struct.nn_queue_item = type { ptr }
%struct.nn_efd = type { i32, i32 }
%struct.nn_poller = type { i32, i32, i32, ptr, ptr, i32 }
%struct.nn_poller_hndl = type { i32 }
%struct.nn_timerset = type { %struct.nn_clock, %struct.nn_list }
%struct.nn_clock = type { i64, i64 }
%struct.nn_list = type { ptr, ptr }
%struct.nn_thread = type { ptr, ptr, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_pool_init(ptr noundef %0) #0 !dbg !10 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !146, metadata !DIExpression()), !dbg !147
  %3 = load ptr, ptr %2, align 8, !dbg !148
  %4 = getelementptr inbounds %struct.nn_pool, ptr %3, i32 0, i32 0, !dbg !149
  %5 = call i32 @nn_worker_init(ptr noundef %4), !dbg !150
  ret i32 %5, !dbg !151
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @nn_worker_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pool_term(ptr noundef %0) #0 !dbg !152 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !155, metadata !DIExpression()), !dbg !156
  %3 = load ptr, ptr %2, align 8, !dbg !157
  %4 = getelementptr inbounds %struct.nn_pool, ptr %3, i32 0, i32 0, !dbg !158
  call void @nn_worker_term(ptr noundef %4), !dbg !159
  ret void, !dbg !160
}

declare void @nn_worker_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_pool_choose_worker(ptr noundef %0) #0 !dbg !161 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !165, metadata !DIExpression()), !dbg !166
  %3 = load ptr, ptr %2, align 8, !dbg !167
  %4 = getelementptr inbounds %struct.nn_pool, ptr %3, i32 0, i32 0, !dbg !168
  ret ptr %4, !dbg !169
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/aio/pool.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "473f3a40acd6763ac222516e1c60628f")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.0"}
!10 = distinct !DISubprogram(name: "nn_pool_init", scope: !11, file: !11, line: 28, type: !12, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !145)
!11 = !DIFile(filename: "./src/aio/pool.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "473f3a40acd6763ac222516e1c60628f")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !17, line: 30, size: 1408, elements: !18)
!17 = !DIFile(filename: "./src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !16, file: !17, line: 31, baseType: !20, size: 1408)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !21, line: 53, size: 1408, elements: !22)
!21 = !DIFile(filename: "./src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!22 = !{!23, !60, !70, !71, !77, !104, !105, !131}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !20, file: !21, line: 54, baseType: !24, size: 320)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !25, line: 32, size: 320, elements: !26)
!25 = !DIFile(filename: "./src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !24, file: !25, line: 36, baseType: !28, size: 320)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !29, line: 72, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !29, line: 67, size: 320, elements: !31)
!31 = !{!32, !53, !58}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !30, file: !29, line: 69, baseType: !33, size: 320)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !34, line: 22, size: 320, elements: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!35 = !{!36, !37, !39, !40, !41, !42, !44, !45}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !33, file: !34, line: 24, baseType: !14, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !33, file: !34, line: 25, baseType: !38, size: 32, offset: 32)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !33, file: !34, line: 26, baseType: !14, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !33, file: !34, line: 28, baseType: !38, size: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !33, file: !34, line: 32, baseType: !14, size: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !33, file: !34, line: 34, baseType: !43, size: 16, offset: 160)
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !33, file: !34, line: 35, baseType: !43, size: 16, offset: 176)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !33, file: !34, line: 36, baseType: !46, size: 128, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !47, line: 55, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !47, line: 51, size: 128, elements: !49)
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !48, file: !47, line: 53, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !48, file: !47, line: 54, baseType: !51, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !30, file: !29, line: 70, baseType: !54, size: 320)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 320, elements: !56)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !{!57}
!57 = !DISubrange(count: 40)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !30, file: !29, line: 71, baseType: !59, size: 64)
!59 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !20, file: !21, line: 55, baseType: !61, size: 128, offset: 320)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !62, line: 37, size: 128, elements: !63)
!62 = !DIFile(filename: "./src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !61, file: !62, line: 38, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !62, line: 33, size: 64, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !62, line: 34, baseType: !65, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !61, file: !62, line: 39, baseType: !65, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !20, file: !21, line: 56, baseType: !66, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !20, file: !21, line: 57, baseType: !72, size: 64, offset: 512)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !73, line: 25, size: 64, elements: !74)
!73 = !DIFile(filename: "./src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !72, file: !73, line: 26, baseType: !14, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !72, file: !73, line: 27, baseType: !14, size: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !20, file: !21, line: 58, baseType: !78, size: 320, offset: 576)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !79, line: 31, size: 320, elements: !80)
!79 = !DIFile(filename: "./src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!80 = !{!81, !82, !83, !84, !92, !103}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !78, file: !79, line: 34, baseType: !14, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !78, file: !79, line: 37, baseType: !14, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !78, file: !79, line: 40, baseType: !14, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !78, file: !79, line: 43, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !87, line: 36, size: 64, elements: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!88 = !{!89, !90, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !86, file: !87, line: 38, baseType: !14, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !86, file: !87, line: 39, baseType: !43, size: 16, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !86, file: !87, line: 40, baseType: !43, size: 16, offset: 48)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !78, file: !79, line: 52, baseType: !93, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !79, line: 48, size: 128, elements: !95)
!95 = !{!96, !101, !102}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !94, file: !79, line: 49, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !79, line: 27, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !98, file: !79, line: 28, baseType: !14, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !94, file: !79, line: 50, baseType: !14, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !79, line: 51, baseType: !14, size: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !78, file: !79, line: 55, baseType: !14, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !20, file: !21, line: 59, baseType: !98, size: 32, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !20, file: !21, line: 60, baseType: !106, size: 256, offset: 960)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !107, line: 37, size: 256, elements: !108)
!107 = !DIFile(filename: "./src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!108 = !{!109, !120}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !106, file: !107, line: 38, baseType: !110, size: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !111, line: 31, size: 128, elements: !112)
!111 = !DIFile(filename: "./src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!112 = !{!113, !119}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !110, file: !111, line: 33, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !115, line: 27, baseType: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !117, line: 45, baseType: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!118 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !110, file: !111, line: 34, baseType: !114, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !106, file: !107, line: 39, baseType: !121, size: 128, offset: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !122, line: 31, size: 128, elements: !123)
!122 = !DIFile(filename: "./src/aio/../utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!123 = !{!124, !130}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !121, file: !122, line: 32, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !122, line: 26, size: 128, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !122, line: 27, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !126, file: !122, line: 28, baseType: !125, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !121, file: !122, line: 33, baseType: !125, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !20, file: !21, line: 61, baseType: !132, size: 192, offset: 1216)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !133, line: 25, size: 192, elements: !134)
!133 = !DIFile(filename: "./src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!134 = !{!135, !142, !143}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !132, file: !133, line: 27, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !138, line: 28, baseType: !139)
!138 = !DIFile(filename: "./src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !132, file: !133, line: 28, baseType: !141, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !132, file: !133, line: 29, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !29, line: 27, baseType: !118)
!145 = !{}
!146 = !DILocalVariable(name: "self", arg: 1, scope: !10, file: !11, line: 28, type: !15)
!147 = !DILocation(line: 28, column: 35, scope: !10)
!148 = !DILocation(line: 30, column: 29, scope: !10)
!149 = !DILocation(line: 30, column: 35, scope: !10)
!150 = !DILocation(line: 30, column: 12, scope: !10)
!151 = !DILocation(line: 30, column: 5, scope: !10)
!152 = distinct !DISubprogram(name: "nn_pool_term", scope: !11, file: !11, line: 33, type: !153, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !145)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !15}
!155 = !DILocalVariable(name: "self", arg: 1, scope: !152, file: !11, line: 33, type: !15)
!156 = !DILocation(line: 33, column: 36, scope: !152)
!157 = !DILocation(line: 35, column: 22, scope: !152)
!158 = !DILocation(line: 35, column: 28, scope: !152)
!159 = !DILocation(line: 35, column: 5, scope: !152)
!160 = !DILocation(line: 36, column: 1, scope: !152)
!161 = distinct !DISubprogram(name: "nn_pool_choose_worker", scope: !11, file: !11, line: 38, type: !162, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !145)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !15}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!165 = !DILocalVariable(name: "self", arg: 1, scope: !161, file: !11, line: 38, type: !15)
!166 = !DILocation(line: 38, column: 58, scope: !161)
!167 = !DILocation(line: 40, column: 13, scope: !161)
!168 = !DILocation(line: 40, column: 19, scope: !161)
!169 = !DILocation(line: 40, column: 5, scope: !161)
