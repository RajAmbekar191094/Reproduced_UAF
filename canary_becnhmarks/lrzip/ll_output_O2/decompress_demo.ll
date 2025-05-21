; ModuleID = './decompress_demo.c'
source_filename = "./decompress_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"Usage: %s file [outfile]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"./decompress_demo.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"lrzip_filename_add(lr, argv[1])\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lrzip_run(lr)\00", align 1
@suffix_me.buf = internal global [4096 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = add i32 %0, -4
  %4 = icmp ult i32 %3, -2
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = load ptr, ptr %1, align 8, !tbaa !5
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef %7) #6
  tail call void @exit(i32 noundef 1) #7
  unreachable

9:                                                ; preds = %2
  %10 = tail call ptr @lrzip_new(i32 noundef 3) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 49, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #7
  unreachable

13:                                               ; preds = %9
  tail call void @lrzip_config_env(ptr noundef nonnull %10) #8
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = tail call zeroext i1 @lrzip_filename_add(ptr noundef nonnull %10, ptr noundef %15) #8
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #7
  unreachable

18:                                               ; preds = %13
  %19 = icmp eq i32 %0, 2
  br i1 %19, label %20, label %36

20:                                               ; preds = %18
  %21 = load ptr, ptr %14, align 8, !tbaa !5
  %22 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %21, i32 noundef 46) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #9
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = ptrtoint ptr %22 to i64
  %30 = ptrtoint ptr %21 to i64
  %31 = sub i64 %29, %30
  %32 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) @suffix_me.buf, ptr noundef %21, i64 noundef %31) #8
  br label %35

33:                                               ; preds = %24, %20
  %34 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @suffix_me.buf, ptr noundef nonnull dereferenceable(1) %21) #8
  br label %35

35:                                               ; preds = %28, %33
  tail call void @lrzip_outfilename_set(ptr noundef nonnull %10, ptr noundef nonnull @suffix_me.buf) #8
  br label %39

36:                                               ; preds = %18
  %37 = getelementptr inbounds ptr, ptr %1, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  tail call void @lrzip_outfilename_set(ptr noundef nonnull %10, ptr noundef %38) #8
  br label %39

39:                                               ; preds = %36, %35
  %40 = tail call zeroext i1 @lrzip_run(ptr noundef nonnull %10) #8
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #7
  unreachable

42:                                               ; preds = %39
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

declare ptr @lrzip_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lrzip_config_env(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @lrzip_filename_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lrzip_outfilename_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @lrzip_run(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
