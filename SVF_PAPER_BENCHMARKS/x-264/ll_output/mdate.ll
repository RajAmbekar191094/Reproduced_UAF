; ModuleID = 'common/mdate.c'
source_filename = "common/mdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @x264_mdate() local_unnamed_addr #0 !dbg !16 {
  %1 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #4, !dbg !28
  call void @llvm.dbg.declare(metadata ptr %1, metadata !20, metadata !DIExpression()), !dbg !29
  %2 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #4, !dbg !30
  %3 = load i64, ptr %1, align 8, !dbg !31, !tbaa !32
  %4 = mul nsw i64 %3, 1000000, !dbg !37
  %5 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1, !dbg !38
  %6 = load i64, ptr %5, align 8, !dbg !38, !tbaa !39
  %7 = add nsw i64 %4, %6, !dbg !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #4, !dbg !41
  ret i64 %7, !dbg !42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare !dbg !43 noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "common/mdate.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "69d7d53f55092a34634f8b0151272e84")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !5, line: 27, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !7, line: 44, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!8 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"clang version 16.0.0"}
!16 = distinct !DISubprogram(name: "x264_mdate", scope: !1, file: !1, line: 32, type: !17, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!4}
!19 = !{!20}
!20 = !DILocalVariable(name: "tv_date", scope: !16, file: !1, line: 35, type: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !22, line: 8, size: 128, elements: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !21, file: !22, line: 14, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !7, line: 160, baseType: !8)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !21, file: !22, line: 15, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !7, line: 162, baseType: !8)
!28 = !DILocation(line: 35, column: 5, scope: !16)
!29 = !DILocation(line: 35, column: 20, scope: !16)
!30 = !DILocation(line: 37, column: 5, scope: !16)
!31 = !DILocation(line: 38, column: 31, scope: !16)
!32 = !{!33, !34, i64 0}
!33 = !{!"timeval", !34, i64 0, !34, i64 8}
!34 = !{!"long", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 38, column: 38, scope: !16)
!38 = !DILocation(line: 38, column: 68, scope: !16)
!39 = !{!33, !34, i64 8}
!40 = !DILocation(line: 38, column: 48, scope: !16)
!41 = !DILocation(line: 44, column: 1, scope: !16)
!42 = !DILocation(line: 38, column: 5, scope: !16)
!43 = !DISubprogram(name: "gettimeofday", scope: !44, file: !44, line: 67, type: !45, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !51)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "b36e339815f62ba7208e5294180e353c")
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !48, !50}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3)
!51 = !{}
