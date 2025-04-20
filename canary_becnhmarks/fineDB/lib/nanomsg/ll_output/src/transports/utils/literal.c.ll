; ModuleID = './src/transports/utils/literal.c'
source_filename = "./src/transports/utils/literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"./src/transports/utils/literal.c\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_literal_resolve(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !77 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca [46 x i8], align 16
  %14 = alloca %struct.in_addr, align 4
  %15 = alloca %struct.in6_addr, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !97, metadata !DIExpression()), !dbg !98
  store i64 %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !101, metadata !DIExpression()), !dbg !102
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !103, metadata !DIExpression()), !dbg !104
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata ptr %12, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata ptr %13, metadata !109, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata ptr %14, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata ptr %15, metadata !116, metadata !DIExpression()), !dbg !117
  %16 = load i64, ptr %8, align 8, !dbg !118
  %17 = icmp ugt i64 %16, 0, !dbg !120
  br i1 %17, label %18, label %48, !dbg !121

18:                                               ; preds = %5
  %19 = load ptr, ptr %7, align 8, !dbg !122
  %20 = getelementptr inbounds i8, ptr %19, i64 0, !dbg !122
  %21 = load i8, ptr %20, align 1, !dbg !122
  %22 = sext i8 %21 to i32, !dbg !122
  %23 = icmp eq i32 %22, 91, !dbg !123
  br i1 %23, label %24, label %48, !dbg !124

24:                                               ; preds = %18
  %25 = load ptr, ptr %7, align 8, !dbg !125
  %26 = load i64, ptr %8, align 8, !dbg !128
  %27 = sub i64 %26, 1, !dbg !129
  %28 = getelementptr inbounds i8, ptr %25, i64 %27, !dbg !125
  %29 = load i8, ptr %28, align 1, !dbg !125
  %30 = sext i8 %29 to i32, !dbg !125
  %31 = icmp ne i32 %30, 93, !dbg !130
  br i1 %31, label %32, label %33, !dbg !131

32:                                               ; preds = %24
  store i32 -22, ptr %6, align 4, !dbg !132
  br label %136, !dbg !132

33:                                               ; preds = %24
  %34 = load i64, ptr %8, align 8, !dbg !133
  %35 = sub i64 %34, 2, !dbg !135
  %36 = add i64 %35, 1, !dbg !136
  %37 = icmp ugt i64 %36, 46, !dbg !137
  br i1 %37, label %38, label %39, !dbg !138

38:                                               ; preds = %33
  store i32 -22, ptr %6, align 4, !dbg !139
  br label %136, !dbg !139

39:                                               ; preds = %33
  %40 = getelementptr inbounds [46 x i8], ptr %13, i64 0, i64 0, !dbg !140
  %41 = load ptr, ptr %7, align 8, !dbg !141
  %42 = getelementptr inbounds i8, ptr %41, i64 1, !dbg !142
  %43 = load i64, ptr %8, align 8, !dbg !143
  %44 = sub i64 %43, 2, !dbg !144
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %40, ptr align 1 %42, i64 %44, i1 false), !dbg !140
  %45 = load i64, ptr %8, align 8, !dbg !145
  %46 = sub i64 %45, 2, !dbg !146
  %47 = getelementptr inbounds [46 x i8], ptr %13, i64 0, i64 %46, !dbg !147
  store i8 0, ptr %47, align 1, !dbg !148
  br label %59, !dbg !149

48:                                               ; preds = %18, %5
  %49 = load i64, ptr %8, align 8, !dbg !150
  %50 = add i64 %49, 1, !dbg !153
  %51 = icmp ugt i64 %50, 46, !dbg !154
  br i1 %51, label %52, label %53, !dbg !155

52:                                               ; preds = %48
  store i32 -22, ptr %6, align 4, !dbg !156
  br label %136, !dbg !156

53:                                               ; preds = %48
  %54 = getelementptr inbounds [46 x i8], ptr %13, i64 0, i64 0, !dbg !157
  %55 = load ptr, ptr %7, align 8, !dbg !158
  %56 = load i64, ptr %8, align 8, !dbg !159
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %54, ptr align 1 %55, i64 %56, i1 false), !dbg !157
  %57 = load i64, ptr %8, align 8, !dbg !160
  %58 = getelementptr inbounds [46 x i8], ptr %13, i64 0, i64 %57, !dbg !161
  store i8 0, ptr %58, align 1, !dbg !162
  br label %59

59:                                               ; preds = %53, %39
  %60 = load i32, ptr %9, align 4, !dbg !163
  %61 = icmp ne i32 %60, 0, !dbg !163
  br i1 %61, label %99, label %62, !dbg !165

62:                                               ; preds = %59
  %63 = getelementptr inbounds [46 x i8], ptr %13, i64 0, i64 0, !dbg !166
  %64 = call i32 @inet_pton(i32 noundef 10, ptr noundef %63, ptr noundef %15) #7, !dbg !168
  store i32 %64, ptr %12, align 4, !dbg !169
  %65 = load i32, ptr %12, align 4, !dbg !170
  %66 = icmp eq i32 %65, 1, !dbg !172
  br i1 %66, label %67, label %81, !dbg !173

67:                                               ; preds = %62
  %68 = load ptr, ptr %10, align 8, !dbg !174
  %69 = icmp ne ptr %68, null, !dbg !174
  br i1 %69, label %70, label %75, !dbg !177

70:                                               ; preds = %67
  %71 = load ptr, ptr %10, align 8, !dbg !178
  %72 = getelementptr inbounds %struct.sockaddr_storage, ptr %71, i32 0, i32 0, !dbg !180
  store i16 10, ptr %72, align 8, !dbg !181
  %73 = load ptr, ptr %10, align 8, !dbg !182
  %74 = getelementptr inbounds %struct.sockaddr_in6, ptr %73, i32 0, i32 3, !dbg !183
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %74, ptr align 4 %15, i64 16, i1 false), !dbg !184
  br label %75, !dbg !185

75:                                               ; preds = %70, %67
  %76 = load ptr, ptr %11, align 8, !dbg !186
  %77 = icmp ne ptr %76, null, !dbg !186
  br i1 %77, label %78, label %80, !dbg !188

78:                                               ; preds = %75
  %79 = load ptr, ptr %11, align 8, !dbg !189
  store i64 28, ptr %79, align 8, !dbg !190
  br label %80, !dbg !191

80:                                               ; preds = %78, %75
  store i32 0, ptr %6, align 4, !dbg !192
  br label %136, !dbg !192

81:                                               ; preds = %62
  br label %82, !dbg !193

82:                                               ; preds = %81
  %83 = load i32, ptr %12, align 4, !dbg !194
  %84 = icmp eq i32 %83, 0, !dbg !194
  %85 = xor i1 %84, true, !dbg !194
  %86 = zext i1 %85 to i32, !dbg !194
  %87 = sext i32 %86 to i64, !dbg !194
  %88 = icmp ne i64 %87, 0, !dbg !194
  br i1 %88, label %89, label %97, !dbg !197

89:                                               ; preds = %82
  %90 = load ptr, ptr @stderr, align 8, !dbg !198
  %91 = call ptr @__errno_location() #8, !dbg !198
  %92 = load i32, ptr %91, align 4, !dbg !198
  %93 = call ptr @nn_err_strerror(i32 noundef %92), !dbg !198
  %94 = call ptr @__errno_location() #8, !dbg !198
  %95 = load i32, ptr %94, align 4, !dbg !198
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef @.str, ptr noundef %93, i32 noundef %95, ptr noundef @.str.1, i32 noundef 73), !dbg !198
  call void @nn_err_abort() #9, !dbg !198
  unreachable, !dbg !198

97:                                               ; preds = %82
  br label %98, !dbg !197

98:                                               ; preds = %97
  br label %99, !dbg !200

99:                                               ; preds = %98, %59
  %100 = getelementptr inbounds [46 x i8], ptr %13, i64 0, i64 0, !dbg !201
  %101 = call i32 @inet_pton(i32 noundef 2, ptr noundef %100, ptr noundef %14) #7, !dbg !202
  store i32 %101, ptr %12, align 4, !dbg !203
  %102 = load i32, ptr %12, align 4, !dbg !204
  %103 = icmp eq i32 %102, 1, !dbg !206
  br i1 %103, label %104, label %118, !dbg !207

104:                                              ; preds = %99
  %105 = load ptr, ptr %10, align 8, !dbg !208
  %106 = icmp ne ptr %105, null, !dbg !208
  br i1 %106, label %107, label %112, !dbg !211

107:                                              ; preds = %104
  %108 = load ptr, ptr %10, align 8, !dbg !212
  %109 = getelementptr inbounds %struct.sockaddr_storage, ptr %108, i32 0, i32 0, !dbg !214
  store i16 2, ptr %109, align 8, !dbg !215
  %110 = load ptr, ptr %10, align 8, !dbg !216
  %111 = getelementptr inbounds %struct.sockaddr_in, ptr %110, i32 0, i32 2, !dbg !217
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %111, ptr align 4 %14, i64 4, i1 false), !dbg !218
  br label %112, !dbg !219

112:                                              ; preds = %107, %104
  %113 = load ptr, ptr %11, align 8, !dbg !220
  %114 = icmp ne ptr %113, null, !dbg !220
  br i1 %114, label %115, label %117, !dbg !222

115:                                              ; preds = %112
  %116 = load ptr, ptr %11, align 8, !dbg !223
  store i64 16, ptr %116, align 8, !dbg !224
  br label %117, !dbg !225

117:                                              ; preds = %115, %112
  store i32 0, ptr %6, align 4, !dbg !226
  br label %136, !dbg !226

118:                                              ; preds = %99
  br label %119, !dbg !227

119:                                              ; preds = %118
  %120 = load i32, ptr %12, align 4, !dbg !228
  %121 = icmp eq i32 %120, 0, !dbg !228
  %122 = xor i1 %121, true, !dbg !228
  %123 = zext i1 %122 to i32, !dbg !228
  %124 = sext i32 %123 to i64, !dbg !228
  %125 = icmp ne i64 %124, 0, !dbg !228
  br i1 %125, label %126, label %134, !dbg !231

126:                                              ; preds = %119
  %127 = load ptr, ptr @stderr, align 8, !dbg !232
  %128 = call ptr @__errno_location() #8, !dbg !232
  %129 = load i32, ptr %128, align 4, !dbg !232
  %130 = call ptr @nn_err_strerror(i32 noundef %129), !dbg !232
  %131 = call ptr @__errno_location() #8, !dbg !232
  %132 = load i32, ptr %131, align 4, !dbg !232
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str, ptr noundef %130, i32 noundef %132, ptr noundef @.str.1, i32 noundef 87), !dbg !232
  call void @nn_err_abort() #9, !dbg !232
  unreachable, !dbg !232

134:                                              ; preds = %119
  br label %135, !dbg !231

135:                                              ; preds = %134
  store i32 -22, ptr %6, align 4, !dbg !234
  br label %136, !dbg !234

136:                                              ; preds = %135, %117, %80, %52, %38, %32
  %137 = load i32, ptr %6, align 4, !dbg !235
  ret i32 %137, !dbg !235
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

declare ptr @nn_err_strerror(i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: noreturn
declare void @nn_err_abort() #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/utils/literal.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cdc6a8f0f937d2fa4565915c49658af7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !68, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "src/transports/utils/literal.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cdc6a8f0f937d2fa4565915c49658af7")
!14 = !{!15, !55, !56}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !17, line: 260, size: 224, elements: !18)
!17 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!18 = !{!19, !23, !29, !33, !54}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !16, file: !17, line: 262, baseType: !20, size: 16)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !21, line: 28, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !16, file: !17, line: 263, baseType: !24, size: 16, offset: 16)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !17, line: 123, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !26, line: 25, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !28, line: 40, baseType: !22)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !16, file: !17, line: 264, baseType: !30, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 26, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !28, line: 42, baseType: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !16, file: !17, line: 265, baseType: !34, size: 128, offset: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !17, line: 219, size: 128, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !34, file: !17, line: 226, baseType: !37, size: 128)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !17, line: 221, size: 128, elements: !38)
!38 = !{!39, !46, !50}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !37, file: !17, line: 223, baseType: !40, size: 128)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !44)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !26, line: 24, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !28, line: 38, baseType: !43)
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !{!45}
!45 = !DISubrange(count: 16)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !37, file: !17, line: 224, baseType: !47, size: 128)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !37, file: !17, line: 225, baseType: !51, size: 128)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 4)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !16, file: !17, line: 266, baseType: !30, size: 32, offset: 192)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !17, line: 245, size: 128, elements: !58)
!58 = !{!59, !60, !61, !66}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !57, file: !17, line: 247, baseType: !20, size: 16)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !57, file: !17, line: 248, baseType: !24, size: 16, offset: 16)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !57, file: !17, line: 249, baseType: !62, size: 32, offset: 32)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !17, line: 31, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !62, file: !17, line: 33, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !17, line: 30, baseType: !30)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !57, file: !17, line: 252, baseType: !67, size: 64, offset: 64)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !48)
!68 = !{!0, !7}
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{i32 8, !"PIC Level", i32 2}
!73 = !{i32 7, !"PIE Level", i32 2}
!74 = !{i32 7, !"uwtable", i32 2}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 16.0.0"}
!77 = distinct !DISubprogram(name: "nn_literal_resolve", scope: !2, file: !2, line: 34, type: !78, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !96)
!78 = !DISubroutineType(types: !79)
!79 = !{!55, !80, !82, !55, !85, !95}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 46, baseType: !84)
!83 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !87, line: 193, size: 1024, elements: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!88 = !{!89, !90, !94}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !86, file: !87, line: 195, baseType: !20, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !86, file: !87, line: 196, baseType: !91, size: 944, offset: 16)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 118)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !86, file: !87, line: 197, baseType: !84, size: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!96 = !{}
!97 = !DILocalVariable(name: "addr", arg: 1, scope: !77, file: !2, line: 34, type: !80)
!98 = !DILocation(line: 34, column: 37, scope: !77)
!99 = !DILocalVariable(name: "addrlen", arg: 2, scope: !77, file: !2, line: 34, type: !82)
!100 = !DILocation(line: 34, column: 50, scope: !77)
!101 = !DILocalVariable(name: "ipv4only", arg: 3, scope: !77, file: !2, line: 35, type: !55)
!102 = !DILocation(line: 35, column: 9, scope: !77)
!103 = !DILocalVariable(name: "result", arg: 4, scope: !77, file: !2, line: 35, type: !85)
!104 = !DILocation(line: 35, column: 44, scope: !77)
!105 = !DILocalVariable(name: "resultlen", arg: 5, scope: !77, file: !2, line: 35, type: !95)
!106 = !DILocation(line: 35, column: 60, scope: !77)
!107 = !DILocalVariable(name: "rc", scope: !77, file: !2, line: 37, type: !55)
!108 = !DILocation(line: 37, column: 9, scope: !77)
!109 = !DILocalVariable(name: "addrz", scope: !77, file: !2, line: 38, type: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 46)
!113 = !DILocation(line: 38, column: 10, scope: !77)
!114 = !DILocalVariable(name: "inaddr", scope: !77, file: !2, line: 40, type: !62)
!115 = !DILocation(line: 40, column: 20, scope: !77)
!116 = !DILocalVariable(name: "in6addr", scope: !77, file: !2, line: 41, type: !34)
!117 = !DILocation(line: 41, column: 21, scope: !77)
!118 = !DILocation(line: 46, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !77, file: !2, line: 46, column: 9)
!120 = !DILocation(line: 46, column: 17, scope: !119)
!121 = !DILocation(line: 46, column: 21, scope: !119)
!122 = !DILocation(line: 46, column: 24, scope: !119)
!123 = !DILocation(line: 46, column: 33, scope: !119)
!124 = !DILocation(line: 46, column: 9, scope: !77)
!125 = !DILocation(line: 47, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 47, column: 13)
!127 = distinct !DILexicalBlock(scope: !119, file: !2, line: 46, column: 41)
!128 = !DILocation(line: 47, column: 19, scope: !126)
!129 = !DILocation(line: 47, column: 27, scope: !126)
!130 = !DILocation(line: 47, column: 32, scope: !126)
!131 = !DILocation(line: 47, column: 13, scope: !127)
!132 = !DILocation(line: 48, column: 13, scope: !126)
!133 = !DILocation(line: 49, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !127, file: !2, line: 49, column: 13)
!135 = !DILocation(line: 49, column: 21, scope: !134)
!136 = !DILocation(line: 49, column: 25, scope: !134)
!137 = !DILocation(line: 49, column: 29, scope: !134)
!138 = !DILocation(line: 49, column: 13, scope: !127)
!139 = !DILocation(line: 50, column: 13, scope: !134)
!140 = !DILocation(line: 51, column: 9, scope: !127)
!141 = !DILocation(line: 51, column: 24, scope: !127)
!142 = !DILocation(line: 51, column: 29, scope: !127)
!143 = !DILocation(line: 51, column: 34, scope: !127)
!144 = !DILocation(line: 51, column: 42, scope: !127)
!145 = !DILocation(line: 52, column: 16, scope: !127)
!146 = !DILocation(line: 52, column: 24, scope: !127)
!147 = !DILocation(line: 52, column: 9, scope: !127)
!148 = !DILocation(line: 52, column: 29, scope: !127)
!149 = !DILocation(line: 53, column: 5, scope: !127)
!150 = !DILocation(line: 55, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 55, column: 13)
!152 = distinct !DILexicalBlock(scope: !119, file: !2, line: 54, column: 10)
!153 = !DILocation(line: 55, column: 21, scope: !151)
!154 = !DILocation(line: 55, column: 25, scope: !151)
!155 = !DILocation(line: 55, column: 13, scope: !152)
!156 = !DILocation(line: 56, column: 13, scope: !151)
!157 = !DILocation(line: 57, column: 9, scope: !152)
!158 = !DILocation(line: 57, column: 24, scope: !152)
!159 = !DILocation(line: 57, column: 30, scope: !152)
!160 = !DILocation(line: 58, column: 16, scope: !152)
!161 = !DILocation(line: 58, column: 9, scope: !152)
!162 = !DILocation(line: 58, column: 25, scope: !152)
!163 = !DILocation(line: 62, column: 10, scope: !164)
!164 = distinct !DILexicalBlock(scope: !77, file: !2, line: 62, column: 9)
!165 = !DILocation(line: 62, column: 9, scope: !77)
!166 = !DILocation(line: 63, column: 35, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !2, line: 62, column: 20)
!168 = !DILocation(line: 63, column: 14, scope: !167)
!169 = !DILocation(line: 63, column: 12, scope: !167)
!170 = !DILocation(line: 64, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !2, line: 64, column: 13)
!172 = !DILocation(line: 64, column: 16, scope: !171)
!173 = !DILocation(line: 64, column: 13, scope: !167)
!174 = !DILocation(line: 65, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 65, column: 17)
!176 = distinct !DILexicalBlock(scope: !171, file: !2, line: 64, column: 22)
!177 = !DILocation(line: 65, column: 17, scope: !176)
!178 = !DILocation(line: 66, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !2, line: 65, column: 25)
!180 = !DILocation(line: 66, column: 25, scope: !179)
!181 = !DILocation(line: 66, column: 35, scope: !179)
!182 = !DILocation(line: 67, column: 41, scope: !179)
!183 = !DILocation(line: 67, column: 50, scope: !179)
!184 = !DILocation(line: 67, column: 62, scope: !179)
!185 = !DILocation(line: 68, column: 14, scope: !179)
!186 = !DILocation(line: 69, column: 18, scope: !187)
!187 = distinct !DILexicalBlock(scope: !176, file: !2, line: 69, column: 18)
!188 = !DILocation(line: 69, column: 18, scope: !176)
!189 = !DILocation(line: 70, column: 18, scope: !187)
!190 = !DILocation(line: 70, column: 28, scope: !187)
!191 = !DILocation(line: 70, column: 17, scope: !187)
!192 = !DILocation(line: 71, column: 13, scope: !176)
!193 = !DILocation(line: 73, column: 9, scope: !167)
!194 = !DILocation(line: 73, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 73, column: 9)
!196 = distinct !DILexicalBlock(scope: !167, file: !2, line: 73, column: 9)
!197 = !DILocation(line: 73, column: 9, scope: !196)
!198 = !DILocation(line: 73, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !2, line: 73, column: 9)
!200 = !DILocation(line: 74, column: 5, scope: !167)
!201 = !DILocation(line: 77, column: 30, scope: !77)
!202 = !DILocation(line: 77, column: 10, scope: !77)
!203 = !DILocation(line: 77, column: 8, scope: !77)
!204 = !DILocation(line: 78, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !77, file: !2, line: 78, column: 9)
!206 = !DILocation(line: 78, column: 12, scope: !205)
!207 = !DILocation(line: 78, column: 9, scope: !77)
!208 = !DILocation(line: 79, column: 13, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 79, column: 13)
!210 = distinct !DILexicalBlock(scope: !205, file: !2, line: 78, column: 18)
!211 = !DILocation(line: 79, column: 13, scope: !210)
!212 = !DILocation(line: 80, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !2, line: 79, column: 21)
!214 = !DILocation(line: 80, column: 20, scope: !213)
!215 = !DILocation(line: 80, column: 30, scope: !213)
!216 = !DILocation(line: 81, column: 35, scope: !213)
!217 = !DILocation(line: 81, column: 44, scope: !213)
!218 = !DILocation(line: 81, column: 55, scope: !213)
!219 = !DILocation(line: 82, column: 9, scope: !213)
!220 = !DILocation(line: 83, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !210, file: !2, line: 83, column: 13)
!222 = !DILocation(line: 83, column: 13, scope: !210)
!223 = !DILocation(line: 84, column: 14, scope: !221)
!224 = !DILocation(line: 84, column: 24, scope: !221)
!225 = !DILocation(line: 84, column: 13, scope: !221)
!226 = !DILocation(line: 85, column: 9, scope: !210)
!227 = !DILocation(line: 87, column: 5, scope: !77)
!228 = !DILocation(line: 87, column: 5, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 87, column: 5)
!230 = distinct !DILexicalBlock(scope: !77, file: !2, line: 87, column: 5)
!231 = !DILocation(line: 87, column: 5, scope: !230)
!232 = !DILocation(line: 87, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !2, line: 87, column: 5)
!234 = !DILocation(line: 90, column: 5, scope: !77)
!235 = !DILocation(line: 91, column: 1, scope: !77)
