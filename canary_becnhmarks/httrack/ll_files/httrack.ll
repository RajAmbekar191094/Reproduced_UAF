; ModuleID = 'src/httrack.c'
source_filename = "src/httrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_InpInfo = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32 }
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
%struct.t_hts_callbackarg = type { ptr, %struct.prev }
%struct.prev = type { ptr, ptr }
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
%struct.strc_int2bytes2 = type { [8192 x i8], [256 x i8], [32 x i8], [2 x ptr] }
%struct.t_StatsBuffer = type { [1024 x i8], [1024 x i8], [256 x i8], [2048 x i8], [2048 x i8], [2048 x i8], i64, i64, i32, i32, i32 }
%struct.hts_stat_struct = type { i64, i64, i64, i64, i64, i32, [2 x i64], [2 x i64], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.lien_back = type { [2048 x i8], [2048 x i8], [2048 x i8], [2048 x i8], [2048 x i8], [2048 x i8], ptr, [2048 x i8], [1024 x i8], i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.htsblk, i32, i32, i64, i64, i32, i32, ptr, i64, i64, i64, [256 x i8], i32, i32, i32 }
%struct.htsblk = type { i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, ptr, ptr, ptr, i64, [80 x i8], [64 x i8], [64 x i8], [64 x i8], ptr, i64, i16, i32, %struct.SOCaddr, i32, ptr, i16, ptr, [64 x i8], [256 x i8], [256 x i8], i64, i64, i64, i32, %struct.htsrequest }
%struct.SOCaddr = type { %union.anon }
%union.anon = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.htsrequest = type { i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.htsrequest_proxy }
%struct.htsrequest_proxy = type { i32, ptr, i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [69 x i8] c"incompatible current httrack library version %s, expected version %s\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"3.48.21\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [81 x i8] c"incompatible httrack library version, please update both httrack and its library\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [14 x i8] c"src/httrack.c\00", align 1, !dbg !17
@global_opt = internal global ptr null, align 8, !dbg !22
@.str.4 = private unnamed_addr constant [39 x i8] c"opt->size_httrackp == sizeof(httrackp)\00", align 1, !dbg !77
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1, !dbg !82
@.str.5 = private unnamed_addr constant [6 x i8] c"* %s\0A\00", align 1, !dbg !88
@.str.6 = private unnamed_addr constant [20 x i8] c"%s failed at %s:%d\0A\00", align 1, !dbg !93
@use_show = internal global i32 0, align 4, !dbg !99
@.str.7 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1, !dbg !101
@.str.8 = private unnamed_addr constant [4 x i8] c"\1B[m\00", align 1, !dbg !106
@.str.9 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1, !dbg !111
@.str.10 = private unnamed_addr constant [7 x i8] c"\1B[0;1f\00", align 1, !dbg !116
@htsshow_loop.prev_mytime = internal global i64 0, align 8, !dbg !118
@htsshow_loop.SInfo = internal global %struct.t_InpInfo zeroinitializer, align 8, !dbg !942
@.str.11 = private unnamed_addr constant [323 x i8] c"\1B[1;1f\1B[K\1B[22mBytes saved:\1B[1m \09%s\09\1B[K\1B[1;40f\1B[22mLinks scanned:\1B[1m \09%d/%d (+%d)\1B[K\0A\1B[K\1B[2;1f\1B[22mTime: \09\1B[1m%s\09\1B[K\1B[2;40f\1B[22mFiles written: \09\1B[1m%d\1B[K\0A\1B[K\1B[3;1f\1B[22mTransfer rate: \09\1B[1m%s (%s)\09\1B[K\1B[3;40f\1B[22mFiles updated: \09\1B[1m%d\1B[K\0A\1B[K\1B[4;1f\1B[22mActive connections: \09\1B[1m%d\09\1B[K\1B[4;40f\1B[22mErrors:\1B[1m \09\1B[1m%d\1B[K\0A\1B[22m\00", align 1, !dbg !965
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !970
@.str.13 = private unnamed_addr constant [54 x i8] c"overflow while copying '\22\22' to 'StatsBuffer[i].state'\00", align 1, !dbg !972
@.str.14 = private unnamed_addr constant [53 x i8] c"overflow while copying '\22\22' to 'StatsBuffer[i].name'\00", align 1, !dbg !977
@.str.15 = private unnamed_addr constant [53 x i8] c"overflow while copying '\22\22' to 'StatsBuffer[i].file'\00", align 1, !dbg !982
@.str.16 = private unnamed_addr constant [56 x i8] c"overflow while copying '\22\22' to 'StatsBuffer[i].url_sav'\00", align 1, !dbg !984
@.str.17 = private unnamed_addr constant [8 x i8] c"receive\00", align 1, !dbg !989
@.str.18 = private unnamed_addr constant [65 x i8] c"overflow while copying '\22receive\22' to 'StatsBuffer[index].state'\00", align 1, !dbg !991
@.str.19 = private unnamed_addr constant [8 x i8] c"request\00", align 1, !dbg !996
@.str.20 = private unnamed_addr constant [65 x i8] c"overflow while copying '\22request\22' to 'StatsBuffer[index].state'\00", align 1, !dbg !998
@.str.21 = private unnamed_addr constant [8 x i8] c"connect\00", align 1, !dbg !1000
@.str.22 = private unnamed_addr constant [65 x i8] c"overflow while copying '\22connect\22' to 'StatsBuffer[index].state'\00", align 1, !dbg !1002
@.str.23 = private unnamed_addr constant [7 x i8] c"search\00", align 1, !dbg !1004
@.str.24 = private unnamed_addr constant [64 x i8] c"overflow while copying '\22search\22' to 'StatsBuffer[index].state'\00", align 1, !dbg !1006
@.str.25 = private unnamed_addr constant [8 x i8] c"ftp: %s\00", align 1, !dbg !1008
@.str.26 = private unnamed_addr constant [6 x i8] c"ready\00", align 1, !dbg !1010
@.str.27 = private unnamed_addr constant [63 x i8] c"overflow while copying '\22ready\22' to 'StatsBuffer[index].state'\00", align 1, !dbg !1012
@.str.28 = private unnamed_addr constant [61 x i8] c"overflow while copying 'tempo' to 'StatsBuffer[index].state'\00", align 1, !dbg !1017
@.str.29 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !1022
@.str.30 = private unnamed_addr constant [63 x i8] c"overflow while copying '\22error\22' to 'StatsBuffer[index].state'\00", align 1, !dbg !1024
@.str.31 = private unnamed_addr constant [73 x i8] c"overflow while copying 'back[i].url_sav' to 'StatsBuffer[index].url_sav'\00", align 1, !dbg !1026
@.str.32 = private unnamed_addr constant [8 x i8] c"file://\00", align 1, !dbg !1031
@.str.33 = private unnamed_addr constant [50 x i8] c"overflow while appending 'back[i].url_adr' to 's'\00", align 1, !dbg !1033
@.str.34 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1, !dbg !1038
@.str.35 = private unnamed_addr constant [46 x i8] c"overflow while appending '\22localhost\22' to 's'\00", align 1, !dbg !1043
@.str.36 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !1048
@.str.37 = private unnamed_addr constant [38 x i8] c"overflow while appending '\22/\22' to 's'\00", align 1, !dbg !1051
@.str.38 = private unnamed_addr constant [50 x i8] c"overflow while appending 'back[i].url_fil' to 's'\00", align 1, !dbg !1056
@.str.39 = private unnamed_addr constant [58 x i8] c"overflow while appending 'a' to 'StatsBuffer[index].file'\00", align 1, !dbg !1058
@.str.40 = private unnamed_addr constant [56 x i8] c"overflow while copying 's' to 'StatsBuffer[index].name'\00", align 1, !dbg !1063
@.str.41 = private unnamed_addr constant [58 x i8] c"overflow while appending 's' to 'StatsBuffer[index].name'\00", align 1, !dbg !1065
@.str.42 = private unnamed_addr constant [4 x i8] c"...\00", align 1, !dbg !1067
@.str.43 = private unnamed_addr constant [62 x i8] c"overflow while appending '\22...\22' to 'StatsBuffer[index].name'\00", align 1, !dbg !1069
@.str.44 = private unnamed_addr constant [91 x i8] c"overflow while appending 's + l - MAX_LEN_INPROGRESS / 2 + 2' to 'StatsBuffer[index].name'\00", align 1, !dbg !1074
@.str.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1079
@.str.46 = private unnamed_addr constant [4 x i8] c"\1B[K\00", align 1, !dbg !1081
@.str.47 = private unnamed_addr constant [14 x i8] c"Current job: \00", align 1, !dbg !1083
@.str.48 = private unnamed_addr constant [16 x i8] c"receiving files\00", align 1, !dbg !1085
@.str.49 = private unnamed_addr constant [25 x i8] c"parsing HTML file (%d%%)\00", align 1, !dbg !1088
@.str.50 = private unnamed_addr constant [40 x i8] c"parsing HTML file: testing links (%d%%)\00", align 1, !dbg !1093
@.str.51 = private unnamed_addr constant [14 x i8] c"purging files\00", align 1, !dbg !1095
@.str.52 = private unnamed_addr constant [14 x i8] c"loading cache\00", align 1, !dbg !1097
@.str.53 = private unnamed_addr constant [20 x i8] c"waiting (scheduler)\00", align 1, !dbg !1099
@.str.54 = private unnamed_addr constant [19 x i8] c"waiting (throttle)\00", align 1, !dbg !1101
@.str.55 = private unnamed_addr constant [25 x i8] c"\1B[K %s - \09%s%s \09%s / \09%s\00", align 1, !dbg !1106
@.str.56 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !1108
@.str.57 = private unnamed_addr constant [17 x i8] c"sizeof_dest != 0\00", align 1, !dbg !1110
@.str.58 = private unnamed_addr constant [15 x i8] c"source != NULL\00", align 1, !dbg !1115
@.str.59 = private unnamed_addr constant [21 x i8] c"size < sizeof_source\00", align 1, !dbg !1120
@htsshow_query.s = internal global [12 x i8] zeroinitializer, align 1, !dbg !1125
@.str.60 = private unnamed_addr constant [53 x i8] c"%s\0APress <Y><Enter> to confirm, <N><Enter> to abort\0A\00", align 1, !dbg !1131
@stdout = external global ptr, align 8
@stdin = external global ptr, align 8
@htsshow_query2.s = internal global [12 x i8] zeroinitializer, align 1, !dbg !1133
@htsshow_query3.line = internal global [256 x i8] zeroinitializer, align 16, !dbg !1136
@.str.61 = private unnamed_addr constant [411 x i8] c"\0AA link, %s, is located beyond this mirror scope.\0AWhat should I do? (type in the choice + enter)\0A\0A* Ignore all further links and do not ask any more questions\0A0 Ignore this link (default if empty entry)\0A1 Ignore directory and lower structures\0A2 Ignore all domain\0A\0A4 Get only this page/link, but not links inside this page\0A5 Mirror this link (useful)\0A6 Mirror all links located on the same domain as this link\0A\0A\00", align 1, !dbg !1139
@.str.62 = private unnamed_addr constant [4 x i8] c">> \00", align 1, !dbg !1144
@.str.63 = private unnamed_addr constant [6 x i8] c"ok..\0A\00", align 1, !dbg !1146
@.str.64 = private unnamed_addr constant [28 x i8] c"\0AInterrupting the program.\0A\00", align 1, !dbg !1148
@.str.65 = private unnamed_addr constant [51 x i8] c"\0AMoving into background to complete the mirror...\0A\00", align 1, !dbg !1153
@.str.66 = private unnamed_addr constant [14 x i8] c"hts-nohup.out\00", align 1, !dbg !1158
@.str.67 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !1160
@.str.68 = private unnamed_addr constant [29 x i8] c"Error: can not fork process\0A\00", align 1, !dbg !1162
@.str.69 = private unnamed_addr constant [39 x i8] c"\0AExit requested to engine (signal %d)\0A\00", align 1, !dbg !1167
@.str.70 = private unnamed_addr constant [33 x i8] c"\0AProgram terminated (signal %d)\0A\00", align 1, !dbg !1169
@.str.71 = private unnamed_addr constant [59 x i8] c"\0A** Finishing pending transfers.. press again ^C to quit.\0A\00", align 1, !dbg !1174
@.str.72 = private unnamed_addr constant [32 x i8] c"Exit requested by shell or user\00", align 1, !dbg !1179
@__const.sig_fatal.msg = private unnamed_addr constant [16 x i8] c"\0ACaught signal \00", align 16
@__const.sig_fatal.msgreport = private unnamed_addr constant [56 x i8] c"\0APlease report the problem at http://forum.httrack.com\0A\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !1192 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1195, metadata !DIExpression()), !dbg !1196
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1197, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1199, metadata !DIExpression()), !dbg !1200
  store i32 0, ptr %6, align 4, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @signal_handlers(), !dbg !1203
  %31 = call i32 @hts_init(), !dbg !1204
  %32 = call i64 @hts_sizeof_opt(), !dbg !1205
  %33 = icmp ne i64 %32, 141648, !dbg !1207
  br i1 %33, label %34, label %38, !dbg !1208

34:                                               ; preds = %2
  %35 = load ptr, ptr @stderr, align 8, !dbg !1209
  %36 = call ptr @hts_version(), !dbg !1211
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str, ptr noundef %36, ptr noundef @.str.1), !dbg !1212
  call void @abortf_(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 236), !dbg !1213
  br label %38, !dbg !1214

38:                                               ; preds = %34, %2
  %39 = call ptr @hts_create_opt(), !dbg !1215
  store ptr %39, ptr @global_opt, align 8, !dbg !1216
  store ptr %39, ptr %7, align 8, !dbg !1217
  %40 = load ptr, ptr %7, align 8, !dbg !1218
  %41 = getelementptr inbounds %struct.httrackp, ptr %40, i32 0, i32 0, !dbg !1218
  %42 = load i64, ptr %41, align 8, !dbg !1218
  %43 = icmp eq i64 %42, 141648, !dbg !1218
  br i1 %43, label %44, label %45, !dbg !1221

44:                                               ; preds = %38
  br label %46, !dbg !1221

45:                                               ; preds = %38
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.3, i32 noundef 240, ptr noundef @__PRETTY_FUNCTION__.main) #9, !dbg !1218
  unreachable, !dbg !1218

46:                                               ; preds = %44
  br label %47, !dbg !1222

47:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1223, metadata !DIExpression()), !dbg !1225
  %48 = call ptr @hts_malloc(i64 noundef 24), !dbg !1225
  store ptr %48, ptr %8, align 8, !dbg !1225
  %49 = load ptr, ptr %8, align 8, !dbg !1225
  %50 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %49, i32 0, i32 0, !dbg !1225
  store ptr null, ptr %50, align 8, !dbg !1225
  %51 = load ptr, ptr %7, align 8, !dbg !1225
  %52 = getelementptr inbounds %struct.httrackp, ptr %51, i32 0, i32 98, !dbg !1225
  %53 = load ptr, ptr %52, align 8, !dbg !1225
  %54 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %53, i32 0, i32 0, !dbg !1225
  %55 = getelementptr inbounds %struct.init, ptr %54, i32 0, i32 0, !dbg !1225
  %56 = load ptr, ptr %55, align 8, !dbg !1225
  %57 = load ptr, ptr %8, align 8, !dbg !1225
  %58 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %57, i32 0, i32 1, !dbg !1225
  %59 = getelementptr inbounds %struct.prev, ptr %58, i32 0, i32 0, !dbg !1225
  store ptr %56, ptr %59, align 8, !dbg !1225
  %60 = load ptr, ptr %7, align 8, !dbg !1225
  %61 = getelementptr inbounds %struct.httrackp, ptr %60, i32 0, i32 98, !dbg !1225
  %62 = load ptr, ptr %61, align 8, !dbg !1225
  %63 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %62, i32 0, i32 0, !dbg !1225
  %64 = getelementptr inbounds %struct.init, ptr %63, i32 0, i32 1, !dbg !1225
  %65 = load ptr, ptr %64, align 8, !dbg !1225
  %66 = load ptr, ptr %8, align 8, !dbg !1225
  %67 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %66, i32 0, i32 1, !dbg !1225
  %68 = getelementptr inbounds %struct.prev, ptr %67, i32 0, i32 1, !dbg !1225
  store ptr %65, ptr %68, align 8, !dbg !1225
  %69 = load ptr, ptr %7, align 8, !dbg !1225
  %70 = getelementptr inbounds %struct.httrackp, ptr %69, i32 0, i32 98, !dbg !1225
  %71 = load ptr, ptr %70, align 8, !dbg !1225
  %72 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %71, i32 0, i32 0, !dbg !1225
  %73 = getelementptr inbounds %struct.init, ptr %72, i32 0, i32 0, !dbg !1225
  store ptr @htsshow_init, ptr %73, align 8, !dbg !1225
  %74 = load ptr, ptr %8, align 8, !dbg !1225
  %75 = load ptr, ptr %7, align 8, !dbg !1225
  %76 = getelementptr inbounds %struct.httrackp, ptr %75, i32 0, i32 98, !dbg !1225
  %77 = load ptr, ptr %76, align 8, !dbg !1225
  %78 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %77, i32 0, i32 0, !dbg !1225
  %79 = getelementptr inbounds %struct.init, ptr %78, i32 0, i32 1, !dbg !1225
  store ptr %74, ptr %79, align 8, !dbg !1225
  br label %80, !dbg !1225

80:                                               ; preds = %47
  br label %81, !dbg !1226

81:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1227, metadata !DIExpression()), !dbg !1229
  %82 = call ptr @hts_malloc(i64 noundef 24), !dbg !1229
  store ptr %82, ptr %9, align 8, !dbg !1229
  %83 = load ptr, ptr %9, align 8, !dbg !1229
  %84 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %83, i32 0, i32 0, !dbg !1229
  store ptr null, ptr %84, align 8, !dbg !1229
  %85 = load ptr, ptr %7, align 8, !dbg !1229
  %86 = getelementptr inbounds %struct.httrackp, ptr %85, i32 0, i32 98, !dbg !1229
  %87 = load ptr, ptr %86, align 8, !dbg !1229
  %88 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %87, i32 0, i32 1, !dbg !1229
  %89 = getelementptr inbounds %struct.uninit, ptr %88, i32 0, i32 0, !dbg !1229
  %90 = load ptr, ptr %89, align 8, !dbg !1229
  %91 = load ptr, ptr %9, align 8, !dbg !1229
  %92 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %91, i32 0, i32 1, !dbg !1229
  %93 = getelementptr inbounds %struct.prev, ptr %92, i32 0, i32 0, !dbg !1229
  store ptr %90, ptr %93, align 8, !dbg !1229
  %94 = load ptr, ptr %7, align 8, !dbg !1229
  %95 = getelementptr inbounds %struct.httrackp, ptr %94, i32 0, i32 98, !dbg !1229
  %96 = load ptr, ptr %95, align 8, !dbg !1229
  %97 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %96, i32 0, i32 1, !dbg !1229
  %98 = getelementptr inbounds %struct.uninit, ptr %97, i32 0, i32 1, !dbg !1229
  %99 = load ptr, ptr %98, align 8, !dbg !1229
  %100 = load ptr, ptr %9, align 8, !dbg !1229
  %101 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %100, i32 0, i32 1, !dbg !1229
  %102 = getelementptr inbounds %struct.prev, ptr %101, i32 0, i32 1, !dbg !1229
  store ptr %99, ptr %102, align 8, !dbg !1229
  %103 = load ptr, ptr %7, align 8, !dbg !1229
  %104 = getelementptr inbounds %struct.httrackp, ptr %103, i32 0, i32 98, !dbg !1229
  %105 = load ptr, ptr %104, align 8, !dbg !1229
  %106 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %105, i32 0, i32 1, !dbg !1229
  %107 = getelementptr inbounds %struct.uninit, ptr %106, i32 0, i32 0, !dbg !1229
  store ptr @htsshow_uninit, ptr %107, align 8, !dbg !1229
  %108 = load ptr, ptr %9, align 8, !dbg !1229
  %109 = load ptr, ptr %7, align 8, !dbg !1229
  %110 = getelementptr inbounds %struct.httrackp, ptr %109, i32 0, i32 98, !dbg !1229
  %111 = load ptr, ptr %110, align 8, !dbg !1229
  %112 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %111, i32 0, i32 1, !dbg !1229
  %113 = getelementptr inbounds %struct.uninit, ptr %112, i32 0, i32 1, !dbg !1229
  store ptr %108, ptr %113, align 8, !dbg !1229
  br label %114, !dbg !1229

114:                                              ; preds = %81
  br label %115, !dbg !1230

115:                                              ; preds = %114
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1231, metadata !DIExpression()), !dbg !1233
  %116 = call ptr @hts_malloc(i64 noundef 24), !dbg !1233
  store ptr %116, ptr %10, align 8, !dbg !1233
  %117 = load ptr, ptr %10, align 8, !dbg !1233
  %118 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %117, i32 0, i32 0, !dbg !1233
  store ptr null, ptr %118, align 8, !dbg !1233
  %119 = load ptr, ptr %7, align 8, !dbg !1233
  %120 = getelementptr inbounds %struct.httrackp, ptr %119, i32 0, i32 98, !dbg !1233
  %121 = load ptr, ptr %120, align 8, !dbg !1233
  %122 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %121, i32 0, i32 2, !dbg !1233
  %123 = getelementptr inbounds %struct.start, ptr %122, i32 0, i32 0, !dbg !1233
  %124 = load ptr, ptr %123, align 8, !dbg !1233
  %125 = load ptr, ptr %10, align 8, !dbg !1233
  %126 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %125, i32 0, i32 1, !dbg !1233
  %127 = getelementptr inbounds %struct.prev, ptr %126, i32 0, i32 0, !dbg !1233
  store ptr %124, ptr %127, align 8, !dbg !1233
  %128 = load ptr, ptr %7, align 8, !dbg !1233
  %129 = getelementptr inbounds %struct.httrackp, ptr %128, i32 0, i32 98, !dbg !1233
  %130 = load ptr, ptr %129, align 8, !dbg !1233
  %131 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %130, i32 0, i32 2, !dbg !1233
  %132 = getelementptr inbounds %struct.start, ptr %131, i32 0, i32 1, !dbg !1233
  %133 = load ptr, ptr %132, align 8, !dbg !1233
  %134 = load ptr, ptr %10, align 8, !dbg !1233
  %135 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %134, i32 0, i32 1, !dbg !1233
  %136 = getelementptr inbounds %struct.prev, ptr %135, i32 0, i32 1, !dbg !1233
  store ptr %133, ptr %136, align 8, !dbg !1233
  %137 = load ptr, ptr %7, align 8, !dbg !1233
  %138 = getelementptr inbounds %struct.httrackp, ptr %137, i32 0, i32 98, !dbg !1233
  %139 = load ptr, ptr %138, align 8, !dbg !1233
  %140 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %139, i32 0, i32 2, !dbg !1233
  %141 = getelementptr inbounds %struct.start, ptr %140, i32 0, i32 0, !dbg !1233
  store ptr @htsshow_start, ptr %141, align 8, !dbg !1233
  %142 = load ptr, ptr %10, align 8, !dbg !1233
  %143 = load ptr, ptr %7, align 8, !dbg !1233
  %144 = getelementptr inbounds %struct.httrackp, ptr %143, i32 0, i32 98, !dbg !1233
  %145 = load ptr, ptr %144, align 8, !dbg !1233
  %146 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %145, i32 0, i32 2, !dbg !1233
  %147 = getelementptr inbounds %struct.start, ptr %146, i32 0, i32 1, !dbg !1233
  store ptr %142, ptr %147, align 8, !dbg !1233
  br label %148, !dbg !1233

148:                                              ; preds = %115
  br label %149, !dbg !1234

149:                                              ; preds = %148
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1235, metadata !DIExpression()), !dbg !1237
  %150 = call ptr @hts_malloc(i64 noundef 24), !dbg !1237
  store ptr %150, ptr %11, align 8, !dbg !1237
  %151 = load ptr, ptr %11, align 8, !dbg !1237
  %152 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %151, i32 0, i32 0, !dbg !1237
  store ptr null, ptr %152, align 8, !dbg !1237
  %153 = load ptr, ptr %7, align 8, !dbg !1237
  %154 = getelementptr inbounds %struct.httrackp, ptr %153, i32 0, i32 98, !dbg !1237
  %155 = load ptr, ptr %154, align 8, !dbg !1237
  %156 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %155, i32 0, i32 3, !dbg !1237
  %157 = getelementptr inbounds %struct.end, ptr %156, i32 0, i32 0, !dbg !1237
  %158 = load ptr, ptr %157, align 8, !dbg !1237
  %159 = load ptr, ptr %11, align 8, !dbg !1237
  %160 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %159, i32 0, i32 1, !dbg !1237
  %161 = getelementptr inbounds %struct.prev, ptr %160, i32 0, i32 0, !dbg !1237
  store ptr %158, ptr %161, align 8, !dbg !1237
  %162 = load ptr, ptr %7, align 8, !dbg !1237
  %163 = getelementptr inbounds %struct.httrackp, ptr %162, i32 0, i32 98, !dbg !1237
  %164 = load ptr, ptr %163, align 8, !dbg !1237
  %165 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %164, i32 0, i32 3, !dbg !1237
  %166 = getelementptr inbounds %struct.end, ptr %165, i32 0, i32 1, !dbg !1237
  %167 = load ptr, ptr %166, align 8, !dbg !1237
  %168 = load ptr, ptr %11, align 8, !dbg !1237
  %169 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %168, i32 0, i32 1, !dbg !1237
  %170 = getelementptr inbounds %struct.prev, ptr %169, i32 0, i32 1, !dbg !1237
  store ptr %167, ptr %170, align 8, !dbg !1237
  %171 = load ptr, ptr %7, align 8, !dbg !1237
  %172 = getelementptr inbounds %struct.httrackp, ptr %171, i32 0, i32 98, !dbg !1237
  %173 = load ptr, ptr %172, align 8, !dbg !1237
  %174 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %173, i32 0, i32 3, !dbg !1237
  %175 = getelementptr inbounds %struct.end, ptr %174, i32 0, i32 0, !dbg !1237
  store ptr @htsshow_end, ptr %175, align 8, !dbg !1237
  %176 = load ptr, ptr %11, align 8, !dbg !1237
  %177 = load ptr, ptr %7, align 8, !dbg !1237
  %178 = getelementptr inbounds %struct.httrackp, ptr %177, i32 0, i32 98, !dbg !1237
  %179 = load ptr, ptr %178, align 8, !dbg !1237
  %180 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %179, i32 0, i32 3, !dbg !1237
  %181 = getelementptr inbounds %struct.end, ptr %180, i32 0, i32 1, !dbg !1237
  store ptr %176, ptr %181, align 8, !dbg !1237
  br label %182, !dbg !1237

182:                                              ; preds = %149
  br label %183, !dbg !1238

183:                                              ; preds = %182
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1239, metadata !DIExpression()), !dbg !1241
  %184 = call ptr @hts_malloc(i64 noundef 24), !dbg !1241
  store ptr %184, ptr %12, align 8, !dbg !1241
  %185 = load ptr, ptr %12, align 8, !dbg !1241
  %186 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %185, i32 0, i32 0, !dbg !1241
  store ptr null, ptr %186, align 8, !dbg !1241
  %187 = load ptr, ptr %7, align 8, !dbg !1241
  %188 = getelementptr inbounds %struct.httrackp, ptr %187, i32 0, i32 98, !dbg !1241
  %189 = load ptr, ptr %188, align 8, !dbg !1241
  %190 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %189, i32 0, i32 4, !dbg !1241
  %191 = getelementptr inbounds %struct.chopt, ptr %190, i32 0, i32 0, !dbg !1241
  %192 = load ptr, ptr %191, align 8, !dbg !1241
  %193 = load ptr, ptr %12, align 8, !dbg !1241
  %194 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %193, i32 0, i32 1, !dbg !1241
  %195 = getelementptr inbounds %struct.prev, ptr %194, i32 0, i32 0, !dbg !1241
  store ptr %192, ptr %195, align 8, !dbg !1241
  %196 = load ptr, ptr %7, align 8, !dbg !1241
  %197 = getelementptr inbounds %struct.httrackp, ptr %196, i32 0, i32 98, !dbg !1241
  %198 = load ptr, ptr %197, align 8, !dbg !1241
  %199 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %198, i32 0, i32 4, !dbg !1241
  %200 = getelementptr inbounds %struct.chopt, ptr %199, i32 0, i32 1, !dbg !1241
  %201 = load ptr, ptr %200, align 8, !dbg !1241
  %202 = load ptr, ptr %12, align 8, !dbg !1241
  %203 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %202, i32 0, i32 1, !dbg !1241
  %204 = getelementptr inbounds %struct.prev, ptr %203, i32 0, i32 1, !dbg !1241
  store ptr %201, ptr %204, align 8, !dbg !1241
  %205 = load ptr, ptr %7, align 8, !dbg !1241
  %206 = getelementptr inbounds %struct.httrackp, ptr %205, i32 0, i32 98, !dbg !1241
  %207 = load ptr, ptr %206, align 8, !dbg !1241
  %208 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %207, i32 0, i32 4, !dbg !1241
  %209 = getelementptr inbounds %struct.chopt, ptr %208, i32 0, i32 0, !dbg !1241
  store ptr @htsshow_chopt, ptr %209, align 8, !dbg !1241
  %210 = load ptr, ptr %12, align 8, !dbg !1241
  %211 = load ptr, ptr %7, align 8, !dbg !1241
  %212 = getelementptr inbounds %struct.httrackp, ptr %211, i32 0, i32 98, !dbg !1241
  %213 = load ptr, ptr %212, align 8, !dbg !1241
  %214 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %213, i32 0, i32 4, !dbg !1241
  %215 = getelementptr inbounds %struct.chopt, ptr %214, i32 0, i32 1, !dbg !1241
  store ptr %210, ptr %215, align 8, !dbg !1241
  br label %216, !dbg !1241

216:                                              ; preds = %183
  br label %217, !dbg !1242

217:                                              ; preds = %216
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1243, metadata !DIExpression()), !dbg !1245
  %218 = call ptr @hts_malloc(i64 noundef 24), !dbg !1245
  store ptr %218, ptr %13, align 8, !dbg !1245
  %219 = load ptr, ptr %13, align 8, !dbg !1245
  %220 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %219, i32 0, i32 0, !dbg !1245
  store ptr null, ptr %220, align 8, !dbg !1245
  %221 = load ptr, ptr %7, align 8, !dbg !1245
  %222 = getelementptr inbounds %struct.httrackp, ptr %221, i32 0, i32 98, !dbg !1245
  %223 = load ptr, ptr %222, align 8, !dbg !1245
  %224 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %223, i32 0, i32 5, !dbg !1245
  %225 = getelementptr inbounds %struct.preprocess, ptr %224, i32 0, i32 0, !dbg !1245
  %226 = load ptr, ptr %225, align 8, !dbg !1245
  %227 = load ptr, ptr %13, align 8, !dbg !1245
  %228 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %227, i32 0, i32 1, !dbg !1245
  %229 = getelementptr inbounds %struct.prev, ptr %228, i32 0, i32 0, !dbg !1245
  store ptr %226, ptr %229, align 8, !dbg !1245
  %230 = load ptr, ptr %7, align 8, !dbg !1245
  %231 = getelementptr inbounds %struct.httrackp, ptr %230, i32 0, i32 98, !dbg !1245
  %232 = load ptr, ptr %231, align 8, !dbg !1245
  %233 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %232, i32 0, i32 5, !dbg !1245
  %234 = getelementptr inbounds %struct.preprocess, ptr %233, i32 0, i32 1, !dbg !1245
  %235 = load ptr, ptr %234, align 8, !dbg !1245
  %236 = load ptr, ptr %13, align 8, !dbg !1245
  %237 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %236, i32 0, i32 1, !dbg !1245
  %238 = getelementptr inbounds %struct.prev, ptr %237, i32 0, i32 1, !dbg !1245
  store ptr %235, ptr %238, align 8, !dbg !1245
  %239 = load ptr, ptr %7, align 8, !dbg !1245
  %240 = getelementptr inbounds %struct.httrackp, ptr %239, i32 0, i32 98, !dbg !1245
  %241 = load ptr, ptr %240, align 8, !dbg !1245
  %242 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %241, i32 0, i32 5, !dbg !1245
  %243 = getelementptr inbounds %struct.preprocess, ptr %242, i32 0, i32 0, !dbg !1245
  store ptr @htsshow_preprocesshtml, ptr %243, align 8, !dbg !1245
  %244 = load ptr, ptr %13, align 8, !dbg !1245
  %245 = load ptr, ptr %7, align 8, !dbg !1245
  %246 = getelementptr inbounds %struct.httrackp, ptr %245, i32 0, i32 98, !dbg !1245
  %247 = load ptr, ptr %246, align 8, !dbg !1245
  %248 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %247, i32 0, i32 5, !dbg !1245
  %249 = getelementptr inbounds %struct.preprocess, ptr %248, i32 0, i32 1, !dbg !1245
  store ptr %244, ptr %249, align 8, !dbg !1245
  br label %250, !dbg !1245

250:                                              ; preds = %217
  br label %251, !dbg !1246

251:                                              ; preds = %250
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1247, metadata !DIExpression()), !dbg !1249
  %252 = call ptr @hts_malloc(i64 noundef 24), !dbg !1249
  store ptr %252, ptr %14, align 8, !dbg !1249
  %253 = load ptr, ptr %14, align 8, !dbg !1249
  %254 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %253, i32 0, i32 0, !dbg !1249
  store ptr null, ptr %254, align 8, !dbg !1249
  %255 = load ptr, ptr %7, align 8, !dbg !1249
  %256 = getelementptr inbounds %struct.httrackp, ptr %255, i32 0, i32 98, !dbg !1249
  %257 = load ptr, ptr %256, align 8, !dbg !1249
  %258 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %257, i32 0, i32 6, !dbg !1249
  %259 = getelementptr inbounds %struct.postprocess, ptr %258, i32 0, i32 0, !dbg !1249
  %260 = load ptr, ptr %259, align 8, !dbg !1249
  %261 = load ptr, ptr %14, align 8, !dbg !1249
  %262 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %261, i32 0, i32 1, !dbg !1249
  %263 = getelementptr inbounds %struct.prev, ptr %262, i32 0, i32 0, !dbg !1249
  store ptr %260, ptr %263, align 8, !dbg !1249
  %264 = load ptr, ptr %7, align 8, !dbg !1249
  %265 = getelementptr inbounds %struct.httrackp, ptr %264, i32 0, i32 98, !dbg !1249
  %266 = load ptr, ptr %265, align 8, !dbg !1249
  %267 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %266, i32 0, i32 6, !dbg !1249
  %268 = getelementptr inbounds %struct.postprocess, ptr %267, i32 0, i32 1, !dbg !1249
  %269 = load ptr, ptr %268, align 8, !dbg !1249
  %270 = load ptr, ptr %14, align 8, !dbg !1249
  %271 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %270, i32 0, i32 1, !dbg !1249
  %272 = getelementptr inbounds %struct.prev, ptr %271, i32 0, i32 1, !dbg !1249
  store ptr %269, ptr %272, align 8, !dbg !1249
  %273 = load ptr, ptr %7, align 8, !dbg !1249
  %274 = getelementptr inbounds %struct.httrackp, ptr %273, i32 0, i32 98, !dbg !1249
  %275 = load ptr, ptr %274, align 8, !dbg !1249
  %276 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %275, i32 0, i32 6, !dbg !1249
  %277 = getelementptr inbounds %struct.postprocess, ptr %276, i32 0, i32 0, !dbg !1249
  store ptr @htsshow_postprocesshtml, ptr %277, align 8, !dbg !1249
  %278 = load ptr, ptr %14, align 8, !dbg !1249
  %279 = load ptr, ptr %7, align 8, !dbg !1249
  %280 = getelementptr inbounds %struct.httrackp, ptr %279, i32 0, i32 98, !dbg !1249
  %281 = load ptr, ptr %280, align 8, !dbg !1249
  %282 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %281, i32 0, i32 6, !dbg !1249
  %283 = getelementptr inbounds %struct.postprocess, ptr %282, i32 0, i32 1, !dbg !1249
  store ptr %278, ptr %283, align 8, !dbg !1249
  br label %284, !dbg !1249

284:                                              ; preds = %251
  br label %285, !dbg !1250

285:                                              ; preds = %284
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1251, metadata !DIExpression()), !dbg !1253
  %286 = call ptr @hts_malloc(i64 noundef 24), !dbg !1253
  store ptr %286, ptr %15, align 8, !dbg !1253
  %287 = load ptr, ptr %15, align 8, !dbg !1253
  %288 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %287, i32 0, i32 0, !dbg !1253
  store ptr null, ptr %288, align 8, !dbg !1253
  %289 = load ptr, ptr %7, align 8, !dbg !1253
  %290 = getelementptr inbounds %struct.httrackp, ptr %289, i32 0, i32 98, !dbg !1253
  %291 = load ptr, ptr %290, align 8, !dbg !1253
  %292 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %291, i32 0, i32 7, !dbg !1253
  %293 = getelementptr inbounds %struct.check_html, ptr %292, i32 0, i32 0, !dbg !1253
  %294 = load ptr, ptr %293, align 8, !dbg !1253
  %295 = load ptr, ptr %15, align 8, !dbg !1253
  %296 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %295, i32 0, i32 1, !dbg !1253
  %297 = getelementptr inbounds %struct.prev, ptr %296, i32 0, i32 0, !dbg !1253
  store ptr %294, ptr %297, align 8, !dbg !1253
  %298 = load ptr, ptr %7, align 8, !dbg !1253
  %299 = getelementptr inbounds %struct.httrackp, ptr %298, i32 0, i32 98, !dbg !1253
  %300 = load ptr, ptr %299, align 8, !dbg !1253
  %301 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %300, i32 0, i32 7, !dbg !1253
  %302 = getelementptr inbounds %struct.check_html, ptr %301, i32 0, i32 1, !dbg !1253
  %303 = load ptr, ptr %302, align 8, !dbg !1253
  %304 = load ptr, ptr %15, align 8, !dbg !1253
  %305 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %304, i32 0, i32 1, !dbg !1253
  %306 = getelementptr inbounds %struct.prev, ptr %305, i32 0, i32 1, !dbg !1253
  store ptr %303, ptr %306, align 8, !dbg !1253
  %307 = load ptr, ptr %7, align 8, !dbg !1253
  %308 = getelementptr inbounds %struct.httrackp, ptr %307, i32 0, i32 98, !dbg !1253
  %309 = load ptr, ptr %308, align 8, !dbg !1253
  %310 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %309, i32 0, i32 7, !dbg !1253
  %311 = getelementptr inbounds %struct.check_html, ptr %310, i32 0, i32 0, !dbg !1253
  store ptr @htsshow_checkhtml, ptr %311, align 8, !dbg !1253
  %312 = load ptr, ptr %15, align 8, !dbg !1253
  %313 = load ptr, ptr %7, align 8, !dbg !1253
  %314 = getelementptr inbounds %struct.httrackp, ptr %313, i32 0, i32 98, !dbg !1253
  %315 = load ptr, ptr %314, align 8, !dbg !1253
  %316 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %315, i32 0, i32 7, !dbg !1253
  %317 = getelementptr inbounds %struct.check_html, ptr %316, i32 0, i32 1, !dbg !1253
  store ptr %312, ptr %317, align 8, !dbg !1253
  br label %318, !dbg !1253

318:                                              ; preds = %285
  br label %319, !dbg !1254

319:                                              ; preds = %318
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1255, metadata !DIExpression()), !dbg !1257
  %320 = call ptr @hts_malloc(i64 noundef 24), !dbg !1257
  store ptr %320, ptr %16, align 8, !dbg !1257
  %321 = load ptr, ptr %16, align 8, !dbg !1257
  %322 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %321, i32 0, i32 0, !dbg !1257
  store ptr null, ptr %322, align 8, !dbg !1257
  %323 = load ptr, ptr %7, align 8, !dbg !1257
  %324 = getelementptr inbounds %struct.httrackp, ptr %323, i32 0, i32 98, !dbg !1257
  %325 = load ptr, ptr %324, align 8, !dbg !1257
  %326 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %325, i32 0, i32 8, !dbg !1257
  %327 = getelementptr inbounds %struct.query, ptr %326, i32 0, i32 0, !dbg !1257
  %328 = load ptr, ptr %327, align 8, !dbg !1257
  %329 = load ptr, ptr %16, align 8, !dbg !1257
  %330 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %329, i32 0, i32 1, !dbg !1257
  %331 = getelementptr inbounds %struct.prev, ptr %330, i32 0, i32 0, !dbg !1257
  store ptr %328, ptr %331, align 8, !dbg !1257
  %332 = load ptr, ptr %7, align 8, !dbg !1257
  %333 = getelementptr inbounds %struct.httrackp, ptr %332, i32 0, i32 98, !dbg !1257
  %334 = load ptr, ptr %333, align 8, !dbg !1257
  %335 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %334, i32 0, i32 8, !dbg !1257
  %336 = getelementptr inbounds %struct.query, ptr %335, i32 0, i32 1, !dbg !1257
  %337 = load ptr, ptr %336, align 8, !dbg !1257
  %338 = load ptr, ptr %16, align 8, !dbg !1257
  %339 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %338, i32 0, i32 1, !dbg !1257
  %340 = getelementptr inbounds %struct.prev, ptr %339, i32 0, i32 1, !dbg !1257
  store ptr %337, ptr %340, align 8, !dbg !1257
  %341 = load ptr, ptr %7, align 8, !dbg !1257
  %342 = getelementptr inbounds %struct.httrackp, ptr %341, i32 0, i32 98, !dbg !1257
  %343 = load ptr, ptr %342, align 8, !dbg !1257
  %344 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %343, i32 0, i32 8, !dbg !1257
  %345 = getelementptr inbounds %struct.query, ptr %344, i32 0, i32 0, !dbg !1257
  store ptr @htsshow_query, ptr %345, align 8, !dbg !1257
  %346 = load ptr, ptr %16, align 8, !dbg !1257
  %347 = load ptr, ptr %7, align 8, !dbg !1257
  %348 = getelementptr inbounds %struct.httrackp, ptr %347, i32 0, i32 98, !dbg !1257
  %349 = load ptr, ptr %348, align 8, !dbg !1257
  %350 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %349, i32 0, i32 8, !dbg !1257
  %351 = getelementptr inbounds %struct.query, ptr %350, i32 0, i32 1, !dbg !1257
  store ptr %346, ptr %351, align 8, !dbg !1257
  br label %352, !dbg !1257

352:                                              ; preds = %319
  br label %353, !dbg !1258

353:                                              ; preds = %352
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1259, metadata !DIExpression()), !dbg !1261
  %354 = call ptr @hts_malloc(i64 noundef 24), !dbg !1261
  store ptr %354, ptr %17, align 8, !dbg !1261
  %355 = load ptr, ptr %17, align 8, !dbg !1261
  %356 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %355, i32 0, i32 0, !dbg !1261
  store ptr null, ptr %356, align 8, !dbg !1261
  %357 = load ptr, ptr %7, align 8, !dbg !1261
  %358 = getelementptr inbounds %struct.httrackp, ptr %357, i32 0, i32 98, !dbg !1261
  %359 = load ptr, ptr %358, align 8, !dbg !1261
  %360 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %359, i32 0, i32 9, !dbg !1261
  %361 = getelementptr inbounds %struct.query2, ptr %360, i32 0, i32 0, !dbg !1261
  %362 = load ptr, ptr %361, align 8, !dbg !1261
  %363 = load ptr, ptr %17, align 8, !dbg !1261
  %364 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %363, i32 0, i32 1, !dbg !1261
  %365 = getelementptr inbounds %struct.prev, ptr %364, i32 0, i32 0, !dbg !1261
  store ptr %362, ptr %365, align 8, !dbg !1261
  %366 = load ptr, ptr %7, align 8, !dbg !1261
  %367 = getelementptr inbounds %struct.httrackp, ptr %366, i32 0, i32 98, !dbg !1261
  %368 = load ptr, ptr %367, align 8, !dbg !1261
  %369 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %368, i32 0, i32 9, !dbg !1261
  %370 = getelementptr inbounds %struct.query2, ptr %369, i32 0, i32 1, !dbg !1261
  %371 = load ptr, ptr %370, align 8, !dbg !1261
  %372 = load ptr, ptr %17, align 8, !dbg !1261
  %373 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %372, i32 0, i32 1, !dbg !1261
  %374 = getelementptr inbounds %struct.prev, ptr %373, i32 0, i32 1, !dbg !1261
  store ptr %371, ptr %374, align 8, !dbg !1261
  %375 = load ptr, ptr %7, align 8, !dbg !1261
  %376 = getelementptr inbounds %struct.httrackp, ptr %375, i32 0, i32 98, !dbg !1261
  %377 = load ptr, ptr %376, align 8, !dbg !1261
  %378 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %377, i32 0, i32 9, !dbg !1261
  %379 = getelementptr inbounds %struct.query2, ptr %378, i32 0, i32 0, !dbg !1261
  store ptr @htsshow_query2, ptr %379, align 8, !dbg !1261
  %380 = load ptr, ptr %17, align 8, !dbg !1261
  %381 = load ptr, ptr %7, align 8, !dbg !1261
  %382 = getelementptr inbounds %struct.httrackp, ptr %381, i32 0, i32 98, !dbg !1261
  %383 = load ptr, ptr %382, align 8, !dbg !1261
  %384 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %383, i32 0, i32 9, !dbg !1261
  %385 = getelementptr inbounds %struct.query2, ptr %384, i32 0, i32 1, !dbg !1261
  store ptr %380, ptr %385, align 8, !dbg !1261
  br label %386, !dbg !1261

386:                                              ; preds = %353
  br label %387, !dbg !1262

387:                                              ; preds = %386
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1263, metadata !DIExpression()), !dbg !1265
  %388 = call ptr @hts_malloc(i64 noundef 24), !dbg !1265
  store ptr %388, ptr %18, align 8, !dbg !1265
  %389 = load ptr, ptr %18, align 8, !dbg !1265
  %390 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %389, i32 0, i32 0, !dbg !1265
  store ptr null, ptr %390, align 8, !dbg !1265
  %391 = load ptr, ptr %7, align 8, !dbg !1265
  %392 = getelementptr inbounds %struct.httrackp, ptr %391, i32 0, i32 98, !dbg !1265
  %393 = load ptr, ptr %392, align 8, !dbg !1265
  %394 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %393, i32 0, i32 10, !dbg !1265
  %395 = getelementptr inbounds %struct.query3, ptr %394, i32 0, i32 0, !dbg !1265
  %396 = load ptr, ptr %395, align 8, !dbg !1265
  %397 = load ptr, ptr %18, align 8, !dbg !1265
  %398 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %397, i32 0, i32 1, !dbg !1265
  %399 = getelementptr inbounds %struct.prev, ptr %398, i32 0, i32 0, !dbg !1265
  store ptr %396, ptr %399, align 8, !dbg !1265
  %400 = load ptr, ptr %7, align 8, !dbg !1265
  %401 = getelementptr inbounds %struct.httrackp, ptr %400, i32 0, i32 98, !dbg !1265
  %402 = load ptr, ptr %401, align 8, !dbg !1265
  %403 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %402, i32 0, i32 10, !dbg !1265
  %404 = getelementptr inbounds %struct.query3, ptr %403, i32 0, i32 1, !dbg !1265
  %405 = load ptr, ptr %404, align 8, !dbg !1265
  %406 = load ptr, ptr %18, align 8, !dbg !1265
  %407 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %406, i32 0, i32 1, !dbg !1265
  %408 = getelementptr inbounds %struct.prev, ptr %407, i32 0, i32 1, !dbg !1265
  store ptr %405, ptr %408, align 8, !dbg !1265
  %409 = load ptr, ptr %7, align 8, !dbg !1265
  %410 = getelementptr inbounds %struct.httrackp, ptr %409, i32 0, i32 98, !dbg !1265
  %411 = load ptr, ptr %410, align 8, !dbg !1265
  %412 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %411, i32 0, i32 10, !dbg !1265
  %413 = getelementptr inbounds %struct.query3, ptr %412, i32 0, i32 0, !dbg !1265
  store ptr @htsshow_query3, ptr %413, align 8, !dbg !1265
  %414 = load ptr, ptr %18, align 8, !dbg !1265
  %415 = load ptr, ptr %7, align 8, !dbg !1265
  %416 = getelementptr inbounds %struct.httrackp, ptr %415, i32 0, i32 98, !dbg !1265
  %417 = load ptr, ptr %416, align 8, !dbg !1265
  %418 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %417, i32 0, i32 10, !dbg !1265
  %419 = getelementptr inbounds %struct.query3, ptr %418, i32 0, i32 1, !dbg !1265
  store ptr %414, ptr %419, align 8, !dbg !1265
  br label %420, !dbg !1265

420:                                              ; preds = %387
  br label %421, !dbg !1266

421:                                              ; preds = %420
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1267, metadata !DIExpression()), !dbg !1269
  %422 = call ptr @hts_malloc(i64 noundef 24), !dbg !1269
  store ptr %422, ptr %19, align 8, !dbg !1269
  %423 = load ptr, ptr %19, align 8, !dbg !1269
  %424 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %423, i32 0, i32 0, !dbg !1269
  store ptr null, ptr %424, align 8, !dbg !1269
  %425 = load ptr, ptr %7, align 8, !dbg !1269
  %426 = getelementptr inbounds %struct.httrackp, ptr %425, i32 0, i32 98, !dbg !1269
  %427 = load ptr, ptr %426, align 8, !dbg !1269
  %428 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %427, i32 0, i32 11, !dbg !1269
  %429 = getelementptr inbounds %struct.loop, ptr %428, i32 0, i32 0, !dbg !1269
  %430 = load ptr, ptr %429, align 8, !dbg !1269
  %431 = load ptr, ptr %19, align 8, !dbg !1269
  %432 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %431, i32 0, i32 1, !dbg !1269
  %433 = getelementptr inbounds %struct.prev, ptr %432, i32 0, i32 0, !dbg !1269
  store ptr %430, ptr %433, align 8, !dbg !1269
  %434 = load ptr, ptr %7, align 8, !dbg !1269
  %435 = getelementptr inbounds %struct.httrackp, ptr %434, i32 0, i32 98, !dbg !1269
  %436 = load ptr, ptr %435, align 8, !dbg !1269
  %437 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %436, i32 0, i32 11, !dbg !1269
  %438 = getelementptr inbounds %struct.loop, ptr %437, i32 0, i32 1, !dbg !1269
  %439 = load ptr, ptr %438, align 8, !dbg !1269
  %440 = load ptr, ptr %19, align 8, !dbg !1269
  %441 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %440, i32 0, i32 1, !dbg !1269
  %442 = getelementptr inbounds %struct.prev, ptr %441, i32 0, i32 1, !dbg !1269
  store ptr %439, ptr %442, align 8, !dbg !1269
  %443 = load ptr, ptr %7, align 8, !dbg !1269
  %444 = getelementptr inbounds %struct.httrackp, ptr %443, i32 0, i32 98, !dbg !1269
  %445 = load ptr, ptr %444, align 8, !dbg !1269
  %446 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %445, i32 0, i32 11, !dbg !1269
  %447 = getelementptr inbounds %struct.loop, ptr %446, i32 0, i32 0, !dbg !1269
  store ptr @htsshow_loop, ptr %447, align 8, !dbg !1269
  %448 = load ptr, ptr %19, align 8, !dbg !1269
  %449 = load ptr, ptr %7, align 8, !dbg !1269
  %450 = getelementptr inbounds %struct.httrackp, ptr %449, i32 0, i32 98, !dbg !1269
  %451 = load ptr, ptr %450, align 8, !dbg !1269
  %452 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %451, i32 0, i32 11, !dbg !1269
  %453 = getelementptr inbounds %struct.loop, ptr %452, i32 0, i32 1, !dbg !1269
  store ptr %448, ptr %453, align 8, !dbg !1269
  br label %454, !dbg !1269

454:                                              ; preds = %421
  br label %455, !dbg !1270

455:                                              ; preds = %454
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1271, metadata !DIExpression()), !dbg !1273
  %456 = call ptr @hts_malloc(i64 noundef 24), !dbg !1273
  store ptr %456, ptr %20, align 8, !dbg !1273
  %457 = load ptr, ptr %20, align 8, !dbg !1273
  %458 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %457, i32 0, i32 0, !dbg !1273
  store ptr null, ptr %458, align 8, !dbg !1273
  %459 = load ptr, ptr %7, align 8, !dbg !1273
  %460 = getelementptr inbounds %struct.httrackp, ptr %459, i32 0, i32 98, !dbg !1273
  %461 = load ptr, ptr %460, align 8, !dbg !1273
  %462 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %461, i32 0, i32 12, !dbg !1273
  %463 = getelementptr inbounds %struct.check_link, ptr %462, i32 0, i32 0, !dbg !1273
  %464 = load ptr, ptr %463, align 8, !dbg !1273
  %465 = load ptr, ptr %20, align 8, !dbg !1273
  %466 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %465, i32 0, i32 1, !dbg !1273
  %467 = getelementptr inbounds %struct.prev, ptr %466, i32 0, i32 0, !dbg !1273
  store ptr %464, ptr %467, align 8, !dbg !1273
  %468 = load ptr, ptr %7, align 8, !dbg !1273
  %469 = getelementptr inbounds %struct.httrackp, ptr %468, i32 0, i32 98, !dbg !1273
  %470 = load ptr, ptr %469, align 8, !dbg !1273
  %471 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %470, i32 0, i32 12, !dbg !1273
  %472 = getelementptr inbounds %struct.check_link, ptr %471, i32 0, i32 1, !dbg !1273
  %473 = load ptr, ptr %472, align 8, !dbg !1273
  %474 = load ptr, ptr %20, align 8, !dbg !1273
  %475 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %474, i32 0, i32 1, !dbg !1273
  %476 = getelementptr inbounds %struct.prev, ptr %475, i32 0, i32 1, !dbg !1273
  store ptr %473, ptr %476, align 8, !dbg !1273
  %477 = load ptr, ptr %7, align 8, !dbg !1273
  %478 = getelementptr inbounds %struct.httrackp, ptr %477, i32 0, i32 98, !dbg !1273
  %479 = load ptr, ptr %478, align 8, !dbg !1273
  %480 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %479, i32 0, i32 12, !dbg !1273
  %481 = getelementptr inbounds %struct.check_link, ptr %480, i32 0, i32 0, !dbg !1273
  store ptr @htsshow_check, ptr %481, align 8, !dbg !1273
  %482 = load ptr, ptr %20, align 8, !dbg !1273
  %483 = load ptr, ptr %7, align 8, !dbg !1273
  %484 = getelementptr inbounds %struct.httrackp, ptr %483, i32 0, i32 98, !dbg !1273
  %485 = load ptr, ptr %484, align 8, !dbg !1273
  %486 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %485, i32 0, i32 12, !dbg !1273
  %487 = getelementptr inbounds %struct.check_link, ptr %486, i32 0, i32 1, !dbg !1273
  store ptr %482, ptr %487, align 8, !dbg !1273
  br label %488, !dbg !1273

488:                                              ; preds = %455
  br label %489, !dbg !1274

489:                                              ; preds = %488
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1275, metadata !DIExpression()), !dbg !1277
  %490 = call ptr @hts_malloc(i64 noundef 24), !dbg !1277
  store ptr %490, ptr %21, align 8, !dbg !1277
  %491 = load ptr, ptr %21, align 8, !dbg !1277
  %492 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %491, i32 0, i32 0, !dbg !1277
  store ptr null, ptr %492, align 8, !dbg !1277
  %493 = load ptr, ptr %7, align 8, !dbg !1277
  %494 = getelementptr inbounds %struct.httrackp, ptr %493, i32 0, i32 98, !dbg !1277
  %495 = load ptr, ptr %494, align 8, !dbg !1277
  %496 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %495, i32 0, i32 13, !dbg !1277
  %497 = getelementptr inbounds %struct.check_mime, ptr %496, i32 0, i32 0, !dbg !1277
  %498 = load ptr, ptr %497, align 8, !dbg !1277
  %499 = load ptr, ptr %21, align 8, !dbg !1277
  %500 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %499, i32 0, i32 1, !dbg !1277
  %501 = getelementptr inbounds %struct.prev, ptr %500, i32 0, i32 0, !dbg !1277
  store ptr %498, ptr %501, align 8, !dbg !1277
  %502 = load ptr, ptr %7, align 8, !dbg !1277
  %503 = getelementptr inbounds %struct.httrackp, ptr %502, i32 0, i32 98, !dbg !1277
  %504 = load ptr, ptr %503, align 8, !dbg !1277
  %505 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %504, i32 0, i32 13, !dbg !1277
  %506 = getelementptr inbounds %struct.check_mime, ptr %505, i32 0, i32 1, !dbg !1277
  %507 = load ptr, ptr %506, align 8, !dbg !1277
  %508 = load ptr, ptr %21, align 8, !dbg !1277
  %509 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %508, i32 0, i32 1, !dbg !1277
  %510 = getelementptr inbounds %struct.prev, ptr %509, i32 0, i32 1, !dbg !1277
  store ptr %507, ptr %510, align 8, !dbg !1277
  %511 = load ptr, ptr %7, align 8, !dbg !1277
  %512 = getelementptr inbounds %struct.httrackp, ptr %511, i32 0, i32 98, !dbg !1277
  %513 = load ptr, ptr %512, align 8, !dbg !1277
  %514 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %513, i32 0, i32 13, !dbg !1277
  %515 = getelementptr inbounds %struct.check_mime, ptr %514, i32 0, i32 0, !dbg !1277
  store ptr @htsshow_check_mime, ptr %515, align 8, !dbg !1277
  %516 = load ptr, ptr %21, align 8, !dbg !1277
  %517 = load ptr, ptr %7, align 8, !dbg !1277
  %518 = getelementptr inbounds %struct.httrackp, ptr %517, i32 0, i32 98, !dbg !1277
  %519 = load ptr, ptr %518, align 8, !dbg !1277
  %520 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %519, i32 0, i32 13, !dbg !1277
  %521 = getelementptr inbounds %struct.check_mime, ptr %520, i32 0, i32 1, !dbg !1277
  store ptr %516, ptr %521, align 8, !dbg !1277
  br label %522, !dbg !1277

522:                                              ; preds = %489
  br label %523, !dbg !1278

523:                                              ; preds = %522
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1279, metadata !DIExpression()), !dbg !1281
  %524 = call ptr @hts_malloc(i64 noundef 24), !dbg !1281
  store ptr %524, ptr %22, align 8, !dbg !1281
  %525 = load ptr, ptr %22, align 8, !dbg !1281
  %526 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %525, i32 0, i32 0, !dbg !1281
  store ptr null, ptr %526, align 8, !dbg !1281
  %527 = load ptr, ptr %7, align 8, !dbg !1281
  %528 = getelementptr inbounds %struct.httrackp, ptr %527, i32 0, i32 98, !dbg !1281
  %529 = load ptr, ptr %528, align 8, !dbg !1281
  %530 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %529, i32 0, i32 14, !dbg !1281
  %531 = getelementptr inbounds %struct.pause, ptr %530, i32 0, i32 0, !dbg !1281
  %532 = load ptr, ptr %531, align 8, !dbg !1281
  %533 = load ptr, ptr %22, align 8, !dbg !1281
  %534 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %533, i32 0, i32 1, !dbg !1281
  %535 = getelementptr inbounds %struct.prev, ptr %534, i32 0, i32 0, !dbg !1281
  store ptr %532, ptr %535, align 8, !dbg !1281
  %536 = load ptr, ptr %7, align 8, !dbg !1281
  %537 = getelementptr inbounds %struct.httrackp, ptr %536, i32 0, i32 98, !dbg !1281
  %538 = load ptr, ptr %537, align 8, !dbg !1281
  %539 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %538, i32 0, i32 14, !dbg !1281
  %540 = getelementptr inbounds %struct.pause, ptr %539, i32 0, i32 1, !dbg !1281
  %541 = load ptr, ptr %540, align 8, !dbg !1281
  %542 = load ptr, ptr %22, align 8, !dbg !1281
  %543 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %542, i32 0, i32 1, !dbg !1281
  %544 = getelementptr inbounds %struct.prev, ptr %543, i32 0, i32 1, !dbg !1281
  store ptr %541, ptr %544, align 8, !dbg !1281
  %545 = load ptr, ptr %7, align 8, !dbg !1281
  %546 = getelementptr inbounds %struct.httrackp, ptr %545, i32 0, i32 98, !dbg !1281
  %547 = load ptr, ptr %546, align 8, !dbg !1281
  %548 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %547, i32 0, i32 14, !dbg !1281
  %549 = getelementptr inbounds %struct.pause, ptr %548, i32 0, i32 0, !dbg !1281
  store ptr @htsshow_pause, ptr %549, align 8, !dbg !1281
  %550 = load ptr, ptr %22, align 8, !dbg !1281
  %551 = load ptr, ptr %7, align 8, !dbg !1281
  %552 = getelementptr inbounds %struct.httrackp, ptr %551, i32 0, i32 98, !dbg !1281
  %553 = load ptr, ptr %552, align 8, !dbg !1281
  %554 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %553, i32 0, i32 14, !dbg !1281
  %555 = getelementptr inbounds %struct.pause, ptr %554, i32 0, i32 1, !dbg !1281
  store ptr %550, ptr %555, align 8, !dbg !1281
  br label %556, !dbg !1281

556:                                              ; preds = %523
  br label %557, !dbg !1282

557:                                              ; preds = %556
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1283, metadata !DIExpression()), !dbg !1285
  %558 = call ptr @hts_malloc(i64 noundef 24), !dbg !1285
  store ptr %558, ptr %23, align 8, !dbg !1285
  %559 = load ptr, ptr %23, align 8, !dbg !1285
  %560 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %559, i32 0, i32 0, !dbg !1285
  store ptr null, ptr %560, align 8, !dbg !1285
  %561 = load ptr, ptr %7, align 8, !dbg !1285
  %562 = getelementptr inbounds %struct.httrackp, ptr %561, i32 0, i32 98, !dbg !1285
  %563 = load ptr, ptr %562, align 8, !dbg !1285
  %564 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %563, i32 0, i32 15, !dbg !1285
  %565 = getelementptr inbounds %struct.filesave, ptr %564, i32 0, i32 0, !dbg !1285
  %566 = load ptr, ptr %565, align 8, !dbg !1285
  %567 = load ptr, ptr %23, align 8, !dbg !1285
  %568 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %567, i32 0, i32 1, !dbg !1285
  %569 = getelementptr inbounds %struct.prev, ptr %568, i32 0, i32 0, !dbg !1285
  store ptr %566, ptr %569, align 8, !dbg !1285
  %570 = load ptr, ptr %7, align 8, !dbg !1285
  %571 = getelementptr inbounds %struct.httrackp, ptr %570, i32 0, i32 98, !dbg !1285
  %572 = load ptr, ptr %571, align 8, !dbg !1285
  %573 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %572, i32 0, i32 15, !dbg !1285
  %574 = getelementptr inbounds %struct.filesave, ptr %573, i32 0, i32 1, !dbg !1285
  %575 = load ptr, ptr %574, align 8, !dbg !1285
  %576 = load ptr, ptr %23, align 8, !dbg !1285
  %577 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %576, i32 0, i32 1, !dbg !1285
  %578 = getelementptr inbounds %struct.prev, ptr %577, i32 0, i32 1, !dbg !1285
  store ptr %575, ptr %578, align 8, !dbg !1285
  %579 = load ptr, ptr %7, align 8, !dbg !1285
  %580 = getelementptr inbounds %struct.httrackp, ptr %579, i32 0, i32 98, !dbg !1285
  %581 = load ptr, ptr %580, align 8, !dbg !1285
  %582 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %581, i32 0, i32 15, !dbg !1285
  %583 = getelementptr inbounds %struct.filesave, ptr %582, i32 0, i32 0, !dbg !1285
  store ptr @htsshow_filesave, ptr %583, align 8, !dbg !1285
  %584 = load ptr, ptr %23, align 8, !dbg !1285
  %585 = load ptr, ptr %7, align 8, !dbg !1285
  %586 = getelementptr inbounds %struct.httrackp, ptr %585, i32 0, i32 98, !dbg !1285
  %587 = load ptr, ptr %586, align 8, !dbg !1285
  %588 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %587, i32 0, i32 15, !dbg !1285
  %589 = getelementptr inbounds %struct.filesave, ptr %588, i32 0, i32 1, !dbg !1285
  store ptr %584, ptr %589, align 8, !dbg !1285
  br label %590, !dbg !1285

590:                                              ; preds = %557
  br label %591, !dbg !1286

591:                                              ; preds = %590
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1287, metadata !DIExpression()), !dbg !1289
  %592 = call ptr @hts_malloc(i64 noundef 24), !dbg !1289
  store ptr %592, ptr %24, align 8, !dbg !1289
  %593 = load ptr, ptr %24, align 8, !dbg !1289
  %594 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %593, i32 0, i32 0, !dbg !1289
  store ptr null, ptr %594, align 8, !dbg !1289
  %595 = load ptr, ptr %7, align 8, !dbg !1289
  %596 = getelementptr inbounds %struct.httrackp, ptr %595, i32 0, i32 98, !dbg !1289
  %597 = load ptr, ptr %596, align 8, !dbg !1289
  %598 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %597, i32 0, i32 16, !dbg !1289
  %599 = getelementptr inbounds %struct.filesave2, ptr %598, i32 0, i32 0, !dbg !1289
  %600 = load ptr, ptr %599, align 8, !dbg !1289
  %601 = load ptr, ptr %24, align 8, !dbg !1289
  %602 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %601, i32 0, i32 1, !dbg !1289
  %603 = getelementptr inbounds %struct.prev, ptr %602, i32 0, i32 0, !dbg !1289
  store ptr %600, ptr %603, align 8, !dbg !1289
  %604 = load ptr, ptr %7, align 8, !dbg !1289
  %605 = getelementptr inbounds %struct.httrackp, ptr %604, i32 0, i32 98, !dbg !1289
  %606 = load ptr, ptr %605, align 8, !dbg !1289
  %607 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %606, i32 0, i32 16, !dbg !1289
  %608 = getelementptr inbounds %struct.filesave2, ptr %607, i32 0, i32 1, !dbg !1289
  %609 = load ptr, ptr %608, align 8, !dbg !1289
  %610 = load ptr, ptr %24, align 8, !dbg !1289
  %611 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %610, i32 0, i32 1, !dbg !1289
  %612 = getelementptr inbounds %struct.prev, ptr %611, i32 0, i32 1, !dbg !1289
  store ptr %609, ptr %612, align 8, !dbg !1289
  %613 = load ptr, ptr %7, align 8, !dbg !1289
  %614 = getelementptr inbounds %struct.httrackp, ptr %613, i32 0, i32 98, !dbg !1289
  %615 = load ptr, ptr %614, align 8, !dbg !1289
  %616 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %615, i32 0, i32 16, !dbg !1289
  %617 = getelementptr inbounds %struct.filesave2, ptr %616, i32 0, i32 0, !dbg !1289
  store ptr @htsshow_filesave2, ptr %617, align 8, !dbg !1289
  %618 = load ptr, ptr %24, align 8, !dbg !1289
  %619 = load ptr, ptr %7, align 8, !dbg !1289
  %620 = getelementptr inbounds %struct.httrackp, ptr %619, i32 0, i32 98, !dbg !1289
  %621 = load ptr, ptr %620, align 8, !dbg !1289
  %622 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %621, i32 0, i32 16, !dbg !1289
  %623 = getelementptr inbounds %struct.filesave2, ptr %622, i32 0, i32 1, !dbg !1289
  store ptr %618, ptr %623, align 8, !dbg !1289
  br label %624, !dbg !1289

624:                                              ; preds = %591
  br label %625, !dbg !1290

625:                                              ; preds = %624
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1291, metadata !DIExpression()), !dbg !1293
  %626 = call ptr @hts_malloc(i64 noundef 24), !dbg !1293
  store ptr %626, ptr %25, align 8, !dbg !1293
  %627 = load ptr, ptr %25, align 8, !dbg !1293
  %628 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %627, i32 0, i32 0, !dbg !1293
  store ptr null, ptr %628, align 8, !dbg !1293
  %629 = load ptr, ptr %7, align 8, !dbg !1293
  %630 = getelementptr inbounds %struct.httrackp, ptr %629, i32 0, i32 98, !dbg !1293
  %631 = load ptr, ptr %630, align 8, !dbg !1293
  %632 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %631, i32 0, i32 17, !dbg !1293
  %633 = getelementptr inbounds %struct.linkdetected, ptr %632, i32 0, i32 0, !dbg !1293
  %634 = load ptr, ptr %633, align 8, !dbg !1293
  %635 = load ptr, ptr %25, align 8, !dbg !1293
  %636 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %635, i32 0, i32 1, !dbg !1293
  %637 = getelementptr inbounds %struct.prev, ptr %636, i32 0, i32 0, !dbg !1293
  store ptr %634, ptr %637, align 8, !dbg !1293
  %638 = load ptr, ptr %7, align 8, !dbg !1293
  %639 = getelementptr inbounds %struct.httrackp, ptr %638, i32 0, i32 98, !dbg !1293
  %640 = load ptr, ptr %639, align 8, !dbg !1293
  %641 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %640, i32 0, i32 17, !dbg !1293
  %642 = getelementptr inbounds %struct.linkdetected, ptr %641, i32 0, i32 1, !dbg !1293
  %643 = load ptr, ptr %642, align 8, !dbg !1293
  %644 = load ptr, ptr %25, align 8, !dbg !1293
  %645 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %644, i32 0, i32 1, !dbg !1293
  %646 = getelementptr inbounds %struct.prev, ptr %645, i32 0, i32 1, !dbg !1293
  store ptr %643, ptr %646, align 8, !dbg !1293
  %647 = load ptr, ptr %7, align 8, !dbg !1293
  %648 = getelementptr inbounds %struct.httrackp, ptr %647, i32 0, i32 98, !dbg !1293
  %649 = load ptr, ptr %648, align 8, !dbg !1293
  %650 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %649, i32 0, i32 17, !dbg !1293
  %651 = getelementptr inbounds %struct.linkdetected, ptr %650, i32 0, i32 0, !dbg !1293
  store ptr @htsshow_linkdetected, ptr %651, align 8, !dbg !1293
  %652 = load ptr, ptr %25, align 8, !dbg !1293
  %653 = load ptr, ptr %7, align 8, !dbg !1293
  %654 = getelementptr inbounds %struct.httrackp, ptr %653, i32 0, i32 98, !dbg !1293
  %655 = load ptr, ptr %654, align 8, !dbg !1293
  %656 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %655, i32 0, i32 17, !dbg !1293
  %657 = getelementptr inbounds %struct.linkdetected, ptr %656, i32 0, i32 1, !dbg !1293
  store ptr %652, ptr %657, align 8, !dbg !1293
  br label %658, !dbg !1293

658:                                              ; preds = %625
  br label %659, !dbg !1294

659:                                              ; preds = %658
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1295, metadata !DIExpression()), !dbg !1297
  %660 = call ptr @hts_malloc(i64 noundef 24), !dbg !1297
  store ptr %660, ptr %26, align 8, !dbg !1297
  %661 = load ptr, ptr %26, align 8, !dbg !1297
  %662 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %661, i32 0, i32 0, !dbg !1297
  store ptr null, ptr %662, align 8, !dbg !1297
  %663 = load ptr, ptr %7, align 8, !dbg !1297
  %664 = getelementptr inbounds %struct.httrackp, ptr %663, i32 0, i32 98, !dbg !1297
  %665 = load ptr, ptr %664, align 8, !dbg !1297
  %666 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %665, i32 0, i32 18, !dbg !1297
  %667 = getelementptr inbounds %struct.linkdetected2, ptr %666, i32 0, i32 0, !dbg !1297
  %668 = load ptr, ptr %667, align 8, !dbg !1297
  %669 = load ptr, ptr %26, align 8, !dbg !1297
  %670 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %669, i32 0, i32 1, !dbg !1297
  %671 = getelementptr inbounds %struct.prev, ptr %670, i32 0, i32 0, !dbg !1297
  store ptr %668, ptr %671, align 8, !dbg !1297
  %672 = load ptr, ptr %7, align 8, !dbg !1297
  %673 = getelementptr inbounds %struct.httrackp, ptr %672, i32 0, i32 98, !dbg !1297
  %674 = load ptr, ptr %673, align 8, !dbg !1297
  %675 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %674, i32 0, i32 18, !dbg !1297
  %676 = getelementptr inbounds %struct.linkdetected2, ptr %675, i32 0, i32 1, !dbg !1297
  %677 = load ptr, ptr %676, align 8, !dbg !1297
  %678 = load ptr, ptr %26, align 8, !dbg !1297
  %679 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %678, i32 0, i32 1, !dbg !1297
  %680 = getelementptr inbounds %struct.prev, ptr %679, i32 0, i32 1, !dbg !1297
  store ptr %677, ptr %680, align 8, !dbg !1297
  %681 = load ptr, ptr %7, align 8, !dbg !1297
  %682 = getelementptr inbounds %struct.httrackp, ptr %681, i32 0, i32 98, !dbg !1297
  %683 = load ptr, ptr %682, align 8, !dbg !1297
  %684 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %683, i32 0, i32 18, !dbg !1297
  %685 = getelementptr inbounds %struct.linkdetected2, ptr %684, i32 0, i32 0, !dbg !1297
  store ptr @htsshow_linkdetected2, ptr %685, align 8, !dbg !1297
  %686 = load ptr, ptr %26, align 8, !dbg !1297
  %687 = load ptr, ptr %7, align 8, !dbg !1297
  %688 = getelementptr inbounds %struct.httrackp, ptr %687, i32 0, i32 98, !dbg !1297
  %689 = load ptr, ptr %688, align 8, !dbg !1297
  %690 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %689, i32 0, i32 18, !dbg !1297
  %691 = getelementptr inbounds %struct.linkdetected2, ptr %690, i32 0, i32 1, !dbg !1297
  store ptr %686, ptr %691, align 8, !dbg !1297
  br label %692, !dbg !1297

692:                                              ; preds = %659
  br label %693, !dbg !1298

693:                                              ; preds = %692
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1299, metadata !DIExpression()), !dbg !1301
  %694 = call ptr @hts_malloc(i64 noundef 24), !dbg !1301
  store ptr %694, ptr %27, align 8, !dbg !1301
  %695 = load ptr, ptr %27, align 8, !dbg !1301
  %696 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %695, i32 0, i32 0, !dbg !1301
  store ptr null, ptr %696, align 8, !dbg !1301
  %697 = load ptr, ptr %7, align 8, !dbg !1301
  %698 = getelementptr inbounds %struct.httrackp, ptr %697, i32 0, i32 98, !dbg !1301
  %699 = load ptr, ptr %698, align 8, !dbg !1301
  %700 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %699, i32 0, i32 19, !dbg !1301
  %701 = getelementptr inbounds %struct.xfrstatus, ptr %700, i32 0, i32 0, !dbg !1301
  %702 = load ptr, ptr %701, align 8, !dbg !1301
  %703 = load ptr, ptr %27, align 8, !dbg !1301
  %704 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %703, i32 0, i32 1, !dbg !1301
  %705 = getelementptr inbounds %struct.prev, ptr %704, i32 0, i32 0, !dbg !1301
  store ptr %702, ptr %705, align 8, !dbg !1301
  %706 = load ptr, ptr %7, align 8, !dbg !1301
  %707 = getelementptr inbounds %struct.httrackp, ptr %706, i32 0, i32 98, !dbg !1301
  %708 = load ptr, ptr %707, align 8, !dbg !1301
  %709 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %708, i32 0, i32 19, !dbg !1301
  %710 = getelementptr inbounds %struct.xfrstatus, ptr %709, i32 0, i32 1, !dbg !1301
  %711 = load ptr, ptr %710, align 8, !dbg !1301
  %712 = load ptr, ptr %27, align 8, !dbg !1301
  %713 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %712, i32 0, i32 1, !dbg !1301
  %714 = getelementptr inbounds %struct.prev, ptr %713, i32 0, i32 1, !dbg !1301
  store ptr %711, ptr %714, align 8, !dbg !1301
  %715 = load ptr, ptr %7, align 8, !dbg !1301
  %716 = getelementptr inbounds %struct.httrackp, ptr %715, i32 0, i32 98, !dbg !1301
  %717 = load ptr, ptr %716, align 8, !dbg !1301
  %718 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %717, i32 0, i32 19, !dbg !1301
  %719 = getelementptr inbounds %struct.xfrstatus, ptr %718, i32 0, i32 0, !dbg !1301
  store ptr @htsshow_xfrstatus, ptr %719, align 8, !dbg !1301
  %720 = load ptr, ptr %27, align 8, !dbg !1301
  %721 = load ptr, ptr %7, align 8, !dbg !1301
  %722 = getelementptr inbounds %struct.httrackp, ptr %721, i32 0, i32 98, !dbg !1301
  %723 = load ptr, ptr %722, align 8, !dbg !1301
  %724 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %723, i32 0, i32 19, !dbg !1301
  %725 = getelementptr inbounds %struct.xfrstatus, ptr %724, i32 0, i32 1, !dbg !1301
  store ptr %720, ptr %725, align 8, !dbg !1301
  br label %726, !dbg !1301

726:                                              ; preds = %693
  br label %727, !dbg !1302

727:                                              ; preds = %726
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1303, metadata !DIExpression()), !dbg !1305
  %728 = call ptr @hts_malloc(i64 noundef 24), !dbg !1305
  store ptr %728, ptr %28, align 8, !dbg !1305
  %729 = load ptr, ptr %28, align 8, !dbg !1305
  %730 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %729, i32 0, i32 0, !dbg !1305
  store ptr null, ptr %730, align 8, !dbg !1305
  %731 = load ptr, ptr %7, align 8, !dbg !1305
  %732 = getelementptr inbounds %struct.httrackp, ptr %731, i32 0, i32 98, !dbg !1305
  %733 = load ptr, ptr %732, align 8, !dbg !1305
  %734 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %733, i32 0, i32 20, !dbg !1305
  %735 = getelementptr inbounds %struct.savename, ptr %734, i32 0, i32 0, !dbg !1305
  %736 = load ptr, ptr %735, align 8, !dbg !1305
  %737 = load ptr, ptr %28, align 8, !dbg !1305
  %738 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %737, i32 0, i32 1, !dbg !1305
  %739 = getelementptr inbounds %struct.prev, ptr %738, i32 0, i32 0, !dbg !1305
  store ptr %736, ptr %739, align 8, !dbg !1305
  %740 = load ptr, ptr %7, align 8, !dbg !1305
  %741 = getelementptr inbounds %struct.httrackp, ptr %740, i32 0, i32 98, !dbg !1305
  %742 = load ptr, ptr %741, align 8, !dbg !1305
  %743 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %742, i32 0, i32 20, !dbg !1305
  %744 = getelementptr inbounds %struct.savename, ptr %743, i32 0, i32 1, !dbg !1305
  %745 = load ptr, ptr %744, align 8, !dbg !1305
  %746 = load ptr, ptr %28, align 8, !dbg !1305
  %747 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %746, i32 0, i32 1, !dbg !1305
  %748 = getelementptr inbounds %struct.prev, ptr %747, i32 0, i32 1, !dbg !1305
  store ptr %745, ptr %748, align 8, !dbg !1305
  %749 = load ptr, ptr %7, align 8, !dbg !1305
  %750 = getelementptr inbounds %struct.httrackp, ptr %749, i32 0, i32 98, !dbg !1305
  %751 = load ptr, ptr %750, align 8, !dbg !1305
  %752 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %751, i32 0, i32 20, !dbg !1305
  %753 = getelementptr inbounds %struct.savename, ptr %752, i32 0, i32 0, !dbg !1305
  store ptr @htsshow_savename, ptr %753, align 8, !dbg !1305
  %754 = load ptr, ptr %28, align 8, !dbg !1305
  %755 = load ptr, ptr %7, align 8, !dbg !1305
  %756 = getelementptr inbounds %struct.httrackp, ptr %755, i32 0, i32 98, !dbg !1305
  %757 = load ptr, ptr %756, align 8, !dbg !1305
  %758 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %757, i32 0, i32 20, !dbg !1305
  %759 = getelementptr inbounds %struct.savename, ptr %758, i32 0, i32 1, !dbg !1305
  store ptr %754, ptr %759, align 8, !dbg !1305
  br label %760, !dbg !1305

760:                                              ; preds = %727
  br label %761, !dbg !1306

761:                                              ; preds = %760
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1307, metadata !DIExpression()), !dbg !1309
  %762 = call ptr @hts_malloc(i64 noundef 24), !dbg !1309
  store ptr %762, ptr %29, align 8, !dbg !1309
  %763 = load ptr, ptr %29, align 8, !dbg !1309
  %764 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %763, i32 0, i32 0, !dbg !1309
  store ptr null, ptr %764, align 8, !dbg !1309
  %765 = load ptr, ptr %7, align 8, !dbg !1309
  %766 = getelementptr inbounds %struct.httrackp, ptr %765, i32 0, i32 98, !dbg !1309
  %767 = load ptr, ptr %766, align 8, !dbg !1309
  %768 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %767, i32 0, i32 21, !dbg !1309
  %769 = getelementptr inbounds %struct.sendhead, ptr %768, i32 0, i32 0, !dbg !1309
  %770 = load ptr, ptr %769, align 8, !dbg !1309
  %771 = load ptr, ptr %29, align 8, !dbg !1309
  %772 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %771, i32 0, i32 1, !dbg !1309
  %773 = getelementptr inbounds %struct.prev, ptr %772, i32 0, i32 0, !dbg !1309
  store ptr %770, ptr %773, align 8, !dbg !1309
  %774 = load ptr, ptr %7, align 8, !dbg !1309
  %775 = getelementptr inbounds %struct.httrackp, ptr %774, i32 0, i32 98, !dbg !1309
  %776 = load ptr, ptr %775, align 8, !dbg !1309
  %777 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %776, i32 0, i32 21, !dbg !1309
  %778 = getelementptr inbounds %struct.sendhead, ptr %777, i32 0, i32 1, !dbg !1309
  %779 = load ptr, ptr %778, align 8, !dbg !1309
  %780 = load ptr, ptr %29, align 8, !dbg !1309
  %781 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %780, i32 0, i32 1, !dbg !1309
  %782 = getelementptr inbounds %struct.prev, ptr %781, i32 0, i32 1, !dbg !1309
  store ptr %779, ptr %782, align 8, !dbg !1309
  %783 = load ptr, ptr %7, align 8, !dbg !1309
  %784 = getelementptr inbounds %struct.httrackp, ptr %783, i32 0, i32 98, !dbg !1309
  %785 = load ptr, ptr %784, align 8, !dbg !1309
  %786 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %785, i32 0, i32 21, !dbg !1309
  %787 = getelementptr inbounds %struct.sendhead, ptr %786, i32 0, i32 0, !dbg !1309
  store ptr @htsshow_sendheader, ptr %787, align 8, !dbg !1309
  %788 = load ptr, ptr %29, align 8, !dbg !1309
  %789 = load ptr, ptr %7, align 8, !dbg !1309
  %790 = getelementptr inbounds %struct.httrackp, ptr %789, i32 0, i32 98, !dbg !1309
  %791 = load ptr, ptr %790, align 8, !dbg !1309
  %792 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %791, i32 0, i32 21, !dbg !1309
  %793 = getelementptr inbounds %struct.sendhead, ptr %792, i32 0, i32 1, !dbg !1309
  store ptr %788, ptr %793, align 8, !dbg !1309
  br label %794, !dbg !1309

794:                                              ; preds = %761
  br label %795, !dbg !1310

795:                                              ; preds = %794
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1311, metadata !DIExpression()), !dbg !1313
  %796 = call ptr @hts_malloc(i64 noundef 24), !dbg !1313
  store ptr %796, ptr %30, align 8, !dbg !1313
  %797 = load ptr, ptr %30, align 8, !dbg !1313
  %798 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %797, i32 0, i32 0, !dbg !1313
  store ptr null, ptr %798, align 8, !dbg !1313
  %799 = load ptr, ptr %7, align 8, !dbg !1313
  %800 = getelementptr inbounds %struct.httrackp, ptr %799, i32 0, i32 98, !dbg !1313
  %801 = load ptr, ptr %800, align 8, !dbg !1313
  %802 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %801, i32 0, i32 22, !dbg !1313
  %803 = getelementptr inbounds %struct.receivehead, ptr %802, i32 0, i32 0, !dbg !1313
  %804 = load ptr, ptr %803, align 8, !dbg !1313
  %805 = load ptr, ptr %30, align 8, !dbg !1313
  %806 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %805, i32 0, i32 1, !dbg !1313
  %807 = getelementptr inbounds %struct.prev, ptr %806, i32 0, i32 0, !dbg !1313
  store ptr %804, ptr %807, align 8, !dbg !1313
  %808 = load ptr, ptr %7, align 8, !dbg !1313
  %809 = getelementptr inbounds %struct.httrackp, ptr %808, i32 0, i32 98, !dbg !1313
  %810 = load ptr, ptr %809, align 8, !dbg !1313
  %811 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %810, i32 0, i32 22, !dbg !1313
  %812 = getelementptr inbounds %struct.receivehead, ptr %811, i32 0, i32 1, !dbg !1313
  %813 = load ptr, ptr %812, align 8, !dbg !1313
  %814 = load ptr, ptr %30, align 8, !dbg !1313
  %815 = getelementptr inbounds %struct.t_hts_callbackarg, ptr %814, i32 0, i32 1, !dbg !1313
  %816 = getelementptr inbounds %struct.prev, ptr %815, i32 0, i32 1, !dbg !1313
  store ptr %813, ptr %816, align 8, !dbg !1313
  %817 = load ptr, ptr %7, align 8, !dbg !1313
  %818 = getelementptr inbounds %struct.httrackp, ptr %817, i32 0, i32 98, !dbg !1313
  %819 = load ptr, ptr %818, align 8, !dbg !1313
  %820 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %819, i32 0, i32 22, !dbg !1313
  %821 = getelementptr inbounds %struct.receivehead, ptr %820, i32 0, i32 0, !dbg !1313
  store ptr @htsshow_receiveheader, ptr %821, align 8, !dbg !1313
  %822 = load ptr, ptr %30, align 8, !dbg !1313
  %823 = load ptr, ptr %7, align 8, !dbg !1313
  %824 = getelementptr inbounds %struct.httrackp, ptr %823, i32 0, i32 98, !dbg !1313
  %825 = load ptr, ptr %824, align 8, !dbg !1313
  %826 = getelementptr inbounds %struct.t_hts_htmlcheck_callbacks, ptr %825, i32 0, i32 22, !dbg !1313
  %827 = getelementptr inbounds %struct.receivehead, ptr %826, i32 0, i32 1, !dbg !1313
  store ptr %822, ptr %827, align 8, !dbg !1313
  br label %828, !dbg !1313

828:                                              ; preds = %795
  %829 = load i32, ptr %4, align 4, !dbg !1314
  %830 = load ptr, ptr %5, align 8, !dbg !1315
  %831 = load ptr, ptr %7, align 8, !dbg !1316
  %832 = call i32 @hts_main2(i32 noundef %829, ptr noundef %830, ptr noundef %831), !dbg !1317
  store i32 %832, ptr %6, align 4, !dbg !1318
  %833 = load i32, ptr %6, align 4, !dbg !1319
  %834 = icmp ne i32 %833, 0, !dbg !1319
  br i1 %834, label %835, label %840, !dbg !1321

835:                                              ; preds = %828
  %836 = load ptr, ptr @stderr, align 8, !dbg !1322
  %837 = load ptr, ptr %7, align 8, !dbg !1324
  %838 = call ptr @hts_errmsg(ptr noundef %837), !dbg !1325
  %839 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %836, ptr noundef @.str.5, ptr noundef %838), !dbg !1326
  br label %840, !dbg !1327

840:                                              ; preds = %835, %828
  store ptr null, ptr @global_opt, align 8, !dbg !1328
  %841 = load ptr, ptr %7, align 8, !dbg !1329
  call void @hts_free_opt(ptr noundef %841), !dbg !1330
  call void @htsthread_wait(), !dbg !1331
  %842 = call i32 @hts_uninit(), !dbg !1332
  %843 = load i32, ptr %6, align 4, !dbg !1333
  ret i32 %843, !dbg !1334
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_handlers() #0 !dbg !1335 {
  %1 = call ptr @signal(i32 noundef 20, ptr noundef @sig_back) #10, !dbg !1338
  %2 = call ptr @signal(i32 noundef 15, ptr noundef @sig_finish) #10, !dbg !1339
  %3 = call ptr @signal(i32 noundef 2, ptr noundef @sig_leave) #10, !dbg !1340
  %4 = call ptr @signal(i32 noundef 13, ptr noundef @sig_brpipe) #10, !dbg !1341
  %5 = call ptr @signal(i32 noundef 17, ptr noundef @sig_ignore) #10, !dbg !1342
  %6 = call ptr @signal(i32 noundef 6, ptr noundef @sig_fatal) #10, !dbg !1343
  %7 = call ptr @signal(i32 noundef 7, ptr noundef @sig_fatal) #10, !dbg !1344
  %8 = call ptr @signal(i32 noundef 4, ptr noundef @sig_fatal) #10, !dbg !1345
  %9 = call ptr @signal(i32 noundef 11, ptr noundef @sig_fatal) #10, !dbg !1346
  %10 = call ptr @signal(i32 noundef 16, ptr noundef @sig_fatal) #10, !dbg !1347
  ret void, !dbg !1348
}

declare i32 @hts_init() #2

declare i64 @hts_sizeof_opt() #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @hts_version() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abortf_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1349 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1352, metadata !DIExpression()), !dbg !1353
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1354, metadata !DIExpression()), !dbg !1355
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1356, metadata !DIExpression()), !dbg !1357
  %7 = load ptr, ptr %4, align 8, !dbg !1358
  %8 = load ptr, ptr %5, align 8, !dbg !1359
  %9 = load i32, ptr %6, align 4, !dbg !1360
  call void @log_abort_(ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !1361
  call void @abort() #9, !dbg !1362
  unreachable, !dbg !1362
}

declare ptr @hts_create_opt() #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare ptr @hts_malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htsshow_init(ptr noundef %0) #0 !dbg !1363 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1364, metadata !DIExpression()), !dbg !1365
  ret void, !dbg !1366
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htsshow_uninit(ptr noundef %0) #0 !dbg !1367 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1368, metadata !DIExpression()), !dbg !1369
  ret void, !dbg !1370
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_start(ptr noundef %0, ptr noundef %1) #0 !dbg !1371 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1372, metadata !DIExpression()), !dbg !1373
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1374, metadata !DIExpression()), !dbg !1375
  store i32 0, ptr @use_show, align 4, !dbg !1376
  %5 = load ptr, ptr %4, align 8, !dbg !1377
  %6 = getelementptr inbounds %struct.httrackp, ptr %5, i32 0, i32 71, !dbg !1379
  %7 = load i32, ptr %6, align 4, !dbg !1379
  %8 = icmp eq i32 %7, 2, !dbg !1380
  br i1 %8, label %9, label %10, !dbg !1381

9:                                                ; preds = %2
  store i32 1, ptr @use_show, align 4, !dbg !1382
  call void @vt_clear(), !dbg !1384
  br label %10, !dbg !1385

10:                                               ; preds = %9, %2
  ret i32 1, !dbg !1386
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_end(ptr noundef %0, ptr noundef %1) #0 !dbg !1387 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1388, metadata !DIExpression()), !dbg !1389
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1390, metadata !DIExpression()), !dbg !1391
  ret i32 1, !dbg !1392
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_chopt(ptr noundef %0, ptr noundef %1) #0 !dbg !1393 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1394, metadata !DIExpression()), !dbg !1395
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1396, metadata !DIExpression()), !dbg !1397
  %5 = load ptr, ptr %3, align 8, !dbg !1398
  %6 = load ptr, ptr %4, align 8, !dbg !1399
  %7 = call i32 @htsshow_start(ptr noundef %5, ptr noundef %6), !dbg !1400
  ret i32 %7, !dbg !1401
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_preprocesshtml(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !1402 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1403, metadata !DIExpression()), !dbg !1404
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1405, metadata !DIExpression()), !dbg !1406
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1407, metadata !DIExpression()), !dbg !1408
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1409, metadata !DIExpression()), !dbg !1410
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1411, metadata !DIExpression()), !dbg !1412
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1413, metadata !DIExpression()), !dbg !1414
  ret i32 1, !dbg !1415
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_postprocesshtml(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !1416 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1417, metadata !DIExpression()), !dbg !1418
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1419, metadata !DIExpression()), !dbg !1420
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1421, metadata !DIExpression()), !dbg !1422
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1423, metadata !DIExpression()), !dbg !1424
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1425, metadata !DIExpression()), !dbg !1426
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1427, metadata !DIExpression()), !dbg !1428
  ret i32 1, !dbg !1429
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_checkhtml(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !1430 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1431, metadata !DIExpression()), !dbg !1432
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1433, metadata !DIExpression()), !dbg !1434
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1435, metadata !DIExpression()), !dbg !1436
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1437, metadata !DIExpression()), !dbg !1438
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1439, metadata !DIExpression()), !dbg !1440
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1441, metadata !DIExpression()), !dbg !1442
  ret i32 1, !dbg !1443
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @htsshow_query(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1127 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1444, metadata !DIExpression()), !dbg !1445
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1446, metadata !DIExpression()), !dbg !1447
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1448, metadata !DIExpression()), !dbg !1449
  %7 = load ptr, ptr %6, align 8, !dbg !1450
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.60, ptr noundef %7), !dbg !1451
  %9 = load ptr, ptr @stdout, align 8, !dbg !1452
  %10 = call i32 @fflush(ptr noundef %9), !dbg !1452
  %11 = load ptr, ptr @stdin, align 8, !dbg !1452
  %12 = call i32 @fflush(ptr noundef %11), !dbg !1452
  %13 = load ptr, ptr @stdin, align 8, !dbg !1454
  %14 = call i32 @linput(ptr noundef %13, ptr noundef @htsshow_query.s, i32 noundef 4), !dbg !1455
  ret ptr @htsshow_query.s, !dbg !1456
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @htsshow_query2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1135 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1457, metadata !DIExpression()), !dbg !1458
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1459, metadata !DIExpression()), !dbg !1460
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1461, metadata !DIExpression()), !dbg !1462
  %7 = load ptr, ptr %6, align 8, !dbg !1463
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.60, ptr noundef %7), !dbg !1464
  %9 = load ptr, ptr @stdout, align 8, !dbg !1465
  %10 = call i32 @fflush(ptr noundef %9), !dbg !1465
  %11 = load ptr, ptr @stdin, align 8, !dbg !1465
  %12 = call i32 @fflush(ptr noundef %11), !dbg !1465
  %13 = load ptr, ptr @stdin, align 8, !dbg !1467
  %14 = call i32 @linput(ptr noundef %13, ptr noundef @htsshow_query2.s, i32 noundef 4), !dbg !1468
  ret ptr @htsshow_query2.s, !dbg !1469
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @htsshow_query3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1138 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1470, metadata !DIExpression()), !dbg !1471
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1472, metadata !DIExpression()), !dbg !1473
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1474, metadata !DIExpression()), !dbg !1475
  %7 = load ptr, ptr %6, align 8, !dbg !1476
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.61, ptr noundef %7), !dbg !1477
  br label %9, !dbg !1478

9:                                                ; preds = %17, %3
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.62), !dbg !1479
  %11 = load ptr, ptr @stdout, align 8, !dbg !1481
  %12 = call i32 @fflush(ptr noundef %11), !dbg !1481
  %13 = load ptr, ptr @stdin, align 8, !dbg !1481
  %14 = call i32 @fflush(ptr noundef %13), !dbg !1481
  %15 = load ptr, ptr @stdin, align 8, !dbg !1483
  %16 = call i32 @linput(ptr noundef %15, ptr noundef @htsshow_query3.line, i32 noundef 200), !dbg !1484
  br label %17, !dbg !1485

17:                                               ; preds = %9
  %18 = load i8, ptr @htsshow_query3.line, align 16, !dbg !1486
  %19 = sext i8 %18 to i32, !dbg !1486
  %20 = icmp ne i32 %19, 0, !dbg !1486
  %21 = xor i1 %20, true, !dbg !1487
  br i1 %21, label %9, label %22, !dbg !1485, !llvm.loop !1488

22:                                               ; preds = %17
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.63), !dbg !1491
  ret ptr @htsshow_query3.line, !dbg !1492
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #0 !dbg !120 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [256 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.strc_int2bytes2, align 8
  %34 = alloca %struct.strc_int2bytes2, align 8
  %35 = alloca %struct.strc_int2bytes2, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca [14 x %struct.t_StatsBuffer], align 16
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca [256 x i8], align 16
  %46 = alloca [2048 x i8], align 16
  %47 = alloca ptr, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1493, metadata !DIExpression()), !dbg !1494
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1495, metadata !DIExpression()), !dbg !1496
  store ptr %2, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1497, metadata !DIExpression()), !dbg !1498
  store i32 %3, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1499, metadata !DIExpression()), !dbg !1500
  store i32 %4, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i32 %5, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1503, metadata !DIExpression()), !dbg !1504
  store i32 %6, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1505, metadata !DIExpression()), !dbg !1506
  store i32 %7, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1507, metadata !DIExpression()), !dbg !1508
  store ptr %8, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1509, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1511, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1513, metadata !DIExpression()), !dbg !1514
  store i64 0, ptr %21, align 8, !dbg !1514
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1515, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1517, metadata !DIExpression()), !dbg !1518
  store i32 -1, ptr %23, align 4, !dbg !1518
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i32 -1, ptr %24, align 4, !dbg !1520
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i32 -1, ptr %25, align 4, !dbg !1522
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i32 -1, ptr %26, align 4, !dbg !1524
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i32 -1, ptr %27, align 4, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1527, metadata !DIExpression()), !dbg !1528
  store i32 -1, ptr %28, align 4, !dbg !1528
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1529, metadata !DIExpression()), !dbg !1530
  store i32 -1, ptr %29, align 4, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1531, metadata !DIExpression()), !dbg !1532
  store i64 -1, ptr %30, align 8, !dbg !1532
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1533, metadata !DIExpression()), !dbg !1534
  store i64 -1, ptr %31, align 8, !dbg !1534
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1535, metadata !DIExpression()), !dbg !1536
  store i32 -1, ptr %32, align 4, !dbg !1536
  %50 = load ptr, ptr %19, align 8, !dbg !1537
  %51 = icmp ne ptr %50, null, !dbg !1537
  br i1 %51, label %52, label %84, !dbg !1539

52:                                               ; preds = %9
  %53 = load ptr, ptr %19, align 8, !dbg !1540
  %54 = getelementptr inbounds %struct.hts_stat_struct, ptr %53, i32 0, i32 10, !dbg !1542
  %55 = load i32, ptr %54, align 4, !dbg !1542
  store i32 %55, ptr %23, align 4, !dbg !1543
  %56 = load ptr, ptr %19, align 8, !dbg !1544
  %57 = getelementptr inbounds %struct.hts_stat_struct, ptr %56, i32 0, i32 11, !dbg !1545
  %58 = load i32, ptr %57, align 8, !dbg !1545
  store i32 %58, ptr %24, align 4, !dbg !1546
  %59 = load ptr, ptr %19, align 8, !dbg !1547
  %60 = getelementptr inbounds %struct.hts_stat_struct, ptr %59, i32 0, i32 16, !dbg !1548
  %61 = load i32, ptr %60, align 4, !dbg !1548
  store i32 %61, ptr %25, align 4, !dbg !1549
  %62 = load ptr, ptr %19, align 8, !dbg !1550
  %63 = getelementptr inbounds %struct.hts_stat_struct, ptr %62, i32 0, i32 18, !dbg !1551
  %64 = load i32, ptr %63, align 4, !dbg !1551
  store i32 %64, ptr %26, align 4, !dbg !1552
  %65 = load ptr, ptr %19, align 8, !dbg !1553
  %66 = getelementptr inbounds %struct.hts_stat_struct, ptr %65, i32 0, i32 19, !dbg !1554
  %67 = load i32, ptr %66, align 8, !dbg !1554
  store i32 %67, ptr %27, align 4, !dbg !1555
  %68 = load ptr, ptr %19, align 8, !dbg !1556
  %69 = getelementptr inbounds %struct.hts_stat_struct, ptr %68, i32 0, i32 20, !dbg !1557
  %70 = load i32, ptr %69, align 4, !dbg !1557
  store i32 %70, ptr %28, align 4, !dbg !1558
  %71 = load ptr, ptr %19, align 8, !dbg !1559
  %72 = getelementptr inbounds %struct.hts_stat_struct, ptr %71, i32 0, i32 15, !dbg !1560
  %73 = load i32, ptr %72, align 8, !dbg !1560
  store i32 %73, ptr %29, align 4, !dbg !1561
  %74 = load ptr, ptr %19, align 8, !dbg !1562
  %75 = getelementptr inbounds %struct.hts_stat_struct, ptr %74, i32 0, i32 22, !dbg !1563
  %76 = load i64, ptr %75, align 8, !dbg !1563
  %77 = trunc i64 %76 to i32, !dbg !1564
  store i32 %77, ptr %32, align 4, !dbg !1565
  %78 = load ptr, ptr %19, align 8, !dbg !1566
  %79 = getelementptr inbounds %struct.hts_stat_struct, ptr %78, i32 0, i32 21, !dbg !1567
  %80 = load i64, ptr %79, align 8, !dbg !1567
  store i64 %80, ptr %30, align 8, !dbg !1568
  %81 = load ptr, ptr %19, align 8, !dbg !1569
  %82 = getelementptr inbounds %struct.hts_stat_struct, ptr %81, i32 0, i32 0, !dbg !1570
  %83 = load i64, ptr %82, align 8, !dbg !1570
  store i64 %83, ptr %31, align 8, !dbg !1571
  br label %84, !dbg !1572

84:                                               ; preds = %52, %9
  %85 = load i32, ptr @use_show, align 4, !dbg !1573
  %86 = icmp ne i32 %85, 0, !dbg !1573
  br i1 %86, label %88, label %87, !dbg !1575

87:                                               ; preds = %84
  store i32 1, ptr %10, align 4, !dbg !1576
  br label %771, !dbg !1576

88:                                               ; preds = %84
  %89 = call i64 @mtime_local(), !dbg !1577
  store i64 %89, ptr %20, align 8, !dbg !1578
  %90 = load i32, ptr %18, align 4, !dbg !1579
  %91 = icmp sgt i32 %90, 0, !dbg !1581
  br i1 %91, label %92, label %102, !dbg !1582

92:                                               ; preds = %88
  %93 = load i64, ptr %31, align 8, !dbg !1583
  %94 = icmp sgt i64 %93, 0, !dbg !1584
  br i1 %94, label %95, label %102, !dbg !1585

95:                                               ; preds = %92
  %96 = load i64, ptr %31, align 8, !dbg !1586
  %97 = load i32, ptr %18, align 4, !dbg !1587
  %98 = sext i32 %97 to i64, !dbg !1587
  %99 = sdiv i64 %96, %98, !dbg !1588
  %100 = trunc i64 %99 to i32, !dbg !1589
  %101 = sext i32 %100 to i64, !dbg !1589
  store i64 %101, ptr %21, align 8, !dbg !1590
  br label %103, !dbg !1591

102:                                              ; preds = %92, %88
  store i64 0, ptr %21, align 8, !dbg !1592
  br label %103

103:                                              ; preds = %102, %95
  %104 = load i64, ptr %30, align 8, !dbg !1593
  %105 = icmp sge i64 %104, 0, !dbg !1595
  br i1 %105, label %106, label %108, !dbg !1596

106:                                              ; preds = %103
  %107 = load i64, ptr %30, align 8, !dbg !1597
  store i64 %107, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 2), align 8, !dbg !1598
  br label %108, !dbg !1599

108:                                              ; preds = %106, %103
  %109 = load i32, ptr %18, align 4, !dbg !1600
  %110 = icmp sge i32 %109, 0, !dbg !1602
  br i1 %110, label %111, label %113, !dbg !1603

111:                                              ; preds = %108
  %112 = load i32, ptr %18, align 4, !dbg !1604
  store i32 %112, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 3), align 8, !dbg !1605
  br label %113, !dbg !1606

113:                                              ; preds = %111, %108
  %114 = load i32, ptr %17, align 4, !dbg !1607
  %115 = icmp sge i32 %114, 0, !dbg !1609
  br i1 %115, label %116, label %118, !dbg !1610

116:                                              ; preds = %113
  %117 = load i32, ptr %17, align 4, !dbg !1611
  store i32 %117, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 5), align 8, !dbg !1612
  br label %118, !dbg !1613

118:                                              ; preds = %116, %113
  %119 = load i32, ptr %16, align 4, !dbg !1614
  %120 = icmp sge i32 %119, 0, !dbg !1616
  br i1 %120, label %121, label %123, !dbg !1617

121:                                              ; preds = %118
  %122 = load i32, ptr %16, align 4, !dbg !1618
  store i32 %122, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 4), align 4, !dbg !1619
  br label %123, !dbg !1620

123:                                              ; preds = %121, %118
  %124 = load i32, ptr %29, align 4, !dbg !1621
  store i32 %124, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 6), align 4, !dbg !1622
  %125 = load i64, ptr %21, align 8, !dbg !1623
  %126 = icmp sgt i64 %125, 0, !dbg !1625
  br i1 %126, label %127, label %130, !dbg !1626

127:                                              ; preds = %123
  %128 = load i64, ptr %21, align 8, !dbg !1627
  %129 = trunc i64 %128 to i32, !dbg !1627
  store i32 %129, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 7), align 8, !dbg !1628
  br label %130, !dbg !1629

130:                                              ; preds = %127, %123
  %131 = load i32, ptr %32, align 4, !dbg !1630
  %132 = icmp sge i32 %131, 0, !dbg !1632
  br i1 %132, label %133, label %135, !dbg !1633

133:                                              ; preds = %130
  %134 = load i32, ptr %32, align 4, !dbg !1634
  store i32 %134, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 8), align 4, !dbg !1635
  br label %135, !dbg !1636

135:                                              ; preds = %133, %130
  %136 = load i32, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 8), align 4, !dbg !1637
  %137 = icmp slt i32 %136, 0, !dbg !1639
  br i1 %137, label %138, label %140, !dbg !1640

138:                                              ; preds = %135
  %139 = load i32, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 7), align 8, !dbg !1641
  store i32 %139, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 8), align 4, !dbg !1642
  br label %140, !dbg !1643

140:                                              ; preds = %138, %135
  %141 = load i32, ptr %28, align 4, !dbg !1644
  %142 = icmp sge i32 %141, 0, !dbg !1646
  br i1 %142, label %143, label %145, !dbg !1647

143:                                              ; preds = %140
  %144 = load i32, ptr %28, align 4, !dbg !1648
  store i32 %144, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 16), align 8, !dbg !1649
  br label %145, !dbg !1650

145:                                              ; preds = %143, %140
  %146 = load i32, ptr %23, align 4, !dbg !1651
  %147 = icmp sge i32 %146, 0, !dbg !1653
  br i1 %147, label %148, label %151, !dbg !1654

148:                                              ; preds = %145
  %149 = load i32, ptr %23, align 4, !dbg !1655
  %150 = sext i32 %149 to i64, !dbg !1655
  store i64 %150, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 10), align 8, !dbg !1656
  br label %151, !dbg !1657

151:                                              ; preds = %148, %145
  %152 = load i32, ptr %24, align 4, !dbg !1658
  %153 = icmp sge i32 %152, 0, !dbg !1660
  br i1 %153, label %154, label %156, !dbg !1661

154:                                              ; preds = %151
  %155 = load i32, ptr %24, align 4, !dbg !1662
  store i32 %155, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 11), align 8, !dbg !1663
  br label %156, !dbg !1664

156:                                              ; preds = %154, %151
  %157 = load i32, ptr %25, align 4, !dbg !1665
  %158 = icmp sge i32 %157, 0, !dbg !1667
  br i1 %158, label %159, label %161, !dbg !1668

159:                                              ; preds = %156
  %160 = load i32, ptr %25, align 4, !dbg !1669
  store i32 %160, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 12), align 4, !dbg !1670
  br label %161, !dbg !1671

161:                                              ; preds = %159, %156
  %162 = load i32, ptr %26, align 4, !dbg !1672
  %163 = icmp sge i32 %162, 0, !dbg !1674
  br i1 %163, label %164, label %166, !dbg !1675

164:                                              ; preds = %161
  %165 = load i32, ptr %26, align 4, !dbg !1676
  store i32 %165, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 13), align 8, !dbg !1677
  br label %166, !dbg !1678

166:                                              ; preds = %164, %161
  %167 = load i32, ptr %27, align 4, !dbg !1679
  %168 = icmp sge i32 %167, 0, !dbg !1681
  br i1 %168, label %169, label %171, !dbg !1682

169:                                              ; preds = %166
  %170 = load i32, ptr %27, align 4, !dbg !1683
  store i32 %170, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 14), align 4, !dbg !1684
  br label %171, !dbg !1685

171:                                              ; preds = %169, %166
  %172 = load i64, ptr %20, align 8, !dbg !1686
  %173 = load i64, ptr @htsshow_loop.prev_mytime, align 8, !dbg !1688
  %174 = sub nsw i64 %172, %173, !dbg !1689
  %175 = icmp sgt i64 %174, 100, !dbg !1690
  br i1 %175, label %181, label %176, !dbg !1691

176:                                              ; preds = %171
  %177 = load i64, ptr %20, align 8, !dbg !1692
  %178 = load i64, ptr @htsshow_loop.prev_mytime, align 8, !dbg !1693
  %179 = sub nsw i64 %177, %178, !dbg !1694
  %180 = icmp slt i64 %179, 0, !dbg !1695
  br i1 %180, label %181, label %770, !dbg !1696

181:                                              ; preds = %176, %171
  call void @llvm.dbg.declare(metadata ptr %33, metadata !1697, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %34, metadata !1708, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %35, metadata !1710, metadata !DIExpression()), !dbg !1711
  %182 = load i64, ptr %20, align 8, !dbg !1712
  store i64 %182, ptr @htsshow_loop.prev_mytime, align 8, !dbg !1713
  %183 = getelementptr inbounds [256 x i8], ptr %22, i64 0, i64 0, !dbg !1714
  store i8 0, ptr %183, align 16, !dbg !1715
  %184 = getelementptr inbounds [256 x i8], ptr %22, i64 0, i64 0, !dbg !1716
  %185 = load i32, ptr %18, align 4, !dbg !1717
  %186 = sext i32 %185 to i64, !dbg !1717
  call void @qsec2str(ptr noundef %184, i64 noundef %186), !dbg !1718
  call void @vt_home(), !dbg !1719
  %187 = load i64, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 2), align 8, !dbg !1720
  %188 = call ptr @int2bytes(ptr noundef %33, i64 noundef %187), !dbg !1721
  %189 = load i32, ptr %16, align 4, !dbg !1722
  %190 = load i32, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 5), align 8, !dbg !1723
  %191 = load i32, ptr %28, align 4, !dbg !1724
  %192 = getelementptr inbounds [256 x i8], ptr %22, i64 0, i64 0, !dbg !1725
  %193 = load i64, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 10), align 8, !dbg !1726
  %194 = trunc i64 %193 to i32, !dbg !1727
  %195 = load i32, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 8), align 4, !dbg !1728
  %196 = sext i32 %195 to i64, !dbg !1729
  %197 = call ptr @int2bytessec(ptr noundef %34, i64 noundef %196), !dbg !1730
  %198 = load i32, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 7), align 8, !dbg !1731
  %199 = sext i32 %198 to i64, !dbg !1732
  %200 = call ptr @int2bytessec(ptr noundef %35, i64 noundef %199), !dbg !1733
  %201 = load i32, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 11), align 8, !dbg !1734
  %202 = load i32, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 6), align 4, !dbg !1735
  %203 = load i32, ptr getelementptr inbounds (%struct.t_InpInfo, ptr @htsshow_loop.SInfo, i32 0, i32 12), align 4, !dbg !1736
  %204 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef %188, i32 noundef %189, i32 noundef %190, i32 noundef %191, ptr noundef %192, i32 noundef %194, ptr noundef %197, ptr noundef %200, i32 noundef %201, i32 noundef %202, i32 noundef %203), !dbg !1737
  %205 = load i32, ptr %15, align 4, !dbg !1738
  %206 = icmp sge i32 %205, 0, !dbg !1740
  br i1 %206, label %207, label %769, !dbg !1741

207:                                              ; preds = %181
  call void @llvm.dbg.declare(metadata ptr %36, metadata !1742, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.declare(metadata ptr %37, metadata !1745, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.declare(metadata ptr %38, metadata !1747, metadata !DIExpression()), !dbg !1748
  store i32 0, ptr %38, align 4, !dbg !1748
  call void @llvm.dbg.declare(metadata ptr %39, metadata !1749, metadata !DIExpression()), !dbg !1750
  store i32 0, ptr %39, align 4, !dbg !1750
  call void @llvm.dbg.declare(metadata ptr %40, metadata !1751, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.declare(metadata ptr %41, metadata !1753, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.declare(metadata ptr %42, metadata !1770, metadata !DIExpression()), !dbg !1772
  store i32 0, ptr %42, align 4, !dbg !1773
  br label %208, !dbg !1775

208:                                              ; preds = %248, %207
  %209 = load i32, ptr %42, align 4, !dbg !1776
  %210 = icmp slt i32 %209, 14, !dbg !1778
  br i1 %210, label %211, label %251, !dbg !1779

211:                                              ; preds = %208
  %212 = load i32, ptr %42, align 4, !dbg !1780
  %213 = sext i32 %212 to i64, !dbg !1780
  %214 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %213, !dbg !1780
  %215 = getelementptr inbounds %struct.t_StatsBuffer, ptr %214, i32 0, i32 2, !dbg !1780
  %216 = getelementptr inbounds [256 x i8], ptr %215, i64 0, i64 0, !dbg !1780
  %217 = call ptr @strcpy_safe_(ptr noundef %216, i64 noundef 256, ptr noundef @.str.12, i64 noundef 1, ptr noundef @.str.13, ptr noundef @.str.3, i32 noundef 441), !dbg !1780
  %218 = load i32, ptr %42, align 4, !dbg !1782
  %219 = sext i32 %218 to i64, !dbg !1782
  %220 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %219, !dbg !1782
  %221 = getelementptr inbounds %struct.t_StatsBuffer, ptr %220, i32 0, i32 0, !dbg !1782
  %222 = getelementptr inbounds [1024 x i8], ptr %221, i64 0, i64 0, !dbg !1782
  %223 = call ptr @strcpy_safe_(ptr noundef %222, i64 noundef 1024, ptr noundef @.str.12, i64 noundef 1, ptr noundef @.str.14, ptr noundef @.str.3, i32 noundef 442), !dbg !1782
  %224 = load i32, ptr %42, align 4, !dbg !1783
  %225 = sext i32 %224 to i64, !dbg !1783
  %226 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %225, !dbg !1783
  %227 = getelementptr inbounds %struct.t_StatsBuffer, ptr %226, i32 0, i32 1, !dbg !1783
  %228 = getelementptr inbounds [1024 x i8], ptr %227, i64 0, i64 0, !dbg !1783
  %229 = call ptr @strcpy_safe_(ptr noundef %228, i64 noundef 1024, ptr noundef @.str.12, i64 noundef 1, ptr noundef @.str.15, ptr noundef @.str.3, i32 noundef 443), !dbg !1783
  %230 = load i32, ptr %42, align 4, !dbg !1784
  %231 = sext i32 %230 to i64, !dbg !1784
  %232 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %231, !dbg !1784
  %233 = getelementptr inbounds %struct.t_StatsBuffer, ptr %232, i32 0, i32 3, !dbg !1784
  %234 = getelementptr inbounds [2048 x i8], ptr %233, i64 0, i64 0, !dbg !1784
  %235 = call ptr @strcpy_safe_(ptr noundef %234, i64 noundef 2048, ptr noundef @.str.12, i64 noundef 1, ptr noundef @.str.16, ptr noundef @.str.3, i32 noundef 444), !dbg !1784
  %236 = load i32, ptr %42, align 4, !dbg !1785
  %237 = sext i32 %236 to i64, !dbg !1786
  %238 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %237, !dbg !1786
  %239 = getelementptr inbounds %struct.t_StatsBuffer, ptr %238, i32 0, i32 9, !dbg !1787
  store i32 0, ptr %239, align 4, !dbg !1788
  %240 = load i32, ptr %42, align 4, !dbg !1789
  %241 = sext i32 %240 to i64, !dbg !1790
  %242 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %241, !dbg !1790
  %243 = getelementptr inbounds %struct.t_StatsBuffer, ptr %242, i32 0, i32 6, !dbg !1791
  store i64 0, ptr %243, align 16, !dbg !1792
  %244 = load i32, ptr %42, align 4, !dbg !1793
  %245 = sext i32 %244 to i64, !dbg !1794
  %246 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %245, !dbg !1794
  %247 = getelementptr inbounds %struct.t_StatsBuffer, ptr %246, i32 0, i32 7, !dbg !1795
  store i64 0, ptr %247, align 8, !dbg !1796
  br label %248, !dbg !1797

248:                                              ; preds = %211
  %249 = load i32, ptr %42, align 4, !dbg !1798
  %250 = add nsw i32 %249, 1, !dbg !1798
  store i32 %250, ptr %42, align 4, !dbg !1798
  br label %208, !dbg !1799, !llvm.loop !1800

251:                                              ; preds = %208
  store i32 0, ptr %37, align 4, !dbg !1802
  br label %252, !dbg !1804

252:                                              ; preds = %684, %251
  %253 = load i32, ptr %37, align 4, !dbg !1805
  %254 = icmp slt i32 %253, 2, !dbg !1807
  br i1 %254, label %255, label %687, !dbg !1808

255:                                              ; preds = %252
  store i32 0, ptr %36, align 4, !dbg !1809
  br label %256, !dbg !1812

256:                                              ; preds = %680, %255
  %257 = load i32, ptr %36, align 4, !dbg !1813
  %258 = icmp slt i32 %257, 3, !dbg !1815
  br i1 %258, label %259, label %262, !dbg !1816

259:                                              ; preds = %256
  %260 = load i32, ptr %38, align 4, !dbg !1817
  %261 = icmp slt i32 %260, 14, !dbg !1818
  br label %262

262:                                              ; preds = %259, %256
  %263 = phi i1 [ false, %256 ], [ %261, %259 ], !dbg !1819
  br i1 %263, label %264, label %683, !dbg !1820

264:                                              ; preds = %262
  call void @llvm.dbg.declare(metadata ptr %43, metadata !1821, metadata !DIExpression()), !dbg !1823
  %265 = load i32, ptr %37, align 4, !dbg !1824
  %266 = add nsw i32 0, %265, !dbg !1826
  store i32 %266, ptr %43, align 4, !dbg !1827
  br label %267, !dbg !1828

267:                                              ; preds = %676, %264
  %268 = load i32, ptr %43, align 4, !dbg !1829
  %269 = load i32, ptr %14, align 4, !dbg !1831
  %270 = load i32, ptr %37, align 4, !dbg !1831
  %271 = mul nsw i32 %269, %270, !dbg !1831
  %272 = icmp sgt i32 %271, 1, !dbg !1831
  br i1 %272, label %273, label %277, !dbg !1831

273:                                              ; preds = %267
  %274 = load i32, ptr %14, align 4, !dbg !1831
  %275 = load i32, ptr %37, align 4, !dbg !1831
  %276 = mul nsw i32 %274, %275, !dbg !1831
  br label %278, !dbg !1831

277:                                              ; preds = %267
  br label %278, !dbg !1831

278:                                              ; preds = %277, %273
  %279 = phi i32 [ %276, %273 ], [ 1, %277 ], !dbg !1831
  %280 = icmp slt i32 %268, %279, !dbg !1832
  br i1 %280, label %281, label %284, !dbg !1833

281:                                              ; preds = %278
  %282 = load i32, ptr %38, align 4, !dbg !1834
  %283 = icmp slt i32 %282, 14, !dbg !1835
  br label %284

284:                                              ; preds = %281, %278
  %285 = phi i1 [ false, %278 ], [ %283, %281 ], !dbg !1836
  br i1 %285, label %286, label %679, !dbg !1837

286:                                              ; preds = %284
  call void @llvm.dbg.declare(metadata ptr %44, metadata !1838, metadata !DIExpression()), !dbg !1840
  %287 = load i32, ptr %15, align 4, !dbg !1841
  %288 = load i32, ptr %43, align 4, !dbg !1842
  %289 = add nsw i32 %287, %288, !dbg !1843
  %290 = load i32, ptr %14, align 4, !dbg !1844
  %291 = srem i32 %289, %290, !dbg !1845
  store i32 %291, ptr %44, align 4, !dbg !1840
  %292 = load ptr, ptr %13, align 8, !dbg !1846
  %293 = load i32, ptr %44, align 4, !dbg !1848
  %294 = sext i32 %293 to i64, !dbg !1846
  %295 = getelementptr inbounds %struct.lien_back, ptr %292, i64 %294, !dbg !1846
  %296 = getelementptr inbounds %struct.lien_back, ptr %295, i32 0, i32 9, !dbg !1849
  %297 = load i32, ptr %296, align 8, !dbg !1849
  %298 = icmp sge i32 %297, 0, !dbg !1850
  br i1 %298, label %299, label %675, !dbg !1851

299:                                              ; preds = %286
  store i32 0, ptr %39, align 4, !dbg !1852
  %300 = load i32, ptr %36, align 4, !dbg !1854
  switch i32 %300, label %395 [
    i32 0, label %301
    i32 1, label %325
  ], !dbg !1855

301:                                              ; preds = %299
  %302 = load ptr, ptr %13, align 8, !dbg !1856
  %303 = load i32, ptr %44, align 4, !dbg !1859
  %304 = sext i32 %303 to i64, !dbg !1856
  %305 = getelementptr inbounds %struct.lien_back, ptr %302, i64 %304, !dbg !1856
  %306 = getelementptr inbounds %struct.lien_back, ptr %305, i32 0, i32 9, !dbg !1860
  %307 = load i32, ptr %306, align 8, !dbg !1860
  %308 = icmp sgt i32 %307, 0, !dbg !1861
  br i1 %308, label %309, label %324, !dbg !1862

309:                                              ; preds = %301
  %310 = load ptr, ptr %13, align 8, !dbg !1863
  %311 = load i32, ptr %44, align 4, !dbg !1864
  %312 = sext i32 %311 to i64, !dbg !1863
  %313 = getelementptr inbounds %struct.lien_back, ptr %310, i64 %312, !dbg !1863
  %314 = getelementptr inbounds %struct.lien_back, ptr %313, i32 0, i32 9, !dbg !1865
  %315 = load i32, ptr %314, align 8, !dbg !1865
  %316 = icmp slt i32 %315, 99, !dbg !1866
  br i1 %316, label %317, label %324, !dbg !1867

317:                                              ; preds = %309
  %318 = load i32, ptr %38, align 4, !dbg !1868
  %319 = sext i32 %318 to i64, !dbg !1868
  %320 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %319, !dbg !1868
  %321 = getelementptr inbounds %struct.t_StatsBuffer, ptr %320, i32 0, i32 2, !dbg !1868
  %322 = getelementptr inbounds [256 x i8], ptr %321, i64 0, i64 0, !dbg !1868
  %323 = call ptr @strcpy_safe_(ptr noundef %322, i64 noundef 256, ptr noundef @.str.17, i64 noundef 8, ptr noundef @.str.18, ptr noundef @.str.3, i32 noundef 463), !dbg !1868
  store i32 1, ptr %39, align 4, !dbg !1870
  br label %324, !dbg !1871

324:                                              ; preds = %317, %309, %301
  br label %464, !dbg !1872

325:                                              ; preds = %299
  %326 = load ptr, ptr %13, align 8, !dbg !1873
  %327 = load i32, ptr %44, align 4, !dbg !1875
  %328 = sext i32 %327 to i64, !dbg !1873
  %329 = getelementptr inbounds %struct.lien_back, ptr %326, i64 %328, !dbg !1873
  %330 = getelementptr inbounds %struct.lien_back, ptr %329, i32 0, i32 9, !dbg !1876
  %331 = load i32, ptr %330, align 8, !dbg !1876
  %332 = icmp eq i32 %331, 99, !dbg !1877
  br i1 %332, label %333, label %340, !dbg !1878

333:                                              ; preds = %325
  %334 = load i32, ptr %38, align 4, !dbg !1879
  %335 = sext i32 %334 to i64, !dbg !1879
  %336 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %335, !dbg !1879
  %337 = getelementptr inbounds %struct.t_StatsBuffer, ptr %336, i32 0, i32 2, !dbg !1879
  %338 = getelementptr inbounds [256 x i8], ptr %337, i64 0, i64 0, !dbg !1879
  %339 = call ptr @strcpy_safe_(ptr noundef %338, i64 noundef 256, ptr noundef @.str.19, i64 noundef 8, ptr noundef @.str.20, ptr noundef @.str.3, i32 noundef 469), !dbg !1879
  store i32 1, ptr %39, align 4, !dbg !1881
  br label %394, !dbg !1882

340:                                              ; preds = %325
  %341 = load ptr, ptr %13, align 8, !dbg !1883
  %342 = load i32, ptr %44, align 4, !dbg !1885
  %343 = sext i32 %342 to i64, !dbg !1883
  %344 = getelementptr inbounds %struct.lien_back, ptr %341, i64 %343, !dbg !1883
  %345 = getelementptr inbounds %struct.lien_back, ptr %344, i32 0, i32 9, !dbg !1886
  %346 = load i32, ptr %345, align 8, !dbg !1886
  %347 = icmp eq i32 %346, 100, !dbg !1887
  br i1 %347, label %348, label %355, !dbg !1888

348:                                              ; preds = %340
  %349 = load i32, ptr %38, align 4, !dbg !1889
  %350 = sext i32 %349 to i64, !dbg !1889
  %351 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %350, !dbg !1889
  %352 = getelementptr inbounds %struct.t_StatsBuffer, ptr %351, i32 0, i32 2, !dbg !1889
  %353 = getelementptr inbounds [256 x i8], ptr %352, i64 0, i64 0, !dbg !1889
  %354 = call ptr @strcpy_safe_(ptr noundef %353, i64 noundef 256, ptr noundef @.str.21, i64 noundef 8, ptr noundef @.str.22, ptr noundef @.str.3, i32 noundef 472), !dbg !1889
  store i32 1, ptr %39, align 4, !dbg !1891
  br label %393, !dbg !1892

355:                                              ; preds = %340
  %356 = load ptr, ptr %13, align 8, !dbg !1893
  %357 = load i32, ptr %44, align 4, !dbg !1895
  %358 = sext i32 %357 to i64, !dbg !1893
  %359 = getelementptr inbounds %struct.lien_back, ptr %356, i64 %358, !dbg !1893
  %360 = getelementptr inbounds %struct.lien_back, ptr %359, i32 0, i32 9, !dbg !1896
  %361 = load i32, ptr %360, align 8, !dbg !1896
  %362 = icmp eq i32 %361, 101, !dbg !1897
  br i1 %362, label %363, label %370, !dbg !1898

363:                                              ; preds = %355
  %364 = load i32, ptr %38, align 4, !dbg !1899
  %365 = sext i32 %364 to i64, !dbg !1899
  %366 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %365, !dbg !1899
  %367 = getelementptr inbounds %struct.t_StatsBuffer, ptr %366, i32 0, i32 2, !dbg !1899
  %368 = getelementptr inbounds [256 x i8], ptr %367, i64 0, i64 0, !dbg !1899
  %369 = call ptr @strcpy_safe_(ptr noundef %368, i64 noundef 256, ptr noundef @.str.23, i64 noundef 7, ptr noundef @.str.24, ptr noundef @.str.3, i32 noundef 475), !dbg !1899
  store i32 1, ptr %39, align 4, !dbg !1901
  br label %392, !dbg !1902

370:                                              ; preds = %355
  %371 = load ptr, ptr %13, align 8, !dbg !1903
  %372 = load i32, ptr %44, align 4, !dbg !1905
  %373 = sext i32 %372 to i64, !dbg !1903
  %374 = getelementptr inbounds %struct.lien_back, ptr %371, i64 %373, !dbg !1903
  %375 = getelementptr inbounds %struct.lien_back, ptr %374, i32 0, i32 9, !dbg !1906
  %376 = load i32, ptr %375, align 8, !dbg !1906
  %377 = icmp eq i32 %376, 1000, !dbg !1907
  br i1 %377, label %378, label %391, !dbg !1908

378:                                              ; preds = %370
  %379 = load i32, ptr %38, align 4, !dbg !1909
  %380 = sext i32 %379 to i64, !dbg !1911
  %381 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %380, !dbg !1911
  %382 = getelementptr inbounds %struct.t_StatsBuffer, ptr %381, i32 0, i32 2, !dbg !1912
  %383 = getelementptr inbounds [256 x i8], ptr %382, i64 0, i64 0, !dbg !1911
  %384 = load ptr, ptr %13, align 8, !dbg !1913
  %385 = load i32, ptr %44, align 4, !dbg !1914
  %386 = sext i32 %385 to i64, !dbg !1913
  %387 = getelementptr inbounds %struct.lien_back, ptr %384, i64 %386, !dbg !1913
  %388 = getelementptr inbounds %struct.lien_back, ptr %387, i32 0, i32 29, !dbg !1915
  %389 = getelementptr inbounds [256 x i8], ptr %388, i64 0, i64 0, !dbg !1913
  %390 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %383, ptr noundef @.str.25, ptr noundef %389) #10, !dbg !1916
  store i32 1, ptr %39, align 4, !dbg !1917
  br label %391, !dbg !1918

391:                                              ; preds = %378, %370
  br label %392

392:                                              ; preds = %391, %363
  br label %393

393:                                              ; preds = %392, %348
  br label %394

394:                                              ; preds = %393, %333
  br label %464, !dbg !1919

395:                                              ; preds = %299
  %396 = load ptr, ptr %13, align 8, !dbg !1920
  %397 = load i32, ptr %44, align 4, !dbg !1922
  %398 = sext i32 %397 to i64, !dbg !1920
  %399 = getelementptr inbounds %struct.lien_back, ptr %396, i64 %398, !dbg !1920
  %400 = getelementptr inbounds %struct.lien_back, ptr %399, i32 0, i32 9, !dbg !1923
  %401 = load i32, ptr %400, align 8, !dbg !1923
  %402 = icmp eq i32 %401, 0, !dbg !1924
  br i1 %402, label %403, label %463, !dbg !1925

403:                                              ; preds = %395
  %404 = load ptr, ptr %13, align 8, !dbg !1926
  %405 = load i32, ptr %44, align 4, !dbg !1929
  %406 = sext i32 %405 to i64, !dbg !1926
  %407 = getelementptr inbounds %struct.lien_back, ptr %404, i64 %406, !dbg !1926
  %408 = getelementptr inbounds %struct.lien_back, ptr %407, i32 0, i32 18, !dbg !1930
  %409 = getelementptr inbounds %struct.htsblk, ptr %408, i32 0, i32 0, !dbg !1931
  %410 = load i32, ptr %409, align 8, !dbg !1931
  %411 = icmp eq i32 %410, 200, !dbg !1932
  br i1 %411, label %412, label %419, !dbg !1933

412:                                              ; preds = %403
  %413 = load i32, ptr %38, align 4, !dbg !1934
  %414 = sext i32 %413 to i64, !dbg !1934
  %415 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %414, !dbg !1934
  %416 = getelementptr inbounds %struct.t_StatsBuffer, ptr %415, i32 0, i32 2, !dbg !1934
  %417 = getelementptr inbounds [256 x i8], ptr %416, i64 0, i64 0, !dbg !1934
  %418 = call ptr @strcpy_safe_(ptr noundef %417, i64 noundef 256, ptr noundef @.str.26, i64 noundef 6, ptr noundef @.str.27, ptr noundef @.str.3, i32 noundef 485), !dbg !1934
  store i32 1, ptr %39, align 4, !dbg !1936
  br label %462, !dbg !1937

419:                                              ; preds = %403
  %420 = load ptr, ptr %13, align 8, !dbg !1938
  %421 = load i32, ptr %44, align 4, !dbg !1940
  %422 = sext i32 %421 to i64, !dbg !1938
  %423 = getelementptr inbounds %struct.lien_back, ptr %420, i64 %422, !dbg !1938
  %424 = getelementptr inbounds %struct.lien_back, ptr %423, i32 0, i32 18, !dbg !1941
  %425 = getelementptr inbounds %struct.htsblk, ptr %424, i32 0, i32 0, !dbg !1942
  %426 = load i32, ptr %425, align 8, !dbg !1942
  %427 = icmp sge i32 %426, 100, !dbg !1943
  br i1 %427, label %428, label %454, !dbg !1944

428:                                              ; preds = %419
  %429 = load ptr, ptr %13, align 8, !dbg !1945
  %430 = load i32, ptr %44, align 4, !dbg !1946
  %431 = sext i32 %430 to i64, !dbg !1945
  %432 = getelementptr inbounds %struct.lien_back, ptr %429, i64 %431, !dbg !1945
  %433 = getelementptr inbounds %struct.lien_back, ptr %432, i32 0, i32 18, !dbg !1947
  %434 = getelementptr inbounds %struct.htsblk, ptr %433, i32 0, i32 0, !dbg !1948
  %435 = load i32, ptr %434, align 8, !dbg !1948
  %436 = icmp sle i32 %435, 599, !dbg !1949
  br i1 %436, label %437, label %454, !dbg !1950

437:                                              ; preds = %428
  call void @llvm.dbg.declare(metadata ptr %45, metadata !1951, metadata !DIExpression()), !dbg !1953
  %438 = getelementptr inbounds [256 x i8], ptr %45, i64 0, i64 0, !dbg !1954
  store i8 0, ptr %438, align 16, !dbg !1955
  %439 = getelementptr inbounds [256 x i8], ptr %45, i64 0, i64 0, !dbg !1956
  %440 = load ptr, ptr %13, align 8, !dbg !1957
  %441 = load i32, ptr %44, align 4, !dbg !1958
  %442 = sext i32 %441 to i64, !dbg !1957
  %443 = getelementptr inbounds %struct.lien_back, ptr %440, i64 %442, !dbg !1957
  %444 = getelementptr inbounds %struct.lien_back, ptr %443, i32 0, i32 18, !dbg !1959
  %445 = getelementptr inbounds %struct.htsblk, ptr %444, i32 0, i32 0, !dbg !1960
  %446 = load i32, ptr %445, align 8, !dbg !1960
  call void @infostatuscode(ptr noundef %439, i32 noundef %446), !dbg !1961
  %447 = load i32, ptr %38, align 4, !dbg !1962
  %448 = sext i32 %447 to i64, !dbg !1962
  %449 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %448, !dbg !1962
  %450 = getelementptr inbounds %struct.t_StatsBuffer, ptr %449, i32 0, i32 2, !dbg !1962
  %451 = getelementptr inbounds [256 x i8], ptr %450, i64 0, i64 0, !dbg !1962
  %452 = getelementptr inbounds [256 x i8], ptr %45, i64 0, i64 0, !dbg !1962
  %453 = call ptr @strcpy_safe_(ptr noundef %451, i64 noundef 256, ptr noundef %452, i64 noundef 256, ptr noundef @.str.28, ptr noundef @.str.3, i32 noundef 493), !dbg !1962
  store i32 1, ptr %39, align 4, !dbg !1963
  br label %461, !dbg !1964

454:                                              ; preds = %428, %419
  %455 = load i32, ptr %38, align 4, !dbg !1965
  %456 = sext i32 %455 to i64, !dbg !1965
  %457 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %456, !dbg !1965
  %458 = getelementptr inbounds %struct.t_StatsBuffer, ptr %457, i32 0, i32 2, !dbg !1965
  %459 = getelementptr inbounds [256 x i8], ptr %458, i64 0, i64 0, !dbg !1965
  %460 = call ptr @strcpy_safe_(ptr noundef %459, i64 noundef 256, ptr noundef @.str.29, i64 noundef 6, ptr noundef @.str.30, ptr noundef @.str.3, i32 noundef 496), !dbg !1965
  store i32 1, ptr %39, align 4, !dbg !1967
  br label %461

461:                                              ; preds = %454, %437
  br label %462

462:                                              ; preds = %461, %412
  br label %463, !dbg !1968

463:                                              ; preds = %462, %395
  br label %464, !dbg !1969

464:                                              ; preds = %463, %394, %324
  %465 = load i32, ptr %39, align 4, !dbg !1970
  %466 = icmp ne i32 %465, 0, !dbg !1970
  br i1 %466, label %467, label %674, !dbg !1972

467:                                              ; preds = %464
  call void @llvm.dbg.declare(metadata ptr %46, metadata !1973, metadata !DIExpression()), !dbg !1975
  %468 = load i32, ptr %44, align 4, !dbg !1976
  %469 = load i32, ptr %38, align 4, !dbg !1977
  %470 = sext i32 %469 to i64, !dbg !1978
  %471 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %470, !dbg !1978
  %472 = getelementptr inbounds %struct.t_StatsBuffer, ptr %471, i32 0, i32 9, !dbg !1979
  store i32 %468, ptr %472, align 4, !dbg !1980
  %473 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !1981
  store i8 0, ptr %473, align 16, !dbg !1982
  %474 = load i32, ptr %38, align 4, !dbg !1983
  %475 = sext i32 %474 to i64, !dbg !1983
  %476 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %475, !dbg !1983
  %477 = getelementptr inbounds %struct.t_StatsBuffer, ptr %476, i32 0, i32 3, !dbg !1983
  %478 = getelementptr inbounds [2048 x i8], ptr %477, i64 0, i64 0, !dbg !1983
  %479 = load ptr, ptr %13, align 8, !dbg !1983
  %480 = load i32, ptr %44, align 4, !dbg !1983
  %481 = sext i32 %480 to i64, !dbg !1983
  %482 = getelementptr inbounds %struct.lien_back, ptr %479, i64 %481, !dbg !1983
  %483 = getelementptr inbounds %struct.lien_back, ptr %482, i32 0, i32 2, !dbg !1983
  %484 = getelementptr inbounds [2048 x i8], ptr %483, i64 0, i64 0, !dbg !1983
  %485 = call ptr @strcpy_safe_(ptr noundef %478, i64 noundef 2048, ptr noundef %484, i64 noundef 2048, ptr noundef @.str.31, ptr noundef @.str.3, i32 noundef 510), !dbg !1983
  %486 = load ptr, ptr %13, align 8, !dbg !1984
  %487 = load i32, ptr %44, align 4, !dbg !1986
  %488 = sext i32 %487 to i64, !dbg !1984
  %489 = getelementptr inbounds %struct.lien_back, ptr %486, i64 %488, !dbg !1984
  %490 = getelementptr inbounds %struct.lien_back, ptr %489, i32 0, i32 0, !dbg !1987
  %491 = getelementptr inbounds [2048 x i8], ptr %490, i64 0, i64 0, !dbg !1984
  %492 = call i32 @strcmp(ptr noundef %491, ptr noundef @.str.32) #11, !dbg !1988
  %493 = icmp ne i32 %492, 0, !dbg !1988
  br i1 %493, label %494, label %503, !dbg !1989

494:                                              ; preds = %467
  %495 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !1990
  %496 = load ptr, ptr %13, align 8, !dbg !1990
  %497 = load i32, ptr %44, align 4, !dbg !1990
  %498 = sext i32 %497 to i64, !dbg !1990
  %499 = getelementptr inbounds %struct.lien_back, ptr %496, i64 %498, !dbg !1990
  %500 = getelementptr inbounds %struct.lien_back, ptr %499, i32 0, i32 0, !dbg !1990
  %501 = getelementptr inbounds [2048 x i8], ptr %500, i64 0, i64 0, !dbg !1990
  %502 = call ptr @strncat_safe_(ptr noundef %495, i64 noundef 2048, ptr noundef %501, i64 noundef 2048, i64 noundef -1, ptr noundef @.str.33, ptr noundef @.str.3, i32 noundef 512), !dbg !1990
  br label %506, !dbg !1990

503:                                              ; preds = %467
  %504 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !1991
  %505 = call ptr @strncat_safe_(ptr noundef %504, i64 noundef 2048, ptr noundef @.str.34, i64 noundef 10, i64 noundef -1, ptr noundef @.str.35, ptr noundef @.str.3, i32 noundef 514), !dbg !1991
  br label %506

506:                                              ; preds = %503, %494
  %507 = load ptr, ptr %13, align 8, !dbg !1992
  %508 = load i32, ptr %44, align 4, !dbg !1994
  %509 = sext i32 %508 to i64, !dbg !1992
  %510 = getelementptr inbounds %struct.lien_back, ptr %507, i64 %509, !dbg !1992
  %511 = getelementptr inbounds %struct.lien_back, ptr %510, i32 0, i32 1, !dbg !1995
  %512 = getelementptr inbounds [2048 x i8], ptr %511, i64 0, i64 0, !dbg !1992
  %513 = load i8, ptr %512, align 8, !dbg !1992
  %514 = sext i8 %513 to i32, !dbg !1992
  %515 = icmp ne i32 %514, 47, !dbg !1996
  br i1 %515, label %516, label %519, !dbg !1997

516:                                              ; preds = %506
  %517 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !1998
  %518 = call ptr @strncat_safe_(ptr noundef %517, i64 noundef 2048, ptr noundef @.str.36, i64 noundef 2, i64 noundef -1, ptr noundef @.str.37, ptr noundef @.str.3, i32 noundef 516), !dbg !1998
  br label %519, !dbg !1998

519:                                              ; preds = %516, %506
  %520 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !1999
  %521 = load ptr, ptr %13, align 8, !dbg !1999
  %522 = load i32, ptr %44, align 4, !dbg !1999
  %523 = sext i32 %522 to i64, !dbg !1999
  %524 = getelementptr inbounds %struct.lien_back, ptr %521, i64 %523, !dbg !1999
  %525 = getelementptr inbounds %struct.lien_back, ptr %524, i32 0, i32 1, !dbg !1999
  %526 = getelementptr inbounds [2048 x i8], ptr %525, i64 0, i64 0, !dbg !1999
  %527 = call ptr @strncat_safe_(ptr noundef %520, i64 noundef 2048, ptr noundef %526, i64 noundef 2048, i64 noundef -1, ptr noundef @.str.38, ptr noundef @.str.3, i32 noundef 517), !dbg !1999
  %528 = load i32, ptr %38, align 4, !dbg !2000
  %529 = sext i32 %528 to i64, !dbg !2001
  %530 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %529, !dbg !2001
  %531 = getelementptr inbounds %struct.t_StatsBuffer, ptr %530, i32 0, i32 1, !dbg !2002
  %532 = getelementptr inbounds [1024 x i8], ptr %531, i64 0, i64 0, !dbg !2001
  store i8 0, ptr %532, align 16, !dbg !2003
  call void @llvm.dbg.declare(metadata ptr %47, metadata !2004, metadata !DIExpression()), !dbg !2006
  %533 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !2007
  %534 = call ptr @strrchr(ptr noundef %533, i32 noundef 47) #11, !dbg !2008
  store ptr %534, ptr %47, align 8, !dbg !2006
  %535 = load ptr, ptr %47, align 8, !dbg !2009
  %536 = icmp ne ptr %535, null, !dbg !2009
  br i1 %536, label %537, label %546, !dbg !2011

537:                                              ; preds = %519
  %538 = load i32, ptr %38, align 4, !dbg !2012
  %539 = sext i32 %538 to i64, !dbg !2012
  %540 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %539, !dbg !2012
  %541 = getelementptr inbounds %struct.t_StatsBuffer, ptr %540, i32 0, i32 1, !dbg !2012
  %542 = getelementptr inbounds [1024 x i8], ptr %541, i64 0, i64 0, !dbg !2012
  %543 = load ptr, ptr %47, align 8, !dbg !2012
  %544 = call ptr @strncat_safe_(ptr noundef %542, i64 noundef 1024, ptr noundef %543, i64 noundef -1, i64 noundef 200, ptr noundef @.str.39, ptr noundef @.str.3, i32 noundef 524), !dbg !2012
  %545 = load ptr, ptr %47, align 8, !dbg !2014
  store i8 0, ptr %545, align 1, !dbg !2015
  br label %546, !dbg !2016

546:                                              ; preds = %537, %519
  %547 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !2017
  %548 = call i64 @strlen(ptr noundef %547) #11, !dbg !2019
  %549 = trunc i64 %548 to i32, !dbg !2020
  store i32 %549, ptr %40, align 4, !dbg !2021
  %550 = icmp slt i32 %549, 40, !dbg !2022
  br i1 %550, label %551, label %559, !dbg !2023

551:                                              ; preds = %546
  %552 = load i32, ptr %38, align 4, !dbg !2024
  %553 = sext i32 %552 to i64, !dbg !2024
  %554 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %553, !dbg !2024
  %555 = getelementptr inbounds %struct.t_StatsBuffer, ptr %554, i32 0, i32 0, !dbg !2024
  %556 = getelementptr inbounds [1024 x i8], ptr %555, i64 0, i64 0, !dbg !2024
  %557 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !2024
  %558 = call ptr @strcpy_safe_(ptr noundef %556, i64 noundef 1024, ptr noundef %557, i64 noundef 2048, ptr noundef @.str.40, ptr noundef @.str.3, i32 noundef 530), !dbg !2024
  br label %590, !dbg !2024

559:                                              ; preds = %546
  %560 = load i32, ptr %38, align 4, !dbg !2025
  %561 = sext i32 %560 to i64, !dbg !2027
  %562 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %561, !dbg !2027
  %563 = getelementptr inbounds %struct.t_StatsBuffer, ptr %562, i32 0, i32 0, !dbg !2028
  %564 = getelementptr inbounds [1024 x i8], ptr %563, i64 0, i64 0, !dbg !2027
  store i8 0, ptr %564, align 16, !dbg !2029
  %565 = load i32, ptr %38, align 4, !dbg !2030
  %566 = sext i32 %565 to i64, !dbg !2030
  %567 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %566, !dbg !2030
  %568 = getelementptr inbounds %struct.t_StatsBuffer, ptr %567, i32 0, i32 0, !dbg !2030
  %569 = getelementptr inbounds [1024 x i8], ptr %568, i64 0, i64 0, !dbg !2030
  %570 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !2030
  %571 = call ptr @strncat_safe_(ptr noundef %569, i64 noundef 1024, ptr noundef %570, i64 noundef 2048, i64 noundef 18, ptr noundef @.str.41, ptr noundef @.str.3, i32 noundef 535), !dbg !2030
  %572 = load i32, ptr %38, align 4, !dbg !2031
  %573 = sext i32 %572 to i64, !dbg !2031
  %574 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %573, !dbg !2031
  %575 = getelementptr inbounds %struct.t_StatsBuffer, ptr %574, i32 0, i32 0, !dbg !2031
  %576 = getelementptr inbounds [1024 x i8], ptr %575, i64 0, i64 0, !dbg !2031
  %577 = call ptr @strncat_safe_(ptr noundef %576, i64 noundef 1024, ptr noundef @.str.42, i64 noundef 4, i64 noundef -1, ptr noundef @.str.43, ptr noundef @.str.3, i32 noundef 536), !dbg !2031
  %578 = load i32, ptr %38, align 4, !dbg !2032
  %579 = sext i32 %578 to i64, !dbg !2032
  %580 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %579, !dbg !2032
  %581 = getelementptr inbounds %struct.t_StatsBuffer, ptr %580, i32 0, i32 0, !dbg !2032
  %582 = getelementptr inbounds [1024 x i8], ptr %581, i64 0, i64 0, !dbg !2032
  %583 = getelementptr inbounds [2048 x i8], ptr %46, i64 0, i64 0, !dbg !2032
  %584 = load i32, ptr %40, align 4, !dbg !2032
  %585 = sext i32 %584 to i64, !dbg !2032
  %586 = getelementptr inbounds i8, ptr %583, i64 %585, !dbg !2032
  %587 = getelementptr inbounds i8, ptr %586, i64 -20, !dbg !2032
  %588 = getelementptr inbounds i8, ptr %587, i64 2, !dbg !2032
  %589 = call ptr @strncat_safe_(ptr noundef %582, i64 noundef 1024, ptr noundef %588, i64 noundef -1, i64 noundef -1, ptr noundef @.str.44, ptr noundef @.str.3, i32 noundef 538), !dbg !2032
  br label %590

590:                                              ; preds = %559, %551
  %591 = load ptr, ptr %13, align 8, !dbg !2033
  %592 = load i32, ptr %44, align 4, !dbg !2035
  %593 = sext i32 %592 to i64, !dbg !2033
  %594 = getelementptr inbounds %struct.lien_back, ptr %591, i64 %593, !dbg !2033
  %595 = getelementptr inbounds %struct.lien_back, ptr %594, i32 0, i32 18, !dbg !2036
  %596 = getelementptr inbounds %struct.htsblk, ptr %595, i32 0, i32 19, !dbg !2037
  %597 = load i64, ptr %596, align 8, !dbg !2037
  %598 = icmp sge i64 %597, 0, !dbg !2038
  br i1 %598, label %599, label %622, !dbg !2039

599:                                              ; preds = %590
  %600 = load ptr, ptr %13, align 8, !dbg !2040
  %601 = load i32, ptr %44, align 4, !dbg !2042
  %602 = sext i32 %601 to i64, !dbg !2040
  %603 = getelementptr inbounds %struct.lien_back, ptr %600, i64 %602, !dbg !2040
  %604 = getelementptr inbounds %struct.lien_back, ptr %603, i32 0, i32 18, !dbg !2043
  %605 = getelementptr inbounds %struct.htsblk, ptr %604, i32 0, i32 19, !dbg !2044
  %606 = load i64, ptr %605, align 8, !dbg !2044
  %607 = load i32, ptr %38, align 4, !dbg !2045
  %608 = sext i32 %607 to i64, !dbg !2046
  %609 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %608, !dbg !2046
  %610 = getelementptr inbounds %struct.t_StatsBuffer, ptr %609, i32 0, i32 7, !dbg !2047
  store i64 %606, ptr %610, align 8, !dbg !2048
  %611 = load ptr, ptr %13, align 8, !dbg !2049
  %612 = load i32, ptr %44, align 4, !dbg !2050
  %613 = sext i32 %612 to i64, !dbg !2049
  %614 = getelementptr inbounds %struct.lien_back, ptr %611, i64 %613, !dbg !2049
  %615 = getelementptr inbounds %struct.lien_back, ptr %614, i32 0, i32 18, !dbg !2051
  %616 = getelementptr inbounds %struct.htsblk, ptr %615, i32 0, i32 13, !dbg !2052
  %617 = load i64, ptr %616, align 8, !dbg !2052
  %618 = load i32, ptr %38, align 4, !dbg !2053
  %619 = sext i32 %618 to i64, !dbg !2054
  %620 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %619, !dbg !2054
  %621 = getelementptr inbounds %struct.t_StatsBuffer, ptr %620, i32 0, i32 6, !dbg !2055
  store i64 %617, ptr %621, align 16, !dbg !2056
  br label %671, !dbg !2057

622:                                              ; preds = %590
  %623 = load ptr, ptr %13, align 8, !dbg !2058
  %624 = load i32, ptr %44, align 4, !dbg !2061
  %625 = sext i32 %624 to i64, !dbg !2058
  %626 = getelementptr inbounds %struct.lien_back, ptr %623, i64 %625, !dbg !2058
  %627 = getelementptr inbounds %struct.lien_back, ptr %626, i32 0, i32 9, !dbg !2062
  %628 = load i32, ptr %627, align 8, !dbg !2062
  %629 = icmp eq i32 %628, 0, !dbg !2063
  br i1 %629, label %630, label %653, !dbg !2064

630:                                              ; preds = %622
  %631 = load ptr, ptr %13, align 8, !dbg !2065
  %632 = load i32, ptr %44, align 4, !dbg !2067
  %633 = sext i32 %632 to i64, !dbg !2065
  %634 = getelementptr inbounds %struct.lien_back, ptr %631, i64 %633, !dbg !2065
  %635 = getelementptr inbounds %struct.lien_back, ptr %634, i32 0, i32 18, !dbg !2068
  %636 = getelementptr inbounds %struct.htsblk, ptr %635, i32 0, i32 13, !dbg !2069
  %637 = load i64, ptr %636, align 8, !dbg !2069
  %638 = load i32, ptr %38, align 4, !dbg !2070
  %639 = sext i32 %638 to i64, !dbg !2071
  %640 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %639, !dbg !2071
  %641 = getelementptr inbounds %struct.t_StatsBuffer, ptr %640, i32 0, i32 7, !dbg !2072
  store i64 %637, ptr %641, align 8, !dbg !2073
  %642 = load ptr, ptr %13, align 8, !dbg !2074
  %643 = load i32, ptr %44, align 4, !dbg !2075
  %644 = sext i32 %643 to i64, !dbg !2074
  %645 = getelementptr inbounds %struct.lien_back, ptr %642, i64 %644, !dbg !2074
  %646 = getelementptr inbounds %struct.lien_back, ptr %645, i32 0, i32 18, !dbg !2076
  %647 = getelementptr inbounds %struct.htsblk, ptr %646, i32 0, i32 13, !dbg !2077
  %648 = load i64, ptr %647, align 8, !dbg !2077
  %649 = load i32, ptr %38, align 4, !dbg !2078
  %650 = sext i32 %649 to i64, !dbg !2079
  %651 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %650, !dbg !2079
  %652 = getelementptr inbounds %struct.t_StatsBuffer, ptr %651, i32 0, i32 6, !dbg !2080
  store i64 %648, ptr %652, align 16, !dbg !2081
  br label %670, !dbg !2082

653:                                              ; preds = %622
  %654 = load i32, ptr %38, align 4, !dbg !2083
  %655 = sext i32 %654 to i64, !dbg !2085
  %656 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %655, !dbg !2085
  %657 = getelementptr inbounds %struct.t_StatsBuffer, ptr %656, i32 0, i32 7, !dbg !2086
  store i64 8192, ptr %657, align 8, !dbg !2087
  %658 = load ptr, ptr %13, align 8, !dbg !2088
  %659 = load i32, ptr %44, align 4, !dbg !2089
  %660 = sext i32 %659 to i64, !dbg !2088
  %661 = getelementptr inbounds %struct.lien_back, ptr %658, i64 %660, !dbg !2088
  %662 = getelementptr inbounds %struct.lien_back, ptr %661, i32 0, i32 18, !dbg !2090
  %663 = getelementptr inbounds %struct.htsblk, ptr %662, i32 0, i32 13, !dbg !2091
  %664 = load i64, ptr %663, align 8, !dbg !2091
  %665 = srem i64 %664, 8192, !dbg !2092
  %666 = load i32, ptr %38, align 4, !dbg !2093
  %667 = sext i32 %666 to i64, !dbg !2094
  %668 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %667, !dbg !2094
  %669 = getelementptr inbounds %struct.t_StatsBuffer, ptr %668, i32 0, i32 6, !dbg !2095
  store i64 %665, ptr %669, align 16, !dbg !2096
  br label %670

670:                                              ; preds = %653, %630
  br label %671

671:                                              ; preds = %670, %599
  %672 = load i32, ptr %38, align 4, !dbg !2097
  %673 = add nsw i32 %672, 1, !dbg !2097
  store i32 %673, ptr %38, align 4, !dbg !2097
  br label %674, !dbg !2098

674:                                              ; preds = %671, %464
  br label %675, !dbg !2099

675:                                              ; preds = %674, %286
  br label %676, !dbg !2100

676:                                              ; preds = %675
  %677 = load i32, ptr %43, align 4, !dbg !2101
  %678 = add nsw i32 %677, 1, !dbg !2101
  store i32 %678, ptr %43, align 4, !dbg !2101
  br label %267, !dbg !2102, !llvm.loop !2103

679:                                              ; preds = %284
  br label %680, !dbg !2105

680:                                              ; preds = %679
  %681 = load i32, ptr %36, align 4, !dbg !2106
  %682 = add nsw i32 %681, 1, !dbg !2106
  store i32 %682, ptr %36, align 4, !dbg !2106
  br label %256, !dbg !2107, !llvm.loop !2108

683:                                              ; preds = %262
  br label %684, !dbg !2110

684:                                              ; preds = %683
  %685 = load i32, ptr %37, align 4, !dbg !2111
  %686 = add nsw i32 %685, 1, !dbg !2111
  store i32 %686, ptr %37, align 4, !dbg !2111
  br label %252, !dbg !2112, !llvm.loop !2113

687:                                              ; preds = %252
  %688 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, ptr noundef @.str.46), !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %48, metadata !2116, metadata !DIExpression()), !dbg !2118
  store i32 0, ptr %48, align 4, !dbg !2118
  %689 = call i32 (ptr, ...) @printf(ptr noundef @.str.47), !dbg !2119
  %690 = load ptr, ptr %12, align 8, !dbg !2120
  %691 = call i32 @hts_is_parsing(ptr noundef %690, i32 noundef -1), !dbg !2122
  store i32 %691, ptr %48, align 4, !dbg !2123
  %692 = icmp ne i32 %691, 0, !dbg !2123
  br i1 %692, label %695, label %693, !dbg !2124

693:                                              ; preds = %687
  %694 = call i32 (ptr, ...) @printf(ptr noundef @.str.48), !dbg !2125
  br label %713, !dbg !2125

695:                                              ; preds = %687
  %696 = load ptr, ptr %12, align 8, !dbg !2126
  %697 = call i32 @hts_is_testing(ptr noundef %696), !dbg !2128
  switch i32 %697, label %712 [
    i32 0, label %698
    i32 1, label %701
    i32 2, label %704
    i32 3, label %706
    i32 4, label %708
    i32 5, label %710
  ], !dbg !2129

698:                                              ; preds = %695
  %699 = load i32, ptr %48, align 4, !dbg !2130
  %700 = call i32 (ptr, ...) @printf(ptr noundef @.str.49, i32 noundef %699), !dbg !2132
  br label %712, !dbg !2133

701:                                              ; preds = %695
  %702 = load i32, ptr %48, align 4, !dbg !2134
  %703 = call i32 (ptr, ...) @printf(ptr noundef @.str.50, i32 noundef %702), !dbg !2135
  br label %712, !dbg !2136

704:                                              ; preds = %695
  %705 = call i32 (ptr, ...) @printf(ptr noundef @.str.51), !dbg !2137
  br label %712, !dbg !2138

706:                                              ; preds = %695
  %707 = call i32 (ptr, ...) @printf(ptr noundef @.str.52), !dbg !2139
  br label %712, !dbg !2140

708:                                              ; preds = %695
  %709 = call i32 (ptr, ...) @printf(ptr noundef @.str.53), !dbg !2141
  br label %712, !dbg !2142

710:                                              ; preds = %695
  %711 = call i32 (ptr, ...) @printf(ptr noundef @.str.54), !dbg !2143
  br label %712, !dbg !2144

712:                                              ; preds = %695, %710, %708, %706, %704, %701, %698
  br label %713

713:                                              ; preds = %712, %693
  %714 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, ptr noundef @.str.46), !dbg !2145
  call void @llvm.dbg.declare(metadata ptr %49, metadata !2146, metadata !DIExpression()), !dbg !2148
  store i32 0, ptr %49, align 4, !dbg !2149
  br label %715, !dbg !2151

715:                                              ; preds = %765, %713
  %716 = load i32, ptr %49, align 4, !dbg !2152
  %717 = icmp slt i32 %716, 14, !dbg !2154
  br i1 %717, label %718, label %768, !dbg !2155

718:                                              ; preds = %715
  %719 = load i32, ptr %49, align 4, !dbg !2156
  %720 = sext i32 %719 to i64, !dbg !2156
  %721 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %720, !dbg !2156
  %722 = getelementptr inbounds %struct.t_StatsBuffer, ptr %721, i32 0, i32 2, !dbg !2156
  %723 = getelementptr inbounds [256 x i8], ptr %722, i64 0, i64 0, !dbg !2156
  %724 = icmp ne ptr %723, null, !dbg !2156
  br i1 %724, label %725, label %763, !dbg !2156

725:                                              ; preds = %718
  %726 = load i32, ptr %49, align 4, !dbg !2156
  %727 = sext i32 %726 to i64, !dbg !2156
  %728 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %727, !dbg !2156
  %729 = getelementptr inbounds %struct.t_StatsBuffer, ptr %728, i32 0, i32 2, !dbg !2156
  %730 = getelementptr inbounds [256 x i8], ptr %729, i64 0, i64 0, !dbg !2156
  %731 = load i8, ptr %730, align 16, !dbg !2156
  %732 = sext i8 %731 to i32, !dbg !2156
  %733 = icmp ne i32 %732, 0, !dbg !2156
  br i1 %733, label %734, label %763, !dbg !2159

734:                                              ; preds = %725
  %735 = load i32, ptr %49, align 4, !dbg !2160
  %736 = sext i32 %735 to i64, !dbg !2162
  %737 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %736, !dbg !2162
  %738 = getelementptr inbounds %struct.t_StatsBuffer, ptr %737, i32 0, i32 2, !dbg !2163
  %739 = getelementptr inbounds [256 x i8], ptr %738, i64 0, i64 0, !dbg !2162
  %740 = load i32, ptr %49, align 4, !dbg !2164
  %741 = sext i32 %740 to i64, !dbg !2165
  %742 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %741, !dbg !2165
  %743 = getelementptr inbounds %struct.t_StatsBuffer, ptr %742, i32 0, i32 0, !dbg !2166
  %744 = getelementptr inbounds [1024 x i8], ptr %743, i64 0, i64 0, !dbg !2165
  %745 = load i32, ptr %49, align 4, !dbg !2167
  %746 = sext i32 %745 to i64, !dbg !2168
  %747 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %746, !dbg !2168
  %748 = getelementptr inbounds %struct.t_StatsBuffer, ptr %747, i32 0, i32 1, !dbg !2169
  %749 = getelementptr inbounds [1024 x i8], ptr %748, i64 0, i64 0, !dbg !2168
  %750 = load i32, ptr %49, align 4, !dbg !2170
  %751 = sext i32 %750 to i64, !dbg !2171
  %752 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %751, !dbg !2171
  %753 = getelementptr inbounds %struct.t_StatsBuffer, ptr %752, i32 0, i32 6, !dbg !2172
  %754 = load i64, ptr %753, align 16, !dbg !2172
  %755 = call ptr @int2bytes(ptr noundef %33, i64 noundef %754), !dbg !2173
  %756 = load i32, ptr %49, align 4, !dbg !2174
  %757 = sext i32 %756 to i64, !dbg !2175
  %758 = getelementptr inbounds [14 x %struct.t_StatsBuffer], ptr %41, i64 0, i64 %757, !dbg !2175
  %759 = getelementptr inbounds %struct.t_StatsBuffer, ptr %758, i32 0, i32 7, !dbg !2176
  %760 = load i64, ptr %759, align 8, !dbg !2176
  %761 = call ptr @int2bytes(ptr noundef %34, i64 noundef %760), !dbg !2177
  %762 = call i32 (ptr, ...) @printf(ptr noundef @.str.55, ptr noundef %739, ptr noundef %744, ptr noundef %749, ptr noundef %755, ptr noundef %761), !dbg !2178
  br label %763, !dbg !2179

763:                                              ; preds = %734, %725, %718
  %764 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, ptr noundef @.str.46), !dbg !2180
  br label %765, !dbg !2181

765:                                              ; preds = %763
  %766 = load i32, ptr %49, align 4, !dbg !2182
  %767 = add nsw i32 %766, 1, !dbg !2182
  store i32 %767, ptr %49, align 4, !dbg !2182
  br label %715, !dbg !2183, !llvm.loop !2184

768:                                              ; preds = %715
  br label %769, !dbg !2186

769:                                              ; preds = %768, %181
  br label %770, !dbg !2187

770:                                              ; preds = %769, %176
  store i32 1, ptr %10, align 4, !dbg !2188
  br label %771, !dbg !2188

771:                                              ; preds = %770, %87
  %772 = load i32, ptr %10, align 4, !dbg !2189
  ret i32 %772, !dbg !2189
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !2190 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2191, metadata !DIExpression()), !dbg !2192
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2193, metadata !DIExpression()), !dbg !2194
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2195, metadata !DIExpression()), !dbg !2196
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i32 %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2199, metadata !DIExpression()), !dbg !2200
  ret i32 -1, !dbg !2201
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_check_mime(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !dbg !2202 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2203, metadata !DIExpression()), !dbg !2204
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2205, metadata !DIExpression()), !dbg !2206
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2207, metadata !DIExpression()), !dbg !2208
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2209, metadata !DIExpression()), !dbg !2210
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2211, metadata !DIExpression()), !dbg !2212
  store i32 %5, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2213, metadata !DIExpression()), !dbg !2214
  ret i32 -1, !dbg !2215
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htsshow_pause(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2216 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2217, metadata !DIExpression()), !dbg !2218
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2219, metadata !DIExpression()), !dbg !2220
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2221, metadata !DIExpression()), !dbg !2222
  br label %7, !dbg !2223

7:                                                ; preds = %11, %3
  %8 = load ptr, ptr %6, align 8, !dbg !2224
  %9 = call i32 @fexist(ptr noundef %8), !dbg !2225
  %10 = icmp ne i32 %9, 0, !dbg !2223
  br i1 %10, label %11, label %13, !dbg !2223

11:                                               ; preds = %7
  %12 = call i32 @sleep(i32 noundef 1), !dbg !2226
  br label %7, !dbg !2223, !llvm.loop !2230

13:                                               ; preds = %7
  ret void, !dbg !2232
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htsshow_filesave(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2233 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2234, metadata !DIExpression()), !dbg !2235
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2236, metadata !DIExpression()), !dbg !2237
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2238, metadata !DIExpression()), !dbg !2239
  ret void, !dbg !2240
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htsshow_filesave2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 !dbg !2241 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2242, metadata !DIExpression()), !dbg !2243
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2244, metadata !DIExpression()), !dbg !2245
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2246, metadata !DIExpression()), !dbg !2247
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2248, metadata !DIExpression()), !dbg !2249
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2250, metadata !DIExpression()), !dbg !2251
  store i32 %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2252, metadata !DIExpression()), !dbg !2253
  store i32 %6, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2254, metadata !DIExpression()), !dbg !2255
  store i32 %7, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2256, metadata !DIExpression()), !dbg !2257
  ret void, !dbg !2258
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_linkdetected(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2259 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2260, metadata !DIExpression()), !dbg !2261
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2262, metadata !DIExpression()), !dbg !2263
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2264, metadata !DIExpression()), !dbg !2265
  ret i32 1, !dbg !2266
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_linkdetected2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2267 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2268, metadata !DIExpression()), !dbg !2269
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2270, metadata !DIExpression()), !dbg !2271
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2272, metadata !DIExpression()), !dbg !2273
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2274, metadata !DIExpression()), !dbg !2275
  ret i32 1, !dbg !2276
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_xfrstatus(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2277 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2278, metadata !DIExpression()), !dbg !2279
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2280, metadata !DIExpression()), !dbg !2281
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2282, metadata !DIExpression()), !dbg !2283
  ret i32 1, !dbg !2284
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_savename(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !dbg !2285 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2286, metadata !DIExpression()), !dbg !2287
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2288, metadata !DIExpression()), !dbg !2289
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2290, metadata !DIExpression()), !dbg !2291
  store ptr %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2292, metadata !DIExpression()), !dbg !2293
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2294, metadata !DIExpression()), !dbg !2295
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2296, metadata !DIExpression()), !dbg !2297
  store ptr %6, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2298, metadata !DIExpression()), !dbg !2299
  ret i32 1, !dbg !2300
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_sendheader(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !dbg !2301 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2302, metadata !DIExpression()), !dbg !2303
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2304, metadata !DIExpression()), !dbg !2305
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2306, metadata !DIExpression()), !dbg !2307
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2308, metadata !DIExpression()), !dbg !2309
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2310, metadata !DIExpression()), !dbg !2311
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2312, metadata !DIExpression()), !dbg !2313
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2314, metadata !DIExpression()), !dbg !2315
  store ptr %7, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2316, metadata !DIExpression()), !dbg !2317
  ret i32 1, !dbg !2318
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htsshow_receiveheader(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !dbg !2319 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2320, metadata !DIExpression()), !dbg !2321
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2322, metadata !DIExpression()), !dbg !2323
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2324, metadata !DIExpression()), !dbg !2325
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2326, metadata !DIExpression()), !dbg !2327
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2328, metadata !DIExpression()), !dbg !2329
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2330, metadata !DIExpression()), !dbg !2331
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2332, metadata !DIExpression()), !dbg !2333
  store ptr %7, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2334, metadata !DIExpression()), !dbg !2335
  ret i32 1, !dbg !2336
}

declare i32 @hts_main2(i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @hts_errmsg(ptr noundef) #2

declare void @hts_free_opt(ptr noundef) #2

declare void @htsthread_wait() #2

declare i32 @hts_uninit() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_abort_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2337 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2338, metadata !DIExpression()), !dbg !2339
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2340, metadata !DIExpression()), !dbg !2341
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2342, metadata !DIExpression()), !dbg !2343
  %7 = load ptr, ptr @stderr, align 8, !dbg !2344
  %8 = load ptr, ptr %4, align 8, !dbg !2345
  %9 = load ptr, ptr %5, align 8, !dbg !2346
  %10 = load i32, ptr %6, align 4, !dbg !2347
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.6, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !2348
  %12 = load ptr, ptr @stderr, align 8, !dbg !2349
  %13 = call i32 @fflush(ptr noundef %12), !dbg !2350
  ret void, !dbg !2351
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i32 @fflush(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_clear() #0 !dbg !2352 {
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @.str.9, ptr noundef @.str.10), !dbg !2353
  ret void, !dbg !2354
}

declare i32 @printf(ptr noundef, ...) #2

declare i64 @mtime_local() #2

declare void @qsec2str(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_home() #0 !dbg !2355 {
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str.56, ptr noundef @.str.8, ptr noundef @.str.10), !dbg !2356
  ret void, !dbg !2357
}

declare ptr @int2bytes(ptr noundef, i64 noundef) #2

declare ptr @int2bytessec(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @strcpy_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !2358 {
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2364, metadata !DIExpression()), !dbg !2365
  store i64 %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2366, metadata !DIExpression()), !dbg !2367
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2368, metadata !DIExpression()), !dbg !2369
  store i64 %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2370, metadata !DIExpression()), !dbg !2371
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2372, metadata !DIExpression()), !dbg !2373
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2374, metadata !DIExpression()), !dbg !2375
  store i32 %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2376, metadata !DIExpression()), !dbg !2377
  %15 = load i64, ptr %9, align 8, !dbg !2378
  %16 = icmp ne i64 %15, 0, !dbg !2378
  br i1 %16, label %20, label %17, !dbg !2378

17:                                               ; preds = %7
  %18 = load ptr, ptr %13, align 8, !dbg !2378
  %19 = load i32, ptr %14, align 4, !dbg !2378
  call void @abortf_(ptr noundef @.str.57, ptr noundef %18, i32 noundef %19), !dbg !2378
  br label %20, !dbg !2378

20:                                               ; preds = %17, %7
  %21 = phi i1 [ true, %7 ], [ false, %17 ]
  %22 = zext i1 %21 to i32, !dbg !2378
  %23 = load ptr, ptr %8, align 8, !dbg !2379
  %24 = getelementptr inbounds i8, ptr %23, i64 0, !dbg !2379
  store i8 0, ptr %24, align 1, !dbg !2380
  %25 = load ptr, ptr %8, align 8, !dbg !2381
  %26 = load i64, ptr %9, align 8, !dbg !2382
  %27 = load ptr, ptr %10, align 8, !dbg !2383
  %28 = load i64, ptr %11, align 8, !dbg !2384
  %29 = load ptr, ptr %12, align 8, !dbg !2385
  %30 = load ptr, ptr %13, align 8, !dbg !2386
  %31 = load i32, ptr %14, align 4, !dbg !2387
  %32 = call ptr @strncat_safe_(ptr noundef %25, i64 noundef %26, ptr noundef %27, i64 noundef %28, i64 noundef -1, ptr noundef %29, ptr noundef %30, i32 noundef %31), !dbg !2388
  ret ptr %32, !dbg !2389
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #4

declare void @infostatuscode(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @strncat_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 !dbg !2390 {
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
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2393, metadata !DIExpression()), !dbg !2394
  store i64 %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2395, metadata !DIExpression()), !dbg !2396
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2397, metadata !DIExpression()), !dbg !2398
  store i64 %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2399, metadata !DIExpression()), !dbg !2400
  store i64 %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2401, metadata !DIExpression()), !dbg !2402
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2403, metadata !DIExpression()), !dbg !2404
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2405, metadata !DIExpression()), !dbg !2406
  store i32 %7, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2407, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2409, metadata !DIExpression()), !dbg !2410
  %21 = load ptr, ptr %11, align 8, !dbg !2411
  %22 = load i64, ptr %12, align 8, !dbg !2412
  %23 = load ptr, ptr %15, align 8, !dbg !2413
  %24 = load i32, ptr %16, align 4, !dbg !2414
  %25 = call i64 @strlen_safe_(ptr noundef %21, i64 noundef %22, ptr noundef %23, i32 noundef %24), !dbg !2415
  store i64 %25, ptr %17, align 8, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2416, metadata !DIExpression()), !dbg !2417
  %26 = load ptr, ptr %9, align 8, !dbg !2418
  %27 = load i64, ptr %10, align 8, !dbg !2419
  %28 = load ptr, ptr %15, align 8, !dbg !2420
  %29 = load i32, ptr %16, align 4, !dbg !2421
  %30 = call i64 @strlen_safe_(ptr noundef %26, i64 noundef %27, ptr noundef %28, i32 noundef %29), !dbg !2422
  store i64 %30, ptr %18, align 8, !dbg !2417
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2423, metadata !DIExpression()), !dbg !2424
  %31 = load i64, ptr %17, align 8, !dbg !2425
  %32 = load i64, ptr %13, align 8, !dbg !2426
  %33 = icmp ule i64 %31, %32, !dbg !2427
  br i1 %33, label %34, label %36, !dbg !2425

34:                                               ; preds = %8
  %35 = load i64, ptr %17, align 8, !dbg !2428
  br label %38, !dbg !2425

36:                                               ; preds = %8
  %37 = load i64, ptr %13, align 8, !dbg !2429
  br label %38, !dbg !2425

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ], !dbg !2425
  store i64 %39, ptr %19, align 8, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2430, metadata !DIExpression()), !dbg !2431
  %40 = load i64, ptr %18, align 8, !dbg !2432
  %41 = load i64, ptr %19, align 8, !dbg !2433
  %42 = add i64 %40, %41, !dbg !2434
  store i64 %42, ptr %20, align 8, !dbg !2431
  %43 = load i64, ptr %20, align 8, !dbg !2435
  %44 = load i64, ptr %10, align 8, !dbg !2435
  %45 = icmp ult i64 %43, %44, !dbg !2435
  br i1 %45, label %50, label %46, !dbg !2435

46:                                               ; preds = %38
  %47 = load ptr, ptr %14, align 8, !dbg !2435
  %48 = load ptr, ptr %15, align 8, !dbg !2435
  %49 = load i32, ptr %16, align 4, !dbg !2435
  call void @abortf_(ptr noundef %47, ptr noundef %48, i32 noundef %49), !dbg !2435
  br label %50, !dbg !2435

50:                                               ; preds = %46, %38
  %51 = phi i1 [ true, %38 ], [ false, %46 ]
  %52 = zext i1 %51 to i32, !dbg !2435
  %53 = load ptr, ptr %9, align 8, !dbg !2436
  %54 = load i64, ptr %18, align 8, !dbg !2437
  %55 = getelementptr inbounds i8, ptr %53, i64 %54, !dbg !2438
  %56 = load ptr, ptr %11, align 8, !dbg !2439
  %57 = load i64, ptr %19, align 8, !dbg !2440
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %56, i64 %57, i1 false), !dbg !2441
  %58 = load ptr, ptr %9, align 8, !dbg !2442
  %59 = load i64, ptr %20, align 8, !dbg !2443
  %60 = getelementptr inbounds i8, ptr %58, i64 %59, !dbg !2442
  store i8 0, ptr %60, align 1, !dbg !2444
  %61 = load ptr, ptr %9, align 8, !dbg !2445
  ret ptr %61, !dbg !2446
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare i32 @hts_is_parsing(ptr noundef, i32 noundef) #2

declare i32 @hts_is_testing(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strlen_safe_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2447 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2450, metadata !DIExpression()), !dbg !2451
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2452, metadata !DIExpression()), !dbg !2453
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2454, metadata !DIExpression()), !dbg !2455
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2456, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2458, metadata !DIExpression()), !dbg !2459
  %10 = load ptr, ptr %5, align 8, !dbg !2460
  %11 = icmp ne ptr %10, null, !dbg !2460
  br i1 %11, label %15, label %12, !dbg !2460

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 8, !dbg !2460
  %14 = load i32, ptr %8, align 4, !dbg !2460
  call void @abortf_(ptr noundef @.str.58, ptr noundef %13, i32 noundef %14), !dbg !2460
  br label %15, !dbg !2460

15:                                               ; preds = %12, %4
  %16 = phi i1 [ true, %4 ], [ false, %12 ]
  %17 = zext i1 %16 to i32, !dbg !2460
  %18 = load i64, ptr %6, align 8, !dbg !2461
  %19 = icmp ne i64 %18, -1, !dbg !2462
  br i1 %19, label %20, label %24, !dbg !2461

20:                                               ; preds = %15
  %21 = load ptr, ptr %5, align 8, !dbg !2463
  %22 = load i64, ptr %6, align 8, !dbg !2464
  %23 = call i64 @strnlen(ptr noundef %21, i64 noundef %22) #11, !dbg !2465
  br label %27, !dbg !2461

24:                                               ; preds = %15
  %25 = load ptr, ptr %5, align 8, !dbg !2466
  %26 = call i64 @strlen(ptr noundef %25) #11, !dbg !2467
  br label %27, !dbg !2461

27:                                               ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ], !dbg !2461
  store i64 %28, ptr %9, align 8, !dbg !2468
  %29 = load i64, ptr %9, align 8, !dbg !2469
  %30 = load i64, ptr %6, align 8, !dbg !2469
  %31 = icmp ult i64 %29, %30, !dbg !2469
  br i1 %31, label %35, label %32, !dbg !2469

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !2469
  %34 = load i32, ptr %8, align 4, !dbg !2469
  call void @abortf_(ptr noundef @.str.59, ptr noundef %33, i32 noundef %34), !dbg !2469
  br label %35, !dbg !2469

35:                                               ; preds = %32, %27
  %36 = phi i1 [ true, %27 ], [ false, %32 ]
  %37 = zext i1 %36 to i32, !dbg !2469
  %38 = load i64, ptr %9, align 8, !dbg !2470
  ret i64 %38, !dbg !2471
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strnlen(ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linput(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2472 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2475, metadata !DIExpression()), !dbg !2476
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2477, metadata !DIExpression()), !dbg !2478
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2479, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2481, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2483, metadata !DIExpression()), !dbg !2484
  store i32 0, ptr %8, align 4, !dbg !2484
  br label %9, !dbg !2485

9:                                                ; preds = %40, %3
  %10 = load ptr, ptr %4, align 8, !dbg !2486
  %11 = call i32 @fgetc(ptr noundef %10), !dbg !2488
  store i32 %11, ptr %7, align 4, !dbg !2489
  %12 = load i32, ptr %7, align 4, !dbg !2490
  %13 = icmp ne i32 %12, -1, !dbg !2492
  br i1 %13, label %14, label %28, !dbg !2493

14:                                               ; preds = %9
  %15 = load i32, ptr %7, align 4, !dbg !2494
  switch i32 %15, label %19 [
    i32 13, label %16
    i32 10, label %17
    i32 9, label %18
    i32 12, label %18
  ], !dbg !2496

16:                                               ; preds = %14
  br label %27, !dbg !2497

17:                                               ; preds = %14
  store i32 -1, ptr %7, align 4, !dbg !2499
  br label %27, !dbg !2500

18:                                               ; preds = %14, %14
  br label %27, !dbg !2501

19:                                               ; preds = %14
  %20 = load i32, ptr %7, align 4, !dbg !2502
  %21 = trunc i32 %20 to i8, !dbg !2503
  %22 = load ptr, ptr %5, align 8, !dbg !2504
  %23 = load i32, ptr %8, align 4, !dbg !2505
  %24 = add nsw i32 %23, 1, !dbg !2505
  store i32 %24, ptr %8, align 4, !dbg !2505
  %25 = sext i32 %23 to i64, !dbg !2504
  %26 = getelementptr inbounds i8, ptr %22, i64 %25, !dbg !2504
  store i8 %21, ptr %26, align 1, !dbg !2506
  br label %27, !dbg !2507

27:                                               ; preds = %19, %18, %17, %16
  br label %28, !dbg !2508

28:                                               ; preds = %27, %9
  br label %29, !dbg !2509

29:                                               ; preds = %28
  %30 = load i32, ptr %7, align 4, !dbg !2510
  %31 = icmp ne i32 %30, -1, !dbg !2511
  br i1 %31, label %32, label %40, !dbg !2512

32:                                               ; preds = %29
  %33 = load i32, ptr %7, align 4, !dbg !2513
  %34 = icmp ne i32 %33, -1, !dbg !2514
  br i1 %34, label %35, label %40, !dbg !2515

35:                                               ; preds = %32
  %36 = load i32, ptr %8, align 4, !dbg !2516
  %37 = load i32, ptr %6, align 4, !dbg !2517
  %38 = sub nsw i32 %37, 1, !dbg !2518
  %39 = icmp slt i32 %36, %38, !dbg !2519
  br label %40

40:                                               ; preds = %35, %32, %29
  %41 = phi i1 [ false, %32 ], [ false, %29 ], [ %39, %35 ], !dbg !2520
  br i1 %41, label %9, label %42, !dbg !2509, !llvm.loop !2521

42:                                               ; preds = %40
  %43 = load ptr, ptr %5, align 8, !dbg !2523
  %44 = load i32, ptr %8, align 4, !dbg !2524
  %45 = sext i32 %44 to i64, !dbg !2523
  %46 = getelementptr inbounds i8, ptr %43, i64 %45, !dbg !2523
  store i8 0, ptr %46, align 1, !dbg !2525
  %47 = load i32, ptr %8, align 4, !dbg !2526
  ret i32 %47, !dbg !2527
}

declare i32 @fgetc(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fexist(ptr noundef %0) #0 !dbg !2528 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2533, metadata !DIExpression()), !dbg !2570
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 144, i1 false), !dbg !2571
  %5 = load ptr, ptr %3, align 8, !dbg !2572
  %6 = call i32 @stat(ptr noundef %5, ptr noundef %4) #10, !dbg !2574
  %7 = icmp eq i32 %6, 0, !dbg !2575
  br i1 %7, label %8, label %15, !dbg !2576

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 3, !dbg !2577
  %10 = load i32, ptr %9, align 8, !dbg !2577
  %11 = and i32 %10, 61440, !dbg !2577
  %12 = icmp eq i32 %11, 32768, !dbg !2577
  br i1 %12, label %13, label %14, !dbg !2580

13:                                               ; preds = %8
  store i32 1, ptr %2, align 4, !dbg !2581
  br label %16, !dbg !2581

14:                                               ; preds = %8
  br label %15, !dbg !2583

15:                                               ; preds = %14, %1
  store i32 0, ptr %2, align 4, !dbg !2584
  br label %16, !dbg !2584

16:                                               ; preds = %15, %13
  %17 = load i32, ptr %2, align 4, !dbg !2585
  ret i32 %17, !dbg !2585
}

declare i32 @sleep(i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_back(i32 noundef %0) #0 !dbg !2586 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2587, metadata !DIExpression()), !dbg !2588
  %3 = load ptr, ptr @global_opt, align 8, !dbg !2589
  %4 = icmp ne ptr %3, null, !dbg !2591
  br i1 %4, label %5, label %17, !dbg !2592

5:                                                ; preds = %1
  %6 = load ptr, ptr @global_opt, align 8, !dbg !2593
  %7 = getelementptr inbounds %struct.httrackp, ptr %6, i32 0, i32 95, !dbg !2594
  %8 = load i32, ptr %7, align 4, !dbg !2594
  %9 = icmp ne i32 %8, 0, !dbg !2593
  br i1 %9, label %17, label %10, !dbg !2595

10:                                               ; preds = %5
  %11 = call ptr @signal(i32 noundef 20, ptr noundef null) #10, !dbg !2596
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.64), !dbg !2598
  %13 = load ptr, ptr @stdout, align 8, !dbg !2599
  %14 = call i32 @fflush(ptr noundef %13), !dbg !2600
  %15 = call i32 @getpid() #10, !dbg !2601
  %16 = call i32 @kill(i32 noundef %15, i32 noundef 20) #10, !dbg !2602
  br label %20, !dbg !2603

17:                                               ; preds = %5, %1
  %18 = load i32, ptr %2, align 4, !dbg !2604
  %19 = call ptr @signal(i32 noundef %18, ptr noundef @sig_ignore) #10, !dbg !2606
  call void @sig_doback(i32 noundef 0), !dbg !2607
  br label %20

20:                                               ; preds = %17, %10
  ret void, !dbg !2608
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_finish(i32 noundef %0) #0 !dbg !2609 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2610, metadata !DIExpression()), !dbg !2611
  %3 = load i32, ptr %2, align 4, !dbg !2612
  %4 = call ptr @signal(i32 noundef %3, ptr noundef @sig_term) #10, !dbg !2613
  %5 = load ptr, ptr @global_opt, align 8, !dbg !2614
  %6 = icmp ne ptr %5, null, !dbg !2616
  br i1 %6, label %7, label %11, !dbg !2617

7:                                                ; preds = %1
  %8 = load ptr, ptr @global_opt, align 8, !dbg !2618
  %9 = getelementptr inbounds %struct.httrackp, ptr %8, i32 0, i32 100, !dbg !2620
  %10 = getelementptr inbounds %struct.htsoptstate, ptr %9, i32 0, i32 2, !dbg !2621
  store i32 1, ptr %10, align 4, !dbg !2622
  br label %11, !dbg !2623

11:                                               ; preds = %7, %1
  %12 = load ptr, ptr @stderr, align 8, !dbg !2624
  %13 = load i32, ptr %2, align 4, !dbg !2625
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.69, i32 noundef %13), !dbg !2626
  ret void, !dbg !2627
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_leave(i32 noundef %0) #0 !dbg !2628 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2629, metadata !DIExpression()), !dbg !2630
  %3 = load ptr, ptr @global_opt, align 8, !dbg !2631
  %4 = icmp ne ptr %3, null, !dbg !2633
  br i1 %4, label %5, label %23, !dbg !2634

5:                                                ; preds = %1
  %6 = load ptr, ptr @global_opt, align 8, !dbg !2635
  %7 = getelementptr inbounds %struct.httrackp, ptr %6, i32 0, i32 100, !dbg !2636
  %8 = getelementptr inbounds %struct.htsoptstate, ptr %7, i32 0, i32 23, !dbg !2637
  %9 = load i32, ptr %8, align 4, !dbg !2637
  %10 = icmp ne i32 %9, 0, !dbg !2635
  br i1 %10, label %11, label %23, !dbg !2638

11:                                               ; preds = %5
  %12 = load i32, ptr %2, align 4, !dbg !2639
  %13 = call ptr @signal(i32 noundef %12, ptr noundef @sig_term) #10, !dbg !2641
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.71), !dbg !2642
  %15 = load ptr, ptr @global_opt, align 8, !dbg !2643
  %16 = icmp ne ptr %15, null, !dbg !2645
  br i1 %16, label %17, label %22, !dbg !2646

17:                                               ; preds = %11
  %18 = load ptr, ptr @global_opt, align 8, !dbg !2647
  call void (ptr, i32, ptr, ...) @hts_log_print(ptr noundef %18, i32 noundef 1, ptr noundef @.str.72), !dbg !2649
  %19 = load ptr, ptr @global_opt, align 8, !dbg !2650
  %20 = getelementptr inbounds %struct.httrackp, ptr %19, i32 0, i32 100, !dbg !2651
  %21 = getelementptr inbounds %struct.htsoptstate, ptr %20, i32 0, i32 1, !dbg !2652
  store i32 1, ptr %21, align 8, !dbg !2653
  br label %22, !dbg !2654

22:                                               ; preds = %17, %11
  br label %25, !dbg !2655

23:                                               ; preds = %5, %1
  %24 = load i32, ptr %2, align 4, !dbg !2656
  call void @sig_term(i32 noundef %24), !dbg !2658
  br label %25

25:                                               ; preds = %23, %22
  ret void, !dbg !2659
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_brpipe(i32 noundef %0) #0 !dbg !2660 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2661, metadata !DIExpression()), !dbg !2662
  %3 = load i32, ptr %2, align 4, !dbg !2663
  %4 = call ptr @signal(i32 noundef %3, ptr noundef @sig_brpipe) #10, !dbg !2664
  ret void, !dbg !2665
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_ignore(i32 noundef %0) #0 !dbg !2666 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2667, metadata !DIExpression()), !dbg !2668
  ret void, !dbg !2669
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_fatal(i32 noundef %0) #0 !dbg !2670 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  %4 = alloca [56 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i64, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2671, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.sig_fatal.msg, i64 16, i1 false), !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2676, metadata !DIExpression()), !dbg !2678
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %4, ptr align 16 @__const.sig_fatal.msgreport, i64 56, i1 false), !dbg !2678
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2679, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2681, metadata !DIExpression()), !dbg !2682
  %7 = load i32, ptr %2, align 4, !dbg !2683
  %8 = call ptr @signal(i32 noundef %7, ptr noundef null) #10, !dbg !2684
  %9 = call ptr @signal(i32 noundef 6, ptr noundef null) #10, !dbg !2685
  %10 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !2686
  %11 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 0, !dbg !2686
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %10, ptr align 16 %11, i64 15, i1 false), !dbg !2686
  store i64 15, ptr %6, align 8, !dbg !2687
  %12 = load i64, ptr %6, align 8, !dbg !2688
  %13 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 %12, !dbg !2689
  %14 = load i32, ptr %2, align 4, !dbg !2690
  %15 = call i64 @print_num(ptr noundef %13, i32 noundef %14), !dbg !2691
  %16 = load i64, ptr %6, align 8, !dbg !2692
  %17 = add i64 %16, %15, !dbg !2692
  store i64 %17, ptr %6, align 8, !dbg !2692
  %18 = load i64, ptr %6, align 8, !dbg !2693
  %19 = add i64 %18, 1, !dbg !2693
  store i64 %19, ptr %6, align 8, !dbg !2693
  %20 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 %18, !dbg !2694
  store i8 10, ptr %20, align 1, !dbg !2695
  %21 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !2696
  %22 = load i64, ptr %6, align 8, !dbg !2697
  %23 = call i64 @write(i32 noundef 2, ptr noundef %21, i64 noundef %22), !dbg !2698
  %24 = load i64, ptr %6, align 8, !dbg !2699
  %25 = icmp eq i64 %23, %24, !dbg !2700
  %26 = zext i1 %25 to i32, !dbg !2700
  call void @print_backtrace(), !dbg !2701
  %27 = getelementptr inbounds [56 x i8], ptr %4, i64 0, i64 0, !dbg !2702
  %28 = call i64 @write(i32 noundef 2, ptr noundef %27, i64 noundef 55), !dbg !2703
  %29 = icmp eq i64 %28, 55, !dbg !2704
  %30 = zext i1 %29 to i32, !dbg !2704
  call void @abort() #9, !dbg !2705
  unreachable, !dbg !2705
}

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_doback(i32 noundef %0) #0 !dbg !2706 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2709, metadata !DIExpression()), !dbg !2710
  store i32 -1, ptr %3, align 4, !dbg !2710
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.65), !dbg !2711
  %5 = load ptr, ptr @stdout, align 8, !dbg !2712
  %6 = call i32 @fflush(ptr noundef %5), !dbg !2713
  %7 = load ptr, ptr @global_opt, align 8, !dbg !2714
  %8 = icmp ne ptr %7, null, !dbg !2716
  br i1 %8, label %9, label %14, !dbg !2717

9:                                                ; preds = %1
  %10 = load ptr, ptr @global_opt, align 8, !dbg !2718
  %11 = getelementptr inbounds %struct.httrackp, ptr %10, i32 0, i32 92, !dbg !2720
  store i32 1, ptr %11, align 8, !dbg !2721
  %12 = load ptr, ptr @global_opt, align 8, !dbg !2722
  %13 = getelementptr inbounds %struct.httrackp, ptr %12, i32 0, i32 71, !dbg !2723
  store i32 0, ptr %13, align 4, !dbg !2724
  br label %14, !dbg !2725

14:                                               ; preds = %9, %1
  %15 = load i32, ptr %2, align 4, !dbg !2726
  %16 = icmp ne i32 %15, 0, !dbg !2726
  br i1 %16, label %19, label %17, !dbg !2728

17:                                               ; preds = %14
  %18 = call i32 (ptr, i32, ...) @open(ptr noundef @.str.66, i32 noundef 65, i32 noundef 384), !dbg !2729
  store i32 %18, ptr %3, align 4, !dbg !2730
  br label %19, !dbg !2731

19:                                               ; preds = %17, %14
  %20 = load i32, ptr %3, align 4, !dbg !2732
  %21 = icmp eq i32 %20, -1, !dbg !2734
  br i1 %21, label %22, label %24, !dbg !2735

22:                                               ; preds = %19
  %23 = call i32 (ptr, i32, ...) @open(ptr noundef @.str.67, i32 noundef 1, i32 noundef 384), !dbg !2736
  store i32 %23, ptr %3, align 4, !dbg !2737
  br label %24, !dbg !2738

24:                                               ; preds = %22, %19
  %25 = load i32, ptr %3, align 4, !dbg !2739
  %26 = call i32 @dup2(i32 noundef %25, i32 noundef 0) #10, !dbg !2740
  %27 = load i32, ptr %3, align 4, !dbg !2741
  %28 = call i32 @dup2(i32 noundef %27, i32 noundef 1) #10, !dbg !2742
  %29 = load i32, ptr %3, align 4, !dbg !2743
  %30 = call i32 @dup2(i32 noundef %29, i32 noundef 2) #10, !dbg !2744
  %31 = call i32 @fork() #10, !dbg !2745
  switch i32 %31, label %36 [
    i32 0, label %32
    i32 -1, label %33
  ], !dbg !2746

32:                                               ; preds = %24
  br label %37, !dbg !2747

33:                                               ; preds = %24
  %34 = load ptr, ptr @stderr, align 8, !dbg !2749
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.68), !dbg !2750
  br label %37, !dbg !2751

36:                                               ; preds = %24
  call void @_exit(i32 noundef 0) #12, !dbg !2752
  unreachable, !dbg !2752

37:                                               ; preds = %33, %32
  ret void, !dbg !2753
}

declare i32 @open(ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_term(i32 noundef %0) #0 !dbg !2754 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2755, metadata !DIExpression()), !dbg !2756
  %3 = load ptr, ptr @stderr, align 8, !dbg !2757
  %4 = load i32, ptr %2, align 4, !dbg !2758
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.70, i32 noundef %4), !dbg !2759
  call void @exit(i32 noundef 0) #9, !dbg !2760
  unreachable, !dbg !2760
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

declare void @hts_log_print(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @print_num(ptr noundef %0, i32 noundef %1) #0 !dbg !2761 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2764, metadata !DIExpression()), !dbg !2765
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2768, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2770, metadata !DIExpression()), !dbg !2771
  %8 = load i32, ptr %4, align 4, !dbg !2772
  %9 = icmp slt i32 %8, 0, !dbg !2774
  br i1 %9, label %10, label %15, !dbg !2775

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !2776
  %12 = getelementptr inbounds i8, ptr %11, i32 1, !dbg !2776
  store ptr %12, ptr %3, align 8, !dbg !2776
  store i8 45, ptr %11, align 1, !dbg !2778
  %13 = load i32, ptr %4, align 4, !dbg !2779
  %14 = sub nsw i32 0, %13, !dbg !2780
  store i32 %14, ptr %4, align 4, !dbg !2781
  br label %15, !dbg !2782

15:                                               ; preds = %10, %2
  store i64 0, ptr %5, align 8, !dbg !2783
  br label %16, !dbg !2785

16:                                               ; preds = %32, %15
  %17 = load i32, ptr %4, align 4, !dbg !2786
  %18 = icmp ne i32 %17, 0, !dbg !2788
  br i1 %18, label %22, label %19, !dbg !2789

19:                                               ; preds = %16
  %20 = load i64, ptr %5, align 8, !dbg !2790
  %21 = icmp eq i64 %20, 0, !dbg !2791
  br label %22, !dbg !2789

22:                                               ; preds = %19, %16
  %23 = phi i1 [ true, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %37, !dbg !2792

24:                                               ; preds = %22
  %25 = load i32, ptr %4, align 4, !dbg !2793
  %26 = srem i32 %25, 10, !dbg !2795
  %27 = add nsw i32 48, %26, !dbg !2796
  %28 = trunc i32 %27 to i8, !dbg !2797
  %29 = load ptr, ptr %3, align 8, !dbg !2798
  %30 = load i64, ptr %5, align 8, !dbg !2799
  %31 = getelementptr inbounds i8, ptr %29, i64 %30, !dbg !2798
  store i8 %28, ptr %31, align 1, !dbg !2800
  br label %32, !dbg !2801

32:                                               ; preds = %24
  %33 = load i64, ptr %5, align 8, !dbg !2802
  %34 = add i64 %33, 1, !dbg !2802
  store i64 %34, ptr %5, align 8, !dbg !2802
  %35 = load i32, ptr %4, align 4, !dbg !2803
  %36 = sdiv i32 %35, 10, !dbg !2803
  store i32 %36, ptr %4, align 4, !dbg !2803
  br label %16, !dbg !2804, !llvm.loop !2805

37:                                               ; preds = %22
  store i64 0, ptr %6, align 8, !dbg !2807
  br label %38, !dbg !2809

38:                                               ; preds = %64, %37
  %39 = load i64, ptr %6, align 8, !dbg !2810
  %40 = load i64, ptr %5, align 8, !dbg !2812
  %41 = icmp ult i64 %39, %40, !dbg !2813
  br i1 %41, label %42, label %67, !dbg !2814

42:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2815, metadata !DIExpression()), !dbg !2817
  %43 = load ptr, ptr %3, align 8, !dbg !2818
  %44 = load i64, ptr %5, align 8, !dbg !2819
  %45 = load i64, ptr %6, align 8, !dbg !2820
  %46 = sub i64 %44, %45, !dbg !2821
  %47 = sub i64 %46, 1, !dbg !2822
  %48 = getelementptr inbounds i8, ptr %43, i64 %47, !dbg !2818
  %49 = load i8, ptr %48, align 1, !dbg !2818
  store i8 %49, ptr %7, align 1, !dbg !2817
  %50 = load ptr, ptr %3, align 8, !dbg !2823
  %51 = load i64, ptr %6, align 8, !dbg !2824
  %52 = getelementptr inbounds i8, ptr %50, i64 %51, !dbg !2823
  %53 = load i8, ptr %52, align 1, !dbg !2823
  %54 = load ptr, ptr %3, align 8, !dbg !2825
  %55 = load i64, ptr %5, align 8, !dbg !2826
  %56 = load i64, ptr %6, align 8, !dbg !2827
  %57 = sub i64 %55, %56, !dbg !2828
  %58 = sub i64 %57, 1, !dbg !2829
  %59 = getelementptr inbounds i8, ptr %54, i64 %58, !dbg !2825
  store i8 %53, ptr %59, align 1, !dbg !2830
  %60 = load i8, ptr %7, align 1, !dbg !2831
  %61 = load ptr, ptr %3, align 8, !dbg !2832
  %62 = load i64, ptr %6, align 8, !dbg !2833
  %63 = getelementptr inbounds i8, ptr %61, i64 %62, !dbg !2832
  store i8 %60, ptr %63, align 1, !dbg !2834
  br label %64, !dbg !2835

64:                                               ; preds = %42
  %65 = load i64, ptr %6, align 8, !dbg !2836
  %66 = add i64 %65, 1, !dbg !2836
  store i64 %66, ptr %6, align 8, !dbg !2836
  br label %38, !dbg !2837, !llvm.loop !2838

67:                                               ; preds = %38
  %68 = load ptr, ptr %3, align 8, !dbg !2840
  %69 = load i64, ptr %5, align 8, !dbg !2841
  %70 = getelementptr inbounds i8, ptr %68, i64 %69, !dbg !2840
  store i8 0, ptr %70, align 1, !dbg !2842
  %71 = load i64, ptr %5, align 8, !dbg !2843
  ret i64 %71, !dbg !2844
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_backtrace() #0 !dbg !2845 {
  %1 = alloca [256 x ptr], align 16
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2849, metadata !DIExpression()), !dbg !2851
  %3 = getelementptr inbounds [256 x ptr], ptr %1, i64 0, i64 0, !dbg !2852
  %4 = call i32 @backtrace(ptr noundef %3, i32 noundef 256), !dbg !2853
  store i32 %4, ptr %2, align 4, !dbg !2851
  %5 = load i32, ptr %2, align 4, !dbg !2854
  %6 = icmp ne i32 %5, 0, !dbg !2856
  br i1 %6, label %7, label %10, !dbg !2857

7:                                                ; preds = %0
  %8 = getelementptr inbounds [256 x ptr], ptr %1, i64 0, i64 0, !dbg !2858
  %9 = load i32, ptr %2, align 4, !dbg !2860
  call void @backtrace_symbols_fd(ptr noundef %8, i32 noundef %9, i32 noundef 2) #10, !dbg !2861
  br label %10, !dbg !2862

10:                                               ; preds = %7, %0
  ret void, !dbg !2863
}

declare i32 @backtrace(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @backtrace_symbols_fd(ptr noundef, i32 noundef, i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190}
!llvm.ident = !{!1191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/httrack.c", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "18e63c17c434232e8fd5210e2d0a0f68")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 69)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 81)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "global_opt", scope: !24, file: !2, line: 201, type: !123, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !54, globals: !76, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !42}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "HTTrackStatus", file: !27, line: 146, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "./src/htsbasenet.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "48aef65af186ac0a9c99162429164003")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!30 = !DIEnumerator(name: "STATUS_ALIVE", value: -103)
!31 = !DIEnumerator(name: "STATUS_FREE", value: -1)
!32 = !DIEnumerator(name: "STATUS_READY", value: 0)
!33 = !DIEnumerator(name: "STATUS_TRANSFER", value: 1)
!34 = !DIEnumerator(name: "STATUS_CHUNK_CR", value: 97)
!35 = !DIEnumerator(name: "STATUS_CHUNK_WAIT", value: 98)
!36 = !DIEnumerator(name: "STATUS_WAIT_HEADERS", value: 99)
!37 = !DIEnumerator(name: "STATUS_CONNECTING", value: 100)
!38 = !DIEnumerator(name: "STATUS_WAIT_DNS", value: 101)
!39 = !DIEnumerator(name: "STATUS_SSL_WAIT_HANDSHAKE", value: 102)
!40 = !DIEnumerator(name: "STATUS_FTP_TRANSFER", value: 1000)
!41 = !DIEnumerator(name: "STATUS_FTP_READY", value: 1001)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hts_log_type", file: !43, line: 57, baseType: !44, size: 32, elements: !45)
!43 = !DIFile(filename: "./src/httrack-library.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "b6c1db18b62a820eb68cf5fcd0002850")
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53}
!46 = !DIEnumerator(name: "LOG_PANIC", value: 0)
!47 = !DIEnumerator(name: "LOG_ERROR", value: 1)
!48 = !DIEnumerator(name: "LOG_WARNING", value: 2)
!49 = !DIEnumerator(name: "LOG_NOTICE", value: 3)
!50 = !DIEnumerator(name: "LOG_INFO", value: 4)
!51 = !DIEnumerator(name: "LOG_DEBUG", value: 5)
!52 = !DIEnumerator(name: "LOG_TRACE", value: 6)
!53 = !DIEnumerator(name: "LOG_ERRNO", value: 256)
!54 = !{!55, !61, !28, !67, !68, !4, !71}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_callbackarg", file: !57, line: 60, baseType: !58)
!57 = !DIFile(filename: "./src/htsdefines.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "8ac9e3f618ab92204dc9f7b5fc77bda3")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_hts_callbackarg", file: !57, line: 179, size: 192, elements: !59)
!59 = !{!60, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "userdef", scope: !58, file: !57, line: 181, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !58, file: !57, line: 187, baseType: !63, size: 128, offset: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev", file: !57, line: 184, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !63, file: !57, line: 185, baseType: !61, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !63, file: !57, line: 186, baseType: !55, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!70 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !72, line: 72, baseType: !73)
!72 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !28}
!76 = !{!0, !7, !12, !17, !77, !82, !88, !93, !22, !99, !101, !106, !111, !116, !118, !942, !965, !970, !972, !977, !982, !984, !989, !991, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1017, !1022, !1024, !1026, !1031, !1033, !1038, !1043, !1048, !1051, !1056, !1058, !1063, !1065, !1067, !1069, !1074, !1079, !1081, !1083, !1085, !1088, !1093, !1095, !1097, !1099, !1101, !1106, !1108, !1110, !1115, !1120, !1125, !1131, !1133, !1136, !1139, !1144, !1146, !1148, !1153, !1158, !1160, !1162, !1167, !1169, !1174, !1179}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 39)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 184, elements: !86)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!86 = !{!87}
!87 = !DISubrange(count: 23)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 6)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !95, line: 91, type: !96, isLocal: true, isDefinition: true)
!95 = !DIFile(filename: "./src/htssafe.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "0a24d1c0939efbe916010d30091bc9cc")
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 20)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "use_show", scope: !24, file: !2, line: 200, type: !28, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 7)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 4)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 5)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !103, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "prev_mytime", scope: !120, file: !2, line: 322, type: !570, isLocal: true, isDefinition: true)
!120 = distinct !DISubprogram(name: "htsshow_loop", scope: !2, file: !2, line: 321, type: !121, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!121 = !DISubroutineType(types: !122)
!122 = !{!28, !55, !123, !552, !28, !28, !28, !28, !28, !908}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "httrackp", file: !43, line: 49, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "httrackp", file: !126, line: 294, size: 1133184, elements: !127)
!126 = !DIFile(filename: "./src/htsopt.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "4c13c78c9669919a80461e39e206d058")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !193, !194, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !305, !350, !353, !354, !358, !374, !375, !376, !377, !378, !379, !380, !381, !382, !384, !385, !386, !387, !388, !389, !390, !774, !786}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "size_httrackp", scope: !125, file: !126, line: 295, baseType: !68, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "wizard", scope: !125, file: !126, line: 297, baseType: !28, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !125, file: !126, line: 298, baseType: !28, size: 32, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "travel", scope: !125, file: !126, line: 299, baseType: !28, size: 32, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "seeker", scope: !125, file: !126, line: 300, baseType: !28, size: 32, offset: 160)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !125, file: !126, line: 301, baseType: !28, size: 32, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "extdepth", scope: !125, file: !126, line: 302, baseType: !28, size: 32, offset: 224)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "urlmode", scope: !125, file: !126, line: 303, baseType: !28, size: 32, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "no_type_change", scope: !125, file: !126, line: 304, baseType: !28, size: 32, offset: 288)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !125, file: !126, line: 305, baseType: !28, size: 32, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "getmode", scope: !125, file: !126, line: 306, baseType: !28, size: 32, offset: 352)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !125, file: !126, line: 307, baseType: !140, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !142, line: 7, baseType: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !144, line: 49, size: 1728, elements: !145)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !161, !163, !164, !165, !169, !171, !173, !177, !180, !182, !185, !188, !189, !190, !191, !192}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !143, file: !144, line: 51, baseType: !28, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !143, file: !144, line: 54, baseType: !67, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !143, file: !144, line: 55, baseType: !67, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !143, file: !144, line: 56, baseType: !67, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !143, file: !144, line: 57, baseType: !67, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !143, file: !144, line: 58, baseType: !67, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !143, file: !144, line: 59, baseType: !67, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !143, file: !144, line: 60, baseType: !67, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !143, file: !144, line: 61, baseType: !67, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !143, file: !144, line: 64, baseType: !67, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !143, file: !144, line: 65, baseType: !67, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !143, file: !144, line: 66, baseType: !67, size: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !143, file: !144, line: 68, baseType: !159, size: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !144, line: 36, flags: DIFlagFwdDecl)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !143, file: !144, line: 70, baseType: !162, size: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !143, file: !144, line: 72, baseType: !28, size: 32, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !143, file: !144, line: 73, baseType: !28, size: 32, offset: 928)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !143, file: !144, line: 74, baseType: !166, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !167, line: 152, baseType: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!168 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !143, file: !144, line: 77, baseType: !170, size: 16, offset: 1024)
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !143, file: !144, line: 78, baseType: !172, size: 8, offset: 1040)
!172 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !143, file: !144, line: 79, baseType: !174, size: 8, offset: 1048)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 1)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !143, file: !144, line: 81, baseType: !178, size: 64, offset: 1088)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !144, line: 43, baseType: null)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !143, file: !144, line: 89, baseType: !181, size: 64, offset: 1152)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !167, line: 153, baseType: !168)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !143, file: !144, line: 91, baseType: !183, size: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !144, line: 37, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !143, file: !144, line: 92, baseType: !186, size: 64, offset: 1280)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !144, line: 38, flags: DIFlagFwdDecl)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !143, file: !144, line: 93, baseType: !162, size: 64, offset: 1344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !143, file: !144, line: 94, baseType: !61, size: 64, offset: 1408)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !143, file: !144, line: 95, baseType: !68, size: 64, offset: 1472)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !143, file: !144, line: 96, baseType: !28, size: 32, offset: 1536)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !143, file: !144, line: 98, baseType: !96, size: 160, offset: 1568)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "errlog", scope: !125, file: !126, line: 308, baseType: !140, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "maxsite", scope: !125, file: !126, line: 309, baseType: !195, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "LLint", file: !196, line: 283, baseType: !168)
!196 = !DIFile(filename: "./src/htsglobal.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "fb20c0ed09319430675cc60ef3f4ae78")
!197 = !DIDerivedType(tag: DW_TAG_member, name: "maxfile_nonhtml", scope: !125, file: !126, line: 310, baseType: !195, size: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "maxfile_html", scope: !125, file: !126, line: 311, baseType: !195, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "maxsoc", scope: !125, file: !126, line: 312, baseType: !28, size: 32, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !125, file: !126, line: 313, baseType: !195, size: 64, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nearlink", scope: !125, file: !126, line: 314, baseType: !28, size: 32, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "makeindex", scope: !125, file: !126, line: 315, baseType: !28, size: 32, offset: 864)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kindex", scope: !125, file: !126, line: 316, baseType: !28, size: 32, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "delete_old", scope: !125, file: !126, line: 317, baseType: !28, size: 32, offset: 928)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !125, file: !126, line: 318, baseType: !28, size: 32, offset: 960)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rateout", scope: !125, file: !126, line: 319, baseType: !28, size: 32, offset: 992)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "maxtime", scope: !125, file: !126, line: 320, baseType: !28, size: 32, offset: 1024)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "maxrate", scope: !125, file: !126, line: 321, baseType: !28, size: 32, offset: 1056)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "maxconn", scope: !125, file: !126, line: 322, baseType: !210, size: 32, offset: 1088)
!210 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "waittime", scope: !125, file: !126, line: 323, baseType: !28, size: 32, offset: 1120)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !125, file: !126, line: 324, baseType: !28, size: 32, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "shell", scope: !125, file: !126, line: 326, baseType: !28, size: 32, offset: 1184)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !125, file: !126, line: 327, baseType: !215, size: 512, offset: 1216)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_proxy", file: !126, line: 89, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_proxy", file: !126, line: 91, size: 512, elements: !217)
!217 = !{!218, !219, !227, !228}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !216, file: !126, line: 92, baseType: !28, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !126, line: 93, baseType: !220, size: 192, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !221, line: 57, baseType: !222)
!221 = !DIFile(filename: "./src/htsstrings.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "5e4fe8440c4fd180bd3428990197f7c5")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "String", file: !221, line: 61, size: 192, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_", scope: !222, file: !221, line: 62, baseType: !67, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "length_", scope: !222, file: !221, line: 63, baseType: !68, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "capacity_", scope: !222, file: !221, line: 64, baseType: !68, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !216, file: !126, line: 94, baseType: !28, size: 32, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bindhost", scope: !216, file: !126, line: 95, baseType: !220, size: 192, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "savename_83", scope: !125, file: !126, line: 328, baseType: !28, size: 32, offset: 1728)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "savename_type", scope: !125, file: !126, line: 329, baseType: !28, size: 32, offset: 1760)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "savename_userdef", scope: !125, file: !126, line: 330, baseType: !220, size: 192, offset: 1792)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "savename_delayed", scope: !125, file: !126, line: 331, baseType: !28, size: 32, offset: 1984)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_cached", scope: !125, file: !126, line: 332, baseType: !28, size: 32, offset: 2016)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mimehtml", scope: !125, file: !126, line: 333, baseType: !28, size: 32, offset: 2048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent_send", scope: !125, file: !126, line: 334, baseType: !28, size: 32, offset: 2080)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !125, file: !126, line: 335, baseType: !220, size: 192, offset: 2112)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !125, file: !126, line: 336, baseType: !220, size: 192, offset: 2304)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !125, file: !126, line: 337, baseType: !220, size: 192, offset: 2496)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "path_log", scope: !125, file: !126, line: 338, baseType: !220, size: 192, offset: 2688)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "path_html", scope: !125, file: !126, line: 339, baseType: !220, size: 192, offset: 2880)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "path_html_utf8", scope: !125, file: !126, line: 340, baseType: !220, size: 192, offset: 3072)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "path_bin", scope: !125, file: !126, line: 341, baseType: !220, size: 192, offset: 3264)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !125, file: !126, line: 342, baseType: !28, size: 32, offset: 3456)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "makestat", scope: !125, file: !126, line: 343, baseType: !28, size: 32, offset: 3488)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "maketrack", scope: !125, file: !126, line: 344, baseType: !28, size: 32, offset: 3520)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parsejava", scope: !125, file: !126, line: 345, baseType: !28, size: 32, offset: 3552)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "hostcontrol", scope: !125, file: !126, line: 346, baseType: !28, size: 32, offset: 3584)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "errpage", scope: !125, file: !126, line: 347, baseType: !28, size: 32, offset: 3616)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "check_type", scope: !125, file: !126, line: 348, baseType: !28, size: 32, offset: 3648)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "all_in_cache", scope: !125, file: !126, line: 349, baseType: !28, size: 32, offset: 3680)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "robots", scope: !125, file: !126, line: 350, baseType: !28, size: 32, offset: 3712)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !125, file: !126, line: 351, baseType: !28, size: 32, offset: 3744)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "passprivacy", scope: !125, file: !126, line: 352, baseType: !28, size: 32, offset: 3776)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "includequery", scope: !125, file: !126, line: 353, baseType: !28, size: 32, offset: 3808)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mirror_first_page", scope: !125, file: !126, line: 354, baseType: !28, size: 32, offset: 3840)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sys_com", scope: !125, file: !126, line: 355, baseType: !220, size: 192, offset: 3904)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sys_com_exec", scope: !125, file: !126, line: 356, baseType: !28, size: 32, offset: 4096)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "accept_cookie", scope: !125, file: !126, line: 357, baseType: !28, size: 32, offset: 4128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !125, file: !126, line: 358, baseType: !260, size: 64, offset: 4160)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cookie", file: !126, line: 65, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_cookie", file: !263, line: 55, size: 278656, elements: !264)
!263 = !DIFile(filename: "./src/htsbauth.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "2c305fa8769d56cd3c433c11e4cc3006")
!264 = !{!265, !266, !270}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "max_len", scope: !262, file: !263, line: 56, baseType: !28, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !262, file: !263, line: 57, baseType: !267, size: 262144, offset: 32)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 262144, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 32768)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !262, file: !263, line: 58, baseType: !271, size: 16448, offset: 262208)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "bauth_chain", file: !263, line: 42, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bauth_chain", file: !263, line: 44, size: 16448, elements: !273)
!273 = !{!274, !278, !279}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !272, file: !263, line: 45, baseType: !275, size: 8192)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 1024)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !272, file: !263, line: 46, baseType: !275, size: 8192, offset: 8192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !263, line: 47, baseType: !280, size: 64, offset: 16384)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "http10", scope: !125, file: !126, line: 359, baseType: !28, size: 32, offset: 4224)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nokeepalive", scope: !125, file: !126, line: 360, baseType: !28, size: 32, offset: 4256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nocompression", scope: !125, file: !126, line: 361, baseType: !28, size: 32, offset: 4288)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sizehack", scope: !125, file: !126, line: 362, baseType: !28, size: 32, offset: 4320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "urlhack", scope: !125, file: !126, line: 363, baseType: !28, size: 32, offset: 4352)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tolerant", scope: !125, file: !126, line: 364, baseType: !28, size: 32, offset: 4384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parseall", scope: !125, file: !126, line: 365, baseType: !28, size: 32, offset: 4416)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parsedebug", scope: !125, file: !126, line: 366, baseType: !28, size: 32, offset: 4448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "norecatch", scope: !125, file: !126, line: 367, baseType: !28, size: 32, offset: 4480)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "verbosedisplay", scope: !125, file: !126, line: 368, baseType: !28, size: 32, offset: 4512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !125, file: !126, line: 369, baseType: !220, size: 192, offset: 4544)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "maxcache", scope: !125, file: !126, line: 370, baseType: !28, size: 32, offset: 4736)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ftp_proxy", scope: !125, file: !126, line: 372, baseType: !28, size: 32, offset: 4768)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !125, file: !126, line: 373, baseType: !220, size: 192, offset: 4800)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "urllist", scope: !125, file: !126, line: 374, baseType: !220, size: 192, offset: 4992)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !125, file: !126, line: 375, baseType: !297, size: 128, offset: 5184)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsfilters", file: !126, line: 101, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsfilters", file: !126, line: 103, size: 128, elements: !299)
!299 = !{!300, !303}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !298, file: !126, line: 104, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "filptr", scope: !298, file: !126, line: 105, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !125, file: !126, line: 376, baseType: !306, size: 64, offset: 5312)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_struct", file: !126, line: 57, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_struct", file: !309, line: 202, size: 98624, elements: !310)
!309 = !DIFile(filename: "./src/htscore.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "6879168e7f4510c5fb224772e2174ec4")
!310 = !{!311, !334, !338, !339, !340, !341, !345, !346}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "liens", scope: !308, file: !309, line: 204, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "lien_url", file: !126, line: 174, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lien_url", file: !126, line: 534, size: 640, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !319, file: !126, line: 535, baseType: !67, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "fil", scope: !319, file: !126, line: 536, baseType: !67, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sav", scope: !319, file: !126, line: 537, baseType: !67, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "cod", scope: !319, file: !126, line: 538, baseType: !67, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "former_adr", scope: !319, file: !126, line: 539, baseType: !67, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "former_fil", scope: !319, file: !126, line: 540, baseType: !67, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "premier", scope: !319, file: !126, line: 542, baseType: !28, size: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "precedent", scope: !319, file: !126, line: 543, baseType: !28, size: 32, offset: 416)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !319, file: !126, line: 544, baseType: !28, size: 32, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pass2", scope: !319, file: !126, line: 545, baseType: !28, size: 32, offset: 480)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "link_import", scope: !319, file: !126, line: 546, baseType: !4, size: 8, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !319, file: !126, line: 548, baseType: !28, size: 32, offset: 544)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "testmode", scope: !319, file: !126, line: 549, baseType: !28, size: 32, offset: 576)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sav", scope: !308, file: !309, line: 206, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "coucal", file: !126, line: 210, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct_coucal", file: !126, line: 210, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "adrfil", scope: !308, file: !309, line: 208, baseType: !335, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "former_adrfil", scope: !308, file: !309, line: 210, baseType: !335, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "normalized", scope: !308, file: !309, line: 212, baseType: !28, size: 32, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "normfil", scope: !308, file: !309, line: 213, baseType: !342, size: 16384, offset: 288)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 2048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "normfil2", scope: !308, file: !309, line: 214, baseType: !342, size: 16384, offset: 16672)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "catbuff", scope: !308, file: !309, line: 215, baseType: !347, size: 65536, offset: 33056)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 8192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "liens", scope: !125, file: !126, line: 377, baseType: !351, size: 64, offset: 5376)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "lien_tot", scope: !125, file: !126, line: 378, baseType: !28, size: 32, offset: 5440)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "liensbuf", scope: !125, file: !126, line: 379, baseType: !355, size: 64, offset: 5504)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "lien_buffers", file: !126, line: 286, baseType: !357)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "lien_buffers", file: !126, line: 286, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "robotsptr", scope: !125, file: !126, line: 380, baseType: !359, size: 64, offset: 5568)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "robots_wizard", file: !126, line: 61, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robots_wizard", file: !362, line: 42, size: 33856, elements: !363)
!362 = !DIFile(filename: "./src/htsrobots.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "a7fd093dda2609f837d8ccf3f2ab843e")
!363 = !{!364, !368, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !361, file: !362, line: 43, baseType: !365, size: 1024)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !361, file: !362, line: 44, baseType: !369, size: 32768, offset: 1024)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 4096)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !362, line: 45, baseType: !373, size: 64, offset: 33792)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lang_iso", scope: !125, file: !126, line: 381, baseType: !220, size: 192, offset: 5632)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !125, file: !126, line: 382, baseType: !220, size: 192, offset: 5824)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !125, file: !126, line: 383, baseType: !220, size: 192, offset: 6016)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mimedefs", scope: !125, file: !126, line: 384, baseType: !220, size: 192, offset: 6208)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mod_blacklist", scope: !125, file: !126, line: 385, baseType: !220, size: 192, offset: 6400)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "convert_utf8", scope: !125, file: !126, line: 386, baseType: !28, size: 32, offset: 6592)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "maxlink", scope: !125, file: !126, line: 388, baseType: !28, size: 32, offset: 6624)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "maxfilter", scope: !125, file: !126, line: 389, baseType: !28, size: 32, offset: 6656)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !125, file: !126, line: 391, baseType: !383, size: 64, offset: 6720)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !125, file: !126, line: 393, baseType: !28, size: 32, offset: 6784)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "keyboard", scope: !125, file: !126, line: 394, baseType: !28, size: 32, offset: 6816)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_limits", scope: !125, file: !126, line: 395, baseType: !28, size: 32, offset: 6848)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "background_on_suspend", scope: !125, file: !126, line: 396, baseType: !28, size: 32, offset: 6880)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "is_update", scope: !125, file: !126, line: 398, baseType: !28, size: 32, offset: 6912)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "dir_topindex", scope: !125, file: !126, line: 399, baseType: !28, size: 32, offset: 6944)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks_fun", scope: !125, file: !126, line: 402, baseType: !391, size: 64, offset: 6976)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_callbacks", file: !126, line: 49, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_hts_htmlcheck_callbacks", file: !57, line: 191, size: 3328, elements: !394)
!394 = !{!395, !404, !410, !419, !425, !431, !441, !447, !456, !465, !471, !477, !484, !493, !502, !511, !517, !526, !535, !544, !725, !734, !744, !750, !762, !768}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !393, file: !57, line: 193, baseType: !396, size: 128)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init", file: !57, line: 193, size: 128, elements: !397)
!397 = !{!398, !403}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !396, file: !57, line: 193, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_init", file: !57, line: 83, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !55}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !396, file: !57, line: 193, baseType: !55, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !393, file: !57, line: 194, baseType: !405, size: 128, offset: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uninit", file: !57, line: 194, size: 128, elements: !406)
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !405, file: !57, line: 194, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_uninit", file: !57, line: 84, baseType: !400)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !405, file: !57, line: 194, baseType: !55, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !393, file: !57, line: 195, baseType: !411, size: 128, offset: 256)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "start", file: !57, line: 195, size: 128, elements: !412)
!412 = !{!413, !418}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !411, file: !57, line: 195, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_start", file: !57, line: 85, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!28, !55, !123}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !411, file: !57, line: 195, baseType: !55, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !393, file: !57, line: 196, baseType: !420, size: 128, offset: 384)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "end", file: !57, line: 196, size: 128, elements: !421)
!421 = !{!422, !424}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !420, file: !57, line: 196, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_end", file: !57, line: 86, baseType: !415)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !420, file: !57, line: 196, baseType: !55, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "chopt", scope: !393, file: !57, line: 197, baseType: !426, size: 128, offset: 512)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chopt", file: !57, line: 197, size: 128, elements: !427)
!427 = !{!428, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !426, file: !57, line: 197, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_chopt", file: !57, line: 87, baseType: !415)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !426, file: !57, line: 197, baseType: !55, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "preprocess", scope: !393, file: !57, line: 198, baseType: !432, size: 128, offset: 640)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "preprocess", file: !57, line: 198, size: 128, elements: !433)
!433 = !{!434, !440}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !432, file: !57, line: 198, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_preprocess", file: !57, line: 92, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_process", file: !57, line: 88, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!28, !55, !123, !302, !304, !383, !383}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !432, file: !57, line: 198, baseType: !55, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "postprocess", scope: !393, file: !57, line: 199, baseType: !442, size: 128, offset: 768)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "postprocess", file: !57, line: 199, size: 128, elements: !443)
!443 = !{!444, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !442, file: !57, line: 199, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_postprocess", file: !57, line: 93, baseType: !436)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !442, file: !57, line: 199, baseType: !55, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "check_html", scope: !393, file: !57, line: 200, baseType: !448, size: 128, offset: 896)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "check_html", file: !57, line: 200, size: 128, elements: !449)
!449 = !{!450, !455}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !448, file: !57, line: 200, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_check_html", file: !57, line: 94, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!28, !55, !123, !67, !28, !383, !383}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !448, file: !57, line: 200, baseType: !55, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !393, file: !57, line: 201, baseType: !457, size: 128, offset: 1024)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "query", file: !57, line: 201, size: 128, elements: !458)
!458 = !{!459, !464}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !457, file: !57, line: 201, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_query", file: !57, line: 98, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!383, !55, !123, !383}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !457, file: !57, line: 201, baseType: !55, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "query2", scope: !393, file: !57, line: 202, baseType: !466, size: 128, offset: 1152)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "query2", file: !57, line: 202, size: 128, elements: !467)
!467 = !{!468, !470}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !466, file: !57, line: 202, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_query2", file: !57, line: 101, baseType: !461)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !466, file: !57, line: 202, baseType: !55, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "query3", scope: !393, file: !57, line: 203, baseType: !472, size: 128, offset: 1280)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "query3", file: !57, line: 203, size: 128, elements: !473)
!473 = !{!474, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !472, file: !57, line: 203, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_query3", file: !57, line: 104, baseType: !461)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !472, file: !57, line: 203, baseType: !55, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !393, file: !57, line: 204, baseType: !478, size: 128, offset: 1408)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !57, line: 204, size: 128, elements: !479)
!479 = !{!480, !483}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !478, file: !57, line: 204, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_loop", file: !57, line: 107, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !478, file: !57, line: 204, baseType: !55, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "check_link", scope: !393, file: !57, line: 205, baseType: !485, size: 128, offset: 1536)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "check_link", file: !57, line: 205, size: 128, elements: !486)
!486 = !{!487, !492}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !485, file: !57, line: 205, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_check_link", file: !57, line: 112, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!28, !55, !123, !383, !383, !28}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !485, file: !57, line: 205, baseType: !55, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "check_mime", scope: !393, file: !57, line: 206, baseType: !494, size: 128, offset: 1664)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "check_mime", file: !57, line: 206, size: 128, elements: !495)
!495 = !{!496, !501}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !494, file: !57, line: 206, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_check_mime", file: !57, line: 115, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!28, !55, !123, !383, !383, !383, !28}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !494, file: !57, line: 206, baseType: !55, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !393, file: !57, line: 207, baseType: !503, size: 128, offset: 1792)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pause", file: !57, line: 207, size: 128, elements: !504)
!504 = !{!505, !510}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !503, file: !57, line: 207, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_pause", file: !57, line: 119, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !55, !123, !383}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !503, file: !57, line: 207, baseType: !55, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "filesave", scope: !393, file: !57, line: 208, baseType: !512, size: 128, offset: 1920)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filesave", file: !57, line: 208, size: 128, elements: !513)
!513 = !{!514, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !512, file: !57, line: 208, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_filesave", file: !57, line: 121, baseType: !507)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !512, file: !57, line: 208, baseType: !55, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "filesave2", scope: !393, file: !57, line: 209, baseType: !518, size: 128, offset: 2048)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filesave2", file: !57, line: 209, size: 128, elements: !519)
!519 = !{!520, !525}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !518, file: !57, line: 209, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_filesave2", file: !57, line: 123, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !55, !123, !383, !383, !383, !28, !28, !28}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !518, file: !57, line: 209, baseType: !55, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "linkdetected", scope: !393, file: !57, line: 210, baseType: !527, size: 128, offset: 2176)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linkdetected", file: !57, line: 210, size: 128, elements: !528)
!528 = !{!529, !534}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !527, file: !57, line: 210, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_linkdetected", file: !57, line: 128, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!28, !55, !123, !67}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !527, file: !57, line: 210, baseType: !55, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "linkdetected2", scope: !393, file: !57, line: 211, baseType: !536, size: 128, offset: 2304)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linkdetected2", file: !57, line: 211, size: 128, elements: !537)
!537 = !{!538, !543}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !536, file: !57, line: 211, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_linkdetected2", file: !57, line: 130, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!28, !55, !123, !67, !383}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !536, file: !57, line: 211, baseType: !55, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "xfrstatus", scope: !393, file: !57, line: 212, baseType: !545, size: 128, offset: 2432)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrstatus", file: !57, line: 212, size: 128, elements: !546)
!546 = !{!547, !724}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !545, file: !57, line: 212, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_xfrstatus", file: !57, line: 133, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!28, !55, !123, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "lien_back", file: !126, line: 555, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lien_back", file: !126, line: 557, size: 135040, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !571, !572, !573, !574, !575, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "url_adr", scope: !554, file: !126, line: 561, baseType: !342, size: 16384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "url_fil", scope: !554, file: !126, line: 562, baseType: !342, size: 16384, offset: 16384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "url_sav", scope: !554, file: !126, line: 563, baseType: !342, size: 16384, offset: 32768)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "referer_adr", scope: !554, file: !126, line: 564, baseType: !342, size: 16384, offset: 49152)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "referer_fil", scope: !554, file: !126, line: 565, baseType: !342, size: 16384, offset: 65536)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "location_buffer", scope: !554, file: !126, line: 566, baseType: !342, size: 16384, offset: 81920)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !554, file: !126, line: 567, baseType: !67, size: 64, offset: 98304)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile_buffer", scope: !554, file: !126, line: 568, baseType: !342, size: 16384, offset: 98368)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "send_too", scope: !554, file: !126, line: 569, baseType: !275, size: 8192, offset: 114752)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !554, file: !126, line: 570, baseType: !28, size: 32, offset: 122944)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !554, file: !126, line: 571, baseType: !28, size: 32, offset: 122976)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "testmode", scope: !554, file: !126, line: 572, baseType: !28, size: 32, offset: 123008)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !554, file: !126, line: 573, baseType: !28, size: 32, offset: 123040)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_refresh", scope: !554, file: !126, line: 574, baseType: !570, size: 64, offset: 123072)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "TStamp", file: !196, line: 284, baseType: !168)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rateout", scope: !554, file: !126, line: 575, baseType: !28, size: 32, offset: 123136)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rateout_time", scope: !554, file: !126, line: 576, baseType: !570, size: 64, offset: 123200)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "maxfile_nonhtml", scope: !554, file: !126, line: 577, baseType: !195, size: 64, offset: 123264)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "maxfile_html", scope: !554, file: !126, line: 578, baseType: !195, size: 64, offset: 123328)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !554, file: !126, line: 579, baseType: !576, size: 8960, offset: 123392)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsblk", file: !126, line: 484, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsblk", file: !126, line: 486, size: 8960, elements: !578)
!578 = !{!579, !580, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !598, !602, !603, !604, !605, !606, !607, !609, !668, !669, !670, !671, !676, !677, !681, !682, !683, !684, !685, !686}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "statuscode", scope: !577, file: !126, line: 487, baseType: !28, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notmodified", scope: !577, file: !126, line: 488, baseType: !581, size: 16, offset: 32)
!581 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !577, file: !126, line: 489, baseType: !581, size: 16, offset: 48)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "is_chunk", scope: !577, file: !126, line: 490, baseType: !581, size: 16, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !577, file: !126, line: 491, baseType: !581, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "empty", scope: !577, file: !126, line: 492, baseType: !581, size: 16, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !577, file: !126, line: 493, baseType: !581, size: 16, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_trailers", scope: !577, file: !126, line: 494, baseType: !581, size: 16, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_t", scope: !577, file: !126, line: 495, baseType: !28, size: 32, offset: 160)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_max", scope: !577, file: !126, line: 496, baseType: !28, size: 32, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !577, file: !126, line: 497, baseType: !67, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !577, file: !126, line: 498, baseType: !67, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !577, file: !126, line: 499, baseType: !140, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !577, file: !126, line: 500, baseType: !195, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !577, file: !126, line: 501, baseType: !595, size: 640, offset: 512)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "contenttype", scope: !577, file: !126, line: 502, baseType: !599, size: 512, offset: 1152)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !577, file: !126, line: 503, baseType: !599, size: 512, offset: 1664)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "contentencoding", scope: !577, file: !126, line: 504, baseType: !599, size: 512, offset: 2176)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !577, file: !126, line: 505, baseType: !67, size: 64, offset: 2688)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "totalsize", scope: !577, file: !126, line: 506, baseType: !195, size: 64, offset: 2752)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "is_file", scope: !577, file: !126, line: 507, baseType: !581, size: 16, offset: 2816)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "soc", scope: !577, file: !126, line: 508, baseType: !608, size: 32, offset: 2848)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "T_SOC", file: !196, line: 323, baseType: !28)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !577, file: !126, line: 509, baseType: !610, size: 224, offset: 2880)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCaddr", file: !611, line: 91, baseType: !612)
!611 = !DIFile(filename: "./src/htsnet.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "c991984e387bd7a1b6a2629888d889ed")
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SOCaddr", file: !611, line: 93, size: 224, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "m_addr", scope: !612, file: !611, line: 103, baseType: !615, size: 224)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !611, line: 94, size: 224, elements: !616)
!616 = !{!617, !625, !645}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !615, file: !611, line: 96, baseType: !618, size: 128)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !619, line: 180, size: 128, elements: !620)
!619 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!620 = !{!621, !624}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !618, file: !619, line: 182, baseType: !622, size: 16)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !623, line: 28, baseType: !170)
!623 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !618, file: !619, line: 183, baseType: !19, size: 112, offset: 16)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !615, file: !611, line: 98, baseType: !626, size: 128)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !627, line: 245, size: 128, elements: !628)
!627 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!628 = !{!629, !630, !635, !642}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !626, file: !627, line: 247, baseType: !622, size: 16)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !626, file: !627, line: 248, baseType: !631, size: 16, offset: 16)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !627, line: 123, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !633, line: 25, baseType: !634)
!633 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !167, line: 40, baseType: !170)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !626, file: !627, line: 249, baseType: !636, size: 32, offset: 32)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !627, line: 31, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !636, file: !627, line: 33, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !627, line: 30, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !633, line: 26, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !167, line: 42, baseType: !44)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !626, file: !627, line: 252, baseType: !643, size: 64, offset: 64)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 64, elements: !10)
!644 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in6", scope: !615, file: !611, line: 101, baseType: !646, size: 224)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !627, line: 260, size: 224, elements: !647)
!647 = !{!648, !649, !650, !651, !667}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !646, file: !627, line: 262, baseType: !622, size: 16)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !646, file: !627, line: 263, baseType: !631, size: 16, offset: 16)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !646, file: !627, line: 264, baseType: !640, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !646, file: !627, line: 265, baseType: !652, size: 128, offset: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !627, line: 219, size: 128, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !652, file: !627, line: 226, baseType: !655, size: 128)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !627, line: 221, size: 128, elements: !656)
!656 = !{!657, !663, !665}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !655, file: !627, line: 223, baseType: !658, size: 128)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 128, elements: !661)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !633, line: 24, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !167, line: 38, baseType: !644)
!661 = !{!662}
!662 = !DISubrange(count: 16)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !655, file: !627, line: 224, baseType: !664, size: 128)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 128, elements: !10)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !655, file: !627, line: 225, baseType: !666, size: 128)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 128, elements: !109)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !646, file: !627, line: 266, baseType: !640, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "address_size", scope: !577, file: !126, line: 510, baseType: !28, size: 32, offset: 3104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !577, file: !126, line: 511, baseType: !140, size: 64, offset: 3136)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !577, file: !126, line: 513, baseType: !581, size: 16, offset: 3200)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_con", scope: !577, file: !126, line: 515, baseType: !672, size: 64, offset: 3264)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !674, line: 184, baseType: !675)
!674 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !674, line: 184, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lastmodified", scope: !577, file: !126, line: 517, baseType: !599, size: 512, offset: 3328)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !577, file: !126, line: 518, baseType: !678, size: 2048, offset: 3840)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "cdispo", scope: !577, file: !126, line: 519, baseType: !678, size: 2048, offset: 5888)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "crange", scope: !577, file: !126, line: 520, baseType: !195, size: 64, offset: 7936)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "crange_start", scope: !577, file: !126, line: 521, baseType: !195, size: 64, offset: 8000)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "crange_end", scope: !577, file: !126, line: 522, baseType: !195, size: 64, offset: 8064)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "debugid", scope: !577, file: !126, line: 523, baseType: !28, size: 32, offset: 8128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !577, file: !126, line: 525, baseType: !687, size: 768, offset: 8192)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsrequest", file: !126, line: 463, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsrequest", file: !126, line: 465, size: 768, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent_send", scope: !688, file: !126, line: 466, baseType: !581, size: 16)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "http11", scope: !688, file: !126, line: 467, baseType: !581, size: 16, offset: 16)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nokeepalive", scope: !688, file: !126, line: 468, baseType: !581, size: 16, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "range_used", scope: !688, file: !126, line: 469, baseType: !581, size: 16, offset: 48)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nocompression", scope: !688, file: !126, line: 470, baseType: !581, size: 16, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flush_garbage", scope: !688, file: !126, line: 471, baseType: !581, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !688, file: !126, line: 472, baseType: !383, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !688, file: !126, line: 473, baseType: !383, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !688, file: !126, line: 474, baseType: !383, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lang_iso", scope: !688, file: !126, line: 475, baseType: !383, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !688, file: !126, line: 476, baseType: !383, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !688, file: !126, line: 477, baseType: !383, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !688, file: !126, line: 478, baseType: !703, size: 256, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsrequest_proxy", file: !126, line: 452, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsrequest_proxy", file: !126, line: 454, size: 256, elements: !705)
!705 = !{!706, !707, !708, !709}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !704, file: !126, line: 455, baseType: !28, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !126, line: 456, baseType: !383, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !704, file: !126, line: 457, baseType: !28, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bindhost", scope: !704, file: !126, line: 458, baseType: !383, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "is_update", scope: !554, file: !126, line: 580, baseType: !28, size: 32, offset: 132352)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "head_request", scope: !554, file: !126, line: 581, baseType: !28, size: 32, offset: 132384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "range_req_size", scope: !554, file: !126, line: 582, baseType: !195, size: 64, offset: 132416)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ka_time_start", scope: !554, file: !126, line: 583, baseType: !570, size: 64, offset: 132480)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "http11", scope: !554, file: !126, line: 585, baseType: !28, size: 32, offset: 132544)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "is_chunk", scope: !554, file: !126, line: 586, baseType: !28, size: 32, offset: 132576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_adr", scope: !554, file: !126, line: 587, baseType: !67, size: 64, offset: 132608)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !554, file: !126, line: 588, baseType: !195, size: 64, offset: 132672)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_blocksize", scope: !554, file: !126, line: 589, baseType: !195, size: 64, offset: 132736)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !554, file: !126, line: 590, baseType: !195, size: 64, offset: 132800)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !554, file: !126, line: 594, baseType: !678, size: 2048, offset: 132864)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "stop_ftp", scope: !554, file: !126, line: 595, baseType: !28, size: 32, offset: 134912)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !554, file: !126, line: 596, baseType: !28, size: 32, offset: 134944)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "early_add", scope: !554, file: !126, line: 597, baseType: !28, size: 32, offset: 134976)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !545, file: !57, line: 212, baseType: !55, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "savename", scope: !393, file: !57, line: 213, baseType: !726, size: 128, offset: 2560)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savename", file: !57, line: 213, size: 128, elements: !727)
!727 = !{!728, !733}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !726, file: !57, line: 213, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_savename", file: !57, line: 135, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!28, !55, !123, !383, !383, !383, !383, !67}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !726, file: !57, line: 213, baseType: !55, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sendhead", scope: !393, file: !57, line: 214, baseType: !735, size: 128, offset: 2688)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sendhead", file: !57, line: 214, size: 128, elements: !736)
!736 = !{!737, !743}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !735, file: !57, line: 214, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_sendhead", file: !57, line: 142, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!28, !55, !123, !67, !383, !383, !383, !383, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !735, file: !57, line: 214, baseType: !55, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "receivehead", scope: !393, file: !57, line: 215, baseType: !745, size: 128, offset: 2816)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "receivehead", file: !57, line: 215, size: 128, elements: !746)
!746 = !{!747, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !745, file: !57, line: 215, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_receivehead", file: !57, line: 148, baseType: !739)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !745, file: !57, line: 215, baseType: !55, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !393, file: !57, line: 216, baseType: !751, size: 128, offset: 2944)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "detect", file: !57, line: 216, size: 128, elements: !752)
!752 = !{!753, !761}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !751, file: !57, line: 216, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_detect", file: !57, line: 156, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!28, !55, !123, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsmoduleStruct", file: !57, line: 56, baseType: !760)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "htsmoduleStruct", file: !57, line: 56, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !751, file: !57, line: 216, baseType: !55, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !393, file: !57, line: 217, baseType: !763, size: 128, offset: 3072)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parse", file: !57, line: 217, size: 128, elements: !764)
!764 = !{!765, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !763, file: !57, line: 217, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_parse", file: !57, line: 158, baseType: !755)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !763, file: !57, line: 217, baseType: !55, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "extsavename", scope: !393, file: !57, line: 219, baseType: !769, size: 128, offset: 3200)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extsavename", file: !57, line: 219, size: 128, elements: !770)
!770 = !{!771, !773}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !769, file: !57, line: 219, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_hts_htmlcheck_extsavename", file: !57, line: 141, baseType: !729)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "carg", scope: !769, file: !57, line: 219, baseType: !55, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "libHandles", scope: !125, file: !126, line: 404, baseType: !775, size: 128, offset: 7040)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "htslibhandles", file: !126, line: 260, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htslibhandles", file: !126, line: 270, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !776, file: !126, line: 271, baseType: !28, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !776, file: !126, line: 272, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "htslibhandle", file: !126, line: 264, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htslibhandle", file: !126, line: 266, size: 128, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "moduleName", scope: !782, file: !126, line: 267, baseType: !67, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !782, file: !126, line: 268, baseType: !61, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !125, file: !126, line: 406, baseType: !787, size: 1126016, offset: 7168)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsoptstate", file: !126, line: 216, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsoptstate", file: !126, line: 218, size: 1126016, elements: !789)
!789 = !{!790, !825, !826, !827, !828, !829, !830, !831, !832, !838, !850, !858, !864, !871, !872, !873, !874, !885, !886, !890, !891, !892, !893, !894, !895, !896, !897, !904, !905, !906, !907}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !126, line: 219, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsmutex", file: !126, line: 204, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsmutex_s", file: !794, line: 59, size: 320, elements: !795)
!794 = !DIFile(filename: "./src/htsthread.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "10292f5118e1d20eed3b8b192b447e74")
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !793, file: !794, line: 60, baseType: !797, size: 320)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !798, line: 72, baseType: !799)
!798 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !798, line: 67, size: 320, elements: !800)
!800 = !{!801, !820, !824}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !799, file: !798, line: 69, baseType: !802, size: 320)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !803, line: 22, size: 320, elements: !804)
!803 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !802, file: !803, line: 24, baseType: !28, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !802, file: !803, line: 25, baseType: !44, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !802, file: !803, line: 26, baseType: !28, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !802, file: !803, line: 28, baseType: !44, size: 32, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !802, file: !803, line: 32, baseType: !28, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !802, file: !803, line: 34, baseType: !581, size: 16, offset: 160)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !802, file: !803, line: 35, baseType: !581, size: 16, offset: 176)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !802, file: !803, line: 36, baseType: !813, size: 128, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !814, line: 55, baseType: !815)
!814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !814, line: 51, size: 128, elements: !816)
!816 = !{!817, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !815, file: !814, line: 53, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !815, file: !814, line: 54, baseType: !818, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !799, file: !798, line: 70, baseType: !821, size: 320)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 40)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !799, file: !798, line: 71, baseType: !168, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !788, file: !126, line: 221, baseType: !28, size: 32, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "exit_xh", scope: !788, file: !126, line: 222, baseType: !28, size: 32, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "back_add_stats", scope: !788, file: !126, line: 223, baseType: !28, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mimehtml_created", scope: !788, file: !126, line: 225, baseType: !28, size: 32, offset: 160)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mimemid", scope: !788, file: !126, line: 226, baseType: !220, size: 192, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mimefp", scope: !788, file: !126, line: 227, baseType: !140, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "delayedId", scope: !788, file: !126, line: 228, baseType: !28, size: 32, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "strc", scope: !788, file: !126, line: 230, baseType: !833, size: 32832, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "filenote_strc", file: !126, line: 121, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filenote_strc", file: !126, line: 123, size: 32832, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "lst", scope: !834, file: !126, line: 124, baseType: !140, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !834, file: !126, line: 125, baseType: !369, size: 32768, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !788, file: !126, line: 232, baseType: !839, size: 192, offset: 33344)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "htscallbacks", file: !126, line: 111, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htscallbacks", file: !126, line: 112, size: 192, elements: !841)
!841 = !{!842, !843, !848}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "moduleHandle", scope: !840, file: !126, line: 113, baseType: !61, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "exitFnc", scope: !840, file: !126, line: 114, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "htscallbacksfncptr", file: !126, line: 110, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!28}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !840, file: !126, line: 115, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "concat", scope: !788, file: !126, line: 233, baseType: !851, size: 1048608, offset: 33536)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "concat_strc", file: !126, line: 131, baseType: !852)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "concat_strc", file: !126, line: 133, size: 1048608, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !852, file: !126, line: 134, baseType: !28, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !852, file: !126, line: 135, baseType: !856, size: 1048576, offset: 32)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1048576, elements: !857)
!857 = !{!662, !349}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "usercmd", scope: !788, file: !126, line: 234, baseType: !859, size: 16416, offset: 1082144)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "usercommand_strc", file: !126, line: 153, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usercommand_strc", file: !126, line: 155, size: 16416, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "exe", scope: !860, file: !126, line: 156, baseType: !28, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !860, file: !126, line: 157, baseType: !342, size: 16384, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "fspc", scope: !788, file: !126, line: 235, baseType: !865, size: 96, offset: 1098560)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "fspc_strc", file: !126, line: 163, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fspc_strc", file: !126, line: 165, size: 96, elements: !867)
!867 = !{!868, !869, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !866, file: !126, line: 166, baseType: !28, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !866, file: !126, line: 167, baseType: !28, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !866, file: !126, line: 168, baseType: !28, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "userhttptype", scope: !788, file: !126, line: 236, baseType: !67, size: 64, offset: 1098688)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "verif_backblue_done", scope: !788, file: !126, line: 237, baseType: !28, size: 32, offset: 1098752)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "verif_external_status", scope: !788, file: !126, line: 238, baseType: !28, size: 32, offset: 1098784)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dns_cache", scope: !788, file: !126, line: 239, baseType: !875, size: 64, offset: 1098816)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_dnscache", file: !126, line: 53, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_dnscache", file: !878, line: 150, size: 704, elements: !879)
!878 = !DIFile(filename: "./src/htslib.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "b8775ab5fd3d72ae1f56a38e4cc386f9")
!879 = !{!880, !882, !883, !884}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !877, file: !878, line: 151, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "iadr", scope: !877, file: !878, line: 152, baseType: !383, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "host_length", scope: !877, file: !878, line: 153, baseType: !68, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !877, file: !878, line: 154, baseType: !599, size: 512, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dns_cache_nthreads", scope: !788, file: !126, line: 240, baseType: !28, size: 32, offset: 1098880)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_errmsg", scope: !788, file: !126, line: 242, baseType: !887, size: 10240, offset: 1098912)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 10240, elements: !888)
!888 = !{!889}
!889 = !DISubrange(count: 1280)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_in_html_parsing", scope: !788, file: !126, line: 243, baseType: !28, size: 32, offset: 1109152)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_in_html_done", scope: !788, file: !126, line: 244, baseType: !28, size: 32, offset: 1109184)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_in_html_poll", scope: !788, file: !126, line: 245, baseType: !28, size: 32, offset: 1109216)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_setpause", scope: !788, file: !126, line: 246, baseType: !28, size: 32, offset: 1109248)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_in_mirror", scope: !788, file: !126, line: 247, baseType: !28, size: 32, offset: 1109280)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_addurl", scope: !788, file: !126, line: 248, baseType: !302, size: 64, offset: 1109312)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_hts_cancel", scope: !788, file: !126, line: 249, baseType: !28, size: 32, offset: 1109376)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !788, file: !126, line: 250, baseType: !898, size: 64, offset: 1109440)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsoptstatecancel", file: !126, line: 194, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsoptstatecancel", file: !126, line: 196, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !900, file: !126, line: 197, baseType: !67, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !900, file: !126, line: 198, baseType: !898, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "HTbuff", scope: !788, file: !126, line: 251, baseType: !342, size: 16384, offset: 1109504)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "debug_state", scope: !788, file: !126, line: 252, baseType: !44, size: 32, offset: 1125888)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tmpnameid", scope: !788, file: !126, line: 253, baseType: !44, size: 32, offset: 1125920)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "is_ended", scope: !788, file: !126, line: 254, baseType: !28, size: 32, offset: 1125952)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_stat_struct", file: !43, line: 70, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_stat_struct", file: !126, line: 414, size: 1344, elements: !911)
!911 = !{!912, !913, !914, !915, !916, !917, !918, !922, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "HTS_TOTAL_RECV", scope: !910, file: !126, line: 415, baseType: !195, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "stat_bytes", scope: !910, file: !126, line: 416, baseType: !195, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "stat_timestart", scope: !910, file: !126, line: 418, baseType: !570, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "total_packed", scope: !910, file: !126, line: 420, baseType: !195, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "total_unpacked", scope: !910, file: !126, line: 421, baseType: !195, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "total_packedfiles", scope: !910, file: !126, line: 422, baseType: !28, size: 32, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "istat_timestart", scope: !910, file: !126, line: 424, baseType: !919, size: 128, offset: 384)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 128, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 2)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "istat_bytes", scope: !910, file: !126, line: 425, baseType: !923, size: 128, offset: 512)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !920)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "istat_reference01", scope: !910, file: !126, line: 426, baseType: !570, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "istat_idlasttimer", scope: !910, file: !126, line: 427, baseType: !28, size: 32, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "stat_files", scope: !910, file: !126, line: 429, baseType: !28, size: 32, offset: 736)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "stat_updated_files", scope: !910, file: !126, line: 430, baseType: !28, size: 32, offset: 768)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "stat_background", scope: !910, file: !126, line: 431, baseType: !28, size: 32, offset: 800)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "stat_nrequests", scope: !910, file: !126, line: 433, baseType: !28, size: 32, offset: 832)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "stat_sockid", scope: !910, file: !126, line: 434, baseType: !28, size: 32, offset: 864)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "stat_nsocket", scope: !910, file: !126, line: 435, baseType: !28, size: 32, offset: 896)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "stat_errors", scope: !910, file: !126, line: 436, baseType: !28, size: 32, offset: 928)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "stat_errors_front", scope: !910, file: !126, line: 437, baseType: !28, size: 32, offset: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "stat_warnings", scope: !910, file: !126, line: 438, baseType: !28, size: 32, offset: 992)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "stat_infos", scope: !910, file: !126, line: 439, baseType: !28, size: 32, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nbk", scope: !910, file: !126, line: 440, baseType: !28, size: 32, offset: 1056)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nb", scope: !910, file: !126, line: 441, baseType: !195, size: 64, offset: 1088)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !910, file: !126, line: 443, baseType: !195, size: 64, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !910, file: !126, line: 445, baseType: !570, size: 64, offset: 1216)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "last_request", scope: !910, file: !126, line: 446, baseType: !570, size: 64, offset: 1280)
!941 = !{}
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(name: "SInfo", scope: !120, file: !2, line: 323, type: !944, isLocal: true, isDefinition: true)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_InpInfo", file: !945, line: 62, baseType: !946)
!945 = !DIFile(filename: "./src/httrack.h", directory: "/home/raj/httrack-3.48.21", checksumkind: CSK_MD5, checksum: "bafb7689e17bce1278d11ac8ae4e8afb")
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_InpInfo", file: !945, line: 64, size: 704, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ask_refresh", scope: !946, file: !945, line: 65, baseType: !28, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !946, file: !945, line: 66, baseType: !28, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "stat_bytes", scope: !946, file: !945, line: 67, baseType: !195, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "stat_time", scope: !946, file: !945, line: 68, baseType: !28, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "lien_n", scope: !946, file: !945, line: 69, baseType: !28, size: 32, offset: 160)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lien_tot", scope: !946, file: !945, line: 70, baseType: !28, size: 32, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "stat_nsocket", scope: !946, file: !945, line: 71, baseType: !28, size: 32, offset: 224)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !946, file: !945, line: 72, baseType: !28, size: 32, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "irate", scope: !946, file: !945, line: 73, baseType: !28, size: 32, offset: 288)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ft", scope: !946, file: !945, line: 74, baseType: !28, size: 32, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stat_written", scope: !946, file: !945, line: 75, baseType: !195, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "stat_updated", scope: !946, file: !945, line: 76, baseType: !28, size: 32, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "stat_errors", scope: !946, file: !945, line: 77, baseType: !28, size: 32, offset: 480)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "stat_warnings", scope: !946, file: !945, line: 78, baseType: !28, size: 32, offset: 512)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "stat_infos", scope: !946, file: !945, line: 79, baseType: !28, size: 32, offset: 544)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "stat_timestart", scope: !946, file: !945, line: 80, baseType: !570, size: 64, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "stat_back", scope: !946, file: !945, line: 81, baseType: !28, size: 32, offset: 640)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression())
!966 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !967, isLocal: true, isDefinition: true)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2584, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 323)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !174, isLocal: true, isDefinition: true)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !974, isLocal: true, isDefinition: true)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !975)
!975 = !{!976}
!976 = !DISubrange(count: 54)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !2, line: 442, type: !979, isLocal: true, isDefinition: true)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 53)
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !979, isLocal: true, isDefinition: true)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !2, line: 444, type: !986, isLocal: true, isDefinition: true)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 56)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !2, line: 463, type: !9, isLocal: true, isDefinition: true)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !2, line: 463, type: !993, isLocal: true, isDefinition: true)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 65)
!996 = !DIGlobalVariableExpression(var: !997, expr: !DIExpression())
!997 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !9, isLocal: true, isDefinition: true)
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !993, isLocal: true, isDefinition: true)
!1000 = !DIGlobalVariableExpression(var: !1001, expr: !DIExpression())
!1001 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !9, isLocal: true, isDefinition: true)
!1002 = !DIGlobalVariableExpression(var: !1003, expr: !DIExpression())
!1003 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !993, isLocal: true, isDefinition: true)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(scope: null, file: !2, line: 475, type: !103, isLocal: true, isDefinition: true)
!1006 = !DIGlobalVariableExpression(var: !1007, expr: !DIExpression())
!1007 = distinct !DIGlobalVariable(scope: null, file: !2, line: 475, type: !599, isLocal: true, isDefinition: true)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !9, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !2, line: 485, type: !90, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !2, line: 485, type: !1014, isLocal: true, isDefinition: true)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 63)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(scope: null, file: !2, line: 493, type: !1019, isLocal: true, isDefinition: true)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 61)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !90, isLocal: true, isDefinition: true)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !1014, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !2, line: 510, type: !1028, isLocal: true, isDefinition: true)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 73)
!1031 = !DIGlobalVariableExpression(var: !1032, expr: !DIExpression())
!1032 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !9, isLocal: true, isDefinition: true)
!1033 = !DIGlobalVariableExpression(var: !1034, expr: !DIExpression())
!1034 = distinct !DIGlobalVariable(scope: null, file: !2, line: 512, type: !1035, isLocal: true, isDefinition: true)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !1036)
!1036 = !{!1037}
!1037 = !DISubrange(count: 50)
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !1040, isLocal: true, isDefinition: true)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 10)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !1045, isLocal: true, isDefinition: true)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 46)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !1050, isLocal: true, isDefinition: true)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !920)
!1051 = !DIGlobalVariableExpression(var: !1052, expr: !DIExpression())
!1052 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !1053, isLocal: true, isDefinition: true)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !1054)
!1054 = !{!1055}
!1055 = !DISubrange(count: 38)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(scope: null, file: !2, line: 517, type: !1035, isLocal: true, isDefinition: true)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(scope: null, file: !2, line: 524, type: !1060, isLocal: true, isDefinition: true)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !1061)
!1061 = !{!1062}
!1062 = !DISubrange(count: 58)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression())
!1064 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !986, isLocal: true, isDefinition: true)
!1065 = !DIGlobalVariableExpression(var: !1066, expr: !DIExpression())
!1066 = distinct !DIGlobalVariable(scope: null, file: !2, line: 534, type: !1060, isLocal: true, isDefinition: true)
!1067 = !DIGlobalVariableExpression(var: !1068, expr: !DIExpression())
!1068 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !108, isLocal: true, isDefinition: true)
!1069 = !DIGlobalVariableExpression(var: !1070, expr: !DIExpression())
!1070 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !1071, isLocal: true, isDefinition: true)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !1072)
!1072 = !{!1073}
!1073 = !DISubrange(count: 62)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !1076, isLocal: true, isDefinition: true)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 728, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 91)
!1079 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression())
!1080 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !108, isLocal: true, isDefinition: true)
!1081 = !DIGlobalVariableExpression(var: !1082, expr: !DIExpression())
!1082 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !108, isLocal: true, isDefinition: true)
!1083 = !DIGlobalVariableExpression(var: !1084, expr: !DIExpression())
!1084 = distinct !DIGlobalVariable(scope: null, file: !2, line: 567, type: !19, isLocal: true, isDefinition: true)
!1085 = !DIGlobalVariableExpression(var: !1086, expr: !DIExpression())
!1086 = distinct !DIGlobalVariable(scope: null, file: !2, line: 569, type: !1087, isLocal: true, isDefinition: true)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !661)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !1090, isLocal: true, isDefinition: true)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 25)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression())
!1094 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !821, isLocal: true, isDefinition: true)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression())
!1096 = distinct !DIGlobalVariable(scope: null, file: !2, line: 579, type: !19, isLocal: true, isDefinition: true)
!1097 = !DIGlobalVariableExpression(var: !1098, expr: !DIExpression())
!1098 = distinct !DIGlobalVariable(scope: null, file: !2, line: 582, type: !19, isLocal: true, isDefinition: true)
!1099 = !DIGlobalVariableExpression(var: !1100, expr: !DIExpression())
!1100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 585, type: !96, isLocal: true, isDefinition: true)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 588, type: !1103, isLocal: true, isDefinition: true)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 19)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 601, type: !1090, isLocal: true, isDefinition: true)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !113, isLocal: true, isDefinition: true)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(scope: null, file: !95, line: 215, type: !1112, isLocal: true, isDefinition: true)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 17)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !95, line: 190, type: !1117, isLocal: true, isDefinition: true)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 15)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(scope: null, file: !95, line: 193, type: !1122, isLocal: true, isDefinition: true)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 21)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression())
!1126 = distinct !DIGlobalVariable(name: "s", scope: !1127, file: !2, line: 621, type: !1128, isLocal: true, isDefinition: true)
!1127 = distinct !DISubprogram(name: "htsshow_query", scope: !2, file: !2, line: 619, type: !462, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 12)
!1131 = !DIGlobalVariableExpression(var: !1132, expr: !DIExpression())
!1132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 623, type: !979, isLocal: true, isDefinition: true)
!1133 = !DIGlobalVariableExpression(var: !1134, expr: !DIExpression())
!1134 = distinct !DIGlobalVariable(name: "s", scope: !1135, file: !2, line: 631, type: !1128, isLocal: true, isDefinition: true)
!1135 = distinct !DISubprogram(name: "htsshow_query2", scope: !2, file: !2, line: 628, type: !462, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1136 = !DIGlobalVariableExpression(var: !1137, expr: !DIExpression())
!1137 = distinct !DIGlobalVariable(name: "line", scope: !1138, file: !2, line: 641, type: !678, isLocal: true, isDefinition: true)
!1138 = distinct !DISubprogram(name: "htsshow_query3", scope: !2, file: !2, line: 638, type: !462, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression())
!1140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 643, type: !1141, isLocal: true, isDefinition: true)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3288, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 411)
!1144 = !DIGlobalVariableExpression(var: !1145, expr: !DIExpression())
!1145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !108, isLocal: true, isDefinition: true)
!1146 = !DIGlobalVariableExpression(var: !1147, expr: !DIExpression())
!1147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 657, type: !90, isLocal: true, isDefinition: true)
!1148 = !DIGlobalVariableExpression(var: !1149, expr: !DIExpression())
!1149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 801, type: !1150, isLocal: true, isDefinition: true)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !1151)
!1151 = !{!1152}
!1152 = !DISubrange(count: 28)
!1153 = !DIGlobalVariableExpression(var: !1154, expr: !DIExpression())
!1154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 848, type: !1155, isLocal: true, isDefinition: true)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 51)
!1158 = !DIGlobalVariableExpression(var: !1159, expr: !DIExpression())
!1159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !19, isLocal: true, isDefinition: true)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !1040, isLocal: true, isDefinition: true)
!1162 = !DIGlobalVariableExpression(var: !1163, expr: !DIExpression())
!1163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 869, type: !1164, isLocal: true, isDefinition: true)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 29)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 772, type: !79, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !1171, isLocal: true, isDefinition: true)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 33)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 940, type: !1176, isLocal: true, isDefinition: true)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 59)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression())
!1180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 943, type: !1181, isLocal: true, isDefinition: true)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 32)
!1184 = !{i32 7, !"Dwarf Version", i32 5}
!1185 = !{i32 2, !"Debug Info Version", i32 3}
!1186 = !{i32 1, !"wchar_size", i32 4}
!1187 = !{i32 8, !"PIC Level", i32 2}
!1188 = !{i32 7, !"PIE Level", i32 2}
!1189 = !{i32 7, !"uwtable", i32 2}
!1190 = !{i32 7, !"frame-pointer", i32 2}
!1191 = !{!"clang version 16.0.0"}
!1192 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 205, type: !1193, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!28, !28, !302}
!1195 = !DILocalVariable(name: "argc", arg: 1, scope: !1192, file: !2, line: 205, type: !28)
!1196 = !DILocation(line: 205, column: 14, scope: !1192)
!1197 = !DILocalVariable(name: "argv", arg: 2, scope: !1192, file: !2, line: 205, type: !302)
!1198 = !DILocation(line: 205, column: 27, scope: !1192)
!1199 = !DILocalVariable(name: "ret", scope: !1192, file: !2, line: 206, type: !28)
!1200 = !DILocation(line: 206, column: 7, scope: !1192)
!1201 = !DILocalVariable(name: "opt", scope: !1192, file: !2, line: 207, type: !123)
!1202 = !DILocation(line: 207, column: 13, scope: !1192)
!1203 = !DILocation(line: 228, column: 3, scope: !1192)
!1204 = !DILocation(line: 229, column: 3, scope: !1192)
!1205 = !DILocation(line: 232, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 232, column: 7)
!1207 = !DILocation(line: 232, column: 24, scope: !1206)
!1208 = !DILocation(line: 232, column: 7, scope: !1192)
!1209 = !DILocation(line: 233, column: 13, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 232, column: 45)
!1211 = !DILocation(line: 235, column: 7, scope: !1210)
!1212 = !DILocation(line: 233, column: 5, scope: !1210)
!1213 = !DILocation(line: 236, column: 5, scope: !1210)
!1214 = !DILocation(line: 237, column: 3, scope: !1210)
!1215 = !DILocation(line: 239, column: 22, scope: !1192)
!1216 = !DILocation(line: 239, column: 20, scope: !1192)
!1217 = !DILocation(line: 239, column: 7, scope: !1192)
!1218 = !DILocation(line: 240, column: 3, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 240, column: 3)
!1220 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 240, column: 3)
!1221 = !DILocation(line: 240, column: 3, scope: !1220)
!1222 = !DILocation(line: 242, column: 3, scope: !1192)
!1223 = !DILocalVariable(name: "carg", scope: !1224, file: !2, line: 242, type: !55)
!1224 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 242, column: 3)
!1225 = !DILocation(line: 242, column: 3, scope: !1224)
!1226 = !DILocation(line: 243, column: 3, scope: !1192)
!1227 = !DILocalVariable(name: "carg", scope: !1228, file: !2, line: 243, type: !55)
!1228 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 243, column: 3)
!1229 = !DILocation(line: 243, column: 3, scope: !1228)
!1230 = !DILocation(line: 244, column: 3, scope: !1192)
!1231 = !DILocalVariable(name: "carg", scope: !1232, file: !2, line: 244, type: !55)
!1232 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 244, column: 3)
!1233 = !DILocation(line: 244, column: 3, scope: !1232)
!1234 = !DILocation(line: 245, column: 3, scope: !1192)
!1235 = !DILocalVariable(name: "carg", scope: !1236, file: !2, line: 245, type: !55)
!1236 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 245, column: 3)
!1237 = !DILocation(line: 245, column: 3, scope: !1236)
!1238 = !DILocation(line: 246, column: 3, scope: !1192)
!1239 = !DILocalVariable(name: "carg", scope: !1240, file: !2, line: 246, type: !55)
!1240 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 246, column: 3)
!1241 = !DILocation(line: 246, column: 3, scope: !1240)
!1242 = !DILocation(line: 247, column: 3, scope: !1192)
!1243 = !DILocalVariable(name: "carg", scope: !1244, file: !2, line: 247, type: !55)
!1244 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 247, column: 3)
!1245 = !DILocation(line: 247, column: 3, scope: !1244)
!1246 = !DILocation(line: 248, column: 3, scope: !1192)
!1247 = !DILocalVariable(name: "carg", scope: !1248, file: !2, line: 248, type: !55)
!1248 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 248, column: 3)
!1249 = !DILocation(line: 248, column: 3, scope: !1248)
!1250 = !DILocation(line: 249, column: 3, scope: !1192)
!1251 = !DILocalVariable(name: "carg", scope: !1252, file: !2, line: 249, type: !55)
!1252 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 249, column: 3)
!1253 = !DILocation(line: 249, column: 3, scope: !1252)
!1254 = !DILocation(line: 250, column: 3, scope: !1192)
!1255 = !DILocalVariable(name: "carg", scope: !1256, file: !2, line: 250, type: !55)
!1256 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 250, column: 3)
!1257 = !DILocation(line: 250, column: 3, scope: !1256)
!1258 = !DILocation(line: 251, column: 3, scope: !1192)
!1259 = !DILocalVariable(name: "carg", scope: !1260, file: !2, line: 251, type: !55)
!1260 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 251, column: 3)
!1261 = !DILocation(line: 251, column: 3, scope: !1260)
!1262 = !DILocation(line: 252, column: 3, scope: !1192)
!1263 = !DILocalVariable(name: "carg", scope: !1264, file: !2, line: 252, type: !55)
!1264 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 252, column: 3)
!1265 = !DILocation(line: 252, column: 3, scope: !1264)
!1266 = !DILocation(line: 253, column: 3, scope: !1192)
!1267 = !DILocalVariable(name: "carg", scope: !1268, file: !2, line: 253, type: !55)
!1268 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 253, column: 3)
!1269 = !DILocation(line: 253, column: 3, scope: !1268)
!1270 = !DILocation(line: 254, column: 3, scope: !1192)
!1271 = !DILocalVariable(name: "carg", scope: !1272, file: !2, line: 254, type: !55)
!1272 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 254, column: 3)
!1273 = !DILocation(line: 254, column: 3, scope: !1272)
!1274 = !DILocation(line: 255, column: 3, scope: !1192)
!1275 = !DILocalVariable(name: "carg", scope: !1276, file: !2, line: 255, type: !55)
!1276 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 255, column: 3)
!1277 = !DILocation(line: 255, column: 3, scope: !1276)
!1278 = !DILocation(line: 256, column: 3, scope: !1192)
!1279 = !DILocalVariable(name: "carg", scope: !1280, file: !2, line: 256, type: !55)
!1280 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 256, column: 3)
!1281 = !DILocation(line: 256, column: 3, scope: !1280)
!1282 = !DILocation(line: 257, column: 3, scope: !1192)
!1283 = !DILocalVariable(name: "carg", scope: !1284, file: !2, line: 257, type: !55)
!1284 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 257, column: 3)
!1285 = !DILocation(line: 257, column: 3, scope: !1284)
!1286 = !DILocation(line: 258, column: 3, scope: !1192)
!1287 = !DILocalVariable(name: "carg", scope: !1288, file: !2, line: 258, type: !55)
!1288 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 258, column: 3)
!1289 = !DILocation(line: 258, column: 3, scope: !1288)
!1290 = !DILocation(line: 259, column: 3, scope: !1192)
!1291 = !DILocalVariable(name: "carg", scope: !1292, file: !2, line: 259, type: !55)
!1292 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 259, column: 3)
!1293 = !DILocation(line: 259, column: 3, scope: !1292)
!1294 = !DILocation(line: 260, column: 3, scope: !1192)
!1295 = !DILocalVariable(name: "carg", scope: !1296, file: !2, line: 260, type: !55)
!1296 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 260, column: 3)
!1297 = !DILocation(line: 260, column: 3, scope: !1296)
!1298 = !DILocation(line: 261, column: 3, scope: !1192)
!1299 = !DILocalVariable(name: "carg", scope: !1300, file: !2, line: 261, type: !55)
!1300 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 261, column: 3)
!1301 = !DILocation(line: 261, column: 3, scope: !1300)
!1302 = !DILocation(line: 262, column: 3, scope: !1192)
!1303 = !DILocalVariable(name: "carg", scope: !1304, file: !2, line: 262, type: !55)
!1304 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 262, column: 3)
!1305 = !DILocation(line: 262, column: 3, scope: !1304)
!1306 = !DILocation(line: 263, column: 3, scope: !1192)
!1307 = !DILocalVariable(name: "carg", scope: !1308, file: !2, line: 263, type: !55)
!1308 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 263, column: 3)
!1309 = !DILocation(line: 263, column: 3, scope: !1308)
!1310 = !DILocation(line: 264, column: 3, scope: !1192)
!1311 = !DILocalVariable(name: "carg", scope: !1312, file: !2, line: 264, type: !55)
!1312 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 264, column: 3)
!1313 = !DILocation(line: 264, column: 3, scope: !1312)
!1314 = !DILocation(line: 266, column: 19, scope: !1192)
!1315 = !DILocation(line: 266, column: 25, scope: !1192)
!1316 = !DILocation(line: 266, column: 31, scope: !1192)
!1317 = !DILocation(line: 266, column: 9, scope: !1192)
!1318 = !DILocation(line: 266, column: 7, scope: !1192)
!1319 = !DILocation(line: 267, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 267, column: 7)
!1321 = !DILocation(line: 267, column: 7, scope: !1192)
!1322 = !DILocation(line: 268, column: 13, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 267, column: 12)
!1324 = !DILocation(line: 268, column: 42, scope: !1323)
!1325 = !DILocation(line: 268, column: 31, scope: !1323)
!1326 = !DILocation(line: 268, column: 5, scope: !1323)
!1327 = !DILocation(line: 269, column: 3, scope: !1323)
!1328 = !DILocation(line: 270, column: 14, scope: !1192)
!1329 = !DILocation(line: 271, column: 16, scope: !1192)
!1330 = !DILocation(line: 271, column: 3, scope: !1192)
!1331 = !DILocation(line: 272, column: 3, scope: !1192)
!1332 = !DILocation(line: 273, column: 3, scope: !1192)
!1333 = !DILocation(line: 279, column: 10, scope: !1192)
!1334 = !DILocation(line: 279, column: 3, scope: !1192)
!1335 = distinct !DISubprogram(name: "signal_handlers", scope: !2, file: !2, line: 951, type: !1336, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null}
!1338 = !DILocation(line: 963, column: 3, scope: !1335)
!1339 = !DILocation(line: 964, column: 3, scope: !1335)
!1340 = !DILocation(line: 968, column: 3, scope: !1335)
!1341 = !DILocation(line: 970, column: 3, scope: !1335)
!1342 = !DILocation(line: 971, column: 3, scope: !1335)
!1343 = !DILocation(line: 974, column: 3, scope: !1335)
!1344 = !DILocation(line: 977, column: 3, scope: !1335)
!1345 = !DILocation(line: 980, column: 3, scope: !1335)
!1346 = !DILocation(line: 983, column: 3, scope: !1335)
!1347 = !DILocation(line: 986, column: 3, scope: !1335)
!1348 = !DILocation(line: 988, column: 1, scope: !1335)
!1349 = distinct !DISubprogram(name: "abortf_", scope: !95, file: !95, line: 95, type: !1350, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !383, !383, !28}
!1352 = !DILocalVariable(name: "exp", arg: 1, scope: !1349, file: !95, line: 95, type: !383)
!1353 = !DILocation(line: 95, column: 44, scope: !1349)
!1354 = !DILocalVariable(name: "file", arg: 2, scope: !1349, file: !95, line: 95, type: !383)
!1355 = !DILocation(line: 95, column: 61, scope: !1349)
!1356 = !DILocalVariable(name: "line", arg: 3, scope: !1349, file: !95, line: 95, type: !28)
!1357 = !DILocation(line: 95, column: 71, scope: !1349)
!1358 = !DILocation(line: 99, column: 14, scope: !1349)
!1359 = !DILocation(line: 99, column: 19, scope: !1349)
!1360 = !DILocation(line: 99, column: 25, scope: !1349)
!1361 = !DILocation(line: 99, column: 3, scope: !1349)
!1362 = !DILocation(line: 100, column: 3, scope: !1349)
!1363 = distinct !DISubprogram(name: "htsshow_init", scope: !2, file: !2, line: 285, type: !401, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1364 = !DILocalVariable(name: "carg", arg: 1, scope: !1363, file: !2, line: 285, type: !55)
!1365 = !DILocation(line: 285, column: 54, scope: !1363)
!1366 = !DILocation(line: 286, column: 1, scope: !1363)
!1367 = distinct !DISubprogram(name: "htsshow_uninit", scope: !2, file: !2, line: 287, type: !401, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1368 = !DILocalVariable(name: "carg", arg: 1, scope: !1367, file: !2, line: 287, type: !55)
!1369 = !DILocation(line: 287, column: 56, scope: !1367)
!1370 = !DILocation(line: 288, column: 1, scope: !1367)
!1371 = distinct !DISubprogram(name: "htsshow_start", scope: !2, file: !2, line: 289, type: !416, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1372 = !DILocalVariable(name: "carg", arg: 1, scope: !1371, file: !2, line: 289, type: !55)
!1373 = !DILocation(line: 289, column: 54, scope: !1371)
!1374 = !DILocalVariable(name: "opt", arg: 2, scope: !1371, file: !2, line: 289, type: !123)
!1375 = !DILocation(line: 289, column: 71, scope: !1371)
!1376 = !DILocation(line: 290, column: 12, scope: !1371)
!1377 = !DILocation(line: 291, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 291, column: 7)
!1379 = !DILocation(line: 291, column: 12, scope: !1378)
!1380 = !DILocation(line: 291, column: 27, scope: !1378)
!1381 = !DILocation(line: 291, column: 7, scope: !1371)
!1382 = !DILocation(line: 292, column: 14, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 291, column: 33)
!1384 = !DILocation(line: 293, column: 5, scope: !1383)
!1385 = !DILocation(line: 294, column: 3, scope: !1383)
!1386 = !DILocation(line: 295, column: 3, scope: !1371)
!1387 = distinct !DISubprogram(name: "htsshow_end", scope: !2, file: !2, line: 300, type: !416, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1388 = !DILocalVariable(name: "carg", arg: 1, scope: !1387, file: !2, line: 300, type: !55)
!1389 = !DILocation(line: 300, column: 52, scope: !1387)
!1390 = !DILocalVariable(name: "opt", arg: 2, scope: !1387, file: !2, line: 300, type: !123)
!1391 = !DILocation(line: 300, column: 69, scope: !1387)
!1392 = !DILocation(line: 301, column: 3, scope: !1387)
!1393 = distinct !DISubprogram(name: "htsshow_chopt", scope: !2, file: !2, line: 297, type: !416, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1394 = !DILocalVariable(name: "carg", arg: 1, scope: !1393, file: !2, line: 297, type: !55)
!1395 = !DILocation(line: 297, column: 54, scope: !1393)
!1396 = !DILocalVariable(name: "opt", arg: 2, scope: !1393, file: !2, line: 297, type: !123)
!1397 = !DILocation(line: 297, column: 71, scope: !1393)
!1398 = !DILocation(line: 298, column: 24, scope: !1393)
!1399 = !DILocation(line: 298, column: 30, scope: !1393)
!1400 = !DILocation(line: 298, column: 10, scope: !1393)
!1401 = !DILocation(line: 298, column: 3, scope: !1393)
!1402 = distinct !DISubprogram(name: "htsshow_preprocesshtml", scope: !2, file: !2, line: 303, type: !438, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1403 = !DILocalVariable(name: "carg", arg: 1, scope: !1402, file: !2, line: 303, type: !55)
!1404 = !DILocation(line: 303, column: 63, scope: !1402)
!1405 = !DILocalVariable(name: "opt", arg: 2, scope: !1402, file: !2, line: 304, type: !123)
!1406 = !DILocation(line: 304, column: 54, scope: !1402)
!1407 = !DILocalVariable(name: "html", arg: 3, scope: !1402, file: !2, line: 304, type: !302)
!1408 = !DILocation(line: 304, column: 66, scope: !1402)
!1409 = !DILocalVariable(name: "len", arg: 4, scope: !1402, file: !2, line: 304, type: !304)
!1410 = !DILocation(line: 304, column: 77, scope: !1402)
!1411 = !DILocalVariable(name: "url_address", arg: 5, scope: !1402, file: !2, line: 305, type: !383)
!1412 = !DILocation(line: 305, column: 55, scope: !1402)
!1413 = !DILocalVariable(name: "url_file", arg: 6, scope: !1402, file: !2, line: 306, type: !383)
!1414 = !DILocation(line: 306, column: 55, scope: !1402)
!1415 = !DILocation(line: 307, column: 3, scope: !1402)
!1416 = distinct !DISubprogram(name: "htsshow_postprocesshtml", scope: !2, file: !2, line: 309, type: !438, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1417 = !DILocalVariable(name: "carg", arg: 1, scope: !1416, file: !2, line: 309, type: !55)
!1418 = !DILocation(line: 309, column: 64, scope: !1416)
!1419 = !DILocalVariable(name: "opt", arg: 2, scope: !1416, file: !2, line: 310, type: !123)
!1420 = !DILocation(line: 310, column: 55, scope: !1416)
!1421 = !DILocalVariable(name: "html", arg: 3, scope: !1416, file: !2, line: 310, type: !302)
!1422 = !DILocation(line: 310, column: 67, scope: !1416)
!1423 = !DILocalVariable(name: "len", arg: 4, scope: !1416, file: !2, line: 311, type: !304)
!1424 = !DILocation(line: 311, column: 49, scope: !1416)
!1425 = !DILocalVariable(name: "url_address", arg: 5, scope: !1416, file: !2, line: 311, type: !383)
!1426 = !DILocation(line: 311, column: 66, scope: !1416)
!1427 = !DILocalVariable(name: "url_file", arg: 6, scope: !1416, file: !2, line: 312, type: !383)
!1428 = !DILocation(line: 312, column: 56, scope: !1416)
!1429 = !DILocation(line: 313, column: 3, scope: !1416)
!1430 = distinct !DISubprogram(name: "htsshow_checkhtml", scope: !2, file: !2, line: 315, type: !453, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!1431 = !DILocalVariable(name: "carg", arg: 1, scope: !1430, file: !2, line: 315, type: !55)
!1432 = !DILocation(line: 315, column: 58, scope: !1430)
!1433 = !DILocalVariable(name: "opt", arg: 2, scope: !1430, file: !2, line: 315, type: !123)
!1434 = !DILocation(line: 315, column: 75, scope: !1430)
!1435 = !DILocalVariable(name: "html", arg: 3, scope: !1430, file: !2, line: 316, type: !67)
!1436 = !DILocation(line: 316, column: 44, scope: !1430)
!1437 = !DILocalVariable(name: "len", arg: 4, scope: !1430, file: !2, line: 316, type: !28)
!1438 = !DILocation(line: 316, column: 54, scope: !1430)
!1439 = !DILocalVariable(name: "url_address", arg: 5, scope: !1430, file: !2, line: 317, type: !383)
!1440 = !DILocation(line: 317, column: 50, scope: !1430)
!1441 = !DILocalVariable(name: "url_file", arg: 6, scope: !1430, file: !2, line: 318, type: !383)
!1442 = !DILocation(line: 318, column: 50, scope: !1430)
!1443 = !DILocation(line: 319, column: 3, scope: !1430)
!1444 = !DILocalVariable(name: "carg", arg: 1, scope: !1127, file: !2, line: 619, type: !55)
!1445 = !DILocation(line: 619, column: 62, scope: !1127)
!1446 = !DILocalVariable(name: "opt", arg: 2, scope: !1127, file: !2, line: 620, type: !123)
!1447 = !DILocation(line: 620, column: 53, scope: !1127)
!1448 = !DILocalVariable(name: "question", arg: 3, scope: !1127, file: !2, line: 620, type: !383)
!1449 = !DILocation(line: 620, column: 70, scope: !1127)
!1450 = !DILocation(line: 623, column: 68, scope: !1127)
!1451 = !DILocation(line: 623, column: 3, scope: !1127)
!1452 = !DILocation(line: 624, column: 3, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 624, column: 3)
!1454 = !DILocation(line: 625, column: 10, scope: !1127)
!1455 = !DILocation(line: 625, column: 3, scope: !1127)
!1456 = !DILocation(line: 626, column: 3, scope: !1127)
!1457 = !DILocalVariable(name: "carg", arg: 1, scope: !1135, file: !2, line: 628, type: !55)
!1458 = !DILocation(line: 628, column: 63, scope: !1135)
!1459 = !DILocalVariable(name: "opt", arg: 2, scope: !1135, file: !2, line: 629, type: !123)
!1460 = !DILocation(line: 629, column: 54, scope: !1135)
!1461 = !DILocalVariable(name: "question", arg: 3, scope: !1135, file: !2, line: 630, type: !383)
!1462 = !DILocation(line: 630, column: 55, scope: !1135)
!1463 = !DILocation(line: 633, column: 68, scope: !1135)
!1464 = !DILocation(line: 633, column: 3, scope: !1135)
!1465 = !DILocation(line: 634, column: 3, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 634, column: 3)
!1467 = !DILocation(line: 635, column: 10, scope: !1135)
!1468 = !DILocation(line: 635, column: 3, scope: !1135)
!1469 = !DILocation(line: 636, column: 3, scope: !1135)
!1470 = !DILocalVariable(name: "carg", arg: 1, scope: !1138, file: !2, line: 638, type: !55)
!1471 = !DILocation(line: 638, column: 63, scope: !1138)
!1472 = !DILocalVariable(name: "opt", arg: 2, scope: !1138, file: !2, line: 639, type: !123)
!1473 = !DILocation(line: 639, column: 54, scope: !1138)
!1474 = !DILocalVariable(name: "question", arg: 3, scope: !1138, file: !2, line: 640, type: !383)
!1475 = !DILocation(line: 640, column: 55, scope: !1138)
!1476 = !DILocation(line: 651, column: 10, scope: !1138)
!1477 = !DILocation(line: 643, column: 3, scope: !1138)
!1478 = !DILocation(line: 652, column: 3, scope: !1138)
!1479 = !DILocation(line: 653, column: 5, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 652, column: 6)
!1481 = !DILocation(line: 654, column: 5, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 654, column: 5)
!1483 = !DILocation(line: 655, column: 12, scope: !1480)
!1484 = !DILocation(line: 655, column: 5, scope: !1480)
!1485 = !DILocation(line: 656, column: 3, scope: !1480)
!1486 = !DILocation(line: 656, column: 12, scope: !1138)
!1487 = !DILocation(line: 656, column: 11, scope: !1138)
!1488 = distinct !{!1488, !1478, !1489, !1490}
!1489 = !DILocation(line: 656, column: 29, scope: !1138)
!1490 = !{!"llvm.loop.mustprogress"}
!1491 = !DILocation(line: 657, column: 3, scope: !1138)
!1492 = !DILocation(line: 658, column: 3, scope: !1138)
!1493 = !DILocalVariable(name: "carg", arg: 1, scope: !120, file: !2, line: 321, type: !55)
!1494 = !DILocation(line: 321, column: 53, scope: !120)
!1495 = !DILocalVariable(name: "opt", arg: 2, scope: !120, file: !2, line: 321, type: !123)
!1496 = !DILocation(line: 321, column: 70, scope: !120)
!1497 = !DILocalVariable(name: "back", arg: 3, scope: !120, file: !2, line: 321, type: !552)
!1498 = !DILocation(line: 321, column: 87, scope: !120)
!1499 = !DILocalVariable(name: "back_max", arg: 4, scope: !120, file: !2, line: 321, type: !28)
!1500 = !DILocation(line: 321, column: 97, scope: !120)
!1501 = !DILocalVariable(name: "back_index", arg: 5, scope: !120, file: !2, line: 321, type: !28)
!1502 = !DILocation(line: 321, column: 111, scope: !120)
!1503 = !DILocalVariable(name: "lien_n", arg: 6, scope: !120, file: !2, line: 321, type: !28)
!1504 = !DILocation(line: 321, column: 127, scope: !120)
!1505 = !DILocalVariable(name: "lien_tot", arg: 7, scope: !120, file: !2, line: 321, type: !28)
!1506 = !DILocation(line: 321, column: 139, scope: !120)
!1507 = !DILocalVariable(name: "stat_time", arg: 8, scope: !120, file: !2, line: 321, type: !28)
!1508 = !DILocation(line: 321, column: 153, scope: !120)
!1509 = !DILocalVariable(name: "stats", arg: 9, scope: !120, file: !2, line: 321, type: !908)
!1510 = !DILocation(line: 321, column: 182, scope: !120)
!1511 = !DILocalVariable(name: "mytime", scope: !120, file: !2, line: 326, type: !570)
!1512 = !DILocation(line: 326, column: 10, scope: !120)
!1513 = !DILocalVariable(name: "rate", scope: !120, file: !2, line: 327, type: !168)
!1514 = !DILocation(line: 327, column: 12, scope: !120)
!1515 = !DILocalVariable(name: "st", scope: !120, file: !2, line: 328, type: !678)
!1516 = !DILocation(line: 328, column: 8, scope: !120)
!1517 = !DILocalVariable(name: "stat_written", scope: !120, file: !2, line: 331, type: !28)
!1518 = !DILocation(line: 331, column: 7, scope: !120)
!1519 = !DILocalVariable(name: "stat_updated", scope: !120, file: !2, line: 332, type: !28)
!1520 = !DILocation(line: 332, column: 7, scope: !120)
!1521 = !DILocalVariable(name: "stat_errors", scope: !120, file: !2, line: 333, type: !28)
!1522 = !DILocation(line: 333, column: 7, scope: !120)
!1523 = !DILocalVariable(name: "stat_warnings", scope: !120, file: !2, line: 334, type: !28)
!1524 = !DILocation(line: 334, column: 7, scope: !120)
!1525 = !DILocalVariable(name: "stat_infos", scope: !120, file: !2, line: 335, type: !28)
!1526 = !DILocation(line: 335, column: 7, scope: !120)
!1527 = !DILocalVariable(name: "nbk", scope: !120, file: !2, line: 336, type: !28)
!1528 = !DILocation(line: 336, column: 7, scope: !120)
!1529 = !DILocalVariable(name: "stat_nsocket", scope: !120, file: !2, line: 337, type: !28)
!1530 = !DILocation(line: 337, column: 7, scope: !120)
!1531 = !DILocalVariable(name: "stat_bytes", scope: !120, file: !2, line: 338, type: !195)
!1532 = !DILocation(line: 338, column: 9, scope: !120)
!1533 = !DILocalVariable(name: "stat_bytes_recv", scope: !120, file: !2, line: 339, type: !195)
!1534 = !DILocation(line: 339, column: 9, scope: !120)
!1535 = !DILocalVariable(name: "irate", scope: !120, file: !2, line: 340, type: !28)
!1536 = !DILocation(line: 340, column: 7, scope: !120)
!1537 = !DILocation(line: 342, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !120, file: !2, line: 342, column: 7)
!1539 = !DILocation(line: 342, column: 7, scope: !120)
!1540 = !DILocation(line: 343, column: 20, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 342, column: 14)
!1542 = !DILocation(line: 343, column: 27, scope: !1541)
!1543 = !DILocation(line: 343, column: 18, scope: !1541)
!1544 = !DILocation(line: 344, column: 20, scope: !1541)
!1545 = !DILocation(line: 344, column: 27, scope: !1541)
!1546 = !DILocation(line: 344, column: 18, scope: !1541)
!1547 = !DILocation(line: 345, column: 19, scope: !1541)
!1548 = !DILocation(line: 345, column: 26, scope: !1541)
!1549 = !DILocation(line: 345, column: 17, scope: !1541)
!1550 = !DILocation(line: 346, column: 21, scope: !1541)
!1551 = !DILocation(line: 346, column: 28, scope: !1541)
!1552 = !DILocation(line: 346, column: 19, scope: !1541)
!1553 = !DILocation(line: 347, column: 18, scope: !1541)
!1554 = !DILocation(line: 347, column: 25, scope: !1541)
!1555 = !DILocation(line: 347, column: 16, scope: !1541)
!1556 = !DILocation(line: 348, column: 11, scope: !1541)
!1557 = !DILocation(line: 348, column: 18, scope: !1541)
!1558 = !DILocation(line: 348, column: 9, scope: !1541)
!1559 = !DILocation(line: 349, column: 20, scope: !1541)
!1560 = !DILocation(line: 349, column: 27, scope: !1541)
!1561 = !DILocation(line: 349, column: 18, scope: !1541)
!1562 = !DILocation(line: 350, column: 19, scope: !1541)
!1563 = !DILocation(line: 350, column: 26, scope: !1541)
!1564 = !DILocation(line: 350, column: 13, scope: !1541)
!1565 = !DILocation(line: 350, column: 11, scope: !1541)
!1566 = !DILocation(line: 351, column: 18, scope: !1541)
!1567 = !DILocation(line: 351, column: 25, scope: !1541)
!1568 = !DILocation(line: 351, column: 16, scope: !1541)
!1569 = !DILocation(line: 352, column: 23, scope: !1541)
!1570 = !DILocation(line: 352, column: 30, scope: !1541)
!1571 = !DILocation(line: 352, column: 21, scope: !1541)
!1572 = !DILocation(line: 353, column: 3, scope: !1541)
!1573 = !DILocation(line: 355, column: 8, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !120, file: !2, line: 355, column: 7)
!1575 = !DILocation(line: 355, column: 7, scope: !120)
!1576 = !DILocation(line: 356, column: 5, scope: !1574)
!1577 = !DILocation(line: 358, column: 12, scope: !120)
!1578 = !DILocation(line: 358, column: 10, scope: !120)
!1579 = !DILocation(line: 359, column: 8, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !120, file: !2, line: 359, column: 7)
!1581 = !DILocation(line: 359, column: 18, scope: !1580)
!1582 = !DILocation(line: 359, column: 23, scope: !1580)
!1583 = !DILocation(line: 359, column: 27, scope: !1580)
!1584 = !DILocation(line: 359, column: 43, scope: !1580)
!1585 = !DILocation(line: 359, column: 7, scope: !120)
!1586 = !DILocation(line: 360, column: 19, scope: !1580)
!1587 = !DILocation(line: 360, column: 37, scope: !1580)
!1588 = !DILocation(line: 360, column: 35, scope: !1580)
!1589 = !DILocation(line: 360, column: 12, scope: !1580)
!1590 = !DILocation(line: 360, column: 10, scope: !1580)
!1591 = !DILocation(line: 360, column: 5, scope: !1580)
!1592 = !DILocation(line: 362, column: 10, scope: !1580)
!1593 = !DILocation(line: 365, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !120, file: !2, line: 365, column: 7)
!1595 = !DILocation(line: 365, column: 18, scope: !1594)
!1596 = !DILocation(line: 365, column: 7, scope: !120)
!1597 = !DILocation(line: 366, column: 24, scope: !1594)
!1598 = !DILocation(line: 366, column: 22, scope: !1594)
!1599 = !DILocation(line: 366, column: 5, scope: !1594)
!1600 = !DILocation(line: 367, column: 7, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !120, file: !2, line: 367, column: 7)
!1602 = !DILocation(line: 367, column: 17, scope: !1601)
!1603 = !DILocation(line: 367, column: 7, scope: !120)
!1604 = !DILocation(line: 368, column: 23, scope: !1601)
!1605 = !DILocation(line: 368, column: 21, scope: !1601)
!1606 = !DILocation(line: 368, column: 5, scope: !1601)
!1607 = !DILocation(line: 369, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !120, file: !2, line: 369, column: 7)
!1609 = !DILocation(line: 369, column: 16, scope: !1608)
!1610 = !DILocation(line: 369, column: 7, scope: !120)
!1611 = !DILocation(line: 370, column: 22, scope: !1608)
!1612 = !DILocation(line: 370, column: 20, scope: !1608)
!1613 = !DILocation(line: 370, column: 5, scope: !1608)
!1614 = !DILocation(line: 371, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !120, file: !2, line: 371, column: 7)
!1616 = !DILocation(line: 371, column: 14, scope: !1615)
!1617 = !DILocation(line: 371, column: 7, scope: !120)
!1618 = !DILocation(line: 372, column: 20, scope: !1615)
!1619 = !DILocation(line: 372, column: 18, scope: !1615)
!1620 = !DILocation(line: 372, column: 5, scope: !1615)
!1621 = !DILocation(line: 373, column: 24, scope: !120)
!1622 = !DILocation(line: 373, column: 22, scope: !120)
!1623 = !DILocation(line: 374, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !120, file: !2, line: 374, column: 7)
!1625 = !DILocation(line: 374, column: 12, scope: !1624)
!1626 = !DILocation(line: 374, column: 7, scope: !120)
!1627 = !DILocation(line: 375, column: 18, scope: !1624)
!1628 = !DILocation(line: 375, column: 16, scope: !1624)
!1629 = !DILocation(line: 375, column: 5, scope: !1624)
!1630 = !DILocation(line: 376, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !120, file: !2, line: 376, column: 7)
!1632 = !DILocation(line: 376, column: 13, scope: !1631)
!1633 = !DILocation(line: 376, column: 7, scope: !120)
!1634 = !DILocation(line: 377, column: 19, scope: !1631)
!1635 = !DILocation(line: 377, column: 17, scope: !1631)
!1636 = !DILocation(line: 377, column: 5, scope: !1631)
!1637 = !DILocation(line: 378, column: 13, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !120, file: !2, line: 378, column: 7)
!1639 = !DILocation(line: 378, column: 19, scope: !1638)
!1640 = !DILocation(line: 378, column: 7, scope: !120)
!1641 = !DILocation(line: 379, column: 25, scope: !1638)
!1642 = !DILocation(line: 379, column: 17, scope: !1638)
!1643 = !DILocation(line: 379, column: 5, scope: !1638)
!1644 = !DILocation(line: 380, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !120, file: !2, line: 380, column: 7)
!1646 = !DILocation(line: 380, column: 11, scope: !1645)
!1647 = !DILocation(line: 380, column: 7, scope: !120)
!1648 = !DILocation(line: 381, column: 23, scope: !1645)
!1649 = !DILocation(line: 381, column: 21, scope: !1645)
!1650 = !DILocation(line: 381, column: 5, scope: !1645)
!1651 = !DILocation(line: 382, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !120, file: !2, line: 382, column: 7)
!1653 = !DILocation(line: 382, column: 20, scope: !1652)
!1654 = !DILocation(line: 382, column: 7, scope: !120)
!1655 = !DILocation(line: 383, column: 26, scope: !1652)
!1656 = !DILocation(line: 383, column: 24, scope: !1652)
!1657 = !DILocation(line: 383, column: 5, scope: !1652)
!1658 = !DILocation(line: 384, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !120, file: !2, line: 384, column: 7)
!1660 = !DILocation(line: 384, column: 20, scope: !1659)
!1661 = !DILocation(line: 384, column: 7, scope: !120)
!1662 = !DILocation(line: 385, column: 26, scope: !1659)
!1663 = !DILocation(line: 385, column: 24, scope: !1659)
!1664 = !DILocation(line: 385, column: 5, scope: !1659)
!1665 = !DILocation(line: 386, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !120, file: !2, line: 386, column: 7)
!1667 = !DILocation(line: 386, column: 19, scope: !1666)
!1668 = !DILocation(line: 386, column: 7, scope: !120)
!1669 = !DILocation(line: 387, column: 25, scope: !1666)
!1670 = !DILocation(line: 387, column: 23, scope: !1666)
!1671 = !DILocation(line: 387, column: 5, scope: !1666)
!1672 = !DILocation(line: 388, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !120, file: !2, line: 388, column: 7)
!1674 = !DILocation(line: 388, column: 21, scope: !1673)
!1675 = !DILocation(line: 388, column: 7, scope: !120)
!1676 = !DILocation(line: 389, column: 27, scope: !1673)
!1677 = !DILocation(line: 389, column: 25, scope: !1673)
!1678 = !DILocation(line: 389, column: 5, scope: !1673)
!1679 = !DILocation(line: 390, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !120, file: !2, line: 390, column: 7)
!1681 = !DILocation(line: 390, column: 18, scope: !1680)
!1682 = !DILocation(line: 390, column: 7, scope: !120)
!1683 = !DILocation(line: 391, column: 24, scope: !1680)
!1684 = !DILocation(line: 391, column: 22, scope: !1680)
!1685 = !DILocation(line: 391, column: 5, scope: !1680)
!1686 = !DILocation(line: 393, column: 9, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !120, file: !2, line: 393, column: 7)
!1688 = !DILocation(line: 393, column: 18, scope: !1687)
!1689 = !DILocation(line: 393, column: 16, scope: !1687)
!1690 = !DILocation(line: 393, column: 31, scope: !1687)
!1691 = !DILocation(line: 393, column: 38, scope: !1687)
!1692 = !DILocation(line: 393, column: 43, scope: !1687)
!1693 = !DILocation(line: 393, column: 52, scope: !1687)
!1694 = !DILocation(line: 393, column: 50, scope: !1687)
!1695 = !DILocation(line: 393, column: 65, scope: !1687)
!1696 = !DILocation(line: 393, column: 7, scope: !120)
!1697 = !DILocalVariable(name: "strc", scope: !1698, file: !2, line: 394, type: !1699)
!1698 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 393, column: 71)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "strc_int2bytes2", file: !43, line: 53, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strc_int2bytes2", file: !126, line: 143, size: 67968, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1705}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "catbuff", scope: !1700, file: !126, line: 144, baseType: !347, size: 65536)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "buff1", scope: !1700, file: !126, line: 145, baseType: !678, size: 2048, offset: 65536)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "buff2", scope: !1700, file: !126, line: 146, baseType: !1181, size: 256, offset: 67584)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "buffadr", scope: !1700, file: !126, line: 147, baseType: !1706, size: 128, offset: 67840)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !920)
!1707 = !DILocation(line: 394, column: 21, scope: !1698)
!1708 = !DILocalVariable(name: "strc2", scope: !1698, file: !2, line: 394, type: !1699)
!1709 = !DILocation(line: 394, column: 27, scope: !1698)
!1710 = !DILocalVariable(name: "strc3", scope: !1698, file: !2, line: 394, type: !1699)
!1711 = !DILocation(line: 394, column: 34, scope: !1698)
!1712 = !DILocation(line: 396, column: 19, scope: !1698)
!1713 = !DILocation(line: 396, column: 17, scope: !1698)
!1714 = !DILocation(line: 398, column: 5, scope: !1698)
!1715 = !DILocation(line: 398, column: 11, scope: !1698)
!1716 = !DILocation(line: 399, column: 14, scope: !1698)
!1717 = !DILocation(line: 399, column: 18, scope: !1698)
!1718 = !DILocation(line: 399, column: 5, scope: !1698)
!1719 = !DILocation(line: 400, column: 5, scope: !1698)
!1720 = !DILocation(line: 419, column: 44, scope: !1698)
!1721 = !DILocation(line: 419, column: 21, scope: !1698)
!1722 = !DILocation(line: 419, column: 63, scope: !1698)
!1723 = !DILocation(line: 420, column: 24, scope: !1698)
!1724 = !DILocation(line: 420, column: 40, scope: !1698)
!1725 = !DILocation(line: 420, column: 54, scope: !1698)
!1726 = !DILocation(line: 421, column: 24, scope: !1698)
!1727 = !DILocation(line: 421, column: 12, scope: !1698)
!1728 = !DILocation(line: 421, column: 74, scope: !1698)
!1729 = !DILocation(line: 421, column: 68, scope: !1698)
!1730 = !DILocation(line: 421, column: 47, scope: !1698)
!1731 = !DILocation(line: 422, column: 48, scope: !1698)
!1732 = !DILocation(line: 422, column: 42, scope: !1698)
!1733 = !DILocation(line: 422, column: 21, scope: !1698)
!1734 = !DILocation(line: 422, column: 67, scope: !1698)
!1735 = !DILocation(line: 423, column: 24, scope: !1698)
!1736 = !DILocation(line: 423, column: 50, scope: !1698)
!1737 = !DILocation(line: 401, column: 5, scope: !1698)
!1738 = !DILocation(line: 428, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 428, column: 9)
!1740 = !DILocation(line: 428, column: 20, scope: !1739)
!1741 = !DILocation(line: 428, column: 9, scope: !1698)
!1742 = !DILocalVariable(name: "j", scope: !1743, file: !2, line: 429, type: !28)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 428, column: 26)
!1744 = !DILocation(line: 429, column: 11, scope: !1743)
!1745 = !DILocalVariable(name: "k", scope: !1743, file: !2, line: 429, type: !28)
!1746 = !DILocation(line: 429, column: 14, scope: !1743)
!1747 = !DILocalVariable(name: "index", scope: !1743, file: !2, line: 430, type: !28)
!1748 = !DILocation(line: 430, column: 11, scope: !1743)
!1749 = !DILocalVariable(name: "ok", scope: !1743, file: !2, line: 431, type: !28)
!1750 = !DILocation(line: 431, column: 11, scope: !1743)
!1751 = !DILocalVariable(name: "l", scope: !1743, file: !2, line: 432, type: !28)
!1752 = !DILocation(line: 432, column: 11, scope: !1743)
!1753 = !DILocalVariable(name: "StatsBuffer", scope: !1743, file: !2, line: 435, type: !1754)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1755, size: 949760, elements: !20)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_StatsBuffer", file: !945, line: 42, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_StatsBuffer", file: !945, line: 44, size: 67840, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1756, file: !945, line: 45, baseType: !275, size: 8192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1756, file: !945, line: 46, baseType: !275, size: 8192, offset: 8192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1756, file: !945, line: 47, baseType: !678, size: 2048, offset: 16384)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "url_sav", scope: !1756, file: !945, line: 48, baseType: !342, size: 16384, offset: 18432)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "url_adr", scope: !1756, file: !945, line: 49, baseType: !342, size: 16384, offset: 34816)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "url_fil", scope: !1756, file: !945, line: 50, baseType: !342, size: 16384, offset: 51200)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1756, file: !945, line: 51, baseType: !195, size: 64, offset: 67584)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sizetot", scope: !1756, file: !945, line: 52, baseType: !195, size: 64, offset: 67648)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1756, file: !945, line: 53, baseType: !28, size: 32, offset: 67712)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1756, file: !945, line: 55, baseType: !28, size: 32, offset: 67744)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "actived", scope: !1756, file: !945, line: 57, baseType: !28, size: 32, offset: 67776)
!1769 = !DILocation(line: 435, column: 21, scope: !1743)
!1770 = !DILocalVariable(name: "i", scope: !1771, file: !2, line: 438, type: !28)
!1771 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 437, column: 7)
!1772 = !DILocation(line: 438, column: 13, scope: !1771)
!1773 = !DILocation(line: 440, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 440, column: 9)
!1775 = !DILocation(line: 440, column: 13, scope: !1774)
!1776 = !DILocation(line: 440, column: 20, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !2, line: 440, column: 9)
!1778 = !DILocation(line: 440, column: 22, scope: !1777)
!1779 = !DILocation(line: 440, column: 9, scope: !1774)
!1780 = !DILocation(line: 441, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 440, column: 43)
!1782 = !DILocation(line: 442, column: 11, scope: !1781)
!1783 = !DILocation(line: 443, column: 11, scope: !1781)
!1784 = !DILocation(line: 444, column: 11, scope: !1781)
!1785 = !DILocation(line: 445, column: 23, scope: !1781)
!1786 = !DILocation(line: 445, column: 11, scope: !1781)
!1787 = !DILocation(line: 445, column: 26, scope: !1781)
!1788 = !DILocation(line: 445, column: 31, scope: !1781)
!1789 = !DILocation(line: 446, column: 23, scope: !1781)
!1790 = !DILocation(line: 446, column: 11, scope: !1781)
!1791 = !DILocation(line: 446, column: 26, scope: !1781)
!1792 = !DILocation(line: 446, column: 31, scope: !1781)
!1793 = !DILocation(line: 447, column: 23, scope: !1781)
!1794 = !DILocation(line: 447, column: 11, scope: !1781)
!1795 = !DILocation(line: 447, column: 26, scope: !1781)
!1796 = !DILocation(line: 447, column: 34, scope: !1781)
!1797 = !DILocation(line: 448, column: 9, scope: !1781)
!1798 = !DILocation(line: 440, column: 39, scope: !1777)
!1799 = !DILocation(line: 440, column: 9, scope: !1777)
!1800 = distinct !{!1800, !1779, !1801, !1490}
!1801 = !DILocation(line: 448, column: 9, scope: !1774)
!1802 = !DILocation(line: 450, column: 13, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 450, column: 7)
!1804 = !DILocation(line: 450, column: 11, scope: !1803)
!1805 = !DILocation(line: 450, column: 18, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 450, column: 7)
!1807 = !DILocation(line: 450, column: 20, scope: !1806)
!1808 = !DILocation(line: 450, column: 7, scope: !1803)
!1809 = !DILocation(line: 451, column: 15, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 451, column: 9)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 450, column: 30)
!1812 = !DILocation(line: 451, column: 13, scope: !1810)
!1813 = !DILocation(line: 451, column: 21, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 451, column: 9)
!1815 = !DILocation(line: 451, column: 23, scope: !1814)
!1816 = !DILocation(line: 451, column: 28, scope: !1814)
!1817 = !DILocation(line: 451, column: 32, scope: !1814)
!1818 = !DILocation(line: 451, column: 38, scope: !1814)
!1819 = !DILocation(line: 0, scope: !1814)
!1820 = !DILocation(line: 451, column: 9, scope: !1810)
!1821 = !DILocalVariable(name: "_i", scope: !1822, file: !2, line: 452, type: !28)
!1822 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 451, column: 60)
!1823 = !DILocation(line: 452, column: 15, scope: !1822)
!1824 = !DILocation(line: 454, column: 24, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 454, column: 11)
!1826 = !DILocation(line: 454, column: 22, scope: !1825)
!1827 = !DILocation(line: 454, column: 18, scope: !1825)
!1828 = !DILocation(line: 454, column: 15, scope: !1825)
!1829 = !DILocation(line: 454, column: 28, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 454, column: 11)
!1831 = !DILocation(line: 454, column: 33, scope: !1830)
!1832 = !DILocation(line: 454, column: 31, scope: !1830)
!1833 = !DILocation(line: 454, column: 55, scope: !1830)
!1834 = !DILocation(line: 454, column: 59, scope: !1830)
!1835 = !DILocation(line: 454, column: 65, scope: !1830)
!1836 = !DILocation(line: 0, scope: !1830)
!1837 = !DILocation(line: 454, column: 11, scope: !1825)
!1838 = !DILocalVariable(name: "i", scope: !1839, file: !2, line: 455, type: !28)
!1839 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 454, column: 88)
!1840 = !DILocation(line: 455, column: 17, scope: !1839)
!1841 = !DILocation(line: 455, column: 22, scope: !1839)
!1842 = !DILocation(line: 455, column: 35, scope: !1839)
!1843 = !DILocation(line: 455, column: 33, scope: !1839)
!1844 = !DILocation(line: 455, column: 41, scope: !1839)
!1845 = !DILocation(line: 455, column: 39, scope: !1839)
!1846 = !DILocation(line: 457, column: 17, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 457, column: 17)
!1848 = !DILocation(line: 457, column: 22, scope: !1847)
!1849 = !DILocation(line: 457, column: 25, scope: !1847)
!1850 = !DILocation(line: 457, column: 32, scope: !1847)
!1851 = !DILocation(line: 457, column: 17, scope: !1839)
!1852 = !DILocation(line: 459, column: 18, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 457, column: 38)
!1854 = !DILocation(line: 460, column: 23, scope: !1853)
!1855 = !DILocation(line: 460, column: 15, scope: !1853)
!1856 = !DILocation(line: 462, column: 22, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 462, column: 21)
!1858 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 460, column: 26)
!1859 = !DILocation(line: 462, column: 27, scope: !1857)
!1860 = !DILocation(line: 462, column: 30, scope: !1857)
!1861 = !DILocation(line: 462, column: 37, scope: !1857)
!1862 = !DILocation(line: 462, column: 42, scope: !1857)
!1863 = !DILocation(line: 462, column: 46, scope: !1857)
!1864 = !DILocation(line: 462, column: 51, scope: !1857)
!1865 = !DILocation(line: 462, column: 54, scope: !1857)
!1866 = !DILocation(line: 462, column: 61, scope: !1857)
!1867 = !DILocation(line: 462, column: 21, scope: !1858)
!1868 = !DILocation(line: 463, column: 19, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 462, column: 68)
!1870 = !DILocation(line: 464, column: 22, scope: !1869)
!1871 = !DILocation(line: 465, column: 17, scope: !1869)
!1872 = !DILocation(line: 466, column: 17, scope: !1858)
!1873 = !DILocation(line: 468, column: 21, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 468, column: 21)
!1875 = !DILocation(line: 468, column: 26, scope: !1874)
!1876 = !DILocation(line: 468, column: 29, scope: !1874)
!1877 = !DILocation(line: 468, column: 36, scope: !1874)
!1878 = !DILocation(line: 468, column: 21, scope: !1858)
!1879 = !DILocation(line: 469, column: 19, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 468, column: 60)
!1881 = !DILocation(line: 470, column: 22, scope: !1880)
!1882 = !DILocation(line: 471, column: 17, scope: !1880)
!1883 = !DILocation(line: 471, column: 28, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 471, column: 28)
!1885 = !DILocation(line: 471, column: 33, scope: !1884)
!1886 = !DILocation(line: 471, column: 36, scope: !1884)
!1887 = !DILocation(line: 471, column: 43, scope: !1884)
!1888 = !DILocation(line: 471, column: 28, scope: !1874)
!1889 = !DILocation(line: 472, column: 19, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 471, column: 65)
!1891 = !DILocation(line: 473, column: 22, scope: !1890)
!1892 = !DILocation(line: 474, column: 17, scope: !1890)
!1893 = !DILocation(line: 474, column: 28, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 474, column: 28)
!1895 = !DILocation(line: 474, column: 33, scope: !1894)
!1896 = !DILocation(line: 474, column: 36, scope: !1894)
!1897 = !DILocation(line: 474, column: 43, scope: !1894)
!1898 = !DILocation(line: 474, column: 28, scope: !1884)
!1899 = !DILocation(line: 475, column: 19, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1894, file: !2, line: 474, column: 63)
!1901 = !DILocation(line: 476, column: 22, scope: !1900)
!1902 = !DILocation(line: 477, column: 17, scope: !1900)
!1903 = !DILocation(line: 477, column: 28, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1894, file: !2, line: 477, column: 28)
!1905 = !DILocation(line: 477, column: 33, scope: !1904)
!1906 = !DILocation(line: 477, column: 36, scope: !1904)
!1907 = !DILocation(line: 477, column: 43, scope: !1904)
!1908 = !DILocation(line: 477, column: 28, scope: !1894)
!1909 = !DILocation(line: 478, column: 39, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !2, line: 477, column: 67)
!1911 = !DILocation(line: 478, column: 27, scope: !1910)
!1912 = !DILocation(line: 478, column: 46, scope: !1910)
!1913 = !DILocation(line: 478, column: 64, scope: !1910)
!1914 = !DILocation(line: 478, column: 69, scope: !1910)
!1915 = !DILocation(line: 478, column: 72, scope: !1910)
!1916 = !DILocation(line: 478, column: 19, scope: !1910)
!1917 = !DILocation(line: 479, column: 22, scope: !1910)
!1918 = !DILocation(line: 480, column: 17, scope: !1910)
!1919 = !DILocation(line: 481, column: 17, scope: !1858)
!1920 = !DILocation(line: 483, column: 21, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 483, column: 21)
!1922 = !DILocation(line: 483, column: 26, scope: !1921)
!1923 = !DILocation(line: 483, column: 29, scope: !1921)
!1924 = !DILocation(line: 483, column: 36, scope: !1921)
!1925 = !DILocation(line: 483, column: 21, scope: !1858)
!1926 = !DILocation(line: 484, column: 23, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 484, column: 23)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 483, column: 53)
!1929 = !DILocation(line: 484, column: 28, scope: !1927)
!1930 = !DILocation(line: 484, column: 31, scope: !1927)
!1931 = !DILocation(line: 484, column: 33, scope: !1927)
!1932 = !DILocation(line: 484, column: 44, scope: !1927)
!1933 = !DILocation(line: 484, column: 23, scope: !1928)
!1934 = !DILocation(line: 485, column: 21, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 484, column: 52)
!1936 = !DILocation(line: 486, column: 24, scope: !1935)
!1937 = !DILocation(line: 487, column: 19, scope: !1935)
!1938 = !DILocation(line: 487, column: 30, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 487, column: 30)
!1940 = !DILocation(line: 487, column: 35, scope: !1939)
!1941 = !DILocation(line: 487, column: 38, scope: !1939)
!1942 = !DILocation(line: 487, column: 40, scope: !1939)
!1943 = !DILocation(line: 487, column: 51, scope: !1939)
!1944 = !DILocation(line: 488, column: 30, scope: !1939)
!1945 = !DILocation(line: 488, column: 33, scope: !1939)
!1946 = !DILocation(line: 488, column: 38, scope: !1939)
!1947 = !DILocation(line: 488, column: 41, scope: !1939)
!1948 = !DILocation(line: 488, column: 43, scope: !1939)
!1949 = !DILocation(line: 488, column: 54, scope: !1939)
!1950 = !DILocation(line: 487, column: 30, scope: !1927)
!1951 = !DILocalVariable(name: "tempo", scope: !1952, file: !2, line: 489, type: !678)
!1952 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 488, column: 62)
!1953 = !DILocation(line: 489, column: 26, scope: !1952)
!1954 = !DILocation(line: 491, column: 21, scope: !1952)
!1955 = !DILocation(line: 491, column: 30, scope: !1952)
!1956 = !DILocation(line: 492, column: 36, scope: !1952)
!1957 = !DILocation(line: 492, column: 43, scope: !1952)
!1958 = !DILocation(line: 492, column: 48, scope: !1952)
!1959 = !DILocation(line: 492, column: 51, scope: !1952)
!1960 = !DILocation(line: 492, column: 53, scope: !1952)
!1961 = !DILocation(line: 492, column: 21, scope: !1952)
!1962 = !DILocation(line: 493, column: 21, scope: !1952)
!1963 = !DILocation(line: 494, column: 24, scope: !1952)
!1964 = !DILocation(line: 495, column: 19, scope: !1952)
!1965 = !DILocation(line: 496, column: 21, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 495, column: 26)
!1967 = !DILocation(line: 497, column: 24, scope: !1966)
!1968 = !DILocation(line: 499, column: 17, scope: !1928)
!1969 = !DILocation(line: 500, column: 17, scope: !1858)
!1970 = !DILocation(line: 503, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 503, column: 19)
!1972 = !DILocation(line: 503, column: 19, scope: !1853)
!1973 = !DILocalVariable(name: "s", scope: !1974, file: !2, line: 504, type: !342)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !2, line: 503, column: 23)
!1975 = !DILocation(line: 504, column: 29, scope: !1974)
!1976 = !DILocation(line: 507, column: 43, scope: !1974)
!1977 = !DILocation(line: 507, column: 29, scope: !1974)
!1978 = !DILocation(line: 507, column: 17, scope: !1974)
!1979 = !DILocation(line: 507, column: 36, scope: !1974)
!1980 = !DILocation(line: 507, column: 41, scope: !1974)
!1981 = !DILocation(line: 509, column: 17, scope: !1974)
!1982 = !DILocation(line: 509, column: 22, scope: !1974)
!1983 = !DILocation(line: 510, column: 17, scope: !1974)
!1984 = !DILocation(line: 511, column: 28, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 511, column: 21)
!1986 = !DILocation(line: 511, column: 33, scope: !1985)
!1987 = !DILocation(line: 511, column: 36, scope: !1985)
!1988 = !DILocation(line: 511, column: 21, scope: !1985)
!1989 = !DILocation(line: 511, column: 21, scope: !1974)
!1990 = !DILocation(line: 512, column: 19, scope: !1985)
!1991 = !DILocation(line: 514, column: 19, scope: !1985)
!1992 = !DILocation(line: 515, column: 21, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 515, column: 21)
!1994 = !DILocation(line: 515, column: 26, scope: !1993)
!1995 = !DILocation(line: 515, column: 29, scope: !1993)
!1996 = !DILocation(line: 515, column: 40, scope: !1993)
!1997 = !DILocation(line: 515, column: 21, scope: !1974)
!1998 = !DILocation(line: 516, column: 19, scope: !1993)
!1999 = !DILocation(line: 517, column: 17, scope: !1974)
!2000 = !DILocation(line: 519, column: 29, scope: !1974)
!2001 = !DILocation(line: 519, column: 17, scope: !1974)
!2002 = !DILocation(line: 519, column: 36, scope: !1974)
!2003 = !DILocation(line: 519, column: 44, scope: !1974)
!2004 = !DILocalVariable(name: "a", scope: !2005, file: !2, line: 521, type: !67)
!2005 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 520, column: 17)
!2006 = !DILocation(line: 521, column: 25, scope: !2005)
!2007 = !DILocation(line: 521, column: 37, scope: !2005)
!2008 = !DILocation(line: 521, column: 29, scope: !2005)
!2009 = !DILocation(line: 523, column: 23, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 523, column: 23)
!2011 = !DILocation(line: 523, column: 23, scope: !2005)
!2012 = !DILocation(line: 524, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 523, column: 26)
!2014 = !DILocation(line: 525, column: 22, scope: !2013)
!2015 = !DILocation(line: 525, column: 24, scope: !2013)
!2016 = !DILocation(line: 526, column: 19, scope: !2013)
!2017 = !DILocation(line: 529, column: 39, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 529, column: 21)
!2019 = !DILocation(line: 529, column: 32, scope: !2018)
!2020 = !DILocation(line: 529, column: 26, scope: !2018)
!2021 = !DILocation(line: 529, column: 24, scope: !2018)
!2022 = !DILocation(line: 529, column: 43, scope: !2018)
!2023 = !DILocation(line: 529, column: 21, scope: !1974)
!2024 = !DILocation(line: 530, column: 19, scope: !2018)
!2025 = !DILocation(line: 533, column: 31, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 531, column: 22)
!2027 = !DILocation(line: 533, column: 19, scope: !2026)
!2028 = !DILocation(line: 533, column: 38, scope: !2026)
!2029 = !DILocation(line: 533, column: 46, scope: !2026)
!2030 = !DILocation(line: 534, column: 19, scope: !2026)
!2031 = !DILocation(line: 536, column: 19, scope: !2026)
!2032 = !DILocation(line: 537, column: 19, scope: !2026)
!2033 = !DILocation(line: 541, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 541, column: 21)
!2035 = !DILocation(line: 541, column: 26, scope: !2034)
!2036 = !DILocation(line: 541, column: 29, scope: !2034)
!2037 = !DILocation(line: 541, column: 31, scope: !2034)
!2038 = !DILocation(line: 541, column: 41, scope: !2034)
!2039 = !DILocation(line: 541, column: 21, scope: !1974)
!2040 = !DILocation(line: 542, column: 48, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 541, column: 47)
!2042 = !DILocation(line: 542, column: 53, scope: !2041)
!2043 = !DILocation(line: 542, column: 56, scope: !2041)
!2044 = !DILocation(line: 542, column: 58, scope: !2041)
!2045 = !DILocation(line: 542, column: 31, scope: !2041)
!2046 = !DILocation(line: 542, column: 19, scope: !2041)
!2047 = !DILocation(line: 542, column: 38, scope: !2041)
!2048 = !DILocation(line: 542, column: 46, scope: !2041)
!2049 = !DILocation(line: 543, column: 45, scope: !2041)
!2050 = !DILocation(line: 543, column: 50, scope: !2041)
!2051 = !DILocation(line: 543, column: 53, scope: !2041)
!2052 = !DILocation(line: 543, column: 55, scope: !2041)
!2053 = !DILocation(line: 543, column: 31, scope: !2041)
!2054 = !DILocation(line: 543, column: 19, scope: !2041)
!2055 = !DILocation(line: 543, column: 38, scope: !2041)
!2056 = !DILocation(line: 543, column: 43, scope: !2041)
!2057 = !DILocation(line: 544, column: 17, scope: !2041)
!2058 = !DILocation(line: 545, column: 23, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 545, column: 23)
!2060 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 544, column: 24)
!2061 = !DILocation(line: 545, column: 28, scope: !2059)
!2062 = !DILocation(line: 545, column: 31, scope: !2059)
!2063 = !DILocation(line: 545, column: 38, scope: !2059)
!2064 = !DILocation(line: 545, column: 23, scope: !2060)
!2065 = !DILocation(line: 546, column: 50, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 545, column: 55)
!2067 = !DILocation(line: 546, column: 55, scope: !2066)
!2068 = !DILocation(line: 546, column: 58, scope: !2066)
!2069 = !DILocation(line: 546, column: 60, scope: !2066)
!2070 = !DILocation(line: 546, column: 33, scope: !2066)
!2071 = !DILocation(line: 546, column: 21, scope: !2066)
!2072 = !DILocation(line: 546, column: 40, scope: !2066)
!2073 = !DILocation(line: 546, column: 48, scope: !2066)
!2074 = !DILocation(line: 547, column: 47, scope: !2066)
!2075 = !DILocation(line: 547, column: 52, scope: !2066)
!2076 = !DILocation(line: 547, column: 55, scope: !2066)
!2077 = !DILocation(line: 547, column: 57, scope: !2066)
!2078 = !DILocation(line: 547, column: 33, scope: !2066)
!2079 = !DILocation(line: 547, column: 21, scope: !2066)
!2080 = !DILocation(line: 547, column: 40, scope: !2066)
!2081 = !DILocation(line: 547, column: 45, scope: !2066)
!2082 = !DILocation(line: 548, column: 19, scope: !2066)
!2083 = !DILocation(line: 549, column: 33, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 548, column: 26)
!2085 = !DILocation(line: 549, column: 21, scope: !2084)
!2086 = !DILocation(line: 549, column: 40, scope: !2084)
!2087 = !DILocation(line: 549, column: 48, scope: !2084)
!2088 = !DILocation(line: 550, column: 48, scope: !2084)
!2089 = !DILocation(line: 550, column: 53, scope: !2084)
!2090 = !DILocation(line: 550, column: 56, scope: !2084)
!2091 = !DILocation(line: 550, column: 58, scope: !2084)
!2092 = !DILocation(line: 550, column: 63, scope: !2084)
!2093 = !DILocation(line: 550, column: 33, scope: !2084)
!2094 = !DILocation(line: 550, column: 21, scope: !2084)
!2095 = !DILocation(line: 550, column: 40, scope: !2084)
!2096 = !DILocation(line: 550, column: 45, scope: !2084)
!2097 = !DILocation(line: 553, column: 22, scope: !1974)
!2098 = !DILocation(line: 554, column: 15, scope: !1974)
!2099 = !DILocation(line: 555, column: 13, scope: !1853)
!2100 = !DILocation(line: 556, column: 11, scope: !1839)
!2101 = !DILocation(line: 454, column: 84, scope: !1830)
!2102 = !DILocation(line: 454, column: 11, scope: !1830)
!2103 = distinct !{!2103, !1837, !2104, !1490}
!2104 = !DILocation(line: 556, column: 11, scope: !1825)
!2105 = !DILocation(line: 557, column: 9, scope: !1822)
!2106 = !DILocation(line: 451, column: 56, scope: !1814)
!2107 = !DILocation(line: 451, column: 9, scope: !1814)
!2108 = distinct !{!2108, !1820, !2109, !1490}
!2109 = !DILocation(line: 557, column: 9, scope: !1810)
!2110 = !DILocation(line: 558, column: 7, scope: !1811)
!2111 = !DILocation(line: 450, column: 26, scope: !1806)
!2112 = !DILocation(line: 450, column: 7, scope: !1806)
!2113 = distinct !{!2113, !1808, !2114, !1490}
!2114 = !DILocation(line: 558, column: 7, scope: !1803)
!2115 = !DILocation(line: 561, column: 7, scope: !1743)
!2116 = !DILocalVariable(name: "parsing", scope: !2117, file: !2, line: 565, type: !28)
!2117 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 564, column: 7)
!2118 = !DILocation(line: 565, column: 13, scope: !2117)
!2119 = !DILocation(line: 567, column: 9, scope: !2117)
!2120 = !DILocation(line: 568, column: 40, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 568, column: 13)
!2122 = !DILocation(line: 568, column: 25, scope: !2121)
!2123 = !DILocation(line: 568, column: 23, scope: !2121)
!2124 = !DILocation(line: 568, column: 13, scope: !2117)
!2125 = !DILocation(line: 569, column: 11, scope: !2121)
!2126 = !DILocation(line: 571, column: 34, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 570, column: 14)
!2128 = !DILocation(line: 571, column: 19, scope: !2127)
!2129 = !DILocation(line: 571, column: 11, scope: !2127)
!2130 = !DILocation(line: 573, column: 48, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 571, column: 40)
!2132 = !DILocation(line: 573, column: 13, scope: !2131)
!2133 = !DILocation(line: 574, column: 13, scope: !2131)
!2134 = !DILocation(line: 576, column: 63, scope: !2131)
!2135 = !DILocation(line: 576, column: 13, scope: !2131)
!2136 = !DILocation(line: 577, column: 13, scope: !2131)
!2137 = !DILocation(line: 579, column: 13, scope: !2131)
!2138 = !DILocation(line: 580, column: 13, scope: !2131)
!2139 = !DILocation(line: 582, column: 13, scope: !2131)
!2140 = !DILocation(line: 583, column: 13, scope: !2131)
!2141 = !DILocation(line: 585, column: 13, scope: !2131)
!2142 = !DILocation(line: 586, column: 13, scope: !2131)
!2143 = !DILocation(line: 588, column: 13, scope: !2131)
!2144 = !DILocation(line: 589, column: 13, scope: !2131)
!2145 = !DILocation(line: 592, column: 9, scope: !2117)
!2146 = !DILocalVariable(name: "i", scope: !2147, file: !2, line: 597, type: !28)
!2147 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 596, column: 7)
!2148 = !DILocation(line: 597, column: 13, scope: !2147)
!2149 = !DILocation(line: 599, column: 15, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 599, column: 9)
!2151 = !DILocation(line: 599, column: 13, scope: !2150)
!2152 = !DILocation(line: 599, column: 20, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !2, line: 599, column: 9)
!2154 = !DILocation(line: 599, column: 22, scope: !2153)
!2155 = !DILocation(line: 599, column: 9, scope: !2150)
!2156 = !DILocation(line: 600, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !2, line: 600, column: 15)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 599, column: 43)
!2159 = !DILocation(line: 600, column: 15, scope: !2158)
!2160 = !DILocation(line: 601, column: 70, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 600, column: 50)
!2162 = !DILocation(line: 601, column: 58, scope: !2161)
!2163 = !DILocation(line: 601, column: 73, scope: !2161)
!2164 = !DILocation(line: 602, column: 32, scope: !2161)
!2165 = !DILocation(line: 602, column: 20, scope: !2161)
!2166 = !DILocation(line: 602, column: 35, scope: !2161)
!2167 = !DILocation(line: 602, column: 53, scope: !2161)
!2168 = !DILocation(line: 602, column: 41, scope: !2161)
!2169 = !DILocation(line: 602, column: 56, scope: !2161)
!2170 = !DILocation(line: 604, column: 73, scope: !2161)
!2171 = !DILocation(line: 603, column: 72, scope: !2161)
!2172 = !DILocation(line: 605, column: 72, scope: !2161)
!2173 = !DILocation(line: 602, column: 62, scope: !2161)
!2174 = !DILocation(line: 606, column: 50, scope: !2161)
!2175 = !DILocation(line: 606, column: 38, scope: !2161)
!2176 = !DILocation(line: 606, column: 53, scope: !2161)
!2177 = !DILocation(line: 606, column: 20, scope: !2161)
!2178 = !DILocation(line: 601, column: 13, scope: !2161)
!2179 = !DILocation(line: 608, column: 11, scope: !2161)
!2180 = !DILocation(line: 609, column: 11, scope: !2158)
!2181 = !DILocation(line: 610, column: 9, scope: !2158)
!2182 = !DILocation(line: 599, column: 39, scope: !2153)
!2183 = !DILocation(line: 599, column: 9, scope: !2153)
!2184 = distinct !{!2184, !2155, !2185, !1490}
!2185 = !DILocation(line: 610, column: 9, scope: !2150)
!2186 = !DILocation(line: 613, column: 5, scope: !1743)
!2187 = !DILocation(line: 615, column: 3, scope: !1698)
!2188 = !DILocation(line: 617, column: 3, scope: !120)
!2189 = !DILocation(line: 618, column: 1, scope: !120)
!2190 = distinct !DISubprogram(name: "htsshow_check", scope: !2, file: !2, line: 660, type: !490, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2191 = !DILocalVariable(name: "carg", arg: 1, scope: !2190, file: !2, line: 660, type: !55)
!2192 = !DILocation(line: 660, column: 54, scope: !2190)
!2193 = !DILocalVariable(name: "opt", arg: 2, scope: !2190, file: !2, line: 660, type: !123)
!2194 = !DILocation(line: 660, column: 71, scope: !2190)
!2195 = !DILocalVariable(name: "adr", arg: 3, scope: !2190, file: !2, line: 661, type: !383)
!2196 = !DILocation(line: 661, column: 46, scope: !2190)
!2197 = !DILocalVariable(name: "fil", arg: 4, scope: !2190, file: !2, line: 661, type: !383)
!2198 = !DILocation(line: 661, column: 63, scope: !2190)
!2199 = !DILocalVariable(name: "status", arg: 5, scope: !2190, file: !2, line: 661, type: !28)
!2200 = !DILocation(line: 661, column: 72, scope: !2190)
!2201 = !DILocation(line: 662, column: 3, scope: !2190)
!2202 = distinct !DISubprogram(name: "htsshow_check_mime", scope: !2, file: !2, line: 664, type: !499, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2203 = !DILocalVariable(name: "carg", arg: 1, scope: !2202, file: !2, line: 664, type: !55)
!2204 = !DILocation(line: 664, column: 59, scope: !2202)
!2205 = !DILocalVariable(name: "opt", arg: 2, scope: !2202, file: !2, line: 664, type: !123)
!2206 = !DILocation(line: 664, column: 76, scope: !2202)
!2207 = !DILocalVariable(name: "adr", arg: 3, scope: !2202, file: !2, line: 665, type: !383)
!2208 = !DILocation(line: 665, column: 51, scope: !2202)
!2209 = !DILocalVariable(name: "fil", arg: 4, scope: !2202, file: !2, line: 665, type: !383)
!2210 = !DILocation(line: 665, column: 68, scope: !2202)
!2211 = !DILocalVariable(name: "mime", arg: 5, scope: !2202, file: !2, line: 666, type: !383)
!2212 = !DILocation(line: 666, column: 51, scope: !2202)
!2213 = !DILocalVariable(name: "status", arg: 6, scope: !2202, file: !2, line: 666, type: !28)
!2214 = !DILocation(line: 666, column: 61, scope: !2202)
!2215 = !DILocation(line: 667, column: 3, scope: !2202)
!2216 = distinct !DISubprogram(name: "htsshow_pause", scope: !2, file: !2, line: 669, type: !508, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2217 = !DILocalVariable(name: "carg", arg: 1, scope: !2216, file: !2, line: 669, type: !55)
!2218 = !DILocation(line: 669, column: 55, scope: !2216)
!2219 = !DILocalVariable(name: "opt", arg: 2, scope: !2216, file: !2, line: 669, type: !123)
!2220 = !DILocation(line: 669, column: 72, scope: !2216)
!2221 = !DILocalVariable(name: "lockfile", arg: 3, scope: !2216, file: !2, line: 670, type: !383)
!2222 = !DILocation(line: 670, column: 47, scope: !2216)
!2223 = !DILocation(line: 671, column: 3, scope: !2216)
!2224 = !DILocation(line: 671, column: 16, scope: !2216)
!2225 = !DILocation(line: 671, column: 9, scope: !2216)
!2226 = !DILocation(line: 672, column: 5, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 672, column: 5)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !2, line: 672, column: 5)
!2229 = distinct !DILexicalBlock(scope: !2216, file: !2, line: 671, column: 27)
!2230 = distinct !{!2230, !2223, !2231, !1490}
!2231 = !DILocation(line: 673, column: 3, scope: !2216)
!2232 = !DILocation(line: 674, column: 1, scope: !2216)
!2233 = distinct !DISubprogram(name: "htsshow_filesave", scope: !2, file: !2, line: 675, type: !508, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2234 = !DILocalVariable(name: "carg", arg: 1, scope: !2233, file: !2, line: 675, type: !55)
!2235 = !DILocation(line: 675, column: 58, scope: !2233)
!2236 = !DILocalVariable(name: "opt", arg: 2, scope: !2233, file: !2, line: 675, type: !123)
!2237 = !DILocation(line: 675, column: 75, scope: !2233)
!2238 = !DILocalVariable(name: "file", arg: 3, scope: !2233, file: !2, line: 676, type: !383)
!2239 = !DILocation(line: 676, column: 50, scope: !2233)
!2240 = !DILocation(line: 677, column: 1, scope: !2233)
!2241 = distinct !DISubprogram(name: "htsshow_filesave2", scope: !2, file: !2, line: 678, type: !523, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2242 = !DILocalVariable(name: "carg", arg: 1, scope: !2241, file: !2, line: 678, type: !55)
!2243 = !DILocation(line: 678, column: 59, scope: !2241)
!2244 = !DILocalVariable(name: "opt", arg: 2, scope: !2241, file: !2, line: 678, type: !123)
!2245 = !DILocation(line: 678, column: 76, scope: !2241)
!2246 = !DILocalVariable(name: "adr", arg: 3, scope: !2241, file: !2, line: 679, type: !383)
!2247 = !DILocation(line: 679, column: 51, scope: !2241)
!2248 = !DILocalVariable(name: "fil", arg: 4, scope: !2241, file: !2, line: 679, type: !383)
!2249 = !DILocation(line: 679, column: 68, scope: !2241)
!2250 = !DILocalVariable(name: "save", arg: 5, scope: !2241, file: !2, line: 680, type: !383)
!2251 = !DILocation(line: 680, column: 51, scope: !2241)
!2252 = !DILocalVariable(name: "is_new", arg: 6, scope: !2241, file: !2, line: 680, type: !28)
!2253 = !DILocation(line: 680, column: 61, scope: !2241)
!2254 = !DILocalVariable(name: "is_modified", arg: 7, scope: !2241, file: !2, line: 681, type: !28)
!2255 = !DILocation(line: 681, column: 43, scope: !2241)
!2256 = !DILocalVariable(name: "not_updated", arg: 8, scope: !2241, file: !2, line: 681, type: !28)
!2257 = !DILocation(line: 681, column: 60, scope: !2241)
!2258 = !DILocation(line: 682, column: 1, scope: !2241)
!2259 = distinct !DISubprogram(name: "htsshow_linkdetected", scope: !2, file: !2, line: 683, type: !532, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2260 = !DILocalVariable(name: "carg", arg: 1, scope: !2259, file: !2, line: 683, type: !55)
!2261 = !DILocation(line: 683, column: 61, scope: !2259)
!2262 = !DILocalVariable(name: "opt", arg: 2, scope: !2259, file: !2, line: 684, type: !123)
!2263 = !DILocation(line: 684, column: 52, scope: !2259)
!2264 = !DILocalVariable(name: "link", arg: 3, scope: !2259, file: !2, line: 684, type: !67)
!2265 = !DILocation(line: 684, column: 63, scope: !2259)
!2266 = !DILocation(line: 685, column: 3, scope: !2259)
!2267 = distinct !DISubprogram(name: "htsshow_linkdetected2", scope: !2, file: !2, line: 687, type: !541, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2268 = !DILocalVariable(name: "carg", arg: 1, scope: !2267, file: !2, line: 687, type: !55)
!2269 = !DILocation(line: 687, column: 62, scope: !2267)
!2270 = !DILocalVariable(name: "opt", arg: 2, scope: !2267, file: !2, line: 688, type: !123)
!2271 = !DILocation(line: 688, column: 53, scope: !2267)
!2272 = !DILocalVariable(name: "link", arg: 3, scope: !2267, file: !2, line: 688, type: !67)
!2273 = !DILocation(line: 688, column: 64, scope: !2267)
!2274 = !DILocalVariable(name: "start_tag", arg: 4, scope: !2267, file: !2, line: 689, type: !383)
!2275 = !DILocation(line: 689, column: 54, scope: !2267)
!2276 = !DILocation(line: 690, column: 3, scope: !2267)
!2277 = distinct !DISubprogram(name: "htsshow_xfrstatus", scope: !2, file: !2, line: 692, type: !550, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2278 = !DILocalVariable(name: "carg", arg: 1, scope: !2277, file: !2, line: 692, type: !55)
!2279 = !DILocation(line: 692, column: 58, scope: !2277)
!2280 = !DILocalVariable(name: "opt", arg: 2, scope: !2277, file: !2, line: 692, type: !123)
!2281 = !DILocation(line: 692, column: 75, scope: !2277)
!2282 = !DILocalVariable(name: "back", arg: 3, scope: !2277, file: !2, line: 693, type: !552)
!2283 = !DILocation(line: 693, column: 50, scope: !2277)
!2284 = !DILocation(line: 694, column: 3, scope: !2277)
!2285 = distinct !DISubprogram(name: "htsshow_savename", scope: !2, file: !2, line: 696, type: !731, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2286 = !DILocalVariable(name: "carg", arg: 1, scope: !2285, file: !2, line: 696, type: !55)
!2287 = !DILocation(line: 696, column: 57, scope: !2285)
!2288 = !DILocalVariable(name: "opt", arg: 2, scope: !2285, file: !2, line: 696, type: !123)
!2289 = !DILocation(line: 696, column: 74, scope: !2285)
!2290 = !DILocalVariable(name: "adr_complete", arg: 3, scope: !2285, file: !2, line: 697, type: !383)
!2291 = !DILocation(line: 697, column: 49, scope: !2285)
!2292 = !DILocalVariable(name: "fil_complete", arg: 4, scope: !2285, file: !2, line: 698, type: !383)
!2293 = !DILocation(line: 698, column: 49, scope: !2285)
!2294 = !DILocalVariable(name: "referer_adr", arg: 5, scope: !2285, file: !2, line: 699, type: !383)
!2295 = !DILocation(line: 699, column: 49, scope: !2285)
!2296 = !DILocalVariable(name: "referer_fil", arg: 6, scope: !2285, file: !2, line: 700, type: !383)
!2297 = !DILocation(line: 700, column: 49, scope: !2285)
!2298 = !DILocalVariable(name: "save", arg: 7, scope: !2285, file: !2, line: 700, type: !67)
!2299 = !DILocation(line: 700, column: 68, scope: !2285)
!2300 = !DILocation(line: 701, column: 3, scope: !2285)
!2301 = distinct !DISubprogram(name: "htsshow_sendheader", scope: !2, file: !2, line: 703, type: !740, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2302 = !DILocalVariable(name: "carg", arg: 1, scope: !2301, file: !2, line: 703, type: !55)
!2303 = !DILocation(line: 703, column: 59, scope: !2301)
!2304 = !DILocalVariable(name: "opt", arg: 2, scope: !2301, file: !2, line: 703, type: !123)
!2305 = !DILocation(line: 703, column: 76, scope: !2301)
!2306 = !DILocalVariable(name: "buff", arg: 3, scope: !2301, file: !2, line: 704, type: !67)
!2307 = !DILocation(line: 704, column: 45, scope: !2301)
!2308 = !DILocalVariable(name: "adr", arg: 4, scope: !2301, file: !2, line: 704, type: !383)
!2309 = !DILocation(line: 704, column: 63, scope: !2301)
!2310 = !DILocalVariable(name: "fil", arg: 5, scope: !2301, file: !2, line: 705, type: !383)
!2311 = !DILocation(line: 705, column: 51, scope: !2301)
!2312 = !DILocalVariable(name: "referer_adr", arg: 6, scope: !2301, file: !2, line: 705, type: !383)
!2313 = !DILocation(line: 705, column: 68, scope: !2301)
!2314 = !DILocalVariable(name: "referer_fil", arg: 7, scope: !2301, file: !2, line: 706, type: !383)
!2315 = !DILocation(line: 706, column: 51, scope: !2301)
!2316 = !DILocalVariable(name: "outgoing", arg: 8, scope: !2301, file: !2, line: 707, type: !742)
!2317 = !DILocation(line: 707, column: 48, scope: !2301)
!2318 = !DILocation(line: 708, column: 3, scope: !2301)
!2319 = distinct !DISubprogram(name: "htsshow_receiveheader", scope: !2, file: !2, line: 710, type: !740, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2320 = !DILocalVariable(name: "carg", arg: 1, scope: !2319, file: !2, line: 710, type: !55)
!2321 = !DILocation(line: 710, column: 62, scope: !2319)
!2322 = !DILocalVariable(name: "opt", arg: 2, scope: !2319, file: !2, line: 711, type: !123)
!2323 = !DILocation(line: 711, column: 53, scope: !2319)
!2324 = !DILocalVariable(name: "buff", arg: 3, scope: !2319, file: !2, line: 711, type: !67)
!2325 = !DILocation(line: 711, column: 64, scope: !2319)
!2326 = !DILocalVariable(name: "adr", arg: 4, scope: !2319, file: !2, line: 712, type: !383)
!2327 = !DILocation(line: 712, column: 54, scope: !2319)
!2328 = !DILocalVariable(name: "fil", arg: 5, scope: !2319, file: !2, line: 712, type: !383)
!2329 = !DILocation(line: 712, column: 71, scope: !2319)
!2330 = !DILocalVariable(name: "referer_adr", arg: 6, scope: !2319, file: !2, line: 713, type: !383)
!2331 = !DILocation(line: 713, column: 54, scope: !2319)
!2332 = !DILocalVariable(name: "referer_fil", arg: 7, scope: !2319, file: !2, line: 714, type: !383)
!2333 = !DILocation(line: 714, column: 54, scope: !2319)
!2334 = !DILocalVariable(name: "incoming", arg: 8, scope: !2319, file: !2, line: 715, type: !742)
!2335 = !DILocation(line: 715, column: 51, scope: !2319)
!2336 = !DILocation(line: 716, column: 3, scope: !2319)
!2337 = distinct !DISubprogram(name: "log_abort_", scope: !95, file: !95, line: 90, type: !1350, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2338 = !DILocalVariable(name: "msg", arg: 1, scope: !2337, file: !95, line: 90, type: !383)
!2339 = !DILocation(line: 90, column: 47, scope: !2337)
!2340 = !DILocalVariable(name: "file", arg: 2, scope: !2337, file: !95, line: 90, type: !383)
!2341 = !DILocation(line: 90, column: 64, scope: !2337)
!2342 = !DILocalVariable(name: "line", arg: 3, scope: !2337, file: !95, line: 90, type: !28)
!2343 = !DILocation(line: 90, column: 74, scope: !2337)
!2344 = !DILocation(line: 91, column: 11, scope: !2337)
!2345 = !DILocation(line: 91, column: 43, scope: !2337)
!2346 = !DILocation(line: 91, column: 48, scope: !2337)
!2347 = !DILocation(line: 91, column: 54, scope: !2337)
!2348 = !DILocation(line: 91, column: 3, scope: !2337)
!2349 = !DILocation(line: 92, column: 10, scope: !2337)
!2350 = !DILocation(line: 92, column: 3, scope: !2337)
!2351 = !DILocation(line: 93, column: 1, scope: !2337)
!2352 = distinct !DISubprogram(name: "vt_clear", scope: !2, file: !2, line: 181, type: !1336, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2353 = !DILocation(line: 182, column: 3, scope: !2352)
!2354 = !DILocation(line: 183, column: 1, scope: !2352)
!2355 = distinct !DISubprogram(name: "vt_home", scope: !2, file: !2, line: 184, type: !1336, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2356 = !DILocation(line: 185, column: 3, scope: !2355)
!2357 = !DILocation(line: 186, column: 1, scope: !2355)
!2358 = distinct !DISubprogram(name: "strcpy_safe_", scope: !95, file: !95, line: 212, type: !2359, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!67, !2361, !2362, !2363, !2362, !383, !383, !28}
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!2364 = !DILocalVariable(name: "dest", arg: 1, scope: !2358, file: !95, line: 212, type: !2361)
!2365 = !DILocation(line: 212, column: 61, scope: !2358)
!2366 = !DILocalVariable(name: "sizeof_dest", arg: 2, scope: !2358, file: !95, line: 212, type: !2362)
!2367 = !DILocation(line: 212, column: 80, scope: !2358)
!2368 = !DILocalVariable(name: "source", arg: 3, scope: !2358, file: !95, line: 213, type: !2363)
!2369 = !DILocation(line: 213, column: 67, scope: !2358)
!2370 = !DILocalVariable(name: "sizeof_source", arg: 4, scope: !2358, file: !95, line: 213, type: !2362)
!2371 = !DILocation(line: 213, column: 88, scope: !2358)
!2372 = !DILocalVariable(name: "exp", arg: 5, scope: !2358, file: !95, line: 214, type: !383)
!2373 = !DILocation(line: 214, column: 61, scope: !2358)
!2374 = !DILocalVariable(name: "file", arg: 6, scope: !2358, file: !95, line: 214, type: !383)
!2375 = !DILocation(line: 214, column: 78, scope: !2358)
!2376 = !DILocalVariable(name: "line", arg: 7, scope: !2358, file: !95, line: 214, type: !28)
!2377 = !DILocation(line: 214, column: 88, scope: !2358)
!2378 = !DILocation(line: 215, column: 3, scope: !2358)
!2379 = !DILocation(line: 216, column: 3, scope: !2358)
!2380 = !DILocation(line: 216, column: 11, scope: !2358)
!2381 = !DILocation(line: 217, column: 24, scope: !2358)
!2382 = !DILocation(line: 217, column: 30, scope: !2358)
!2383 = !DILocation(line: 217, column: 43, scope: !2358)
!2384 = !DILocation(line: 217, column: 51, scope: !2358)
!2385 = !DILocation(line: 217, column: 79, scope: !2358)
!2386 = !DILocation(line: 217, column: 84, scope: !2358)
!2387 = !DILocation(line: 217, column: 90, scope: !2358)
!2388 = !DILocation(line: 217, column: 10, scope: !2358)
!2389 = !DILocation(line: 217, column: 3, scope: !2358)
!2390 = distinct !DISubprogram(name: "strncat_safe_", scope: !95, file: !95, line: 197, type: !2391, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!67, !2361, !2362, !2363, !2362, !2362, !383, !383, !28}
!2393 = !DILocalVariable(name: "dest", arg: 1, scope: !2390, file: !95, line: 197, type: !2361)
!2394 = !DILocation(line: 197, column: 62, scope: !2390)
!2395 = !DILocalVariable(name: "sizeof_dest", arg: 2, scope: !2390, file: !95, line: 197, type: !2362)
!2396 = !DILocation(line: 197, column: 81, scope: !2390)
!2397 = !DILocalVariable(name: "source", arg: 3, scope: !2390, file: !95, line: 198, type: !2363)
!2398 = !DILocation(line: 198, column: 68, scope: !2390)
!2399 = !DILocalVariable(name: "sizeof_source", arg: 4, scope: !2390, file: !95, line: 198, type: !2362)
!2400 = !DILocation(line: 198, column: 89, scope: !2390)
!2401 = !DILocalVariable(name: "n", arg: 5, scope: !2390, file: !95, line: 199, type: !2362)
!2402 = !DILocation(line: 199, column: 63, scope: !2390)
!2403 = !DILocalVariable(name: "exp", arg: 6, scope: !2390, file: !95, line: 200, type: !383)
!2404 = !DILocation(line: 200, column: 62, scope: !2390)
!2405 = !DILocalVariable(name: "file", arg: 7, scope: !2390, file: !95, line: 200, type: !383)
!2406 = !DILocation(line: 200, column: 79, scope: !2390)
!2407 = !DILocalVariable(name: "line", arg: 8, scope: !2390, file: !95, line: 200, type: !28)
!2408 = !DILocation(line: 200, column: 89, scope: !2390)
!2409 = !DILocalVariable(name: "source_len", scope: !2390, file: !95, line: 201, type: !2362)
!2410 = !DILocation(line: 201, column: 16, scope: !2390)
!2411 = !DILocation(line: 201, column: 42, scope: !2390)
!2412 = !DILocation(line: 201, column: 50, scope: !2390)
!2413 = !DILocation(line: 201, column: 65, scope: !2390)
!2414 = !DILocation(line: 201, column: 71, scope: !2390)
!2415 = !DILocation(line: 201, column: 29, scope: !2390)
!2416 = !DILocalVariable(name: "dest_len", scope: !2390, file: !95, line: 202, type: !2362)
!2417 = !DILocation(line: 202, column: 16, scope: !2390)
!2418 = !DILocation(line: 202, column: 40, scope: !2390)
!2419 = !DILocation(line: 202, column: 46, scope: !2390)
!2420 = !DILocation(line: 202, column: 59, scope: !2390)
!2421 = !DILocation(line: 202, column: 65, scope: !2390)
!2422 = !DILocation(line: 202, column: 27, scope: !2390)
!2423 = !DILocalVariable(name: "source_copy", scope: !2390, file: !95, line: 204, type: !2362)
!2424 = !DILocation(line: 204, column: 16, scope: !2390)
!2425 = !DILocation(line: 204, column: 30, scope: !2390)
!2426 = !DILocation(line: 204, column: 44, scope: !2390)
!2427 = !DILocation(line: 204, column: 41, scope: !2390)
!2428 = !DILocation(line: 204, column: 48, scope: !2390)
!2429 = !DILocation(line: 204, column: 61, scope: !2390)
!2430 = !DILocalVariable(name: "dest_final_len", scope: !2390, file: !95, line: 205, type: !2362)
!2431 = !DILocation(line: 205, column: 16, scope: !2390)
!2432 = !DILocation(line: 205, column: 33, scope: !2390)
!2433 = !DILocation(line: 205, column: 44, scope: !2390)
!2434 = !DILocation(line: 205, column: 42, scope: !2390)
!2435 = !DILocation(line: 206, column: 3, scope: !2390)
!2436 = !DILocation(line: 207, column: 10, scope: !2390)
!2437 = !DILocation(line: 207, column: 17, scope: !2390)
!2438 = !DILocation(line: 207, column: 15, scope: !2390)
!2439 = !DILocation(line: 207, column: 27, scope: !2390)
!2440 = !DILocation(line: 207, column: 35, scope: !2390)
!2441 = !DILocation(line: 207, column: 3, scope: !2390)
!2442 = !DILocation(line: 208, column: 3, scope: !2390)
!2443 = !DILocation(line: 208, column: 8, scope: !2390)
!2444 = !DILocation(line: 208, column: 24, scope: !2390)
!2445 = !DILocation(line: 209, column: 10, scope: !2390)
!2446 = !DILocation(line: 209, column: 3, scope: !2390)
!2447 = distinct !DISubprogram(name: "strlen_safe_", scope: !95, file: !95, line: 187, type: !2448, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!68, !383, !2362, !383, !28}
!2450 = !DILocalVariable(name: "source", arg: 1, scope: !2447, file: !95, line: 187, type: !383)
!2451 = !DILocation(line: 187, column: 62, scope: !2447)
!2452 = !DILocalVariable(name: "sizeof_source", arg: 2, scope: !2447, file: !95, line: 187, type: !2362)
!2453 = !DILocation(line: 187, column: 83, scope: !2447)
!2454 = !DILocalVariable(name: "file", arg: 3, scope: !2447, file: !95, line: 188, type: !383)
!2455 = !DILocation(line: 188, column: 62, scope: !2447)
!2456 = !DILocalVariable(name: "line", arg: 4, scope: !2447, file: !95, line: 188, type: !28)
!2457 = !DILocation(line: 188, column: 72, scope: !2447)
!2458 = !DILocalVariable(name: "size", scope: !2447, file: !95, line: 189, type: !68)
!2459 = !DILocation(line: 189, column: 10, scope: !2447)
!2460 = !DILocation(line: 190, column: 3, scope: !2447)
!2461 = !DILocation(line: 191, column: 10, scope: !2447)
!2462 = !DILocation(line: 191, column: 24, scope: !2447)
!2463 = !DILocation(line: 192, column: 15, scope: !2447)
!2464 = !DILocation(line: 192, column: 23, scope: !2447)
!2465 = !DILocation(line: 192, column: 7, scope: !2447)
!2466 = !DILocation(line: 192, column: 47, scope: !2447)
!2467 = !DILocation(line: 192, column: 40, scope: !2447)
!2468 = !DILocation(line: 191, column: 8, scope: !2447)
!2469 = !DILocation(line: 193, column: 3, scope: !2447)
!2470 = !DILocation(line: 194, column: 10, scope: !2447)
!2471 = !DILocation(line: 194, column: 3, scope: !2447)
!2472 = distinct !DISubprogram(name: "linput", scope: !2, file: !2, line: 733, type: !2473, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!28, !140, !67, !28}
!2475 = !DILocalVariable(name: "fp", arg: 1, scope: !2472, file: !2, line: 733, type: !140)
!2476 = !DILocation(line: 733, column: 26, scope: !2472)
!2477 = !DILocalVariable(name: "s", arg: 2, scope: !2472, file: !2, line: 733, type: !67)
!2478 = !DILocation(line: 733, column: 36, scope: !2472)
!2479 = !DILocalVariable(name: "max", arg: 3, scope: !2472, file: !2, line: 733, type: !28)
!2480 = !DILocation(line: 733, column: 43, scope: !2472)
!2481 = !DILocalVariable(name: "c", scope: !2472, file: !2, line: 734, type: !28)
!2482 = !DILocation(line: 734, column: 7, scope: !2472)
!2483 = !DILocalVariable(name: "j", scope: !2472, file: !2, line: 735, type: !28)
!2484 = !DILocation(line: 735, column: 7, scope: !2472)
!2485 = !DILocation(line: 737, column: 3, scope: !2472)
!2486 = !DILocation(line: 738, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 737, column: 6)
!2488 = !DILocation(line: 738, column: 9, scope: !2487)
!2489 = !DILocation(line: 738, column: 7, scope: !2487)
!2490 = !DILocation(line: 739, column: 9, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 739, column: 9)
!2492 = !DILocation(line: 739, column: 11, scope: !2491)
!2493 = !DILocation(line: 739, column: 9, scope: !2487)
!2494 = !DILocation(line: 740, column: 15, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 739, column: 19)
!2496 = !DILocation(line: 740, column: 7, scope: !2495)
!2497 = !DILocation(line: 742, column: 9, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 740, column: 18)
!2499 = !DILocation(line: 744, column: 11, scope: !2498)
!2500 = !DILocation(line: 745, column: 9, scope: !2498)
!2501 = !DILocation(line: 748, column: 9, scope: !2498)
!2502 = !DILocation(line: 750, column: 25, scope: !2498)
!2503 = !DILocation(line: 750, column: 18, scope: !2498)
!2504 = !DILocation(line: 750, column: 9, scope: !2498)
!2505 = !DILocation(line: 750, column: 12, scope: !2498)
!2506 = !DILocation(line: 750, column: 16, scope: !2498)
!2507 = !DILocation(line: 751, column: 9, scope: !2498)
!2508 = !DILocation(line: 753, column: 5, scope: !2495)
!2509 = !DILocation(line: 754, column: 3, scope: !2487)
!2510 = !DILocation(line: 754, column: 12, scope: !2472)
!2511 = !DILocation(line: 754, column: 14, scope: !2472)
!2512 = !DILocation(line: 754, column: 21, scope: !2472)
!2513 = !DILocation(line: 754, column: 25, scope: !2472)
!2514 = !DILocation(line: 754, column: 27, scope: !2472)
!2515 = !DILocation(line: 754, column: 35, scope: !2472)
!2516 = !DILocation(line: 754, column: 39, scope: !2472)
!2517 = !DILocation(line: 754, column: 44, scope: !2472)
!2518 = !DILocation(line: 754, column: 48, scope: !2472)
!2519 = !DILocation(line: 754, column: 41, scope: !2472)
!2520 = !DILocation(line: 0, scope: !2472)
!2521 = distinct !{!2521, !2485, !2522, !1490}
!2522 = !DILocation(line: 754, column: 53, scope: !2472)
!2523 = !DILocation(line: 755, column: 3, scope: !2472)
!2524 = !DILocation(line: 755, column: 5, scope: !2472)
!2525 = !DILocation(line: 755, column: 8, scope: !2472)
!2526 = !DILocation(line: 756, column: 10, scope: !2472)
!2527 = !DILocation(line: 756, column: 3, scope: !2472)
!2528 = distinct !DISubprogram(name: "fexist", scope: !2, file: !2, line: 721, type: !2529, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!28, !383}
!2531 = !DILocalVariable(name: "s", arg: 1, scope: !2528, file: !2, line: 721, type: !383)
!2532 = !DILocation(line: 721, column: 31, scope: !2528)
!2533 = !DILocalVariable(name: "st", scope: !2528, file: !2, line: 722, type: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2535, line: 26, size: 1152, elements: !2536)
!2535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!2536 = !{!2537, !2539, !2541, !2543, !2545, !2547, !2549, !2550, !2551, !2552, !2554, !2556, !2564, !2565, !2566}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2534, file: !2535, line: 31, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !167, line: 145, baseType: !70)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2534, file: !2535, line: 36, baseType: !2540, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !167, line: 148, baseType: !70)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2534, file: !2535, line: 44, baseType: !2542, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !167, line: 151, baseType: !70)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2534, file: !2535, line: 45, baseType: !2544, size: 32, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !167, line: 150, baseType: !44)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2534, file: !2535, line: 47, baseType: !2546, size: 32, offset: 224)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !167, line: 146, baseType: !44)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2534, file: !2535, line: 48, baseType: !2548, size: 32, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !167, line: 147, baseType: !44)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2534, file: !2535, line: 50, baseType: !28, size: 32, offset: 288)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2534, file: !2535, line: 52, baseType: !2538, size: 64, offset: 320)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2534, file: !2535, line: 57, baseType: !166, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2534, file: !2535, line: 61, baseType: !2553, size: 64, offset: 448)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !167, line: 175, baseType: !168)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2534, file: !2535, line: 63, baseType: !2555, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !167, line: 180, baseType: !168)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2534, file: !2535, line: 74, baseType: !2557, size: 128, offset: 576)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2558, line: 11, size: 128, elements: !2559)
!2558 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!2559 = !{!2560, !2562}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2557, file: !2558, line: 16, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !167, line: 160, baseType: !168)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2557, file: !2558, line: 21, baseType: !2563, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !167, line: 197, baseType: !168)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2534, file: !2535, line: 75, baseType: !2557, size: 128, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2534, file: !2535, line: 76, baseType: !2557, size: 128, offset: 832)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2534, file: !2535, line: 89, baseType: !2567, size: 192, offset: 960)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2563, size: 192, elements: !2568)
!2568 = !{!2569}
!2569 = !DISubrange(count: 3)
!2570 = !DILocation(line: 722, column: 15, scope: !2528)
!2571 = !DILocation(line: 724, column: 3, scope: !2528)
!2572 = !DILocation(line: 725, column: 12, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 725, column: 7)
!2574 = !DILocation(line: 725, column: 7, scope: !2573)
!2575 = !DILocation(line: 725, column: 20, scope: !2573)
!2576 = !DILocation(line: 725, column: 7, scope: !2528)
!2577 = !DILocation(line: 726, column: 9, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 726, column: 9)
!2579 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 725, column: 26)
!2580 = !DILocation(line: 726, column: 9, scope: !2579)
!2581 = !DILocation(line: 727, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2578, file: !2, line: 726, column: 30)
!2583 = !DILocation(line: 729, column: 3, scope: !2579)
!2584 = !DILocation(line: 730, column: 3, scope: !2528)
!2585 = !DILocation(line: 731, column: 1, scope: !2528)
!2586 = distinct !DISubprogram(name: "sig_back", scope: !2, file: !2, line: 798, type: !74, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2587 = !DILocalVariable(name: "code", arg: 1, scope: !2586, file: !2, line: 798, type: !28)
!2588 = !DILocation(line: 798, column: 26, scope: !2586)
!2589 = !DILocation(line: 799, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 799, column: 7)
!2591 = !DILocation(line: 799, column: 18, scope: !2590)
!2592 = !DILocation(line: 799, column: 26, scope: !2590)
!2593 = !DILocation(line: 799, column: 30, scope: !2590)
!2594 = !DILocation(line: 799, column: 42, scope: !2590)
!2595 = !DILocation(line: 799, column: 7, scope: !2586)
!2596 = !DILocation(line: 800, column: 5, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 799, column: 65)
!2598 = !DILocation(line: 801, column: 5, scope: !2597)
!2599 = !DILocation(line: 802, column: 12, scope: !2597)
!2600 = !DILocation(line: 802, column: 5, scope: !2597)
!2601 = !DILocation(line: 803, column: 10, scope: !2597)
!2602 = !DILocation(line: 803, column: 5, scope: !2597)
!2603 = !DILocation(line: 804, column: 3, scope: !2597)
!2604 = !DILocation(line: 806, column: 12, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 804, column: 10)
!2606 = !DILocation(line: 806, column: 5, scope: !2605)
!2607 = !DILocation(line: 807, column: 5, scope: !2605)
!2608 = !DILocation(line: 809, column: 1, scope: !2586)
!2609 = distinct !DISubprogram(name: "sig_finish", scope: !2, file: !2, line: 767, type: !74, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2610 = !DILocalVariable(name: "code", arg: 1, scope: !2609, file: !2, line: 767, type: !28)
!2611 = !DILocation(line: 767, column: 28, scope: !2609)
!2612 = !DILocation(line: 768, column: 10, scope: !2609)
!2613 = !DILocation(line: 768, column: 3, scope: !2609)
!2614 = !DILocation(line: 769, column: 7, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2609, file: !2, line: 769, column: 7)
!2616 = !DILocation(line: 769, column: 18, scope: !2615)
!2617 = !DILocation(line: 769, column: 7, scope: !2609)
!2618 = !DILocation(line: 770, column: 5, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2615, file: !2, line: 769, column: 27)
!2620 = !DILocation(line: 770, column: 17, scope: !2619)
!2621 = !DILocation(line: 770, column: 23, scope: !2619)
!2622 = !DILocation(line: 770, column: 31, scope: !2619)
!2623 = !DILocation(line: 771, column: 3, scope: !2619)
!2624 = !DILocation(line: 772, column: 11, scope: !2609)
!2625 = !DILocation(line: 772, column: 63, scope: !2609)
!2626 = !DILocation(line: 772, column: 3, scope: !2609)
!2627 = !DILocation(line: 773, column: 1, scope: !2609)
!2628 = distinct !DISubprogram(name: "sig_leave", scope: !2, file: !2, line: 937, type: !74, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2629 = !DILocalVariable(name: "code", arg: 1, scope: !2628, file: !2, line: 937, type: !28)
!2630 = !DILocation(line: 937, column: 27, scope: !2628)
!2631 = !DILocation(line: 938, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !2, line: 938, column: 7)
!2633 = !DILocation(line: 938, column: 18, scope: !2632)
!2634 = !DILocation(line: 938, column: 26, scope: !2632)
!2635 = !DILocation(line: 938, column: 29, scope: !2632)
!2636 = !DILocation(line: 938, column: 41, scope: !2632)
!2637 = !DILocation(line: 938, column: 47, scope: !2632)
!2638 = !DILocation(line: 938, column: 7, scope: !2628)
!2639 = !DILocation(line: 939, column: 12, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2632, file: !2, line: 938, column: 63)
!2641 = !DILocation(line: 939, column: 5, scope: !2640)
!2642 = !DILocation(line: 940, column: 5, scope: !2640)
!2643 = !DILocation(line: 941, column: 9, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !2, line: 941, column: 9)
!2645 = !DILocation(line: 941, column: 20, scope: !2644)
!2646 = !DILocation(line: 941, column: 9, scope: !2640)
!2647 = !DILocation(line: 943, column: 21, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !2, line: 941, column: 29)
!2649 = !DILocation(line: 943, column: 7, scope: !2648)
!2650 = !DILocation(line: 944, column: 7, scope: !2648)
!2651 = !DILocation(line: 944, column: 19, scope: !2648)
!2652 = !DILocation(line: 944, column: 25, scope: !2648)
!2653 = !DILocation(line: 944, column: 30, scope: !2648)
!2654 = !DILocation(line: 945, column: 5, scope: !2648)
!2655 = !DILocation(line: 946, column: 3, scope: !2640)
!2656 = !DILocation(line: 947, column: 14, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2632, file: !2, line: 946, column: 10)
!2658 = !DILocation(line: 947, column: 5, scope: !2657)
!2659 = !DILocation(line: 949, column: 1, scope: !2628)
!2660 = distinct !DISubprogram(name: "sig_brpipe", scope: !2, file: !2, line: 841, type: !74, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2661 = !DILocalVariable(name: "code", arg: 1, scope: !2660, file: !2, line: 841, type: !28)
!2662 = !DILocation(line: 841, column: 28, scope: !2660)
!2663 = !DILocation(line: 842, column: 10, scope: !2660)
!2664 = !DILocation(line: 842, column: 3, scope: !2660)
!2665 = !DILocation(line: 843, column: 1, scope: !2660)
!2666 = distinct !DISubprogram(name: "sig_ignore", scope: !2, file: !2, line: 761, type: !74, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2667 = !DILocalVariable(name: "code", arg: 1, scope: !2666, file: !2, line: 761, type: !28)
!2668 = !DILocation(line: 761, column: 28, scope: !2666)
!2669 = !DILocation(line: 762, column: 1, scope: !2666)
!2670 = distinct !DISubprogram(name: "sig_fatal", scope: !2, file: !2, line: 914, type: !74, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2671 = !DILocalVariable(name: "code", arg: 1, scope: !2670, file: !2, line: 914, type: !28)
!2672 = !DILocation(line: 914, column: 27, scope: !2670)
!2673 = !DILocalVariable(name: "msg", scope: !2670, file: !2, line: 915, type: !2674)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !661)
!2675 = !DILocation(line: 915, column: 14, scope: !2670)
!2676 = !DILocalVariable(name: "msgreport", scope: !2670, file: !2, line: 916, type: !2677)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 448, elements: !987)
!2678 = !DILocation(line: 916, column: 14, scope: !2670)
!2679 = !DILocalVariable(name: "buffer", scope: !2670, file: !2, line: 918, type: !678)
!2680 = !DILocation(line: 918, column: 8, scope: !2670)
!2681 = !DILocalVariable(name: "size", scope: !2670, file: !2, line: 919, type: !68)
!2682 = !DILocation(line: 919, column: 10, scope: !2670)
!2683 = !DILocation(line: 921, column: 10, scope: !2670)
!2684 = !DILocation(line: 921, column: 3, scope: !2670)
!2685 = !DILocation(line: 922, column: 3, scope: !2670)
!2686 = !DILocation(line: 924, column: 3, scope: !2670)
!2687 = !DILocation(line: 925, column: 8, scope: !2670)
!2688 = !DILocation(line: 926, column: 29, scope: !2670)
!2689 = !DILocation(line: 926, column: 22, scope: !2670)
!2690 = !DILocation(line: 926, column: 36, scope: !2670)
!2691 = !DILocation(line: 926, column: 11, scope: !2670)
!2692 = !DILocation(line: 926, column: 8, scope: !2670)
!2693 = !DILocation(line: 927, column: 14, scope: !2670)
!2694 = !DILocation(line: 927, column: 3, scope: !2670)
!2695 = !DILocation(line: 927, column: 18, scope: !2670)
!2696 = !DILocation(line: 928, column: 25, scope: !2670)
!2697 = !DILocation(line: 928, column: 33, scope: !2670)
!2698 = !DILocation(line: 928, column: 11, scope: !2670)
!2699 = !DILocation(line: 928, column: 42, scope: !2670)
!2700 = !DILocation(line: 928, column: 39, scope: !2670)
!2701 = !DILocation(line: 929, column: 3, scope: !2670)
!2702 = !DILocation(line: 930, column: 25, scope: !2670)
!2703 = !DILocation(line: 930, column: 11, scope: !2670)
!2704 = !DILocation(line: 931, column: 5, scope: !2670)
!2705 = !DILocation(line: 932, column: 3, scope: !2670)
!2706 = distinct !DISubprogram(name: "sig_doback", scope: !2, file: !2, line: 844, type: !74, scopeLine: 844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2707 = !DILocalVariable(name: "blind", arg: 1, scope: !2706, file: !2, line: 844, type: !28)
!2708 = !DILocation(line: 844, column: 28, scope: !2706)
!2709 = !DILocalVariable(name: "out", scope: !2706, file: !2, line: 845, type: !28)
!2710 = !DILocation(line: 845, column: 7, scope: !2706)
!2711 = !DILocation(line: 848, column: 3, scope: !2706)
!2712 = !DILocation(line: 849, column: 10, scope: !2706)
!2713 = !DILocation(line: 849, column: 3, scope: !2706)
!2714 = !DILocation(line: 851, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2706, file: !2, line: 851, column: 7)
!2716 = !DILocation(line: 851, column: 18, scope: !2715)
!2717 = !DILocation(line: 851, column: 7, scope: !2706)
!2718 = !DILocation(line: 853, column: 5, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !2, line: 851, column: 27)
!2720 = !DILocation(line: 853, column: 17, scope: !2719)
!2721 = !DILocation(line: 853, column: 23, scope: !2719)
!2722 = !DILocation(line: 854, column: 5, scope: !2719)
!2723 = !DILocation(line: 854, column: 17, scope: !2719)
!2724 = !DILocation(line: 854, column: 32, scope: !2719)
!2725 = !DILocation(line: 855, column: 3, scope: !2719)
!2726 = !DILocation(line: 857, column: 8, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2706, file: !2, line: 857, column: 7)
!2728 = !DILocation(line: 857, column: 7, scope: !2706)
!2729 = !DILocation(line: 858, column: 11, scope: !2727)
!2730 = !DILocation(line: 858, column: 9, scope: !2727)
!2731 = !DILocation(line: 858, column: 5, scope: !2727)
!2732 = !DILocation(line: 859, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2706, file: !2, line: 859, column: 7)
!2734 = !DILocation(line: 859, column: 11, scope: !2733)
!2735 = !DILocation(line: 859, column: 7, scope: !2706)
!2736 = !DILocation(line: 860, column: 11, scope: !2733)
!2737 = !DILocation(line: 860, column: 9, scope: !2733)
!2738 = !DILocation(line: 860, column: 5, scope: !2733)
!2739 = !DILocation(line: 861, column: 8, scope: !2706)
!2740 = !DILocation(line: 861, column: 3, scope: !2706)
!2741 = !DILocation(line: 862, column: 8, scope: !2706)
!2742 = !DILocation(line: 862, column: 3, scope: !2706)
!2743 = !DILocation(line: 863, column: 8, scope: !2706)
!2744 = !DILocation(line: 863, column: 3, scope: !2706)
!2745 = !DILocation(line: 865, column: 11, scope: !2706)
!2746 = !DILocation(line: 865, column: 3, scope: !2706)
!2747 = !DILocation(line: 867, column: 5, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2706, file: !2, line: 865, column: 19)
!2749 = !DILocation(line: 869, column: 13, scope: !2748)
!2750 = !DILocation(line: 869, column: 5, scope: !2748)
!2751 = !DILocation(line: 870, column: 5, scope: !2748)
!2752 = !DILocation(line: 872, column: 5, scope: !2748)
!2753 = !DILocation(line: 875, column: 1, scope: !2706)
!2754 = distinct !DISubprogram(name: "sig_term", scope: !2, file: !2, line: 763, type: !74, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2755 = !DILocalVariable(name: "code", arg: 1, scope: !2754, file: !2, line: 763, type: !28)
!2756 = !DILocation(line: 763, column: 26, scope: !2754)
!2757 = !DILocation(line: 764, column: 11, scope: !2754)
!2758 = !DILocation(line: 764, column: 57, scope: !2754)
!2759 = !DILocation(line: 764, column: 3, scope: !2754)
!2760 = !DILocation(line: 765, column: 3, scope: !2754)
!2761 = distinct !DISubprogram(name: "print_num", scope: !2, file: !2, line: 896, type: !2762, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!68, !67, !28}
!2764 = !DILocalVariable(name: "buffer", arg: 1, scope: !2761, file: !2, line: 896, type: !67)
!2765 = !DILocation(line: 896, column: 31, scope: !2761)
!2766 = !DILocalVariable(name: "num", arg: 2, scope: !2761, file: !2, line: 896, type: !28)
!2767 = !DILocation(line: 896, column: 43, scope: !2761)
!2768 = !DILocalVariable(name: "i", scope: !2761, file: !2, line: 897, type: !68)
!2769 = !DILocation(line: 897, column: 10, scope: !2761)
!2770 = !DILocalVariable(name: "j", scope: !2761, file: !2, line: 897, type: !68)
!2771 = !DILocation(line: 897, column: 13, scope: !2761)
!2772 = !DILocation(line: 898, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2761, file: !2, line: 898, column: 7)
!2774 = !DILocation(line: 898, column: 11, scope: !2773)
!2775 = !DILocation(line: 898, column: 7, scope: !2761)
!2776 = !DILocation(line: 899, column: 13, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !2, line: 898, column: 16)
!2778 = !DILocation(line: 899, column: 17, scope: !2777)
!2779 = !DILocation(line: 900, column: 12, scope: !2777)
!2780 = !DILocation(line: 900, column: 11, scope: !2777)
!2781 = !DILocation(line: 900, column: 9, scope: !2777)
!2782 = !DILocation(line: 901, column: 3, scope: !2777)
!2783 = !DILocation(line: 902, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2761, file: !2, line: 902, column: 3)
!2785 = !DILocation(line: 902, column: 7, scope: !2784)
!2786 = !DILocation(line: 902, column: 15, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 902, column: 3)
!2788 = !DILocation(line: 902, column: 19, scope: !2787)
!2789 = !DILocation(line: 902, column: 24, scope: !2787)
!2790 = !DILocation(line: 902, column: 27, scope: !2787)
!2791 = !DILocation(line: 902, column: 29, scope: !2787)
!2792 = !DILocation(line: 902, column: 3, scope: !2784)
!2793 = !DILocation(line: 903, column: 25, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 902, column: 52)
!2795 = !DILocation(line: 903, column: 29, scope: !2794)
!2796 = !DILocation(line: 903, column: 21, scope: !2794)
!2797 = !DILocation(line: 903, column: 17, scope: !2794)
!2798 = !DILocation(line: 903, column: 5, scope: !2794)
!2799 = !DILocation(line: 903, column: 12, scope: !2794)
!2800 = !DILocation(line: 903, column: 15, scope: !2794)
!2801 = !DILocation(line: 904, column: 3, scope: !2794)
!2802 = !DILocation(line: 902, column: 37, scope: !2787)
!2803 = !DILocation(line: 902, column: 45, scope: !2787)
!2804 = !DILocation(line: 902, column: 3, scope: !2787)
!2805 = distinct !{!2805, !2792, !2806, !1490}
!2806 = !DILocation(line: 904, column: 3, scope: !2784)
!2807 = !DILocation(line: 905, column: 9, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2761, file: !2, line: 905, column: 3)
!2809 = !DILocation(line: 905, column: 7, scope: !2808)
!2810 = !DILocation(line: 905, column: 15, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !2, line: 905, column: 3)
!2812 = !DILocation(line: 905, column: 19, scope: !2811)
!2813 = !DILocation(line: 905, column: 17, scope: !2811)
!2814 = !DILocation(line: 905, column: 3, scope: !2808)
!2815 = !DILocalVariable(name: "c", scope: !2816, file: !2, line: 906, type: !85)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 905, column: 28)
!2817 = !DILocation(line: 906, column: 16, scope: !2816)
!2818 = !DILocation(line: 906, column: 20, scope: !2816)
!2819 = !DILocation(line: 906, column: 27, scope: !2816)
!2820 = !DILocation(line: 906, column: 31, scope: !2816)
!2821 = !DILocation(line: 906, column: 29, scope: !2816)
!2822 = !DILocation(line: 906, column: 33, scope: !2816)
!2823 = !DILocation(line: 907, column: 25, scope: !2816)
!2824 = !DILocation(line: 907, column: 32, scope: !2816)
!2825 = !DILocation(line: 907, column: 5, scope: !2816)
!2826 = !DILocation(line: 907, column: 12, scope: !2816)
!2827 = !DILocation(line: 907, column: 16, scope: !2816)
!2828 = !DILocation(line: 907, column: 14, scope: !2816)
!2829 = !DILocation(line: 907, column: 18, scope: !2816)
!2830 = !DILocation(line: 907, column: 23, scope: !2816)
!2831 = !DILocation(line: 908, column: 17, scope: !2816)
!2832 = !DILocation(line: 908, column: 5, scope: !2816)
!2833 = !DILocation(line: 908, column: 12, scope: !2816)
!2834 = !DILocation(line: 908, column: 15, scope: !2816)
!2835 = !DILocation(line: 909, column: 3, scope: !2816)
!2836 = !DILocation(line: 905, column: 24, scope: !2811)
!2837 = !DILocation(line: 905, column: 3, scope: !2811)
!2838 = distinct !{!2838, !2814, !2839, !1490}
!2839 = !DILocation(line: 909, column: 3, scope: !2808)
!2840 = !DILocation(line: 910, column: 3, scope: !2761)
!2841 = !DILocation(line: 910, column: 10, scope: !2761)
!2842 = !DILocation(line: 910, column: 13, scope: !2761)
!2843 = !DILocation(line: 911, column: 10, scope: !2761)
!2844 = !DILocation(line: 911, column: 3, scope: !2761)
!2845 = distinct !DISubprogram(name: "print_backtrace", scope: !2, file: !2, line: 881, type: !1336, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !941)
!2846 = !DILocalVariable(name: "stack", scope: !2845, file: !2, line: 883, type: !2847)
!2847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 16384, elements: !679)
!2848 = !DILocation(line: 883, column: 9, scope: !2845)
!2849 = !DILocalVariable(name: "size", scope: !2845, file: !2, line: 884, type: !2850)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!2851 = !DILocation(line: 884, column: 13, scope: !2845)
!2852 = !DILocation(line: 884, column: 30, scope: !2845)
!2853 = !DILocation(line: 884, column: 20, scope: !2845)
!2854 = !DILocation(line: 885, column: 7, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2845, file: !2, line: 885, column: 7)
!2856 = !DILocation(line: 885, column: 12, scope: !2855)
!2857 = !DILocation(line: 885, column: 7, scope: !2845)
!2858 = !DILocation(line: 886, column: 26, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 885, column: 18)
!2860 = !DILocation(line: 886, column: 33, scope: !2859)
!2861 = !DILocation(line: 886, column: 5, scope: !2859)
!2862 = !DILocation(line: 887, column: 3, scope: !2859)
!2863 = !DILocation(line: 894, column: 1, scope: !2845)
