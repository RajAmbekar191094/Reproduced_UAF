; ModuleID = './src/core/symbol.c'
source_filename = "./src/core/symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_value_name = type { i32, ptr }

@SYM_VALUE_NAMES_LEN = dso_local constant i32 62, align 4, !dbg !0
@sym_value_names = internal constant [62 x %struct.sym_value_name] [%struct.sym_value_name { i32 0, ptr @.str }, %struct.sym_value_name { i32 0, ptr @.str.1 }, %struct.sym_value_name { i32 0, ptr @.str.2 }, %struct.sym_value_name { i32 1, ptr @.str.3 }, %struct.sym_value_name { i32 2, ptr @.str.4 }, %struct.sym_value_name { i32 -1, ptr @.str.5 }, %struct.sym_value_name { i32 -2, ptr @.str.6 }, %struct.sym_value_name { i32 -3, ptr @.str.7 }, %struct.sym_value_name { i32 16, ptr @.str.8 }, %struct.sym_value_name { i32 32, ptr @.str.9 }, %struct.sym_value_name { i32 33, ptr @.str.10 }, %struct.sym_value_name { i32 49, ptr @.str.11 }, %struct.sym_value_name { i32 48, ptr @.str.12 }, %struct.sym_value_name { i32 80, ptr @.str.13 }, %struct.sym_value_name { i32 81, ptr @.str.14 }, %struct.sym_value_name { i32 96, ptr @.str.15 }, %struct.sym_value_name { i32 97, ptr @.str.16 }, %struct.sym_value_name { i32 112, ptr @.str.17 }, %struct.sym_value_name { i32 128, ptr @.str.18 }, %struct.sym_value_name { i32 0, ptr @.str.19 }, %struct.sym_value_name { i32 1, ptr @.str.20 }, %struct.sym_value_name { i32 2, ptr @.str.21 }, %struct.sym_value_name { i32 3, ptr @.str.22 }, %struct.sym_value_name { i32 4, ptr @.str.23 }, %struct.sym_value_name { i32 5, ptr @.str.24 }, %struct.sym_value_name { i32 6, ptr @.str.25 }, %struct.sym_value_name { i32 7, ptr @.str.26 }, %struct.sym_value_name { i32 8, ptr @.str.27 }, %struct.sym_value_name { i32 10, ptr @.str.28 }, %struct.sym_value_name { i32 11, ptr @.str.29 }, %struct.sym_value_name { i32 12, ptr @.str.30 }, %struct.sym_value_name { i32 13, ptr @.str.31 }, %struct.sym_value_name { i32 1, ptr @.str.32 }, %struct.sym_value_name { i32 2, ptr @.str.33 }, %struct.sym_value_name { i32 1, ptr @.str.34 }, %struct.sym_value_name { i32 1, ptr @.str.35 }, %struct.sym_value_name { i32 1, ptr @.str.36 }, %struct.sym_value_name { i32 1, ptr @.str.37 }, %struct.sym_value_name { i32 98, ptr @.str.38 }, %struct.sym_value_name { i32 99, ptr @.str.39 }, %struct.sym_value_name { i32 97, ptr @.str.40 }, %struct.sym_value_name { i32 11, ptr @.str.41 }, %struct.sym_value_name { i32 9, ptr @.str.42 }, %struct.sym_value_name { i32 111, ptr @.str.43 }, %struct.sym_value_name { i32 14, ptr @.str.44 }, %struct.sym_value_name { i32 156384766, ptr @.str.45 }, %struct.sym_value_name { i32 115, ptr @.str.46 }, %struct.sym_value_name { i32 4, ptr @.str.47 }, %struct.sym_value_name { i32 22, ptr @.str.48 }, %struct.sym_value_name { i32 24, ptr @.str.49 }, %struct.sym_value_name { i32 36, ptr @.str.50 }, %struct.sym_value_name { i32 100, ptr @.str.51 }, %struct.sym_value_name { i32 105, ptr @.str.52 }, %struct.sym_value_name { i32 19, ptr @.str.53 }, %struct.sym_value_name { i32 12, ptr @.str.54 }, %struct.sym_value_name { i32 92, ptr @.str.55 }, %struct.sym_value_name { i32 88, ptr @.str.56 }, %struct.sym_value_name { i32 95, ptr @.str.57 }, %struct.sym_value_name { i32 71, ptr @.str.58 }, %struct.sym_value_name { i32 93, ptr @.str.59 }, %struct.sym_value_name { i32 156384765, ptr @.str.60 }, %struct.sym_value_name { i32 110, ptr @.str.61 }], align 16, !dbg !182
@.str = private unnamed_addr constant [19 x i8] c"NN_VERSION_CURRENT\00", align 1, !dbg !5
@.str.1 = private unnamed_addr constant [20 x i8] c"NN_VERSION_REVISION\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [15 x i8] c"NN_VERSION_AGE\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [6 x i8] c"AF_SP\00", align 1, !dbg !22
@.str.4 = private unnamed_addr constant [10 x i8] c"AF_SP_RAW\00", align 1, !dbg !27
@.str.5 = private unnamed_addr constant [10 x i8] c"NN_INPROC\00", align 1, !dbg !32
@.str.6 = private unnamed_addr constant [7 x i8] c"NN_IPC\00", align 1, !dbg !34
@.str.7 = private unnamed_addr constant [7 x i8] c"NN_TCP\00", align 1, !dbg !39
@.str.8 = private unnamed_addr constant [8 x i8] c"NN_PAIR\00", align 1, !dbg !41
@.str.9 = private unnamed_addr constant [7 x i8] c"NN_PUB\00", align 1, !dbg !46
@.str.10 = private unnamed_addr constant [7 x i8] c"NN_SUB\00", align 1, !dbg !48
@.str.11 = private unnamed_addr constant [7 x i8] c"NN_REP\00", align 1, !dbg !50
@.str.12 = private unnamed_addr constant [7 x i8] c"NN_REQ\00", align 1, !dbg !52
@.str.13 = private unnamed_addr constant [8 x i8] c"NN_PUSH\00", align 1, !dbg !54
@.str.14 = private unnamed_addr constant [8 x i8] c"NN_PULL\00", align 1, !dbg !56
@.str.15 = private unnamed_addr constant [12 x i8] c"NN_SURVEYOR\00", align 1, !dbg !58
@.str.16 = private unnamed_addr constant [14 x i8] c"NN_RESPONDENT\00", align 1, !dbg !63
@.str.17 = private unnamed_addr constant [7 x i8] c"NN_BUS\00", align 1, !dbg !68
@.str.18 = private unnamed_addr constant [16 x i8] c"NN_SOCKADDR_MAX\00", align 1, !dbg !70
@.str.19 = private unnamed_addr constant [14 x i8] c"NN_SOL_SOCKET\00", align 1, !dbg !75
@.str.20 = private unnamed_addr constant [10 x i8] c"NN_LINGER\00", align 1, !dbg !77
@.str.21 = private unnamed_addr constant [10 x i8] c"NN_SNDBUF\00", align 1, !dbg !79
@.str.22 = private unnamed_addr constant [10 x i8] c"NN_RCVBUF\00", align 1, !dbg !81
@.str.23 = private unnamed_addr constant [12 x i8] c"NN_SNDTIMEO\00", align 1, !dbg !83
@.str.24 = private unnamed_addr constant [12 x i8] c"NN_RCVTIMEO\00", align 1, !dbg !85
@.str.25 = private unnamed_addr constant [17 x i8] c"NN_RECONNECT_IVL\00", align 1, !dbg !87
@.str.26 = private unnamed_addr constant [21 x i8] c"NN_RECONNECT_IVL_MAX\00", align 1, !dbg !92
@.str.27 = private unnamed_addr constant [11 x i8] c"NN_SNDPRIO\00", align 1, !dbg !97
@.str.28 = private unnamed_addr constant [9 x i8] c"NN_SNDFD\00", align 1, !dbg !102
@.str.29 = private unnamed_addr constant [9 x i8] c"NN_RCVFD\00", align 1, !dbg !107
@.str.30 = private unnamed_addr constant [10 x i8] c"NN_DOMAIN\00", align 1, !dbg !109
@.str.31 = private unnamed_addr constant [12 x i8] c"NN_PROTOCOL\00", align 1, !dbg !111
@.str.32 = private unnamed_addr constant [17 x i8] c"NN_SUB_SUBSCRIBE\00", align 1, !dbg !113
@.str.33 = private unnamed_addr constant [19 x i8] c"NN_SUB_UNSUBSCRIBE\00", align 1, !dbg !115
@.str.34 = private unnamed_addr constant [18 x i8] c"NN_REQ_RESEND_IVL\00", align 1, !dbg !117
@.str.35 = private unnamed_addr constant [21 x i8] c"NN_SURVEYOR_DEADLINE\00", align 1, !dbg !122
@.str.36 = private unnamed_addr constant [15 x i8] c"NN_TCP_NODELAY\00", align 1, !dbg !124
@.str.37 = private unnamed_addr constant [12 x i8] c"NN_DONTWAIT\00", align 1, !dbg !126
@.str.38 = private unnamed_addr constant [11 x i8] c"EADDRINUSE\00", align 1, !dbg !128
@.str.39 = private unnamed_addr constant [14 x i8] c"EADDRNOTAVAIL\00", align 1, !dbg !130
@.str.40 = private unnamed_addr constant [13 x i8] c"EAFNOSUPPORT\00", align 1, !dbg !132
@.str.41 = private unnamed_addr constant [7 x i8] c"EAGAIN\00", align 1, !dbg !137
@.str.42 = private unnamed_addr constant [6 x i8] c"EBADF\00", align 1, !dbg !139
@.str.43 = private unnamed_addr constant [13 x i8] c"ECONNREFUSED\00", align 1, !dbg !141
@.str.44 = private unnamed_addr constant [7 x i8] c"EFAULT\00", align 1, !dbg !143
@.str.45 = private unnamed_addr constant [5 x i8] c"EFSM\00", align 1, !dbg !145
@.str.46 = private unnamed_addr constant [12 x i8] c"EINPROGRESS\00", align 1, !dbg !150
@.str.47 = private unnamed_addr constant [6 x i8] c"EINTR\00", align 1, !dbg !152
@.str.48 = private unnamed_addr constant [7 x i8] c"EINVAL\00", align 1, !dbg !154
@.str.49 = private unnamed_addr constant [7 x i8] c"EMFILE\00", align 1, !dbg !156
@.str.50 = private unnamed_addr constant [13 x i8] c"ENAMETOOLONG\00", align 1, !dbg !158
@.str.51 = private unnamed_addr constant [9 x i8] c"ENETDOWN\00", align 1, !dbg !160
@.str.52 = private unnamed_addr constant [8 x i8] c"ENOBUFS\00", align 1, !dbg !162
@.str.53 = private unnamed_addr constant [7 x i8] c"ENODEV\00", align 1, !dbg !164
@.str.54 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1, !dbg !166
@.str.55 = private unnamed_addr constant [12 x i8] c"ENOPROTOOPT\00", align 1, !dbg !168
@.str.56 = private unnamed_addr constant [9 x i8] c"ENOTSOCK\00", align 1, !dbg !170
@.str.57 = private unnamed_addr constant [8 x i8] c"ENOTSUP\00", align 1, !dbg !172
@.str.58 = private unnamed_addr constant [7 x i8] c"EPROTO\00", align 1, !dbg !174
@.str.59 = private unnamed_addr constant [16 x i8] c"EPROTONOSUPPORT\00", align 1, !dbg !176
@.str.60 = private unnamed_addr constant [6 x i8] c"ETERM\00", align 1, !dbg !178
@.str.61 = private unnamed_addr constant [10 x i8] c"ETIMEDOUT\00", align 1, !dbg !180

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_symbol(i32 noundef %0, ptr noundef %1) #0 !dbg !204 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !209, metadata !DIExpression()), !dbg !210
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata ptr %6, metadata !213, metadata !DIExpression()), !dbg !215
  %7 = load i32, ptr %4, align 4, !dbg !216
  %8 = icmp slt i32 %7, 0, !dbg !218
  br i1 %8, label %12, label %9, !dbg !219

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4, !dbg !220
  %11 = icmp sge i32 %10, 62, !dbg !221
  br i1 %11, label %12, label %14, !dbg !222

12:                                               ; preds = %9, %2
  %13 = call ptr @__errno_location() #3, !dbg !223
  store i32 22, ptr %13, align 4, !dbg !225
  store ptr null, ptr %3, align 8, !dbg !226
  br label %29, !dbg !226

14:                                               ; preds = %9
  %15 = load i32, ptr %4, align 4, !dbg !227
  %16 = sext i32 %15 to i64, !dbg !228
  %17 = getelementptr inbounds [62 x %struct.sym_value_name], ptr @sym_value_names, i64 0, i64 %16, !dbg !228
  store ptr %17, ptr %6, align 8, !dbg !229
  %18 = load ptr, ptr %5, align 8, !dbg !230
  %19 = icmp ne ptr %18, null, !dbg !230
  br i1 %19, label %20, label %25, !dbg !232

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 8, !dbg !233
  %22 = getelementptr inbounds %struct.sym_value_name, ptr %21, i32 0, i32 0, !dbg !234
  %23 = load i32, ptr %22, align 8, !dbg !234
  %24 = load ptr, ptr %5, align 8, !dbg !235
  store i32 %23, ptr %24, align 4, !dbg !236
  br label %25, !dbg !237

25:                                               ; preds = %20, %14
  %26 = load ptr, ptr %6, align 8, !dbg !238
  %27 = getelementptr inbounds %struct.sym_value_name, ptr %26, i32 0, i32 1, !dbg !239
  %28 = load ptr, ptr %27, align 8, !dbg !239
  store ptr %28, ptr %3, align 8, !dbg !240
  br label %29, !dbg !240

29:                                               ; preds = %25, %12
  %30 = load ptr, ptr %3, align 8, !dbg !241
  ret ptr %30, !dbg !241
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "SYM_VALUE_NAMES_LEN", scope: !2, file: !7, line: 127, type: !195, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/core/symbol.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "9a6e0ab0686de0211291bdf60a330ac0")
!4 = !{!0, !5, !12, !17, !22, !27, !32, !34, !39, !41, !46, !48, !50, !52, !54, !56, !58, !63, !68, !70, !75, !77, !79, !81, !83, !85, !87, !92, !97, !102, !107, !109, !111, !113, !115, !117, !122, !124, !126, !128, !130, !132, !137, !139, !141, !143, !145, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(scope: null, file: !7, line: 44, type: !8, isLocal: true, isDefinition: true)
!7 = !DIFile(filename: "./src/core/symbol.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "9a6e0ab0686de0211291bdf60a330ac0")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 152, elements: !10)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DISubrange(count: 19)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !7, line: 45, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 20)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !7, line: 46, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 120, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 15)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !7, line: 48, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 48, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 6)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !7, line: 49, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 80, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 10)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !7, line: 51, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !7, line: 52, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 56, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 7)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !7, line: 53, type: !36, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !7, line: 55, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 8)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !7, line: 56, type: !36, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !7, line: 57, type: !36, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !7, line: 58, type: !36, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !7, line: 59, type: !36, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !7, line: 60, type: !43, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !7, line: 61, type: !43, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !7, line: 62, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 12)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !7, line: 63, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 112, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 14)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !7, line: 64, type: !36, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !7, line: 66, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 16)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !7, line: 68, type: !65, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !7, line: 70, type: !29, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !7, line: 71, type: !29, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !7, line: 72, type: !29, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !7, line: 73, type: !60, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !7, line: 74, type: !60, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !7, line: 75, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 136, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 17)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !7, line: 76, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 168, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 21)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !7, line: 77, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 88, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 11)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !7, line: 78, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 72, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 9)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !7, line: 79, type: !104, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !7, line: 80, type: !29, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !7, line: 81, type: !60, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !7, line: 83, type: !89, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !7, line: 84, type: !8, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !7, line: 85, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 144, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 18)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !7, line: 86, type: !94, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !7, line: 87, type: !19, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !7, line: 89, type: !60, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !7, line: 91, type: !99, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !7, line: 92, type: !65, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !7, line: 93, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 104, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 13)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !7, line: 94, type: !36, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !7, line: 95, type: !24, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !7, line: 96, type: !134, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !7, line: 97, type: !36, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !7, line: 98, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 40, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 5)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !7, line: 99, type: !60, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !7, line: 100, type: !24, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !7, line: 101, type: !36, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !7, line: 102, type: !36, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !7, line: 103, type: !134, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !7, line: 104, type: !104, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !7, line: 105, type: !43, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !7, line: 106, type: !36, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !7, line: 107, type: !36, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !7, line: 108, type: !60, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !7, line: 109, type: !104, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !7, line: 110, type: !43, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !7, line: 111, type: !36, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !7, line: 112, type: !72, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !7, line: 113, type: !24, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !7, line: 114, type: !29, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "sym_value_names", scope: !2, file: !7, line: 42, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 7936, elements: !193)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sym_value_name", file: !7, line: 37, size: 128, elements: !187)
!187 = !{!188, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !186, file: !7, line: 38, baseType: !189, size: 32)
!189 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !7, line: 39, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!193 = !{!194}
!194 = !DISubrange(count: 62)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!196 = !{i32 7, !"Dwarf Version", i32 5}
!197 = !{i32 2, !"Debug Info Version", i32 3}
!198 = !{i32 1, !"wchar_size", i32 4}
!199 = !{i32 8, !"PIC Level", i32 2}
!200 = !{i32 7, !"PIE Level", i32 2}
!201 = !{i32 7, !"uwtable", i32 2}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 16.0.0"}
!204 = distinct !DISubprogram(name: "nn_symbol", scope: !7, file: !7, line: 130, type: !205, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !208)
!205 = !DISubroutineType(types: !206)
!206 = !{!191, !189, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!208 = !{}
!209 = !DILocalVariable(name: "i", arg: 1, scope: !204, file: !7, line: 130, type: !189)
!210 = !DILocation(line: 130, column: 28, scope: !204)
!211 = !DILocalVariable(name: "value", arg: 2, scope: !204, file: !7, line: 130, type: !207)
!212 = !DILocation(line: 130, column: 36, scope: !204)
!213 = !DILocalVariable(name: "svn", scope: !204, file: !7, line: 132, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!215 = !DILocation(line: 132, column: 34, scope: !204)
!216 = !DILocation(line: 133, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !204, file: !7, line: 133, column: 9)
!218 = !DILocation(line: 133, column: 11, scope: !217)
!219 = !DILocation(line: 133, column: 15, scope: !217)
!220 = !DILocation(line: 133, column: 18, scope: !217)
!221 = !DILocation(line: 133, column: 20, scope: !217)
!222 = !DILocation(line: 133, column: 9, scope: !204)
!223 = !DILocation(line: 134, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !217, file: !7, line: 133, column: 44)
!225 = !DILocation(line: 134, column: 15, scope: !224)
!226 = !DILocation(line: 135, column: 9, scope: !224)
!227 = !DILocation(line: 138, column: 29, scope: !204)
!228 = !DILocation(line: 138, column: 12, scope: !204)
!229 = !DILocation(line: 138, column: 9, scope: !204)
!230 = !DILocation(line: 139, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !204, file: !7, line: 139, column: 9)
!232 = !DILocation(line: 139, column: 9, scope: !204)
!233 = !DILocation(line: 140, column: 18, scope: !231)
!234 = !DILocation(line: 140, column: 23, scope: !231)
!235 = !DILocation(line: 140, column: 10, scope: !231)
!236 = !DILocation(line: 140, column: 16, scope: !231)
!237 = !DILocation(line: 140, column: 9, scope: !231)
!238 = !DILocation(line: 141, column: 12, scope: !204)
!239 = !DILocation(line: 141, column: 17, scope: !204)
!240 = !DILocation(line: 141, column: 5, scope: !204)
!241 = !DILocation(line: 142, column: 1, scope: !204)
