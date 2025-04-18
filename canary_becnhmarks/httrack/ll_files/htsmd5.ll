; ModuleID = 'src/htsmd5.c'
source_filename = "src/htsmd5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { %union.anon, [4 x i32], [2 x i32], i32 }
%union.anon = type { [16 x i32] }
%union.anon.0 = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [65 x i8] c"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\00", align 1, !dbg !0
@md5selftest.str1 = internal constant [45 x i8] c"The quick brown fox jumps over the lazy dog\0A\00", align 16, !dbg !7
@md5selftest.str1m = internal constant [33 x i8] c"37c4b87edffc5d198ff5a185cee7ee09\00", align 16, !dbg !20
@md5selftest.str2 = internal constant [6 x i8] c"Hello\00", align 1, !dbg !26
@md5selftest.str2m = internal constant [33 x i8] c"8b1a9953c4611296a827abf8c47804d7\00", align 16, !dbg !31
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"error: md5 selftest failed: '%s' => '%s' (!= '%s')\0A\00", align 1, !dbg !33
@.str.2 = private unnamed_addr constant [24 x i8] c"! \22md5 selftest failed\22\00", align 1, !dbg !38
@.str.3 = private unnamed_addr constant [13 x i8] c"src/htsmd5.c\00", align 1, !dbg !43
@__PRETTY_FUNCTION__.md5selftest = private unnamed_addr constant [23 x i8] c"void md5selftest(void)\00", align 1, !dbg !48
@.str.4 = private unnamed_addr constant [24 x i8] c"md5 selftest succeeded\0A\00", align 1, !dbg !53

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @domd5mem(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !67 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.MD5Context, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !75, metadata !DIExpression()), !dbg !76
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !77, metadata !DIExpression()), !dbg !78
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !79, metadata !DIExpression()), !dbg !80
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata ptr %9, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 1, ptr %9, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %10, metadata !85, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata ptr %11, metadata !90, metadata !DIExpression()), !dbg !113
  %12 = load i8, ptr %9, align 4, !dbg !114
  %13 = sext i8 %12 to i32, !dbg !114
  call void @MD5Init(ptr noundef %11, i32 noundef %13), !dbg !115
  %14 = load ptr, ptr %5, align 8, !dbg !116
  %15 = load i64, ptr %6, align 8, !dbg !117
  %16 = trunc i64 %15 to i32, !dbg !118
  call void @MD5Update(ptr noundef %11, ptr noundef %14, i32 noundef %16), !dbg !119
  %17 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !120
  call void @MD5Final(ptr noundef %17, ptr noundef %11), !dbg !121
  %18 = load i32, ptr %8, align 4, !dbg !122
  %19 = icmp ne i32 %18, 0, !dbg !122
  br i1 %19, label %23, label %20, !dbg !124

20:                                               ; preds = %4
  %21 = load ptr, ptr %7, align 8, !dbg !125
  %22 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 16 %22, i64 16, i1 false), !dbg !127
  br label %74, !dbg !128

23:                                               ; preds = %4
  %24 = load ptr, ptr %7, align 8, !dbg !129
  %25 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !131
  %26 = load i8, ptr %25, align 16, !dbg !131
  %27 = zext i8 %26 to i32, !dbg !131
  %28 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 1, !dbg !132
  %29 = load i8, ptr %28, align 1, !dbg !132
  %30 = zext i8 %29 to i32, !dbg !132
  %31 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 2, !dbg !133
  %32 = load i8, ptr %31, align 2, !dbg !133
  %33 = zext i8 %32 to i32, !dbg !133
  %34 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 3, !dbg !134
  %35 = load i8, ptr %34, align 1, !dbg !134
  %36 = zext i8 %35 to i32, !dbg !134
  %37 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 4, !dbg !135
  %38 = load i8, ptr %37, align 4, !dbg !135
  %39 = zext i8 %38 to i32, !dbg !135
  %40 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 5, !dbg !136
  %41 = load i8, ptr %40, align 1, !dbg !136
  %42 = zext i8 %41 to i32, !dbg !136
  %43 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 6, !dbg !137
  %44 = load i8, ptr %43, align 2, !dbg !137
  %45 = zext i8 %44 to i32, !dbg !137
  %46 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 7, !dbg !138
  %47 = load i8, ptr %46, align 1, !dbg !138
  %48 = zext i8 %47 to i32, !dbg !138
  %49 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 8, !dbg !139
  %50 = load i8, ptr %49, align 8, !dbg !139
  %51 = zext i8 %50 to i32, !dbg !139
  %52 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 9, !dbg !140
  %53 = load i8, ptr %52, align 1, !dbg !140
  %54 = zext i8 %53 to i32, !dbg !140
  %55 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 10, !dbg !141
  %56 = load i8, ptr %55, align 2, !dbg !141
  %57 = zext i8 %56 to i32, !dbg !141
  %58 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 11, !dbg !142
  %59 = load i8, ptr %58, align 1, !dbg !142
  %60 = zext i8 %59 to i32, !dbg !142
  %61 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 12, !dbg !143
  %62 = load i8, ptr %61, align 4, !dbg !143
  %63 = zext i8 %62 to i32, !dbg !143
  %64 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 13, !dbg !144
  %65 = load i8, ptr %64, align 1, !dbg !144
  %66 = zext i8 %65 to i32, !dbg !144
  %67 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 14, !dbg !145
  %68 = load i8, ptr %67, align 2, !dbg !145
  %69 = zext i8 %68 to i32, !dbg !145
  %70 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 15, !dbg !146
  %71 = load i8, ptr %70, align 1, !dbg !146
  %72 = zext i8 %71 to i32, !dbg !146
  %73 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %24, ptr noundef @.str, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %54, i32 noundef %57, i32 noundef %60, i32 noundef %63, i32 noundef %66, i32 noundef %69, i32 noundef %72) #8, !dbg !147
  br label %74

74:                                               ; preds = %23, %20
  ret i32 0, !dbg !148
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @MD5Init(ptr noundef, i32 noundef) #2

declare void @MD5Update(ptr noundef, ptr noundef, i32 noundef) #2

declare void @MD5Final(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @md5sum32(ptr noundef %0) #0 !dbg !149 {
  %2 = alloca ptr, align 8
  %3 = alloca %union.anon.0, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata ptr %3, metadata !154, metadata !DIExpression()), !dbg !160
  %4 = load ptr, ptr %2, align 8, !dbg !161
  %5 = load ptr, ptr %2, align 8, !dbg !162
  %6 = call i64 @strlen(ptr noundef %5) #9, !dbg !163
  %7 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 0, !dbg !164
  %8 = call i32 @domd5mem(ptr noundef %4, i64 noundef %6, ptr noundef %7, i32 noundef 0), !dbg !165
  %9 = load i64, ptr %3, align 8, !dbg !166
  ret i64 %9, !dbg !167
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5selftest() #0 !dbg !9 {
  %1 = alloca [64 x i8], align 16
  call void @llvm.dbg.declare(metadata ptr %1, metadata !168, metadata !DIExpression()), !dbg !170
  br label %2, !dbg !171

2:                                                ; preds = %0
  %3 = getelementptr inbounds [64 x i8], ptr %1, i64 0, i64 0, !dbg !172
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 -52, i64 64, i1 false), !dbg !172
  %4 = getelementptr inbounds [64 x i8], ptr %1, i64 0, i64 0, !dbg !172
  %5 = call i32 @domd5mem(ptr noundef @md5selftest.str1, i64 noundef 44, ptr noundef %4, i32 noundef 1), !dbg !172
  %6 = getelementptr inbounds [64 x i8], ptr %1, i64 0, i64 0, !dbg !174
  %7 = call i32 @strcmp(ptr noundef %6, ptr noundef @md5selftest.str1m) #9, !dbg !174
  %8 = icmp ne i32 %7, 0, !dbg !174
  br i1 %8, label %9, label %13, !dbg !172

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !dbg !176
  %11 = getelementptr inbounds [64 x i8], ptr %1, i64 0, i64 0, !dbg !176
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.1, ptr noundef @md5selftest.str1, ptr noundef %11, ptr noundef @md5selftest.str1m), !dbg !176
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 99, ptr noundef @__PRETTY_FUNCTION__.md5selftest) #10, !dbg !178
  unreachable, !dbg !178

13:                                               ; preds = %2
  br label %14, !dbg !172

14:                                               ; preds = %13
  br label %15, !dbg !181

15:                                               ; preds = %14
  %16 = getelementptr inbounds [64 x i8], ptr %1, i64 0, i64 0, !dbg !182
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 -52, i64 64, i1 false), !dbg !182
  %17 = getelementptr inbounds [64 x i8], ptr %1, i64 0, i64 0, !dbg !182
  %18 = call i32 @domd5mem(ptr noundef @md5selftest.str2, i64 noundef 5, ptr noundef %17, i32 noundef 1), !dbg !182
  %19 = getelementptr inbounds [64 x i8], ptr %1, i64 0, i64 0, !dbg !184
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @md5selftest.str2m) #9, !dbg !184
  %21 = icmp ne i32 %20, 0, !dbg !184
  br i1 %21, label %22, label %26, !dbg !182

22:                                               ; preds = %15
  %23 = load ptr, ptr @stderr, align 8, !dbg !186
  %24 = getelementptr inbounds [64 x i8], ptr %1, i64 0, i64 0, !dbg !186
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.1, ptr noundef @md5selftest.str2, ptr noundef %24, ptr noundef @md5selftest.str2m), !dbg !186
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 100, ptr noundef @__PRETTY_FUNCTION__.md5selftest) #10, !dbg !188
  unreachable, !dbg !188

26:                                               ; preds = %15
  br label %27, !dbg !182

27:                                               ; preds = %26
  %28 = load ptr, ptr @stderr, align 8, !dbg !191
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.4), !dbg !192
  ret void, !dbg !193
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/htsmd5.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "1f6fc3855c464c84df6c5893483a9cfe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 65)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "str1", scope: !9, file: !2, line: 84, type: !56, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "md5selftest", scope: !2, file: !2, line: 83, type: !10, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !55)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !13, globals: !19, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14, !15, !18}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!0, !7, !20, !26, !31, !33, !38, !43, !48, !53}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "str1m", scope: !9, file: !2, line: 85, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 264, elements: !24)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !{!25}
!25 = !DISubrange(count: 33)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "str2", scope: !9, file: !2, line: 86, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 48, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 6)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "str2m", scope: !9, file: !2, line: 87, type: !22, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 52)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 24)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 13)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 184, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 23)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !40, isLocal: true, isDefinition: true)
!55 = !{}
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 360, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 45)
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 16.0.0"}
!67 = distinct !DISubprogram(name: "domd5mem", scope: !2, file: !2, line: 49, type: !68, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !55)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !71, !72, !14, !70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!74 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocalVariable(name: "buf", arg: 1, scope: !67, file: !2, line: 49, type: !71)
!76 = !DILocation(line: 49, column: 26, scope: !67)
!77 = !DILocalVariable(name: "len", arg: 2, scope: !67, file: !2, line: 49, type: !72)
!78 = !DILocation(line: 49, column: 38, scope: !67)
!79 = !DILocalVariable(name: "digest", arg: 3, scope: !67, file: !2, line: 49, type: !14)
!80 = !DILocation(line: 49, column: 49, scope: !67)
!81 = !DILocalVariable(name: "asAscii", arg: 4, scope: !67, file: !2, line: 49, type: !70)
!82 = !DILocation(line: 49, column: 61, scope: !67)
!83 = !DILocalVariable(name: "endian", scope: !67, file: !2, line: 50, type: !70)
!84 = !DILocation(line: 50, column: 7, scope: !67)
!85 = !DILocalVariable(name: "bindigest", scope: !67, file: !2, line: 51, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 16)
!89 = !DILocation(line: 51, column: 17, scope: !67)
!90 = !DILocalVariable(name: "ctx", scope: !67, file: !2, line: 52, type: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MD5Context", file: !92, line: 20, size: 736, elements: !93)
!92 = !DIFile(filename: "./src/md5.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "99edca6f5ad4d28f68cfaf61cbdbe62b")
!93 = !{!94, !104, !108, !112}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !91, file: !92, line: 24, baseType: !95, size: 512)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !92, line: 21, size: 512, elements: !96)
!96 = !{!97, !101}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ui8", scope: !95, file: !92, line: 22, baseType: !98, size: 512)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ui32", scope: !95, file: !92, line: 23, baseType: !102, size: 512)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 512, elements: !87)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !92, line: 13, baseType: !18)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !91, file: !92, line: 25, baseType: !105, size: 128, offset: 512)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !91, file: !92, line: 26, baseType: !109, size: 64, offset: 640)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 2)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "doByteReverse", scope: !91, file: !92, line: 27, baseType: !70, size: 32, offset: 704)
!113 = !DILocation(line: 52, column: 21, scope: !67)
!114 = !DILocation(line: 54, column: 17, scope: !67)
!115 = !DILocation(line: 54, column: 3, scope: !67)
!116 = !DILocation(line: 55, column: 43, scope: !67)
!117 = !DILocation(line: 55, column: 63, scope: !67)
!118 = !DILocation(line: 55, column: 48, scope: !67)
!119 = !DILocation(line: 55, column: 3, scope: !67)
!120 = !DILocation(line: 56, column: 12, scope: !67)
!121 = !DILocation(line: 56, column: 3, scope: !67)
!122 = !DILocation(line: 58, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !67, file: !2, line: 58, column: 7)
!124 = !DILocation(line: 58, column: 7, scope: !67)
!125 = !DILocation(line: 59, column: 12, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !2, line: 58, column: 17)
!127 = !DILocation(line: 59, column: 5, scope: !126)
!128 = !DILocation(line: 60, column: 3, scope: !126)
!129 = !DILocation(line: 61, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !123, file: !2, line: 60, column: 10)
!131 = !DILocation(line: 63, column: 37, scope: !130)
!132 = !DILocation(line: 63, column: 51, scope: !130)
!133 = !DILocation(line: 63, column: 65, scope: !130)
!134 = !DILocation(line: 64, column: 13, scope: !130)
!135 = !DILocation(line: 64, column: 27, scope: !130)
!136 = !DILocation(line: 64, column: 41, scope: !130)
!137 = !DILocation(line: 64, column: 55, scope: !130)
!138 = !DILocation(line: 65, column: 13, scope: !130)
!139 = !DILocation(line: 65, column: 27, scope: !130)
!140 = !DILocation(line: 65, column: 41, scope: !130)
!141 = !DILocation(line: 65, column: 55, scope: !130)
!142 = !DILocation(line: 66, column: 13, scope: !130)
!143 = !DILocation(line: 66, column: 28, scope: !130)
!144 = !DILocation(line: 66, column: 43, scope: !130)
!145 = !DILocation(line: 66, column: 58, scope: !130)
!146 = !DILocation(line: 67, column: 13, scope: !130)
!147 = !DILocation(line: 61, column: 5, scope: !130)
!148 = !DILocation(line: 70, column: 3, scope: !67)
!149 = distinct !DISubprogram(name: "md5sum32", scope: !2, file: !2, line: 73, type: !150, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !55)
!150 = !DISubroutineType(types: !151)
!151 = !{!74, !71}
!152 = !DILocalVariable(name: "buff", arg: 1, scope: !149, file: !2, line: 73, type: !71)
!153 = !DILocation(line: 73, column: 40, scope: !149)
!154 = !DILocalVariable(name: "u", scope: !149, file: !2, line: 77, type: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !2, line: 74, size: 128, elements: !156)
!156 = !{!157, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "md5digest", scope: !155, file: !2, line: 75, baseType: !158, size: 128)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !87)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !155, file: !2, line: 76, baseType: !74, size: 64)
!160 = !DILocation(line: 77, column: 5, scope: !149)
!161 = !DILocation(line: 79, column: 12, scope: !149)
!162 = !DILocation(line: 79, column: 25, scope: !149)
!163 = !DILocation(line: 79, column: 18, scope: !149)
!164 = !DILocation(line: 79, column: 32, scope: !149)
!165 = !DILocation(line: 79, column: 3, scope: !149)
!166 = !DILocation(line: 80, column: 12, scope: !149)
!167 = !DILocation(line: 80, column: 3, scope: !149)
!168 = !DILocalVariable(name: "digest", scope: !9, file: !2, line: 88, type: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !99)
!170 = !DILocation(line: 88, column: 8, scope: !9)
!171 = !DILocation(line: 99, column: 1, scope: !9)
!172 = !DILocation(line: 99, column: 1, scope: !173)
!173 = distinct !DILexicalBlock(scope: !9, file: !2, line: 99, column: 1)
!174 = !DILocation(line: 99, column: 1, scope: !175)
!175 = distinct !DILexicalBlock(scope: !173, file: !2, line: 99, column: 1)
!176 = !DILocation(line: 99, column: 1, scope: !177)
!177 = distinct !DILexicalBlock(scope: !175, file: !2, line: 99, column: 1)
!178 = !DILocation(line: 99, column: 1, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 99, column: 1)
!180 = distinct !DILexicalBlock(scope: !177, file: !2, line: 99, column: 1)
!181 = !DILocation(line: 100, column: 1, scope: !9)
!182 = !DILocation(line: 100, column: 1, scope: !183)
!183 = distinct !DILexicalBlock(scope: !9, file: !2, line: 100, column: 1)
!184 = !DILocation(line: 100, column: 1, scope: !185)
!185 = distinct !DILexicalBlock(scope: !183, file: !2, line: 100, column: 1)
!186 = !DILocation(line: 100, column: 1, scope: !187)
!187 = distinct !DILexicalBlock(scope: !185, file: !2, line: 100, column: 1)
!188 = !DILocation(line: 100, column: 1, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !2, line: 100, column: 1)
!190 = distinct !DILexicalBlock(scope: !187, file: !2, line: 100, column: 1)
!191 = !DILocation(line: 102, column: 11, scope: !9)
!192 = !DILocation(line: 102, column: 3, scope: !9)
!193 = !DILocation(line: 103, column: 1, scope: !9)
