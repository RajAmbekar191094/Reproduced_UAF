; ModuleID = 'src/htsmodules.c'
source_filename = "src/htsmodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_hts_htmlcheck_callbacks = type { %struct.init, %struct.uninit, %struct.start, %struct.end, %struct.chopt, %struct.preprocess, %struct.postprocess, %struct.check_html, %struct.query, %struct.query2, %struct.query3, %struct.loop, %struct.check_link, %struct.check_mime, %struct.pause, %struct.filesave, %struct.filesave2, %struct.linkdetected, %struct.linkdetected2, %struct.xfrstatus, %struct.savename, %struct.sendhead, %struct.receivehead, %struct.detect, %struct.parse, %struct.extsavename }
%struct.init = type { ptr, ptr }
%struct.uninit = type { ptr, ptr }
%struct.start = type { ptr, ptr }
%struct.end = type { ptr, ptr }
%struct.chopt = type { ptr, ptr }
%struct.preprocess = type { ptr, ptr }
%struct.postprocess = type { ptr, ptr }
%struct.check_html = type { ptr, ptr }
%struct.query = type { ptr, ptr }
%struct.query2 = type { ptr, ptr }
%struct.query3 = type { ptr, ptr }
%struct.loop = type { ptr, ptr }
%struct.check_link = type { ptr, ptr }
%struct.check_mime = type { ptr, ptr }
%struct.pause = type { ptr, ptr }
%struct.filesave = type { ptr, ptr }
%struct.filesave2 = type { ptr, ptr }
%struct.linkdetected = type { ptr, ptr }
%struct.linkdetected2 = type { ptr, ptr }
%struct.xfrstatus = type { ptr, ptr }
%struct.savename = type { ptr, ptr }
%struct.sendhead = type { ptr, ptr }
%struct.receivehead = type { ptr, ptr }
%struct.detect = type { ptr, ptr }
%struct.parse = type { ptr, ptr }
%struct.extsavename = type { ptr, ptr }
%struct.httrackp = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, %struct.t_proxy, i32, i32, %struct.String, i32, i32, i32, i32, %struct.String, %struct.String, %struct.String, %struct.String, %struct.String, %struct.String, %struct.String, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.String, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.String, i32, i32, %struct.String, %struct.String, %struct.htsfilters, ptr, ptr, i32, ptr, ptr, %struct.String, %struct.String, %struct.String, %struct.String, %struct.String, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.htslibhandles, %struct.htsoptstate }
%struct.t_proxy = type { i32, %struct.String, i32, %struct.String }
%struct.htsfilters = type { ptr, ptr }
%struct.String = type { ptr, i64, i64 }
%struct.htslibhandles = type { i32, ptr }
%struct.htsoptstate = type { ptr, i32, i32, i32, i32, %struct.String, ptr, i32, %struct.filenote_strc, %struct.htscallbacks, %struct.concat_strc, %struct.usercommand_strc, %struct.fspc_strc, ptr, i32, i32, ptr, i32, [1280 x i8], i32, i32, i32, i32, i32, ptr, i32, ptr, [2048 x i8], i32, i32, i32 }
%struct.filenote_strc = type { ptr, [4096 x i8] }
%struct.htscallbacks = type { ptr, ptr, ptr }
%struct.concat_strc = type { i32, [16 x [8192 x i8]] }
%struct.usercommand_strc = type { i32, [2048 x i8] }
%struct.fspc_strc = type { i32, i32, i32 }
%struct.htslibhandle = type { ptr, ptr }
%struct.htsmoduleStruct = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@V6_is_available = dso_local global i32 1, align 4, !dbg !0
@WHAT_is_available = internal global [64 x i8] zeroinitializer, align 16, !dbg !867
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !836
@.str.1 = private unnamed_addr constant [12 x i8] c"wrapper-lib\00", align 1, !dbg !839
@default_callbacks = external constant %struct.t_hts_htmlcheck_callbacks, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"lib%s.so\00", align 1, !dbg !844
@htspe_init.initOk = internal global i32 0, align 4, !dbg !849
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1, !dbg !855
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !860
@.str.5 = private unnamed_addr constant [6 x i8] c"-noV6\00", align 1, !dbg !862
@.str.6 = private unnamed_addr constant [46 x i8] c"(External module): parsing %s using module %s\00", align 1, !dbg !869

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @hts_get_version_info(ptr noundef %0) #0 !dbg !882 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !885, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.declare(metadata ptr %3, metadata !887, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.declare(metadata ptr %4, metadata !889, metadata !DIExpression()), !dbg !890
  %7 = load ptr, ptr %2, align 8, !dbg !891
  %8 = getelementptr inbounds %struct.httrackp, ptr %7, i32 0, i32 100, !dbg !892
  %9 = getelementptr inbounds %struct.htsoptstate, ptr %8, i32 0, i32 27, !dbg !893
  %10 = getelementptr inbounds [2048 x i8], ptr %9, i64 0, i64 0, !dbg !891
  %11 = call ptr @strcpy(ptr noundef %10, ptr noundef @WHAT_is_available) #6, !dbg !894
  %12 = load ptr, ptr %2, align 8, !dbg !895
  %13 = getelementptr inbounds %struct.httrackp, ptr %12, i32 0, i32 100, !dbg !896
  %14 = getelementptr inbounds %struct.htsoptstate, ptr %13, i32 0, i32 27, !dbg !897
  %15 = getelementptr inbounds [2048 x i8], ptr %14, i64 0, i64 0, !dbg !895
  %16 = call i64 @strlen(ptr noundef %15) #7, !dbg !898
  store i64 %16, ptr %3, align 8, !dbg !899
  store i32 0, ptr %4, align 4, !dbg !900
  br label %17, !dbg !902

17:                                               ; preds = %60, %1
  %18 = load i32, ptr %4, align 4, !dbg !903
  %19 = load ptr, ptr %2, align 8, !dbg !905
  %20 = getelementptr inbounds %struct.httrackp, ptr %19, i32 0, i32 99, !dbg !906
  %21 = getelementptr inbounds %struct.htslibhandles, ptr %20, i32 0, i32 0, !dbg !907
  %22 = load i32, ptr %21, align 8, !dbg !907
  %23 = icmp slt i32 %18, %22, !dbg !908
  br i1 %23, label %24, label %63, !dbg !909

24:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %5, metadata !910, metadata !DIExpression()), !dbg !912
  %25 = load ptr, ptr %2, align 8, !dbg !913
  %26 = getelementptr inbounds %struct.httrackp, ptr %25, i32 0, i32 99, !dbg !914
  %27 = getelementptr inbounds %struct.htslibhandles, ptr %26, i32 0, i32 1, !dbg !915
  %28 = load ptr, ptr %27, align 8, !dbg !915
  %29 = load i32, ptr %4, align 4, !dbg !916
  %30 = sext i32 %29 to i64, !dbg !913
  %31 = getelementptr inbounds %struct.htslibhandle, ptr %28, i64 %30, !dbg !913
  %32 = getelementptr inbounds %struct.htslibhandle, ptr %31, i32 0, i32 0, !dbg !917
  %33 = load ptr, ptr %32, align 8, !dbg !917
  store ptr %33, ptr %5, align 8, !dbg !912
  %34 = load ptr, ptr %5, align 8, !dbg !918
  %35 = icmp ne ptr %34, null, !dbg !920
  br i1 %35, label %36, label %59, !dbg !921

36:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %6, metadata !922, metadata !DIExpression()), !dbg !924
  %37 = load ptr, ptr %5, align 8, !dbg !925
  %38 = call i64 @strlen(ptr noundef %37) #7, !dbg !926
  %39 = add i64 %38, 2, !dbg !927
  store i64 %39, ptr %6, align 8, !dbg !924
  %40 = load i64, ptr %6, align 8, !dbg !928
  %41 = load i64, ptr %3, align 8, !dbg !929
  %42 = add i64 %41, %40, !dbg !929
  store i64 %42, ptr %3, align 8, !dbg !929
  %43 = load i64, ptr %3, align 8, !dbg !930
  %44 = add i64 %43, 1, !dbg !932
  %45 = icmp uge i64 %44, 2048, !dbg !933
  br i1 %45, label %46, label %47, !dbg !934

46:                                               ; preds = %36
  br label %63, !dbg !935

47:                                               ; preds = %36
  %48 = load ptr, ptr %2, align 8, !dbg !936
  %49 = getelementptr inbounds %struct.httrackp, ptr %48, i32 0, i32 100, !dbg !937
  %50 = getelementptr inbounds %struct.htsoptstate, ptr %49, i32 0, i32 27, !dbg !938
  %51 = getelementptr inbounds [2048 x i8], ptr %50, i64 0, i64 0, !dbg !936
  %52 = call ptr @strcat(ptr noundef %51, ptr noundef @.str) #6, !dbg !939
  %53 = load ptr, ptr %2, align 8, !dbg !940
  %54 = getelementptr inbounds %struct.httrackp, ptr %53, i32 0, i32 100, !dbg !941
  %55 = getelementptr inbounds %struct.htsoptstate, ptr %54, i32 0, i32 27, !dbg !942
  %56 = getelementptr inbounds [2048 x i8], ptr %55, i64 0, i64 0, !dbg !940
  %57 = load ptr, ptr %5, align 8, !dbg !943
  %58 = call ptr @strcat(ptr noundef %56, ptr noundef %57) #6, !dbg !944
  br label %59, !dbg !945

59:                                               ; preds = %47, %24
  br label %60, !dbg !946

60:                                               ; preds = %59
  %61 = load i32, ptr %4, align 4, !dbg !947
  %62 = add nsw i32 %61, 1, !dbg !947
  store i32 %62, ptr %4, align 4, !dbg !947
  br label %17, !dbg !948, !llvm.loop !949

63:                                               ; preds = %46, %17
  %64 = load ptr, ptr %2, align 8, !dbg !952
  %65 = getelementptr inbounds %struct.httrackp, ptr %64, i32 0, i32 100, !dbg !953
  %66 = getelementptr inbounds %struct.htsoptstate, ptr %65, i32 0, i32 27, !dbg !954
  %67 = getelementptr inbounds [2048 x i8], ptr %66, i64 0, i64 0, !dbg !952
  ret ptr %67, !dbg !955
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_parse_externals(ptr noundef %0) #0 !dbg !956 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !959, metadata !DIExpression()), !dbg !960
  %4 = load ptr, ptr %3, align 8, !dbg !961
  %5 = getelementptr inbounds %struct.htsmoduleStruct, ptr %4, i32 0, i32 5, !dbg !962
  store ptr @.str.1, ptr %5, align 8, !dbg !963
  %6 = load ptr, ptr %3, align 8, !dbg !964
  %7 = getelementptr inbounds %struct.htsmoduleStruct, ptr %6, i32 0, i32 12, !dbg !964
  %8 = load ptr, ptr %7, align 8, !dbg !964
  %9 = getelementptr inbounds %struct.httrackp, ptr %8, i32 0, i32 98, !dbg !964
  %10 = load ptr, ptr %9, align 8, !dbg !964
  %11 = icmp ne ptr %10, null, !dbg !964
  br i1 %11, label %12, label %31, !dbg !964

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !964
  %14 = getelementptr inbounds %struct.htsmoduleStruct, ptr %13, i32 0, i32 12, !dbg !964
  %15 = load ptr, ptr %14, align 8, !dbg !964
  %16 = getelementptr inbounds %struct.httrackp, ptr %15, i32 0, i32 98, !dbg !964
  %17 = load ptr, ptr %16, align 8, !dbg !964
  %18 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %17, i32 0, i32 23, !dbg !964
  %19 = getelementptr inbounds %struct.detect, ptr %18, i32 0, i32 0, !dbg !964
  %20 = load ptr, ptr %19, align 8, !dbg !964
  %21 = icmp ne ptr %20, null, !dbg !964
  br i1 %21, label %22, label %31, !dbg !964

22:                                               ; preds = %12
  %23 = load ptr, ptr %3, align 8, !dbg !964
  %24 = getelementptr inbounds %struct.htsmoduleStruct, ptr %23, i32 0, i32 12, !dbg !964
  %25 = load ptr, ptr %24, align 8, !dbg !964
  %26 = getelementptr inbounds %struct.httrackp, ptr %25, i32 0, i32 98, !dbg !964
  %27 = load ptr, ptr %26, align 8, !dbg !964
  %28 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %27, i32 0, i32 23, !dbg !964
  %29 = getelementptr inbounds %struct.detect, ptr %28, i32 0, i32 0, !dbg !964
  %30 = load ptr, ptr %29, align 8, !dbg !964
  br label %33, !dbg !964

31:                                               ; preds = %12, %1
  %32 = load ptr, ptr getelementptr inbounds (%struct.t_hts_htmlcheck_callbacks, ptr @default_callbacks, i32 0, i32 23), align 8, !dbg !964
  br label %33, !dbg !964

33:                                               ; preds = %31, %22
  %34 = phi ptr [ %30, %22 ], [ %32, %31 ], !dbg !964
  %35 = load ptr, ptr %3, align 8, !dbg !964
  %36 = getelementptr inbounds %struct.htsmoduleStruct, ptr %35, i32 0, i32 12, !dbg !964
  %37 = load ptr, ptr %36, align 8, !dbg !964
  %38 = getelementptr inbounds %struct.httrackp, ptr %37, i32 0, i32 98, !dbg !964
  %39 = load ptr, ptr %38, align 8, !dbg !964
  %40 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %39, i32 0, i32 23, !dbg !964
  %41 = getelementptr inbounds %struct.detect, ptr %40, i32 0, i32 1, !dbg !964
  %42 = load ptr, ptr %41, align 8, !dbg !964
  %43 = load ptr, ptr %3, align 8, !dbg !964
  %44 = getelementptr inbounds %struct.htsmoduleStruct, ptr %43, i32 0, i32 12, !dbg !964
  %45 = load ptr, ptr %44, align 8, !dbg !964
  %46 = load ptr, ptr %3, align 8, !dbg !964
  %47 = call i32 %34(ptr noundef %42, ptr noundef %45, ptr noundef %46), !dbg !964
  %48 = icmp ne i32 %47, 0, !dbg !964
  br i1 %48, label %49, label %117, !dbg !966

49:                                               ; preds = %33
  %50 = load ptr, ptr %3, align 8, !dbg !967
  %51 = getelementptr inbounds %struct.htsmoduleStruct, ptr %50, i32 0, i32 5, !dbg !970
  %52 = load ptr, ptr %51, align 8, !dbg !970
  %53 = icmp eq ptr %52, null, !dbg !971
  br i1 %53, label %54, label %57, !dbg !972

54:                                               ; preds = %49
  %55 = load ptr, ptr %3, align 8, !dbg !973
  %56 = getelementptr inbounds %struct.htsmoduleStruct, ptr %55, i32 0, i32 5, !dbg !974
  store ptr @.str.1, ptr %56, align 8, !dbg !975
  br label %57, !dbg !973

57:                                               ; preds = %54, %49
  %58 = load ptr, ptr %3, align 8, !dbg !976
  %59 = getelementptr inbounds %struct.htsmoduleStruct, ptr %58, i32 0, i32 5, !dbg !978
  %60 = load ptr, ptr %59, align 8, !dbg !978
  %61 = load ptr, ptr %3, align 8, !dbg !979
  %62 = getelementptr inbounds %struct.htsmoduleStruct, ptr %61, i32 0, i32 12, !dbg !979
  %63 = load ptr, ptr %62, align 8, !dbg !979
  %64 = getelementptr inbounds %struct.httrackp, ptr %63, i32 0, i32 87, !dbg !979
  %65 = getelementptr inbounds %struct.String, ptr %64, i32 0, i32 0, !dbg !979
  %66 = load ptr, ptr %65, align 8, !dbg !979
  %67 = call i32 @multipleStringMatch(ptr noundef %60, ptr noundef %66), !dbg !980
  %68 = icmp ne i32 %67, 0, !dbg !980
  br i1 %68, label %69, label %70, !dbg !981

69:                                               ; preds = %57
  store i32 -1, ptr %2, align 4, !dbg !982
  br label %118, !dbg !982

70:                                               ; preds = %57
  %71 = load ptr, ptr %3, align 8, !dbg !984
  %72 = load ptr, ptr %3, align 8, !dbg !986
  %73 = getelementptr inbounds %struct.htsmoduleStruct, ptr %72, i32 0, i32 5, !dbg !987
  %74 = load ptr, ptr %73, align 8, !dbg !987
  call void @htspe_log(ptr noundef %71, ptr noundef %74), !dbg !988
  %75 = load ptr, ptr %3, align 8, !dbg !989
  %76 = getelementptr inbounds %struct.htsmoduleStruct, ptr %75, i32 0, i32 12, !dbg !989
  %77 = load ptr, ptr %76, align 8, !dbg !989
  %78 = getelementptr inbounds %struct.httrackp, ptr %77, i32 0, i32 98, !dbg !989
  %79 = load ptr, ptr %78, align 8, !dbg !989
  %80 = icmp ne ptr %79, null, !dbg !989
  br i1 %80, label %81, label %100, !dbg !989

81:                                               ; preds = %70
  %82 = load ptr, ptr %3, align 8, !dbg !989
  %83 = getelementptr inbounds %struct.htsmoduleStruct, ptr %82, i32 0, i32 12, !dbg !989
  %84 = load ptr, ptr %83, align 8, !dbg !989
  %85 = getelementptr inbounds %struct.httrackp, ptr %84, i32 0, i32 98, !dbg !989
  %86 = load ptr, ptr %85, align 8, !dbg !989
  %87 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %86, i32 0, i32 24, !dbg !989
  %88 = getelementptr inbounds %struct.parse, ptr %87, i32 0, i32 0, !dbg !989
  %89 = load ptr, ptr %88, align 8, !dbg !989
  %90 = icmp ne ptr %89, null, !dbg !989
  br i1 %90, label %91, label %100, !dbg !989

91:                                               ; preds = %81
  %92 = load ptr, ptr %3, align 8, !dbg !989
  %93 = getelementptr inbounds %struct.htsmoduleStruct, ptr %92, i32 0, i32 12, !dbg !989
  %94 = load ptr, ptr %93, align 8, !dbg !989
  %95 = getelementptr inbounds %struct.httrackp, ptr %94, i32 0, i32 98, !dbg !989
  %96 = load ptr, ptr %95, align 8, !dbg !989
  %97 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %96, i32 0, i32 24, !dbg !989
  %98 = getelementptr inbounds %struct.parse, ptr %97, i32 0, i32 0, !dbg !989
  %99 = load ptr, ptr %98, align 8, !dbg !989
  br label %102, !dbg !989

100:                                              ; preds = %81, %70
  %101 = load ptr, ptr getelementptr inbounds (%struct.t_hts_htmlcheck_callbacks, ptr @default_callbacks, i32 0, i32 24), align 8, !dbg !989
  br label %102, !dbg !989

102:                                              ; preds = %100, %91
  %103 = phi ptr [ %99, %91 ], [ %101, %100 ], !dbg !989
  %104 = load ptr, ptr %3, align 8, !dbg !989
  %105 = getelementptr inbounds %struct.htsmoduleStruct, ptr %104, i32 0, i32 12, !dbg !989
  %106 = load ptr, ptr %105, align 8, !dbg !989
  %107 = getelementptr inbounds %struct.httrackp, ptr %106, i32 0, i32 98, !dbg !989
  %108 = load ptr, ptr %107, align 8, !dbg !989
  %109 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %108, i32 0, i32 24, !dbg !989
  %110 = getelementptr inbounds %struct.parse, ptr %109, i32 0, i32 1, !dbg !989
  %111 = load ptr, ptr %110, align 8, !dbg !989
  %112 = load ptr, ptr %3, align 8, !dbg !989
  %113 = getelementptr inbounds %struct.htsmoduleStruct, ptr %112, i32 0, i32 12, !dbg !989
  %114 = load ptr, ptr %113, align 8, !dbg !989
  %115 = load ptr, ptr %3, align 8, !dbg !989
  %116 = call i32 %103(ptr noundef %111, ptr noundef %114, ptr noundef %115), !dbg !989
  store i32 %116, ptr %2, align 4, !dbg !990
  br label %118, !dbg !990

117:                                              ; preds = %33
  store i32 -1, ptr %2, align 4, !dbg !991
  br label %118, !dbg !991

118:                                              ; preds = %117, %102, %69
  %119 = load i32, ptr %2, align 4, !dbg !992
  ret i32 %119, !dbg !992
}

declare i32 @multipleStringMatch(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htspe_log(ptr noundef %0, ptr noundef %1) #0 !dbg !993 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !996, metadata !DIExpression()), !dbg !997
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !998, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1000, metadata !DIExpression()), !dbg !1001
  %7 = load ptr, ptr %3, align 8, !dbg !1002
  %8 = getelementptr inbounds %struct.htsmoduleStruct, ptr %7, i32 0, i32 0, !dbg !1003
  %9 = load ptr, ptr %8, align 8, !dbg !1003
  store ptr %9, ptr %5, align 8, !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1004, metadata !DIExpression()), !dbg !1005
  %10 = load ptr, ptr %3, align 8, !dbg !1006
  %11 = getelementptr inbounds %struct.htsmoduleStruct, ptr %10, i32 0, i32 12, !dbg !1007
  %12 = load ptr, ptr %11, align 8, !dbg !1007
  store ptr %12, ptr %6, align 8, !dbg !1005
  %13 = load ptr, ptr %6, align 8, !dbg !1008
  %14 = load ptr, ptr %5, align 8, !dbg !1009
  %15 = load ptr, ptr %4, align 8, !dbg !1010
  call void (ptr, i32, ptr, ...) @hts_log_print(ptr noundef %13, i32 noundef 5, ptr noundef @.str.6, ptr noundef %14, ptr noundef %15), !dbg !1011
  ret void, !dbg !1012
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearCallbacks(ptr noundef %0) #0 !dbg !1013 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1016, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1018, metadata !DIExpression()), !dbg !1019
  %5 = load ptr, ptr %2, align 8, !dbg !1020
  store ptr %5, ptr %3, align 8, !dbg !1021
  br label %6, !dbg !1022

6:                                                ; preds = %21, %1
  %7 = load ptr, ptr %3, align 8, !dbg !1023
  %8 = icmp ne ptr %7, null, !dbg !1024
  br i1 %8, label %9, label %25, !dbg !1022

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !dbg !1025
  %11 = getelementptr inbounds %struct.htscallbacks, ptr %10, i32 0, i32 1, !dbg !1028
  %12 = load ptr, ptr %11, align 8, !dbg !1028
  %13 = icmp ne ptr %12, null, !dbg !1029
  br i1 %13, label %14, label %21, !dbg !1030

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !dbg !1031
  %16 = getelementptr inbounds %struct.htscallbacks, ptr %15, i32 0, i32 1, !dbg !1033
  %17 = load ptr, ptr %16, align 8, !dbg !1033
  %18 = call i32 %17(), !dbg !1031
  %19 = load ptr, ptr %3, align 8, !dbg !1034
  %20 = getelementptr inbounds %struct.htscallbacks, ptr %19, i32 0, i32 1, !dbg !1035
  store ptr null, ptr %20, align 8, !dbg !1036
  br label %21, !dbg !1037

21:                                               ; preds = %14, %9
  %22 = load ptr, ptr %3, align 8, !dbg !1038
  %23 = getelementptr inbounds %struct.htscallbacks, ptr %22, i32 0, i32 2, !dbg !1039
  %24 = load ptr, ptr %23, align 8, !dbg !1039
  store ptr %24, ptr %3, align 8, !dbg !1040
  br label %6, !dbg !1022, !llvm.loop !1041

25:                                               ; preds = %6
  %26 = load ptr, ptr %2, align 8, !dbg !1043
  store ptr %26, ptr %3, align 8, !dbg !1044
  br label %27, !dbg !1045

27:                                               ; preds = %40, %25
  %28 = load ptr, ptr %3, align 8, !dbg !1046
  %29 = icmp ne ptr %28, null, !dbg !1047
  br i1 %29, label %30, label %44, !dbg !1045

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 8, !dbg !1048
  %32 = getelementptr inbounds %struct.htscallbacks, ptr %31, i32 0, i32 0, !dbg !1051
  %33 = load ptr, ptr %32, align 8, !dbg !1051
  %34 = icmp ne ptr %33, null, !dbg !1052
  br i1 %34, label %35, label %40, !dbg !1053

35:                                               ; preds = %30
  %36 = load ptr, ptr %3, align 8, !dbg !1054
  %37 = getelementptr inbounds %struct.htscallbacks, ptr %36, i32 0, i32 0, !dbg !1056
  %38 = load ptr, ptr %37, align 8, !dbg !1056
  %39 = call i32 @dlclose(ptr noundef %38) #6, !dbg !1057
  br label %40, !dbg !1058

40:                                               ; preds = %35, %30
  %41 = load ptr, ptr %3, align 8, !dbg !1059
  %42 = getelementptr inbounds %struct.htscallbacks, ptr %41, i32 0, i32 2, !dbg !1060
  %43 = load ptr, ptr %42, align 8, !dbg !1060
  store ptr %43, ptr %3, align 8, !dbg !1061
  br label %27, !dbg !1045, !llvm.loop !1062

44:                                               ; preds = %27
  %45 = load ptr, ptr %2, align 8, !dbg !1064
  %46 = getelementptr inbounds %struct.htscallbacks, ptr %45, i32 0, i32 2, !dbg !1065
  %47 = load ptr, ptr %46, align 8, !dbg !1065
  store ptr %47, ptr %3, align 8, !dbg !1066
  br label %48, !dbg !1067

48:                                               ; preds = %61, %44
  %49 = load ptr, ptr %3, align 8, !dbg !1068
  %50 = icmp ne ptr %49, null, !dbg !1069
  br i1 %50, label %51, label %63, !dbg !1067

51:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1070, metadata !DIExpression()), !dbg !1072
  %52 = load ptr, ptr %3, align 8, !dbg !1073
  %53 = getelementptr inbounds %struct.htscallbacks, ptr %52, i32 0, i32 2, !dbg !1074
  %54 = load ptr, ptr %53, align 8, !dbg !1074
  store ptr %54, ptr %4, align 8, !dbg !1072
  br label %55, !dbg !1075

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 8, !dbg !1076
  %57 = icmp ne ptr %56, null, !dbg !1076
  br i1 %57, label %58, label %60, !dbg !1079

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 8, !dbg !1080
  call void @free(ptr noundef %59) #6, !dbg !1080
  store ptr null, ptr %3, align 8, !dbg !1080
  br label %60, !dbg !1080

60:                                               ; preds = %58, %55
  br label %61, !dbg !1079

61:                                               ; preds = %60
  %62 = load ptr, ptr %4, align 8, !dbg !1082
  store ptr %62, ptr %3, align 8, !dbg !1083
  br label %48, !dbg !1067, !llvm.loop !1084

63:                                               ; preds = %48
  %64 = load ptr, ptr %2, align 8, !dbg !1086
  %65 = getelementptr inbounds %struct.htscallbacks, ptr %64, i32 0, i32 2, !dbg !1087
  store ptr null, ptr %65, align 8, !dbg !1088
  ret void, !dbg !1089
}

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @openFunctionLib(ptr noundef %0) #0 !dbg !1090 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1093, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1095, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1097, metadata !DIExpression()), !dbg !1098
  %5 = load ptr, ptr %2, align 8, !dbg !1099
  %6 = call i64 @strlen(ptr noundef %5) #7, !dbg !1099
  %7 = add i64 %6, 32, !dbg !1099
  %8 = call noalias ptr @malloc(i64 noundef %7) #8, !dbg !1099
  store ptr %8, ptr %4, align 8, !dbg !1098
  %9 = load ptr, ptr %4, align 8, !dbg !1100
  %10 = load ptr, ptr %2, align 8, !dbg !1101
  %11 = call ptr @strcpy(ptr noundef %9, ptr noundef %10) #6, !dbg !1102
  %12 = load ptr, ptr %4, align 8, !dbg !1103
  %13 = call ptr @dlopen(ptr noundef %12, i32 noundef 1) #6, !dbg !1104
  store ptr %13, ptr %3, align 8, !dbg !1105
  %14 = load ptr, ptr %3, align 8, !dbg !1106
  %15 = icmp eq ptr %14, null, !dbg !1108
  br i1 %15, label %16, label %22, !dbg !1109

16:                                               ; preds = %1
  %17 = load ptr, ptr %4, align 8, !dbg !1110
  %18 = load ptr, ptr %2, align 8, !dbg !1112
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %17, ptr noundef @.str.2, ptr noundef %18) #6, !dbg !1113
  %20 = load ptr, ptr %4, align 8, !dbg !1114
  %21 = call ptr @dlopen(ptr noundef %20, i32 noundef 1) #6, !dbg !1115
  store ptr %21, ptr %3, align 8, !dbg !1116
  br label %22, !dbg !1117

22:                                               ; preds = %16, %1
  br label %23, !dbg !1118

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !dbg !1119
  %25 = icmp ne ptr %24, null, !dbg !1119
  br i1 %25, label %26, label %28, !dbg !1122

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !dbg !1123
  call void @free(ptr noundef %27) #6, !dbg !1123
  store ptr null, ptr %4, align 8, !dbg !1123
  br label %28, !dbg !1123

28:                                               ; preds = %26, %23
  br label %29, !dbg !1122

29:                                               ; preds = %28
  %30 = load ptr, ptr %3, align 8, !dbg !1125
  ret ptr %30, !dbg !1126
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @closeFunctionLib(ptr noundef %0) #0 !dbg !1127 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1130, metadata !DIExpression()), !dbg !1131
  %3 = load ptr, ptr %2, align 8, !dbg !1132
  %4 = call i32 @dlclose(ptr noundef %3) #6, !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @getFunctionPtr(ptr noundef %0, ptr noundef %1) #0 !dbg !1135 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1138, metadata !DIExpression()), !dbg !1139
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1140, metadata !DIExpression()), !dbg !1141
  %9 = load ptr, ptr %4, align 8, !dbg !1142
  %10 = icmp ne ptr %9, null, !dbg !1142
  br i1 %10, label %11, label %32, !dbg !1144

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1145, metadata !DIExpression()), !dbg !1147
  store ptr null, ptr %6, align 8, !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1148, metadata !DIExpression()), !dbg !1149
  %12 = load ptr, ptr %5, align 8, !dbg !1150
  %13 = call noalias ptr @strdup(ptr noundef %12) #6, !dbg !1150
  store ptr %13, ptr %7, align 8, !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1151, metadata !DIExpression()), !dbg !1152
  %14 = load ptr, ptr %7, align 8, !dbg !1153
  %15 = call ptr @strchr(ptr noundef %14, i32 noundef 44) #7, !dbg !1155
  store ptr %15, ptr %8, align 8, !dbg !1156
  %16 = icmp ne ptr %15, null, !dbg !1157
  br i1 %16, label %17, label %20, !dbg !1158

17:                                               ; preds = %11
  %18 = load ptr, ptr %8, align 8, !dbg !1159
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !1159
  store ptr %19, ptr %8, align 8, !dbg !1159
  store i8 0, ptr %18, align 1, !dbg !1161
  br label %20, !dbg !1162

20:                                               ; preds = %17, %11
  %21 = load ptr, ptr %4, align 8, !dbg !1163
  %22 = load ptr, ptr %7, align 8, !dbg !1163
  %23 = call ptr @dlsym(ptr noundef %21, ptr noundef %22) #6, !dbg !1163
  store ptr %23, ptr %6, align 8, !dbg !1164
  br label %24, !dbg !1165

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8, !dbg !1166
  %26 = icmp ne ptr %25, null, !dbg !1166
  br i1 %26, label %27, label %29, !dbg !1169

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 8, !dbg !1170
  call void @free(ptr noundef %28) #6, !dbg !1170
  store ptr null, ptr %7, align 8, !dbg !1170
  br label %29, !dbg !1170

29:                                               ; preds = %27, %24
  br label %30, !dbg !1169

30:                                               ; preds = %29
  %31 = load ptr, ptr %6, align 8, !dbg !1172
  store ptr %31, ptr %3, align 8, !dbg !1173
  br label %33, !dbg !1173

32:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !1174
  br label %33, !dbg !1174

33:                                               ; preds = %32, %30
  %34 = load ptr, ptr %3, align 8, !dbg !1175
  ret ptr %34, !dbg !1175
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htspe_init() #0 !dbg !851 {
  %1 = load i32, ptr @htspe_init.initOk, align 4, !dbg !1176
  %2 = icmp ne i32 %1, 0, !dbg !1176
  br i1 %2, label %9, label %3, !dbg !1178

3:                                                ; preds = %0
  store i32 1, ptr @htspe_init.initOk, align 4, !dbg !1179
  %4 = load i32, ptr @V6_is_available, align 4, !dbg !1181
  %5 = icmp ne i32 %4, 0, !dbg !1181
  %6 = zext i1 %5 to i64, !dbg !1181
  %7 = select i1 %5, ptr @.str.4, ptr @.str.5, !dbg !1181
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef @WHAT_is_available, ptr noundef @.str.3, ptr noundef %7, ptr noundef @.str.4, ptr noundef @.str.4) #6, !dbg !1182
  br label %9, !dbg !1183

9:                                                ; preds = %3, %0
  ret void, !dbg !1184
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htspe_uninit() #0 !dbg !1185 {
  ret void, !dbg !1186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @hts_is_available() #0 !dbg !1187 {
  ret ptr @WHAT_is_available, !dbg !1190
}

declare void @hts_log_print(ptr noundef, i32 noundef, ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!874, !875, !876, !877, !878, !879, !880}
!llvm.ident = !{!881}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "V6_is_available", scope: !2, file: !3, line: 64, type: !57, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !835, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/htsmodules.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "c60960c55b2520041df3438d6ac78ed3")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hts_log_type", file: !6, line: 179, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./src/htsopt.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "4c13c78c9669919a80461e39e206d058")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "LOG_PANIC", value: 0)
!10 = !DIEnumerator(name: "LOG_ERROR", value: 1)
!11 = !DIEnumerator(name: "LOG_WARNING", value: 2)
!12 = !DIEnumerator(name: "LOG_NOTICE", value: 3)
!13 = !DIEnumerator(name: "LOG_INFO", value: 4)
!14 = !DIEnumerator(name: "LOG_DEBUG", value: 5)
!15 = !DIEnumerator(name: "LOG_TRACE", value: 6)
!16 = !DIEnumerator(name: "LOG_ERRNO", value: 256)
!17 = !{!18, !19, !288, !86, !58}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_callbacks", file: !6, line: 49, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_hts_htmlcheck_callbacks", file: !22, line: 191, size: 3328, elements: !23)
!22 = !DIFile(filename: "./src/htsdefines.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "8ac9e3f618ab92204dc9f7b5fc77bda3")
!23 = !{!24, !43, !49, !412, !418, !424, !434, !440, !449, !458, !464, !470, !687, !696, !705, !714, !720, !729, !738, !747, !756, !765, !775, !781, !823, !829}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !21, file: !22, line: 193, baseType: !25, size: 128)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init", file: !22, line: 193, size: 128, elements: !26)
!26 = !{!27, !42}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !25, file: !22, line: 193, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_init", file: !22, line: 83, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_callbackarg", file: !22, line: 60, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_hts_callbackarg", file: !22, line: 179, size: 192, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "userdef", scope: !34, file: !22, line: 181, baseType: !18, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !34, file: !22, line: 187, baseType: !38, size: 128, offset: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev", file: !22, line: 184, size: 128, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !38, file: !22, line: 185, baseType: !18, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !38, file: !22, line: 186, baseType: !32, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !25, file: !22, line: 193, baseType: !32, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !21, file: !22, line: 194, baseType: !44, size: 128, offset: 128)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uninit", file: !22, line: 194, size: 128, elements: !45)
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !44, file: !22, line: 194, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_uninit", file: !22, line: 84, baseType: !29)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !44, file: !22, line: 194, baseType: !32, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !21, file: !22, line: 195, baseType: !50, size: 128, offset: 256)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "start", file: !22, line: 195, size: 128, elements: !51)
!51 = !{!52, !411}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !50, file: !22, line: 195, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_start", file: !22, line: 85, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !32, !58}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "httrackp", file: !60, line: 44, baseType: !61)
!60 = !DIFile(filename: "./src/htsmodules.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "65f13e42a0265151bd8524490683afa8")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "httrackp", file: !6, line: 294, size: 1133184, elements: !62)
!62 = !{!63, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !136, !137, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !247, !251, !270, !271, !275, !279, !280, !281, !282, !283, !284, !285, !286, !287, !290, !291, !292, !293, !294, !295, !296, !297, !309}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "size_httrackp", scope: !61, file: !6, line: 295, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "wizard", scope: !61, file: !6, line: 297, baseType: !57, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !61, file: !6, line: 298, baseType: !57, size: 32, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "travel", scope: !61, file: !6, line: 299, baseType: !57, size: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "seeker", scope: !61, file: !6, line: 300, baseType: !57, size: 32, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !61, file: !6, line: 301, baseType: !57, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "extdepth", scope: !61, file: !6, line: 302, baseType: !57, size: 32, offset: 224)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "urlmode", scope: !61, file: !6, line: 303, baseType: !57, size: 32, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "no_type_change", scope: !61, file: !6, line: 304, baseType: !57, size: 32, offset: 288)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !61, file: !6, line: 305, baseType: !57, size: 32, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "getmode", scope: !61, file: !6, line: 306, baseType: !57, size: 32, offset: 352)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !61, file: !6, line: 307, baseType: !78, size: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !80, line: 7, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !82, line: 49, size: 1728, elements: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!83 = !{!84, !85, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !103, !104, !105, !109, !111, !113, !117, !120, !122, !125, !128, !129, !130, !131, !132}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !81, file: !82, line: 51, baseType: !57, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !81, file: !82, line: 54, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !81, file: !82, line: 55, baseType: !86, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !81, file: !82, line: 56, baseType: !86, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !81, file: !82, line: 57, baseType: !86, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !81, file: !82, line: 58, baseType: !86, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !81, file: !82, line: 59, baseType: !86, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !81, file: !82, line: 60, baseType: !86, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !81, file: !82, line: 61, baseType: !86, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !81, file: !82, line: 64, baseType: !86, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !81, file: !82, line: 65, baseType: !86, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !81, file: !82, line: 66, baseType: !86, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !81, file: !82, line: 68, baseType: !99, size: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !82, line: 36, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !81, file: !82, line: 70, baseType: !102, size: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !81, file: !82, line: 72, baseType: !57, size: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !81, file: !82, line: 73, baseType: !57, size: 32, offset: 928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !81, file: !82, line: 74, baseType: !106, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !107, line: 152, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!108 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !81, file: !82, line: 77, baseType: !110, size: 16, offset: 1024)
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !81, file: !82, line: 78, baseType: !112, size: 8, offset: 1040)
!112 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !81, file: !82, line: 79, baseType: !114, size: 8, offset: 1048)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !81, file: !82, line: 81, baseType: !118, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !82, line: 43, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !81, file: !82, line: 89, baseType: !121, size: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !107, line: 153, baseType: !108)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !81, file: !82, line: 91, baseType: !123, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !82, line: 37, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !81, file: !82, line: 92, baseType: !126, size: 64, offset: 1280)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !82, line: 38, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !81, file: !82, line: 93, baseType: !102, size: 64, offset: 1344)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !81, file: !82, line: 94, baseType: !18, size: 64, offset: 1408)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !81, file: !82, line: 95, baseType: !64, size: 64, offset: 1472)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !81, file: !82, line: 96, baseType: !57, size: 32, offset: 1536)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !81, file: !82, line: 98, baseType: !133, size: 160, offset: 1568)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 160, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 20)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "errlog", scope: !61, file: !6, line: 308, baseType: !78, size: 64, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "maxsite", scope: !61, file: !6, line: 309, baseType: !138, size: 64, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "LLint", file: !139, line: 283, baseType: !108)
!139 = !DIFile(filename: "./src/htsglobal.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "fb20c0ed09319430675cc60ef3f4ae78")
!140 = !DIDerivedType(tag: DW_TAG_member, name: "maxfile_nonhtml", scope: !61, file: !6, line: 310, baseType: !138, size: 64, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "maxfile_html", scope: !61, file: !6, line: 311, baseType: !138, size: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "maxsoc", scope: !61, file: !6, line: 312, baseType: !57, size: 32, offset: 704)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !61, file: !6, line: 313, baseType: !138, size: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nearlink", scope: !61, file: !6, line: 314, baseType: !57, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "makeindex", scope: !61, file: !6, line: 315, baseType: !57, size: 32, offset: 864)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "kindex", scope: !61, file: !6, line: 316, baseType: !57, size: 32, offset: 896)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "delete_old", scope: !61, file: !6, line: 317, baseType: !57, size: 32, offset: 928)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !61, file: !6, line: 318, baseType: !57, size: 32, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rateout", scope: !61, file: !6, line: 319, baseType: !57, size: 32, offset: 992)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "maxtime", scope: !61, file: !6, line: 320, baseType: !57, size: 32, offset: 1024)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "maxrate", scope: !61, file: !6, line: 321, baseType: !57, size: 32, offset: 1056)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "maxconn", scope: !61, file: !6, line: 322, baseType: !153, size: 32, offset: 1088)
!153 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "waittime", scope: !61, file: !6, line: 323, baseType: !57, size: 32, offset: 1120)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !61, file: !6, line: 324, baseType: !57, size: 32, offset: 1152)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "shell", scope: !61, file: !6, line: 326, baseType: !57, size: 32, offset: 1184)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !61, file: !6, line: 327, baseType: !158, size: 512, offset: 1216)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_proxy", file: !6, line: 89, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_proxy", file: !6, line: 91, size: 512, elements: !160)
!160 = !{!161, !162, !169, !170}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !159, file: !6, line: 92, baseType: !57, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !6, line: 93, baseType: !163, size: 192, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !6, line: 71, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "String", file: !6, line: 75, size: 192, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_", scope: !164, file: !6, line: 76, baseType: !86, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "length_", scope: !164, file: !6, line: 77, baseType: !64, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "capacity_", scope: !164, file: !6, line: 78, baseType: !64, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !159, file: !6, line: 94, baseType: !57, size: 32, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bindhost", scope: !159, file: !6, line: 95, baseType: !163, size: 192, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "savename_83", scope: !61, file: !6, line: 328, baseType: !57, size: 32, offset: 1728)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "savename_type", scope: !61, file: !6, line: 329, baseType: !57, size: 32, offset: 1760)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "savename_userdef", scope: !61, file: !6, line: 330, baseType: !163, size: 192, offset: 1792)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "savename_delayed", scope: !61, file: !6, line: 331, baseType: !57, size: 32, offset: 1984)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_cached", scope: !61, file: !6, line: 332, baseType: !57, size: 32, offset: 2016)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "mimehtml", scope: !61, file: !6, line: 333, baseType: !57, size: 32, offset: 2048)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent_send", scope: !61, file: !6, line: 334, baseType: !57, size: 32, offset: 2080)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !61, file: !6, line: 335, baseType: !163, size: 192, offset: 2112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !61, file: !6, line: 336, baseType: !163, size: 192, offset: 2304)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !61, file: !6, line: 337, baseType: !163, size: 192, offset: 2496)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "path_log", scope: !61, file: !6, line: 338, baseType: !163, size: 192, offset: 2688)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "path_html", scope: !61, file: !6, line: 339, baseType: !163, size: 192, offset: 2880)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "path_html_utf8", scope: !61, file: !6, line: 340, baseType: !163, size: 192, offset: 3072)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "path_bin", scope: !61, file: !6, line: 341, baseType: !163, size: 192, offset: 3264)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !61, file: !6, line: 342, baseType: !57, size: 32, offset: 3456)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "makestat", scope: !61, file: !6, line: 343, baseType: !57, size: 32, offset: 3488)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "maketrack", scope: !61, file: !6, line: 344, baseType: !57, size: 32, offset: 3520)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parsejava", scope: !61, file: !6, line: 345, baseType: !57, size: 32, offset: 3552)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "hostcontrol", scope: !61, file: !6, line: 346, baseType: !57, size: 32, offset: 3584)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "errpage", scope: !61, file: !6, line: 347, baseType: !57, size: 32, offset: 3616)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "check_type", scope: !61, file: !6, line: 348, baseType: !57, size: 32, offset: 3648)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "all_in_cache", scope: !61, file: !6, line: 349, baseType: !57, size: 32, offset: 3680)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "robots", scope: !61, file: !6, line: 350, baseType: !57, size: 32, offset: 3712)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !61, file: !6, line: 351, baseType: !57, size: 32, offset: 3744)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "passprivacy", scope: !61, file: !6, line: 352, baseType: !57, size: 32, offset: 3776)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "includequery", scope: !61, file: !6, line: 353, baseType: !57, size: 32, offset: 3808)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mirror_first_page", scope: !61, file: !6, line: 354, baseType: !57, size: 32, offset: 3840)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sys_com", scope: !61, file: !6, line: 355, baseType: !163, size: 192, offset: 3904)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sys_com_exec", scope: !61, file: !6, line: 356, baseType: !57, size: 32, offset: 4096)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "accept_cookie", scope: !61, file: !6, line: 357, baseType: !57, size: 32, offset: 4128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !61, file: !6, line: 358, baseType: !202, size: 64, offset: 4160)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cookie", file: !6, line: 65, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_cookie", file: !205, line: 55, size: 278656, elements: !206)
!205 = !DIFile(filename: "./src/htsbauth.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "2c305fa8769d56cd3c433c11e4cc3006")
!206 = !{!207, !208, !212}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "max_len", scope: !204, file: !205, line: 56, baseType: !57, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !204, file: !205, line: 57, baseType: !209, size: 262144, offset: 32)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 262144, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 32768)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !204, file: !205, line: 58, baseType: !213, size: 16448, offset: 262208)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "bauth_chain", file: !205, line: 42, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bauth_chain", file: !205, line: 44, size: 16448, elements: !215)
!215 = !{!216, !220, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !214, file: !205, line: 45, baseType: !217, size: 8192)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 8192, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !214, file: !205, line: 46, baseType: !217, size: 8192, offset: 8192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !205, line: 47, baseType: !222, size: 64, offset: 16384)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "http10", scope: !61, file: !6, line: 359, baseType: !57, size: 32, offset: 4224)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "nokeepalive", scope: !61, file: !6, line: 360, baseType: !57, size: 32, offset: 4256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "nocompression", scope: !61, file: !6, line: 361, baseType: !57, size: 32, offset: 4288)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sizehack", scope: !61, file: !6, line: 362, baseType: !57, size: 32, offset: 4320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "urlhack", scope: !61, file: !6, line: 363, baseType: !57, size: 32, offset: 4352)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tolerant", scope: !61, file: !6, line: 364, baseType: !57, size: 32, offset: 4384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parseall", scope: !61, file: !6, line: 365, baseType: !57, size: 32, offset: 4416)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parsedebug", scope: !61, file: !6, line: 366, baseType: !57, size: 32, offset: 4448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "norecatch", scope: !61, file: !6, line: 367, baseType: !57, size: 32, offset: 4480)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "verbosedisplay", scope: !61, file: !6, line: 368, baseType: !57, size: 32, offset: 4512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !61, file: !6, line: 369, baseType: !163, size: 192, offset: 4544)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "maxcache", scope: !61, file: !6, line: 370, baseType: !57, size: 32, offset: 4736)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ftp_proxy", scope: !61, file: !6, line: 372, baseType: !57, size: 32, offset: 4768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !61, file: !6, line: 373, baseType: !163, size: 192, offset: 4800)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "urllist", scope: !61, file: !6, line: 374, baseType: !163, size: 192, offset: 4992)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !61, file: !6, line: 375, baseType: !239, size: 128, offset: 5184)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsfilters", file: !6, line: 101, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsfilters", file: !6, line: 103, size: 128, elements: !241)
!241 = !{!242, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !240, file: !6, line: 104, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "filptr", scope: !240, file: !6, line: 105, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !61, file: !6, line: 376, baseType: !248, size: 64, offset: 5312)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_struct", file: !60, line: 56, baseType: !250)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash_struct", file: !60, line: 56, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "liens", scope: !61, file: !6, line: 377, baseType: !252, size: 64, offset: 5376)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "lien_url", file: !60, line: 40, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lien_url", file: !6, line: 534, size: 640, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !255, file: !6, line: 535, baseType: !86, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fil", scope: !255, file: !6, line: 536, baseType: !86, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sav", scope: !255, file: !6, line: 537, baseType: !86, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cod", scope: !255, file: !6, line: 538, baseType: !86, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "former_adr", scope: !255, file: !6, line: 539, baseType: !86, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "former_fil", scope: !255, file: !6, line: 540, baseType: !86, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "premier", scope: !255, file: !6, line: 542, baseType: !57, size: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "precedent", scope: !255, file: !6, line: 543, baseType: !57, size: 32, offset: 416)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !255, file: !6, line: 544, baseType: !57, size: 32, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pass2", scope: !255, file: !6, line: 545, baseType: !57, size: 32, offset: 480)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "link_import", scope: !255, file: !6, line: 546, baseType: !87, size: 8, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !255, file: !6, line: 548, baseType: !57, size: 32, offset: 544)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "testmode", scope: !255, file: !6, line: 549, baseType: !57, size: 32, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "lien_tot", scope: !61, file: !6, line: 378, baseType: !57, size: 32, offset: 5440)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "liensbuf", scope: !61, file: !6, line: 379, baseType: !272, size: 64, offset: 5504)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "lien_buffers", file: !6, line: 286, baseType: !274)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "lien_buffers", file: !6, line: 286, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "robotsptr", scope: !61, file: !6, line: 380, baseType: !276, size: 64, offset: 5568)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "robots_wizard", file: !6, line: 61, baseType: !278)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "robots_wizard", file: !6, line: 61, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "lang_iso", scope: !61, file: !6, line: 381, baseType: !163, size: 192, offset: 5632)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !61, file: !6, line: 382, baseType: !163, size: 192, offset: 5824)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !61, file: !6, line: 383, baseType: !163, size: 192, offset: 6016)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mimedefs", scope: !61, file: !6, line: 384, baseType: !163, size: 192, offset: 6208)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mod_blacklist", scope: !61, file: !6, line: 385, baseType: !163, size: 192, offset: 6400)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "convert_utf8", scope: !61, file: !6, line: 386, baseType: !57, size: 32, offset: 6592)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "maxlink", scope: !61, file: !6, line: 388, baseType: !57, size: 32, offset: 6624)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "maxfilter", scope: !61, file: !6, line: 389, baseType: !57, size: 32, offset: 6656)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !61, file: !6, line: 391, baseType: !288, size: 64, offset: 6720)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !61, file: !6, line: 393, baseType: !57, size: 32, offset: 6784)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "keyboard", scope: !61, file: !6, line: 394, baseType: !57, size: 32, offset: 6816)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_limits", scope: !61, file: !6, line: 395, baseType: !57, size: 32, offset: 6848)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "background_on_suspend", scope: !61, file: !6, line: 396, baseType: !57, size: 32, offset: 6880)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_update", scope: !61, file: !6, line: 398, baseType: !57, size: 32, offset: 6912)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dir_topindex", scope: !61, file: !6, line: 399, baseType: !57, size: 32, offset: 6944)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks_fun", scope: !61, file: !6, line: 402, baseType: !19, size: 64, offset: 6976)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "libHandles", scope: !61, file: !6, line: 404, baseType: !298, size: 128, offset: 7040)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "htslibhandles", file: !6, line: 260, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htslibhandles", file: !6, line: 270, size: 128, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !299, file: !6, line: 271, baseType: !57, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !299, file: !6, line: 272, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "htslibhandle", file: !6, line: 264, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htslibhandle", file: !6, line: 266, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "moduleName", scope: !305, file: !6, line: 267, baseType: !86, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !305, file: !6, line: 268, baseType: !18, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !61, file: !6, line: 406, baseType: !310, size: 1126016, offset: 7168)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsoptstate", file: !6, line: 216, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsoptstate", file: !6, line: 218, size: 1126016, elements: !312)
!312 = !{!313, !317, !318, !319, !320, !321, !322, !323, !324, !333, !345, !355, !364, !371, !372, !373, !374, !388, !389, !393, !394, !395, !396, !397, !398, !399, !400, !407, !408, !409, !410}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !311, file: !6, line: 219, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsmutex", file: !6, line: 204, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "htsmutex_s", file: !6, line: 204, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !311, file: !6, line: 221, baseType: !57, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "exit_xh", scope: !311, file: !6, line: 222, baseType: !57, size: 32, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "back_add_stats", scope: !311, file: !6, line: 223, baseType: !57, size: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mimehtml_created", scope: !311, file: !6, line: 225, baseType: !57, size: 32, offset: 160)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mimemid", scope: !311, file: !6, line: 226, baseType: !163, size: 192, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mimefp", scope: !311, file: !6, line: 227, baseType: !78, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "delayedId", scope: !311, file: !6, line: 228, baseType: !57, size: 32, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "strc", scope: !311, file: !6, line: 230, baseType: !325, size: 32832, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "filenote_strc", file: !6, line: 121, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filenote_strc", file: !6, line: 123, size: 32832, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "lst", scope: !326, file: !6, line: 124, baseType: !78, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !326, file: !6, line: 125, baseType: !330, size: 32768, offset: 64)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 32768, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 4096)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !311, file: !6, line: 232, baseType: !334, size: 192, offset: 33344)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "htscallbacks", file: !6, line: 111, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htscallbacks", file: !6, line: 112, size: 192, elements: !336)
!336 = !{!337, !338, !343}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "moduleHandle", scope: !335, file: !6, line: 113, baseType: !18, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "exitFnc", scope: !335, file: !6, line: 114, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "htscallbacksfncptr", file: !6, line: 110, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!57}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !6, line: 115, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "concat", scope: !311, file: !6, line: 233, baseType: !346, size: 1048608, offset: 33536)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "concat_strc", file: !6, line: 131, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "concat_strc", file: !6, line: 133, size: 1048608, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !347, file: !6, line: 134, baseType: !57, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !347, file: !6, line: 135, baseType: !351, size: 1048576, offset: 32)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1048576, elements: !352)
!352 = !{!353, !354}
!353 = !DISubrange(count: 16)
!354 = !DISubrange(count: 8192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "usercmd", scope: !311, file: !6, line: 234, baseType: !356, size: 16416, offset: 1082144)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "usercommand_strc", file: !6, line: 153, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usercommand_strc", file: !6, line: 155, size: 16416, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "exe", scope: !357, file: !6, line: 156, baseType: !57, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !357, file: !6, line: 157, baseType: !361, size: 16384, offset: 32)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 16384, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 2048)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fspc", scope: !311, file: !6, line: 235, baseType: !365, size: 96, offset: 1098560)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "fspc_strc", file: !6, line: 163, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fspc_strc", file: !6, line: 165, size: 96, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !366, file: !6, line: 166, baseType: !57, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !366, file: !6, line: 167, baseType: !57, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !366, file: !6, line: 168, baseType: !57, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "userhttptype", scope: !311, file: !6, line: 236, baseType: !86, size: 64, offset: 1098688)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "verif_backblue_done", scope: !311, file: !6, line: 237, baseType: !57, size: 32, offset: 1098752)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "verif_external_status", scope: !311, file: !6, line: 238, baseType: !57, size: 32, offset: 1098784)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dns_cache", scope: !311, file: !6, line: 239, baseType: !375, size: 64, offset: 1098816)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_dnscache", file: !6, line: 53, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_dnscache", file: !378, line: 150, size: 704, elements: !379)
!378 = !DIFile(filename: "./src/htslib.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "b8775ab5fd3d72ae1f56a38e4cc386f9")
!379 = !{!380, !382, !383, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !378, line: 151, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "iadr", scope: !377, file: !378, line: 152, baseType: !288, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "host_length", scope: !377, file: !378, line: 153, baseType: !64, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !377, file: !378, line: 154, baseType: !385, size: 512, offset: 192)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 512, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dns_cache_nthreads", scope: !311, file: !6, line: 240, baseType: !57, size: 32, offset: 1098880)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_errmsg", scope: !311, file: !6, line: 242, baseType: !390, size: 10240, offset: 1098912)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 10240, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 1280)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_in_html_parsing", scope: !311, file: !6, line: 243, baseType: !57, size: 32, offset: 1109152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_in_html_done", scope: !311, file: !6, line: 244, baseType: !57, size: 32, offset: 1109184)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_in_html_poll", scope: !311, file: !6, line: 245, baseType: !57, size: 32, offset: 1109216)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_setpause", scope: !311, file: !6, line: 246, baseType: !57, size: 32, offset: 1109248)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_in_mirror", scope: !311, file: !6, line: 247, baseType: !57, size: 32, offset: 1109280)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_addurl", scope: !311, file: !6, line: 248, baseType: !244, size: 64, offset: 1109312)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_cancel", scope: !311, file: !6, line: 249, baseType: !57, size: 32, offset: 1109376)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !311, file: !6, line: 250, baseType: !401, size: 64, offset: 1109440)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsoptstatecancel", file: !6, line: 194, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsoptstatecancel", file: !6, line: 196, size: 128, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !403, file: !6, line: 197, baseType: !86, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !6, line: 198, baseType: !401, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "HTbuff", scope: !311, file: !6, line: 251, baseType: !361, size: 16384, offset: 1109504)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "debug_state", scope: !311, file: !6, line: 252, baseType: !7, size: 32, offset: 1125888)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tmpnameid", scope: !311, file: !6, line: 253, baseType: !7, size: 32, offset: 1125920)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "is_ended", scope: !311, file: !6, line: 254, baseType: !57, size: 32, offset: 1125952)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !50, file: !22, line: 195, baseType: !32, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !21, file: !22, line: 196, baseType: !413, size: 128, offset: 384)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "end", file: !22, line: 196, size: 128, elements: !414)
!414 = !{!415, !417}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !413, file: !22, line: 196, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_end", file: !22, line: 86, baseType: !54)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !413, file: !22, line: 196, baseType: !32, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "chopt", scope: !21, file: !22, line: 197, baseType: !419, size: 128, offset: 512)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chopt", file: !22, line: 197, size: 128, elements: !420)
!420 = !{!421, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !419, file: !22, line: 197, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_chopt", file: !22, line: 87, baseType: !54)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !419, file: !22, line: 197, baseType: !32, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "preprocess", scope: !21, file: !22, line: 198, baseType: !425, size: 128, offset: 640)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "preprocess", file: !22, line: 198, size: 128, elements: !426)
!426 = !{!427, !433}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !425, file: !22, line: 198, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_preprocess", file: !22, line: 92, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_process", file: !22, line: 88, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!57, !32, !58, !244, !246, !288, !288}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !425, file: !22, line: 198, baseType: !32, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "postprocess", scope: !21, file: !22, line: 199, baseType: !435, size: 128, offset: 768)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "postprocess", file: !22, line: 199, size: 128, elements: !436)
!436 = !{!437, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !435, file: !22, line: 199, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_postprocess", file: !22, line: 93, baseType: !429)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !435, file: !22, line: 199, baseType: !32, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "check_html", scope: !21, file: !22, line: 200, baseType: !441, size: 128, offset: 896)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "check_html", file: !22, line: 200, size: 128, elements: !442)
!442 = !{!443, !448}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !441, file: !22, line: 200, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_check_html", file: !22, line: 94, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!57, !32, !58, !86, !57, !288, !288}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !441, file: !22, line: 200, baseType: !32, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !21, file: !22, line: 201, baseType: !450, size: 128, offset: 1024)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "query", file: !22, line: 201, size: 128, elements: !451)
!451 = !{!452, !457}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !450, file: !22, line: 201, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_query", file: !22, line: 98, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!288, !32, !58, !288}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !450, file: !22, line: 201, baseType: !32, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "query2", scope: !21, file: !22, line: 202, baseType: !459, size: 128, offset: 1152)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "query2", file: !22, line: 202, size: 128, elements: !460)
!460 = !{!461, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !459, file: !22, line: 202, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_query2", file: !22, line: 101, baseType: !454)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !459, file: !22, line: 202, baseType: !32, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "query3", scope: !21, file: !22, line: 203, baseType: !465, size: 128, offset: 1280)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "query3", file: !22, line: 203, size: 128, elements: !466)
!466 = !{!467, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !465, file: !22, line: 203, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_query3", file: !22, line: 104, baseType: !454)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !465, file: !22, line: 203, baseType: !32, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !21, file: !22, line: 204, baseType: !471, size: 128, offset: 1408)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !22, line: 204, size: 128, elements: !472)
!472 = !{!473, !686}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !471, file: !22, line: 204, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_loop", file: !22, line: 107, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!57, !32, !58, !478, !57, !57, !57, !57, !57, !653}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "lien_back", file: !6, line: 555, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lien_back", file: !6, line: 557, size: 135040, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !497, !498, !499, !500, !501, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "url_adr", scope: !480, file: !6, line: 561, baseType: !361, size: 16384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "url_fil", scope: !480, file: !6, line: 562, baseType: !361, size: 16384, offset: 16384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "url_sav", scope: !480, file: !6, line: 563, baseType: !361, size: 16384, offset: 32768)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "referer_adr", scope: !480, file: !6, line: 564, baseType: !361, size: 16384, offset: 49152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "referer_fil", scope: !480, file: !6, line: 565, baseType: !361, size: 16384, offset: 65536)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "location_buffer", scope: !480, file: !6, line: 566, baseType: !361, size: 16384, offset: 81920)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !480, file: !6, line: 567, baseType: !86, size: 64, offset: 98304)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile_buffer", scope: !480, file: !6, line: 568, baseType: !361, size: 16384, offset: 98368)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "send_too", scope: !480, file: !6, line: 569, baseType: !217, size: 8192, offset: 114752)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !480, file: !6, line: 570, baseType: !57, size: 32, offset: 122944)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !480, file: !6, line: 571, baseType: !57, size: 32, offset: 122976)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "testmode", scope: !480, file: !6, line: 572, baseType: !57, size: 32, offset: 123008)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !480, file: !6, line: 573, baseType: !57, size: 32, offset: 123040)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_refresh", scope: !480, file: !6, line: 574, baseType: !496, size: 64, offset: 123072)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "TStamp", file: !139, line: 284, baseType: !108)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rateout", scope: !480, file: !6, line: 575, baseType: !57, size: 32, offset: 123136)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rateout_time", scope: !480, file: !6, line: 576, baseType: !496, size: 64, offset: 123200)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "maxfile_nonhtml", scope: !480, file: !6, line: 577, baseType: !138, size: 64, offset: 123264)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "maxfile_html", scope: !480, file: !6, line: 578, baseType: !138, size: 64, offset: 123328)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !480, file: !6, line: 579, baseType: !502, size: 8960, offset: 123392)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsblk", file: !6, line: 484, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsblk", file: !6, line: 486, size: 8960, elements: !504)
!504 = !{!505, !506, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !524, !525, !526, !527, !528, !529, !530, !532, !597, !598, !599, !600, !605, !606, !610, !611, !612, !613, !614, !615}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "statuscode", scope: !503, file: !6, line: 487, baseType: !57, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "notmodified", scope: !503, file: !6, line: 488, baseType: !507, size: 16, offset: 32)
!507 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !503, file: !6, line: 489, baseType: !507, size: 16, offset: 48)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "is_chunk", scope: !503, file: !6, line: 490, baseType: !507, size: 16, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !503, file: !6, line: 491, baseType: !507, size: 16, offset: 80)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "empty", scope: !503, file: !6, line: 492, baseType: !507, size: 16, offset: 96)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !503, file: !6, line: 493, baseType: !507, size: 16, offset: 112)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_trailers", scope: !503, file: !6, line: 494, baseType: !507, size: 16, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_t", scope: !503, file: !6, line: 495, baseType: !57, size: 32, offset: 160)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_max", scope: !503, file: !6, line: 496, baseType: !57, size: 32, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !503, file: !6, line: 497, baseType: !86, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !503, file: !6, line: 498, baseType: !86, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !503, file: !6, line: 499, baseType: !78, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !503, file: !6, line: 500, baseType: !138, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !503, file: !6, line: 501, baseType: !521, size: 640, offset: 512)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 640, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 80)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "contenttype", scope: !503, file: !6, line: 502, baseType: !385, size: 512, offset: 1152)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !503, file: !6, line: 503, baseType: !385, size: 512, offset: 1664)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "contentencoding", scope: !503, file: !6, line: 504, baseType: !385, size: 512, offset: 2176)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !503, file: !6, line: 505, baseType: !86, size: 64, offset: 2688)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "totalsize", scope: !503, file: !6, line: 506, baseType: !138, size: 64, offset: 2752)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "is_file", scope: !503, file: !6, line: 507, baseType: !507, size: 16, offset: 2816)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "soc", scope: !503, file: !6, line: 508, baseType: !531, size: 32, offset: 2848)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "T_SOC", file: !139, line: 323, baseType: !57)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !503, file: !6, line: 509, baseType: !533, size: 224, offset: 2880)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCaddr", file: !534, line: 91, baseType: !535)
!534 = !DIFile(filename: "./src/htsnet.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "c991984e387bd7a1b6a2629888d889ed")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SOCaddr", file: !534, line: 93, size: 224, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "m_addr", scope: !535, file: !534, line: 103, baseType: !538, size: 224)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !534, line: 94, size: 224, elements: !539)
!539 = !{!540, !551, !573}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !538, file: !534, line: 96, baseType: !541, size: 128)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !542, line: 180, size: 128, elements: !543)
!542 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!543 = !{!544, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !541, file: !542, line: 182, baseType: !545, size: 16)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !546, line: 28, baseType: !110)
!546 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !541, file: !542, line: 183, baseType: !548, size: 112, offset: 16)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 112, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 14)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !538, file: !534, line: 98, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !553, line: 245, size: 128, elements: !554)
!553 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!554 = !{!555, !556, !561, !568}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !552, file: !553, line: 247, baseType: !545, size: 16)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !552, file: !553, line: 248, baseType: !557, size: 16, offset: 16)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !553, line: 123, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !559, line: 25, baseType: !560)
!559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !107, line: 40, baseType: !110)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !552, file: !553, line: 249, baseType: !562, size: 32, offset: 32)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !553, line: 31, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !562, file: !553, line: 33, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !553, line: 30, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !559, line: 26, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !107, line: 42, baseType: !7)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !552, file: !553, line: 252, baseType: !569, size: 64, offset: 64)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 64, elements: !571)
!570 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!571 = !{!572}
!572 = !DISubrange(count: 8)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "in6", scope: !538, file: !534, line: 101, baseType: !574, size: 224)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !553, line: 260, size: 224, elements: !575)
!575 = !{!576, !577, !578, !579, !596}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !574, file: !553, line: 262, baseType: !545, size: 16)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !574, file: !553, line: 263, baseType: !557, size: 16, offset: 16)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !574, file: !553, line: 264, baseType: !566, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !574, file: !553, line: 265, baseType: !580, size: 128, offset: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !553, line: 219, size: 128, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !580, file: !553, line: 226, baseType: !583, size: 128)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !553, line: 221, size: 128, elements: !584)
!584 = !{!585, !590, !592}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !583, file: !553, line: 223, baseType: !586, size: 128)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 128, elements: !589)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !559, line: 24, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !107, line: 38, baseType: !570)
!589 = !{!353}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !583, file: !553, line: 224, baseType: !591, size: 128)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 128, elements: !571)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !583, file: !553, line: 225, baseType: !593, size: 128)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 128, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 4)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !574, file: !553, line: 266, baseType: !566, size: 32, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "address_size", scope: !503, file: !6, line: 510, baseType: !57, size: 32, offset: 3104)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !503, file: !6, line: 511, baseType: !78, size: 64, offset: 3136)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !503, file: !6, line: 513, baseType: !507, size: 16, offset: 3200)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_con", scope: !503, file: !6, line: 515, baseType: !601, size: 64, offset: 3264)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !603, line: 184, baseType: !604)
!603 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !603, line: 184, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lastmodified", scope: !503, file: !6, line: 517, baseType: !385, size: 512, offset: 3328)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !503, file: !6, line: 518, baseType: !607, size: 2048, offset: 3840)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2048, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cdispo", scope: !503, file: !6, line: 519, baseType: !607, size: 2048, offset: 5888)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "crange", scope: !503, file: !6, line: 520, baseType: !138, size: 64, offset: 7936)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "crange_start", scope: !503, file: !6, line: 521, baseType: !138, size: 64, offset: 8000)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "crange_end", scope: !503, file: !6, line: 522, baseType: !138, size: 64, offset: 8064)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "debugid", scope: !503, file: !6, line: 523, baseType: !57, size: 32, offset: 8128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !503, file: !6, line: 525, baseType: !616, size: 768, offset: 8192)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsrequest", file: !6, line: 463, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsrequest", file: !6, line: 465, size: 768, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent_send", scope: !617, file: !6, line: 466, baseType: !507, size: 16)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "http11", scope: !617, file: !6, line: 467, baseType: !507, size: 16, offset: 16)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nokeepalive", scope: !617, file: !6, line: 468, baseType: !507, size: 16, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "range_used", scope: !617, file: !6, line: 469, baseType: !507, size: 16, offset: 48)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nocompression", scope: !617, file: !6, line: 470, baseType: !507, size: 16, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flush_garbage", scope: !617, file: !6, line: 471, baseType: !507, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !617, file: !6, line: 472, baseType: !288, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !617, file: !6, line: 473, baseType: !288, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !617, file: !6, line: 474, baseType: !288, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lang_iso", scope: !617, file: !6, line: 475, baseType: !288, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !617, file: !6, line: 476, baseType: !288, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !617, file: !6, line: 477, baseType: !288, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !617, file: !6, line: 478, baseType: !632, size: 256, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsrequest_proxy", file: !6, line: 452, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsrequest_proxy", file: !6, line: 454, size: 256, elements: !634)
!634 = !{!635, !636, !637, !638}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !633, file: !6, line: 455, baseType: !57, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !6, line: 456, baseType: !288, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !633, file: !6, line: 457, baseType: !57, size: 32, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bindhost", scope: !633, file: !6, line: 458, baseType: !288, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "is_update", scope: !480, file: !6, line: 580, baseType: !57, size: 32, offset: 132352)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "head_request", scope: !480, file: !6, line: 581, baseType: !57, size: 32, offset: 132384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "range_req_size", scope: !480, file: !6, line: 582, baseType: !138, size: 64, offset: 132416)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ka_time_start", scope: !480, file: !6, line: 583, baseType: !496, size: 64, offset: 132480)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "http11", scope: !480, file: !6, line: 585, baseType: !57, size: 32, offset: 132544)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "is_chunk", scope: !480, file: !6, line: 586, baseType: !57, size: 32, offset: 132576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_adr", scope: !480, file: !6, line: 587, baseType: !86, size: 64, offset: 132608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !480, file: !6, line: 588, baseType: !138, size: 64, offset: 132672)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_blocksize", scope: !480, file: !6, line: 589, baseType: !138, size: 64, offset: 132736)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !480, file: !6, line: 590, baseType: !138, size: 64, offset: 132800)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !480, file: !6, line: 594, baseType: !607, size: 2048, offset: 132864)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "stop_ftp", scope: !480, file: !6, line: 595, baseType: !57, size: 32, offset: 134912)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !480, file: !6, line: 596, baseType: !57, size: 32, offset: 134944)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "early_add", scope: !480, file: !6, line: 597, baseType: !57, size: 32, offset: 134976)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_stat_struct", file: !6, line: 412, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_stat_struct", file: !6, line: 414, size: 1344, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !667, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "HTS_TOTAL_RECV", scope: !655, file: !6, line: 415, baseType: !138, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "stat_bytes", scope: !655, file: !6, line: 416, baseType: !138, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "stat_timestart", scope: !655, file: !6, line: 418, baseType: !496, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "total_packed", scope: !655, file: !6, line: 420, baseType: !138, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "total_unpacked", scope: !655, file: !6, line: 421, baseType: !138, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "total_packedfiles", scope: !655, file: !6, line: 422, baseType: !57, size: 32, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "istat_timestart", scope: !655, file: !6, line: 424, baseType: !664, size: 128, offset: 384)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 128, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 2)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "istat_bytes", scope: !655, file: !6, line: 425, baseType: !668, size: 128, offset: 512)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !665)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "istat_reference01", scope: !655, file: !6, line: 426, baseType: !496, size: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "istat_idlasttimer", scope: !655, file: !6, line: 427, baseType: !57, size: 32, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "stat_files", scope: !655, file: !6, line: 429, baseType: !57, size: 32, offset: 736)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "stat_updated_files", scope: !655, file: !6, line: 430, baseType: !57, size: 32, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "stat_background", scope: !655, file: !6, line: 431, baseType: !57, size: 32, offset: 800)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "stat_nrequests", scope: !655, file: !6, line: 433, baseType: !57, size: 32, offset: 832)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "stat_sockid", scope: !655, file: !6, line: 434, baseType: !57, size: 32, offset: 864)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "stat_nsocket", scope: !655, file: !6, line: 435, baseType: !57, size: 32, offset: 896)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "stat_errors", scope: !655, file: !6, line: 436, baseType: !57, size: 32, offset: 928)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "stat_errors_front", scope: !655, file: !6, line: 437, baseType: !57, size: 32, offset: 960)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "stat_warnings", scope: !655, file: !6, line: 438, baseType: !57, size: 32, offset: 992)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "stat_infos", scope: !655, file: !6, line: 439, baseType: !57, size: 32, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nbk", scope: !655, file: !6, line: 440, baseType: !57, size: 32, offset: 1056)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nb", scope: !655, file: !6, line: 441, baseType: !138, size: 64, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !655, file: !6, line: 443, baseType: !138, size: 64, offset: 1152)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !655, file: !6, line: 445, baseType: !496, size: 64, offset: 1216)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "last_request", scope: !655, file: !6, line: 446, baseType: !496, size: 64, offset: 1280)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !471, file: !22, line: 204, baseType: !32, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "check_link", scope: !21, file: !22, line: 205, baseType: !688, size: 128, offset: 1536)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "check_link", file: !22, line: 205, size: 128, elements: !689)
!689 = !{!690, !695}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !688, file: !22, line: 205, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_check_link", file: !22, line: 112, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!57, !32, !58, !288, !288, !57}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !688, file: !22, line: 205, baseType: !32, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "check_mime", scope: !21, file: !22, line: 206, baseType: !697, size: 128, offset: 1664)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "check_mime", file: !22, line: 206, size: 128, elements: !698)
!698 = !{!699, !704}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !697, file: !22, line: 206, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_check_mime", file: !22, line: 115, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!57, !32, !58, !288, !288, !288, !57}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !697, file: !22, line: 206, baseType: !32, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !21, file: !22, line: 207, baseType: !706, size: 128, offset: 1792)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pause", file: !22, line: 207, size: 128, elements: !707)
!707 = !{!708, !713}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !706, file: !22, line: 207, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_pause", file: !22, line: 119, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !32, !58, !288}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !706, file: !22, line: 207, baseType: !32, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "filesave", scope: !21, file: !22, line: 208, baseType: !715, size: 128, offset: 1920)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filesave", file: !22, line: 208, size: 128, elements: !716)
!716 = !{!717, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !715, file: !22, line: 208, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_filesave", file: !22, line: 121, baseType: !710)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !715, file: !22, line: 208, baseType: !32, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "filesave2", scope: !21, file: !22, line: 209, baseType: !721, size: 128, offset: 2048)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filesave2", file: !22, line: 209, size: 128, elements: !722)
!722 = !{!723, !728}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !721, file: !22, line: 209, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_filesave2", file: !22, line: 123, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !32, !58, !288, !288, !288, !57, !57, !57}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !721, file: !22, line: 209, baseType: !32, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "linkdetected", scope: !21, file: !22, line: 210, baseType: !730, size: 128, offset: 2176)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linkdetected", file: !22, line: 210, size: 128, elements: !731)
!731 = !{!732, !737}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !730, file: !22, line: 210, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_linkdetected", file: !22, line: 128, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!57, !32, !58, !86}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !730, file: !22, line: 210, baseType: !32, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "linkdetected2", scope: !21, file: !22, line: 211, baseType: !739, size: 128, offset: 2304)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linkdetected2", file: !22, line: 211, size: 128, elements: !740)
!740 = !{!741, !746}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !739, file: !22, line: 211, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_linkdetected2", file: !22, line: 130, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!57, !32, !58, !86, !288}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !739, file: !22, line: 211, baseType: !32, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "xfrstatus", scope: !21, file: !22, line: 212, baseType: !748, size: 128, offset: 2432)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrstatus", file: !22, line: 212, size: 128, elements: !749)
!749 = !{!750, !755}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !748, file: !22, line: 212, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_xfrstatus", file: !22, line: 133, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!57, !32, !58, !478}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !748, file: !22, line: 212, baseType: !32, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "savename", scope: !21, file: !22, line: 213, baseType: !757, size: 128, offset: 2560)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savename", file: !22, line: 213, size: 128, elements: !758)
!758 = !{!759, !764}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !757, file: !22, line: 213, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_savename", file: !22, line: 135, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!57, !32, !58, !288, !288, !288, !288, !86}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !757, file: !22, line: 213, baseType: !32, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sendhead", scope: !21, file: !22, line: 214, baseType: !766, size: 128, offset: 2688)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sendhead", file: !22, line: 214, size: 128, elements: !767)
!767 = !{!768, !774}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !766, file: !22, line: 214, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_sendhead", file: !22, line: 142, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!57, !32, !58, !86, !288, !288, !288, !288, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !766, file: !22, line: 214, baseType: !32, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "receivehead", scope: !21, file: !22, line: 215, baseType: !776, size: 128, offset: 2816)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "receivehead", file: !22, line: 215, size: 128, elements: !777)
!777 = !{!778, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !776, file: !22, line: 215, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_receivehead", file: !22, line: 148, baseType: !770)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !776, file: !22, line: 215, baseType: !32, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !21, file: !22, line: 216, baseType: !782, size: 128, offset: 2944)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "detect", file: !22, line: 216, size: 128, elements: !783)
!783 = !{!784, !822}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !782, file: !22, line: 216, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_detect", file: !22, line: 156, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!57, !32, !58, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsmoduleStruct", file: !60, line: 66, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsmoduleStruct", file: !60, line: 71, size: 1216, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801, !806, !807, !808, !809, !810, !814, !818, !819, !820, !821}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !791, file: !60, line: 73, baseType: !288, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !791, file: !60, line: 74, baseType: !57, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mime", scope: !791, file: !60, line: 75, baseType: !288, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "url_host", scope: !791, file: !60, line: 76, baseType: !288, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "url_file", scope: !791, file: !60, line: 77, baseType: !288, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wrapper_name", scope: !791, file: !60, line: 80, baseType: !288, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "err_msg", scope: !791, file: !60, line: 81, baseType: !86, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "relativeToHtmlLink", scope: !791, file: !60, line: 84, baseType: !57, size: 32, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "addLink", scope: !791, file: !60, line: 89, baseType: !802, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_htsAddLink", file: !60, line: 68, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!57, !789, !86}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "localLink", scope: !791, file: !60, line: 94, baseType: !86, size: 64, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "localLinkSize", scope: !791, file: !60, line: 97, baseType: !57, size: 32, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "userdef", scope: !791, file: !60, line: 100, baseType: !18, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !791, file: !60, line: 104, baseType: !58, size: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sback", scope: !791, file: !60, line: 107, baseType: !811, size: 64, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "struct_back", file: !60, line: 48, baseType: !813)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct_back", file: !60, line: 48, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !791, file: !60, line: 108, baseType: !815, size: 64, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_back", file: !60, line: 52, baseType: !817)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "cache_back", file: !60, line: 52, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hashptr", scope: !791, file: !60, line: 109, baseType: !248, size: 64, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "numero_passe", scope: !791, file: !60, line: 110, baseType: !57, size: 32, offset: 1024)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_", scope: !791, file: !60, line: 112, baseType: !246, size: 64, offset: 1088)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "page_charset_", scope: !791, file: !60, line: 113, baseType: !288, size: 64, offset: 1152)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !782, file: !22, line: 216, baseType: !32, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !21, file: !22, line: 217, baseType: !824, size: 128, offset: 3072)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parse", file: !22, line: 217, size: 128, elements: !825)
!825 = !{!826, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !824, file: !22, line: 217, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_parse", file: !22, line: 158, baseType: !786)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !824, file: !22, line: 217, baseType: !32, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "extsavename", scope: !21, file: !22, line: 219, baseType: !830, size: 128, offset: 3200)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extsavename", file: !22, line: 219, size: 128, elements: !831)
!831 = !{!832, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !830, file: !22, line: 219, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_extsavename", file: !22, line: 141, baseType: !760)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !830, file: !22, line: 219, baseType: !32, size: 64, offset: 64)
!835 = !{!0, !836, !839, !844, !849, !855, !860, !862, !867, !869}
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !838, isLocal: true, isDefinition: true)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 16, elements: !665)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 96, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 12)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 72, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 9)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "initOk", scope: !851, file: !3, line: 213, type: !57, isLocal: true, isDefinition: true)
!851 = distinct !DISubprogram(name: "htspe_init", scope: !3, file: !3, line: 212, type: !852, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{null}
!854 = !{}
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !857, isLocal: true, isDefinition: true)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 56, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 7)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !114, isLocal: true, isDefinition: true)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !864, isLocal: true, isDefinition: true)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 48, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 6)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(name: "WHAT_is_available", scope: !2, file: !3, line: 66, type: !385, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !871, isLocal: true, isDefinition: true)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 368, elements: !872)
!872 = !{!873}
!873 = !DISubrange(count: 46)
!874 = !{i32 7, !"Dwarf Version", i32 5}
!875 = !{i32 2, !"Debug Info Version", i32 3}
!876 = !{i32 1, !"wchar_size", i32 4}
!877 = !{i32 8, !"PIC Level", i32 2}
!878 = !{i32 7, !"PIE Level", i32 2}
!879 = !{i32 7, !"uwtable", i32 2}
!880 = !{i32 7, !"frame-pointer", i32 2}
!881 = !{!"clang version 16.0.0"}
!882 = distinct !DISubprogram(name: "hts_get_version_info", scope: !3, file: !3, line: 70, type: !883, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!883 = !DISubroutineType(types: !884)
!884 = !{!288, !58}
!885 = !DILocalVariable(name: "opt", arg: 1, scope: !882, file: !3, line: 70, type: !58)
!886 = !DILocation(line: 70, column: 56, scope: !882)
!887 = !DILocalVariable(name: "size", scope: !882, file: !3, line: 71, type: !64)
!888 = !DILocation(line: 71, column: 10, scope: !882)
!889 = !DILocalVariable(name: "i", scope: !882, file: !3, line: 72, type: !57)
!890 = !DILocation(line: 72, column: 7, scope: !882)
!891 = !DILocation(line: 74, column: 10, scope: !882)
!892 = !DILocation(line: 74, column: 15, scope: !882)
!893 = !DILocation(line: 74, column: 21, scope: !882)
!894 = !DILocation(line: 74, column: 3, scope: !882)
!895 = !DILocation(line: 75, column: 17, scope: !882)
!896 = !DILocation(line: 75, column: 22, scope: !882)
!897 = !DILocation(line: 75, column: 28, scope: !882)
!898 = !DILocation(line: 75, column: 10, scope: !882)
!899 = !DILocation(line: 75, column: 8, scope: !882)
!900 = !DILocation(line: 76, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !882, file: !3, line: 76, column: 3)
!902 = !DILocation(line: 76, column: 7, scope: !901)
!903 = !DILocation(line: 76, column: 14, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 76, column: 3)
!905 = !DILocation(line: 76, column: 18, scope: !904)
!906 = !DILocation(line: 76, column: 23, scope: !904)
!907 = !DILocation(line: 76, column: 34, scope: !904)
!908 = !DILocation(line: 76, column: 16, scope: !904)
!909 = !DILocation(line: 76, column: 3, scope: !901)
!910 = !DILocalVariable(name: "name", scope: !911, file: !3, line: 77, type: !288)
!911 = distinct !DILexicalBlock(scope: !904, file: !3, line: 76, column: 46)
!912 = !DILocation(line: 77, column: 17, scope: !911)
!913 = !DILocation(line: 77, column: 24, scope: !911)
!914 = !DILocation(line: 77, column: 29, scope: !911)
!915 = !DILocation(line: 77, column: 40, scope: !911)
!916 = !DILocation(line: 77, column: 48, scope: !911)
!917 = !DILocation(line: 77, column: 51, scope: !911)
!918 = !DILocation(line: 79, column: 9, scope: !919)
!919 = distinct !DILexicalBlock(scope: !911, file: !3, line: 79, column: 9)
!920 = !DILocation(line: 79, column: 14, scope: !919)
!921 = !DILocation(line: 79, column: 9, scope: !911)
!922 = !DILocalVariable(name: "nsize", scope: !923, file: !3, line: 80, type: !64)
!923 = distinct !DILexicalBlock(scope: !919, file: !3, line: 79, column: 23)
!924 = !DILocation(line: 80, column: 14, scope: !923)
!925 = !DILocation(line: 80, column: 29, scope: !923)
!926 = !DILocation(line: 80, column: 22, scope: !923)
!927 = !DILocation(line: 80, column: 35, scope: !923)
!928 = !DILocation(line: 82, column: 15, scope: !923)
!929 = !DILocation(line: 82, column: 12, scope: !923)
!930 = !DILocation(line: 83, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !923, file: !3, line: 83, column: 11)
!932 = !DILocation(line: 83, column: 16, scope: !931)
!933 = !DILocation(line: 83, column: 20, scope: !931)
!934 = !DILocation(line: 83, column: 11, scope: !923)
!935 = !DILocation(line: 84, column: 9, scope: !931)
!936 = !DILocation(line: 85, column: 14, scope: !923)
!937 = !DILocation(line: 85, column: 19, scope: !923)
!938 = !DILocation(line: 85, column: 25, scope: !923)
!939 = !DILocation(line: 85, column: 7, scope: !923)
!940 = !DILocation(line: 86, column: 14, scope: !923)
!941 = !DILocation(line: 86, column: 19, scope: !923)
!942 = !DILocation(line: 86, column: 25, scope: !923)
!943 = !DILocation(line: 86, column: 33, scope: !923)
!944 = !DILocation(line: 86, column: 7, scope: !923)
!945 = !DILocation(line: 87, column: 5, scope: !923)
!946 = !DILocation(line: 88, column: 3, scope: !911)
!947 = !DILocation(line: 76, column: 42, scope: !904)
!948 = !DILocation(line: 76, column: 3, scope: !904)
!949 = distinct !{!949, !909, !950, !951}
!950 = !DILocation(line: 88, column: 3, scope: !901)
!951 = !{!"llvm.loop.mustprogress"}
!952 = !DILocation(line: 89, column: 10, scope: !882)
!953 = !DILocation(line: 89, column: 15, scope: !882)
!954 = !DILocation(line: 89, column: 21, scope: !882)
!955 = !DILocation(line: 89, column: 3, scope: !882)
!956 = distinct !DISubprogram(name: "hts_parse_externals", scope: !3, file: !3, line: 94, type: !957, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!957 = !DISubroutineType(types: !958)
!958 = !{!57, !789}
!959 = !DILocalVariable(name: "str", arg: 1, scope: !956, file: !3, line: 94, type: !789)
!960 = !DILocation(line: 94, column: 43, scope: !956)
!961 = !DILocation(line: 95, column: 3, scope: !956)
!962 = !DILocation(line: 95, column: 8, scope: !956)
!963 = !DILocation(line: 95, column: 21, scope: !956)
!964 = !DILocation(line: 98, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !956, file: !3, line: 98, column: 7)
!966 = !DILocation(line: 98, column: 7, scope: !956)
!967 = !DILocation(line: 99, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 99, column: 9)
!969 = distinct !DILexicalBlock(scope: !965, file: !3, line: 98, column: 45)
!970 = !DILocation(line: 99, column: 14, scope: !968)
!971 = !DILocation(line: 99, column: 27, scope: !968)
!972 = !DILocation(line: 99, column: 9, scope: !969)
!973 = !DILocation(line: 100, column: 7, scope: !968)
!974 = !DILocation(line: 100, column: 12, scope: !968)
!975 = !DILocation(line: 100, column: 25, scope: !968)
!976 = !DILocation(line: 103, column: 10, scope: !977)
!977 = distinct !DILexicalBlock(scope: !969, file: !3, line: 102, column: 9)
!978 = !DILocation(line: 103, column: 15, scope: !977)
!979 = !DILocation(line: 103, column: 29, scope: !977)
!980 = !DILocation(line: 102, column: 9, scope: !977)
!981 = !DILocation(line: 102, column: 9, scope: !969)
!982 = !DILocation(line: 104, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !977, file: !3, line: 103, column: 67)
!984 = !DILocation(line: 106, column: 17, scope: !985)
!985 = distinct !DILexicalBlock(scope: !977, file: !3, line: 105, column: 12)
!986 = !DILocation(line: 106, column: 22, scope: !985)
!987 = !DILocation(line: 106, column: 27, scope: !985)
!988 = !DILocation(line: 106, column: 7, scope: !985)
!989 = !DILocation(line: 107, column: 14, scope: !985)
!990 = !DILocation(line: 107, column: 7, scope: !985)
!991 = !DILocation(line: 112, column: 3, scope: !956)
!992 = !DILocation(line: 113, column: 1, scope: !956)
!993 = distinct !DISubprogram(name: "htspe_log", scope: !3, file: !3, line: 254, type: !994, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !854)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !789, !288}
!996 = !DILocalVariable(name: "str", arg: 1, scope: !993, file: !3, line: 254, type: !789)
!997 = !DILocation(line: 254, column: 41, scope: !993)
!998 = !DILocalVariable(name: "msg", arg: 2, scope: !993, file: !3, line: 254, type: !288)
!999 = !DILocation(line: 254, column: 58, scope: !993)
!1000 = !DILocalVariable(name: "savename", scope: !993, file: !3, line: 255, type: !288)
!1001 = !DILocation(line: 255, column: 15, scope: !993)
!1002 = !DILocation(line: 255, column: 26, scope: !993)
!1003 = !DILocation(line: 255, column: 31, scope: !993)
!1004 = !DILocalVariable(name: "opt", scope: !993, file: !3, line: 256, type: !58)
!1005 = !DILocation(line: 256, column: 13, scope: !993)
!1006 = !DILocation(line: 256, column: 32, scope: !993)
!1007 = !DILocation(line: 256, column: 37, scope: !993)
!1008 = !DILocation(line: 258, column: 17, scope: !993)
!1009 = !DILocation(line: 259, column: 17, scope: !993)
!1010 = !DILocation(line: 259, column: 27, scope: !993)
!1011 = !DILocation(line: 258, column: 3, scope: !993)
!1012 = !DILocation(line: 260, column: 1, scope: !993)
!1013 = distinct !DISubprogram(name: "clearCallbacks", scope: !3, file: !3, line: 128, type: !1014, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !344}
!1016 = !DILocalVariable(name: "chain_", arg: 1, scope: !1013, file: !3, line: 128, type: !344)
!1017 = !DILocation(line: 128, column: 36, scope: !1013)
!1018 = !DILocalVariable(name: "chain", scope: !1013, file: !3, line: 129, type: !344)
!1019 = !DILocation(line: 129, column: 17, scope: !1013)
!1020 = !DILocation(line: 131, column: 11, scope: !1013)
!1021 = !DILocation(line: 131, column: 9, scope: !1013)
!1022 = !DILocation(line: 132, column: 3, scope: !1013)
!1023 = !DILocation(line: 132, column: 9, scope: !1013)
!1024 = !DILocation(line: 132, column: 15, scope: !1013)
!1025 = !DILocation(line: 133, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 133, column: 9)
!1027 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 132, column: 24)
!1028 = !DILocation(line: 133, column: 16, scope: !1026)
!1029 = !DILocation(line: 133, column: 24, scope: !1026)
!1030 = !DILocation(line: 133, column: 9, scope: !1027)
!1031 = !DILocation(line: 134, column: 14, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 133, column: 33)
!1033 = !DILocation(line: 134, column: 21, scope: !1032)
!1034 = !DILocation(line: 135, column: 7, scope: !1032)
!1035 = !DILocation(line: 135, column: 14, scope: !1032)
!1036 = !DILocation(line: 135, column: 22, scope: !1032)
!1037 = !DILocation(line: 136, column: 5, scope: !1032)
!1038 = !DILocation(line: 137, column: 13, scope: !1027)
!1039 = !DILocation(line: 137, column: 20, scope: !1027)
!1040 = !DILocation(line: 137, column: 11, scope: !1027)
!1041 = distinct !{!1041, !1022, !1042, !951}
!1042 = !DILocation(line: 138, column: 3, scope: !1013)
!1043 = !DILocation(line: 139, column: 11, scope: !1013)
!1044 = !DILocation(line: 139, column: 9, scope: !1013)
!1045 = !DILocation(line: 140, column: 3, scope: !1013)
!1046 = !DILocation(line: 140, column: 9, scope: !1013)
!1047 = !DILocation(line: 140, column: 15, scope: !1013)
!1048 = !DILocation(line: 141, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 141, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 140, column: 24)
!1051 = !DILocation(line: 141, column: 16, scope: !1049)
!1052 = !DILocation(line: 141, column: 29, scope: !1049)
!1053 = !DILocation(line: 141, column: 9, scope: !1050)
!1054 = !DILocation(line: 145, column: 15, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 141, column: 38)
!1056 = !DILocation(line: 145, column: 22, scope: !1055)
!1057 = !DILocation(line: 145, column: 7, scope: !1055)
!1058 = !DILocation(line: 147, column: 5, scope: !1055)
!1059 = !DILocation(line: 148, column: 13, scope: !1050)
!1060 = !DILocation(line: 148, column: 20, scope: !1050)
!1061 = !DILocation(line: 148, column: 11, scope: !1050)
!1062 = distinct !{!1062, !1045, !1063, !951}
!1063 = !DILocation(line: 149, column: 3, scope: !1013)
!1064 = !DILocation(line: 150, column: 11, scope: !1013)
!1065 = !DILocation(line: 150, column: 19, scope: !1013)
!1066 = !DILocation(line: 150, column: 9, scope: !1013)
!1067 = !DILocation(line: 151, column: 3, scope: !1013)
!1068 = !DILocation(line: 151, column: 9, scope: !1013)
!1069 = !DILocation(line: 151, column: 15, scope: !1013)
!1070 = !DILocalVariable(name: "nextchain", scope: !1071, file: !3, line: 152, type: !344)
!1071 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 151, column: 24)
!1072 = !DILocation(line: 152, column: 19, scope: !1071)
!1073 = !DILocation(line: 152, column: 31, scope: !1071)
!1074 = !DILocation(line: 152, column: 38, scope: !1071)
!1075 = !DILocation(line: 154, column: 5, scope: !1071)
!1076 = !DILocation(line: 154, column: 5, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 154, column: 5)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 154, column: 5)
!1079 = !DILocation(line: 154, column: 5, scope: !1078)
!1080 = !DILocation(line: 154, column: 5, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 154, column: 5)
!1082 = !DILocation(line: 155, column: 13, scope: !1071)
!1083 = !DILocation(line: 155, column: 11, scope: !1071)
!1084 = distinct !{!1084, !1067, !1085, !951}
!1085 = !DILocation(line: 156, column: 3, scope: !1013)
!1086 = !DILocation(line: 157, column: 3, scope: !1013)
!1087 = !DILocation(line: 157, column: 11, scope: !1013)
!1088 = !DILocation(line: 157, column: 16, scope: !1013)
!1089 = !DILocation(line: 158, column: 1, scope: !1013)
!1090 = distinct !DISubprogram(name: "openFunctionLib", scope: !3, file: !3, line: 160, type: !1091, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!18, !288}
!1093 = !DILocalVariable(name: "file_", arg: 1, scope: !1090, file: !3, line: 160, type: !288)
!1094 = !DILocation(line: 160, column: 35, scope: !1090)
!1095 = !DILocalVariable(name: "handle", scope: !1090, file: !3, line: 161, type: !18)
!1096 = !DILocation(line: 161, column: 9, scope: !1090)
!1097 = !DILocalVariable(name: "file", scope: !1090, file: !3, line: 162, type: !86)
!1098 = !DILocation(line: 162, column: 9, scope: !1090)
!1099 = !DILocation(line: 162, column: 16, scope: !1090)
!1100 = !DILocation(line: 164, column: 10, scope: !1090)
!1101 = !DILocation(line: 164, column: 16, scope: !1090)
!1102 = !DILocation(line: 164, column: 3, scope: !1090)
!1103 = !DILocation(line: 172, column: 19, scope: !1090)
!1104 = !DILocation(line: 172, column: 12, scope: !1090)
!1105 = !DILocation(line: 172, column: 10, scope: !1090)
!1106 = !DILocation(line: 173, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 173, column: 7)
!1108 = !DILocation(line: 173, column: 14, scope: !1107)
!1109 = !DILocation(line: 173, column: 7, scope: !1090)
!1110 = !DILocation(line: 174, column: 13, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 173, column: 23)
!1112 = !DILocation(line: 174, column: 31, scope: !1111)
!1113 = !DILocation(line: 174, column: 5, scope: !1111)
!1114 = !DILocation(line: 175, column: 21, scope: !1111)
!1115 = !DILocation(line: 175, column: 14, scope: !1111)
!1116 = !DILocation(line: 175, column: 12, scope: !1111)
!1117 = !DILocation(line: 176, column: 3, scope: !1111)
!1118 = !DILocation(line: 178, column: 3, scope: !1090)
!1119 = !DILocation(line: 178, column: 3, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 178, column: 3)
!1121 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 178, column: 3)
!1122 = !DILocation(line: 178, column: 3, scope: !1121)
!1123 = !DILocation(line: 178, column: 3, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 178, column: 3)
!1125 = !DILocation(line: 179, column: 10, scope: !1090)
!1126 = !DILocation(line: 179, column: 3, scope: !1090)
!1127 = distinct !DISubprogram(name: "closeFunctionLib", scope: !3, file: !3, line: 182, type: !1128, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !18}
!1130 = !DILocalVariable(name: "handle", arg: 1, scope: !1127, file: !3, line: 182, type: !18)
!1131 = !DILocation(line: 182, column: 29, scope: !1127)
!1132 = !DILocation(line: 186, column: 11, scope: !1127)
!1133 = !DILocation(line: 186, column: 3, scope: !1127)
!1134 = !DILocation(line: 188, column: 1, scope: !1127)
!1135 = distinct !DISubprogram(name: "getFunctionPtr", scope: !3, file: !3, line: 190, type: !1136, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!18, !18, !288}
!1138 = !DILocalVariable(name: "handle", arg: 1, scope: !1135, file: !3, line: 190, type: !18)
!1139 = !DILocation(line: 190, column: 28, scope: !1135)
!1140 = !DILocalVariable(name: "fncname_", arg: 2, scope: !1135, file: !3, line: 190, type: !288)
!1141 = !DILocation(line: 190, column: 48, scope: !1135)
!1142 = !DILocation(line: 191, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 191, column: 7)
!1144 = !DILocation(line: 191, column: 7, scope: !1135)
!1145 = !DILocalVariable(name: "userfunction", scope: !1146, file: !3, line: 192, type: !18)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 191, column: 15)
!1147 = !DILocation(line: 192, column: 11, scope: !1146)
!1148 = !DILocalVariable(name: "fncname", scope: !1146, file: !3, line: 193, type: !86)
!1149 = !DILocation(line: 193, column: 11, scope: !1146)
!1150 = !DILocation(line: 193, column: 21, scope: !1146)
!1151 = !DILocalVariable(name: "comma", scope: !1146, file: !3, line: 196, type: !86)
!1152 = !DILocation(line: 196, column: 11, scope: !1146)
!1153 = !DILocation(line: 198, column: 25, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 198, column: 9)
!1155 = !DILocation(line: 198, column: 18, scope: !1154)
!1156 = !DILocation(line: 198, column: 16, scope: !1154)
!1157 = !DILocation(line: 198, column: 40, scope: !1154)
!1158 = !DILocation(line: 198, column: 9, scope: !1146)
!1159 = !DILocation(line: 199, column: 13, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 198, column: 49)
!1161 = !DILocation(line: 199, column: 16, scope: !1160)
!1162 = !DILocation(line: 200, column: 5, scope: !1160)
!1163 = !DILocation(line: 203, column: 29, scope: !1146)
!1164 = !DILocation(line: 203, column: 18, scope: !1146)
!1165 = !DILocation(line: 205, column: 5, scope: !1146)
!1166 = !DILocation(line: 205, column: 5, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 205, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 205, column: 5)
!1169 = !DILocation(line: 205, column: 5, scope: !1168)
!1170 = !DILocation(line: 205, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 205, column: 5)
!1172 = !DILocation(line: 207, column: 12, scope: !1146)
!1173 = !DILocation(line: 207, column: 5, scope: !1146)
!1174 = !DILocation(line: 209, column: 3, scope: !1135)
!1175 = !DILocation(line: 210, column: 1, scope: !1135)
!1176 = !DILocation(line: 215, column: 8, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !851, file: !3, line: 215, column: 7)
!1178 = !DILocation(line: 215, column: 7, scope: !851)
!1179 = !DILocation(line: 216, column: 12, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 215, column: 16)
!1181 = !DILocation(line: 240, column: 42, scope: !1180)
!1182 = !DILocation(line: 240, column: 5, scope: !1180)
!1183 = !DILocation(line: 248, column: 3, scope: !1180)
!1184 = !DILocation(line: 249, column: 1, scope: !851)
!1185 = distinct !DISubprogram(name: "htspe_uninit", scope: !3, file: !3, line: 251, type: !852, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!1186 = !DILocation(line: 252, column: 1, scope: !1185)
!1187 = distinct !DISubprogram(name: "hts_is_available", scope: !3, file: !3, line: 262, type: !1188, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !854)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!288}
!1190 = !DILocation(line: 263, column: 3, scope: !1187)
