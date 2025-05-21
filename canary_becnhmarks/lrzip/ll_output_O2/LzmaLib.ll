; ModuleID = './lzma/C/LzmaLib.c'
source_filename = "./lzma/C/LzmaLib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { ptr, ptr }
%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@g_Alloc = internal global %struct.ISzAlloc { ptr @SzAlloc, ptr @SzFree }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #0 {
  %14 = alloca %struct._CLzmaEncProps, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %14) #3
  call void @LzmaEncProps_Init(ptr noundef nonnull %14) #3
  store i32 %6, ptr %14, align 4, !tbaa !5
  %15 = getelementptr inbounds %struct._CLzmaEncProps, ptr %14, i64 0, i32 1
  store i32 %7, ptr %15, align 4, !tbaa !10
  %16 = getelementptr inbounds %struct._CLzmaEncProps, ptr %14, i64 0, i32 2
  store i32 %8, ptr %16, align 4, !tbaa !11
  %17 = getelementptr inbounds %struct._CLzmaEncProps, ptr %14, i64 0, i32 3
  store i32 %9, ptr %17, align 4, !tbaa !12
  %18 = getelementptr inbounds %struct._CLzmaEncProps, ptr %14, i64 0, i32 4
  store i32 %10, ptr %18, align 4, !tbaa !13
  %19 = getelementptr inbounds %struct._CLzmaEncProps, ptr %14, i64 0, i32 6
  store i32 %11, ptr %19, align 4, !tbaa !14
  %20 = getelementptr inbounds %struct._CLzmaEncProps, ptr %14, i64 0, i32 11
  store i32 %12, ptr %20, align 4, !tbaa !15
  %21 = call i32 @LzmaEncode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %14, ptr noundef %4, ptr noundef %5, i32 noundef 0, ptr noundef null, ptr noundef nonnull @g_Alloc, ptr noundef nonnull @g_Alloc) #3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %14) #3
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @LzmaEncProps_Init(ptr noundef) local_unnamed_addr #2

declare i32 @LzmaEncode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaUncompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  %8 = trunc i64 %5 to i32
  %9 = call i32 @LzmaDecode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %8, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull @g_Alloc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  ret i32 %9
}

declare i32 @LzmaDecode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @SzAlloc(ptr nocapture readnone %0, i64 noundef %1) #0 {
  %3 = tail call ptr @MyAlloc(i64 noundef %1) #3
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @SzFree(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @MyFree(ptr noundef %1) #3
  ret void
}

declare ptr @MyAlloc(i64 noundef) local_unnamed_addr #2

declare void @MyFree(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_CLzmaEncProps", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 16}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 44}
