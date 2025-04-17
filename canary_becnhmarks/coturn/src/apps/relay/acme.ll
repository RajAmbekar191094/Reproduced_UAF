; ModuleID = '/home/raj/coturn/src/apps/relay/acme.c'
source_filename = "/home/raj/coturn/src/apps/relay/acme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ioa_socket = type { i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, %union.ioa_addr, i32, %union.ioa_addr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct._stun_buffer_list, i32, %struct.traffic_bytes, %struct.traffic_bytes, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._stun_buffer_list = type { ptr, i64 }
%struct.traffic_bytes = type { i64, i64 }
%struct._ts_ur_super_session = type { ptr, i64, i32, ptr, %struct._allocation, ptr, i32, i32, i32, [17 x i8], i32, [513 x i8], [64 x i8], i32, [257 x i8], i32, i32, i32, %struct._realm_options_t, i32, [128 x i8], i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, [33 x i8], i64 }
%struct._allocation = type { i32, %struct.stun_tid, %struct._turn_permission_hashtable, [2 x %struct.relay_endpoint_session], [2 x i32], %struct._ch_map, ptr, ptr, %struct._tcp_connection_list }
%struct.stun_tid = type { [12 x i8] }
%struct._turn_permission_hashtable = type { [8 x %struct._turn_permission_array] }
%struct._turn_permission_array = type { [3 x %struct._turn_permission_slot], i64, ptr }
%struct._turn_permission_slot = type { %struct._turn_permission_info }
%struct._turn_permission_info = type { i32, %struct._lm_map, %union.ioa_addr, i32, ptr, ptr, i32, i64 }
%struct._lm_map = type { [8 x %struct._lm_map_array] }
%struct._lm_map_array = type { [3 x i64], [3 x i64], i64, ptr, ptr }
%struct.relay_endpoint_session = type { ptr, i32, ptr }
%struct._ch_map = type { [8 x %struct._chn_map_array] }
%struct._chn_map_array = type { [3 x %struct._ch_info], i64, ptr }
%struct._ch_info = type { i16, i32, i16, %union.ioa_addr, i32, ptr, ptr, ptr }
%struct._tcp_connection_list = type { i64, ptr }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._perf_options_t = type { i64, i32, i32 }
%struct._turn_turnserver = type { i8, i64, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %union.ioa_addr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr }

@try_acme_redirect.HTML = internal global ptr @.str, align 8, !dbg !0
@.str = private unnamed_addr constant [108 x i8] c"<html><head><title>301 Moved Permanently</title></head>\09\09<body><h1>301 Moved Permanently</h1></body></html>\00", align 1, !dbg !782
@.str.1 = private unnamed_addr constant [118 x i8] c"HTTP/1.1 301 Moved Permanently\0D\0AContent-Type: text/html\0D\0AContent-Length: %ld\0D\0AConnection: close\0D\0ALocation: %s%s\0D\0A\0D\0A%s\00", align 1, !dbg !787
@.str.2 = private unnamed_addr constant [34 x i8] c"Sending redirect to '%s%s' failed\00", align 1, !dbg !792
@.str.3 = private unnamed_addr constant [25 x i8] c"ACME redirected to %s%s\0A\00", align 1, !dbg !797
@is_acme_req.A = internal global ptr @.str.4, align 8, !dbg !807
@.str.4 = private unnamed_addr constant [129 x i8] c"                                             -  0123456789       ABCDEFGHIJKLMNOPQRSTUVWXYZ    _ abcdefghijklmnopqrstuvwxyz     \00", align 1, !dbg !802
@.str.5 = private unnamed_addr constant [33 x i8] c"GET /.well-known/acme-challenge/\00", align 1, !dbg !813
@.str.6 = private unnamed_addr constant [9 x i8] c" HTTP/1.\00", align 1, !dbg !815

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_acme_redirect(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !828, metadata !DIExpression()), !dbg !829
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !830, metadata !DIExpression()), !dbg !831
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !832, metadata !DIExpression()), !dbg !833
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata ptr %10, metadata !836, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.declare(metadata ptr %11, metadata !839, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.declare(metadata ptr %12, metadata !841, metadata !DIExpression()), !dbg !842
  %13 = load ptr, ptr %8, align 8, !dbg !843
  %14 = icmp eq ptr %13, null, !dbg !845
  br i1 %14, label %27, label %15, !dbg !846

15:                                               ; preds = %4
  %16 = load ptr, ptr %8, align 8, !dbg !847
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !847
  %18 = load i8, ptr %17, align 1, !dbg !847
  %19 = sext i8 %18 to i32, !dbg !847
  %20 = icmp eq i32 %19, 0, !dbg !848
  br i1 %20, label %27, label %21, !dbg !849

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8, !dbg !850
  %23 = icmp eq ptr %22, null, !dbg !851
  br i1 %23, label %27, label %24, !dbg !852

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 8, !dbg !853
  %26 = icmp eq ptr %25, null, !dbg !854
  br i1 %26, label %27, label %28, !dbg !855

27:                                               ; preds = %24, %21, %15, %4
  store i32 1, ptr %5, align 4, !dbg !856
  br label %84, !dbg !856

28:                                               ; preds = %24
  %29 = load i64, ptr %7, align 8, !dbg !857
  %30 = icmp ult i64 %29, 64, !dbg !859
  br i1 %30, label %40, label %31, !dbg !860

31:                                               ; preds = %28
  %32 = load i64, ptr %7, align 8, !dbg !861
  %33 = icmp ugt i64 %32, 480, !dbg !862
  br i1 %33, label %40, label %34, !dbg !863

34:                                               ; preds = %31
  %35 = load ptr, ptr %6, align 8, !dbg !864
  %36 = load i64, ptr %7, align 8, !dbg !865
  %37 = call i32 @is_acme_req(ptr noundef %35, i64 noundef %36), !dbg !866
  %38 = sext i32 %37 to i64, !dbg !866
  store i64 %38, ptr %11, align 8, !dbg !867
  %39 = icmp ult i64 %38, 33, !dbg !868
  br i1 %39, label %40, label %41, !dbg !869

40:                                               ; preds = %34, %31, %28
  store i32 2, ptr %5, align 4, !dbg !870
  br label %84, !dbg !870

41:                                               ; preds = %34
  %42 = load ptr, ptr %6, align 8, !dbg !871
  %43 = load i64, ptr %11, align 8, !dbg !872
  %44 = getelementptr inbounds i8, ptr %42, i64 %43, !dbg !871
  store i8 0, ptr %44, align 1, !dbg !873
  %45 = getelementptr inbounds [1024 x i8], ptr %10, i64 0, i64 0, !dbg !874
  %46 = load ptr, ptr @try_acme_redirect.HTML, align 8, !dbg !875
  %47 = call i64 @strlen(ptr noundef %46) #5, !dbg !876
  %48 = load ptr, ptr %8, align 8, !dbg !877
  %49 = load ptr, ptr %6, align 8, !dbg !878
  %50 = getelementptr inbounds i8, ptr %49, i64 32, !dbg !879
  %51 = load ptr, ptr @try_acme_redirect.HTML, align 8, !dbg !880
  %52 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %45, i64 noundef 1023, ptr noundef @.str.1, i64 noundef %47, ptr noundef %48, ptr noundef %50, ptr noundef %51) #6, !dbg !881
  %53 = getelementptr inbounds [1024 x i8], ptr %10, i64 0, i64 0, !dbg !882
  %54 = call i64 @strlen(ptr noundef %53) #5, !dbg !883
  store i64 %54, ptr %12, align 8, !dbg !884
  %55 = load ptr, ptr %9, align 8, !dbg !885
  %56 = getelementptr inbounds %struct._ioa_socket, ptr %55, i32 0, i32 0, !dbg !887
  %57 = load i32, ptr %56, align 8, !dbg !887
  %58 = getelementptr inbounds [1024 x i8], ptr %10, i64 0, i64 0, !dbg !888
  %59 = load i64, ptr %12, align 8, !dbg !889
  %60 = call i64 @write(i32 noundef %57, ptr noundef %58, i64 noundef %59), !dbg !890
  %61 = icmp eq i64 %60, -1, !dbg !891
  br i1 %61, label %62, label %66, !dbg !892

62:                                               ; preds = %41
  %63 = load ptr, ptr %8, align 8, !dbg !893
  %64 = load ptr, ptr %6, align 8, !dbg !895
  %65 = getelementptr inbounds i8, ptr %64, i64 32, !dbg !896
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.2, ptr noundef %63, ptr noundef %65), !dbg !897
  br label %80, !dbg !898

66:                                               ; preds = %41
  %67 = load ptr, ptr %9, align 8, !dbg !899
  %68 = getelementptr inbounds %struct._ioa_socket, ptr %67, i32 0, i32 22, !dbg !901
  %69 = load ptr, ptr %68, align 8, !dbg !901
  %70 = getelementptr inbounds %struct._ts_ur_super_session, ptr %69, i32 0, i32 0, !dbg !902
  %71 = load ptr, ptr %70, align 8, !dbg !902
  %72 = getelementptr inbounds %struct._turn_turnserver, ptr %71, i32 0, i32 5, !dbg !903
  %73 = load i32, ptr %72, align 8, !dbg !903
  %74 = icmp ne i32 %73, 0, !dbg !904
  br i1 %74, label %75, label %79, !dbg !905

75:                                               ; preds = %66
  %76 = load ptr, ptr %8, align 8, !dbg !906
  %77 = load ptr, ptr %6, align 8, !dbg !908
  %78 = getelementptr inbounds i8, ptr %77, i64 32, !dbg !909
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.3, ptr noundef %76, ptr noundef %78), !dbg !910
  br label %79, !dbg !911

79:                                               ; preds = %75, %66
  br label %80

80:                                               ; preds = %79, %62
  %81 = load ptr, ptr %6, align 8, !dbg !912
  %82 = load i64, ptr %11, align 8, !dbg !913
  %83 = getelementptr inbounds i8, ptr %81, i64 %82, !dbg !912
  store i8 32, ptr %83, align 1, !dbg !914
  store i32 0, ptr %5, align 4, !dbg !915
  br label %84, !dbg !915

84:                                               ; preds = %80, %40, %27
  %85 = load i32, ptr %5, align 4, !dbg !916
  ret i32 %85, !dbg !916
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_acme_req(ptr noundef %0, i64 noundef %1) #0 !dbg !809 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !917, metadata !DIExpression()), !dbg !918
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !919, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.declare(metadata ptr %6, metadata !921, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata ptr %7, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.declare(metadata ptr %8, metadata !925, metadata !DIExpression()), !dbg !926
  %9 = load ptr, ptr %4, align 8, !dbg !927
  %10 = call i32 @strncmp(ptr noundef %9, ptr noundef @.str.5, i64 noundef 32) #5, !dbg !929
  %11 = icmp ne i32 %10, 0, !dbg !929
  br i1 %11, label %12, label %13, !dbg !930

12:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !931
  br label %78, !dbg !931

13:                                               ; preds = %2
  %14 = load i64, ptr %5, align 8, !dbg !932
  %15 = sub i64 %14, 21, !dbg !932
  store i64 %15, ptr %5, align 8, !dbg !932
  %16 = load i64, ptr %5, align 8, !dbg !933
  %17 = icmp ugt i64 %16, 131, !dbg !935
  br i1 %17, label %18, label %19, !dbg !936

18:                                               ; preds = %13
  store i64 131, ptr %5, align 8, !dbg !937
  br label %19, !dbg !938

19:                                               ; preds = %18, %13
  store i32 32, ptr %7, align 4, !dbg !939
  br label %20, !dbg !941

20:                                               ; preds = %74, %19
  %21 = load i32, ptr %7, align 4, !dbg !942
  %22 = load i64, ptr %5, align 8, !dbg !944
  %23 = trunc i64 %22 to i32, !dbg !945
  %24 = icmp slt i32 %21, %23, !dbg !946
  br i1 %24, label %25, label %77, !dbg !947

25:                                               ; preds = %20
  %26 = load ptr, ptr %4, align 8, !dbg !948
  %27 = load i32, ptr %7, align 4, !dbg !951
  %28 = sext i32 %27 to i64, !dbg !948
  %29 = getelementptr inbounds i8, ptr %26, i64 %28, !dbg !948
  %30 = load i8, ptr %29, align 1, !dbg !948
  %31 = sext i8 %30 to i32, !dbg !948
  %32 = icmp ne i32 %31, 32, !dbg !952
  br i1 %32, label %33, label %34, !dbg !953

33:                                               ; preds = %25
  br label %74, !dbg !954

34:                                               ; preds = %25
  %35 = load i32, ptr %7, align 4, !dbg !955
  %36 = icmp slt i32 %35, 42, !dbg !957
  br i1 %36, label %44, label %37, !dbg !958

37:                                               ; preds = %34
  %38 = load ptr, ptr %4, align 8, !dbg !959
  %39 = load i32, ptr %7, align 4, !dbg !960
  %40 = sext i32 %39 to i64, !dbg !961
  %41 = getelementptr inbounds i8, ptr %38, i64 %40, !dbg !961
  %42 = call i32 @strncmp(ptr noundef %41, ptr noundef @.str.6, i64 noundef 8) #5, !dbg !962
  %43 = icmp ne i32 %42, 0, !dbg !962
  br i1 %43, label %44, label %45, !dbg !963

44:                                               ; preds = %37, %34
  store i32 -2, ptr %3, align 4, !dbg !964
  br label %78, !dbg !964

45:                                               ; preds = %37
  store i32 32, ptr %8, align 4, !dbg !965
  br label %46, !dbg !967

46:                                               ; preds = %69, %45
  %47 = load i32, ptr %8, align 4, !dbg !968
  %48 = load i32, ptr %7, align 4, !dbg !970
  %49 = icmp slt i32 %47, %48, !dbg !971
  br i1 %49, label %50, label %72, !dbg !972

50:                                               ; preds = %46
  %51 = load ptr, ptr %4, align 8, !dbg !973
  %52 = load i32, ptr %8, align 4, !dbg !975
  %53 = sext i32 %52 to i64, !dbg !973
  %54 = getelementptr inbounds i8, ptr %51, i64 %53, !dbg !973
  %55 = load i8, ptr %54, align 1, !dbg !973
  %56 = sext i8 %55 to i32, !dbg !973
  store i32 %56, ptr %6, align 4, !dbg !976
  %57 = load i32, ptr %6, align 4, !dbg !977
  %58 = icmp sgt i32 %57, 127, !dbg !979
  br i1 %58, label %67, label %59, !dbg !980

59:                                               ; preds = %50
  %60 = load ptr, ptr @is_acme_req.A, align 8, !dbg !981
  %61 = load i32, ptr %6, align 4, !dbg !982
  %62 = sext i32 %61 to i64, !dbg !981
  %63 = getelementptr inbounds i8, ptr %60, i64 %62, !dbg !981
  %64 = load i8, ptr %63, align 1, !dbg !981
  %65 = sext i8 %64 to i32, !dbg !981
  %66 = icmp eq i32 %65, 32, !dbg !983
  br i1 %66, label %67, label %68, !dbg !984

67:                                               ; preds = %59, %50
  store i32 -3, ptr %3, align 4, !dbg !985
  br label %78, !dbg !985

68:                                               ; preds = %59
  br label %69, !dbg !986

69:                                               ; preds = %68
  %70 = load i32, ptr %8, align 4, !dbg !987
  %71 = add nsw i32 %70, 1, !dbg !987
  store i32 %71, ptr %8, align 4, !dbg !987
  br label %46, !dbg !988, !llvm.loop !989

72:                                               ; preds = %46
  %73 = load i32, ptr %7, align 4, !dbg !992
  store i32 %73, ptr %3, align 4, !dbg !993
  br label %78, !dbg !993

74:                                               ; preds = %33
  %75 = load i32, ptr %7, align 4, !dbg !994
  %76 = add nsw i32 %75, 1, !dbg !994
  store i32 %76, ptr %7, align 4, !dbg !994
  br label %20, !dbg !995, !llvm.loop !996

77:                                               ; preds = %20
  store i32 -4, ptr %3, align 4, !dbg !998
  br label %78, !dbg !998

78:                                               ; preds = %77, %72, %67, %44, %12
  %79 = load i32, ptr %3, align 4, !dbg !999
  ret i32 %79, !dbg !999
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #4

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!551}
!llvm.module.flags = !{!820, !821, !822, !823, !824, !825, !826}
!llvm.ident = !{!827}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "HTML", scope: !2, file: !3, line: 49, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "try_acme_redirect", scope: !3, file: !3, line: 46, type: !4, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !551, retainedNodes: !812)
!3 = !DIFile(filename: "src/apps/relay/acme.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c7e11d767dd773500a027d4d34aaf3c7")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !9, !12, !14}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 46, baseType: !11)
!10 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket_handle", file: !15, line: 116, baseType: !16)
!15 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket", file: !15, line: 115, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_socket", file: !19, line: 179, size: 2880, elements: !20)
!19 = !DIFile(filename: "src/apps/relay/ns_ioalib_impl.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "39ae1828625a6763b6269ecb34869b6c")
!20 = !{!21, !22, !24, !30, !117, !121, !124, !125, !139, !152, !157, !158, !159, !160, !161, !162, !163, !164, !259, !262, !275, !276, !277, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !531, !532, !533, !534, !539, !540, !543, !548, !549, !550}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !18, file: !19, line: 181, baseType: !6, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "parent_s", scope: !18, file: !19, line: 182, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !18, file: !19, line: 183, baseType: !25, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 26, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !28, line: 42, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sockets_container", scope: !18, file: !19, line: 184, baseType: !31, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map", file: !33, line: 183, baseType: !34)
!33 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_addr_map", file: !33, line: 177, size: 1441856, elements: !35)
!35 = !{!36, !114}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !34, file: !33, line: 178, baseType: !37, size: 1441792)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1441792, elements: !112)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_list_header", file: !33, line: 175, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_list_header", file: !33, line: 171, size: 1408, elements: !40)
!40 = !{!41, !109, !111}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "main_list", scope: !39, file: !33, line: 172, baseType: !42, size: 1280)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1280, elements: !104)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_elem", file: !33, line: 169, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_elem", file: !33, line: 166, size: 320, elements: !45)
!45 = !{!46, !107}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !44, file: !33, line: 167, baseType: !47, size: 224)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !48, line: 48, baseType: !49)
!48 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !48, line: 44, size: 224, elements: !50)
!50 = !{!51, !63, !82}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !49, file: !48, line: 45, baseType: !52, size: 128)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !53, line: 180, size: 128, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!54 = !{!55, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !52, file: !53, line: 182, baseType: !56, size: 16)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !57, line: 28, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !52, file: !53, line: 183, baseType: !60, size: 112, offset: 16)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 112, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 14)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !49, file: !48, line: 46, baseType: !64, size: 128)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !65, line: 245, size: 128, elements: !66)
!65 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!66 = !{!67, !68, !72, !77}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !64, file: !65, line: 247, baseType: !56, size: 16)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !64, file: !65, line: 248, baseType: !69, size: 16, offset: 16)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !65, line: 123, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !26, line: 25, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !28, line: 40, baseType: !58)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !64, file: !65, line: 249, baseType: !73, size: 32, offset: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !65, line: 31, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !73, file: !65, line: 33, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !65, line: 30, baseType: !25)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !64, file: !65, line: 252, baseType: !78, size: 64, offset: 64)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !80)
!79 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !{!81}
!81 = !DISubrange(count: 8)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !49, file: !48, line: 47, baseType: !83, size: 224)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !65, line: 260, size: 224, elements: !84)
!84 = !{!85, !86, !87, !88, !106}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !83, file: !65, line: 262, baseType: !56, size: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !83, file: !65, line: 263, baseType: !69, size: 16, offset: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !83, file: !65, line: 264, baseType: !25, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !83, file: !65, line: 265, baseType: !89, size: 128, offset: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !65, line: 219, size: 128, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !89, file: !65, line: 226, baseType: !92, size: 128)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !65, line: 221, size: 128, elements: !93)
!93 = !{!94, !100, !102}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !92, file: !65, line: 223, baseType: !95, size: 128)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !98)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !26, line: 24, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !28, line: 38, baseType: !79)
!98 = !{!99}
!99 = !DISubrange(count: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !92, file: !65, line: 224, baseType: !101, size: 128)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !92, file: !65, line: 225, baseType: !103, size: 128)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 4)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !83, file: !65, line: 266, baseType: !25, size: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !44, file: !33, line: 168, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map_value_type", file: !33, line: 161, baseType: !11)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "extra_list", scope: !39, file: !33, line: 173, baseType: !110, size: 64, offset: 1280)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !39, file: !33, line: 174, baseType: !9, size: 64, offset: 1344)
!112 = !{!113}
!113 = !DISubrange(count: 1024)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !34, file: !33, line: 179, baseType: !115, size: 64, offset: 1441792)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !26, line: 27, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !28, line: 45, baseType: !11)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bev", scope: !18, file: !19, line: 185, baseType: !118, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferevent", file: !120, line: 113, flags: DIFlagFwdDecl)
!120 = !DIFile(filename: "/usr/include/event2/bufferevent.h", directory: "", checksumkind: CSK_MD5, checksum: "15bb43c26b2c9058b6c64d44779c7263")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "defer_nbh", scope: !18, file: !19, line: 186, baseType: !122, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_network_buffer_handle", file: !15, line: 124, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !18, file: !19, line: 187, baseType: !6, size: 32, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !18, file: !19, line: 188, baseType: !126, size: 32, offset: 416)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_TYPE", file: !15, line: 98, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !15, line: 85, baseType: !29, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!129 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!130 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!131 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!132 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!133 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!134 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!135 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!136 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!137 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!138 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sat", scope: !18, file: !19, line: 189, baseType: !140, size: 32, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_APP_TYPE", file: !15, line: 112, baseType: !141)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_APP_TYPE", file: !15, line: 100, baseType: !29, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151}
!143 = !DIEnumerator(name: "UNKNOWN_APP_SOCKET", value: 0)
!144 = !DIEnumerator(name: "CLIENT_SOCKET", value: 1)
!145 = !DIEnumerator(name: "HTTP_CLIENT_SOCKET", value: 2)
!146 = !DIEnumerator(name: "HTTPS_CLIENT_SOCKET", value: 3)
!147 = !DIEnumerator(name: "RELAY_SOCKET", value: 4)
!148 = !DIEnumerator(name: "RELAY_RTCP_SOCKET", value: 5)
!149 = !DIEnumerator(name: "TCP_CLIENT_DATA_SOCKET", value: 6)
!150 = !DIEnumerator(name: "TCP_RELAY_DATA_SOCKET", value: 7)
!151 = !DIEnumerator(name: "LISTENER_SOCKET", value: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !18, file: !19, line: 190, baseType: !153, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !155, line: 184, baseType: !156)
!155 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !155, line: 184, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegs", scope: !18, file: !19, line: 191, baseType: !25, size: 32, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "in_write", scope: !18, file: !19, line: 192, baseType: !6, size: 32, offset: 608)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !18, file: !19, line: 193, baseType: !6, size: 32, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_known", scope: !18, file: !19, line: 194, baseType: !6, size: 32, offset: 672)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !18, file: !19, line: 195, baseType: !47, size: 224, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !18, file: !19, line: 196, baseType: !6, size: 32, offset: 928)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !18, file: !19, line: 197, baseType: !47, size: 224, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !18, file: !19, line: 198, baseType: !165, size: 64, offset: 1216)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_handle", file: !15, line: 120, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine", file: !15, line: 119, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_engine", file: !19, line: 135, size: 536064, elements: !169)
!169 = !{!170, !175, !179, !180, !181, !186, !191, !217, !221, !222, !223, !224, !225, !226, !229, !231, !235, !237, !247, !251, !252, !253, !254, !256}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !168, file: !19, line: 137, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "super_memory_t", file: !173, line: 49, baseType: !174)
!173 = !DIFile(filename: "src/apps/relay/ns_sm.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "9025fd46a533d33a213551fd581f5b89")
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "_super_memory", file: !173, line: 48, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !168, file: !19, line: 138, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !178, line: 217, flags: DIFlagFwdDecl)
!178 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!179 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate_eb", scope: !168, file: !19, line: 139, baseType: !6, size: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !168, file: !19, line: 140, baseType: !6, size: 32, offset: 160)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !168, file: !19, line: 141, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnipports", file: !184, line: 50, baseType: !185)
!184 = !DIFile(filename: "src/apps/relay/turn_ports.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "11983eef23ed630198ed333562550552")
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "_turnipports", file: !184, line: 49, flags: DIFlagFwdDecl)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "map_rtcp", scope: !168, file: !19, line: 142, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_map", file: !189, line: 46, baseType: !190)
!189 = !DIFile(filename: "src/server/ns_turn_maps_rtcp.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bedcc1443244c8ca394e26ac35053c7")
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "_rtcp_map", file: !189, line: 45, flags: DIFlagFwdDecl)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !168, file: !19, line: 143, baseType: !192, size: 128, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list", file: !19, line: 81, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list", file: !19, line: 78, size: 128, elements: !194)
!194 = !{!195, !216}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !193, file: !19, line: 79, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list_elem", file: !19, line: 76, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list_elem", file: !19, line: 73, size: 524288, elements: !199)
!199 = !{!200, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !19, line: 74, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !198, file: !19, line: 75, baseType: !203, size: 524224, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !204, line: 48, baseType: !205)
!204 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !204, line: 42, size: 524224, elements: !206)
!206 = !{!207, !209, !213, !214, !215}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !205, file: !204, line: 43, baseType: !208, size: 32)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32, elements: !104)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !205, file: !204, line: 44, baseType: !210, size: 524056, offset: 32)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 524056, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 65507)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !205, file: !204, line: 45, baseType: !9, size: 64, offset: 524096)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !205, file: !204, line: 46, baseType: !70, size: 16, offset: 524160)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !205, file: !204, line: 47, baseType: !96, size: 8, offset: 524176)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !193, file: !19, line: 80, baseType: !9, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_ssl23", scope: !168, file: !19, line: 144, baseType: !218, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !155, line: 185, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !155, line: 185, flags: DIFlagFwdDecl)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_0", scope: !168, file: !19, line: 145, baseType: !218, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_1", scope: !168, file: !19, line: 147, baseType: !218, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_2", scope: !168, file: !19, line: 149, baseType: !218, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx", scope: !168, file: !19, line: 153, baseType: !218, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx_v1_2", scope: !168, file: !19, line: 156, baseType: !218, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !168, file: !19, line: 158, baseType: !227, size: 32, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !228, line: 108, baseType: !25)
!228 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!229 = !DIDerivedType(tag: DW_TAG_member, name: "timer_ev", scope: !168, file: !19, line: 159, baseType: !230, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_timer_handle", file: !15, line: 122, baseType: !123)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg", scope: !168, file: !19, line: 160, baseType: !232, size: 524296, offset: 960)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 524296, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 65537)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timer_intervals", scope: !168, file: !19, line: 161, baseType: !236, size: 448, offset: 525280)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 448, elements: !61)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timers", scope: !168, file: !19, line: 162, baseType: !238, size: 1792, offset: 525760)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1792, elements: !61)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !240, line: 8, size: 128, elements: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!241 = !{!242, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !239, file: !240, line: 14, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !28, line: 160, baseType: !244)
!244 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !239, file: !240, line: 15, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !28, line: 162, baseType: !244)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "relay_ifname", scope: !168, file: !19, line: 164, baseType: !248, size: 8200, offset: 527552)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8200, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 1025)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "default_relays", scope: !168, file: !19, line: 165, baseType: !6, size: 32, offset: 535776)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "relays_number", scope: !168, file: !19, line: 166, baseType: !9, size: 64, offset: 535808)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_counter", scope: !168, file: !19, line: 167, baseType: !9, size: 64, offset: 535872)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addrs", scope: !168, file: !19, line: 168, baseType: !255, size: 64, offset: 535936)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rch", scope: !168, file: !19, line: 169, baseType: !257, size: 64, offset: 536000)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "redis_context_handle", file: !258, line: 45, baseType: !123)
!258 = !DIFile(filename: "src/apps/common/hiredis_libevent2.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bcf7d75479c12c7a6031a30f30ef1f7")
!259 = !DIDerivedType(tag: DW_TAG_member, name: "read_event", scope: !18, file: !19, line: 199, baseType: !260, size: 64, offset: 1280)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !178, line: 276, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "read_cb", scope: !18, file: !19, line: 200, baseType: !263, size: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_event_handler", file: !15, line: 199, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !14, !6, !267, !123, !6}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_data", file: !15, line: 132, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_net_data", file: !15, line: 127, size: 384, elements: !270)
!270 = !{!271, !272, !273, !274}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !269, file: !15, line: 128, baseType: !47, size: 224)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "nbh", scope: !269, file: !15, line: 129, baseType: !122, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "recv_ttl", scope: !269, file: !15, line: 130, baseType: !6, size: 32, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "recv_tos", scope: !269, file: !15, line: 131, baseType: !6, size: 32, offset: 352)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "read_ctx", scope: !18, file: !19, line: 201, baseType: !123, size: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !18, file: !19, line: 202, baseType: !6, size: 32, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !18, file: !19, line: 203, baseType: !278, size: 64, offset: 1536)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ts_ur_super_session", file: !15, line: 47, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ts_ur_super_session", file: !281, line: 68, size: 152448, elements: !282)
!281 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!282 = !{!283, !284, !286, !287, !288, !438, !439, !440, !441, !442, !446, !447, !451, !456, !457, !462, !463, !464, !465, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !510, !511, !515}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !280, file: !281, line: 69, baseType: !123, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !280, file: !281, line: 70, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnsession_id", file: !281, line: 62, baseType: !115)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !280, file: !281, line: 71, baseType: !227, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "client_socket", scope: !280, file: !281, line: 72, baseType: !14, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !280, file: !281, line: 73, baseType: !289, size: 141120, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocation", file: !290, line: 186, baseType: !291)
!290 = !DIFile(filename: "src/server/ns_turn_allocation.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0cb2cf61c9ec5dd3030a6e5a6f8d4af1")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_allocation", file: !290, line: 176, size: 141120, elements: !292)
!292 = !{!293, !294, !303, !357, !367, !369, !395, !396, !400}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !291, file: !290, line: 177, baseType: !6, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !291, file: !290, line: 178, baseType: !295, size: 96, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !296, line: 52, baseType: !297)
!296 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 47, size: 96, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !297, file: !296, line: 51, baseType: !300, size: 96)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 96, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 12)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_perm", scope: !291, file: !290, line: 179, baseType: !304, size: 125440, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_hashtable", file: !290, line: 166, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_hashtable", file: !290, line: 164, size: 125440, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !305, file: !290, line: 165, baseType: !308, size: 125440)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 125440, elements: !80)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_array", file: !290, line: 162, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_array", file: !290, line: 158, size: 15680, elements: !311)
!311 = !{!312, !353, !354}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "main_slots", scope: !310, file: !290, line: 159, baseType: !313, size: 15552)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 15552, elements: !334)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_slot", file: !290, line: 156, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_slot", file: !290, line: 154, size: 5184, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !315, file: !290, line: 155, baseType: !318, size: 5184)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_info", file: !290, line: 152, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_info", file: !290, line: 143, size: 5184, elements: !320)
!320 = !{!321, !322, !346, !347, !348, !349, !350, !351}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !319, file: !290, line: 144, baseType: !6, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !319, file: !290, line: 145, baseType: !323, size: 4608, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map", file: !33, line: 117, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map", file: !33, line: 115, size: 4608, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !324, file: !33, line: 116, baseType: !327, size: 4608)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 4608, elements: !80)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map_array", file: !33, line: 113, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map_array", file: !33, line: 107, size: 576, elements: !330)
!330 = !{!331, !336, !339, !340, !343}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "main_keys", scope: !329, file: !33, line: 108, baseType: !332, size: 192)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 192, elements: !334)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_key_type", file: !33, line: 47, baseType: !115)
!334 = !{!335}
!335 = !DISubrange(count: 3)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "main_values", scope: !329, file: !33, line: 109, baseType: !337, size: 192, offset: 192)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 192, elements: !334)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_value_type", file: !33, line: 48, baseType: !11)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !329, file: !33, line: 110, baseType: !9, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "extra_keys", scope: !329, file: !33, line: 111, baseType: !341, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !329, file: !33, line: 112, baseType: !344, size: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !319, file: !290, line: 146, baseType: !47, size: 224, offset: 4672)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !319, file: !290, line: 147, baseType: !227, size: 32, offset: 4896)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !319, file: !290, line: 148, baseType: !230, size: 64, offset: 4928)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !319, file: !290, line: 149, baseType: !123, size: 64, offset: 4992)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !319, file: !290, line: 150, baseType: !6, size: 32, offset: 5056)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !319, file: !290, line: 151, baseType: !352, size: 64, offset: 5120)
!352 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !310, file: !290, line: 160, baseType: !9, size: 64, offset: 15552)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "extra_slots", scope: !310, file: !290, line: 161, baseType: !355, size: 64, offset: 15616)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions", scope: !291, file: !290, line: 180, baseType: !358, size: 384, offset: 125568)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 384, elements: !365)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "relay_endpoint_session", file: !290, line: 55, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 50, size: 192, elements: !361)
!361 = !{!362, !363, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !360, file: !290, line: 52, baseType: !14, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !360, file: !290, line: 53, baseType: !227, size: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !360, file: !290, line: 54, baseType: !230, size: 64, offset: 128)
!365 = !{!366}
!366 = !DISubrange(count: 2)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions_failure", scope: !291, file: !290, line: 181, baseType: !368, size: 64, offset: 125952)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !365)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !291, file: !290, line: 182, baseType: !370, size: 14848, offset: 126016)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map", file: !290, line: 136, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_map", file: !290, line: 134, size: 14848, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !371, file: !290, line: 135, baseType: !374, size: 14848)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 14848, elements: !80)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map_array", file: !290, line: 132, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_chn_map_array", file: !290, line: 128, size: 1856, elements: !377)
!377 = !{!378, !391, !392}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "main_chns", scope: !376, file: !290, line: 129, baseType: !379, size: 1728)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 1728, elements: !334)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_info", file: !290, line: 121, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_info", file: !290, line: 112, size: 576, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "chnum", scope: !381, file: !290, line: 113, baseType: !70, size: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !381, file: !290, line: 114, baseType: !6, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !381, file: !290, line: 115, baseType: !70, size: 16, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !381, file: !290, line: 116, baseType: !47, size: 224, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !381, file: !290, line: 117, baseType: !227, size: 32, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !381, file: !290, line: 118, baseType: !230, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !381, file: !290, line: 119, baseType: !123, size: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_channel", scope: !381, file: !290, line: 120, baseType: !123, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !376, file: !290, line: 130, baseType: !9, size: 64, offset: 1728)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "extra_chns", scope: !376, file: !290, line: 131, baseType: !393, size: 64, offset: 1792)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !291, file: !290, line: 183, baseType: !123, size: 64, offset: 140864)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_connections", scope: !291, file: !290, line: 184, baseType: !397, size: 64, offset: 140928)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map", file: !33, line: 43, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_map", file: !33, line: 42, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tcs", scope: !291, file: !290, line: 185, baseType: !401, size: 128, offset: 140992)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_list", file: !290, line: 103, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection_list", file: !290, line: 100, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !402, file: !290, line: 101, baseType: !9, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !402, file: !290, line: 102, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection", file: !15, line: 50, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection", file: !290, line: 85, size: 960, elements: !410)
!410 = !{!411, !421, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !409, file: !290, line: 87, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "TC_STATE", file: !290, line: 76, baseType: !413)
!413 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TC_STATE", file: !290, line: 67, baseType: !29, size: 32, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420}
!415 = !DIEnumerator(name: "TC_STATE_UNKNOWN", value: 0)
!416 = !DIEnumerator(name: "TC_STATE_CLIENT_TO_PEER_CONNECTING", value: 1)
!417 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTING", value: 2)
!418 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTED", value: 3)
!419 = !DIEnumerator(name: "TC_STATE_READY", value: 4)
!420 = !DIEnumerator(name: "TC_STATE_FAILED", value: 5)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !409, file: !290, line: 88, baseType: !422, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_id", file: !290, line: 78, baseType: !25)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !409, file: !290, line: 89, baseType: !47, size: 224, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "client_s", scope: !409, file: !290, line: 90, baseType: !14, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "peer_s", scope: !409, file: !290, line: 91, baseType: !14, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "peer_conn_timeout", scope: !409, file: !290, line: 92, baseType: !230, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bind_timeout", scope: !409, file: !290, line: 93, baseType: !230, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !409, file: !290, line: 94, baseType: !295, size: 96, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !409, file: !290, line: 95, baseType: !123, size: 64, offset: 704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !409, file: !290, line: 96, baseType: !6, size: 32, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ub_to_client", scope: !409, file: !290, line: 97, baseType: !432, size: 128, offset: 832)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "unsent_buffer", file: !290, line: 83, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 80, size: 128, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !433, file: !290, line: 81, baseType: !9, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !433, file: !290, line: 82, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_allocated_timeout_ev", scope: !280, file: !281, line: 74, baseType: !230, size: 64, offset: 141376)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !280, file: !281, line: 75, baseType: !6, size: 32, offset: 141440)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "is_tcp_relay", scope: !280, file: !281, line: 76, baseType: !6, size: 32, offset: 141472)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_closed", scope: !280, file: !281, line: 77, baseType: !6, size: 32, offset: 141504)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !280, file: !281, line: 79, baseType: !443, size: 136, offset: 141536)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 136, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 17)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_expiration_time", scope: !280, file: !281, line: 80, baseType: !227, size: 32, offset: 141696)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !280, file: !281, line: 81, baseType: !448, size: 4104, offset: 141728)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 4104, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 513)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey", scope: !280, file: !281, line: 82, baseType: !452, size: 512, offset: 145832)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "hmackey_t", file: !296, line: 64, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 512, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey_set", scope: !280, file: !281, line: 83, baseType: !6, size: 32, offset: 146368)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !280, file: !281, line: 84, baseType: !458, size: 2056, offset: 146400)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !296, line: 66, baseType: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2056, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 257)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "quota_used", scope: !280, file: !281, line: 85, baseType: !6, size: 32, offset: 148480)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !280, file: !281, line: 86, baseType: !6, size: 32, offset: 148512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "max_session_time_auth", scope: !280, file: !281, line: 87, baseType: !227, size: 32, offset: 148544)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "realm_options", scope: !280, file: !281, line: 89, baseType: !466, size: 1152, offset: 148608)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !15, line: 142, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !281, line: 53, size: 1152, elements: !468)
!468 = !{!469, !473}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !281, line: 55, baseType: !470, size: 1024)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !467, file: !281, line: 57, baseType: !474, size: 128, offset: 1024)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !281, line: 51, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !281, line: 45, size: 128, elements: !476)
!476 = !{!477, !480, !482}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !475, file: !281, line: 47, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !296, line: 67, baseType: !11)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !475, file: !281, line: 48, baseType: !481, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !228, line: 105, baseType: !6)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !475, file: !281, line: 49, baseType: !481, size: 32, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "origin_set", scope: !280, file: !281, line: 90, baseType: !6, size: 32, offset: 149760)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !280, file: !281, line: 91, baseType: !470, size: 1024, offset: 149792)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !280, file: !281, line: 93, baseType: !25, size: 32, offset: 150816)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !280, file: !281, line: 94, baseType: !25, size: 32, offset: 150848)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !280, file: !281, line: 95, baseType: !25, size: 32, offset: 150880)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !280, file: !281, line: 96, baseType: !25, size: 32, offset: 150912)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_packets", scope: !280, file: !281, line: 97, baseType: !115, size: 64, offset: 150976)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_packets", scope: !280, file: !281, line: 98, baseType: !115, size: 64, offset: 151040)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_bytes", scope: !280, file: !281, line: 99, baseType: !115, size: 64, offset: 151104)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_bytes", scope: !280, file: !281, line: 100, baseType: !115, size: 64, offset: 151168)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !280, file: !281, line: 101, baseType: !115, size: 64, offset: 151232)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !280, file: !281, line: 102, baseType: !9, size: 64, offset: 151296)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !280, file: !281, line: 103, baseType: !9, size: 64, offset: 151360)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !280, file: !281, line: 104, baseType: !25, size: 32, offset: 151424)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !280, file: !281, line: 105, baseType: !25, size: 32, offset: 151456)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !280, file: !281, line: 106, baseType: !25, size: 32, offset: 151488)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !280, file: !281, line: 107, baseType: !25, size: 32, offset: 151520)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_packets", scope: !280, file: !281, line: 108, baseType: !25, size: 32, offset: 151552)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_packets", scope: !280, file: !281, line: 109, baseType: !25, size: 32, offset: 151584)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_bytes", scope: !280, file: !281, line: 110, baseType: !25, size: 32, offset: 151616)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_bytes", scope: !280, file: !281, line: 111, baseType: !25, size: 32, offset: 151648)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !280, file: !281, line: 112, baseType: !115, size: 64, offset: 151680)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !280, file: !281, line: 113, baseType: !9, size: 64, offset: 151744)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !280, file: !281, line: 114, baseType: !9, size: 64, offset: 151808)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !280, file: !281, line: 116, baseType: !6, size: 32, offset: 151872)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_id", scope: !280, file: !281, line: 117, baseType: !509, size: 64, offset: 151936)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "mobile_id_t", file: !281, line: 66, baseType: !115)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "old_mobile_id", scope: !280, file: !281, line: 118, baseType: !509, size: 64, offset: 152000)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_mobile_id", scope: !280, file: !281, line: 119, baseType: !512, size: 264, offset: 152064)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 264, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 33)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !280, file: !281, line: 121, baseType: !479, size: 64, offset: 152384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "current_df_relay_flag", scope: !18, file: !19, line: 204, baseType: !6, size: 32, offset: 1600)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_use_df", scope: !18, file: !19, line: 206, baseType: !6, size: 32, offset: 1632)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tobeclosed", scope: !18, file: !19, line: 207, baseType: !6, size: 32, offset: 1664)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "broken", scope: !18, file: !19, line: 208, baseType: !6, size: 32, offset: 1696)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "default_ttl", scope: !18, file: !19, line: 209, baseType: !6, size: 32, offset: 1728)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "current_ttl", scope: !18, file: !19, line: 210, baseType: !6, size: 32, offset: 1760)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "default_tos", scope: !18, file: !19, line: 211, baseType: !6, size: 32, offset: 1792)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "current_tos", scope: !18, file: !19, line: 212, baseType: !6, size: 32, offset: 1824)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !18, file: !19, line: 213, baseType: !192, size: 128, offset: 1856)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !18, file: !19, line: 214, baseType: !227, size: 32, offset: 1984)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "data_traffic", scope: !18, file: !19, line: 215, baseType: !527, size: 128, offset: 2048)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "traffic_bytes", file: !19, line: 174, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_read", scope: !527, file: !19, line: 175, baseType: !479, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_write", scope: !527, file: !19, line: 176, baseType: !479, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "control_traffic", scope: !18, file: !19, line: 216, baseType: !527, size: 128, offset: 2176)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sub_session", scope: !18, file: !19, line: 219, baseType: !407, size: 64, offset: 2304)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bev", scope: !18, file: !19, line: 221, baseType: !118, size: 64, offset: 2368)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "conn_cb", scope: !18, file: !19, line: 222, baseType: !535, size: 64, offset: 2432)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "connect_cb", file: !15, line: 135, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !6, !123}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "conn_arg", scope: !18, file: !19, line: 223, baseType: !123, size: 64, offset: 2496)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "list_ev", scope: !18, file: !19, line: 225, baseType: !541, size: 64, offset: 2560)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "evconnlistener", file: !19, line: 225, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "acb", scope: !18, file: !19, line: 226, baseType: !544, size: 64, offset: 2624)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "accept_cb", file: !15, line: 137, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !14, !123}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "acbarg", scope: !18, file: !19, line: 227, baseType: !123, size: 64, offset: 2688)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "special_session", scope: !18, file: !19, line: 229, baseType: !123, size: 64, offset: 2752)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "special_session_size", scope: !18, file: !19, line: 230, baseType: !9, size: 64, offset: 2816)
!551 = distinct !DICompileUnit(language: DW_LANG_C11, file: !552, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !553, retainedTypes: !585, globals: !781, splitDebugInlining: false, nameTableKind: None)
!552 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/acme.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "c7e11d767dd773500a027d4d34aaf3c7")
!553 = !{!127, !141, !413, !554, !561, !567, !573, !580}
!554 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !555, line: 47, baseType: !29, size: 32, elements: !556)
!555 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!556 = !{!557, !558, !559, !560}
!557 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!558 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!559 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!560 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!561 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !296, line: 54, baseType: !29, size: 32, elements: !562)
!562 = !{!563, !564, !565, !566}
!563 = !DIEnumerator(name: "TURN_CREDENTIALS_NONE", value: 0)
!564 = !DIEnumerator(name: "TURN_CREDENTIALS_LONG_TERM", value: 1)
!565 = !DIEnumerator(name: "TURN_CREDENTIALS_SHORT_TERM", value: 2)
!566 = !DIEnumerator(name: "TURN_CREDENTIALS_UNDEFINED", value: 3)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !568, line: 92, baseType: !29, size: 32, elements: !569)
!568 = !DIFile(filename: "src/server/ns_turn_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6e53554bfe42393e23ac816233e245b8")
!569 = !{!570, !571, !572}
!570 = !DIEnumerator(name: "DONT_FRAGMENT_UNSUPPORTED", value: 0)
!571 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORTED", value: 1)
!572 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORT_EMULATED", value: 2)
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MESSAGE_TO_RELAY_TYPE", file: !568, line: 69, baseType: !29, size: 32, elements: !574)
!574 = !{!575, !576, !577, !578, !579}
!575 = !DIEnumerator(name: "RMT_UNKNOWN", value: 0)
!576 = !DIEnumerator(name: "RMT_SOCKET", value: 1)
!577 = !DIEnumerator(name: "RMT_CB_SOCKET", value: 2)
!578 = !DIEnumerator(name: "RMT_MOBILE_SOCKET", value: 3)
!579 = !DIEnumerator(name: "RMT_CANCEL_SESSION", value: 4)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !568, line: 79, baseType: !29, size: 32, elements: !581)
!581 = !{!582, !583, !584}
!582 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV4", value: 0)
!583 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV6", value: 1)
!584 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_KEEP", value: 2)
!585 = !{!123, !586, !6}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_turnserver", file: !568, line: 99, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_turnserver", file: !568, line: 111, size: 3456, elements: !589)
!589 = !{!590, !592, !593, !594, !595, !596, !597, !598, !599, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !613, !618, !623, !625, !629, !640, !645, !650, !651, !652, !653, !654, !711, !716, !717, !718, !719, !726, !740, !741, !742, !743, !744, !745, !766, !767, !768, !769, !770, !775, !776, !777, !778, !780}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !588, file: !568, line: 113, baseType: !591, size: 8)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnserver_id", file: !568, line: 67, baseType: !96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_counter", scope: !588, file: !568, line: 115, baseType: !285, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sessions_map", scope: !588, file: !568, line: 116, baseType: !397, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !588, file: !568, line: 118, baseType: !227, size: 32, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !588, file: !568, line: 120, baseType: !165, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !588, file: !568, line: 121, baseType: !6, size: 32, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !588, file: !568, line: 122, baseType: !6, size: 32, offset: 352)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rfc5780", scope: !588, file: !568, line: 123, baseType: !6, size: 32, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "check_origin", scope: !588, file: !568, line: 124, baseType: !600, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "vintp", file: !228, line: 106, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "stale_nonce", scope: !588, file: !568, line: 125, baseType: !600, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocate_lifetime", scope: !588, file: !568, line: 126, baseType: !600, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "channel_lifetime", scope: !588, file: !568, line: 127, baseType: !600, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "permission_lifetime", scope: !588, file: !568, line: 128, baseType: !600, size: 64, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "stun_only", scope: !588, file: !568, line: 129, baseType: !600, size: 64, offset: 768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "no_stun", scope: !588, file: !568, line: 130, baseType: !600, size: 64, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "no_software_attribute", scope: !588, file: !568, line: 131, baseType: !600, size: 64, offset: 896)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "web_admin_listen_on_workers", scope: !588, file: !568, line: 132, baseType: !600, size: 64, offset: 960)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "secure_stun", scope: !588, file: !568, line: 133, baseType: !600, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !588, file: !568, line: 134, baseType: !612, size: 32, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_credential_type", file: !296, line: 59, baseType: !561)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "alt_addr_cb", scope: !588, file: !568, line: 135, baseType: !614, size: 64, offset: 1152)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_alt_addr_cb", file: !568, line: 59, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!6, !255, !255}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sm_cb", scope: !588, file: !568, line: 136, baseType: !619, size: 64, offset: 1216)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_message_cb", file: !568, line: 60, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!6, !165, !122, !255, !255}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dont_fragment", scope: !588, file: !568, line: 137, baseType: !624, size: 32, offset: 1280)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "dont_fragment_option_t", file: !568, line: 96, baseType: !567)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !588, file: !568, line: 138, baseType: !626, size: 64, offset: 1344)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!6, !278}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "userkeycb", scope: !588, file: !568, line: 139, baseType: !630, size: 64, offset: 1408)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_user_key_cb", file: !568, line: 102, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!634, !591, !612, !6, !635, !634, !634, !636, !267, !115, !635}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_username_resume_cb", file: !568, line: 101, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !6, !6, !6, !634, !634, !586, !115, !267, !634}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "chquotacb", scope: !588, file: !568, line: 140, baseType: !641, size: 64, offset: 1472)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "check_new_allocation_quota_cb", file: !568, line: 103, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!6, !634, !6, !634}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "raqcb", scope: !588, file: !568, line: 141, baseType: !646, size: 64, offset: 1536)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "release_allocation_quota_cb", file: !568, line: 104, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !634, !6, !634}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip_set", scope: !588, file: !568, line: 142, baseType: !6, size: 32, offset: 1600)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip", scope: !588, file: !568, line: 143, baseType: !47, size: 224, offset: 1632)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "allow_loopback_peers", scope: !588, file: !568, line: 144, baseType: !600, size: 64, offset: 1856)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "no_multicast_peers", scope: !588, file: !568, line: 145, baseType: !600, size: 64, offset: 1920)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "send_turn_session_info", scope: !588, file: !568, line: 146, baseType: !655, size: 64, offset: 1984)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_turn_session_info_cb", file: !568, line: 106, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!6, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "turn_session_info", file: !281, line: 134, size: 15040, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !670, !674, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !704, !705, !707, !708, !709, !710}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !660, file: !281, line: 135, baseType: !285, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !660, file: !281, line: 136, baseType: !6, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !660, file: !281, line: 137, baseType: !227, size: 32, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !660, file: !281, line: 138, baseType: !227, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "client_protocol", scope: !660, file: !281, line: 139, baseType: !126, size: 32, offset: 160)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "peer_protocol", scope: !660, file: !281, line: 140, baseType: !126, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tls_method", scope: !660, file: !281, line: 141, baseType: !669, size: 136, offset: 224)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 136, elements: !444)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cipher", scope: !660, file: !281, line: 142, baseType: !671, size: 520, offset: 360)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 520, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 65)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_data", scope: !660, file: !281, line: 143, baseType: !675, size: 768, offset: 896)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_data", file: !281, line: 132, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_data", file: !281, line: 129, size: 768, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !676, file: !281, line: 130, baseType: !47, size: 224)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !676, file: !281, line: 131, baseType: !671, size: 520, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr_data", scope: !660, file: !281, line: 144, baseType: !675, size: 768, offset: 1664)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv4", scope: !660, file: !281, line: 145, baseType: !675, size: 768, offset: 2432)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv6", scope: !660, file: !281, line: 146, baseType: !675, size: 768, offset: 3200)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !660, file: !281, line: 147, baseType: !448, size: 4104, offset: 3968)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !660, file: !281, line: 148, baseType: !6, size: 32, offset: 8096)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !660, file: !281, line: 150, baseType: !115, size: 64, offset: 8128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !660, file: !281, line: 151, baseType: !115, size: 64, offset: 8192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !660, file: !281, line: 152, baseType: !115, size: 64, offset: 8256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !660, file: !281, line: 153, baseType: !115, size: 64, offset: 8320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !660, file: !281, line: 154, baseType: !25, size: 32, offset: 8384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !660, file: !281, line: 155, baseType: !25, size: 32, offset: 8416)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !660, file: !281, line: 156, baseType: !25, size: 32, offset: 8448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !660, file: !281, line: 157, baseType: !115, size: 64, offset: 8512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !660, file: !281, line: 158, baseType: !115, size: 64, offset: 8576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !660, file: !281, line: 159, baseType: !115, size: 64, offset: 8640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !660, file: !281, line: 160, baseType: !115, size: 64, offset: 8704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !660, file: !281, line: 161, baseType: !25, size: 32, offset: 8768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !660, file: !281, line: 162, baseType: !25, size: 32, offset: 8800)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !660, file: !281, line: 163, baseType: !25, size: 32, offset: 8832)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !660, file: !281, line: 165, baseType: !6, size: 32, offset: 8864)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_data", scope: !660, file: !281, line: 167, baseType: !701, size: 3840, offset: 8896)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 3840, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 5)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_size", scope: !660, file: !281, line: 168, baseType: !9, size: 64, offset: 12736)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_data", scope: !660, file: !281, line: 169, baseType: !706, size: 64, offset: 12800)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_size", scope: !660, file: !281, line: 170, baseType: !9, size: 64, offset: 12864)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !660, file: !281, line: 172, baseType: !470, size: 1024, offset: 12928)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !660, file: !281, line: 173, baseType: !470, size: 1024, offset: 13952)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !660, file: !281, line: 175, baseType: !479, size: 64, offset: 14976)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "send_https_socket", scope: !588, file: !568, line: 147, baseType: !712, size: 64, offset: 2048)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_https_socket_cb", file: !568, line: 107, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !14}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp_relay", scope: !588, file: !568, line: 150, baseType: !600, size: 64, offset: 2112)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp_relay", scope: !588, file: !568, line: 151, baseType: !600, size: 64, offset: 2176)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_relay_connections", scope: !588, file: !568, line: 152, baseType: !397, size: 64, offset: 2240)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "send_socket_to_relay", scope: !588, file: !568, line: 153, baseType: !720, size: 64, offset: 2304)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_socket_to_relay_cb", file: !568, line: 105, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!6, !591, !115, !724, !14, !6, !725, !267, !6}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "MESSAGE_TO_RELAY_TYPE", file: !568, line: 76, baseType: !573)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_servers_list", scope: !588, file: !568, line: 157, baseType: !727, size: 64, offset: 2368)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_server_addrs_list_t", file: !568, line: 53, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_server_addrs_list", file: !568, line: 47, size: 256, elements: !730)
!730 = !{!731, !732, !734}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !729, file: !568, line: 48, baseType: !255, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !729, file: !568, line: 49, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !729, file: !568, line: 50, baseType: !735, size: 128, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !15, line: 60, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !15, line: 55, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !736, file: !15, line: 56, baseType: !25, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !736, file: !15, line: 57, baseType: !123, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "as_counter", scope: !588, file: !568, line: 158, baseType: !9, size: 64, offset: 2432)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tls_alternate_servers_list", scope: !588, file: !568, line: 159, baseType: !727, size: 64, offset: 2496)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tls_as_counter", scope: !588, file: !568, line: 160, baseType: !9, size: 64, offset: 2560)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aux_servers_list", scope: !588, file: !568, line: 161, baseType: !727, size: 64, offset: 2624)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "self_udp_balance", scope: !588, file: !568, line: 162, baseType: !6, size: 32, offset: 2688)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ip_whitelist", scope: !588, file: !568, line: 165, baseType: !746, size: 64, offset: 2752)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !15, line: 159, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !15, line: 154, size: 128, elements: !749)
!749 = !{!750, !765}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !748, file: !15, line: 155, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !15, line: 152, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !15, line: 146, size: 6624, elements: !754)
!754 = !{!755, !757, !759}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !753, file: !15, line: 147, baseType: !756, size: 2056)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !460)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !753, file: !15, line: 148, baseType: !758, size: 4104, offset: 2056)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 4104, elements: !449)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !753, file: !15, line: 149, baseType: !760, size: 448, offset: 6176)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !48, line: 53, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 50, size: 448, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !761, file: !48, line: 51, baseType: !47, size: 224)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !761, file: !48, line: 52, baseType: !47, size: 224, offset: 224)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !748, file: !15, line: 156, baseType: !9, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ip_blacklist", scope: !588, file: !568, line: 166, baseType: !746, size: 64, offset: 2816)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mobility", scope: !588, file: !568, line: 169, baseType: !600, size: 64, offset: 2880)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_connections_map", scope: !588, file: !568, line: 170, baseType: !397, size: 64, offset: 2944)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "server_relay", scope: !588, file: !568, line: 173, baseType: !6, size: 32, offset: 3008)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_bps_func", scope: !588, file: !568, line: 176, baseType: !771, size: 64, offset: 3072)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocate_bps_cb", file: !568, line: 109, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!479, !479, !6}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !588, file: !568, line: 179, baseType: !6, size: 32, offset: 3136)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "oauth_server_name", scope: !588, file: !568, line: 180, baseType: !12, size: 64, offset: 3200)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "acme_redirect", scope: !588, file: !568, line: 183, baseType: !12, size: 64, offset: 3264)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_default_address_family", scope: !588, file: !568, line: 186, baseType: !779, size: 32, offset: 3328)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !568, line: 84, baseType: !580)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "log_binding", scope: !588, file: !568, line: 189, baseType: !600, size: 64, offset: 3392)
!781 = !{!782, !0, !787, !792, !797, !802, !807, !813, !815}
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !784, isLocal: true, isDefinition: true)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 864, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 108)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !789, isLocal: true, isDefinition: true)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 944, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 118)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !794, isLocal: true, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 272, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 34)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !799, isLocal: true, isDefinition: true)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 25)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !3, line: 15, type: !804, isLocal: true, isDefinition: true)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1032, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 129)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "A", scope: !809, file: !3, line: 15, type: !12, isLocal: true, isDefinition: true)
!809 = distinct !DISubprogram(name: "is_acme_req", scope: !3, file: !3, line: 14, type: !810, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !551, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!6, !7, !9}
!812 = !{}
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 19, type: !512, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 72, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 9)
!820 = !{i32 7, !"Dwarf Version", i32 5}
!821 = !{i32 2, !"Debug Info Version", i32 3}
!822 = !{i32 1, !"wchar_size", i32 4}
!823 = !{i32 8, !"PIC Level", i32 2}
!824 = !{i32 7, !"PIE Level", i32 2}
!825 = !{i32 7, !"uwtable", i32 2}
!826 = !{i32 7, !"frame-pointer", i32 2}
!827 = !{!"clang version 16.0.0"}
!828 = !DILocalVariable(name: "req", arg: 1, scope: !2, file: !3, line: 46, type: !7)
!829 = !DILocation(line: 46, column: 29, scope: !2)
!830 = !DILocalVariable(name: "len", arg: 2, scope: !2, file: !3, line: 46, type: !9)
!831 = !DILocation(line: 46, column: 41, scope: !2)
!832 = !DILocalVariable(name: "url", arg: 3, scope: !2, file: !3, line: 46, type: !12)
!833 = !DILocation(line: 46, column: 58, scope: !2)
!834 = !DILocalVariable(name: "s", arg: 4, scope: !2, file: !3, line: 47, type: !14)
!835 = !DILocation(line: 47, column: 20, scope: !2)
!836 = !DILocalVariable(name: "http_response", scope: !2, file: !3, line: 52, type: !837)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !112)
!838 = !DILocation(line: 52, column: 7, scope: !2)
!839 = !DILocalVariable(name: "plen", scope: !2, file: !3, line: 53, type: !9)
!840 = !DILocation(line: 53, column: 9, scope: !2)
!841 = !DILocalVariable(name: "rlen", scope: !2, file: !3, line: 53, type: !9)
!842 = !DILocation(line: 53, column: 15, scope: !2)
!843 = !DILocation(line: 55, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !2, file: !3, line: 55, column: 6)
!845 = !DILocation(line: 55, column: 10, scope: !844)
!846 = !DILocation(line: 55, column: 18, scope: !844)
!847 = !DILocation(line: 55, column: 21, scope: !844)
!848 = !DILocation(line: 55, column: 28, scope: !844)
!849 = !DILocation(line: 55, column: 36, scope: !844)
!850 = !DILocation(line: 55, column: 39, scope: !844)
!851 = !DILocation(line: 55, column: 43, scope: !844)
!852 = !DILocation(line: 55, column: 51, scope: !844)
!853 = !DILocation(line: 55, column: 54, scope: !844)
!854 = !DILocation(line: 55, column: 56, scope: !844)
!855 = !DILocation(line: 55, column: 6, scope: !2)
!856 = !DILocation(line: 56, column: 3, scope: !844)
!857 = !DILocation(line: 57, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !2, file: !3, line: 57, column: 6)
!859 = !DILocation(line: 57, column: 10, scope: !858)
!860 = !DILocation(line: 57, column: 39, scope: !858)
!861 = !DILocation(line: 57, column: 42, scope: !858)
!862 = !DILocation(line: 57, column: 46, scope: !858)
!863 = !DILocation(line: 58, column: 4, scope: !858)
!864 = !DILocation(line: 58, column: 27, scope: !858)
!865 = !DILocation(line: 58, column: 32, scope: !858)
!866 = !DILocation(line: 58, column: 15, scope: !858)
!867 = !DILocation(line: 58, column: 13, scope: !858)
!868 = !DILocation(line: 58, column: 38, scope: !858)
!869 = !DILocation(line: 57, column: 6, scope: !2)
!870 = !DILocation(line: 59, column: 3, scope: !858)
!871 = !DILocation(line: 61, column: 2, scope: !2)
!872 = !DILocation(line: 61, column: 6, scope: !2)
!873 = !DILocation(line: 61, column: 12, scope: !2)
!874 = !DILocation(line: 63, column: 11, scope: !2)
!875 = !DILocation(line: 69, column: 20, scope: !2)
!876 = !DILocation(line: 69, column: 13, scope: !2)
!877 = !DILocation(line: 69, column: 27, scope: !2)
!878 = !DILocation(line: 69, column: 32, scope: !2)
!879 = !DILocation(line: 69, column: 36, scope: !2)
!880 = !DILocation(line: 69, column: 59, scope: !2)
!881 = !DILocation(line: 63, column: 2, scope: !2)
!882 = !DILocation(line: 71, column: 16, scope: !2)
!883 = !DILocation(line: 71, column: 9, scope: !2)
!884 = !DILocation(line: 71, column: 7, scope: !2)
!885 = !DILocation(line: 80, column: 12, scope: !886)
!886 = distinct !DILexicalBlock(scope: !2, file: !3, line: 80, column: 6)
!887 = !DILocation(line: 80, column: 15, scope: !886)
!888 = !DILocation(line: 80, column: 19, scope: !886)
!889 = !DILocation(line: 80, column: 34, scope: !886)
!890 = !DILocation(line: 80, column: 6, scope: !886)
!891 = !DILocation(line: 80, column: 40, scope: !886)
!892 = !DILocation(line: 80, column: 6, scope: !2)
!893 = !DILocation(line: 82, column: 40, scope: !894)
!894 = distinct !DILexicalBlock(scope: !886, file: !3, line: 80, column: 47)
!895 = !DILocation(line: 82, column: 45, scope: !894)
!896 = !DILocation(line: 82, column: 49, scope: !894)
!897 = !DILocation(line: 81, column: 3, scope: !894)
!898 = !DILocation(line: 83, column: 2, scope: !894)
!899 = !DILocation(line: 83, column: 33, scope: !900)
!900 = distinct !DILexicalBlock(scope: !886, file: !3, line: 83, column: 13)
!901 = !DILocation(line: 83, column: 36, scope: !900)
!902 = !DILocation(line: 83, column: 45, scope: !900)
!903 = !DILocation(line: 83, column: 54, scope: !900)
!904 = !DILocation(line: 83, column: 13, scope: !900)
!905 = !DILocation(line: 83, column: 13, scope: !886)
!906 = !DILocation(line: 85, column: 4, scope: !907)
!907 = distinct !DILexicalBlock(scope: !900, file: !3, line: 83, column: 63)
!908 = !DILocation(line: 85, column: 9, scope: !907)
!909 = !DILocation(line: 85, column: 13, scope: !907)
!910 = !DILocation(line: 84, column: 3, scope: !907)
!911 = !DILocation(line: 86, column: 2, scope: !907)
!912 = !DILocation(line: 89, column: 2, scope: !2)
!913 = !DILocation(line: 89, column: 6, scope: !2)
!914 = !DILocation(line: 89, column: 12, scope: !2)
!915 = !DILocation(line: 91, column: 2, scope: !2)
!916 = !DILocation(line: 92, column: 1, scope: !2)
!917 = !DILocalVariable(name: "req", arg: 1, scope: !809, file: !3, line: 14, type: !7)
!918 = !DILocation(line: 14, column: 30, scope: !809)
!919 = !DILocalVariable(name: "len", arg: 2, scope: !809, file: !3, line: 14, type: !9)
!920 = !DILocation(line: 14, column: 42, scope: !809)
!921 = !DILocalVariable(name: "c", scope: !809, file: !3, line: 16, type: !6)
!922 = !DILocation(line: 16, column: 6, scope: !809)
!923 = !DILocalVariable(name: "i", scope: !809, file: !3, line: 16, type: !6)
!924 = !DILocation(line: 16, column: 9, scope: !809)
!925 = !DILocalVariable(name: "k", scope: !809, file: !3, line: 16, type: !6)
!926 = !DILocation(line: 16, column: 12, scope: !809)
!927 = !DILocation(line: 19, column: 14, scope: !928)
!928 = distinct !DILexicalBlock(scope: !809, file: !3, line: 19, column: 6)
!929 = !DILocation(line: 19, column: 6, scope: !928)
!930 = !DILocation(line: 19, column: 6, scope: !809)
!931 = !DILocation(line: 20, column: 3, scope: !928)
!932 = !DILocation(line: 24, column: 6, scope: !809)
!933 = !DILocation(line: 25, column: 6, scope: !934)
!934 = distinct !DILexicalBlock(scope: !809, file: !3, line: 25, column: 6)
!935 = !DILocation(line: 25, column: 10, scope: !934)
!936 = !DILocation(line: 25, column: 6, scope: !809)
!937 = !DILocation(line: 26, column: 7, scope: !934)
!938 = !DILocation(line: 26, column: 3, scope: !934)
!939 = !DILocation(line: 27, column: 8, scope: !940)
!940 = distinct !DILexicalBlock(scope: !809, file: !3, line: 27, column: 2)
!941 = !DILocation(line: 27, column: 7, scope: !940)
!942 = !DILocation(line: 27, column: 30, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !3, line: 27, column: 2)
!944 = !DILocation(line: 27, column: 40, scope: !943)
!945 = !DILocation(line: 27, column: 34, scope: !943)
!946 = !DILocation(line: 27, column: 32, scope: !943)
!947 = !DILocation(line: 27, column: 2, scope: !940)
!948 = !DILocation(line: 29, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 29, column: 7)
!950 = distinct !DILexicalBlock(scope: !943, file: !3, line: 27, column: 50)
!951 = !DILocation(line: 29, column: 11, scope: !949)
!952 = !DILocation(line: 29, column: 14, scope: !949)
!953 = !DILocation(line: 29, column: 7, scope: !950)
!954 = !DILocation(line: 30, column: 4, scope: !949)
!955 = !DILocation(line: 32, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !950, file: !3, line: 32, column: 7)
!957 = !DILocation(line: 32, column: 9, scope: !956)
!958 = !DILocation(line: 32, column: 38, scope: !956)
!959 = !DILocation(line: 32, column: 49, scope: !956)
!960 = !DILocation(line: 32, column: 55, scope: !956)
!961 = !DILocation(line: 32, column: 53, scope: !956)
!962 = !DILocation(line: 32, column: 41, scope: !956)
!963 = !DILocation(line: 32, column: 7, scope: !950)
!964 = !DILocation(line: 33, column: 4, scope: !956)
!965 = !DILocation(line: 35, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !950, file: !3, line: 35, column: 3)
!967 = !DILocation(line: 35, column: 8, scope: !966)
!968 = !DILocation(line: 35, column: 31, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !3, line: 35, column: 3)
!970 = !DILocation(line: 35, column: 35, scope: !969)
!971 = !DILocation(line: 35, column: 33, scope: !969)
!972 = !DILocation(line: 35, column: 3, scope: !966)
!973 = !DILocation(line: 36, column: 8, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !3, line: 35, column: 43)
!975 = !DILocation(line: 36, column: 12, scope: !974)
!976 = !DILocation(line: 36, column: 6, scope: !974)
!977 = !DILocation(line: 37, column: 9, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !3, line: 37, column: 8)
!979 = !DILocation(line: 37, column: 11, scope: !978)
!980 = !DILocation(line: 37, column: 18, scope: !978)
!981 = !DILocation(line: 37, column: 22, scope: !978)
!982 = !DILocation(line: 37, column: 24, scope: !978)
!983 = !DILocation(line: 37, column: 27, scope: !978)
!984 = !DILocation(line: 37, column: 8, scope: !974)
!985 = !DILocation(line: 38, column: 5, scope: !978)
!986 = !DILocation(line: 39, column: 3, scope: !974)
!987 = !DILocation(line: 35, column: 39, scope: !969)
!988 = !DILocation(line: 35, column: 3, scope: !969)
!989 = distinct !{!989, !972, !990, !991}
!990 = !DILocation(line: 39, column: 3, scope: !966)
!991 = !{!"llvm.loop.mustprogress"}
!992 = !DILocation(line: 41, column: 10, scope: !950)
!993 = !DILocation(line: 41, column: 3, scope: !950)
!994 = !DILocation(line: 27, column: 46, scope: !943)
!995 = !DILocation(line: 27, column: 2, scope: !943)
!996 = distinct !{!996, !947, !997, !991}
!997 = !DILocation(line: 42, column: 2, scope: !940)
!998 = !DILocation(line: 43, column: 2, scope: !809)
!999 = !DILocation(line: 44, column: 1, scope: !809)
