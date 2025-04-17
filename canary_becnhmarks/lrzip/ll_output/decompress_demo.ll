; ModuleID = './decompress_demo.c'
source_filename = "./decompress_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"Usage: %s file [outfile]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"./decompress_demo.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"lrzip_filename_add(lr, argv[1])\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lrzip_run(lr)\00", align 1
@suffix_me.buf = internal global [4096 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %7 = load i32, ptr %4, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load ptr, ptr @stderr, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 0
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef %16)
  call void @exit(i32 noundef 1) #5
  unreachable

18:                                               ; preds = %9, %2
  %19 = call ptr @lrzip_new(i32 noundef 3)
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %24

23:                                               ; preds = %18
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 49, ptr noundef @__PRETTY_FUNCTION__.main) #5
  unreachable

24:                                               ; preds = %22
  %25 = load ptr, ptr %6, align 8
  call void @lrzip_config_env(ptr noundef %25)
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  %30 = call zeroext i1 @lrzip_filename_add(ptr noundef %26, ptr noundef %29)
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %33

32:                                               ; preds = %24
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 51, ptr noundef @__PRETTY_FUNCTION__.main) #5
  unreachable

33:                                               ; preds = %31
  %34 = load i32, ptr %4, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8
  %41 = call ptr @suffix_me(ptr noundef %40)
  call void @lrzip_outfilename_set(ptr noundef %37, ptr noundef %41)
  br label %47

42:                                               ; preds = %33
  %43 = load ptr, ptr %6, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  call void @lrzip_outfilename_set(ptr noundef %43, ptr noundef %46)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load ptr, ptr %6, align 8
  %49 = call zeroext i1 @lrzip_run(ptr noundef %48)
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %52

51:                                               ; preds = %47
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 56, ptr noundef @__PRETTY_FUNCTION__.main) #5
  unreachable

52:                                               ; preds = %50
  ret i32 0
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

declare ptr @lrzip_new(i32 noundef) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @lrzip_config_env(ptr noundef) #1

declare zeroext i1 @lrzip_filename_add(ptr noundef, ptr noundef) #1

declare void @lrzip_outfilename_set(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @suffix_me(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call ptr @strrchr(ptr noundef %4, i32 noundef 46) #6
  store ptr %5, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = call i64 @strlen(ptr noundef %10) #6
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = call ptr @strncat(ptr noundef @suffix_me.buf, ptr noundef %14, i64 noundef %19) #7
  br label %24

21:                                               ; preds = %8, %1
  %22 = load ptr, ptr %2, align 8
  %23 = call ptr @strcat(ptr noundef @suffix_me.buf, ptr noundef %22) #7
  br label %24

24:                                               ; preds = %21, %13
  ret ptr @suffix_me.buf
}

declare zeroext i1 @lrzip_run(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0"}
