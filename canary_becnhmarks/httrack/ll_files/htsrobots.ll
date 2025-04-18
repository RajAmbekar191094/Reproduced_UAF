; ModuleID = 'src/htsrobots.c'
source_filename = "src/htsrobots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.robots_wizard = type { [128 x i8], [4096 x i8], ptr }

@.str = private unnamed_addr constant [49 x i8] c"overflow while copying 'data' to 'robots->token'\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"src/htsrobots.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [52 x i8] c"overflow while copying 'adr' to 'robots->next->adr'\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [55 x i8] c"overflow while copying 'data' to 'robots->next->token'\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [17 x i8] c"sizeof_dest != 0\00", align 1, !dbg !22
@stderr = external global ptr, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"%s failed at %s:%d\0A\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [15 x i8] c"source != NULL\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [21 x i8] c"size < sizeof_source\00", align 1, !dbg !38

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkrobots(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !75 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [250 x i8], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !81, metadata !DIExpression()), !dbg !82
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !83, metadata !DIExpression()), !dbg !84
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !85, metadata !DIExpression()), !dbg !86
  br label %10, !dbg !87

10:                                               ; preds = %96, %3
  %11 = load ptr, ptr %5, align 8, !dbg !88
  %12 = icmp ne ptr %11, null, !dbg !87
  br i1 %12, label %13, label %100, !dbg !87

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8, !dbg !89
  %15 = getelementptr inbounds %struct.robots_wizard, ptr %14, i32 0, i32 0, !dbg !89
  %16 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !89
  %17 = call i64 @strlen(ptr noundef %16) #8, !dbg !89
  %18 = load ptr, ptr %6, align 8, !dbg !89
  %19 = call i64 @strlen(ptr noundef %18) #8, !dbg !89
  %20 = icmp ne i64 %17, %19, !dbg !89
  br i1 %20, label %21, label %22, !dbg !92

21:                                               ; preds = %13
  br i1 false, label %29, label %96, !dbg !89

22:                                               ; preds = %13
  %23 = load ptr, ptr %5, align 8, !dbg !89
  %24 = getelementptr inbounds %struct.robots_wizard, ptr %23, i32 0, i32 0, !dbg !89
  %25 = getelementptr inbounds [128 x i8], ptr %24, i64 0, i64 0, !dbg !89
  %26 = load ptr, ptr %6, align 8, !dbg !89
  %27 = call i32 @strfield(ptr noundef %25, ptr noundef %26), !dbg !89
  %28 = icmp ne i32 %27, 0, !dbg !89
  br i1 %28, label %29, label %96, !dbg !92

29:                                               ; preds = %22, %21
  %30 = load ptr, ptr %7, align 8, !dbg !93
  %31 = getelementptr inbounds i8, ptr %30, i64 0, !dbg !93
  %32 = load i8, ptr %31, align 1, !dbg !93
  %33 = icmp ne i8 %32, 0, !dbg !93
  br i1 %33, label %34, label %94, !dbg !96

34:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata ptr %8, metadata !97, metadata !DIExpression()), !dbg !99
  store i32 0, ptr %8, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %9, metadata !100, metadata !DIExpression()), !dbg !104
  %35 = load ptr, ptr %5, align 8, !dbg !105
  %36 = getelementptr inbounds %struct.robots_wizard, ptr %35, i32 0, i32 1, !dbg !105
  %37 = getelementptr inbounds [4096 x i8], ptr %36, i64 0, i64 0, !dbg !105
  %38 = icmp ne ptr %37, null, !dbg !105
  br i1 %38, label %39, label %93, !dbg !105

39:                                               ; preds = %34
  %40 = load ptr, ptr %5, align 8, !dbg !105
  %41 = getelementptr inbounds %struct.robots_wizard, ptr %40, i32 0, i32 1, !dbg !105
  %42 = getelementptr inbounds [4096 x i8], ptr %41, i64 0, i64 0, !dbg !105
  %43 = load i8, ptr %42, align 8, !dbg !105
  %44 = sext i8 %43 to i32, !dbg !105
  %45 = icmp ne i32 %44, 0, !dbg !105
  br i1 %45, label %46, label %93, !dbg !107

46:                                               ; preds = %39
  br label %47, !dbg !108

47:                                               ; preds = %90, %46
  %48 = load ptr, ptr %5, align 8, !dbg !110
  %49 = getelementptr inbounds %struct.robots_wizard, ptr %48, i32 0, i32 1, !dbg !112
  %50 = getelementptr inbounds [4096 x i8], ptr %49, i64 0, i64 0, !dbg !110
  %51 = load i32, ptr %8, align 4, !dbg !113
  %52 = sext i32 %51 to i64, !dbg !114
  %53 = getelementptr inbounds i8, ptr %50, i64 %52, !dbg !114
  %54 = getelementptr inbounds [250 x i8], ptr %9, i64 0, i64 0, !dbg !115
  %55 = call i32 @binput(ptr noundef %53, ptr noundef %54, i32 noundef 200), !dbg !116
  %56 = load i32, ptr %8, align 4, !dbg !117
  %57 = add nsw i32 %56, %55, !dbg !117
  store i32 %57, ptr %8, align 4, !dbg !117
  %58 = getelementptr inbounds [250 x i8], ptr %9, i64 0, i64 0, !dbg !118
  %59 = load i8, ptr %58, align 16, !dbg !118
  %60 = sext i8 %59 to i32, !dbg !118
  %61 = icmp eq i32 %60, 47, !dbg !120
  br i1 %61, label %62, label %69, !dbg !121

62:                                               ; preds = %47
  %63 = load ptr, ptr %7, align 8, !dbg !122
  %64 = getelementptr inbounds [250 x i8], ptr %9, i64 0, i64 0, !dbg !125
  %65 = call i32 @strfield(ptr noundef %63, ptr noundef %64), !dbg !126
  %66 = icmp ne i32 %65, 0, !dbg !126
  br i1 %66, label %67, label %68, !dbg !127

67:                                               ; preds = %62
  store i32 -1, ptr %4, align 4, !dbg !128
  br label %101, !dbg !128

68:                                               ; preds = %62
  br label %76, !dbg !130

69:                                               ; preds = %47
  %70 = load ptr, ptr %7, align 8, !dbg !131
  %71 = getelementptr inbounds [250 x i8], ptr %9, i64 0, i64 0, !dbg !134
  %72 = call ptr @strstrcase(ptr noundef %70, ptr noundef %71), !dbg !135
  %73 = icmp ne ptr %72, null, !dbg !135
  br i1 %73, label %74, label %75, !dbg !136

74:                                               ; preds = %69
  store i32 -1, ptr %4, align 4, !dbg !137
  br label %101, !dbg !137

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %68
  br label %77, !dbg !139

77:                                               ; preds = %76
  %78 = getelementptr inbounds [250 x i8], ptr %9, i64 0, i64 0, !dbg !140
  %79 = load i8, ptr %78, align 16, !dbg !140
  %80 = sext i8 %79 to i32, !dbg !140
  %81 = icmp ne i32 %80, 0, !dbg !140
  br i1 %81, label %82, label %90, !dbg !141

82:                                               ; preds = %77
  %83 = load i32, ptr %8, align 4, !dbg !142
  %84 = load ptr, ptr %5, align 8, !dbg !143
  %85 = getelementptr inbounds %struct.robots_wizard, ptr %84, i32 0, i32 1, !dbg !144
  %86 = getelementptr inbounds [4096 x i8], ptr %85, i64 0, i64 0, !dbg !143
  %87 = call i64 @strlen(ptr noundef %86) #8, !dbg !145
  %88 = trunc i64 %87 to i32, !dbg !146
  %89 = icmp slt i32 %83, %88, !dbg !147
  br label %90

90:                                               ; preds = %82, %77
  %91 = phi i1 [ false, %77 ], [ %89, %82 ], !dbg !148
  br i1 %91, label %47, label %92, !dbg !139, !llvm.loop !149

92:                                               ; preds = %90
  br label %93, !dbg !152

93:                                               ; preds = %92, %39, %34
  br label %95, !dbg !153

94:                                               ; preds = %29
  store i32 -1, ptr %4, align 4, !dbg !154
  br label %101, !dbg !154

95:                                               ; preds = %93
  br label %96, !dbg !156

96:                                               ; preds = %95, %22, %21
  %97 = load ptr, ptr %5, align 8, !dbg !157
  %98 = getelementptr inbounds %struct.robots_wizard, ptr %97, i32 0, i32 2, !dbg !158
  %99 = load ptr, ptr %98, align 8, !dbg !158
  store ptr %99, ptr %5, align 8, !dbg !159
  br label %10, !dbg !87, !llvm.loop !160

100:                                              ; preds = %10
  store i32 0, ptr %4, align 4, !dbg !162
  br label %101, !dbg !162

101:                                              ; preds = %100, %94, %74, %67
  %102 = load i32, ptr %4, align 4, !dbg !163
  ret i32 %102, !dbg !163
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strfield(ptr noundef %0, ptr noundef %1) #0 !dbg !164 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !168, metadata !DIExpression()), !dbg !169
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata ptr %6, metadata !172, metadata !DIExpression()), !dbg !173
  store i32 0, ptr %6, align 4, !dbg !173
  br label %7, !dbg !174

7:                                                ; preds = %61, %2
  %8 = load ptr, ptr %4, align 8, !dbg !175
  %9 = load i8, ptr %8, align 1, !dbg !175
  %10 = sext i8 %9 to i32, !dbg !175
  %11 = icmp sge i32 %10, 97, !dbg !175
  br i1 %11, label %12, label %22, !dbg !175

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !dbg !175
  %14 = load i8, ptr %13, align 1, !dbg !175
  %15 = sext i8 %14 to i32, !dbg !175
  %16 = icmp sle i32 %15, 122, !dbg !175
  br i1 %16, label %17, label %22, !dbg !175

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8, !dbg !175
  %19 = load i8, ptr %18, align 1, !dbg !175
  %20 = sext i8 %19 to i32, !dbg !175
  %21 = sub nsw i32 %20, 32, !dbg !175
  br label %26, !dbg !175

22:                                               ; preds = %12, %7
  %23 = load ptr, ptr %4, align 8, !dbg !175
  %24 = load i8, ptr %23, align 1, !dbg !175
  %25 = sext i8 %24 to i32, !dbg !175
  br label %26, !dbg !175

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %21, %17 ], [ %25, %22 ], !dbg !175
  %28 = load ptr, ptr %5, align 8, !dbg !175
  %29 = load i8, ptr %28, align 1, !dbg !175
  %30 = sext i8 %29 to i32, !dbg !175
  %31 = icmp sge i32 %30, 97, !dbg !175
  br i1 %31, label %32, label %42, !dbg !175

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 8, !dbg !175
  %34 = load i8, ptr %33, align 1, !dbg !175
  %35 = sext i8 %34 to i32, !dbg !175
  %36 = icmp sle i32 %35, 122, !dbg !175
  br i1 %36, label %37, label %42, !dbg !175

37:                                               ; preds = %32
  %38 = load ptr, ptr %5, align 8, !dbg !175
  %39 = load i8, ptr %38, align 1, !dbg !175
  %40 = sext i8 %39 to i32, !dbg !175
  %41 = sub nsw i32 %40, 32, !dbg !175
  br label %46, !dbg !175

42:                                               ; preds = %32, %26
  %43 = load ptr, ptr %5, align 8, !dbg !175
  %44 = load i8, ptr %43, align 1, !dbg !175
  %45 = sext i8 %44 to i32, !dbg !175
  br label %46, !dbg !175

46:                                               ; preds = %42, %37
  %47 = phi i32 [ %41, %37 ], [ %45, %42 ], !dbg !175
  %48 = icmp eq i32 %27, %47, !dbg !175
  br i1 %48, label %49, label %59, !dbg !176

49:                                               ; preds = %46
  %50 = load ptr, ptr %4, align 8, !dbg !177
  %51 = load i8, ptr %50, align 1, !dbg !178
  %52 = sext i8 %51 to i32, !dbg !179
  %53 = icmp ne i32 %52, 0, !dbg !180
  br i1 %53, label %54, label %59, !dbg !181

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 8, !dbg !182
  %56 = load i8, ptr %55, align 1, !dbg !183
  %57 = sext i8 %56 to i32, !dbg !184
  %58 = icmp ne i32 %57, 0, !dbg !185
  br label %59

59:                                               ; preds = %54, %49, %46
  %60 = phi i1 [ false, %49 ], [ false, %46 ], [ %58, %54 ], !dbg !186
  br i1 %60, label %61, label %68, !dbg !174

61:                                               ; preds = %59
  %62 = load ptr, ptr %4, align 8, !dbg !187
  %63 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !187
  store ptr %63, ptr %4, align 8, !dbg !187
  %64 = load ptr, ptr %5, align 8, !dbg !189
  %65 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !189
  store ptr %65, ptr %5, align 8, !dbg !189
  %66 = load i32, ptr %6, align 4, !dbg !190
  %67 = add nsw i32 %66, 1, !dbg !190
  store i32 %67, ptr %6, align 4, !dbg !190
  br label %7, !dbg !174, !llvm.loop !191

68:                                               ; preds = %59
  %69 = load ptr, ptr %5, align 8, !dbg !193
  %70 = load i8, ptr %69, align 1, !dbg !195
  %71 = sext i8 %70 to i32, !dbg !195
  %72 = icmp eq i32 %71, 0, !dbg !196
  br i1 %72, label %73, label %75, !dbg !197

73:                                               ; preds = %68
  %74 = load i32, ptr %6, align 4, !dbg !198
  store i32 %74, ptr %3, align 4, !dbg !199
  br label %76, !dbg !199

75:                                               ; preds = %68
  store i32 0, ptr %3, align 4, !dbg !200
  br label %76, !dbg !200

76:                                               ; preds = %75, %73
  %77 = load i32, ptr %3, align 4, !dbg !201
  ret i32 %77, !dbg !201
}

declare i32 @binput(ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @strstrcase(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkrobots_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !202 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !203, metadata !DIExpression()), !dbg !204
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !205, metadata !DIExpression()), !dbg !206
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !207, metadata !DIExpression()), !dbg !208
  %8 = load ptr, ptr %6, align 8, !dbg !209
  %9 = call i64 @strlen(ptr noundef %8) #8, !dbg !211
  %10 = trunc i64 %9 to i32, !dbg !212
  %11 = sext i32 %10 to i64, !dbg !213
  %12 = icmp uge i64 %11, 126, !dbg !214
  br i1 %12, label %13, label %14, !dbg !215

13:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !216
  br label %86, !dbg !216

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8, !dbg !217
  %16 = call i64 @strlen(ptr noundef %15) #8, !dbg !219
  %17 = trunc i64 %16 to i32, !dbg !220
  %18 = sext i32 %17 to i64, !dbg !221
  %19 = icmp uge i64 %18, 4094, !dbg !222
  br i1 %19, label %20, label %21, !dbg !223

20:                                               ; preds = %14
  store i32 0, ptr %4, align 4, !dbg !224
  br label %86, !dbg !224

21:                                               ; preds = %14
  br label %22, !dbg !225

22:                                               ; preds = %81, %21
  %23 = load ptr, ptr %5, align 8, !dbg !226
  %24 = icmp ne ptr %23, null, !dbg !225
  br i1 %24, label %25, label %85, !dbg !225

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8, !dbg !227
  %27 = getelementptr inbounds %struct.robots_wizard, ptr %26, i32 0, i32 0, !dbg !227
  %28 = getelementptr inbounds [128 x i8], ptr %27, i64 0, i64 0, !dbg !227
  %29 = call i64 @strlen(ptr noundef %28) #8, !dbg !227
  %30 = load ptr, ptr %6, align 8, !dbg !227
  %31 = call i64 @strlen(ptr noundef %30) #8, !dbg !227
  %32 = icmp ne i64 %29, %31, !dbg !227
  br i1 %32, label %33, label %34, !dbg !230

33:                                               ; preds = %25
  br i1 false, label %41, label %47, !dbg !227

34:                                               ; preds = %25
  %35 = load ptr, ptr %5, align 8, !dbg !227
  %36 = getelementptr inbounds %struct.robots_wizard, ptr %35, i32 0, i32 0, !dbg !227
  %37 = getelementptr inbounds [128 x i8], ptr %36, i64 0, i64 0, !dbg !227
  %38 = load ptr, ptr %6, align 8, !dbg !227
  %39 = call i32 @strfield(ptr noundef %37, ptr noundef %38), !dbg !227
  %40 = icmp ne i32 %39, 0, !dbg !227
  br i1 %40, label %41, label %47, !dbg !230

41:                                               ; preds = %34, %33
  %42 = load ptr, ptr %5, align 8, !dbg !231
  %43 = getelementptr inbounds %struct.robots_wizard, ptr %42, i32 0, i32 1, !dbg !231
  %44 = getelementptr inbounds [4096 x i8], ptr %43, i64 0, i64 0, !dbg !231
  %45 = load ptr, ptr %7, align 8, !dbg !231
  %46 = call ptr @strcpy_safe_(ptr noundef %44, i64 noundef 4096, ptr noundef %45, i64 noundef -1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 84), !dbg !231
  store i32 -1, ptr %4, align 4, !dbg !233
  br label %86, !dbg !233

47:                                               ; preds = %34, %33
  %48 = load ptr, ptr %5, align 8, !dbg !234
  %49 = getelementptr inbounds %struct.robots_wizard, ptr %48, i32 0, i32 2, !dbg !236
  %50 = load ptr, ptr %49, align 8, !dbg !236
  %51 = icmp ne ptr %50, null, !dbg !234
  br i1 %51, label %80, label %52, !dbg !237

52:                                               ; preds = %47
  %53 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 4232) #9, !dbg !238
  %54 = load ptr, ptr %5, align 8, !dbg !240
  %55 = getelementptr inbounds %struct.robots_wizard, ptr %54, i32 0, i32 2, !dbg !241
  store ptr %53, ptr %55, align 8, !dbg !242
  %56 = load ptr, ptr %5, align 8, !dbg !243
  %57 = getelementptr inbounds %struct.robots_wizard, ptr %56, i32 0, i32 2, !dbg !245
  %58 = load ptr, ptr %57, align 8, !dbg !245
  %59 = icmp ne ptr %58, null, !dbg !243
  br i1 %59, label %60, label %79, !dbg !246

60:                                               ; preds = %52
  %61 = load ptr, ptr %5, align 8, !dbg !247
  %62 = getelementptr inbounds %struct.robots_wizard, ptr %61, i32 0, i32 2, !dbg !249
  %63 = load ptr, ptr %62, align 8, !dbg !249
  %64 = getelementptr inbounds %struct.robots_wizard, ptr %63, i32 0, i32 2, !dbg !250
  store ptr null, ptr %64, align 8, !dbg !251
  %65 = load ptr, ptr %5, align 8, !dbg !252
  %66 = getelementptr inbounds %struct.robots_wizard, ptr %65, i32 0, i32 2, !dbg !252
  %67 = load ptr, ptr %66, align 8, !dbg !252
  %68 = getelementptr inbounds %struct.robots_wizard, ptr %67, i32 0, i32 0, !dbg !252
  %69 = getelementptr inbounds [128 x i8], ptr %68, i64 0, i64 0, !dbg !252
  %70 = load ptr, ptr %6, align 8, !dbg !252
  %71 = call ptr @strcpy_safe_(ptr noundef %69, i64 noundef 128, ptr noundef %70, i64 noundef -1, ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 93), !dbg !252
  %72 = load ptr, ptr %5, align 8, !dbg !253
  %73 = getelementptr inbounds %struct.robots_wizard, ptr %72, i32 0, i32 2, !dbg !253
  %74 = load ptr, ptr %73, align 8, !dbg !253
  %75 = getelementptr inbounds %struct.robots_wizard, ptr %74, i32 0, i32 1, !dbg !253
  %76 = getelementptr inbounds [4096 x i8], ptr %75, i64 0, i64 0, !dbg !253
  %77 = load ptr, ptr %7, align 8, !dbg !253
  %78 = call ptr @strcpy_safe_(ptr noundef %76, i64 noundef 4096, ptr noundef %77, i64 noundef -1, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 94), !dbg !253
  br label %79, !dbg !254

79:                                               ; preds = %60, %52
  br label %80, !dbg !255

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %5, align 8, !dbg !256
  %83 = getelementptr inbounds %struct.robots_wizard, ptr %82, i32 0, i32 2, !dbg !257
  %84 = load ptr, ptr %83, align 8, !dbg !257
  store ptr %84, ptr %5, align 8, !dbg !258
  br label %22, !dbg !225, !llvm.loop !259

85:                                               ; preds = %22
  store i32 0, ptr %4, align 4, !dbg !261
  br label %86, !dbg !261

86:                                               ; preds = %85, %41, %20, %13
  %87 = load i32, ptr %4, align 4, !dbg !262
  ret i32 %87, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @strcpy_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !263 {
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !270, metadata !DIExpression()), !dbg !271
  store i64 %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !272, metadata !DIExpression()), !dbg !273
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !274, metadata !DIExpression()), !dbg !275
  store i64 %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !276, metadata !DIExpression()), !dbg !277
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !278, metadata !DIExpression()), !dbg !279
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !280, metadata !DIExpression()), !dbg !281
  store i32 %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !282, metadata !DIExpression()), !dbg !283
  %15 = load i64, ptr %9, align 8, !dbg !284
  %16 = icmp ne i64 %15, 0, !dbg !284
  br i1 %16, label %20, label %17, !dbg !284

17:                                               ; preds = %7
  %18 = load ptr, ptr %13, align 8, !dbg !284
  %19 = load i32, ptr %14, align 4, !dbg !284
  call void @abortf_(ptr noundef @.str.4, ptr noundef %18, i32 noundef %19), !dbg !284
  br label %20, !dbg !284

20:                                               ; preds = %17, %7
  %21 = phi i1 [ true, %7 ], [ false, %17 ]
  %22 = zext i1 %21 to i32, !dbg !284
  %23 = load ptr, ptr %8, align 8, !dbg !285
  %24 = getelementptr inbounds i8, ptr %23, i64 0, !dbg !285
  store i8 0, ptr %24, align 1, !dbg !286
  %25 = load ptr, ptr %8, align 8, !dbg !287
  %26 = load i64, ptr %9, align 8, !dbg !288
  %27 = load ptr, ptr %10, align 8, !dbg !289
  %28 = load i64, ptr %11, align 8, !dbg !290
  %29 = load ptr, ptr %12, align 8, !dbg !291
  %30 = load ptr, ptr %13, align 8, !dbg !292
  %31 = load i32, ptr %14, align 4, !dbg !293
  %32 = call ptr @strncat_safe_(ptr noundef %25, i64 noundef %26, ptr noundef %27, i64 noundef %28, i64 noundef -1, ptr noundef %29, ptr noundef %30, i32 noundef %31), !dbg !294
  ret ptr %32, !dbg !295
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkrobots_free(ptr noundef %0) #0 !dbg !296 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !299, metadata !DIExpression()), !dbg !300
  %3 = load ptr, ptr %2, align 8, !dbg !301
  %4 = getelementptr inbounds %struct.robots_wizard, ptr %3, i32 0, i32 2, !dbg !303
  %5 = load ptr, ptr %4, align 8, !dbg !303
  %6 = icmp ne ptr %5, null, !dbg !301
  br i1 %6, label %7, label %26, !dbg !304

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !305
  %9 = getelementptr inbounds %struct.robots_wizard, ptr %8, i32 0, i32 2, !dbg !307
  %10 = load ptr, ptr %9, align 8, !dbg !307
  call void @checkrobots_free(ptr noundef %10), !dbg !308
  br label %11, !dbg !309

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8, !dbg !310
  %13 = getelementptr inbounds %struct.robots_wizard, ptr %12, i32 0, i32 2, !dbg !310
  %14 = load ptr, ptr %13, align 8, !dbg !310
  %15 = icmp ne ptr %14, null, !dbg !310
  br i1 %15, label %16, label %22, !dbg !313

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !dbg !314
  %18 = getelementptr inbounds %struct.robots_wizard, ptr %17, i32 0, i32 2, !dbg !314
  %19 = load ptr, ptr %18, align 8, !dbg !314
  call void @free(ptr noundef %19) #10, !dbg !314
  %20 = load ptr, ptr %2, align 8, !dbg !314
  %21 = getelementptr inbounds %struct.robots_wizard, ptr %20, i32 0, i32 2, !dbg !314
  store ptr null, ptr %21, align 8, !dbg !314
  br label %22, !dbg !314

22:                                               ; preds = %16, %11
  br label %23, !dbg !313

23:                                               ; preds = %22
  %24 = load ptr, ptr %2, align 8, !dbg !316
  %25 = getelementptr inbounds %struct.robots_wizard, ptr %24, i32 0, i32 2, !dbg !317
  store ptr null, ptr %25, align 8, !dbg !318
  br label %26, !dbg !319

26:                                               ; preds = %23, %1
  ret void, !dbg !320
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abortf_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !321 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !324, metadata !DIExpression()), !dbg !325
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !326, metadata !DIExpression()), !dbg !327
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !328, metadata !DIExpression()), !dbg !329
  %7 = load ptr, ptr %4, align 8, !dbg !330
  %8 = load ptr, ptr %5, align 8, !dbg !331
  %9 = load i32, ptr %6, align 4, !dbg !332
  call void @log_abort_(ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !333
  call void @abort() #11, !dbg !334
  unreachable, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @strncat_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 !dbg !335 {
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !338, metadata !DIExpression()), !dbg !339
  store i64 %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !340, metadata !DIExpression()), !dbg !341
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !342, metadata !DIExpression()), !dbg !343
  store i64 %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !344, metadata !DIExpression()), !dbg !345
  store i64 %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !346, metadata !DIExpression()), !dbg !347
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !348, metadata !DIExpression()), !dbg !349
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !350, metadata !DIExpression()), !dbg !351
  store i32 %7, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata ptr %17, metadata !354, metadata !DIExpression()), !dbg !355
  %21 = load ptr, ptr %11, align 8, !dbg !356
  %22 = load i64, ptr %12, align 8, !dbg !357
  %23 = load ptr, ptr %15, align 8, !dbg !358
  %24 = load i32, ptr %16, align 4, !dbg !359
  %25 = call i64 @strlen_safe_(ptr noundef %21, i64 noundef %22, ptr noundef %23, i32 noundef %24), !dbg !360
  store i64 %25, ptr %17, align 8, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %18, metadata !361, metadata !DIExpression()), !dbg !362
  %26 = load ptr, ptr %9, align 8, !dbg !363
  %27 = load i64, ptr %10, align 8, !dbg !364
  %28 = load ptr, ptr %15, align 8, !dbg !365
  %29 = load i32, ptr %16, align 4, !dbg !366
  %30 = call i64 @strlen_safe_(ptr noundef %26, i64 noundef %27, ptr noundef %28, i32 noundef %29), !dbg !367
  store i64 %30, ptr %18, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %19, metadata !368, metadata !DIExpression()), !dbg !369
  %31 = load i64, ptr %17, align 8, !dbg !370
  %32 = load i64, ptr %13, align 8, !dbg !371
  %33 = icmp ule i64 %31, %32, !dbg !372
  br i1 %33, label %34, label %36, !dbg !370

34:                                               ; preds = %8
  %35 = load i64, ptr %17, align 8, !dbg !373
  br label %38, !dbg !370

36:                                               ; preds = %8
  %37 = load i64, ptr %13, align 8, !dbg !374
  br label %38, !dbg !370

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ], !dbg !370
  store i64 %39, ptr %19, align 8, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %20, metadata !375, metadata !DIExpression()), !dbg !376
  %40 = load i64, ptr %18, align 8, !dbg !377
  %41 = load i64, ptr %19, align 8, !dbg !378
  %42 = add i64 %40, %41, !dbg !379
  store i64 %42, ptr %20, align 8, !dbg !376
  %43 = load i64, ptr %20, align 8, !dbg !380
  %44 = load i64, ptr %10, align 8, !dbg !380
  %45 = icmp ult i64 %43, %44, !dbg !380
  br i1 %45, label %50, label %46, !dbg !380

46:                                               ; preds = %38
  %47 = load ptr, ptr %14, align 8, !dbg !380
  %48 = load ptr, ptr %15, align 8, !dbg !380
  %49 = load i32, ptr %16, align 4, !dbg !380
  call void @abortf_(ptr noundef %47, ptr noundef %48, i32 noundef %49), !dbg !380
  br label %50, !dbg !380

50:                                               ; preds = %46, %38
  %51 = phi i1 [ true, %38 ], [ false, %46 ]
  %52 = zext i1 %51 to i32, !dbg !380
  %53 = load ptr, ptr %9, align 8, !dbg !381
  %54 = load i64, ptr %18, align 8, !dbg !382
  %55 = getelementptr inbounds i8, ptr %53, i64 %54, !dbg !383
  %56 = load ptr, ptr %11, align 8, !dbg !384
  %57 = load i64, ptr %19, align 8, !dbg !385
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %56, i64 %57, i1 false), !dbg !386
  %58 = load ptr, ptr %9, align 8, !dbg !387
  %59 = load i64, ptr %20, align 8, !dbg !388
  %60 = getelementptr inbounds i8, ptr %58, i64 %59, !dbg !387
  store i8 0, ptr %60, align 1, !dbg !389
  %61 = load ptr, ptr %9, align 8, !dbg !390
  ret ptr %61, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_abort_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !392 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !393, metadata !DIExpression()), !dbg !394
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !395, metadata !DIExpression()), !dbg !396
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !397, metadata !DIExpression()), !dbg !398
  %7 = load ptr, ptr @stderr, align 8, !dbg !399
  %8 = load ptr, ptr %4, align 8, !dbg !400
  %9 = load ptr, ptr %5, align 8, !dbg !401
  %10 = load i32, ptr %6, align 4, !dbg !402
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !403
  %12 = load ptr, ptr @stderr, align 8, !dbg !404
  %13 = call i32 @fflush(ptr noundef %12), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @fflush(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strlen_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !407 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !410, metadata !DIExpression()), !dbg !411
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !412, metadata !DIExpression()), !dbg !413
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !414, metadata !DIExpression()), !dbg !415
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata ptr %9, metadata !418, metadata !DIExpression()), !dbg !419
  %10 = load ptr, ptr %5, align 8, !dbg !420
  %11 = icmp ne ptr %10, null, !dbg !420
  br i1 %11, label %15, label %12, !dbg !420

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 8, !dbg !420
  %14 = load i32, ptr %8, align 4, !dbg !420
  call void @abortf_(ptr noundef @.str.6, ptr noundef %13, i32 noundef %14), !dbg !420
  br label %15, !dbg !420

15:                                               ; preds = %12, %4
  %16 = phi i1 [ true, %4 ], [ false, %12 ]
  %17 = zext i1 %16 to i32, !dbg !420
  %18 = load i64, ptr %6, align 8, !dbg !421
  %19 = icmp ne i64 %18, -1, !dbg !422
  br i1 %19, label %20, label %24, !dbg !421

20:                                               ; preds = %15
  %21 = load ptr, ptr %5, align 8, !dbg !423
  %22 = load i64, ptr %6, align 8, !dbg !424
  %23 = call i64 @strnlen(ptr noundef %21, i64 noundef %22) #8, !dbg !425
  br label %27, !dbg !421

24:                                               ; preds = %15
  %25 = load ptr, ptr %5, align 8, !dbg !426
  %26 = call i64 @strlen(ptr noundef %25) #8, !dbg !427
  br label %27, !dbg !421

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ], !dbg !421
  store i64 %28, ptr %9, align 8, !dbg !428
  %29 = load i64, ptr %9, align 8, !dbg !429
  %30 = load i64, ptr %6, align 8, !dbg !429
  %31 = icmp ult i64 %29, %30, !dbg !429
  br i1 %31, label %35, label %32, !dbg !429

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !429
  %34 = load i32, ptr %8, align 4, !dbg !429
  call void @abortf_(ptr noundef @.str.7, ptr noundef %33, i32 noundef %34), !dbg !429
  br label %35, !dbg !429

35:                                               ; preds = %32, %27
  %36 = phi i1 [ true, %27 ], [ false, %32 ]
  %37 = zext i1 %36 to i32, !dbg !429
  %38 = load i64, ptr %9, align 8, !dbg !430
  ret i64 %38, !dbg !431
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strnlen(ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!43}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/htsrobots.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "a323e9579bacd411117a66564fa42dce")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 49)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 52)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 55)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !24, line: 215, type: !25, isLocal: true, isDefinition: true)
!24 = !DIFile(filename: "./src/htssafe.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "0a24d1c0939efbe916010d30091bc9cc")
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 17)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !24, line: 91, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 20)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !24, line: 190, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 15)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !24, line: 193, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 21)
!43 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !44, globals: !66, splitDebugInlining: false, nameTableKind: None)
!44 = !{!45, !46, !47, !50}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "robots_wizard", file: !52, line: 61, baseType: !53)
!52 = !DIFile(filename: "./src/htsopt.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "4c13c78c9669919a80461e39e206d058")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robots_wizard", file: !54, line: 42, size: 33856, elements: !55)
!54 = !DIFile(filename: "./src/htsrobots.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "a7fd093dda2609f837d8ccf3f2ab843e")
!55 = !{!56, !60, !64}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !53, file: !54, line: 43, baseType: !57, size: 1024)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !53, file: !54, line: 44, baseType: !61, size: 32768, offset: 1024)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 4096)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !54, line: 45, baseType: !65, size: 64, offset: 33792)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!66 = !{!0, !7, !12, !17, !22, !28, !33, !38}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 16.0.0"}
!75 = distinct !DISubprogram(name: "checkrobots", scope: !2, file: !2, line: 48, type: !76, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !80)
!76 = !DISubroutineType(types: !77)
!77 = !{!46, !50, !78, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!80 = !{}
!81 = !DILocalVariable(name: "robots", arg: 1, scope: !75, file: !2, line: 48, type: !50)
!82 = !DILocation(line: 48, column: 33, scope: !75)
!83 = !DILocalVariable(name: "adr", arg: 2, scope: !75, file: !2, line: 48, type: !78)
!84 = !DILocation(line: 48, column: 53, scope: !75)
!85 = !DILocalVariable(name: "fil", arg: 3, scope: !75, file: !2, line: 48, type: !78)
!86 = !DILocation(line: 48, column: 70, scope: !75)
!87 = !DILocation(line: 49, column: 3, scope: !75)
!88 = !DILocation(line: 49, column: 9, scope: !75)
!89 = !DILocation(line: 50, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 50, column: 9)
!91 = distinct !DILexicalBlock(scope: !75, file: !2, line: 49, column: 17)
!92 = !DILocation(line: 50, column: 9, scope: !91)
!93 = !DILocation(line: 51, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 51, column: 11)
!95 = distinct !DILexicalBlock(scope: !90, file: !2, line: 50, column: 38)
!96 = !DILocation(line: 51, column: 11, scope: !95)
!97 = !DILocalVariable(name: "ptr", scope: !98, file: !2, line: 52, type: !46)
!98 = distinct !DILexicalBlock(scope: !94, file: !2, line: 51, column: 19)
!99 = !DILocation(line: 52, column: 13, scope: !98)
!100 = !DILocalVariable(name: "line", scope: !98, file: !2, line: 53, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2000, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 250)
!104 = !DILocation(line: 53, column: 14, scope: !98)
!105 = !DILocation(line: 55, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !98, file: !2, line: 55, column: 13)
!107 = !DILocation(line: 55, column: 13, scope: !98)
!108 = !DILocation(line: 56, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !2, line: 55, column: 41)
!110 = !DILocation(line: 57, column: 27, scope: !111)
!111 = distinct !DILexicalBlock(scope: !109, file: !2, line: 56, column: 14)
!112 = !DILocation(line: 57, column: 35, scope: !111)
!113 = !DILocation(line: 57, column: 43, scope: !111)
!114 = !DILocation(line: 57, column: 41, scope: !111)
!115 = !DILocation(line: 57, column: 48, scope: !111)
!116 = !DILocation(line: 57, column: 20, scope: !111)
!117 = !DILocation(line: 57, column: 17, scope: !111)
!118 = !DILocation(line: 58, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !111, file: !2, line: 58, column: 17)
!120 = !DILocation(line: 58, column: 25, scope: !119)
!121 = !DILocation(line: 58, column: 17, scope: !111)
!122 = !DILocation(line: 59, column: 28, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 59, column: 19)
!124 = distinct !DILexicalBlock(scope: !119, file: !2, line: 58, column: 33)
!125 = !DILocation(line: 59, column: 33, scope: !123)
!126 = !DILocation(line: 59, column: 19, scope: !123)
!127 = !DILocation(line: 59, column: 19, scope: !124)
!128 = !DILocation(line: 60, column: 17, scope: !129)
!129 = distinct !DILexicalBlock(scope: !123, file: !2, line: 59, column: 40)
!130 = !DILocation(line: 62, column: 13, scope: !124)
!131 = !DILocation(line: 63, column: 30, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !2, line: 63, column: 19)
!133 = distinct !DILexicalBlock(scope: !119, file: !2, line: 62, column: 20)
!134 = !DILocation(line: 63, column: 35, scope: !132)
!135 = !DILocation(line: 63, column: 19, scope: !132)
!136 = !DILocation(line: 63, column: 19, scope: !133)
!137 = !DILocation(line: 64, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !2, line: 63, column: 42)
!139 = !DILocation(line: 67, column: 11, scope: !111)
!140 = !DILocation(line: 67, column: 20, scope: !109)
!141 = !DILocation(line: 67, column: 39, scope: !109)
!142 = !DILocation(line: 67, column: 43, scope: !109)
!143 = !DILocation(line: 67, column: 62, scope: !109)
!144 = !DILocation(line: 67, column: 70, scope: !109)
!145 = !DILocation(line: 67, column: 55, scope: !109)
!146 = !DILocation(line: 67, column: 49, scope: !109)
!147 = !DILocation(line: 67, column: 47, scope: !109)
!148 = !DILocation(line: 0, scope: !109)
!149 = distinct !{!149, !108, !150, !151}
!150 = !DILocation(line: 67, column: 77, scope: !109)
!151 = !{!"llvm.loop.mustprogress"}
!152 = !DILocation(line: 68, column: 9, scope: !109)
!153 = !DILocation(line: 69, column: 7, scope: !98)
!154 = !DILocation(line: 70, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !94, file: !2, line: 69, column: 14)
!156 = !DILocation(line: 72, column: 5, scope: !95)
!157 = !DILocation(line: 73, column: 14, scope: !91)
!158 = !DILocation(line: 73, column: 22, scope: !91)
!159 = !DILocation(line: 73, column: 12, scope: !91)
!160 = distinct !{!160, !87, !161, !151}
!161 = !DILocation(line: 74, column: 3, scope: !75)
!162 = !DILocation(line: 75, column: 3, scope: !75)
!163 = !DILocation(line: 76, column: 1, scope: !75)
!164 = distinct !DISubprogram(name: "strfield", scope: !165, file: !165, line: 431, type: !166, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !80)
!165 = !DIFile(filename: "./src/htslib.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "b8775ab5fd3d72ae1f56a38e4cc386f9")
!166 = !DISubroutineType(types: !167)
!167 = !{!46, !78, !78}
!168 = !DILocalVariable(name: "f", arg: 1, scope: !164, file: !165, line: 431, type: !78)
!169 = !DILocation(line: 431, column: 37, scope: !164)
!170 = !DILocalVariable(name: "s", arg: 2, scope: !164, file: !165, line: 431, type: !78)
!171 = !DILocation(line: 431, column: 52, scope: !164)
!172 = !DILocalVariable(name: "r", scope: !164, file: !165, line: 432, type: !46)
!173 = !DILocation(line: 432, column: 7, scope: !164)
!174 = !DILocation(line: 434, column: 3, scope: !164)
!175 = !DILocation(line: 434, column: 9, scope: !164)
!176 = !DILocation(line: 434, column: 24, scope: !164)
!177 = !DILocation(line: 434, column: 30, scope: !164)
!178 = !DILocation(line: 434, column: 29, scope: !164)
!179 = !DILocation(line: 434, column: 28, scope: !164)
!180 = !DILocation(line: 434, column: 33, scope: !164)
!181 = !DILocation(line: 434, column: 39, scope: !164)
!182 = !DILocation(line: 434, column: 45, scope: !164)
!183 = !DILocation(line: 434, column: 44, scope: !164)
!184 = !DILocation(line: 434, column: 43, scope: !164)
!185 = !DILocation(line: 434, column: 48, scope: !164)
!186 = !DILocation(line: 0, scope: !164)
!187 = !DILocation(line: 435, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !164, file: !165, line: 434, column: 55)
!189 = !DILocation(line: 436, column: 6, scope: !188)
!190 = !DILocation(line: 437, column: 6, scope: !188)
!191 = distinct !{!191, !174, !192, !151}
!192 = !DILocation(line: 438, column: 3, scope: !164)
!193 = !DILocation(line: 439, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !164, file: !165, line: 439, column: 7)
!195 = !DILocation(line: 439, column: 7, scope: !194)
!196 = !DILocation(line: 439, column: 10, scope: !194)
!197 = !DILocation(line: 439, column: 7, scope: !164)
!198 = !DILocation(line: 440, column: 12, scope: !194)
!199 = !DILocation(line: 440, column: 5, scope: !194)
!200 = !DILocation(line: 442, column: 5, scope: !194)
!201 = !DILocation(line: 443, column: 1, scope: !164)
!202 = distinct !DISubprogram(name: "checkrobots_set", scope: !2, file: !2, line: 77, type: !76, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !80)
!203 = !DILocalVariable(name: "robots", arg: 1, scope: !202, file: !2, line: 77, type: !50)
!204 = !DILocation(line: 77, column: 37, scope: !202)
!205 = !DILocalVariable(name: "adr", arg: 2, scope: !202, file: !2, line: 77, type: !78)
!206 = !DILocation(line: 77, column: 57, scope: !202)
!207 = !DILocalVariable(name: "data", arg: 3, scope: !202, file: !2, line: 77, type: !78)
!208 = !DILocation(line: 77, column: 74, scope: !202)
!209 = !DILocation(line: 78, column: 21, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !2, line: 78, column: 7)
!211 = !DILocation(line: 78, column: 14, scope: !210)
!212 = !DILocation(line: 78, column: 8, scope: !210)
!213 = !DILocation(line: 78, column: 7, scope: !210)
!214 = !DILocation(line: 78, column: 27, scope: !210)
!215 = !DILocation(line: 78, column: 7, scope: !202)
!216 = !DILocation(line: 79, column: 5, scope: !210)
!217 = !DILocation(line: 80, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !202, file: !2, line: 80, column: 7)
!219 = !DILocation(line: 80, column: 14, scope: !218)
!220 = !DILocation(line: 80, column: 8, scope: !218)
!221 = !DILocation(line: 80, column: 7, scope: !218)
!222 = !DILocation(line: 80, column: 28, scope: !218)
!223 = !DILocation(line: 80, column: 7, scope: !202)
!224 = !DILocation(line: 81, column: 5, scope: !218)
!225 = !DILocation(line: 82, column: 3, scope: !202)
!226 = !DILocation(line: 82, column: 9, scope: !202)
!227 = !DILocation(line: 83, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 83, column: 9)
!229 = distinct !DILexicalBlock(scope: !202, file: !2, line: 82, column: 17)
!230 = !DILocation(line: 83, column: 9, scope: !229)
!231 = !DILocation(line: 84, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !2, line: 83, column: 38)
!233 = !DILocation(line: 88, column: 7, scope: !232)
!234 = !DILocation(line: 89, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !2, line: 89, column: 16)
!236 = !DILocation(line: 89, column: 25, scope: !235)
!237 = !DILocation(line: 89, column: 16, scope: !228)
!238 = !DILocation(line: 90, column: 40, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !2, line: 89, column: 31)
!240 = !DILocation(line: 90, column: 7, scope: !239)
!241 = !DILocation(line: 90, column: 15, scope: !239)
!242 = !DILocation(line: 90, column: 20, scope: !239)
!243 = !DILocation(line: 91, column: 11, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !2, line: 91, column: 11)
!245 = !DILocation(line: 91, column: 19, scope: !244)
!246 = !DILocation(line: 91, column: 11, scope: !239)
!247 = !DILocation(line: 92, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !2, line: 91, column: 25)
!249 = !DILocation(line: 92, column: 17, scope: !248)
!250 = !DILocation(line: 92, column: 23, scope: !248)
!251 = !DILocation(line: 92, column: 28, scope: !248)
!252 = !DILocation(line: 93, column: 9, scope: !248)
!253 = !DILocation(line: 94, column: 9, scope: !248)
!254 = !DILocation(line: 98, column: 7, scope: !248)
!255 = !DILocation(line: 103, column: 5, scope: !239)
!256 = !DILocation(line: 104, column: 14, scope: !229)
!257 = !DILocation(line: 104, column: 22, scope: !229)
!258 = !DILocation(line: 104, column: 12, scope: !229)
!259 = distinct !{!259, !225, !260, !151}
!260 = !DILocation(line: 105, column: 3, scope: !202)
!261 = !DILocation(line: 106, column: 3, scope: !202)
!262 = !DILocation(line: 107, column: 1, scope: !202)
!263 = distinct !DISubprogram(name: "strcpy_safe_", scope: !24, file: !24, line: 212, type: !264, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !80)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !267, !268, !269, !268, !78, !78, !46}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!270 = !DILocalVariable(name: "dest", arg: 1, scope: !263, file: !24, line: 212, type: !267)
!271 = !DILocation(line: 212, column: 61, scope: !263)
!272 = !DILocalVariable(name: "sizeof_dest", arg: 2, scope: !263, file: !24, line: 212, type: !268)
!273 = !DILocation(line: 212, column: 80, scope: !263)
!274 = !DILocalVariable(name: "source", arg: 3, scope: !263, file: !24, line: 213, type: !269)
!275 = !DILocation(line: 213, column: 67, scope: !263)
!276 = !DILocalVariable(name: "sizeof_source", arg: 4, scope: !263, file: !24, line: 213, type: !268)
!277 = !DILocation(line: 213, column: 88, scope: !263)
!278 = !DILocalVariable(name: "exp", arg: 5, scope: !263, file: !24, line: 214, type: !78)
!279 = !DILocation(line: 214, column: 61, scope: !263)
!280 = !DILocalVariable(name: "file", arg: 6, scope: !263, file: !24, line: 214, type: !78)
!281 = !DILocation(line: 214, column: 78, scope: !263)
!282 = !DILocalVariable(name: "line", arg: 7, scope: !263, file: !24, line: 214, type: !46)
!283 = !DILocation(line: 214, column: 88, scope: !263)
!284 = !DILocation(line: 215, column: 3, scope: !263)
!285 = !DILocation(line: 216, column: 3, scope: !263)
!286 = !DILocation(line: 216, column: 11, scope: !263)
!287 = !DILocation(line: 217, column: 24, scope: !263)
!288 = !DILocation(line: 217, column: 30, scope: !263)
!289 = !DILocation(line: 217, column: 43, scope: !263)
!290 = !DILocation(line: 217, column: 51, scope: !263)
!291 = !DILocation(line: 217, column: 79, scope: !263)
!292 = !DILocation(line: 217, column: 84, scope: !263)
!293 = !DILocation(line: 217, column: 90, scope: !263)
!294 = !DILocation(line: 217, column: 10, scope: !263)
!295 = !DILocation(line: 217, column: 3, scope: !263)
!296 = distinct !DISubprogram(name: "checkrobots_free", scope: !2, file: !2, line: 108, type: !297, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !80)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !50}
!299 = !DILocalVariable(name: "robots", arg: 1, scope: !296, file: !2, line: 108, type: !50)
!300 = !DILocation(line: 108, column: 39, scope: !296)
!301 = !DILocation(line: 109, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !296, file: !2, line: 109, column: 7)
!303 = !DILocation(line: 109, column: 15, scope: !302)
!304 = !DILocation(line: 109, column: 7, scope: !296)
!305 = !DILocation(line: 110, column: 22, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !2, line: 109, column: 21)
!307 = !DILocation(line: 110, column: 30, scope: !306)
!308 = !DILocation(line: 110, column: 5, scope: !306)
!309 = !DILocation(line: 111, column: 5, scope: !306)
!310 = !DILocation(line: 111, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !2, line: 111, column: 5)
!312 = distinct !DILexicalBlock(scope: !306, file: !2, line: 111, column: 5)
!313 = !DILocation(line: 111, column: 5, scope: !312)
!314 = !DILocation(line: 111, column: 5, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !2, line: 111, column: 5)
!316 = !DILocation(line: 112, column: 5, scope: !306)
!317 = !DILocation(line: 112, column: 13, scope: !306)
!318 = !DILocation(line: 112, column: 18, scope: !306)
!319 = !DILocation(line: 113, column: 3, scope: !306)
!320 = !DILocation(line: 114, column: 1, scope: !296)
!321 = distinct !DISubprogram(name: "abortf_", scope: !24, file: !24, line: 95, type: !322, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !80)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !78, !78, !46}
!324 = !DILocalVariable(name: "exp", arg: 1, scope: !321, file: !24, line: 95, type: !78)
!325 = !DILocation(line: 95, column: 44, scope: !321)
!326 = !DILocalVariable(name: "file", arg: 2, scope: !321, file: !24, line: 95, type: !78)
!327 = !DILocation(line: 95, column: 61, scope: !321)
!328 = !DILocalVariable(name: "line", arg: 3, scope: !321, file: !24, line: 95, type: !46)
!329 = !DILocation(line: 95, column: 71, scope: !321)
!330 = !DILocation(line: 99, column: 14, scope: !321)
!331 = !DILocation(line: 99, column: 19, scope: !321)
!332 = !DILocation(line: 99, column: 25, scope: !321)
!333 = !DILocation(line: 99, column: 3, scope: !321)
!334 = !DILocation(line: 100, column: 3, scope: !321)
!335 = distinct !DISubprogram(name: "strncat_safe_", scope: !24, file: !24, line: 197, type: !336, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !80)
!336 = !DISubroutineType(types: !337)
!337 = !{!266, !267, !268, !269, !268, !268, !78, !78, !46}
!338 = !DILocalVariable(name: "dest", arg: 1, scope: !335, file: !24, line: 197, type: !267)
!339 = !DILocation(line: 197, column: 62, scope: !335)
!340 = !DILocalVariable(name: "sizeof_dest", arg: 2, scope: !335, file: !24, line: 197, type: !268)
!341 = !DILocation(line: 197, column: 81, scope: !335)
!342 = !DILocalVariable(name: "source", arg: 3, scope: !335, file: !24, line: 198, type: !269)
!343 = !DILocation(line: 198, column: 68, scope: !335)
!344 = !DILocalVariable(name: "sizeof_source", arg: 4, scope: !335, file: !24, line: 198, type: !268)
!345 = !DILocation(line: 198, column: 89, scope: !335)
!346 = !DILocalVariable(name: "n", arg: 5, scope: !335, file: !24, line: 199, type: !268)
!347 = !DILocation(line: 199, column: 63, scope: !335)
!348 = !DILocalVariable(name: "exp", arg: 6, scope: !335, file: !24, line: 200, type: !78)
!349 = !DILocation(line: 200, column: 62, scope: !335)
!350 = !DILocalVariable(name: "file", arg: 7, scope: !335, file: !24, line: 200, type: !78)
!351 = !DILocation(line: 200, column: 79, scope: !335)
!352 = !DILocalVariable(name: "line", arg: 8, scope: !335, file: !24, line: 200, type: !46)
!353 = !DILocation(line: 200, column: 89, scope: !335)
!354 = !DILocalVariable(name: "source_len", scope: !335, file: !24, line: 201, type: !268)
!355 = !DILocation(line: 201, column: 16, scope: !335)
!356 = !DILocation(line: 201, column: 42, scope: !335)
!357 = !DILocation(line: 201, column: 50, scope: !335)
!358 = !DILocation(line: 201, column: 65, scope: !335)
!359 = !DILocation(line: 201, column: 71, scope: !335)
!360 = !DILocation(line: 201, column: 29, scope: !335)
!361 = !DILocalVariable(name: "dest_len", scope: !335, file: !24, line: 202, type: !268)
!362 = !DILocation(line: 202, column: 16, scope: !335)
!363 = !DILocation(line: 202, column: 40, scope: !335)
!364 = !DILocation(line: 202, column: 46, scope: !335)
!365 = !DILocation(line: 202, column: 59, scope: !335)
!366 = !DILocation(line: 202, column: 65, scope: !335)
!367 = !DILocation(line: 202, column: 27, scope: !335)
!368 = !DILocalVariable(name: "source_copy", scope: !335, file: !24, line: 204, type: !268)
!369 = !DILocation(line: 204, column: 16, scope: !335)
!370 = !DILocation(line: 204, column: 30, scope: !335)
!371 = !DILocation(line: 204, column: 44, scope: !335)
!372 = !DILocation(line: 204, column: 41, scope: !335)
!373 = !DILocation(line: 204, column: 48, scope: !335)
!374 = !DILocation(line: 204, column: 61, scope: !335)
!375 = !DILocalVariable(name: "dest_final_len", scope: !335, file: !24, line: 205, type: !268)
!376 = !DILocation(line: 205, column: 16, scope: !335)
!377 = !DILocation(line: 205, column: 33, scope: !335)
!378 = !DILocation(line: 205, column: 44, scope: !335)
!379 = !DILocation(line: 205, column: 42, scope: !335)
!380 = !DILocation(line: 206, column: 3, scope: !335)
!381 = !DILocation(line: 207, column: 10, scope: !335)
!382 = !DILocation(line: 207, column: 17, scope: !335)
!383 = !DILocation(line: 207, column: 15, scope: !335)
!384 = !DILocation(line: 207, column: 27, scope: !335)
!385 = !DILocation(line: 207, column: 35, scope: !335)
!386 = !DILocation(line: 207, column: 3, scope: !335)
!387 = !DILocation(line: 208, column: 3, scope: !335)
!388 = !DILocation(line: 208, column: 8, scope: !335)
!389 = !DILocation(line: 208, column: 24, scope: !335)
!390 = !DILocation(line: 209, column: 10, scope: !335)
!391 = !DILocation(line: 209, column: 3, scope: !335)
!392 = distinct !DISubprogram(name: "log_abort_", scope: !24, file: !24, line: 90, type: !322, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !80)
!393 = !DILocalVariable(name: "msg", arg: 1, scope: !392, file: !24, line: 90, type: !78)
!394 = !DILocation(line: 90, column: 47, scope: !392)
!395 = !DILocalVariable(name: "file", arg: 2, scope: !392, file: !24, line: 90, type: !78)
!396 = !DILocation(line: 90, column: 64, scope: !392)
!397 = !DILocalVariable(name: "line", arg: 3, scope: !392, file: !24, line: 90, type: !46)
!398 = !DILocation(line: 90, column: 74, scope: !392)
!399 = !DILocation(line: 91, column: 11, scope: !392)
!400 = !DILocation(line: 91, column: 43, scope: !392)
!401 = !DILocation(line: 91, column: 48, scope: !392)
!402 = !DILocation(line: 91, column: 54, scope: !392)
!403 = !DILocation(line: 91, column: 3, scope: !392)
!404 = !DILocation(line: 92, column: 10, scope: !392)
!405 = !DILocation(line: 92, column: 3, scope: !392)
!406 = !DILocation(line: 93, column: 1, scope: !392)
!407 = distinct !DISubprogram(name: "strlen_safe_", scope: !24, file: !24, line: 187, type: !408, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !80)
!408 = !DISubroutineType(types: !409)
!409 = !{!47, !78, !268, !78, !46}
!410 = !DILocalVariable(name: "source", arg: 1, scope: !407, file: !24, line: 187, type: !78)
!411 = !DILocation(line: 187, column: 62, scope: !407)
!412 = !DILocalVariable(name: "sizeof_source", arg: 2, scope: !407, file: !24, line: 187, type: !268)
!413 = !DILocation(line: 187, column: 83, scope: !407)
!414 = !DILocalVariable(name: "file", arg: 3, scope: !407, file: !24, line: 188, type: !78)
!415 = !DILocation(line: 188, column: 62, scope: !407)
!416 = !DILocalVariable(name: "line", arg: 4, scope: !407, file: !24, line: 188, type: !46)
!417 = !DILocation(line: 188, column: 72, scope: !407)
!418 = !DILocalVariable(name: "size", scope: !407, file: !24, line: 189, type: !47)
!419 = !DILocation(line: 189, column: 10, scope: !407)
!420 = !DILocation(line: 190, column: 3, scope: !407)
!421 = !DILocation(line: 191, column: 10, scope: !407)
!422 = !DILocation(line: 191, column: 24, scope: !407)
!423 = !DILocation(line: 192, column: 15, scope: !407)
!424 = !DILocation(line: 192, column: 23, scope: !407)
!425 = !DILocation(line: 192, column: 7, scope: !407)
!426 = !DILocation(line: 192, column: 47, scope: !407)
!427 = !DILocation(line: 192, column: 40, scope: !407)
!428 = !DILocation(line: 191, column: 8, scope: !407)
!429 = !DILocation(line: 193, column: 3, scope: !407)
!430 = !DILocation(line: 194, column: 10, scope: !407)
!431 = !DILocation(line: 194, column: 3, scope: !407)
