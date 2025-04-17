; ModuleID = '/home/raj/lwan/common/sd-daemon.c'
source_filename = "/home/raj/lwan/common/sd-daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.sockaddr_union = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%union.__SOCKADDR_ARG = type { ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%struct.iovec = type { ptr, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"LISTEN_PID\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"LISTEN_FDS\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [14 x i8] c"NOTIFY_SOCKET\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [21 x i8] c"/run/systemd/system/\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [13 x i8] c"WATCHDOG_PID\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [14 x i8] c"WATCHDOG_USEC\00", align 1, !dbg !24

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_listen_fds(i32 noundef %0) #0 !dbg !85 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata ptr %3, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata ptr %4, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata ptr %5, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata ptr %6, metadata !99, metadata !DIExpression()), !dbg !100
  store ptr null, ptr %6, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %7, metadata !101, metadata !DIExpression()), !dbg !103
  %9 = call ptr @getenv(ptr noundef @.str) #8, !dbg !104
  store ptr %9, ptr %5, align 8, !dbg !105
  %10 = load ptr, ptr %5, align 8, !dbg !106
  %11 = icmp ne ptr %10, null, !dbg !106
  br i1 %11, label %13, label %12, !dbg !108

12:                                               ; preds = %1
  store i32 0, ptr %3, align 4, !dbg !109
  br label %113, !dbg !111

13:                                               ; preds = %1
  %14 = call ptr @__errno_location() #9, !dbg !112
  store i32 0, ptr %14, align 4, !dbg !113
  %15 = load ptr, ptr %5, align 8, !dbg !114
  %16 = call i64 @strtoul(ptr noundef %15, ptr noundef %6, i32 noundef 10) #8, !dbg !115
  store i64 %16, ptr %7, align 8, !dbg !116
  %17 = call ptr @__errno_location() #9, !dbg !117
  %18 = load i32, ptr %17, align 4, !dbg !117
  %19 = icmp sgt i32 %18, 0, !dbg !119
  br i1 %19, label %20, label %24, !dbg !120

20:                                               ; preds = %13
  %21 = call ptr @__errno_location() #9, !dbg !121
  %22 = load i32, ptr %21, align 4, !dbg !121
  %23 = sub nsw i32 0, %22, !dbg !123
  store i32 %23, ptr %3, align 4, !dbg !124
  br label %113, !dbg !125

24:                                               ; preds = %13
  %25 = load ptr, ptr %6, align 8, !dbg !126
  %26 = icmp ne ptr %25, null, !dbg !126
  br i1 %26, label %27, label %39, !dbg !128

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 8, !dbg !129
  %29 = load ptr, ptr %5, align 8, !dbg !130
  %30 = icmp eq ptr %28, %29, !dbg !131
  br i1 %30, label %39, label %31, !dbg !132

31:                                               ; preds = %27
  %32 = load ptr, ptr %6, align 8, !dbg !133
  %33 = load i8, ptr %32, align 1, !dbg !134
  %34 = sext i8 %33 to i32, !dbg !134
  %35 = icmp ne i32 %34, 0, !dbg !134
  br i1 %35, label %39, label %36, !dbg !135

36:                                               ; preds = %31
  %37 = load i64, ptr %7, align 8, !dbg !136
  %38 = icmp ule i64 %37, 0, !dbg !137
  br i1 %38, label %39, label %40, !dbg !138

39:                                               ; preds = %36, %31, %27, %24
  store i32 -22, ptr %3, align 4, !dbg !139
  br label %113, !dbg !141

40:                                               ; preds = %36
  %41 = call i32 @getpid() #8, !dbg !142
  %42 = load i64, ptr %7, align 8, !dbg !144
  %43 = trunc i64 %42 to i32, !dbg !145
  %44 = icmp ne i32 %41, %43, !dbg !146
  br i1 %44, label %45, label %46, !dbg !147

45:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !dbg !148
  br label %113, !dbg !150

46:                                               ; preds = %40
  %47 = call ptr @getenv(ptr noundef @.str.1) #8, !dbg !151
  store ptr %47, ptr %5, align 8, !dbg !152
  %48 = load ptr, ptr %5, align 8, !dbg !153
  %49 = icmp ne ptr %48, null, !dbg !153
  br i1 %49, label %51, label %50, !dbg !155

50:                                               ; preds = %46
  store i32 0, ptr %3, align 4, !dbg !156
  br label %113, !dbg !158

51:                                               ; preds = %46
  %52 = call ptr @__errno_location() #9, !dbg !159
  store i32 0, ptr %52, align 4, !dbg !160
  %53 = load ptr, ptr %5, align 8, !dbg !161
  %54 = call i64 @strtoul(ptr noundef %53, ptr noundef %6, i32 noundef 10) #8, !dbg !162
  store i64 %54, ptr %7, align 8, !dbg !163
  %55 = call ptr @__errno_location() #9, !dbg !164
  %56 = load i32, ptr %55, align 4, !dbg !164
  %57 = icmp sgt i32 %56, 0, !dbg !166
  br i1 %57, label %58, label %62, !dbg !167

58:                                               ; preds = %51
  %59 = call ptr @__errno_location() #9, !dbg !168
  %60 = load i32, ptr %59, align 4, !dbg !168
  %61 = sub nsw i32 0, %60, !dbg !170
  store i32 %61, ptr %3, align 4, !dbg !171
  br label %113, !dbg !172

62:                                               ; preds = %51
  %63 = load ptr, ptr %6, align 8, !dbg !173
  %64 = icmp ne ptr %63, null, !dbg !173
  br i1 %64, label %65, label %74, !dbg !175

65:                                               ; preds = %62
  %66 = load ptr, ptr %6, align 8, !dbg !176
  %67 = load ptr, ptr %5, align 8, !dbg !177
  %68 = icmp eq ptr %66, %67, !dbg !178
  br i1 %68, label %74, label %69, !dbg !179

69:                                               ; preds = %65
  %70 = load ptr, ptr %6, align 8, !dbg !180
  %71 = load i8, ptr %70, align 1, !dbg !181
  %72 = sext i8 %71 to i32, !dbg !181
  %73 = icmp ne i32 %72, 0, !dbg !181
  br i1 %73, label %74, label %75, !dbg !182

74:                                               ; preds = %69, %65, %62
  store i32 -22, ptr %3, align 4, !dbg !183
  br label %113, !dbg !185

75:                                               ; preds = %69
  store i32 3, ptr %4, align 4, !dbg !186
  br label %76, !dbg !188

76:                                               ; preds = %107, %75
  %77 = load i32, ptr %4, align 4, !dbg !189
  %78 = load i64, ptr %7, align 8, !dbg !191
  %79 = trunc i64 %78 to i32, !dbg !192
  %80 = add nsw i32 3, %79, !dbg !193
  %81 = icmp slt i32 %77, %80, !dbg !194
  br i1 %81, label %82, label %110, !dbg !195

82:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata ptr %8, metadata !196, metadata !DIExpression()), !dbg !198
  %83 = load i32, ptr %4, align 4, !dbg !199
  %84 = call i32 (i32, i32, ...) @fcntl(i32 noundef %83, i32 noundef 1), !dbg !200
  store i32 %84, ptr %8, align 4, !dbg !201
  %85 = load i32, ptr %8, align 4, !dbg !202
  %86 = icmp slt i32 %85, 0, !dbg !204
  br i1 %86, label %87, label %91, !dbg !205

87:                                               ; preds = %82
  %88 = call ptr @__errno_location() #9, !dbg !206
  %89 = load i32, ptr %88, align 4, !dbg !206
  %90 = sub nsw i32 0, %89, !dbg !208
  store i32 %90, ptr %3, align 4, !dbg !209
  br label %113, !dbg !210

91:                                               ; preds = %82
  %92 = load i32, ptr %8, align 4, !dbg !211
  %93 = and i32 %92, 1, !dbg !213
  %94 = icmp ne i32 %93, 0, !dbg !213
  br i1 %94, label %95, label %96, !dbg !214

95:                                               ; preds = %91
  br label %107, !dbg !215

96:                                               ; preds = %91
  %97 = load i32, ptr %4, align 4, !dbg !216
  %98 = load i32, ptr %8, align 4, !dbg !218
  %99 = or i32 %98, 1, !dbg !219
  %100 = call i32 (i32, i32, ...) @fcntl(i32 noundef %97, i32 noundef 2, i32 noundef %99), !dbg !220
  %101 = icmp slt i32 %100, 0, !dbg !221
  br i1 %101, label %102, label %106, !dbg !222

102:                                              ; preds = %96
  %103 = call ptr @__errno_location() #9, !dbg !223
  %104 = load i32, ptr %103, align 4, !dbg !223
  %105 = sub nsw i32 0, %104, !dbg !225
  store i32 %105, ptr %3, align 4, !dbg !226
  br label %113, !dbg !227

106:                                              ; preds = %96
  br label %107, !dbg !228

107:                                              ; preds = %106, %95
  %108 = load i32, ptr %4, align 4, !dbg !229
  %109 = add nsw i32 %108, 1, !dbg !229
  store i32 %109, ptr %4, align 4, !dbg !229
  br label %76, !dbg !230, !llvm.loop !231

110:                                              ; preds = %76
  %111 = load i64, ptr %7, align 8, !dbg !234
  %112 = trunc i64 %111 to i32, !dbg !235
  store i32 %112, ptr %3, align 4, !dbg !236
  br label %113, !dbg !237

113:                                              ; preds = %110, %102, %87, %74, %58, %50, %45, %39, %20, %12
  call void @llvm.dbg.label(metadata !238), !dbg !239
  %114 = load i32, ptr %2, align 4, !dbg !240
  %115 = icmp ne i32 %114, 0, !dbg !240
  br i1 %115, label %116, label %119, !dbg !242

116:                                              ; preds = %113
  %117 = call i32 @unsetenv(ptr noundef @.str) #8, !dbg !243
  %118 = call i32 @unsetenv(ptr noundef @.str.1) #8, !dbg !245
  br label %119, !dbg !246

119:                                              ; preds = %116, %113
  %120 = load i32, ptr %3, align 4, !dbg !247
  ret i32 %120, !dbg !248
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @getpid() #2

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare i32 @unsetenv(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_fifo(i32 noundef %0, ptr noundef %1) #0 !dbg !249 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !252, metadata !DIExpression()), !dbg !253
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata ptr %6, metadata !256, metadata !DIExpression()), !dbg !295
  %8 = load i32, ptr %4, align 4, !dbg !296
  %9 = icmp slt i32 %8, 0, !dbg !298
  br i1 %9, label %10, label %11, !dbg !299

10:                                               ; preds = %2
  store i32 -22, ptr %3, align 4, !dbg !300
  br label %61, !dbg !300

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4, !dbg !301
  %13 = call i32 @fstat(i32 noundef %12, ptr noundef %6) #8, !dbg !303
  %14 = icmp slt i32 %13, 0, !dbg !304
  br i1 %14, label %15, label %19, !dbg !305

15:                                               ; preds = %11
  %16 = call ptr @__errno_location() #9, !dbg !306
  %17 = load i32, ptr %16, align 4, !dbg !306
  %18 = sub nsw i32 0, %17, !dbg !307
  store i32 %18, ptr %3, align 4, !dbg !308
  br label %61, !dbg !308

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 3, !dbg !309
  %21 = load i32, ptr %20, align 8, !dbg !309
  %22 = and i32 %21, 61440, !dbg !309
  %23 = icmp eq i32 %22, 4096, !dbg !309
  br i1 %23, label %25, label %24, !dbg !311

24:                                               ; preds = %19
  store i32 0, ptr %3, align 4, !dbg !312
  br label %61, !dbg !312

25:                                               ; preds = %19
  %26 = load ptr, ptr %5, align 8, !dbg !313
  %27 = icmp ne ptr %26, null, !dbg !313
  br i1 %27, label %28, label %60, !dbg !315

28:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata ptr %7, metadata !316, metadata !DIExpression()), !dbg !318
  %29 = load ptr, ptr %5, align 8, !dbg !319
  %30 = call i32 @stat(ptr noundef %29, ptr noundef %7) #8, !dbg !321
  %31 = icmp slt i32 %30, 0, !dbg !322
  br i1 %31, label %32, label %45, !dbg !323

32:                                               ; preds = %28
  %33 = call ptr @__errno_location() #9, !dbg !324
  %34 = load i32, ptr %33, align 4, !dbg !324
  %35 = icmp eq i32 %34, 2, !dbg !327
  br i1 %35, label %40, label %36, !dbg !328

36:                                               ; preds = %32
  %37 = call ptr @__errno_location() #9, !dbg !329
  %38 = load i32, ptr %37, align 4, !dbg !329
  %39 = icmp eq i32 %38, 20, !dbg !330
  br i1 %39, label %40, label %41, !dbg !331

40:                                               ; preds = %36, %32
  store i32 0, ptr %3, align 4, !dbg !332
  br label %61, !dbg !332

41:                                               ; preds = %36
  %42 = call ptr @__errno_location() #9, !dbg !333
  %43 = load i32, ptr %42, align 4, !dbg !333
  %44 = sub nsw i32 0, %43, !dbg !334
  store i32 %44, ptr %3, align 4, !dbg !335
  br label %61, !dbg !335

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 0, !dbg !336
  %47 = load i64, ptr %46, align 8, !dbg !336
  %48 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 0, !dbg !337
  %49 = load i64, ptr %48, align 8, !dbg !337
  %50 = icmp eq i64 %47, %49, !dbg !338
  br i1 %50, label %51, label %57, !dbg !339

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 1, !dbg !340
  %53 = load i64, ptr %52, align 8, !dbg !340
  %54 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 1, !dbg !341
  %55 = load i64, ptr %54, align 8, !dbg !341
  %56 = icmp eq i64 %53, %55, !dbg !342
  br label %57

57:                                               ; preds = %51, %45
  %58 = phi i1 [ false, %45 ], [ %56, %51 ], !dbg !343
  %59 = zext i1 %58 to i32, !dbg !339
  store i32 %59, ptr %3, align 4, !dbg !344
  br label %61, !dbg !344

60:                                               ; preds = %25
  store i32 1, ptr %3, align 4, !dbg !345
  br label %61, !dbg !345

61:                                               ; preds = %60, %57, %41, %40, %24, %15, %10
  %62 = load i32, ptr %3, align 4, !dbg !346
  ret i32 %62, !dbg !346
}

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_special(i32 noundef %0, ptr noundef %1) #0 !dbg !347 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !348, metadata !DIExpression()), !dbg !349
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata ptr %6, metadata !352, metadata !DIExpression()), !dbg !353
  %8 = load i32, ptr %4, align 4, !dbg !354
  %9 = icmp slt i32 %8, 0, !dbg !356
  br i1 %9, label %10, label %11, !dbg !357

10:                                               ; preds = %2
  store i32 -22, ptr %3, align 4, !dbg !358
  br label %94, !dbg !358

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4, !dbg !359
  %13 = call i32 @fstat(i32 noundef %12, ptr noundef %6) #8, !dbg !361
  %14 = icmp slt i32 %13, 0, !dbg !362
  br i1 %14, label %15, label %19, !dbg !363

15:                                               ; preds = %11
  %16 = call ptr @__errno_location() #9, !dbg !364
  %17 = load i32, ptr %16, align 4, !dbg !364
  %18 = sub nsw i32 0, %17, !dbg !365
  store i32 %18, ptr %3, align 4, !dbg !366
  br label %94, !dbg !366

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 3, !dbg !367
  %21 = load i32, ptr %20, align 8, !dbg !367
  %22 = and i32 %21, 61440, !dbg !367
  %23 = icmp eq i32 %22, 32768, !dbg !367
  br i1 %23, label %30, label %24, !dbg !369

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 3, !dbg !370
  %26 = load i32, ptr %25, align 8, !dbg !370
  %27 = and i32 %26, 61440, !dbg !370
  %28 = icmp eq i32 %27, 8192, !dbg !370
  br i1 %28, label %30, label %29, !dbg !371

29:                                               ; preds = %24
  store i32 0, ptr %3, align 4, !dbg !372
  br label %94, !dbg !372

30:                                               ; preds = %24, %19
  %31 = load ptr, ptr %5, align 8, !dbg !373
  %32 = icmp ne ptr %31, null, !dbg !373
  br i1 %32, label %33, label %93, !dbg !375

33:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %7, metadata !376, metadata !DIExpression()), !dbg !378
  %34 = load ptr, ptr %5, align 8, !dbg !379
  %35 = call i32 @stat(ptr noundef %34, ptr noundef %7) #8, !dbg !381
  %36 = icmp slt i32 %35, 0, !dbg !382
  br i1 %36, label %37, label %50, !dbg !383

37:                                               ; preds = %33
  %38 = call ptr @__errno_location() #9, !dbg !384
  %39 = load i32, ptr %38, align 4, !dbg !384
  %40 = icmp eq i32 %39, 2, !dbg !387
  br i1 %40, label %45, label %41, !dbg !388

41:                                               ; preds = %37
  %42 = call ptr @__errno_location() #9, !dbg !389
  %43 = load i32, ptr %42, align 4, !dbg !389
  %44 = icmp eq i32 %43, 20, !dbg !390
  br i1 %44, label %45, label %46, !dbg !391

45:                                               ; preds = %41, %37
  store i32 0, ptr %3, align 4, !dbg !392
  br label %94, !dbg !392

46:                                               ; preds = %41
  %47 = call ptr @__errno_location() #9, !dbg !393
  %48 = load i32, ptr %47, align 4, !dbg !393
  %49 = sub nsw i32 0, %48, !dbg !394
  store i32 %49, ptr %3, align 4, !dbg !395
  br label %94, !dbg !395

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 3, !dbg !396
  %52 = load i32, ptr %51, align 8, !dbg !396
  %53 = and i32 %52, 61440, !dbg !396
  %54 = icmp eq i32 %53, 32768, !dbg !396
  br i1 %54, label %55, label %75, !dbg !398

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 3, !dbg !399
  %57 = load i32, ptr %56, align 8, !dbg !399
  %58 = and i32 %57, 61440, !dbg !399
  %59 = icmp eq i32 %58, 32768, !dbg !399
  br i1 %59, label %60, label %75, !dbg !400

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 0, !dbg !401
  %62 = load i64, ptr %61, align 8, !dbg !401
  %63 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 0, !dbg !402
  %64 = load i64, ptr %63, align 8, !dbg !402
  %65 = icmp eq i64 %62, %64, !dbg !403
  br i1 %65, label %66, label %72, !dbg !404

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 1, !dbg !405
  %68 = load i64, ptr %67, align 8, !dbg !405
  %69 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 1, !dbg !406
  %70 = load i64, ptr %69, align 8, !dbg !406
  %71 = icmp eq i64 %68, %70, !dbg !407
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ false, %60 ], [ %71, %66 ], !dbg !408
  %74 = zext i1 %73 to i32, !dbg !404
  store i32 %74, ptr %3, align 4, !dbg !409
  br label %94, !dbg !409

75:                                               ; preds = %55, %50
  %76 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 3, !dbg !410
  %77 = load i32, ptr %76, align 8, !dbg !410
  %78 = and i32 %77, 61440, !dbg !410
  %79 = icmp eq i32 %78, 8192, !dbg !410
  br i1 %79, label %80, label %92, !dbg !412

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 3, !dbg !413
  %82 = load i32, ptr %81, align 8, !dbg !413
  %83 = and i32 %82, 61440, !dbg !413
  %84 = icmp eq i32 %83, 8192, !dbg !413
  br i1 %84, label %85, label %92, !dbg !414

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 7, !dbg !415
  %87 = load i64, ptr %86, align 8, !dbg !415
  %88 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 7, !dbg !416
  %89 = load i64, ptr %88, align 8, !dbg !416
  %90 = icmp eq i64 %87, %89, !dbg !417
  %91 = zext i1 %90 to i32, !dbg !417
  store i32 %91, ptr %3, align 4, !dbg !418
  br label %94, !dbg !418

92:                                               ; preds = %80, %75
  store i32 0, ptr %3, align 4, !dbg !419
  br label %94, !dbg !419

93:                                               ; preds = %30
  store i32 1, ptr %3, align 4, !dbg !420
  br label %94, !dbg !420

94:                                               ; preds = %93, %92, %85, %72, %46, %45, %29, %15, %10
  %95 = load i32, ptr %3, align 4, !dbg !421
  ret i32 %95, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_socket(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !422 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.sockaddr_union, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.__SOCKADDR_ARG, align 8
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !425, metadata !DIExpression()), !dbg !426
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !427, metadata !DIExpression()), !dbg !428
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !429, metadata !DIExpression()), !dbg !430
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata ptr %10, metadata !433, metadata !DIExpression()), !dbg !434
  %14 = load i32, ptr %7, align 4, !dbg !435
  %15 = icmp slt i32 %14, 0, !dbg !437
  br i1 %15, label %16, label %17, !dbg !438

16:                                               ; preds = %4
  store i32 -22, ptr %5, align 4, !dbg !439
  br label %52, !dbg !439

17:                                               ; preds = %4
  %18 = load i32, ptr %6, align 4, !dbg !440
  %19 = load i32, ptr %8, align 4, !dbg !441
  %20 = load i32, ptr %9, align 4, !dbg !442
  %21 = call i32 @sd_is_socket_internal(i32 noundef %18, i32 noundef %19, i32 noundef %20), !dbg !443
  store i32 %21, ptr %10, align 4, !dbg !444
  %22 = load i32, ptr %10, align 4, !dbg !445
  %23 = icmp sle i32 %22, 0, !dbg !447
  br i1 %23, label %24, label %26, !dbg !448

24:                                               ; preds = %17
  %25 = load i32, ptr %10, align 4, !dbg !449
  store i32 %25, ptr %5, align 4, !dbg !450
  br label %52, !dbg !450

26:                                               ; preds = %17
  %27 = load i32, ptr %7, align 4, !dbg !451
  %28 = icmp sgt i32 %27, 0, !dbg !453
  br i1 %28, label %29, label %51, !dbg !454

29:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %11, metadata !455, metadata !DIExpression()), !dbg !532
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 128, i1 false), !dbg !532
  call void @llvm.dbg.declare(metadata ptr %12, metadata !533, metadata !DIExpression()), !dbg !534
  store i32 128, ptr %12, align 4, !dbg !534
  %30 = load i32, ptr %6, align 4, !dbg !535
  store ptr %11, ptr %13, align 8, !dbg !537
  %31 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %13, i32 0, i32 0, !dbg !538
  %32 = load ptr, ptr %31, align 8, !dbg !538
  %33 = call i32 @getsockname(i32 noundef %30, ptr %32, ptr noundef %12) #8, !dbg !538
  %34 = icmp slt i32 %33, 0, !dbg !539
  br i1 %34, label %35, label %39, !dbg !540

35:                                               ; preds = %29
  %36 = call ptr @__errno_location() #9, !dbg !541
  %37 = load i32, ptr %36, align 4, !dbg !541
  %38 = sub nsw i32 0, %37, !dbg !542
  store i32 %38, ptr %5, align 4, !dbg !543
  br label %52, !dbg !543

39:                                               ; preds = %29
  %40 = load i32, ptr %12, align 4, !dbg !544
  %41 = zext i32 %40 to i64, !dbg !544
  %42 = icmp ult i64 %41, 2, !dbg !546
  br i1 %42, label %43, label %44, !dbg !547

43:                                               ; preds = %39
  store i32 -22, ptr %5, align 4, !dbg !548
  br label %52, !dbg !548

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.sockaddr, ptr %11, i32 0, i32 0, !dbg !549
  %46 = load i16, ptr %45, align 8, !dbg !549
  %47 = zext i16 %46 to i32, !dbg !550
  %48 = load i32, ptr %7, align 4, !dbg !551
  %49 = icmp eq i32 %47, %48, !dbg !552
  %50 = zext i1 %49 to i32, !dbg !552
  store i32 %50, ptr %5, align 4, !dbg !553
  br label %52, !dbg !553

51:                                               ; preds = %26
  store i32 1, ptr %5, align 4, !dbg !554
  br label %52, !dbg !554

52:                                               ; preds = %51, %44, %43, %35, %24, %16
  %53 = load i32, ptr %5, align 4, !dbg !555
  ret i32 %53, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_is_socket_internal(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !556 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !559, metadata !DIExpression()), !dbg !560
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !561, metadata !DIExpression()), !dbg !562
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata ptr %8, metadata !565, metadata !DIExpression()), !dbg !566
  %13 = load i32, ptr %5, align 4, !dbg !567
  %14 = icmp slt i32 %13, 0, !dbg !569
  br i1 %14, label %18, label %15, !dbg !570

15:                                               ; preds = %3
  %16 = load i32, ptr %6, align 4, !dbg !571
  %17 = icmp slt i32 %16, 0, !dbg !572
  br i1 %17, label %18, label %19, !dbg !573

18:                                               ; preds = %15, %3
  store i32 -22, ptr %4, align 4, !dbg !574
  br label %84, !dbg !574

19:                                               ; preds = %15
  %20 = load i32, ptr %5, align 4, !dbg !575
  %21 = call i32 @fstat(i32 noundef %20, ptr noundef %8) #8, !dbg !577
  %22 = icmp slt i32 %21, 0, !dbg !578
  br i1 %22, label %23, label %27, !dbg !579

23:                                               ; preds = %19
  %24 = call ptr @__errno_location() #9, !dbg !580
  %25 = load i32, ptr %24, align 4, !dbg !580
  %26 = sub nsw i32 0, %25, !dbg !581
  store i32 %26, ptr %4, align 4, !dbg !582
  br label %84, !dbg !582

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 3, !dbg !583
  %29 = load i32, ptr %28, align 8, !dbg !583
  %30 = and i32 %29, 61440, !dbg !583
  %31 = icmp eq i32 %30, 49152, !dbg !583
  br i1 %31, label %33, label %32, !dbg !585

32:                                               ; preds = %27
  store i32 0, ptr %4, align 4, !dbg !586
  br label %84, !dbg !586

33:                                               ; preds = %27
  %34 = load i32, ptr %6, align 4, !dbg !587
  %35 = icmp ne i32 %34, 0, !dbg !589
  br i1 %35, label %36, label %55, !dbg !590

36:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %9, metadata !591, metadata !DIExpression()), !dbg !593
  store i32 0, ptr %9, align 4, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %10, metadata !594, metadata !DIExpression()), !dbg !595
  store i32 4, ptr %10, align 4, !dbg !595
  %37 = load i32, ptr %5, align 4, !dbg !596
  %38 = call i32 @getsockopt(i32 noundef %37, i32 noundef 1, i32 noundef 3, ptr noundef %9, ptr noundef %10) #8, !dbg !598
  %39 = icmp slt i32 %38, 0, !dbg !599
  br i1 %39, label %40, label %44, !dbg !600

40:                                               ; preds = %36
  %41 = call ptr @__errno_location() #9, !dbg !601
  %42 = load i32, ptr %41, align 4, !dbg !601
  %43 = sub nsw i32 0, %42, !dbg !602
  store i32 %43, ptr %4, align 4, !dbg !603
  br label %84, !dbg !603

44:                                               ; preds = %36
  %45 = load i32, ptr %10, align 4, !dbg !604
  %46 = zext i32 %45 to i64, !dbg !604
  %47 = icmp ne i64 %46, 4, !dbg !606
  br i1 %47, label %48, label %49, !dbg !607

48:                                               ; preds = %44
  store i32 -22, ptr %4, align 4, !dbg !608
  br label %84, !dbg !608

49:                                               ; preds = %44
  %50 = load i32, ptr %9, align 4, !dbg !609
  %51 = load i32, ptr %6, align 4, !dbg !611
  %52 = icmp ne i32 %50, %51, !dbg !612
  br i1 %52, label %53, label %54, !dbg !613

53:                                               ; preds = %49
  store i32 0, ptr %4, align 4, !dbg !614
  br label %84, !dbg !614

54:                                               ; preds = %49
  br label %55, !dbg !615

55:                                               ; preds = %54, %33
  %56 = load i32, ptr %7, align 4, !dbg !616
  %57 = icmp sge i32 %56, 0, !dbg !618
  br i1 %57, label %58, label %83, !dbg !619

58:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %11, metadata !620, metadata !DIExpression()), !dbg !622
  store i32 0, ptr %11, align 4, !dbg !622
  call void @llvm.dbg.declare(metadata ptr %12, metadata !623, metadata !DIExpression()), !dbg !624
  store i32 4, ptr %12, align 4, !dbg !624
  %59 = load i32, ptr %5, align 4, !dbg !625
  %60 = call i32 @getsockopt(i32 noundef %59, i32 noundef 1, i32 noundef 30, ptr noundef %11, ptr noundef %12) #8, !dbg !627
  %61 = icmp slt i32 %60, 0, !dbg !628
  br i1 %61, label %62, label %66, !dbg !629

62:                                               ; preds = %58
  %63 = call ptr @__errno_location() #9, !dbg !630
  %64 = load i32, ptr %63, align 4, !dbg !630
  %65 = sub nsw i32 0, %64, !dbg !631
  store i32 %65, ptr %4, align 4, !dbg !632
  br label %84, !dbg !632

66:                                               ; preds = %58
  %67 = load i32, ptr %12, align 4, !dbg !633
  %68 = zext i32 %67 to i64, !dbg !633
  %69 = icmp ne i64 %68, 4, !dbg !635
  br i1 %69, label %70, label %71, !dbg !636

70:                                               ; preds = %66
  store i32 -22, ptr %4, align 4, !dbg !637
  br label %84, !dbg !637

71:                                               ; preds = %66
  %72 = load i32, ptr %11, align 4, !dbg !638
  %73 = icmp ne i32 %72, 0, !dbg !640
  %74 = xor i1 %73, true, !dbg !640
  %75 = zext i1 %74 to i32, !dbg !640
  %76 = load i32, ptr %7, align 4, !dbg !641
  %77 = icmp ne i32 %76, 0, !dbg !642
  %78 = xor i1 %77, true, !dbg !642
  %79 = zext i1 %78 to i32, !dbg !642
  %80 = icmp ne i32 %75, %79, !dbg !643
  br i1 %80, label %81, label %82, !dbg !644

81:                                               ; preds = %71
  store i32 0, ptr %4, align 4, !dbg !645
  br label %84, !dbg !645

82:                                               ; preds = %71
  br label %83, !dbg !646

83:                                               ; preds = %82, %55
  store i32 1, ptr %4, align 4, !dbg !647
  br label %84, !dbg !647

84:                                               ; preds = %83, %81, %70, %62, %53, %48, %40, %32, %23, %18
  %85 = load i32, ptr %4, align 4, !dbg !648
  ret i32 %85, !dbg !648
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_socket_inet(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 !dbg !649 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca %union.sockaddr_union, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.__SOCKADDR_ARG, align 8
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !652, metadata !DIExpression()), !dbg !653
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !654, metadata !DIExpression()), !dbg !655
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !656, metadata !DIExpression()), !dbg !657
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !658, metadata !DIExpression()), !dbg !659
  store i16 %4, ptr %11, align 2
  call void @llvm.dbg.declare(metadata ptr %11, metadata !660, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.declare(metadata ptr %12, metadata !662, metadata !DIExpression()), !dbg !663
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 128, i1 false), !dbg !663
  call void @llvm.dbg.declare(metadata ptr %13, metadata !664, metadata !DIExpression()), !dbg !665
  store i32 128, ptr %13, align 4, !dbg !665
  call void @llvm.dbg.declare(metadata ptr %14, metadata !666, metadata !DIExpression()), !dbg !667
  %16 = load i32, ptr %8, align 4, !dbg !668
  %17 = icmp ne i32 %16, 0, !dbg !670
  br i1 %17, label %18, label %25, !dbg !671

18:                                               ; preds = %5
  %19 = load i32, ptr %8, align 4, !dbg !672
  %20 = icmp ne i32 %19, 2, !dbg !673
  br i1 %20, label %21, label %25, !dbg !674

21:                                               ; preds = %18
  %22 = load i32, ptr %8, align 4, !dbg !675
  %23 = icmp ne i32 %22, 10, !dbg !676
  br i1 %23, label %24, label %25, !dbg !677

24:                                               ; preds = %21
  store i32 -22, ptr %6, align 4, !dbg !678
  br label %109, !dbg !678

25:                                               ; preds = %21, %18, %5
  %26 = load i32, ptr %7, align 4, !dbg !679
  %27 = load i32, ptr %9, align 4, !dbg !680
  %28 = load i32, ptr %10, align 4, !dbg !681
  %29 = call i32 @sd_is_socket_internal(i32 noundef %26, i32 noundef %27, i32 noundef %28), !dbg !682
  store i32 %29, ptr %14, align 4, !dbg !683
  %30 = load i32, ptr %14, align 4, !dbg !684
  %31 = icmp sle i32 %30, 0, !dbg !686
  br i1 %31, label %32, label %34, !dbg !687

32:                                               ; preds = %25
  %33 = load i32, ptr %14, align 4, !dbg !688
  store i32 %33, ptr %6, align 4, !dbg !689
  br label %109, !dbg !689

34:                                               ; preds = %25
  %35 = load i32, ptr %7, align 4, !dbg !690
  store ptr %12, ptr %15, align 8, !dbg !692
  %36 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %15, i32 0, i32 0, !dbg !693
  %37 = load ptr, ptr %36, align 8, !dbg !693
  %38 = call i32 @getsockname(i32 noundef %35, ptr %37, ptr noundef %13) #8, !dbg !693
  %39 = icmp slt i32 %38, 0, !dbg !694
  br i1 %39, label %40, label %44, !dbg !695

40:                                               ; preds = %34
  %41 = call ptr @__errno_location() #9, !dbg !696
  %42 = load i32, ptr %41, align 4, !dbg !696
  %43 = sub nsw i32 0, %42, !dbg !697
  store i32 %43, ptr %6, align 4, !dbg !698
  br label %109, !dbg !698

44:                                               ; preds = %34
  %45 = load i32, ptr %13, align 4, !dbg !699
  %46 = zext i32 %45 to i64, !dbg !699
  %47 = icmp ult i64 %46, 2, !dbg !701
  br i1 %47, label %48, label %49, !dbg !702

48:                                               ; preds = %44
  store i32 -22, ptr %6, align 4, !dbg !703
  br label %109, !dbg !703

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.sockaddr, ptr %12, i32 0, i32 0, !dbg !704
  %51 = load i16, ptr %50, align 8, !dbg !704
  %52 = zext i16 %51 to i32, !dbg !706
  %53 = icmp ne i32 %52, 2, !dbg !707
  br i1 %53, label %54, label %60, !dbg !708

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.sockaddr, ptr %12, i32 0, i32 0, !dbg !709
  %56 = load i16, ptr %55, align 8, !dbg !709
  %57 = zext i16 %56 to i32, !dbg !710
  %58 = icmp ne i32 %57, 10, !dbg !711
  br i1 %58, label %59, label %60, !dbg !712

59:                                               ; preds = %54
  store i32 0, ptr %6, align 4, !dbg !713
  br label %109, !dbg !713

60:                                               ; preds = %54, %49
  %61 = load i32, ptr %8, align 4, !dbg !714
  %62 = icmp sgt i32 %61, 0, !dbg !716
  br i1 %62, label %63, label %71, !dbg !717

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.sockaddr, ptr %12, i32 0, i32 0, !dbg !718
  %65 = load i16, ptr %64, align 8, !dbg !718
  %66 = zext i16 %65 to i32, !dbg !720
  %67 = load i32, ptr %8, align 4, !dbg !721
  %68 = icmp ne i32 %66, %67, !dbg !722
  br i1 %68, label %69, label %70, !dbg !723

69:                                               ; preds = %63
  store i32 0, ptr %6, align 4, !dbg !724
  br label %109, !dbg !724

70:                                               ; preds = %63
  br label %71, !dbg !721

71:                                               ; preds = %70, %60
  %72 = load i16, ptr %11, align 2, !dbg !725
  %73 = zext i16 %72 to i32, !dbg !725
  %74 = icmp sgt i32 %73, 0, !dbg !727
  br i1 %74, label %75, label %108, !dbg !728

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sockaddr, ptr %12, i32 0, i32 0, !dbg !729
  %77 = load i16, ptr %76, align 8, !dbg !729
  %78 = zext i16 %77 to i32, !dbg !732
  %79 = icmp eq i32 %78, 2, !dbg !733
  br i1 %79, label %80, label %94, !dbg !734

80:                                               ; preds = %75
  %81 = load i32, ptr %13, align 4, !dbg !735
  %82 = zext i32 %81 to i64, !dbg !735
  %83 = icmp ult i64 %82, 16, !dbg !738
  br i1 %83, label %84, label %85, !dbg !739

84:                                               ; preds = %80
  store i32 -22, ptr %6, align 4, !dbg !740
  br label %109, !dbg !740

85:                                               ; preds = %80
  %86 = load i16, ptr %11, align 2, !dbg !741
  %87 = call zeroext i16 @htons(i16 noundef zeroext %86) #9, !dbg !742
  %88 = zext i16 %87 to i32, !dbg !742
  %89 = getelementptr inbounds %struct.sockaddr_in, ptr %12, i32 0, i32 1, !dbg !743
  %90 = load i16, ptr %89, align 2, !dbg !743
  %91 = zext i16 %90 to i32, !dbg !744
  %92 = icmp eq i32 %88, %91, !dbg !745
  %93 = zext i1 %92 to i32, !dbg !745
  store i32 %93, ptr %6, align 4, !dbg !746
  br label %109, !dbg !746

94:                                               ; preds = %75
  %95 = load i32, ptr %13, align 4, !dbg !747
  %96 = zext i32 %95 to i64, !dbg !747
  %97 = icmp ult i64 %96, 28, !dbg !750
  br i1 %97, label %98, label %99, !dbg !751

98:                                               ; preds = %94
  store i32 -22, ptr %6, align 4, !dbg !752
  br label %109, !dbg !752

99:                                               ; preds = %94
  %100 = load i16, ptr %11, align 2, !dbg !753
  %101 = call zeroext i16 @htons(i16 noundef zeroext %100) #9, !dbg !754
  %102 = zext i16 %101 to i32, !dbg !754
  %103 = getelementptr inbounds %struct.sockaddr_in6, ptr %12, i32 0, i32 1, !dbg !755
  %104 = load i16, ptr %103, align 2, !dbg !755
  %105 = zext i16 %104 to i32, !dbg !756
  %106 = icmp eq i32 %102, %105, !dbg !757
  %107 = zext i1 %106 to i32, !dbg !757
  store i32 %107, ptr %6, align 4, !dbg !758
  br label %109, !dbg !758

108:                                              ; preds = %71
  store i32 1, ptr %6, align 4, !dbg !759
  br label %109, !dbg !759

109:                                              ; preds = %108, %99, %98, %85, %84, %69, %59, %48, %40, %32, %24
  %110 = load i32, ptr %6, align 4, !dbg !760
  ret i32 %110, !dbg !760
}

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_socket_unix(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !761 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.sockaddr_union, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.__SOCKADDR_ARG, align 8
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !766, metadata !DIExpression()), !dbg !767
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !768, metadata !DIExpression()), !dbg !769
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !770, metadata !DIExpression()), !dbg !771
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !772, metadata !DIExpression()), !dbg !773
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !774, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.declare(metadata ptr %12, metadata !776, metadata !DIExpression()), !dbg !777
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 128, i1 false), !dbg !777
  call void @llvm.dbg.declare(metadata ptr %13, metadata !778, metadata !DIExpression()), !dbg !779
  store i32 128, ptr %13, align 4, !dbg !779
  call void @llvm.dbg.declare(metadata ptr %14, metadata !780, metadata !DIExpression()), !dbg !781
  %16 = load i32, ptr %7, align 4, !dbg !782
  %17 = load i32, ptr %8, align 4, !dbg !783
  %18 = load i32, ptr %9, align 4, !dbg !784
  %19 = call i32 @sd_is_socket_internal(i32 noundef %16, i32 noundef %17, i32 noundef %18), !dbg !785
  store i32 %19, ptr %14, align 4, !dbg !786
  %20 = load i32, ptr %14, align 4, !dbg !787
  %21 = icmp sle i32 %20, 0, !dbg !789
  br i1 %21, label %22, label %24, !dbg !790

22:                                               ; preds = %5
  %23 = load i32, ptr %14, align 4, !dbg !791
  store i32 %23, ptr %6, align 4, !dbg !792
  br label %102, !dbg !792

24:                                               ; preds = %5
  %25 = load i32, ptr %7, align 4, !dbg !793
  store ptr %12, ptr %15, align 8, !dbg !795
  %26 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %15, i32 0, i32 0, !dbg !796
  %27 = load ptr, ptr %26, align 8, !dbg !796
  %28 = call i32 @getsockname(i32 noundef %25, ptr %27, ptr noundef %13) #8, !dbg !796
  %29 = icmp slt i32 %28, 0, !dbg !797
  br i1 %29, label %30, label %34, !dbg !798

30:                                               ; preds = %24
  %31 = call ptr @__errno_location() #9, !dbg !799
  %32 = load i32, ptr %31, align 4, !dbg !799
  %33 = sub nsw i32 0, %32, !dbg !800
  store i32 %33, ptr %6, align 4, !dbg !801
  br label %102, !dbg !801

34:                                               ; preds = %24
  %35 = load i32, ptr %13, align 4, !dbg !802
  %36 = zext i32 %35 to i64, !dbg !802
  %37 = icmp ult i64 %36, 2, !dbg !804
  br i1 %37, label %38, label %39, !dbg !805

38:                                               ; preds = %34
  store i32 -22, ptr %6, align 4, !dbg !806
  br label %102, !dbg !806

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sockaddr, ptr %12, i32 0, i32 0, !dbg !807
  %41 = load i16, ptr %40, align 8, !dbg !807
  %42 = zext i16 %41 to i32, !dbg !809
  %43 = icmp ne i32 %42, 1, !dbg !810
  br i1 %43, label %44, label %45, !dbg !811

44:                                               ; preds = %39
  store i32 0, ptr %6, align 4, !dbg !812
  br label %102, !dbg !812

45:                                               ; preds = %39
  %46 = load ptr, ptr %10, align 8, !dbg !813
  %47 = icmp ne ptr %46, null, !dbg !813
  br i1 %47, label %48, label %101, !dbg !815

48:                                               ; preds = %45
  %49 = load i64, ptr %11, align 8, !dbg !816
  %50 = icmp eq i64 %49, 0, !dbg !819
  br i1 %50, label %51, label %54, !dbg !820

51:                                               ; preds = %48
  %52 = load ptr, ptr %10, align 8, !dbg !821
  %53 = call i64 @strlen(ptr noundef %52) #10, !dbg !822
  store i64 %53, ptr %11, align 8, !dbg !823
  br label %54, !dbg !824

54:                                               ; preds = %51, %48
  %55 = load i64, ptr %11, align 8, !dbg !825
  %56 = icmp eq i64 %55, 0, !dbg !827
  br i1 %56, label %57, label %62, !dbg !828

57:                                               ; preds = %54
  %58 = load i32, ptr %13, align 4, !dbg !829
  %59 = zext i32 %58 to i64, !dbg !829
  %60 = icmp eq i64 %59, 2, !dbg !830
  %61 = zext i1 %60 to i32, !dbg !830
  store i32 %61, ptr %6, align 4, !dbg !831
  br label %102, !dbg !831

62:                                               ; preds = %54
  %63 = load ptr, ptr %10, align 8, !dbg !832
  %64 = getelementptr inbounds i8, ptr %63, i64 0, !dbg !832
  %65 = load i8, ptr %64, align 1, !dbg !832
  %66 = icmp ne i8 %65, 0, !dbg !832
  br i1 %66, label %67, label %85, !dbg !834

67:                                               ; preds = %62
  %68 = load i32, ptr %13, align 4, !dbg !835
  %69 = zext i32 %68 to i64, !dbg !835
  %70 = load i64, ptr %11, align 8, !dbg !836
  %71 = add i64 2, %70, !dbg !837
  %72 = add i64 %71, 1, !dbg !838
  %73 = icmp uge i64 %69, %72, !dbg !839
  br i1 %73, label %74, label %82, !dbg !840

74:                                               ; preds = %67
  %75 = load ptr, ptr %10, align 8, !dbg !841
  %76 = getelementptr inbounds %struct.sockaddr_un, ptr %12, i32 0, i32 1, !dbg !842
  %77 = getelementptr inbounds [108 x i8], ptr %76, i64 0, i64 0, !dbg !843
  %78 = load i64, ptr %11, align 8, !dbg !844
  %79 = add i64 %78, 1, !dbg !845
  %80 = call i32 @memcmp(ptr noundef %75, ptr noundef %77, i64 noundef %79) #10, !dbg !846
  %81 = icmp eq i32 %80, 0, !dbg !847
  br label %82

82:                                               ; preds = %74, %67
  %83 = phi i1 [ false, %67 ], [ %81, %74 ], !dbg !848
  %84 = zext i1 %83 to i32, !dbg !840
  store i32 %84, ptr %6, align 4, !dbg !849
  br label %102, !dbg !849

85:                                               ; preds = %62
  %86 = load i32, ptr %13, align 4, !dbg !850
  %87 = zext i32 %86 to i64, !dbg !850
  %88 = load i64, ptr %11, align 8, !dbg !851
  %89 = add i64 2, %88, !dbg !852
  %90 = icmp eq i64 %87, %89, !dbg !853
  br i1 %90, label %91, label %98, !dbg !854

91:                                               ; preds = %85
  %92 = load ptr, ptr %10, align 8, !dbg !855
  %93 = getelementptr inbounds %struct.sockaddr_un, ptr %12, i32 0, i32 1, !dbg !856
  %94 = getelementptr inbounds [108 x i8], ptr %93, i64 0, i64 0, !dbg !857
  %95 = load i64, ptr %11, align 8, !dbg !858
  %96 = call i32 @memcmp(ptr noundef %92, ptr noundef %94, i64 noundef %95) #10, !dbg !859
  %97 = icmp eq i32 %96, 0, !dbg !860
  br label %98

98:                                               ; preds = %91, %85
  %99 = phi i1 [ false, %85 ], [ %97, %91 ], !dbg !848
  %100 = zext i1 %99 to i32, !dbg !854
  store i32 %100, ptr %6, align 4, !dbg !861
  br label %102, !dbg !861

101:                                              ; preds = %45
  store i32 1, ptr %6, align 4, !dbg !862
  br label %102, !dbg !862

102:                                              ; preds = %101, %98, %82, %57, %44, %38, %30, %22
  %103 = load i32, ptr %6, align 4, !dbg !863
  ret i32 %103, !dbg !863
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_notify(i32 noundef %0, ptr noundef %1) #0 !dbg !864 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca %struct.iovec, align 8
  %10 = alloca %union.sockaddr_union, align 8
  %11 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !865, metadata !DIExpression()), !dbg !866
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !867, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.declare(metadata ptr %6, metadata !869, metadata !DIExpression()), !dbg !870
  store i32 -1, ptr %6, align 4, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %7, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata ptr %8, metadata !873, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.declare(metadata ptr %9, metadata !891, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata ptr %10, metadata !893, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.declare(metadata ptr %11, metadata !895, metadata !DIExpression()), !dbg !896
  %12 = load ptr, ptr %5, align 8, !dbg !897
  %13 = icmp ne ptr %12, null, !dbg !897
  br i1 %13, label %15, label %14, !dbg !899

14:                                               ; preds = %2
  store i32 -22, ptr %7, align 4, !dbg !900
  br label %90, !dbg !902

15:                                               ; preds = %2
  %16 = call ptr @getenv(ptr noundef @.str.2) #8, !dbg !903
  store ptr %16, ptr %11, align 8, !dbg !904
  %17 = load ptr, ptr %11, align 8, !dbg !905
  %18 = icmp ne ptr %17, null, !dbg !905
  br i1 %18, label %20, label %19, !dbg !907

19:                                               ; preds = %15
  store i32 0, ptr %3, align 4, !dbg !908
  br label %103, !dbg !908

20:                                               ; preds = %15
  %21 = load ptr, ptr %11, align 8, !dbg !909
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !909
  %23 = load i8, ptr %22, align 1, !dbg !909
  %24 = sext i8 %23 to i32, !dbg !909
  %25 = icmp ne i32 %24, 64, !dbg !911
  br i1 %25, label %26, label %32, !dbg !912

26:                                               ; preds = %20
  %27 = load ptr, ptr %11, align 8, !dbg !913
  %28 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !913
  %29 = load i8, ptr %28, align 1, !dbg !913
  %30 = sext i8 %29 to i32, !dbg !913
  %31 = icmp ne i32 %30, 47, !dbg !914
  br i1 %31, label %38, label %32, !dbg !915

32:                                               ; preds = %26, %20
  %33 = load ptr, ptr %11, align 8, !dbg !916
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !916
  %35 = load i8, ptr %34, align 1, !dbg !916
  %36 = sext i8 %35 to i32, !dbg !916
  %37 = icmp eq i32 %36, 0, !dbg !917
  br i1 %37, label %38, label %39, !dbg !918

38:                                               ; preds = %32, %26
  store i32 -22, ptr %7, align 4, !dbg !919
  br label %90, !dbg !921

39:                                               ; preds = %32
  %40 = call i32 @socket(i32 noundef 1, i32 noundef 524290, i32 noundef 0) #8, !dbg !922
  store i32 %40, ptr %6, align 4, !dbg !923
  %41 = load i32, ptr %6, align 4, !dbg !924
  %42 = icmp slt i32 %41, 0, !dbg !926
  br i1 %42, label %43, label %47, !dbg !927

43:                                               ; preds = %39
  %44 = call ptr @__errno_location() #9, !dbg !928
  %45 = load i32, ptr %44, align 4, !dbg !928
  %46 = sub nsw i32 0, %45, !dbg !930
  store i32 %46, ptr %7, align 4, !dbg !931
  br label %90, !dbg !932

47:                                               ; preds = %39
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 128, i1 false), !dbg !933
  %48 = getelementptr inbounds %struct.sockaddr, ptr %10, i32 0, i32 0, !dbg !934
  store i16 1, ptr %48, align 8, !dbg !935
  %49 = getelementptr inbounds %struct.sockaddr_un, ptr %10, i32 0, i32 1, !dbg !936
  %50 = getelementptr inbounds [108 x i8], ptr %49, i64 0, i64 0, !dbg !937
  %51 = load ptr, ptr %11, align 8, !dbg !938
  %52 = call ptr @strncpy(ptr noundef %50, ptr noundef %51, i64 noundef 108) #8, !dbg !939
  %53 = getelementptr inbounds %struct.sockaddr_un, ptr %10, i32 0, i32 1, !dbg !940
  %54 = getelementptr inbounds [108 x i8], ptr %53, i64 0, i64 0, !dbg !942
  %55 = load i8, ptr %54, align 2, !dbg !942
  %56 = sext i8 %55 to i32, !dbg !942
  %57 = icmp eq i32 %56, 64, !dbg !943
  br i1 %57, label %58, label %61, !dbg !944

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.sockaddr_un, ptr %10, i32 0, i32 1, !dbg !945
  %60 = getelementptr inbounds [108 x i8], ptr %59, i64 0, i64 0, !dbg !946
  store i8 0, ptr %60, align 2, !dbg !947
  br label %61, !dbg !946

61:                                               ; preds = %58, %47
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 16, i1 false), !dbg !948
  %62 = load ptr, ptr %5, align 8, !dbg !949
  %63 = getelementptr inbounds %struct.iovec, ptr %9, i32 0, i32 0, !dbg !950
  store ptr %62, ptr %63, align 8, !dbg !951
  %64 = load ptr, ptr %5, align 8, !dbg !952
  %65 = call i64 @strlen(ptr noundef %64) #10, !dbg !953
  %66 = getelementptr inbounds %struct.iovec, ptr %9, i32 0, i32 1, !dbg !954
  store i64 %65, ptr %66, align 8, !dbg !955
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 56, i1 false), !dbg !956
  %67 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 0, !dbg !957
  store ptr %10, ptr %67, align 8, !dbg !958
  %68 = load ptr, ptr %11, align 8, !dbg !959
  %69 = call i64 @strlen(ptr noundef %68) #10, !dbg !960
  %70 = add i64 2, %69, !dbg !961
  %71 = trunc i64 %70 to i32, !dbg !962
  %72 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 1, !dbg !963
  store i32 %71, ptr %72, align 8, !dbg !964
  %73 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 1, !dbg !965
  %74 = load i32, ptr %73, align 8, !dbg !965
  %75 = zext i32 %74 to i64, !dbg !967
  %76 = icmp ugt i64 %75, 110, !dbg !968
  br i1 %76, label %77, label %79, !dbg !969

77:                                               ; preds = %61
  %78 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 1, !dbg !970
  store i32 110, ptr %78, align 8, !dbg !971
  br label %79, !dbg !972

79:                                               ; preds = %77, %61
  %80 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 2, !dbg !973
  store ptr %9, ptr %80, align 8, !dbg !974
  %81 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 3, !dbg !975
  store i64 1, ptr %81, align 8, !dbg !976
  %82 = load i32, ptr %6, align 4, !dbg !977
  %83 = call i64 @sendmsg(i32 noundef %82, ptr noundef %8, i32 noundef 16384), !dbg !979
  %84 = icmp slt i64 %83, 0, !dbg !980
  br i1 %84, label %85, label %89, !dbg !981

85:                                               ; preds = %79
  %86 = call ptr @__errno_location() #9, !dbg !982
  %87 = load i32, ptr %86, align 4, !dbg !982
  %88 = sub nsw i32 0, %87, !dbg !984
  store i32 %88, ptr %7, align 4, !dbg !985
  br label %90, !dbg !986

89:                                               ; preds = %79
  store i32 1, ptr %7, align 4, !dbg !987
  br label %90, !dbg !988

90:                                               ; preds = %89, %85, %43, %38, %14
  call void @llvm.dbg.label(metadata !989), !dbg !990
  %91 = load i32, ptr %4, align 4, !dbg !991
  %92 = icmp ne i32 %91, 0, !dbg !991
  br i1 %92, label %93, label %95, !dbg !993

93:                                               ; preds = %90
  %94 = call i32 @unsetenv(ptr noundef @.str.2) #8, !dbg !994
  br label %95, !dbg !994

95:                                               ; preds = %93, %90
  %96 = load i32, ptr %6, align 4, !dbg !995
  %97 = icmp sge i32 %96, 0, !dbg !997
  br i1 %97, label %98, label %101, !dbg !998

98:                                               ; preds = %95
  %99 = load i32, ptr %6, align 4, !dbg !999
  %100 = call i32 @close(i32 noundef %99), !dbg !1000
  br label %101, !dbg !1000

101:                                              ; preds = %98, %95
  %102 = load i32, ptr %7, align 4, !dbg !1001
  store i32 %102, ptr %3, align 4, !dbg !1002
  br label %103, !dbg !1002

103:                                              ; preds = %101, %19
  %104 = load i32, ptr %3, align 4, !dbg !1003
  ret i32 %104, !dbg !1003
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) #4

declare i32 @close(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_notifyf(i32 noundef %0, ptr noundef %1, ...) #0 !dbg !1004 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1007, metadata !DIExpression()), !dbg !1008
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1009, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1011, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1028, metadata !DIExpression()), !dbg !1029
  store ptr null, ptr %7, align 8, !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1030, metadata !DIExpression()), !dbg !1031
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1032
  call void @llvm.va_start(ptr %9), !dbg !1032
  %10 = load ptr, ptr %5, align 8, !dbg !1033
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1034
  %12 = call i32 @vasprintf(ptr noundef %7, ptr noundef %10, ptr noundef %11) #8, !dbg !1035
  store i32 %12, ptr %8, align 4, !dbg !1036
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1037
  call void @llvm.va_end(ptr %13), !dbg !1037
  %14 = load i32, ptr %8, align 4, !dbg !1038
  %15 = icmp slt i32 %14, 0, !dbg !1040
  br i1 %15, label %19, label %16, !dbg !1041

16:                                               ; preds = %2
  %17 = load ptr, ptr %7, align 8, !dbg !1042
  %18 = icmp ne ptr %17, null, !dbg !1042
  br i1 %18, label %20, label %19, !dbg !1043

19:                                               ; preds = %16, %2
  store i32 -12, ptr %3, align 4, !dbg !1044
  br label %26, !dbg !1044

20:                                               ; preds = %16
  %21 = load i32, ptr %4, align 4, !dbg !1045
  %22 = load ptr, ptr %7, align 8, !dbg !1046
  %23 = call i32 @sd_notify(i32 noundef %21, ptr noundef %22), !dbg !1047
  store i32 %23, ptr %8, align 4, !dbg !1048
  %24 = load ptr, ptr %7, align 8, !dbg !1049
  call void @free(ptr noundef %24) #8, !dbg !1050
  %25 = load i32, ptr %8, align 4, !dbg !1051
  store i32 %25, ptr %3, align 4, !dbg !1052
  br label %26, !dbg !1052

26:                                               ; preds = %20, %19
  %27 = load i32, ptr %3, align 4, !dbg !1053
  ret i32 %27, !dbg !1053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nounwind
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_booted() #0 !dbg !1054 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1057, metadata !DIExpression()), !dbg !1058
  %3 = call i32 @lstat(ptr noundef @.str.3, ptr noundef %2) #8, !dbg !1059
  %4 = icmp slt i32 %3, 0, !dbg !1061
  br i1 %4, label %5, label %6, !dbg !1062

5:                                                ; preds = %0
  store i32 0, ptr %1, align 4, !dbg !1063
  br label %14, !dbg !1063

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.stat, ptr %2, i32 0, i32 3, !dbg !1064
  %8 = load i32, ptr %7, align 8, !dbg !1064
  %9 = and i32 %8, 61440, !dbg !1064
  %10 = icmp eq i32 %9, 16384, !dbg !1064
  %11 = xor i1 %10, true, !dbg !1065
  %12 = xor i1 %11, true, !dbg !1066
  %13 = zext i1 %12 to i32, !dbg !1066
  store i32 %13, ptr %1, align 4, !dbg !1067
  br label %14, !dbg !1067

14:                                               ; preds = %6, %5
  %15 = load i32, ptr %1, align 4, !dbg !1068
  ret i32 %15, !dbg !1068
}

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_watchdog_enabled(i32 noundef %0, ptr noundef %1) #0 !dbg !1069 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1075, metadata !DIExpression()), !dbg !1076
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1077, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1079, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1082, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1086, metadata !DIExpression()), !dbg !1087
  store ptr null, ptr %8, align 8, !dbg !1087
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1088, metadata !DIExpression()), !dbg !1089
  %10 = call ptr @getenv(ptr noundef @.str.4) #8, !dbg !1090
  store ptr %10, ptr %7, align 8, !dbg !1091
  %11 = load ptr, ptr %7, align 8, !dbg !1092
  %12 = icmp ne ptr %11, null, !dbg !1092
  br i1 %12, label %14, label %13, !dbg !1094

13:                                               ; preds = %2
  store i32 0, ptr %9, align 4, !dbg !1095
  br label %86, !dbg !1097

14:                                               ; preds = %2
  %15 = call ptr @__errno_location() #9, !dbg !1098
  store i32 0, ptr %15, align 4, !dbg !1099
  %16 = load ptr, ptr %7, align 8, !dbg !1100
  %17 = call i64 @strtoul(ptr noundef %16, ptr noundef %8, i32 noundef 10) #8, !dbg !1101
  store i64 %17, ptr %6, align 8, !dbg !1102
  %18 = call ptr @__errno_location() #9, !dbg !1103
  %19 = load i32, ptr %18, align 4, !dbg !1103
  %20 = icmp sgt i32 %19, 0, !dbg !1105
  br i1 %20, label %21, label %25, !dbg !1106

21:                                               ; preds = %14
  %22 = call ptr @__errno_location() #9, !dbg !1107
  %23 = load i32, ptr %22, align 4, !dbg !1107
  %24 = sub nsw i32 0, %23, !dbg !1109
  store i32 %24, ptr %9, align 4, !dbg !1110
  br label %86, !dbg !1111

25:                                               ; preds = %14
  %26 = load ptr, ptr %8, align 8, !dbg !1112
  %27 = icmp ne ptr %26, null, !dbg !1112
  br i1 %27, label %28, label %40, !dbg !1114

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 8, !dbg !1115
  %30 = load ptr, ptr %7, align 8, !dbg !1116
  %31 = icmp eq ptr %29, %30, !dbg !1117
  br i1 %31, label %40, label %32, !dbg !1118

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 8, !dbg !1119
  %34 = load i8, ptr %33, align 1, !dbg !1120
  %35 = sext i8 %34 to i32, !dbg !1120
  %36 = icmp ne i32 %35, 0, !dbg !1120
  br i1 %36, label %40, label %37, !dbg !1121

37:                                               ; preds = %32
  %38 = load i64, ptr %6, align 8, !dbg !1122
  %39 = icmp ule i64 %38, 0, !dbg !1123
  br i1 %39, label %40, label %41, !dbg !1124

40:                                               ; preds = %37, %32, %28, %25
  store i32 -22, ptr %9, align 4, !dbg !1125
  br label %86, !dbg !1127

41:                                               ; preds = %37
  %42 = call i32 @getpid() #8, !dbg !1128
  %43 = load i64, ptr %6, align 8, !dbg !1130
  %44 = trunc i64 %43 to i32, !dbg !1131
  %45 = icmp ne i32 %42, %44, !dbg !1132
  br i1 %45, label %46, label %47, !dbg !1133

46:                                               ; preds = %41
  store i32 0, ptr %9, align 4, !dbg !1134
  br label %86, !dbg !1136

47:                                               ; preds = %41
  %48 = call ptr @getenv(ptr noundef @.str.5) #8, !dbg !1137
  store ptr %48, ptr %7, align 8, !dbg !1138
  %49 = load ptr, ptr %7, align 8, !dbg !1139
  %50 = icmp ne ptr %49, null, !dbg !1139
  br i1 %50, label %52, label %51, !dbg !1141

51:                                               ; preds = %47
  store i32 -22, ptr %9, align 4, !dbg !1142
  br label %86, !dbg !1144

52:                                               ; preds = %47
  %53 = call ptr @__errno_location() #9, !dbg !1145
  store i32 0, ptr %53, align 4, !dbg !1146
  %54 = load ptr, ptr %7, align 8, !dbg !1147
  %55 = call i64 @strtoull(ptr noundef %54, ptr noundef %8, i32 noundef 10) #8, !dbg !1148
  store i64 %55, ptr %5, align 8, !dbg !1149
  %56 = call ptr @__errno_location() #9, !dbg !1150
  %57 = load i32, ptr %56, align 4, !dbg !1150
  %58 = icmp sgt i32 %57, 0, !dbg !1152
  br i1 %58, label %59, label %63, !dbg !1153

59:                                               ; preds = %52
  %60 = call ptr @__errno_location() #9, !dbg !1154
  %61 = load i32, ptr %60, align 4, !dbg !1154
  %62 = sub nsw i32 0, %61, !dbg !1156
  store i32 %62, ptr %9, align 4, !dbg !1157
  br label %86, !dbg !1158

63:                                               ; preds = %52
  %64 = load ptr, ptr %8, align 8, !dbg !1159
  %65 = icmp ne ptr %64, null, !dbg !1159
  br i1 %65, label %66, label %78, !dbg !1161

66:                                               ; preds = %63
  %67 = load ptr, ptr %8, align 8, !dbg !1162
  %68 = load ptr, ptr %7, align 8, !dbg !1163
  %69 = icmp eq ptr %67, %68, !dbg !1164
  br i1 %69, label %78, label %70, !dbg !1165

70:                                               ; preds = %66
  %71 = load ptr, ptr %8, align 8, !dbg !1166
  %72 = load i8, ptr %71, align 1, !dbg !1167
  %73 = sext i8 %72 to i32, !dbg !1167
  %74 = icmp ne i32 %73, 0, !dbg !1167
  br i1 %74, label %78, label %75, !dbg !1168

75:                                               ; preds = %70
  %76 = load i64, ptr %6, align 8, !dbg !1169
  %77 = icmp ule i64 %76, 0, !dbg !1170
  br i1 %77, label %78, label %79, !dbg !1171

78:                                               ; preds = %75, %70, %66, %63
  store i32 -22, ptr %9, align 4, !dbg !1172
  br label %86, !dbg !1174

79:                                               ; preds = %75
  %80 = load ptr, ptr %4, align 8, !dbg !1175
  %81 = icmp ne ptr %80, null, !dbg !1175
  br i1 %81, label %82, label %85, !dbg !1177

82:                                               ; preds = %79
  %83 = load i64, ptr %5, align 8, !dbg !1178
  %84 = load ptr, ptr %4, align 8, !dbg !1179
  store i64 %83, ptr %84, align 8, !dbg !1180
  br label %85, !dbg !1181

85:                                               ; preds = %82, %79
  store i32 1, ptr %9, align 4, !dbg !1182
  br label %86, !dbg !1183

86:                                               ; preds = %85, %78, %59, %51, %46, %40, %21, %13
  call void @llvm.dbg.label(metadata !1184), !dbg !1185
  %87 = load i32, ptr %3, align 4, !dbg !1186
  %88 = icmp ne i32 %87, 0, !dbg !1186
  br i1 %88, label %89, label %92, !dbg !1188

89:                                               ; preds = %86
  %90 = call i32 @unsetenv(ptr noundef @.str.4) #8, !dbg !1189
  %91 = call i32 @unsetenv(ptr noundef @.str.5) #8, !dbg !1191
  br label %92, !dbg !1192

92:                                               ; preds = %89, %86
  %93 = load i32, ptr %9, align 4, !dbg !1193
  ret i32 %93, !dbg !1194
}

; Function Attrs: nounwind
declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/sd-daemon.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "de3fec4ce7d1f236ce6178a1d0e969ca")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 14)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 21)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 451, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 13)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 474, type: !11, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !27, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, retainedTypes: !67, globals: !76, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/raj/lwan/common/sd-daemon.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "de3fec4ce7d1f236ce6178a1d0e969ca")
!28 = !{!29, !42}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !30, line: 24, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41}
!33 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!34 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!35 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!36 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!37 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!38 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!39 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!40 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!41 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 202, baseType: !31, size: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!45 = !DIEnumerator(name: "MSG_OOB", value: 1)
!46 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!47 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!48 = !DIEnumerator(name: "MSG_TRYHARD", value: 4)
!49 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!50 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!51 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!52 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!53 = !DIEnumerator(name: "MSG_EOR", value: 128)
!54 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!55 = !DIEnumerator(name: "MSG_FIN", value: 512)
!56 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!57 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!58 = !DIEnumerator(name: "MSG_RST", value: 4096)
!59 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!60 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!61 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!62 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!63 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!64 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!65 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!66 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!67 = !{!68, !72, !73, !74}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !69, line: 97, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !71, line: 154, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !43, line: 33, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !71, line: 210, baseType: !31)
!76 = !{!0, !7, !9, !14, !19, !24}
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 2}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 16.0.0"}
!85 = distinct !DISubprogram(name: "sd_listen_fds", scope: !2, file: !2, line: 40, type: !86, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!72, !72}
!88 = !{}
!89 = !DILocalVariable(name: "unset_environment", arg: 1, scope: !85, file: !2, line: 40, type: !72)
!90 = !DILocation(line: 40, column: 23, scope: !85)
!91 = !DILocalVariable(name: "r", scope: !85, file: !2, line: 41, type: !72)
!92 = !DILocation(line: 41, column: 13, scope: !85)
!93 = !DILocalVariable(name: "fd", scope: !85, file: !2, line: 41, type: !72)
!94 = !DILocation(line: 41, column: 16, scope: !85)
!95 = !DILocalVariable(name: "e", scope: !85, file: !2, line: 42, type: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!98 = !DILocation(line: 42, column: 21, scope: !85)
!99 = !DILocalVariable(name: "p", scope: !85, file: !2, line: 43, type: !73)
!100 = !DILocation(line: 43, column: 15, scope: !85)
!101 = !DILocalVariable(name: "l", scope: !85, file: !2, line: 44, type: !102)
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DILocation(line: 44, column: 23, scope: !85)
!104 = !DILocation(line: 46, column: 13, scope: !85)
!105 = !DILocation(line: 46, column: 11, scope: !85)
!106 = !DILocation(line: 47, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !85, file: !2, line: 47, column: 13)
!108 = !DILocation(line: 47, column: 13, scope: !85)
!109 = !DILocation(line: 48, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !2, line: 47, column: 17)
!111 = !DILocation(line: 49, column: 17, scope: !110)
!112 = !DILocation(line: 52, column: 9, scope: !85)
!113 = !DILocation(line: 52, column: 15, scope: !85)
!114 = !DILocation(line: 53, column: 21, scope: !85)
!115 = !DILocation(line: 53, column: 13, scope: !85)
!116 = !DILocation(line: 53, column: 11, scope: !85)
!117 = !DILocation(line: 55, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !85, file: !2, line: 55, column: 13)
!119 = !DILocation(line: 55, column: 19, scope: !118)
!120 = !DILocation(line: 55, column: 13, scope: !85)
!121 = !DILocation(line: 56, column: 22, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !2, line: 55, column: 24)
!123 = !DILocation(line: 56, column: 21, scope: !122)
!124 = !DILocation(line: 56, column: 19, scope: !122)
!125 = !DILocation(line: 57, column: 17, scope: !122)
!126 = !DILocation(line: 60, column: 14, scope: !127)
!127 = distinct !DILexicalBlock(scope: !85, file: !2, line: 60, column: 13)
!128 = !DILocation(line: 60, column: 16, scope: !127)
!129 = !DILocation(line: 60, column: 19, scope: !127)
!130 = !DILocation(line: 60, column: 24, scope: !127)
!131 = !DILocation(line: 60, column: 21, scope: !127)
!132 = !DILocation(line: 60, column: 26, scope: !127)
!133 = !DILocation(line: 60, column: 30, scope: !127)
!134 = !DILocation(line: 60, column: 29, scope: !127)
!135 = !DILocation(line: 60, column: 32, scope: !127)
!136 = !DILocation(line: 60, column: 35, scope: !127)
!137 = !DILocation(line: 60, column: 37, scope: !127)
!138 = !DILocation(line: 60, column: 13, scope: !85)
!139 = !DILocation(line: 61, column: 19, scope: !140)
!140 = distinct !DILexicalBlock(scope: !127, file: !2, line: 60, column: 43)
!141 = !DILocation(line: 62, column: 17, scope: !140)
!142 = !DILocation(line: 66, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !85, file: !2, line: 66, column: 13)
!144 = !DILocation(line: 66, column: 33, scope: !143)
!145 = !DILocation(line: 66, column: 25, scope: !143)
!146 = !DILocation(line: 66, column: 22, scope: !143)
!147 = !DILocation(line: 66, column: 13, scope: !85)
!148 = !DILocation(line: 67, column: 19, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !2, line: 66, column: 36)
!150 = !DILocation(line: 68, column: 17, scope: !149)
!151 = !DILocation(line: 71, column: 13, scope: !85)
!152 = !DILocation(line: 71, column: 11, scope: !85)
!153 = !DILocation(line: 72, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !85, file: !2, line: 72, column: 13)
!155 = !DILocation(line: 72, column: 13, scope: !85)
!156 = !DILocation(line: 73, column: 19, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !2, line: 72, column: 17)
!158 = !DILocation(line: 74, column: 17, scope: !157)
!159 = !DILocation(line: 77, column: 9, scope: !85)
!160 = !DILocation(line: 77, column: 15, scope: !85)
!161 = !DILocation(line: 78, column: 21, scope: !85)
!162 = !DILocation(line: 78, column: 13, scope: !85)
!163 = !DILocation(line: 78, column: 11, scope: !85)
!164 = !DILocation(line: 80, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !85, file: !2, line: 80, column: 13)
!166 = !DILocation(line: 80, column: 19, scope: !165)
!167 = !DILocation(line: 80, column: 13, scope: !85)
!168 = !DILocation(line: 81, column: 22, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !2, line: 80, column: 24)
!170 = !DILocation(line: 81, column: 21, scope: !169)
!171 = !DILocation(line: 81, column: 19, scope: !169)
!172 = !DILocation(line: 82, column: 17, scope: !169)
!173 = !DILocation(line: 85, column: 14, scope: !174)
!174 = distinct !DILexicalBlock(scope: !85, file: !2, line: 85, column: 13)
!175 = !DILocation(line: 85, column: 16, scope: !174)
!176 = !DILocation(line: 85, column: 19, scope: !174)
!177 = !DILocation(line: 85, column: 24, scope: !174)
!178 = !DILocation(line: 85, column: 21, scope: !174)
!179 = !DILocation(line: 85, column: 26, scope: !174)
!180 = !DILocation(line: 85, column: 30, scope: !174)
!181 = !DILocation(line: 85, column: 29, scope: !174)
!182 = !DILocation(line: 85, column: 13, scope: !85)
!183 = !DILocation(line: 86, column: 19, scope: !184)
!184 = distinct !DILexicalBlock(scope: !174, file: !2, line: 85, column: 33)
!185 = !DILocation(line: 87, column: 17, scope: !184)
!186 = !DILocation(line: 90, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !85, file: !2, line: 90, column: 9)
!188 = !DILocation(line: 90, column: 14, scope: !187)
!189 = !DILocation(line: 90, column: 40, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !2, line: 90, column: 9)
!191 = !DILocation(line: 90, column: 73, scope: !190)
!192 = !DILocation(line: 90, column: 67, scope: !190)
!193 = !DILocation(line: 90, column: 65, scope: !190)
!194 = !DILocation(line: 90, column: 43, scope: !190)
!195 = !DILocation(line: 90, column: 9, scope: !187)
!196 = !DILocalVariable(name: "flags", scope: !197, file: !2, line: 91, type: !72)
!197 = distinct !DILexicalBlock(scope: !190, file: !2, line: 90, column: 83)
!198 = !DILocation(line: 91, column: 21, scope: !197)
!199 = !DILocation(line: 93, column: 31, scope: !197)
!200 = !DILocation(line: 93, column: 25, scope: !197)
!201 = !DILocation(line: 93, column: 23, scope: !197)
!202 = !DILocation(line: 94, column: 21, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !2, line: 94, column: 21)
!204 = !DILocation(line: 94, column: 27, scope: !203)
!205 = !DILocation(line: 94, column: 21, scope: !197)
!206 = !DILocation(line: 95, column: 30, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !2, line: 94, column: 32)
!208 = !DILocation(line: 95, column: 29, scope: !207)
!209 = !DILocation(line: 95, column: 27, scope: !207)
!210 = !DILocation(line: 96, column: 25, scope: !207)
!211 = !DILocation(line: 99, column: 21, scope: !212)
!212 = distinct !DILexicalBlock(scope: !197, file: !2, line: 99, column: 21)
!213 = !DILocation(line: 99, column: 27, scope: !212)
!214 = !DILocation(line: 99, column: 21, scope: !197)
!215 = !DILocation(line: 100, column: 25, scope: !212)
!216 = !DILocation(line: 102, column: 27, scope: !217)
!217 = distinct !DILexicalBlock(scope: !197, file: !2, line: 102, column: 21)
!218 = !DILocation(line: 102, column: 40, scope: !217)
!219 = !DILocation(line: 102, column: 46, scope: !217)
!220 = !DILocation(line: 102, column: 21, scope: !217)
!221 = !DILocation(line: 102, column: 60, scope: !217)
!222 = !DILocation(line: 102, column: 21, scope: !197)
!223 = !DILocation(line: 103, column: 30, scope: !224)
!224 = distinct !DILexicalBlock(scope: !217, file: !2, line: 102, column: 65)
!225 = !DILocation(line: 103, column: 29, scope: !224)
!226 = !DILocation(line: 103, column: 27, scope: !224)
!227 = !DILocation(line: 104, column: 25, scope: !224)
!228 = !DILocation(line: 106, column: 9, scope: !197)
!229 = !DILocation(line: 90, column: 79, scope: !190)
!230 = !DILocation(line: 90, column: 9, scope: !190)
!231 = distinct !{!231, !195, !232, !233}
!232 = !DILocation(line: 106, column: 9, scope: !187)
!233 = !{!"llvm.loop.mustprogress"}
!234 = !DILocation(line: 108, column: 19, scope: !85)
!235 = !DILocation(line: 108, column: 13, scope: !85)
!236 = !DILocation(line: 108, column: 11, scope: !85)
!237 = !DILocation(line: 108, column: 9, scope: !85)
!238 = !DILabel(scope: !85, name: "finish", file: !2, line: 110)
!239 = !DILocation(line: 110, column: 1, scope: !85)
!240 = !DILocation(line: 111, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !85, file: !2, line: 111, column: 13)
!242 = !DILocation(line: 111, column: 13, scope: !85)
!243 = !DILocation(line: 112, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !2, line: 111, column: 32)
!245 = !DILocation(line: 113, column: 17, scope: !244)
!246 = !DILocation(line: 114, column: 9, scope: !244)
!247 = !DILocation(line: 116, column: 16, scope: !85)
!248 = !DILocation(line: 116, column: 9, scope: !85)
!249 = distinct !DISubprogram(name: "sd_is_fifo", scope: !2, file: !2, line: 119, type: !250, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!250 = !DISubroutineType(types: !251)
!251 = !{!72, !72, !96}
!252 = !DILocalVariable(name: "fd", arg: 1, scope: !249, file: !2, line: 119, type: !72)
!253 = !DILocation(line: 119, column: 20, scope: !249)
!254 = !DILocalVariable(name: "path", arg: 2, scope: !249, file: !2, line: 119, type: !96)
!255 = !DILocation(line: 119, column: 36, scope: !249)
!256 = !DILocalVariable(name: "st_fd", scope: !249, file: !2, line: 120, type: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !258, line: 26, size: 1152, elements: !259)
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!259 = !{!260, !262, !264, !266, !268, !270, !272, !273, !274, !277, !279, !281, !289, !290, !291}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !257, file: !258, line: 31, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !71, line: 145, baseType: !102)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !257, file: !258, line: 36, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !71, line: 148, baseType: !102)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !257, file: !258, line: 44, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !71, line: 151, baseType: !102)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !257, file: !258, line: 45, baseType: !267, size: 32, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !71, line: 150, baseType: !31)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !257, file: !258, line: 47, baseType: !269, size: 32, offset: 224)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !71, line: 146, baseType: !31)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !257, file: !258, line: 48, baseType: !271, size: 32, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !71, line: 147, baseType: !31)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !257, file: !258, line: 50, baseType: !72, size: 32, offset: 288)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !257, file: !258, line: 52, baseType: !261, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !257, file: !258, line: 57, baseType: !275, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 152, baseType: !276)
!276 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !257, file: !258, line: 61, baseType: !278, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !71, line: 175, baseType: !276)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !257, file: !258, line: 63, baseType: !280, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !71, line: 180, baseType: !276)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !257, file: !258, line: 74, baseType: !282, size: 128, offset: 576)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !283, line: 11, size: 128, elements: !284)
!283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!284 = !{!285, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !282, file: !283, line: 16, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !71, line: 160, baseType: !276)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !282, file: !283, line: 21, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !71, line: 197, baseType: !276)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !257, file: !258, line: 75, baseType: !282, size: 128, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !257, file: !258, line: 76, baseType: !282, size: 128, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !257, file: !258, line: 89, baseType: !292, size: 192, offset: 960)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 192, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 3)
!295 = !DILocation(line: 120, column: 21, scope: !249)
!296 = !DILocation(line: 122, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !249, file: !2, line: 122, column: 13)
!298 = !DILocation(line: 122, column: 16, scope: !297)
!299 = !DILocation(line: 122, column: 13, scope: !249)
!300 = !DILocation(line: 123, column: 17, scope: !297)
!301 = !DILocation(line: 125, column: 19, scope: !302)
!302 = distinct !DILexicalBlock(scope: !249, file: !2, line: 125, column: 13)
!303 = !DILocation(line: 125, column: 13, scope: !302)
!304 = !DILocation(line: 125, column: 31, scope: !302)
!305 = !DILocation(line: 125, column: 13, scope: !249)
!306 = !DILocation(line: 126, column: 25, scope: !302)
!307 = !DILocation(line: 126, column: 24, scope: !302)
!308 = !DILocation(line: 126, column: 17, scope: !302)
!309 = !DILocation(line: 128, column: 14, scope: !310)
!310 = distinct !DILexicalBlock(scope: !249, file: !2, line: 128, column: 13)
!311 = !DILocation(line: 128, column: 13, scope: !249)
!312 = !DILocation(line: 129, column: 17, scope: !310)
!313 = !DILocation(line: 131, column: 13, scope: !314)
!314 = distinct !DILexicalBlock(scope: !249, file: !2, line: 131, column: 13)
!315 = !DILocation(line: 131, column: 13, scope: !249)
!316 = !DILocalVariable(name: "st_path", scope: !317, file: !2, line: 132, type: !257)
!317 = distinct !DILexicalBlock(scope: !314, file: !2, line: 131, column: 19)
!318 = !DILocation(line: 132, column: 29, scope: !317)
!319 = !DILocation(line: 134, column: 26, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !2, line: 134, column: 21)
!321 = !DILocation(line: 134, column: 21, scope: !320)
!322 = !DILocation(line: 134, column: 42, scope: !320)
!323 = !DILocation(line: 134, column: 21, scope: !317)
!324 = !DILocation(line: 136, column: 29, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 136, column: 29)
!326 = distinct !DILexicalBlock(scope: !320, file: !2, line: 134, column: 47)
!327 = !DILocation(line: 136, column: 35, scope: !325)
!328 = !DILocation(line: 136, column: 45, scope: !325)
!329 = !DILocation(line: 136, column: 48, scope: !325)
!330 = !DILocation(line: 136, column: 54, scope: !325)
!331 = !DILocation(line: 136, column: 29, scope: !326)
!332 = !DILocation(line: 137, column: 33, scope: !325)
!333 = !DILocation(line: 139, column: 33, scope: !326)
!334 = !DILocation(line: 139, column: 32, scope: !326)
!335 = !DILocation(line: 139, column: 25, scope: !326)
!336 = !DILocation(line: 143, column: 33, scope: !317)
!337 = !DILocation(line: 143, column: 49, scope: !317)
!338 = !DILocation(line: 143, column: 40, scope: !317)
!339 = !DILocation(line: 143, column: 56, scope: !317)
!340 = !DILocation(line: 144, column: 33, scope: !317)
!341 = !DILocation(line: 144, column: 49, scope: !317)
!342 = !DILocation(line: 144, column: 40, scope: !317)
!343 = !DILocation(line: 0, scope: !317)
!344 = !DILocation(line: 142, column: 17, scope: !317)
!345 = !DILocation(line: 147, column: 9, scope: !249)
!346 = !DILocation(line: 148, column: 1, scope: !249)
!347 = distinct !DISubprogram(name: "sd_is_special", scope: !2, file: !2, line: 150, type: !250, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!348 = !DILocalVariable(name: "fd", arg: 1, scope: !347, file: !2, line: 150, type: !72)
!349 = !DILocation(line: 150, column: 23, scope: !347)
!350 = !DILocalVariable(name: "path", arg: 2, scope: !347, file: !2, line: 150, type: !96)
!351 = !DILocation(line: 150, column: 39, scope: !347)
!352 = !DILocalVariable(name: "st_fd", scope: !347, file: !2, line: 151, type: !257)
!353 = !DILocation(line: 151, column: 21, scope: !347)
!354 = !DILocation(line: 153, column: 13, scope: !355)
!355 = distinct !DILexicalBlock(scope: !347, file: !2, line: 153, column: 13)
!356 = !DILocation(line: 153, column: 16, scope: !355)
!357 = !DILocation(line: 153, column: 13, scope: !347)
!358 = !DILocation(line: 154, column: 17, scope: !355)
!359 = !DILocation(line: 156, column: 19, scope: !360)
!360 = distinct !DILexicalBlock(scope: !347, file: !2, line: 156, column: 13)
!361 = !DILocation(line: 156, column: 13, scope: !360)
!362 = !DILocation(line: 156, column: 31, scope: !360)
!363 = !DILocation(line: 156, column: 13, scope: !347)
!364 = !DILocation(line: 157, column: 25, scope: !360)
!365 = !DILocation(line: 157, column: 24, scope: !360)
!366 = !DILocation(line: 157, column: 17, scope: !360)
!367 = !DILocation(line: 159, column: 14, scope: !368)
!368 = distinct !DILexicalBlock(scope: !347, file: !2, line: 159, column: 13)
!369 = !DILocation(line: 159, column: 37, scope: !368)
!370 = !DILocation(line: 159, column: 41, scope: !368)
!371 = !DILocation(line: 159, column: 13, scope: !347)
!372 = !DILocation(line: 160, column: 17, scope: !368)
!373 = !DILocation(line: 162, column: 13, scope: !374)
!374 = distinct !DILexicalBlock(scope: !347, file: !2, line: 162, column: 13)
!375 = !DILocation(line: 162, column: 13, scope: !347)
!376 = !DILocalVariable(name: "st_path", scope: !377, file: !2, line: 163, type: !257)
!377 = distinct !DILexicalBlock(scope: !374, file: !2, line: 162, column: 19)
!378 = !DILocation(line: 163, column: 29, scope: !377)
!379 = !DILocation(line: 165, column: 26, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !2, line: 165, column: 21)
!381 = !DILocation(line: 165, column: 21, scope: !380)
!382 = !DILocation(line: 165, column: 42, scope: !380)
!383 = !DILocation(line: 165, column: 21, scope: !377)
!384 = !DILocation(line: 167, column: 29, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 167, column: 29)
!386 = distinct !DILexicalBlock(scope: !380, file: !2, line: 165, column: 47)
!387 = !DILocation(line: 167, column: 35, scope: !385)
!388 = !DILocation(line: 167, column: 45, scope: !385)
!389 = !DILocation(line: 167, column: 48, scope: !385)
!390 = !DILocation(line: 167, column: 54, scope: !385)
!391 = !DILocation(line: 167, column: 29, scope: !386)
!392 = !DILocation(line: 168, column: 33, scope: !385)
!393 = !DILocation(line: 170, column: 33, scope: !386)
!394 = !DILocation(line: 170, column: 32, scope: !386)
!395 = !DILocation(line: 170, column: 25, scope: !386)
!396 = !DILocation(line: 173, column: 21, scope: !397)
!397 = distinct !DILexicalBlock(scope: !377, file: !2, line: 173, column: 21)
!398 = !DILocation(line: 173, column: 44, scope: !397)
!399 = !DILocation(line: 173, column: 47, scope: !397)
!400 = !DILocation(line: 173, column: 21, scope: !377)
!401 = !DILocation(line: 175, column: 41, scope: !397)
!402 = !DILocation(line: 175, column: 57, scope: !397)
!403 = !DILocation(line: 175, column: 48, scope: !397)
!404 = !DILocation(line: 175, column: 64, scope: !397)
!405 = !DILocation(line: 176, column: 41, scope: !397)
!406 = !DILocation(line: 176, column: 57, scope: !397)
!407 = !DILocation(line: 176, column: 48, scope: !397)
!408 = !DILocation(line: 0, scope: !397)
!409 = !DILocation(line: 174, column: 25, scope: !397)
!410 = !DILocation(line: 177, column: 26, scope: !411)
!411 = distinct !DILexicalBlock(scope: !397, file: !2, line: 177, column: 26)
!412 = !DILocation(line: 177, column: 49, scope: !411)
!413 = !DILocation(line: 177, column: 52, scope: !411)
!414 = !DILocation(line: 177, column: 26, scope: !397)
!415 = !DILocation(line: 178, column: 40, scope: !411)
!416 = !DILocation(line: 178, column: 57, scope: !411)
!417 = !DILocation(line: 178, column: 48, scope: !411)
!418 = !DILocation(line: 178, column: 25, scope: !411)
!419 = !DILocation(line: 180, column: 25, scope: !411)
!420 = !DILocation(line: 183, column: 9, scope: !347)
!421 = !DILocation(line: 184, column: 1, scope: !347)
!422 = distinct !DISubprogram(name: "sd_is_socket", scope: !2, file: !2, line: 237, type: !423, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!423 = !DISubroutineType(types: !424)
!424 = !{!72, !72, !72, !72, !72}
!425 = !DILocalVariable(name: "fd", arg: 1, scope: !422, file: !2, line: 237, type: !72)
!426 = !DILocation(line: 237, column: 22, scope: !422)
!427 = !DILocalVariable(name: "family", arg: 2, scope: !422, file: !2, line: 237, type: !72)
!428 = !DILocation(line: 237, column: 30, scope: !422)
!429 = !DILocalVariable(name: "type", arg: 3, scope: !422, file: !2, line: 237, type: !72)
!430 = !DILocation(line: 237, column: 42, scope: !422)
!431 = !DILocalVariable(name: "listening", arg: 4, scope: !422, file: !2, line: 237, type: !72)
!432 = !DILocation(line: 237, column: 52, scope: !422)
!433 = !DILocalVariable(name: "r", scope: !422, file: !2, line: 238, type: !72)
!434 = !DILocation(line: 238, column: 13, scope: !422)
!435 = !DILocation(line: 240, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !422, file: !2, line: 240, column: 13)
!437 = !DILocation(line: 240, column: 20, scope: !436)
!438 = !DILocation(line: 240, column: 13, scope: !422)
!439 = !DILocation(line: 241, column: 17, scope: !436)
!440 = !DILocation(line: 243, column: 35, scope: !422)
!441 = !DILocation(line: 243, column: 39, scope: !422)
!442 = !DILocation(line: 243, column: 45, scope: !422)
!443 = !DILocation(line: 243, column: 13, scope: !422)
!444 = !DILocation(line: 243, column: 11, scope: !422)
!445 = !DILocation(line: 244, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !422, file: !2, line: 244, column: 13)
!447 = !DILocation(line: 244, column: 15, scope: !446)
!448 = !DILocation(line: 244, column: 13, scope: !422)
!449 = !DILocation(line: 245, column: 24, scope: !446)
!450 = !DILocation(line: 245, column: 17, scope: !446)
!451 = !DILocation(line: 247, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !422, file: !2, line: 247, column: 13)
!453 = !DILocation(line: 247, column: 20, scope: !452)
!454 = !DILocation(line: 247, column: 13, scope: !422)
!455 = !DILocalVariable(name: "sockaddr", scope: !456, file: !2, line: 248, type: !457)
!456 = distinct !DILexicalBlock(scope: !452, file: !2, line: 247, column: 25)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sockaddr_union", file: !2, line: 229, size: 1024, elements: !458)
!458 = !{!459, !467, !489, !514, !523}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !457, file: !2, line: 230, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !43, line: 180, size: 128, elements: !461)
!461 = !{!462, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !460, file: !43, line: 182, baseType: !463, size: 16)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !464, line: 28, baseType: !465)
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!465 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !460, file: !43, line: 183, baseType: !11, size: 112, offset: 16)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "in4", scope: !457, file: !2, line: 231, baseType: !468, size: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !469, line: 245, size: 128, elements: !470)
!469 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!470 = !{!471, !472, !477, !484}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !468, file: !469, line: 247, baseType: !463, size: 16)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !468, file: !469, line: 248, baseType: !473, size: 16, offset: 16)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !469, line: 123, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !475, line: 25, baseType: !476)
!475 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !71, line: 40, baseType: !465)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !468, file: !469, line: 249, baseType: !478, size: 32, offset: 32)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !469, line: 31, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !478, file: !469, line: 33, baseType: !481, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !469, line: 30, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !475, line: 26, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !71, line: 42, baseType: !31)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !468, file: !469, line: 252, baseType: !485, size: 64, offset: 64)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 64, elements: !487)
!486 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!487 = !{!488}
!488 = !DISubrange(count: 8)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "in6", scope: !457, file: !2, line: 232, baseType: !490, size: 224)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !469, line: 260, size: 224, elements: !491)
!491 = !{!492, !493, !494, !495, !513}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !490, file: !469, line: 262, baseType: !463, size: 16)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !490, file: !469, line: 263, baseType: !473, size: 16, offset: 16)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !490, file: !469, line: 264, baseType: !482, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !490, file: !469, line: 265, baseType: !496, size: 128, offset: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !469, line: 219, size: 128, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !496, file: !469, line: 226, baseType: !499, size: 128)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !469, line: 221, size: 128, elements: !500)
!500 = !{!501, !507, !509}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !499, file: !469, line: 223, baseType: !502, size: 128)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 128, elements: !505)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !475, line: 24, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !71, line: 38, baseType: !486)
!505 = !{!506}
!506 = !DISubrange(count: 16)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !499, file: !469, line: 224, baseType: !508, size: 128)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 128, elements: !487)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !499, file: !469, line: 225, baseType: !510, size: 128)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 128, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 4)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !490, file: !469, line: 266, baseType: !482, size: 32, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !457, file: !2, line: 233, baseType: !515, size: 880)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !516, line: 29, size: 880, elements: !517)
!516 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !515, file: !516, line: 31, baseType: !463, size: 16)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !515, file: !516, line: 32, baseType: !520, size: 864, offset: 16)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 108)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !457, file: !2, line: 234, baseType: !524, size: 1024)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !43, line: 193, size: 1024, elements: !525)
!525 = !{!526, !527, !531}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !524, file: !43, line: 195, baseType: !463, size: 16)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !524, file: !43, line: 196, baseType: !528, size: 944, offset: 16)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 118)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !524, file: !43, line: 197, baseType: !102, size: 64, offset: 960)
!532 = !DILocation(line: 248, column: 38, scope: !456)
!533 = !DILocalVariable(name: "l", scope: !456, file: !2, line: 249, type: !74)
!534 = !DILocation(line: 249, column: 27, scope: !456)
!535 = !DILocation(line: 251, column: 33, scope: !536)
!536 = distinct !DILexicalBlock(scope: !456, file: !2, line: 251, column: 21)
!537 = !DILocation(line: 251, column: 37, scope: !536)
!538 = !DILocation(line: 251, column: 21, scope: !536)
!539 = !DILocation(line: 251, column: 55, scope: !536)
!540 = !DILocation(line: 251, column: 21, scope: !456)
!541 = !DILocation(line: 252, column: 33, scope: !536)
!542 = !DILocation(line: 252, column: 32, scope: !536)
!543 = !DILocation(line: 252, column: 25, scope: !536)
!544 = !DILocation(line: 254, column: 21, scope: !545)
!545 = distinct !DILexicalBlock(scope: !456, file: !2, line: 254, column: 21)
!546 = !DILocation(line: 254, column: 23, scope: !545)
!547 = !DILocation(line: 254, column: 21, scope: !456)
!548 = !DILocation(line: 255, column: 25, scope: !545)
!549 = !DILocation(line: 257, column: 36, scope: !456)
!550 = !DILocation(line: 257, column: 24, scope: !456)
!551 = !DILocation(line: 257, column: 49, scope: !456)
!552 = !DILocation(line: 257, column: 46, scope: !456)
!553 = !DILocation(line: 257, column: 17, scope: !456)
!554 = !DILocation(line: 260, column: 9, scope: !422)
!555 = !DILocation(line: 261, column: 1, scope: !422)
!556 = distinct !DISubprogram(name: "sd_is_socket_internal", scope: !2, file: !2, line: 186, type: !557, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !88)
!557 = !DISubroutineType(types: !558)
!558 = !{!72, !72, !72, !72}
!559 = !DILocalVariable(name: "fd", arg: 1, scope: !556, file: !2, line: 186, type: !72)
!560 = !DILocation(line: 186, column: 38, scope: !556)
!561 = !DILocalVariable(name: "type", arg: 2, scope: !556, file: !2, line: 186, type: !72)
!562 = !DILocation(line: 186, column: 46, scope: !556)
!563 = !DILocalVariable(name: "listening", arg: 3, scope: !556, file: !2, line: 186, type: !72)
!564 = !DILocation(line: 186, column: 56, scope: !556)
!565 = !DILocalVariable(name: "st_fd", scope: !556, file: !2, line: 187, type: !257)
!566 = !DILocation(line: 187, column: 21, scope: !556)
!567 = !DILocation(line: 189, column: 13, scope: !568)
!568 = distinct !DILexicalBlock(scope: !556, file: !2, line: 189, column: 13)
!569 = !DILocation(line: 189, column: 16, scope: !568)
!570 = !DILocation(line: 189, column: 20, scope: !568)
!571 = !DILocation(line: 189, column: 23, scope: !568)
!572 = !DILocation(line: 189, column: 28, scope: !568)
!573 = !DILocation(line: 189, column: 13, scope: !556)
!574 = !DILocation(line: 190, column: 17, scope: !568)
!575 = !DILocation(line: 192, column: 19, scope: !576)
!576 = distinct !DILexicalBlock(scope: !556, file: !2, line: 192, column: 13)
!577 = !DILocation(line: 192, column: 13, scope: !576)
!578 = !DILocation(line: 192, column: 31, scope: !576)
!579 = !DILocation(line: 192, column: 13, scope: !556)
!580 = !DILocation(line: 193, column: 25, scope: !576)
!581 = !DILocation(line: 193, column: 24, scope: !576)
!582 = !DILocation(line: 193, column: 17, scope: !576)
!583 = !DILocation(line: 195, column: 14, scope: !584)
!584 = distinct !DILexicalBlock(scope: !556, file: !2, line: 195, column: 13)
!585 = !DILocation(line: 195, column: 13, scope: !556)
!586 = !DILocation(line: 196, column: 17, scope: !584)
!587 = !DILocation(line: 198, column: 13, scope: !588)
!588 = distinct !DILexicalBlock(scope: !556, file: !2, line: 198, column: 13)
!589 = !DILocation(line: 198, column: 18, scope: !588)
!590 = !DILocation(line: 198, column: 13, scope: !556)
!591 = !DILocalVariable(name: "other_type", scope: !592, file: !2, line: 199, type: !72)
!592 = distinct !DILexicalBlock(scope: !588, file: !2, line: 198, column: 24)
!593 = !DILocation(line: 199, column: 21, scope: !592)
!594 = !DILocalVariable(name: "l", scope: !592, file: !2, line: 200, type: !74)
!595 = !DILocation(line: 200, column: 27, scope: !592)
!596 = !DILocation(line: 202, column: 32, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !2, line: 202, column: 21)
!598 = !DILocation(line: 202, column: 21, scope: !597)
!599 = !DILocation(line: 202, column: 74, scope: !597)
!600 = !DILocation(line: 202, column: 21, scope: !592)
!601 = !DILocation(line: 203, column: 33, scope: !597)
!602 = !DILocation(line: 203, column: 32, scope: !597)
!603 = !DILocation(line: 203, column: 25, scope: !597)
!604 = !DILocation(line: 205, column: 21, scope: !605)
!605 = distinct !DILexicalBlock(scope: !592, file: !2, line: 205, column: 21)
!606 = !DILocation(line: 205, column: 23, scope: !605)
!607 = !DILocation(line: 205, column: 21, scope: !592)
!608 = !DILocation(line: 206, column: 25, scope: !605)
!609 = !DILocation(line: 208, column: 21, scope: !610)
!610 = distinct !DILexicalBlock(scope: !592, file: !2, line: 208, column: 21)
!611 = !DILocation(line: 208, column: 35, scope: !610)
!612 = !DILocation(line: 208, column: 32, scope: !610)
!613 = !DILocation(line: 208, column: 21, scope: !592)
!614 = !DILocation(line: 209, column: 25, scope: !610)
!615 = !DILocation(line: 210, column: 9, scope: !592)
!616 = !DILocation(line: 212, column: 13, scope: !617)
!617 = distinct !DILexicalBlock(scope: !556, file: !2, line: 212, column: 13)
!618 = !DILocation(line: 212, column: 23, scope: !617)
!619 = !DILocation(line: 212, column: 13, scope: !556)
!620 = !DILocalVariable(name: "accepting", scope: !621, file: !2, line: 213, type: !72)
!621 = distinct !DILexicalBlock(scope: !617, file: !2, line: 212, column: 29)
!622 = !DILocation(line: 213, column: 21, scope: !621)
!623 = !DILocalVariable(name: "l", scope: !621, file: !2, line: 214, type: !74)
!624 = !DILocation(line: 214, column: 27, scope: !621)
!625 = !DILocation(line: 216, column: 32, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !2, line: 216, column: 21)
!627 = !DILocation(line: 216, column: 21, scope: !626)
!628 = !DILocation(line: 216, column: 79, scope: !626)
!629 = !DILocation(line: 216, column: 21, scope: !621)
!630 = !DILocation(line: 217, column: 33, scope: !626)
!631 = !DILocation(line: 217, column: 32, scope: !626)
!632 = !DILocation(line: 217, column: 25, scope: !626)
!633 = !DILocation(line: 219, column: 21, scope: !634)
!634 = distinct !DILexicalBlock(scope: !621, file: !2, line: 219, column: 21)
!635 = !DILocation(line: 219, column: 23, scope: !634)
!636 = !DILocation(line: 219, column: 21, scope: !621)
!637 = !DILocation(line: 220, column: 25, scope: !634)
!638 = !DILocation(line: 222, column: 22, scope: !639)
!639 = distinct !DILexicalBlock(scope: !621, file: !2, line: 222, column: 21)
!640 = !DILocation(line: 222, column: 21, scope: !639)
!641 = !DILocation(line: 222, column: 36, scope: !639)
!642 = !DILocation(line: 222, column: 35, scope: !639)
!643 = !DILocation(line: 222, column: 32, scope: !639)
!644 = !DILocation(line: 222, column: 21, scope: !621)
!645 = !DILocation(line: 223, column: 25, scope: !639)
!646 = !DILocation(line: 224, column: 9, scope: !621)
!647 = !DILocation(line: 226, column: 9, scope: !556)
!648 = !DILocation(line: 227, column: 1, scope: !556)
!649 = distinct !DISubprogram(name: "sd_is_socket_inet", scope: !2, file: !2, line: 263, type: !650, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!650 = !DISubroutineType(types: !651)
!651 = !{!72, !72, !72, !72, !72, !474}
!652 = !DILocalVariable(name: "fd", arg: 1, scope: !649, file: !2, line: 263, type: !72)
!653 = !DILocation(line: 263, column: 27, scope: !649)
!654 = !DILocalVariable(name: "family", arg: 2, scope: !649, file: !2, line: 263, type: !72)
!655 = !DILocation(line: 263, column: 35, scope: !649)
!656 = !DILocalVariable(name: "type", arg: 3, scope: !649, file: !2, line: 263, type: !72)
!657 = !DILocation(line: 263, column: 47, scope: !649)
!658 = !DILocalVariable(name: "listening", arg: 4, scope: !649, file: !2, line: 263, type: !72)
!659 = !DILocation(line: 263, column: 57, scope: !649)
!660 = !DILocalVariable(name: "port", arg: 5, scope: !649, file: !2, line: 263, type: !474)
!661 = !DILocation(line: 263, column: 77, scope: !649)
!662 = !DILocalVariable(name: "sockaddr", scope: !649, file: !2, line: 264, type: !457)
!663 = !DILocation(line: 264, column: 30, scope: !649)
!664 = !DILocalVariable(name: "l", scope: !649, file: !2, line: 265, type: !74)
!665 = !DILocation(line: 265, column: 19, scope: !649)
!666 = !DILocalVariable(name: "r", scope: !649, file: !2, line: 266, type: !72)
!667 = !DILocation(line: 266, column: 13, scope: !649)
!668 = !DILocation(line: 268, column: 13, scope: !669)
!669 = distinct !DILexicalBlock(scope: !649, file: !2, line: 268, column: 13)
!670 = !DILocation(line: 268, column: 20, scope: !669)
!671 = !DILocation(line: 268, column: 25, scope: !669)
!672 = !DILocation(line: 268, column: 28, scope: !669)
!673 = !DILocation(line: 268, column: 35, scope: !669)
!674 = !DILocation(line: 268, column: 46, scope: !669)
!675 = !DILocation(line: 268, column: 49, scope: !669)
!676 = !DILocation(line: 268, column: 56, scope: !669)
!677 = !DILocation(line: 268, column: 13, scope: !649)
!678 = !DILocation(line: 269, column: 17, scope: !669)
!679 = !DILocation(line: 271, column: 35, scope: !649)
!680 = !DILocation(line: 271, column: 39, scope: !649)
!681 = !DILocation(line: 271, column: 45, scope: !649)
!682 = !DILocation(line: 271, column: 13, scope: !649)
!683 = !DILocation(line: 271, column: 11, scope: !649)
!684 = !DILocation(line: 272, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !649, file: !2, line: 272, column: 13)
!686 = !DILocation(line: 272, column: 15, scope: !685)
!687 = !DILocation(line: 272, column: 13, scope: !649)
!688 = !DILocation(line: 273, column: 24, scope: !685)
!689 = !DILocation(line: 273, column: 17, scope: !685)
!690 = !DILocation(line: 275, column: 25, scope: !691)
!691 = distinct !DILexicalBlock(scope: !649, file: !2, line: 275, column: 13)
!692 = !DILocation(line: 275, column: 29, scope: !691)
!693 = !DILocation(line: 275, column: 13, scope: !691)
!694 = !DILocation(line: 275, column: 47, scope: !691)
!695 = !DILocation(line: 275, column: 13, scope: !649)
!696 = !DILocation(line: 276, column: 25, scope: !691)
!697 = !DILocation(line: 276, column: 24, scope: !691)
!698 = !DILocation(line: 276, column: 17, scope: !691)
!699 = !DILocation(line: 278, column: 13, scope: !700)
!700 = distinct !DILexicalBlock(scope: !649, file: !2, line: 278, column: 13)
!701 = !DILocation(line: 278, column: 15, scope: !700)
!702 = !DILocation(line: 278, column: 13, scope: !649)
!703 = !DILocation(line: 279, column: 17, scope: !700)
!704 = !DILocation(line: 281, column: 25, scope: !705)
!705 = distinct !DILexicalBlock(scope: !649, file: !2, line: 281, column: 13)
!706 = !DILocation(line: 281, column: 13, scope: !705)
!707 = !DILocation(line: 281, column: 35, scope: !705)
!708 = !DILocation(line: 281, column: 46, scope: !705)
!709 = !DILocation(line: 282, column: 25, scope: !705)
!710 = !DILocation(line: 282, column: 13, scope: !705)
!711 = !DILocation(line: 282, column: 35, scope: !705)
!712 = !DILocation(line: 281, column: 13, scope: !649)
!713 = !DILocation(line: 283, column: 17, scope: !705)
!714 = !DILocation(line: 285, column: 13, scope: !715)
!715 = distinct !DILexicalBlock(scope: !649, file: !2, line: 285, column: 13)
!716 = !DILocation(line: 285, column: 20, scope: !715)
!717 = !DILocation(line: 285, column: 13, scope: !649)
!718 = !DILocation(line: 286, column: 33, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !2, line: 286, column: 21)
!720 = !DILocation(line: 286, column: 21, scope: !719)
!721 = !DILocation(line: 286, column: 46, scope: !719)
!722 = !DILocation(line: 286, column: 43, scope: !719)
!723 = !DILocation(line: 286, column: 21, scope: !715)
!724 = !DILocation(line: 287, column: 25, scope: !719)
!725 = !DILocation(line: 289, column: 13, scope: !726)
!726 = distinct !DILexicalBlock(scope: !649, file: !2, line: 289, column: 13)
!727 = !DILocation(line: 289, column: 18, scope: !726)
!728 = !DILocation(line: 289, column: 13, scope: !649)
!729 = !DILocation(line: 290, column: 33, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 290, column: 21)
!731 = distinct !DILexicalBlock(scope: !726, file: !2, line: 289, column: 23)
!732 = !DILocation(line: 290, column: 21, scope: !730)
!733 = !DILocation(line: 290, column: 43, scope: !730)
!734 = !DILocation(line: 290, column: 21, scope: !731)
!735 = !DILocation(line: 291, column: 29, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !2, line: 291, column: 29)
!737 = distinct !DILexicalBlock(scope: !730, file: !2, line: 290, column: 55)
!738 = !DILocation(line: 291, column: 31, scope: !736)
!739 = !DILocation(line: 291, column: 29, scope: !737)
!740 = !DILocation(line: 292, column: 33, scope: !736)
!741 = !DILocation(line: 294, column: 38, scope: !737)
!742 = !DILocation(line: 294, column: 32, scope: !737)
!743 = !DILocation(line: 294, column: 60, scope: !737)
!744 = !DILocation(line: 294, column: 47, scope: !737)
!745 = !DILocation(line: 294, column: 44, scope: !737)
!746 = !DILocation(line: 294, column: 25, scope: !737)
!747 = !DILocation(line: 296, column: 29, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !2, line: 296, column: 29)
!749 = distinct !DILexicalBlock(scope: !730, file: !2, line: 295, column: 24)
!750 = !DILocation(line: 296, column: 31, scope: !748)
!751 = !DILocation(line: 296, column: 29, scope: !749)
!752 = !DILocation(line: 297, column: 33, scope: !748)
!753 = !DILocation(line: 299, column: 38, scope: !749)
!754 = !DILocation(line: 299, column: 32, scope: !749)
!755 = !DILocation(line: 299, column: 60, scope: !749)
!756 = !DILocation(line: 299, column: 47, scope: !749)
!757 = !DILocation(line: 299, column: 44, scope: !749)
!758 = !DILocation(line: 299, column: 25, scope: !749)
!759 = !DILocation(line: 303, column: 9, scope: !649)
!760 = !DILocation(line: 304, column: 1, scope: !649)
!761 = distinct !DISubprogram(name: "sd_is_socket_unix", scope: !2, file: !2, line: 306, type: !762, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!762 = !DISubroutineType(types: !763)
!763 = !{!72, !72, !72, !72, !96, !764}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !765, line: 46, baseType: !102)
!765 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!766 = !DILocalVariable(name: "fd", arg: 1, scope: !761, file: !2, line: 306, type: !72)
!767 = !DILocation(line: 306, column: 27, scope: !761)
!768 = !DILocalVariable(name: "type", arg: 2, scope: !761, file: !2, line: 306, type: !72)
!769 = !DILocation(line: 306, column: 35, scope: !761)
!770 = !DILocalVariable(name: "listening", arg: 3, scope: !761, file: !2, line: 306, type: !72)
!771 = !DILocation(line: 306, column: 45, scope: !761)
!772 = !DILocalVariable(name: "path", arg: 4, scope: !761, file: !2, line: 306, type: !96)
!773 = !DILocation(line: 306, column: 68, scope: !761)
!774 = !DILocalVariable(name: "length", arg: 5, scope: !761, file: !2, line: 306, type: !764)
!775 = !DILocation(line: 306, column: 81, scope: !761)
!776 = !DILocalVariable(name: "sockaddr", scope: !761, file: !2, line: 307, type: !457)
!777 = !DILocation(line: 307, column: 30, scope: !761)
!778 = !DILocalVariable(name: "l", scope: !761, file: !2, line: 308, type: !74)
!779 = !DILocation(line: 308, column: 19, scope: !761)
!780 = !DILocalVariable(name: "r", scope: !761, file: !2, line: 309, type: !72)
!781 = !DILocation(line: 309, column: 13, scope: !761)
!782 = !DILocation(line: 311, column: 35, scope: !761)
!783 = !DILocation(line: 311, column: 39, scope: !761)
!784 = !DILocation(line: 311, column: 45, scope: !761)
!785 = !DILocation(line: 311, column: 13, scope: !761)
!786 = !DILocation(line: 311, column: 11, scope: !761)
!787 = !DILocation(line: 312, column: 13, scope: !788)
!788 = distinct !DILexicalBlock(scope: !761, file: !2, line: 312, column: 13)
!789 = !DILocation(line: 312, column: 15, scope: !788)
!790 = !DILocation(line: 312, column: 13, scope: !761)
!791 = !DILocation(line: 313, column: 24, scope: !788)
!792 = !DILocation(line: 313, column: 17, scope: !788)
!793 = !DILocation(line: 315, column: 25, scope: !794)
!794 = distinct !DILexicalBlock(scope: !761, file: !2, line: 315, column: 13)
!795 = !DILocation(line: 315, column: 29, scope: !794)
!796 = !DILocation(line: 315, column: 13, scope: !794)
!797 = !DILocation(line: 315, column: 47, scope: !794)
!798 = !DILocation(line: 315, column: 13, scope: !761)
!799 = !DILocation(line: 316, column: 25, scope: !794)
!800 = !DILocation(line: 316, column: 24, scope: !794)
!801 = !DILocation(line: 316, column: 17, scope: !794)
!802 = !DILocation(line: 318, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !761, file: !2, line: 318, column: 13)
!804 = !DILocation(line: 318, column: 15, scope: !803)
!805 = !DILocation(line: 318, column: 13, scope: !761)
!806 = !DILocation(line: 319, column: 17, scope: !803)
!807 = !DILocation(line: 321, column: 25, scope: !808)
!808 = distinct !DILexicalBlock(scope: !761, file: !2, line: 321, column: 13)
!809 = !DILocation(line: 321, column: 13, scope: !808)
!810 = !DILocation(line: 321, column: 35, scope: !808)
!811 = !DILocation(line: 321, column: 13, scope: !761)
!812 = !DILocation(line: 322, column: 17, scope: !808)
!813 = !DILocation(line: 324, column: 13, scope: !814)
!814 = distinct !DILexicalBlock(scope: !761, file: !2, line: 324, column: 13)
!815 = !DILocation(line: 324, column: 13, scope: !761)
!816 = !DILocation(line: 325, column: 21, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !2, line: 325, column: 21)
!818 = distinct !DILexicalBlock(scope: !814, file: !2, line: 324, column: 19)
!819 = !DILocation(line: 325, column: 28, scope: !817)
!820 = !DILocation(line: 325, column: 21, scope: !818)
!821 = !DILocation(line: 326, column: 41, scope: !817)
!822 = !DILocation(line: 326, column: 34, scope: !817)
!823 = !DILocation(line: 326, column: 32, scope: !817)
!824 = !DILocation(line: 326, column: 25, scope: !817)
!825 = !DILocation(line: 328, column: 21, scope: !826)
!826 = distinct !DILexicalBlock(scope: !818, file: !2, line: 328, column: 21)
!827 = !DILocation(line: 328, column: 28, scope: !826)
!828 = !DILocation(line: 328, column: 21, scope: !818)
!829 = !DILocation(line: 330, column: 32, scope: !826)
!830 = !DILocation(line: 330, column: 34, scope: !826)
!831 = !DILocation(line: 330, column: 25, scope: !826)
!832 = !DILocation(line: 332, column: 21, scope: !833)
!833 = distinct !DILexicalBlock(scope: !818, file: !2, line: 332, column: 21)
!834 = !DILocation(line: 332, column: 21, scope: !818)
!835 = !DILocation(line: 335, column: 34, scope: !833)
!836 = !DILocation(line: 335, column: 80, scope: !833)
!837 = !DILocation(line: 335, column: 78, scope: !833)
!838 = !DILocation(line: 335, column: 87, scope: !833)
!839 = !DILocation(line: 335, column: 36, scope: !833)
!840 = !DILocation(line: 335, column: 92, scope: !833)
!841 = !DILocation(line: 336, column: 40, scope: !833)
!842 = !DILocation(line: 336, column: 58, scope: !833)
!843 = !DILocation(line: 336, column: 46, scope: !833)
!844 = !DILocation(line: 336, column: 68, scope: !833)
!845 = !DILocation(line: 336, column: 74, scope: !833)
!846 = !DILocation(line: 336, column: 33, scope: !833)
!847 = !DILocation(line: 336, column: 78, scope: !833)
!848 = !DILocation(line: 0, scope: !833)
!849 = !DILocation(line: 334, column: 25, scope: !833)
!850 = !DILocation(line: 340, column: 34, scope: !833)
!851 = !DILocation(line: 340, column: 80, scope: !833)
!852 = !DILocation(line: 340, column: 78, scope: !833)
!853 = !DILocation(line: 340, column: 36, scope: !833)
!854 = !DILocation(line: 340, column: 88, scope: !833)
!855 = !DILocation(line: 341, column: 40, scope: !833)
!856 = !DILocation(line: 341, column: 58, scope: !833)
!857 = !DILocation(line: 341, column: 46, scope: !833)
!858 = !DILocation(line: 341, column: 68, scope: !833)
!859 = !DILocation(line: 341, column: 33, scope: !833)
!860 = !DILocation(line: 341, column: 76, scope: !833)
!861 = !DILocation(line: 339, column: 25, scope: !833)
!862 = !DILocation(line: 344, column: 9, scope: !761)
!863 = !DILocation(line: 345, column: 1, scope: !761)
!864 = distinct !DISubprogram(name: "sd_notify", scope: !2, file: !2, line: 347, type: !250, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!865 = !DILocalVariable(name: "unset_environment", arg: 1, scope: !864, file: !2, line: 347, type: !72)
!866 = !DILocation(line: 347, column: 19, scope: !864)
!867 = !DILocalVariable(name: "state", arg: 2, scope: !864, file: !2, line: 347, type: !96)
!868 = !DILocation(line: 347, column: 50, scope: !864)
!869 = !DILocalVariable(name: "fd", scope: !864, file: !2, line: 348, type: !72)
!870 = !DILocation(line: 348, column: 13, scope: !864)
!871 = !DILocalVariable(name: "r", scope: !864, file: !2, line: 348, type: !72)
!872 = !DILocation(line: 348, column: 22, scope: !864)
!873 = !DILocalVariable(name: "msghdr", scope: !864, file: !2, line: 349, type: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !43, line: 259, size: 448, elements: !875)
!875 = !{!876, !878, !879, !886, !887, !888, !889}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !874, file: !43, line: 261, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !874, file: !43, line: 262, baseType: !74, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !874, file: !43, line: 264, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !882, line: 26, size: 128, elements: !883)
!882 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !881, file: !882, line: 28, baseType: !877, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !881, file: !882, line: 29, baseType: !764, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !874, file: !43, line: 265, baseType: !764, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !874, file: !43, line: 267, baseType: !877, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !874, file: !43, line: 268, baseType: !764, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !874, file: !43, line: 273, baseType: !72, size: 32, offset: 384)
!890 = !DILocation(line: 349, column: 23, scope: !864)
!891 = !DILocalVariable(name: "iovec", scope: !864, file: !2, line: 350, type: !881)
!892 = !DILocation(line: 350, column: 22, scope: !864)
!893 = !DILocalVariable(name: "sockaddr", scope: !864, file: !2, line: 351, type: !457)
!894 = !DILocation(line: 351, column: 30, scope: !864)
!895 = !DILocalVariable(name: "e", scope: !864, file: !2, line: 352, type: !96)
!896 = !DILocation(line: 352, column: 21, scope: !864)
!897 = !DILocation(line: 354, column: 14, scope: !898)
!898 = distinct !DILexicalBlock(scope: !864, file: !2, line: 354, column: 13)
!899 = !DILocation(line: 354, column: 13, scope: !864)
!900 = !DILocation(line: 355, column: 19, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !2, line: 354, column: 21)
!902 = !DILocation(line: 356, column: 17, scope: !901)
!903 = !DILocation(line: 359, column: 13, scope: !864)
!904 = !DILocation(line: 359, column: 11, scope: !864)
!905 = !DILocation(line: 360, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !864, file: !2, line: 360, column: 13)
!907 = !DILocation(line: 360, column: 13, scope: !864)
!908 = !DILocation(line: 361, column: 17, scope: !906)
!909 = !DILocation(line: 364, column: 14, scope: !910)
!910 = distinct !DILexicalBlock(scope: !864, file: !2, line: 364, column: 13)
!911 = !DILocation(line: 364, column: 19, scope: !910)
!912 = !DILocation(line: 364, column: 26, scope: !910)
!913 = !DILocation(line: 364, column: 29, scope: !910)
!914 = !DILocation(line: 364, column: 34, scope: !910)
!915 = !DILocation(line: 364, column: 42, scope: !910)
!916 = !DILocation(line: 364, column: 45, scope: !910)
!917 = !DILocation(line: 364, column: 50, scope: !910)
!918 = !DILocation(line: 364, column: 13, scope: !864)
!919 = !DILocation(line: 365, column: 19, scope: !920)
!920 = distinct !DILexicalBlock(scope: !910, file: !2, line: 364, column: 56)
!921 = !DILocation(line: 366, column: 17, scope: !920)
!922 = !DILocation(line: 369, column: 14, scope: !864)
!923 = !DILocation(line: 369, column: 12, scope: !864)
!924 = !DILocation(line: 370, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !864, file: !2, line: 370, column: 13)
!926 = !DILocation(line: 370, column: 16, scope: !925)
!927 = !DILocation(line: 370, column: 13, scope: !864)
!928 = !DILocation(line: 371, column: 22, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !2, line: 370, column: 21)
!930 = !DILocation(line: 371, column: 21, scope: !929)
!931 = !DILocation(line: 371, column: 19, scope: !929)
!932 = !DILocation(line: 372, column: 17, scope: !929)
!933 = !DILocation(line: 375, column: 9, scope: !864)
!934 = !DILocation(line: 376, column: 21, scope: !864)
!935 = !DILocation(line: 376, column: 31, scope: !864)
!936 = !DILocation(line: 377, column: 29, scope: !864)
!937 = !DILocation(line: 377, column: 17, scope: !864)
!938 = !DILocation(line: 377, column: 39, scope: !864)
!939 = !DILocation(line: 377, column: 9, scope: !864)
!940 = !DILocation(line: 379, column: 25, scope: !941)
!941 = distinct !DILexicalBlock(scope: !864, file: !2, line: 379, column: 13)
!942 = !DILocation(line: 379, column: 13, scope: !941)
!943 = !DILocation(line: 379, column: 37, scope: !941)
!944 = !DILocation(line: 379, column: 13, scope: !864)
!945 = !DILocation(line: 380, column: 29, scope: !941)
!946 = !DILocation(line: 380, column: 17, scope: !941)
!947 = !DILocation(line: 380, column: 41, scope: !941)
!948 = !DILocation(line: 382, column: 9, scope: !864)
!949 = !DILocation(line: 383, column: 34, scope: !864)
!950 = !DILocation(line: 383, column: 15, scope: !864)
!951 = !DILocation(line: 383, column: 24, scope: !864)
!952 = !DILocation(line: 384, column: 32, scope: !864)
!953 = !DILocation(line: 384, column: 25, scope: !864)
!954 = !DILocation(line: 384, column: 15, scope: !864)
!955 = !DILocation(line: 384, column: 23, scope: !864)
!956 = !DILocation(line: 386, column: 9, scope: !864)
!957 = !DILocation(line: 387, column: 16, scope: !864)
!958 = !DILocation(line: 387, column: 25, scope: !864)
!959 = !DILocation(line: 388, column: 90, scope: !864)
!960 = !DILocation(line: 388, column: 83, scope: !864)
!961 = !DILocation(line: 388, column: 81, scope: !864)
!962 = !DILocation(line: 388, column: 30, scope: !864)
!963 = !DILocation(line: 388, column: 16, scope: !864)
!964 = !DILocation(line: 388, column: 28, scope: !864)
!965 = !DILocation(line: 390, column: 20, scope: !966)
!966 = distinct !DILexicalBlock(scope: !864, file: !2, line: 390, column: 13)
!967 = !DILocation(line: 390, column: 13, scope: !966)
!968 = !DILocation(line: 390, column: 32, scope: !966)
!969 = !DILocation(line: 390, column: 13, scope: !864)
!970 = !DILocation(line: 391, column: 24, scope: !966)
!971 = !DILocation(line: 391, column: 36, scope: !966)
!972 = !DILocation(line: 391, column: 17, scope: !966)
!973 = !DILocation(line: 393, column: 16, scope: !864)
!974 = !DILocation(line: 393, column: 24, scope: !864)
!975 = !DILocation(line: 394, column: 16, scope: !864)
!976 = !DILocation(line: 394, column: 27, scope: !864)
!977 = !DILocation(line: 396, column: 21, scope: !978)
!978 = distinct !DILexicalBlock(scope: !864, file: !2, line: 396, column: 13)
!979 = !DILocation(line: 396, column: 13, scope: !978)
!980 = !DILocation(line: 396, column: 48, scope: !978)
!981 = !DILocation(line: 396, column: 13, scope: !864)
!982 = !DILocation(line: 397, column: 22, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !2, line: 396, column: 53)
!984 = !DILocation(line: 397, column: 21, scope: !983)
!985 = !DILocation(line: 397, column: 19, scope: !983)
!986 = !DILocation(line: 398, column: 17, scope: !983)
!987 = !DILocation(line: 401, column: 11, scope: !864)
!988 = !DILocation(line: 401, column: 9, scope: !864)
!989 = !DILabel(scope: !864, name: "finish", file: !2, line: 403)
!990 = !DILocation(line: 403, column: 1, scope: !864)
!991 = !DILocation(line: 404, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !864, file: !2, line: 404, column: 13)
!993 = !DILocation(line: 404, column: 13, scope: !864)
!994 = !DILocation(line: 405, column: 17, scope: !992)
!995 = !DILocation(line: 407, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !864, file: !2, line: 407, column: 13)
!997 = !DILocation(line: 407, column: 16, scope: !996)
!998 = !DILocation(line: 407, column: 13, scope: !864)
!999 = !DILocation(line: 408, column: 23, scope: !996)
!1000 = !DILocation(line: 408, column: 17, scope: !996)
!1001 = !DILocation(line: 410, column: 16, scope: !864)
!1002 = !DILocation(line: 410, column: 9, scope: !864)
!1003 = !DILocation(line: 411, column: 1, scope: !864)
!1004 = distinct !DISubprogram(name: "sd_notifyf", scope: !2, file: !2, line: 413, type: !1005, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!72, !72, !96, null}
!1007 = !DILocalVariable(name: "unset_environment", arg: 1, scope: !1004, file: !2, line: 413, type: !72)
!1008 = !DILocation(line: 413, column: 20, scope: !1004)
!1009 = !DILocalVariable(name: "format", arg: 2, scope: !1004, file: !2, line: 413, type: !96)
!1010 = !DILocation(line: 413, column: 51, scope: !1004)
!1011 = !DILocalVariable(name: "ap", scope: !1004, file: !2, line: 414, type: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1013, line: 52, baseType: !1014)
!1013 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1015, line: 14, baseType: !1016)
!1015 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1017, baseType: !1018)
!1017 = !DIFile(filename: "common/sd-daemon.c", directory: "/home/raj/lwan")
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 192, elements: !1025)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1019, file: !1017, line: 414, baseType: !31, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1019, file: !1017, line: 414, baseType: !31, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1019, file: !1017, line: 414, baseType: !877, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1019, file: !1017, line: 414, baseType: !877, size: 64, offset: 128)
!1025 = !{!1026}
!1026 = !DISubrange(count: 1)
!1027 = !DILocation(line: 414, column: 17, scope: !1004)
!1028 = !DILocalVariable(name: "p", scope: !1004, file: !2, line: 415, type: !73)
!1029 = !DILocation(line: 415, column: 15, scope: !1004)
!1030 = !DILocalVariable(name: "r", scope: !1004, file: !2, line: 416, type: !72)
!1031 = !DILocation(line: 416, column: 13, scope: !1004)
!1032 = !DILocation(line: 418, column: 9, scope: !1004)
!1033 = !DILocation(line: 419, column: 27, scope: !1004)
!1034 = !DILocation(line: 419, column: 35, scope: !1004)
!1035 = !DILocation(line: 419, column: 13, scope: !1004)
!1036 = !DILocation(line: 419, column: 11, scope: !1004)
!1037 = !DILocation(line: 420, column: 9, scope: !1004)
!1038 = !DILocation(line: 422, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 422, column: 13)
!1040 = !DILocation(line: 422, column: 15, scope: !1039)
!1041 = !DILocation(line: 422, column: 19, scope: !1039)
!1042 = !DILocation(line: 422, column: 23, scope: !1039)
!1043 = !DILocation(line: 422, column: 13, scope: !1004)
!1044 = !DILocation(line: 423, column: 17, scope: !1039)
!1045 = !DILocation(line: 425, column: 23, scope: !1004)
!1046 = !DILocation(line: 425, column: 42, scope: !1004)
!1047 = !DILocation(line: 425, column: 13, scope: !1004)
!1048 = !DILocation(line: 425, column: 11, scope: !1004)
!1049 = !DILocation(line: 426, column: 14, scope: !1004)
!1050 = !DILocation(line: 426, column: 9, scope: !1004)
!1051 = !DILocation(line: 428, column: 16, scope: !1004)
!1052 = !DILocation(line: 428, column: 9, scope: !1004)
!1053 = !DILocation(line: 429, column: 1, scope: !1004)
!1054 = distinct !DISubprogram(name: "sd_booted", scope: !2, file: !2, line: 431, type: !1055, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!72}
!1057 = !DILocalVariable(name: "st", scope: !1054, file: !2, line: 432, type: !257)
!1058 = !DILocation(line: 432, column: 21, scope: !1054)
!1059 = !DILocation(line: 438, column: 13, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 438, column: 13)
!1061 = !DILocation(line: 438, column: 48, scope: !1060)
!1062 = !DILocation(line: 438, column: 13, scope: !1054)
!1063 = !DILocation(line: 439, column: 17, scope: !1060)
!1064 = !DILocation(line: 441, column: 18, scope: !1054)
!1065 = !DILocation(line: 441, column: 17, scope: !1054)
!1066 = !DILocation(line: 441, column: 16, scope: !1054)
!1067 = !DILocation(line: 441, column: 9, scope: !1054)
!1068 = !DILocation(line: 442, column: 1, scope: !1054)
!1069 = distinct !DISubprogram(name: "sd_watchdog_enabled", scope: !2, file: !2, line: 444, type: !1070, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !88)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!72, !72, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !475, line: 27, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !71, line: 45, baseType: !102)
!1075 = !DILocalVariable(name: "unset_environment", arg: 1, scope: !1069, file: !2, line: 444, type: !72)
!1076 = !DILocation(line: 444, column: 29, scope: !1069)
!1077 = !DILocalVariable(name: "usec", arg: 2, scope: !1069, file: !2, line: 444, type: !1072)
!1078 = !DILocation(line: 444, column: 58, scope: !1069)
!1079 = !DILocalVariable(name: "ll", scope: !1069, file: !2, line: 445, type: !1080)
!1080 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1081 = !DILocation(line: 445, column: 28, scope: !1069)
!1082 = !DILocalVariable(name: "l", scope: !1069, file: !2, line: 446, type: !102)
!1083 = !DILocation(line: 446, column: 23, scope: !1069)
!1084 = !DILocalVariable(name: "e", scope: !1069, file: !2, line: 447, type: !96)
!1085 = !DILocation(line: 447, column: 21, scope: !1069)
!1086 = !DILocalVariable(name: "p", scope: !1069, file: !2, line: 448, type: !73)
!1087 = !DILocation(line: 448, column: 15, scope: !1069)
!1088 = !DILocalVariable(name: "r", scope: !1069, file: !2, line: 449, type: !72)
!1089 = !DILocation(line: 449, column: 13, scope: !1069)
!1090 = !DILocation(line: 451, column: 13, scope: !1069)
!1091 = !DILocation(line: 451, column: 11, scope: !1069)
!1092 = !DILocation(line: 452, column: 14, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 452, column: 13)
!1094 = !DILocation(line: 452, column: 13, scope: !1069)
!1095 = !DILocation(line: 453, column: 19, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 452, column: 17)
!1097 = !DILocation(line: 454, column: 17, scope: !1096)
!1098 = !DILocation(line: 457, column: 9, scope: !1069)
!1099 = !DILocation(line: 457, column: 15, scope: !1069)
!1100 = !DILocation(line: 458, column: 21, scope: !1069)
!1101 = !DILocation(line: 458, column: 13, scope: !1069)
!1102 = !DILocation(line: 458, column: 11, scope: !1069)
!1103 = !DILocation(line: 459, column: 13, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 459, column: 13)
!1105 = !DILocation(line: 459, column: 19, scope: !1104)
!1106 = !DILocation(line: 459, column: 13, scope: !1069)
!1107 = !DILocation(line: 460, column: 22, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 459, column: 24)
!1109 = !DILocation(line: 460, column: 21, scope: !1108)
!1110 = !DILocation(line: 460, column: 19, scope: !1108)
!1111 = !DILocation(line: 461, column: 17, scope: !1108)
!1112 = !DILocation(line: 463, column: 14, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 463, column: 13)
!1114 = !DILocation(line: 463, column: 16, scope: !1113)
!1115 = !DILocation(line: 463, column: 19, scope: !1113)
!1116 = !DILocation(line: 463, column: 24, scope: !1113)
!1117 = !DILocation(line: 463, column: 21, scope: !1113)
!1118 = !DILocation(line: 463, column: 26, scope: !1113)
!1119 = !DILocation(line: 463, column: 30, scope: !1113)
!1120 = !DILocation(line: 463, column: 29, scope: !1113)
!1121 = !DILocation(line: 463, column: 32, scope: !1113)
!1122 = !DILocation(line: 463, column: 35, scope: !1113)
!1123 = !DILocation(line: 463, column: 37, scope: !1113)
!1124 = !DILocation(line: 463, column: 13, scope: !1069)
!1125 = !DILocation(line: 464, column: 19, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 463, column: 43)
!1127 = !DILocation(line: 465, column: 17, scope: !1126)
!1128 = !DILocation(line: 469, column: 13, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 469, column: 13)
!1130 = !DILocation(line: 469, column: 33, scope: !1129)
!1131 = !DILocation(line: 469, column: 25, scope: !1129)
!1132 = !DILocation(line: 469, column: 22, scope: !1129)
!1133 = !DILocation(line: 469, column: 13, scope: !1069)
!1134 = !DILocation(line: 470, column: 19, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 469, column: 36)
!1136 = !DILocation(line: 471, column: 17, scope: !1135)
!1137 = !DILocation(line: 474, column: 13, scope: !1069)
!1138 = !DILocation(line: 474, column: 11, scope: !1069)
!1139 = !DILocation(line: 475, column: 14, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 475, column: 13)
!1141 = !DILocation(line: 475, column: 13, scope: !1069)
!1142 = !DILocation(line: 476, column: 19, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 475, column: 17)
!1144 = !DILocation(line: 477, column: 17, scope: !1143)
!1145 = !DILocation(line: 480, column: 9, scope: !1069)
!1146 = !DILocation(line: 480, column: 15, scope: !1069)
!1147 = !DILocation(line: 481, column: 23, scope: !1069)
!1148 = !DILocation(line: 481, column: 14, scope: !1069)
!1149 = !DILocation(line: 481, column: 12, scope: !1069)
!1150 = !DILocation(line: 482, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 482, column: 13)
!1152 = !DILocation(line: 482, column: 19, scope: !1151)
!1153 = !DILocation(line: 482, column: 13, scope: !1069)
!1154 = !DILocation(line: 483, column: 22, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 482, column: 24)
!1156 = !DILocation(line: 483, column: 21, scope: !1155)
!1157 = !DILocation(line: 483, column: 19, scope: !1155)
!1158 = !DILocation(line: 484, column: 17, scope: !1155)
!1159 = !DILocation(line: 486, column: 14, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 486, column: 13)
!1161 = !DILocation(line: 486, column: 16, scope: !1160)
!1162 = !DILocation(line: 486, column: 19, scope: !1160)
!1163 = !DILocation(line: 486, column: 24, scope: !1160)
!1164 = !DILocation(line: 486, column: 21, scope: !1160)
!1165 = !DILocation(line: 486, column: 26, scope: !1160)
!1166 = !DILocation(line: 486, column: 30, scope: !1160)
!1167 = !DILocation(line: 486, column: 29, scope: !1160)
!1168 = !DILocation(line: 486, column: 32, scope: !1160)
!1169 = !DILocation(line: 486, column: 35, scope: !1160)
!1170 = !DILocation(line: 486, column: 37, scope: !1160)
!1171 = !DILocation(line: 486, column: 13, scope: !1069)
!1172 = !DILocation(line: 487, column: 19, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 486, column: 43)
!1174 = !DILocation(line: 488, column: 17, scope: !1173)
!1175 = !DILocation(line: 491, column: 13, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 491, column: 13)
!1177 = !DILocation(line: 491, column: 13, scope: !1069)
!1178 = !DILocation(line: 492, column: 25, scope: !1176)
!1179 = !DILocation(line: 492, column: 18, scope: !1176)
!1180 = !DILocation(line: 492, column: 23, scope: !1176)
!1181 = !DILocation(line: 492, column: 17, scope: !1176)
!1182 = !DILocation(line: 494, column: 11, scope: !1069)
!1183 = !DILocation(line: 494, column: 9, scope: !1069)
!1184 = !DILabel(scope: !1069, name: "finish", file: !2, line: 496)
!1185 = !DILocation(line: 496, column: 1, scope: !1069)
!1186 = !DILocation(line: 497, column: 13, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 497, column: 13)
!1188 = !DILocation(line: 497, column: 13, scope: !1069)
!1189 = !DILocation(line: 498, column: 17, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 497, column: 32)
!1191 = !DILocation(line: 499, column: 17, scope: !1190)
!1192 = !DILocation(line: 500, column: 9, scope: !1190)
!1193 = !DILocation(line: 502, column: 16, scope: !1069)
!1194 = !DILocation(line: 502, column: 9, scope: !1069)
