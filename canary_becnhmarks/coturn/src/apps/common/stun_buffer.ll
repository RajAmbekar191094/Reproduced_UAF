; ModuleID = '/home/raj/coturn/src/apps/common/stun_buffer.c'
source_filename = "/home/raj/coturn/src/apps/common/stun_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._stun_buffer = type { [4 x i8], [65507 x i8], i64, i16, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_init_buffer(ptr noundef %0) #0 !dbg !32 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !54, metadata !DIExpression()), !dbg !55
  %4 = load ptr, ptr %3, align 8, !dbg !56
  %5 = icmp ne ptr %4, null, !dbg !56
  br i1 %5, label %7, label %6, !dbg !58

6:                                                ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !59
  br label %17, !dbg !59

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !60
  %9 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 1, !dbg !61
  %10 = getelementptr inbounds [65507 x i8], ptr %9, i64 0, i64 0, !dbg !62
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 65507, i1 false), !dbg !62
  %11 = load ptr, ptr %3, align 8, !dbg !63
  %12 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 2, !dbg !64
  store i64 0, ptr %12, align 8, !dbg !65
  %13 = load ptr, ptr %3, align 8, !dbg !66
  %14 = getelementptr inbounds %struct._stun_buffer, ptr %13, i32 0, i32 3, !dbg !67
  store i16 0, ptr %14, align 8, !dbg !68
  %15 = load ptr, ptr %3, align 8, !dbg !69
  %16 = getelementptr inbounds %struct._stun_buffer, ptr %15, i32 0, i32 4, !dbg !70
  store i8 0, ptr %16, align 2, !dbg !71
  store i32 0, ptr %2, align 4, !dbg !72
  br label %17, !dbg !72

17:                                               ; preds = %7, %6
  %18 = load i32, ptr %2, align 4, !dbg !73
  ret i32 %18, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_get_size(ptr noundef %0) #0 !dbg !74 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !79, metadata !DIExpression()), !dbg !80
  %4 = load ptr, ptr %3, align 8, !dbg !81
  %5 = icmp ne ptr %4, null, !dbg !81
  br i1 %5, label %7, label %6, !dbg !83

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !84
  br label %8, !dbg !84

7:                                                ; preds = %1
  store i32 65507, ptr %2, align 4, !dbg !85
  br label %8, !dbg !85

8:                                                ; preds = %7, %6
  %9 = load i32, ptr %2, align 4, !dbg !86
  ret i32 %9, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_tid_from_message(ptr noundef %0, ptr noundef %1) #0 !dbg !87 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !99, metadata !DIExpression()), !dbg !100
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !101, metadata !DIExpression()), !dbg !102
  %5 = load ptr, ptr %3, align 8, !dbg !103
  %6 = getelementptr inbounds %struct._stun_buffer, ptr %5, i32 0, i32 1, !dbg !104
  %7 = getelementptr inbounds [65507 x i8], ptr %6, i64 0, i64 0, !dbg !103
  %8 = load ptr, ptr %3, align 8, !dbg !105
  %9 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 2, !dbg !106
  %10 = load i64, ptr %9, align 8, !dbg !106
  %11 = load ptr, ptr %4, align 8, !dbg !107
  call void @stun_tid_from_message_str(ptr noundef %7, i64 noundef %10, ptr noundef %11), !dbg !108
  ret void, !dbg !109
}

declare void @stun_tid_from_message_str(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_tid_generate_in_message(ptr noundef %0, ptr noundef %1) #0 !dbg !110 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !113, metadata !DIExpression()), !dbg !114
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !115, metadata !DIExpression()), !dbg !116
  %5 = load ptr, ptr %3, align 8, !dbg !117
  %6 = icmp ne ptr %5, null, !dbg !117
  br i1 %6, label %7, label %12, !dbg !119

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !120
  %9 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 1, !dbg !122
  %10 = getelementptr inbounds [65507 x i8], ptr %9, i64 0, i64 0, !dbg !120
  %11 = load ptr, ptr %4, align 8, !dbg !123
  call void @stun_tid_generate_in_message_str(ptr noundef %10, ptr noundef %11), !dbg !124
  br label %12, !dbg !125

12:                                               ; preds = %7, %2
  ret void, !dbg !126
}

declare void @stun_tid_generate_in_message_str(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_command_message(ptr noundef %0) #0 !dbg !127 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !128, metadata !DIExpression()), !dbg !129
  %4 = load ptr, ptr %3, align 8, !dbg !130
  %5 = icmp ne ptr %4, null, !dbg !130
  br i1 %5, label %6, label %11, !dbg !132

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !133
  %8 = getelementptr inbounds %struct._stun_buffer, ptr %7, i32 0, i32 2, !dbg !134
  %9 = load i64, ptr %8, align 8, !dbg !134
  %10 = icmp ule i64 %9, 0, !dbg !135
  br i1 %10, label %11, label %12, !dbg !136

11:                                               ; preds = %6, %1
  store i32 0, ptr %2, align 4, !dbg !137
  br label %20, !dbg !137

12:                                               ; preds = %6
  %13 = load ptr, ptr %3, align 8, !dbg !138
  %14 = getelementptr inbounds %struct._stun_buffer, ptr %13, i32 0, i32 1, !dbg !139
  %15 = getelementptr inbounds [65507 x i8], ptr %14, i64 0, i64 0, !dbg !138
  %16 = load ptr, ptr %3, align 8, !dbg !140
  %17 = getelementptr inbounds %struct._stun_buffer, ptr %16, i32 0, i32 2, !dbg !141
  %18 = load i64, ptr %17, align 8, !dbg !141
  %19 = call i32 @stun_is_command_message_str(ptr noundef %15, i64 noundef %18), !dbg !142
  store i32 %19, ptr %2, align 4, !dbg !143
  br label %20, !dbg !143

20:                                               ; preds = %12, %11
  %21 = load i32, ptr %2, align 4, !dbg !144
  ret i32 %21, !dbg !144
}

declare i32 @stun_is_command_message_str(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_request(ptr noundef %0) #0 !dbg !145 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !146, metadata !DIExpression()), !dbg !147
  %3 = load ptr, ptr %2, align 8, !dbg !148
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !149
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !148
  %6 = load ptr, ptr %2, align 8, !dbg !150
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !151
  %8 = load i64, ptr %7, align 8, !dbg !151
  %9 = call i32 @stun_is_request_str(ptr noundef %5, i64 noundef %8), !dbg !152
  ret i32 %9, !dbg !153
}

declare i32 @stun_is_request_str(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_success_response(ptr noundef %0) #0 !dbg !154 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !155, metadata !DIExpression()), !dbg !156
  %3 = load ptr, ptr %2, align 8, !dbg !157
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !158
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !157
  %6 = load ptr, ptr %2, align 8, !dbg !159
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !160
  %8 = load i64, ptr %7, align 8, !dbg !160
  %9 = call i32 @stun_is_success_response_str(ptr noundef %5, i64 noundef %8), !dbg !161
  ret i32 %9, !dbg !162
}

declare i32 @stun_is_success_response_str(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_error_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 !dbg !163 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !168, metadata !DIExpression()), !dbg !169
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !170, metadata !DIExpression()), !dbg !171
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !172, metadata !DIExpression()), !dbg !173
  store i64 %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !174, metadata !DIExpression()), !dbg !175
  %9 = load ptr, ptr %5, align 8, !dbg !176
  %10 = getelementptr inbounds %struct._stun_buffer, ptr %9, i32 0, i32 1, !dbg !177
  %11 = getelementptr inbounds [65507 x i8], ptr %10, i64 0, i64 0, !dbg !176
  %12 = load ptr, ptr %5, align 8, !dbg !178
  %13 = getelementptr inbounds %struct._stun_buffer, ptr %12, i32 0, i32 2, !dbg !179
  %14 = load i64, ptr %13, align 8, !dbg !179
  %15 = load ptr, ptr %6, align 8, !dbg !180
  %16 = load ptr, ptr %7, align 8, !dbg !181
  %17 = load i64, ptr %8, align 8, !dbg !182
  %18 = call i32 @stun_is_error_response_str(ptr noundef %11, i64 noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17), !dbg !183
  ret i32 %18, !dbg !184
}

declare i32 @stun_is_error_response_str(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_response(ptr noundef %0) #0 !dbg !185 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !186, metadata !DIExpression()), !dbg !187
  %3 = load ptr, ptr %2, align 8, !dbg !188
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !189
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !188
  %6 = load ptr, ptr %2, align 8, !dbg !190
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !191
  %8 = load i64, ptr %7, align 8, !dbg !191
  %9 = call i32 @stun_is_response_str(ptr noundef %5, i64 noundef %8), !dbg !192
  ret i32 %9, !dbg !193
}

declare i32 @stun_is_response_str(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_indication(ptr noundef %0) #0 !dbg !194 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !195, metadata !DIExpression()), !dbg !196
  %4 = load ptr, ptr %3, align 8, !dbg !197
  %5 = call i32 @is_channel_msg(ptr noundef %4), !dbg !199
  %6 = icmp ne i32 %5, 0, !dbg !199
  br i1 %6, label %7, label %8, !dbg !200

7:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !201
  br label %15, !dbg !201

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !202
  %10 = call zeroext i16 @stun_get_msg_type(ptr noundef %9), !dbg !202
  %11 = zext i16 %10 to i32, !dbg !202
  %12 = and i32 %11, 272, !dbg !202
  %13 = icmp eq i32 %12, 16, !dbg !202
  %14 = zext i1 %13 to i32, !dbg !202
  store i32 %14, ptr %2, align 4, !dbg !203
  br label %15, !dbg !203

15:                                               ; preds = %8, %7
  %16 = load i32, ptr %2, align 4, !dbg !204
  ret i32 %16, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_channel_msg(ptr noundef %0) #0 !dbg !205 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !206, metadata !DIExpression()), !dbg !207
  %4 = load ptr, ptr %3, align 8, !dbg !208
  %5 = icmp ne ptr %4, null, !dbg !208
  br i1 %5, label %6, label %19, !dbg !210

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !211
  %8 = getelementptr inbounds %struct._stun_buffer, ptr %7, i32 0, i32 2, !dbg !212
  %9 = load i64, ptr %8, align 8, !dbg !212
  %10 = icmp ugt i64 %9, 0, !dbg !213
  br i1 %10, label %11, label %19, !dbg !214

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !215
  %13 = getelementptr inbounds %struct._stun_buffer, ptr %12, i32 0, i32 1, !dbg !217
  %14 = getelementptr inbounds [65507 x i8], ptr %13, i64 0, i64 0, !dbg !215
  %15 = load ptr, ptr %3, align 8, !dbg !218
  %16 = getelementptr inbounds %struct._stun_buffer, ptr %15, i32 0, i32 2, !dbg !219
  %17 = load i64, ptr %16, align 8, !dbg !219
  %18 = call i32 @is_channel_msg_str(ptr noundef %14, i64 noundef %17), !dbg !220
  store i32 %18, ptr %2, align 4, !dbg !221
  br label %20, !dbg !221

19:                                               ; preds = %6, %1
  store i32 0, ptr %2, align 4, !dbg !222
  br label %20, !dbg !222

20:                                               ; preds = %19, %11
  %21 = load i32, ptr %2, align 4, !dbg !223
  ret i32 %21, !dbg !223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_get_msg_type(ptr noundef %0) #0 !dbg !224 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !227, metadata !DIExpression()), !dbg !228
  %4 = load ptr, ptr %3, align 8, !dbg !229
  %5 = icmp ne ptr %4, null, !dbg !229
  br i1 %5, label %7, label %6, !dbg !231

6:                                                ; preds = %1
  store i16 -1, ptr %2, align 2, !dbg !232
  br label %15, !dbg !232

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !233
  %9 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 1, !dbg !234
  %10 = getelementptr inbounds [65507 x i8], ptr %9, i64 0, i64 0, !dbg !233
  %11 = load ptr, ptr %3, align 8, !dbg !235
  %12 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 2, !dbg !236
  %13 = load i64, ptr %12, align 8, !dbg !236
  %14 = call zeroext i16 @stun_get_msg_type_str(ptr noundef %10, i64 noundef %13), !dbg !237
  store i16 %14, ptr %2, align 2, !dbg !238
  br label %15, !dbg !238

15:                                               ; preds = %7, %6
  %16 = load i16, ptr %2, align 2, !dbg !239
  ret i16 %16, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_get_method(ptr noundef %0) #0 !dbg !240 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !242
  %3 = load ptr, ptr %2, align 8, !dbg !243
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !244
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !243
  %6 = load ptr, ptr %2, align 8, !dbg !245
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !246
  %8 = load i64, ptr %7, align 8, !dbg !246
  %9 = call zeroext i16 @stun_get_method_str(ptr noundef %5, i64 noundef %8), !dbg !247
  ret i16 %9, !dbg !248
}

declare zeroext i16 @stun_get_method_str(ptr noundef, i64 noundef) #3

declare zeroext i16 @stun_get_msg_type_str(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_request(i16 noundef zeroext %0, ptr noundef %1) #0 !dbg !249 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  store i16 %0, ptr %3, align 2
  call void @llvm.dbg.declare(metadata ptr %3, metadata !252, metadata !DIExpression()), !dbg !253
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !254, metadata !DIExpression()), !dbg !255
  %5 = load i16, ptr %3, align 2, !dbg !256
  %6 = call zeroext i16 @stun_make_request(i16 noundef zeroext %5), !dbg !257
  %7 = load ptr, ptr %4, align 8, !dbg !258
  call void @stun_init_command(i16 noundef zeroext %6, ptr noundef %7), !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stun_init_command(i16 noundef zeroext %0, ptr noundef %1) #0 !dbg !261 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  store i16 %0, ptr %3, align 2
  call void @llvm.dbg.declare(metadata ptr %3, metadata !262, metadata !DIExpression()), !dbg !263
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !264, metadata !DIExpression()), !dbg !265
  %5 = load ptr, ptr %4, align 8, !dbg !266
  %6 = call i32 @stun_get_size(ptr noundef %5), !dbg !267
  %7 = sext i32 %6 to i64, !dbg !267
  %8 = load ptr, ptr %4, align 8, !dbg !268
  %9 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 2, !dbg !269
  store i64 %7, ptr %9, align 8, !dbg !270
  %10 = load i16, ptr %3, align 2, !dbg !271
  %11 = load ptr, ptr %4, align 8, !dbg !272
  %12 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 1, !dbg !273
  %13 = getelementptr inbounds [65507 x i8], ptr %12, i64 0, i64 0, !dbg !272
  %14 = load ptr, ptr %4, align 8, !dbg !274
  %15 = getelementptr inbounds %struct._stun_buffer, ptr %14, i32 0, i32 2, !dbg !275
  call void @stun_init_command_str(i16 noundef zeroext %10, ptr noundef %13, ptr noundef %15), !dbg !276
  ret void, !dbg !277
}

declare zeroext i16 @stun_make_request(i16 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_indication(i16 noundef zeroext %0, ptr noundef %1) #0 !dbg !278 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  store i16 %0, ptr %3, align 2
  call void @llvm.dbg.declare(metadata ptr %3, metadata !279, metadata !DIExpression()), !dbg !280
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !281, metadata !DIExpression()), !dbg !282
  %5 = load i16, ptr %3, align 2, !dbg !283
  %6 = call zeroext i16 @stun_make_indication(i16 noundef zeroext %5), !dbg !284
  %7 = load ptr, ptr %4, align 8, !dbg !285
  call void @stun_init_command(i16 noundef zeroext %6, ptr noundef %7), !dbg !286
  ret void, !dbg !287
}

declare zeroext i16 @stun_make_indication(i16 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_success_response(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #0 !dbg !288 {
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i16 %0, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !291, metadata !DIExpression()), !dbg !292
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !293, metadata !DIExpression()), !dbg !294
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !295, metadata !DIExpression()), !dbg !296
  %7 = load ptr, ptr %5, align 8, !dbg !297
  %8 = call i32 @stun_get_size(ptr noundef %7), !dbg !298
  %9 = sext i32 %8 to i64, !dbg !298
  %10 = load ptr, ptr %5, align 8, !dbg !299
  %11 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 2, !dbg !300
  store i64 %9, ptr %11, align 8, !dbg !301
  %12 = load i16, ptr %4, align 2, !dbg !302
  %13 = load ptr, ptr %5, align 8, !dbg !303
  %14 = getelementptr inbounds %struct._stun_buffer, ptr %13, i32 0, i32 1, !dbg !304
  %15 = getelementptr inbounds [65507 x i8], ptr %14, i64 0, i64 0, !dbg !303
  %16 = load ptr, ptr %5, align 8, !dbg !305
  %17 = getelementptr inbounds %struct._stun_buffer, ptr %16, i32 0, i32 2, !dbg !306
  %18 = load ptr, ptr %6, align 8, !dbg !307
  call void @stun_init_success_response_str(i16 noundef zeroext %12, ptr noundef %15, ptr noundef %17, ptr noundef %18), !dbg !308
  ret void, !dbg !309
}

declare void @stun_init_success_response_str(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_error_response(i16 noundef zeroext %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4) #0 !dbg !310 {
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i16 %0, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !313, metadata !DIExpression()), !dbg !314
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !315, metadata !DIExpression()), !dbg !316
  store i16 %2, ptr %8, align 2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !317, metadata !DIExpression()), !dbg !318
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !319, metadata !DIExpression()), !dbg !320
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !321, metadata !DIExpression()), !dbg !322
  %11 = load ptr, ptr %7, align 8, !dbg !323
  %12 = call i32 @stun_get_size(ptr noundef %11), !dbg !324
  %13 = sext i32 %12 to i64, !dbg !324
  %14 = load ptr, ptr %7, align 8, !dbg !325
  %15 = getelementptr inbounds %struct._stun_buffer, ptr %14, i32 0, i32 2, !dbg !326
  store i64 %13, ptr %15, align 8, !dbg !327
  %16 = load i16, ptr %6, align 2, !dbg !328
  %17 = load ptr, ptr %7, align 8, !dbg !329
  %18 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 1, !dbg !330
  %19 = getelementptr inbounds [65507 x i8], ptr %18, i64 0, i64 0, !dbg !329
  %20 = load ptr, ptr %7, align 8, !dbg !331
  %21 = getelementptr inbounds %struct._stun_buffer, ptr %20, i32 0, i32 2, !dbg !332
  %22 = load i16, ptr %8, align 2, !dbg !333
  %23 = load ptr, ptr %9, align 8, !dbg !334
  %24 = load ptr, ptr %10, align 8, !dbg !335
  call void @stun_init_error_response_str(i16 noundef zeroext %16, ptr noundef %19, ptr noundef %21, i16 noundef zeroext %22, ptr noundef %23, ptr noundef %24), !dbg !336
  ret void, !dbg !337
}

declare void @stun_init_error_response_str(i16 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_get_command_message_len(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !340
  %3 = load ptr, ptr %2, align 8, !dbg !341
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !342
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !341
  %6 = load ptr, ptr %2, align 8, !dbg !343
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !344
  %8 = load i64, ptr %7, align 8, !dbg !344
  %9 = call i32 @stun_get_command_message_len_str(ptr noundef %5, i64 noundef %8), !dbg !345
  ret i32 %9, !dbg !346
}

declare i32 @stun_get_command_message_len_str(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_init_channel_message(i16 noundef zeroext %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !347 {
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i16 %0, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !350, metadata !DIExpression()), !dbg !351
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !352, metadata !DIExpression()), !dbg !353
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !354, metadata !DIExpression()), !dbg !355
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !356, metadata !DIExpression()), !dbg !357
  %9 = load i16, ptr %5, align 2, !dbg !358
  %10 = load ptr, ptr %6, align 8, !dbg !359
  %11 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 1, !dbg !360
  %12 = getelementptr inbounds [65507 x i8], ptr %11, i64 0, i64 0, !dbg !359
  %13 = load ptr, ptr %6, align 8, !dbg !361
  %14 = getelementptr inbounds %struct._stun_buffer, ptr %13, i32 0, i32 2, !dbg !362
  %15 = load i32, ptr %7, align 4, !dbg !363
  %16 = load i32, ptr %8, align 4, !dbg !364
  %17 = call i32 @stun_init_channel_message_str(i16 noundef zeroext %9, ptr noundef %12, ptr noundef %14, i32 noundef %15, i32 noundef %16), !dbg !365
  ret i32 %17, !dbg !366
}

declare i32 @stun_init_channel_message_str(i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_channel_message(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !367 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !371, metadata !DIExpression()), !dbg !372
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !373, metadata !DIExpression()), !dbg !374
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !375, metadata !DIExpression()), !dbg !376
  %10 = load ptr, ptr %5, align 8, !dbg !377
  %11 = icmp ne ptr %10, null, !dbg !377
  br i1 %11, label %13, label %12, !dbg !379

12:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !380
  br label %31, !dbg !380

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !381, metadata !DIExpression()), !dbg !382
  %14 = load ptr, ptr %5, align 8, !dbg !383
  %15 = getelementptr inbounds %struct._stun_buffer, ptr %14, i32 0, i32 2, !dbg !384
  %16 = load i64, ptr %15, align 8, !dbg !384
  store i64 %16, ptr %8, align 8, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %9, metadata !385, metadata !DIExpression()), !dbg !386
  %17 = load ptr, ptr %5, align 8, !dbg !387
  %18 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 1, !dbg !388
  %19 = getelementptr inbounds [65507 x i8], ptr %18, i64 0, i64 0, !dbg !387
  %20 = load ptr, ptr %6, align 8, !dbg !389
  %21 = load i32, ptr %7, align 4, !dbg !390
  %22 = call i32 @stun_is_channel_message_str(ptr noundef %19, ptr noundef %8, ptr noundef %20, i32 noundef %21), !dbg !391
  store i32 %22, ptr %9, align 4, !dbg !386
  %23 = load i32, ptr %9, align 4, !dbg !392
  %24 = icmp ne i32 %23, 0, !dbg !392
  br i1 %24, label %25, label %29, !dbg !394

25:                                               ; preds = %13
  %26 = load i64, ptr %8, align 8, !dbg !395
  %27 = load ptr, ptr %5, align 8, !dbg !397
  %28 = getelementptr inbounds %struct._stun_buffer, ptr %27, i32 0, i32 2, !dbg !398
  store i64 %26, ptr %28, align 8, !dbg !399
  br label %29, !dbg !400

29:                                               ; preds = %25, %13
  %30 = load i32, ptr %9, align 4, !dbg !401
  store i32 %30, ptr %4, align 4, !dbg !402
  br label %31, !dbg !402

31:                                               ; preds = %29, %12
  %32 = load i32, ptr %4, align 4, !dbg !403
  ret i32 %32, !dbg !403
}

declare i32 @stun_is_channel_message_str(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_set_allocate_request(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #0 !dbg !404 {
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !410, metadata !DIExpression()), !dbg !411
  store i32 %1, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !412, metadata !DIExpression()), !dbg !413
  store i32 %2, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !414, metadata !DIExpression()), !dbg !415
  store i32 %3, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !416, metadata !DIExpression()), !dbg !417
  store i8 %4, ptr %13, align 1
  call void @llvm.dbg.declare(metadata ptr %13, metadata !418, metadata !DIExpression()), !dbg !419
  store i32 %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !420, metadata !DIExpression()), !dbg !421
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !422, metadata !DIExpression()), !dbg !423
  store i32 %7, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !424, metadata !DIExpression()), !dbg !425
  %17 = load ptr, ptr %9, align 8, !dbg !426
  %18 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 1, !dbg !427
  %19 = getelementptr inbounds [65507 x i8], ptr %18, i64 0, i64 0, !dbg !426
  %20 = load ptr, ptr %9, align 8, !dbg !428
  %21 = getelementptr inbounds %struct._stun_buffer, ptr %20, i32 0, i32 2, !dbg !429
  %22 = load i32, ptr %10, align 4, !dbg !430
  %23 = load i32, ptr %11, align 4, !dbg !431
  %24 = load i32, ptr %12, align 4, !dbg !432
  %25 = load i8, ptr %13, align 1, !dbg !433
  %26 = load i32, ptr %14, align 4, !dbg !434
  %27 = load ptr, ptr %15, align 8, !dbg !435
  %28 = load i32, ptr %16, align 4, !dbg !436
  %29 = call i32 @stun_set_allocate_request_str(ptr noundef %19, ptr noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i8 noundef zeroext %25, i32 noundef %26, ptr noundef %27, i32 noundef %28), !dbg !437
  ret i32 %29, !dbg !438
}

declare i32 @stun_set_allocate_request_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_set_allocate_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10) #0 !dbg !439 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr %0, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !499, metadata !DIExpression()), !dbg !500
  store ptr %1, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !501, metadata !DIExpression()), !dbg !502
  store ptr %2, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !503, metadata !DIExpression()), !dbg !504
  store ptr %3, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !505, metadata !DIExpression()), !dbg !506
  store ptr %4, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !507, metadata !DIExpression()), !dbg !508
  store i32 %5, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !509, metadata !DIExpression()), !dbg !510
  store i32 %6, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !511, metadata !DIExpression()), !dbg !512
  store i32 %7, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !513, metadata !DIExpression()), !dbg !514
  store ptr %8, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !515, metadata !DIExpression()), !dbg !516
  store i64 %9, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !517, metadata !DIExpression()), !dbg !518
  store ptr %10, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !519, metadata !DIExpression()), !dbg !520
  %23 = load ptr, ptr %12, align 8, !dbg !521
  %24 = getelementptr inbounds %struct._stun_buffer, ptr %23, i32 0, i32 1, !dbg !522
  %25 = getelementptr inbounds [65507 x i8], ptr %24, i64 0, i64 0, !dbg !521
  %26 = load ptr, ptr %12, align 8, !dbg !523
  %27 = getelementptr inbounds %struct._stun_buffer, ptr %26, i32 0, i32 2, !dbg !524
  %28 = load ptr, ptr %13, align 8, !dbg !525
  %29 = load ptr, ptr %14, align 8, !dbg !526
  %30 = load ptr, ptr %15, align 8, !dbg !527
  %31 = load ptr, ptr %16, align 8, !dbg !528
  %32 = load i32, ptr %17, align 4, !dbg !529
  %33 = load i32, ptr %18, align 4, !dbg !530
  %34 = load i32, ptr %19, align 4, !dbg !531
  %35 = load ptr, ptr %20, align 8, !dbg !532
  %36 = load i64, ptr %21, align 8, !dbg !533
  %37 = load ptr, ptr %22, align 8, !dbg !534
  %38 = call i32 @stun_set_allocate_response_str(ptr noundef %25, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, ptr noundef %35, i64 noundef %36, ptr noundef %37), !dbg !535
  ret i32 %38, !dbg !536
}

declare i32 @stun_set_allocate_response_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_set_channel_bind_request(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 !dbg !537 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !541
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !542, metadata !DIExpression()), !dbg !543
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !544, metadata !DIExpression()), !dbg !545
  %7 = load ptr, ptr %4, align 8, !dbg !546
  %8 = getelementptr inbounds %struct._stun_buffer, ptr %7, i32 0, i32 1, !dbg !547
  %9 = getelementptr inbounds [65507 x i8], ptr %8, i64 0, i64 0, !dbg !546
  %10 = load ptr, ptr %4, align 8, !dbg !548
  %11 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 2, !dbg !549
  %12 = load ptr, ptr %5, align 8, !dbg !550
  %13 = load i16, ptr %6, align 2, !dbg !551
  %14 = call zeroext i16 @stun_set_channel_bind_request_str(ptr noundef %9, ptr noundef %11, ptr noundef %12, i16 noundef zeroext %13), !dbg !552
  ret i16 %14, !dbg !553
}

declare zeroext i16 @stun_set_channel_bind_request_str(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_set_channel_bind_response(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !554 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !557, metadata !DIExpression()), !dbg !558
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !559, metadata !DIExpression()), !dbg !560
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !561, metadata !DIExpression()), !dbg !562
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !563, metadata !DIExpression()), !dbg !564
  %9 = load ptr, ptr %5, align 8, !dbg !565
  %10 = getelementptr inbounds %struct._stun_buffer, ptr %9, i32 0, i32 1, !dbg !566
  %11 = getelementptr inbounds [65507 x i8], ptr %10, i64 0, i64 0, !dbg !565
  %12 = load ptr, ptr %5, align 8, !dbg !567
  %13 = getelementptr inbounds %struct._stun_buffer, ptr %12, i32 0, i32 2, !dbg !568
  %14 = load ptr, ptr %6, align 8, !dbg !569
  %15 = load i32, ptr %7, align 4, !dbg !570
  %16 = load ptr, ptr %8, align 8, !dbg !571
  call void @stun_set_channel_bind_response_str(ptr noundef %11, ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16), !dbg !572
  ret void, !dbg !573
}

declare void @stun_set_channel_bind_response_str(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @stun_attr_get_first(ptr noundef %0) #0 !dbg !574 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !580, metadata !DIExpression()), !dbg !581
  %3 = load ptr, ptr %2, align 8, !dbg !582
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !583
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !582
  %6 = load ptr, ptr %2, align 8, !dbg !584
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !585
  %8 = load i64, ptr %7, align 8, !dbg !585
  %9 = call ptr @stun_attr_get_first_str(ptr noundef %5, i64 noundef %8), !dbg !586
  ret ptr %9, !dbg !587
}

declare ptr @stun_attr_get_first_str(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @stun_attr_get_next(ptr noundef %0, ptr noundef %1) #0 !dbg !588 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !591, metadata !DIExpression()), !dbg !592
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !593, metadata !DIExpression()), !dbg !594
  %5 = load ptr, ptr %3, align 8, !dbg !595
  %6 = getelementptr inbounds %struct._stun_buffer, ptr %5, i32 0, i32 1, !dbg !596
  %7 = getelementptr inbounds [65507 x i8], ptr %6, i64 0, i64 0, !dbg !595
  %8 = load ptr, ptr %3, align 8, !dbg !597
  %9 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 2, !dbg !598
  %10 = load i64, ptr %9, align 8, !dbg !598
  %11 = load ptr, ptr %4, align 8, !dbg !599
  %12 = call ptr @stun_attr_get_next_str(ptr noundef %7, i64 noundef %10, ptr noundef %11), !dbg !600
  ret ptr %12, !dbg !601
}

declare ptr @stun_attr_get_next_str(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 !dbg !602 {
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !605, metadata !DIExpression()), !dbg !606
  store i16 %1, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !607, metadata !DIExpression()), !dbg !608
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !609, metadata !DIExpression()), !dbg !610
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !611, metadata !DIExpression()), !dbg !612
  %9 = load ptr, ptr %5, align 8, !dbg !613
  %10 = getelementptr inbounds %struct._stun_buffer, ptr %9, i32 0, i32 1, !dbg !614
  %11 = getelementptr inbounds [65507 x i8], ptr %10, i64 0, i64 0, !dbg !613
  %12 = load ptr, ptr %5, align 8, !dbg !615
  %13 = getelementptr inbounds %struct._stun_buffer, ptr %12, i32 0, i32 2, !dbg !616
  %14 = load i16, ptr %6, align 2, !dbg !617
  %15 = load ptr, ptr %7, align 8, !dbg !618
  %16 = load i32, ptr %8, align 4, !dbg !619
  %17 = call i32 @stun_attr_add_str(ptr noundef %11, ptr noundef %13, i16 noundef zeroext %14, ptr noundef %15, i32 noundef %16), !dbg !620
  ret i32 %17, !dbg !621
}

declare i32 @stun_attr_add_str(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_channel_number(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !622 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !625, metadata !DIExpression()), !dbg !626
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !627, metadata !DIExpression()), !dbg !628
  %5 = load ptr, ptr %3, align 8, !dbg !629
  %6 = getelementptr inbounds %struct._stun_buffer, ptr %5, i32 0, i32 1, !dbg !630
  %7 = getelementptr inbounds [65507 x i8], ptr %6, i64 0, i64 0, !dbg !629
  %8 = load ptr, ptr %3, align 8, !dbg !631
  %9 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 2, !dbg !632
  %10 = load i16, ptr %4, align 2, !dbg !633
  %11 = call i32 @stun_attr_add_channel_number_str(ptr noundef %7, ptr noundef %9, i16 noundef zeroext %10), !dbg !634
  ret i32 %11, !dbg !635
}

declare i32 @stun_attr_add_channel_number_str(ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_addr(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 !dbg !636 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !639, metadata !DIExpression()), !dbg !640
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !641, metadata !DIExpression()), !dbg !642
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !643, metadata !DIExpression()), !dbg !644
  %7 = load ptr, ptr %4, align 8, !dbg !645
  %8 = getelementptr inbounds %struct._stun_buffer, ptr %7, i32 0, i32 1, !dbg !646
  %9 = getelementptr inbounds [65507 x i8], ptr %8, i64 0, i64 0, !dbg !645
  %10 = load ptr, ptr %4, align 8, !dbg !647
  %11 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 2, !dbg !648
  %12 = load i16, ptr %5, align 2, !dbg !649
  %13 = load ptr, ptr %6, align 8, !dbg !650
  %14 = call i32 @stun_attr_add_addr_str(ptr noundef %9, ptr noundef %11, i16 noundef zeroext %12, ptr noundef %13), !dbg !651
  ret i32 %14, !dbg !652
}

declare i32 @stun_attr_add_addr_str(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_addr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !653 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !657, metadata !DIExpression()), !dbg !658
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !659, metadata !DIExpression()), !dbg !660
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !661, metadata !DIExpression()), !dbg !662
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !663, metadata !DIExpression()), !dbg !664
  %9 = load ptr, ptr %5, align 8, !dbg !665
  %10 = getelementptr inbounds %struct._stun_buffer, ptr %9, i32 0, i32 1, !dbg !666
  %11 = getelementptr inbounds [65507 x i8], ptr %10, i64 0, i64 0, !dbg !665
  %12 = load ptr, ptr %5, align 8, !dbg !667
  %13 = getelementptr inbounds %struct._stun_buffer, ptr %12, i32 0, i32 2, !dbg !668
  %14 = load i64, ptr %13, align 8, !dbg !668
  %15 = load ptr, ptr %6, align 8, !dbg !669
  %16 = load ptr, ptr %7, align 8, !dbg !670
  %17 = load ptr, ptr %8, align 8, !dbg !671
  %18 = call i32 @stun_attr_get_addr_str(ptr noundef %11, i64 noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17), !dbg !672
  ret i32 %18, !dbg !673
}

declare i32 @stun_attr_get_addr_str(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_first_addr(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 !dbg !674 {
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !677, metadata !DIExpression()), !dbg !678
  store i16 %1, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !679, metadata !DIExpression()), !dbg !680
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !681, metadata !DIExpression()), !dbg !682
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !683, metadata !DIExpression()), !dbg !684
  %9 = load ptr, ptr %5, align 8, !dbg !685
  %10 = getelementptr inbounds %struct._stun_buffer, ptr %9, i32 0, i32 1, !dbg !686
  %11 = getelementptr inbounds [65507 x i8], ptr %10, i64 0, i64 0, !dbg !685
  %12 = load ptr, ptr %5, align 8, !dbg !687
  %13 = getelementptr inbounds %struct._stun_buffer, ptr %12, i32 0, i32 2, !dbg !688
  %14 = load i64, ptr %13, align 8, !dbg !688
  %15 = load i16, ptr %6, align 2, !dbg !689
  %16 = load ptr, ptr %7, align 8, !dbg !690
  %17 = load ptr, ptr %8, align 8, !dbg !691
  %18 = call i32 @stun_attr_get_first_addr_str(ptr noundef %11, i64 noundef %14, i16 noundef zeroext %15, ptr noundef %16, ptr noundef %17), !dbg !692
  ret i32 %18, !dbg !693
}

declare i32 @stun_attr_get_first_addr_str(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_even_port(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !694 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !697, metadata !DIExpression()), !dbg !698
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !699, metadata !DIExpression()), !dbg !700
  %5 = load i8, ptr %4, align 1, !dbg !701
  %6 = icmp ne i8 %5, 0, !dbg !701
  br i1 %6, label %7, label %8, !dbg !703

7:                                                ; preds = %2
  store i8 -128, ptr %4, align 1, !dbg !704
  br label %8, !dbg !705

8:                                                ; preds = %7, %2
  %9 = load ptr, ptr %3, align 8, !dbg !706
  %10 = call i32 @stun_attr_add(ptr noundef %9, i16 noundef zeroext 24, ptr noundef %4, i32 noundef 1), !dbg !707
  ret i32 %10, !dbg !708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_attr_get_first_channel_number(ptr noundef %0) #0 !dbg !709 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !710, metadata !DIExpression()), !dbg !711
  %3 = load ptr, ptr %2, align 8, !dbg !712
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !713
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !712
  %6 = load ptr, ptr %2, align 8, !dbg !714
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !715
  %8 = load i64, ptr %7, align 8, !dbg !715
  %9 = call zeroext i16 @stun_attr_get_first_channel_number_str(ptr noundef %5, i64 noundef %8), !dbg !716
  ret i16 %9, !dbg !717
}

declare zeroext i16 @stun_attr_get_first_channel_number_str(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @stun_attr_get_first_by_type(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !718 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !721, metadata !DIExpression()), !dbg !722
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !723, metadata !DIExpression()), !dbg !724
  %5 = load ptr, ptr %3, align 8, !dbg !725
  %6 = getelementptr inbounds %struct._stun_buffer, ptr %5, i32 0, i32 1, !dbg !726
  %7 = getelementptr inbounds [65507 x i8], ptr %6, i64 0, i64 0, !dbg !725
  %8 = load ptr, ptr %3, align 8, !dbg !727
  %9 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 2, !dbg !728
  %10 = load i64, ptr %9, align 8, !dbg !728
  %11 = load i16, ptr %4, align 2, !dbg !729
  %12 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %7, i64 noundef %10, i16 noundef zeroext %11), !dbg !730
  ret ptr %12, !dbg !731
}

declare ptr @stun_attr_get_first_by_type_str(ptr noundef, i64 noundef, i16 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_set_binding_request(ptr noundef %0) #0 !dbg !732 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !735, metadata !DIExpression()), !dbg !736
  %3 = load ptr, ptr %2, align 8, !dbg !737
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !738
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !737
  %6 = load ptr, ptr %2, align 8, !dbg !739
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !740
  call void @stun_set_binding_request_str(ptr noundef %5, ptr noundef %7), !dbg !741
  ret void, !dbg !742
}

declare void @stun_set_binding_request_str(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_set_binding_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !743 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !746, metadata !DIExpression()), !dbg !747
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !748, metadata !DIExpression()), !dbg !749
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !750, metadata !DIExpression()), !dbg !751
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !752, metadata !DIExpression()), !dbg !753
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !754, metadata !DIExpression()), !dbg !755
  %11 = load ptr, ptr %6, align 8, !dbg !756
  %12 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 1, !dbg !757
  %13 = getelementptr inbounds [65507 x i8], ptr %12, i64 0, i64 0, !dbg !756
  %14 = load ptr, ptr %6, align 8, !dbg !758
  %15 = getelementptr inbounds %struct._stun_buffer, ptr %14, i32 0, i32 2, !dbg !759
  %16 = load ptr, ptr %7, align 8, !dbg !760
  %17 = load ptr, ptr %8, align 8, !dbg !761
  %18 = load i32, ptr %9, align 4, !dbg !762
  %19 = load ptr, ptr %10, align 8, !dbg !763
  %20 = call i32 @stun_set_binding_response_str(ptr noundef %13, ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, ptr noundef %19, i32 noundef 0, i32 noundef 0), !dbg !764
  ret i32 %20, !dbg !765
}

declare i32 @stun_set_binding_response_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_prepare_binding_request(ptr noundef %0) #0 !dbg !766 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !767, metadata !DIExpression()), !dbg !768
  %3 = load ptr, ptr %2, align 8, !dbg !769
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !770
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !769
  %6 = load ptr, ptr %2, align 8, !dbg !771
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !772
  call void @stun_set_binding_request_str(ptr noundef %5, ptr noundef %7), !dbg !773
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_binding_response(ptr noundef %0) #0 !dbg !775 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !776, metadata !DIExpression()), !dbg !777
  %3 = load ptr, ptr %2, align 8, !dbg !778
  %4 = getelementptr inbounds %struct._stun_buffer, ptr %3, i32 0, i32 1, !dbg !779
  %5 = getelementptr inbounds [65507 x i8], ptr %4, i64 0, i64 0, !dbg !778
  %6 = load ptr, ptr %2, align 8, !dbg !780
  %7 = getelementptr inbounds %struct._stun_buffer, ptr %6, i32 0, i32 2, !dbg !781
  %8 = load i64, ptr %7, align 8, !dbg !781
  %9 = call i32 @stun_is_binding_response_str(ptr noundef %5, i64 noundef %8), !dbg !782
  ret i32 %9, !dbg !783
}

declare i32 @stun_is_binding_response_str(ptr noundef, i64 noundef) #3

declare i32 @is_channel_msg_str(ptr noundef, i64 noundef) #3

declare void @stun_init_command_str(i16 noundef zeroext, ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/raj/coturn/src/apps/common/stun_buffer.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "be19431f0c992bf12f2fe986caeadb89")
!2 = !{!3, !6, !11, !12, !16, !21}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !4, line: 46, baseType: !5)
!4 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 108, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !9, line: 194, baseType: !15)
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 8, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 16.0.0"}
!32 = distinct !DISubprogram(name: "stun_init_buffer", scope: !33, file: !33, line: 35, type: !34, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!33 = !DIFile(filename: "src/apps/common/stun_buffer.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "be19431f0c992bf12f2fe986caeadb89")
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !37}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !39, line: 48, baseType: !40)
!39 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !39, line: 42, size: 524224, elements: !41)
!41 = !{!42, !46, !50, !51, !52}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !40, file: !39, line: 43, baseType: !43, size: 32)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 4)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !40, file: !39, line: 44, baseType: !47, size: 524056, offset: 32)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 524056, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 65507)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !39, line: 45, baseType: !3, size: 64, offset: 524096)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !40, file: !39, line: 46, baseType: !6, size: 16, offset: 524160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !40, file: !39, line: 47, baseType: !18, size: 8, offset: 524176)
!53 = !{}
!54 = !DILocalVariable(name: "buf", arg: 1, scope: !32, file: !33, line: 35, type: !37)
!55 = !DILocation(line: 35, column: 35, scope: !32)
!56 = !DILocation(line: 36, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !32, file: !33, line: 36, column: 6)
!58 = !DILocation(line: 36, column: 6, scope: !32)
!59 = !DILocation(line: 36, column: 12, scope: !57)
!60 = !DILocation(line: 37, column: 9, scope: !32)
!61 = !DILocation(line: 37, column: 14, scope: !32)
!62 = !DILocation(line: 37, column: 3, scope: !32)
!63 = !DILocation(line: 38, column: 3, scope: !32)
!64 = !DILocation(line: 38, column: 8, scope: !32)
!65 = !DILocation(line: 38, column: 11, scope: !32)
!66 = !DILocation(line: 39, column: 3, scope: !32)
!67 = !DILocation(line: 39, column: 8, scope: !32)
!68 = !DILocation(line: 39, column: 14, scope: !32)
!69 = !DILocation(line: 40, column: 3, scope: !32)
!70 = !DILocation(line: 40, column: 8, scope: !32)
!71 = !DILocation(line: 40, column: 15, scope: !32)
!72 = !DILocation(line: 41, column: 3, scope: !32)
!73 = !DILocation(line: 42, column: 1, scope: !32)
!74 = distinct !DISubprogram(name: "stun_get_size", scope: !33, file: !33, line: 44, type: !75, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!75 = !DISubroutineType(types: !76)
!76 = !{!36, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!79 = !DILocalVariable(name: "buf", arg: 1, scope: !74, file: !33, line: 44, type: !77)
!80 = !DILocation(line: 44, column: 38, scope: !74)
!81 = !DILocation(line: 45, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !74, file: !33, line: 45, column: 6)
!83 = !DILocation(line: 45, column: 6, scope: !74)
!84 = !DILocation(line: 45, column: 12, scope: !82)
!85 = !DILocation(line: 46, column: 3, scope: !74)
!86 = !DILocation(line: 47, column: 1, scope: !74)
!87 = distinct !DISubprogram(name: "stun_tid_from_message", scope: !33, file: !33, line: 51, type: !88, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !77, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !92, line: 52, baseType: !93)
!92 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 47, size: 96, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !93, file: !92, line: 51, baseType: !96, size: 96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 12)
!99 = !DILocalVariable(name: "buf", arg: 1, scope: !87, file: !33, line: 51, type: !77)
!100 = !DILocation(line: 51, column: 47, scope: !87)
!101 = !DILocalVariable(name: "id", arg: 2, scope: !87, file: !33, line: 51, type: !90)
!102 = !DILocation(line: 51, column: 62, scope: !87)
!103 = !DILocation(line: 52, column: 29, scope: !87)
!104 = !DILocation(line: 52, column: 34, scope: !87)
!105 = !DILocation(line: 52, column: 47, scope: !87)
!106 = !DILocation(line: 52, column: 52, scope: !87)
!107 = !DILocation(line: 52, column: 58, scope: !87)
!108 = !DILocation(line: 52, column: 3, scope: !87)
!109 = !DILocation(line: 53, column: 1, scope: !87)
!110 = distinct !DISubprogram(name: "stun_tid_generate_in_message", scope: !33, file: !33, line: 55, type: !111, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !37, !90}
!113 = !DILocalVariable(name: "buf", arg: 1, scope: !110, file: !33, line: 55, type: !37)
!114 = !DILocation(line: 55, column: 48, scope: !110)
!115 = !DILocalVariable(name: "id", arg: 2, scope: !110, file: !33, line: 55, type: !90)
!116 = !DILocation(line: 55, column: 63, scope: !110)
!117 = !DILocation(line: 56, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !110, file: !33, line: 56, column: 6)
!119 = !DILocation(line: 56, column: 6, scope: !110)
!120 = !DILocation(line: 57, column: 38, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !33, line: 56, column: 11)
!122 = !DILocation(line: 57, column: 43, scope: !121)
!123 = !DILocation(line: 57, column: 48, scope: !121)
!124 = !DILocation(line: 57, column: 5, scope: !121)
!125 = !DILocation(line: 58, column: 3, scope: !121)
!126 = !DILocation(line: 59, column: 1, scope: !110)
!127 = distinct !DISubprogram(name: "stun_is_command_message", scope: !33, file: !33, line: 70, type: !75, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!128 = !DILocalVariable(name: "buf", arg: 1, scope: !127, file: !33, line: 70, type: !77)
!129 = !DILocation(line: 70, column: 48, scope: !127)
!130 = !DILocation(line: 71, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !33, line: 71, column: 6)
!132 = !DILocation(line: 71, column: 11, scope: !131)
!133 = !DILocation(line: 71, column: 14, scope: !131)
!134 = !DILocation(line: 71, column: 19, scope: !131)
!135 = !DILocation(line: 71, column: 22, scope: !131)
!136 = !DILocation(line: 71, column: 6, scope: !127)
!137 = !DILocation(line: 72, column: 5, scope: !131)
!138 = !DILocation(line: 74, column: 40, scope: !131)
!139 = !DILocation(line: 74, column: 45, scope: !131)
!140 = !DILocation(line: 74, column: 58, scope: !131)
!141 = !DILocation(line: 74, column: 63, scope: !131)
!142 = !DILocation(line: 74, column: 12, scope: !131)
!143 = !DILocation(line: 74, column: 5, scope: !131)
!144 = !DILocation(line: 75, column: 1, scope: !127)
!145 = distinct !DISubprogram(name: "stun_is_request", scope: !33, file: !33, line: 77, type: !75, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!146 = !DILocalVariable(name: "buf", arg: 1, scope: !145, file: !33, line: 77, type: !77)
!147 = !DILocation(line: 77, column: 40, scope: !145)
!148 = !DILocation(line: 78, column: 30, scope: !145)
!149 = !DILocation(line: 78, column: 35, scope: !145)
!150 = !DILocation(line: 78, column: 47, scope: !145)
!151 = !DILocation(line: 78, column: 52, scope: !145)
!152 = !DILocation(line: 78, column: 10, scope: !145)
!153 = !DILocation(line: 78, column: 3, scope: !145)
!154 = distinct !DISubprogram(name: "stun_is_success_response", scope: !33, file: !33, line: 81, type: !75, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!155 = !DILocalVariable(name: "buf", arg: 1, scope: !154, file: !33, line: 81, type: !77)
!156 = !DILocation(line: 81, column: 49, scope: !154)
!157 = !DILocation(line: 82, column: 39, scope: !154)
!158 = !DILocation(line: 82, column: 44, scope: !154)
!159 = !DILocation(line: 82, column: 58, scope: !154)
!160 = !DILocation(line: 82, column: 63, scope: !154)
!161 = !DILocation(line: 82, column: 10, scope: !154)
!162 = !DILocation(line: 82, column: 3, scope: !154)
!163 = distinct !DISubprogram(name: "stun_is_error_response", scope: !33, file: !33, line: 85, type: !164, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!164 = !DISubroutineType(types: !165)
!165 = !{!36, !77, !166, !167, !3}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!168 = !DILocalVariable(name: "buf", arg: 1, scope: !163, file: !33, line: 85, type: !77)
!169 = !DILocation(line: 85, column: 47, scope: !163)
!170 = !DILocalVariable(name: "err_code", arg: 2, scope: !163, file: !33, line: 85, type: !166)
!171 = !DILocation(line: 85, column: 57, scope: !163)
!172 = !DILocalVariable(name: "err_msg", arg: 3, scope: !163, file: !33, line: 85, type: !167)
!173 = !DILocation(line: 85, column: 76, scope: !163)
!174 = !DILocalVariable(name: "err_msg_size", arg: 4, scope: !163, file: !33, line: 85, type: !3)
!175 = !DILocation(line: 85, column: 92, scope: !163)
!176 = !DILocation(line: 86, column: 37, scope: !163)
!177 = !DILocation(line: 86, column: 42, scope: !163)
!178 = !DILocation(line: 86, column: 56, scope: !163)
!179 = !DILocation(line: 86, column: 61, scope: !163)
!180 = !DILocation(line: 86, column: 67, scope: !163)
!181 = !DILocation(line: 86, column: 77, scope: !163)
!182 = !DILocation(line: 86, column: 86, scope: !163)
!183 = !DILocation(line: 86, column: 10, scope: !163)
!184 = !DILocation(line: 86, column: 3, scope: !163)
!185 = distinct !DISubprogram(name: "stun_is_response", scope: !33, file: !33, line: 89, type: !75, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!186 = !DILocalVariable(name: "buf", arg: 1, scope: !185, file: !33, line: 89, type: !77)
!187 = !DILocation(line: 89, column: 41, scope: !185)
!188 = !DILocation(line: 90, column: 31, scope: !185)
!189 = !DILocation(line: 90, column: 36, scope: !185)
!190 = !DILocation(line: 90, column: 49, scope: !185)
!191 = !DILocation(line: 90, column: 54, scope: !185)
!192 = !DILocation(line: 90, column: 10, scope: !185)
!193 = !DILocation(line: 90, column: 3, scope: !185)
!194 = distinct !DISubprogram(name: "stun_is_indication", scope: !33, file: !33, line: 93, type: !75, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!195 = !DILocalVariable(name: "buf", arg: 1, scope: !194, file: !33, line: 93, type: !77)
!196 = !DILocation(line: 93, column: 43, scope: !194)
!197 = !DILocation(line: 94, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !33, line: 94, column: 6)
!199 = !DILocation(line: 94, column: 6, scope: !198)
!200 = !DILocation(line: 94, column: 6, scope: !194)
!201 = !DILocation(line: 94, column: 27, scope: !198)
!202 = !DILocation(line: 95, column: 10, scope: !194)
!203 = !DILocation(line: 95, column: 3, scope: !194)
!204 = !DILocation(line: 96, column: 1, scope: !194)
!205 = distinct !DISubprogram(name: "is_channel_msg", scope: !33, file: !33, line: 63, type: !75, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !53)
!206 = !DILocalVariable(name: "buf", arg: 1, scope: !205, file: !33, line: 63, type: !77)
!207 = !DILocation(line: 63, column: 53, scope: !205)
!208 = !DILocation(line: 64, column: 6, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !33, line: 64, column: 6)
!210 = !DILocation(line: 64, column: 10, scope: !209)
!211 = !DILocation(line: 64, column: 13, scope: !209)
!212 = !DILocation(line: 64, column: 18, scope: !209)
!213 = !DILocation(line: 64, column: 21, scope: !209)
!214 = !DILocation(line: 64, column: 6, scope: !205)
!215 = !DILocation(line: 65, column: 31, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !33, line: 64, column: 25)
!217 = !DILocation(line: 65, column: 36, scope: !216)
!218 = !DILocation(line: 65, column: 50, scope: !216)
!219 = !DILocation(line: 65, column: 55, scope: !216)
!220 = !DILocation(line: 65, column: 12, scope: !216)
!221 = !DILocation(line: 65, column: 5, scope: !216)
!222 = !DILocation(line: 67, column: 3, scope: !205)
!223 = !DILocation(line: 68, column: 1, scope: !205)
!224 = distinct !DISubprogram(name: "stun_get_msg_type", scope: !33, file: !33, line: 102, type: !225, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!225 = !DISubroutineType(types: !226)
!226 = !{!6, !77}
!227 = !DILocalVariable(name: "buf", arg: 1, scope: !224, file: !33, line: 102, type: !77)
!228 = !DILocation(line: 102, column: 47, scope: !224)
!229 = !DILocation(line: 103, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !224, file: !33, line: 103, column: 6)
!231 = !DILocation(line: 103, column: 6, scope: !224)
!232 = !DILocation(line: 103, column: 12, scope: !230)
!233 = !DILocation(line: 104, column: 32, scope: !224)
!234 = !DILocation(line: 104, column: 37, scope: !224)
!235 = !DILocation(line: 104, column: 49, scope: !224)
!236 = !DILocation(line: 104, column: 54, scope: !224)
!237 = !DILocation(line: 104, column: 10, scope: !224)
!238 = !DILocation(line: 104, column: 3, scope: !224)
!239 = !DILocation(line: 105, column: 1, scope: !224)
!240 = distinct !DISubprogram(name: "stun_get_method", scope: !33, file: !33, line: 98, type: !225, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!241 = !DILocalVariable(name: "buf", arg: 1, scope: !240, file: !33, line: 98, type: !77)
!242 = !DILocation(line: 98, column: 45, scope: !240)
!243 = !DILocation(line: 99, column: 29, scope: !240)
!244 = !DILocation(line: 99, column: 34, scope: !240)
!245 = !DILocation(line: 99, column: 48, scope: !240)
!246 = !DILocation(line: 99, column: 53, scope: !240)
!247 = !DILocation(line: 99, column: 9, scope: !240)
!248 = !DILocation(line: 99, column: 2, scope: !240)
!249 = distinct !DISubprogram(name: "stun_init_request", scope: !33, file: !33, line: 114, type: !250, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !6, !37}
!252 = !DILocalVariable(name: "method", arg: 1, scope: !249, file: !33, line: 114, type: !6)
!253 = !DILocation(line: 114, column: 33, scope: !249)
!254 = !DILocalVariable(name: "buf", arg: 2, scope: !249, file: !33, line: 114, type: !37)
!255 = !DILocation(line: 114, column: 54, scope: !249)
!256 = !DILocation(line: 115, column: 39, scope: !249)
!257 = !DILocation(line: 115, column: 21, scope: !249)
!258 = !DILocation(line: 115, column: 48, scope: !249)
!259 = !DILocation(line: 115, column: 3, scope: !249)
!260 = !DILocation(line: 116, column: 1, scope: !249)
!261 = distinct !DISubprogram(name: "stun_init_command", scope: !33, file: !33, line: 109, type: !250, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !53)
!262 = !DILocalVariable(name: "message_type", arg: 1, scope: !261, file: !33, line: 109, type: !6)
!263 = !DILocation(line: 109, column: 40, scope: !261)
!264 = !DILocalVariable(name: "buf", arg: 2, scope: !261, file: !33, line: 109, type: !37)
!265 = !DILocation(line: 109, column: 67, scope: !261)
!266 = !DILocation(line: 110, column: 26, scope: !261)
!267 = !DILocation(line: 110, column: 12, scope: !261)
!268 = !DILocation(line: 110, column: 3, scope: !261)
!269 = !DILocation(line: 110, column: 8, scope: !261)
!270 = !DILocation(line: 110, column: 11, scope: !261)
!271 = !DILocation(line: 111, column: 25, scope: !261)
!272 = !DILocation(line: 111, column: 39, scope: !261)
!273 = !DILocation(line: 111, column: 44, scope: !261)
!274 = !DILocation(line: 111, column: 61, scope: !261)
!275 = !DILocation(line: 111, column: 66, scope: !261)
!276 = !DILocation(line: 111, column: 3, scope: !261)
!277 = !DILocation(line: 112, column: 1, scope: !261)
!278 = distinct !DISubprogram(name: "stun_init_indication", scope: !33, file: !33, line: 118, type: !250, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!279 = !DILocalVariable(name: "method", arg: 1, scope: !278, file: !33, line: 118, type: !6)
!280 = !DILocation(line: 118, column: 36, scope: !278)
!281 = !DILocalVariable(name: "buf", arg: 2, scope: !278, file: !33, line: 118, type: !37)
!282 = !DILocation(line: 118, column: 57, scope: !278)
!283 = !DILocation(line: 119, column: 42, scope: !278)
!284 = !DILocation(line: 119, column: 21, scope: !278)
!285 = !DILocation(line: 119, column: 51, scope: !278)
!286 = !DILocation(line: 119, column: 3, scope: !278)
!287 = !DILocation(line: 120, column: 1, scope: !278)
!288 = distinct !DISubprogram(name: "stun_init_success_response", scope: !33, file: !33, line: 122, type: !289, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !6, !37, !90}
!291 = !DILocalVariable(name: "method", arg: 1, scope: !288, file: !33, line: 122, type: !6)
!292 = !DILocation(line: 122, column: 42, scope: !288)
!293 = !DILocalVariable(name: "buf", arg: 2, scope: !288, file: !33, line: 122, type: !37)
!294 = !DILocation(line: 122, column: 63, scope: !288)
!295 = !DILocalVariable(name: "id", arg: 3, scope: !288, file: !33, line: 122, type: !90)
!296 = !DILocation(line: 122, column: 78, scope: !288)
!297 = !DILocation(line: 123, column: 26, scope: !288)
!298 = !DILocation(line: 123, column: 12, scope: !288)
!299 = !DILocation(line: 123, column: 3, scope: !288)
!300 = !DILocation(line: 123, column: 8, scope: !288)
!301 = !DILocation(line: 123, column: 11, scope: !288)
!302 = !DILocation(line: 124, column: 34, scope: !288)
!303 = !DILocation(line: 124, column: 42, scope: !288)
!304 = !DILocation(line: 124, column: 47, scope: !288)
!305 = !DILocation(line: 124, column: 64, scope: !288)
!306 = !DILocation(line: 124, column: 69, scope: !288)
!307 = !DILocation(line: 124, column: 76, scope: !288)
!308 = !DILocation(line: 124, column: 3, scope: !288)
!309 = !DILocation(line: 125, column: 1, scope: !288)
!310 = distinct !DISubprogram(name: "stun_init_error_response", scope: !33, file: !33, line: 127, type: !311, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !6, !37, !6, !16, !90}
!313 = !DILocalVariable(name: "method", arg: 1, scope: !310, file: !33, line: 127, type: !6)
!314 = !DILocation(line: 127, column: 40, scope: !310)
!315 = !DILocalVariable(name: "buf", arg: 2, scope: !310, file: !33, line: 127, type: !37)
!316 = !DILocation(line: 127, column: 61, scope: !310)
!317 = !DILocalVariable(name: "error_code", arg: 3, scope: !310, file: !33, line: 127, type: !6)
!318 = !DILocation(line: 127, column: 75, scope: !310)
!319 = !DILocalVariable(name: "reason", arg: 4, scope: !310, file: !33, line: 127, type: !16)
!320 = !DILocation(line: 127, column: 102, scope: !310)
!321 = !DILocalVariable(name: "id", arg: 5, scope: !310, file: !33, line: 127, type: !90)
!322 = !DILocation(line: 127, column: 120, scope: !310)
!323 = !DILocation(line: 128, column: 26, scope: !310)
!324 = !DILocation(line: 128, column: 12, scope: !310)
!325 = !DILocation(line: 128, column: 3, scope: !310)
!326 = !DILocation(line: 128, column: 8, scope: !310)
!327 = !DILocation(line: 128, column: 11, scope: !310)
!328 = !DILocation(line: 129, column: 32, scope: !310)
!329 = !DILocation(line: 129, column: 40, scope: !310)
!330 = !DILocation(line: 129, column: 45, scope: !310)
!331 = !DILocation(line: 129, column: 62, scope: !310)
!332 = !DILocation(line: 129, column: 67, scope: !310)
!333 = !DILocation(line: 129, column: 74, scope: !310)
!334 = !DILocation(line: 129, column: 86, scope: !310)
!335 = !DILocation(line: 129, column: 94, scope: !310)
!336 = !DILocation(line: 129, column: 3, scope: !310)
!337 = !DILocation(line: 130, column: 1, scope: !310)
!338 = distinct !DISubprogram(name: "stun_get_command_message_len", scope: !33, file: !33, line: 134, type: !75, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!339 = !DILocalVariable(name: "buf", arg: 1, scope: !338, file: !33, line: 134, type: !77)
!340 = !DILocation(line: 134, column: 53, scope: !338)
!341 = !DILocation(line: 135, column: 43, scope: !338)
!342 = !DILocation(line: 135, column: 48, scope: !338)
!343 = !DILocation(line: 135, column: 62, scope: !338)
!344 = !DILocation(line: 135, column: 67, scope: !338)
!345 = !DILocation(line: 135, column: 10, scope: !338)
!346 = !DILocation(line: 135, column: 3, scope: !338)
!347 = distinct !DISubprogram(name: "stun_init_channel_message", scope: !33, file: !33, line: 140, type: !348, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!348 = !DISubroutineType(types: !349)
!349 = !{!36, !6, !37, !36, !36}
!350 = !DILocalVariable(name: "chnumber", arg: 1, scope: !347, file: !33, line: 140, type: !6)
!351 = !DILocation(line: 140, column: 40, scope: !347)
!352 = !DILocalVariable(name: "buf", arg: 2, scope: !347, file: !33, line: 140, type: !37)
!353 = !DILocation(line: 140, column: 63, scope: !347)
!354 = !DILocalVariable(name: "length", arg: 3, scope: !347, file: !33, line: 140, type: !36)
!355 = !DILocation(line: 140, column: 72, scope: !347)
!356 = !DILocalVariable(name: "do_padding", arg: 4, scope: !347, file: !33, line: 140, type: !36)
!357 = !DILocation(line: 140, column: 84, scope: !347)
!358 = !DILocation(line: 141, column: 40, scope: !347)
!359 = !DILocation(line: 141, column: 50, scope: !347)
!360 = !DILocation(line: 141, column: 55, scope: !347)
!361 = !DILocation(line: 141, column: 72, scope: !347)
!362 = !DILocation(line: 141, column: 77, scope: !347)
!363 = !DILocation(line: 141, column: 84, scope: !347)
!364 = !DILocation(line: 141, column: 92, scope: !347)
!365 = !DILocation(line: 141, column: 10, scope: !347)
!366 = !DILocation(line: 141, column: 3, scope: !347)
!367 = distinct !DISubprogram(name: "stun_is_channel_message", scope: !33, file: !33, line: 144, type: !368, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!368 = !DISubroutineType(types: !369)
!369 = !{!36, !37, !370, !36}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!371 = !DILocalVariable(name: "buf", arg: 1, scope: !367, file: !33, line: 144, type: !37)
!372 = !DILocation(line: 144, column: 42, scope: !367)
!373 = !DILocalVariable(name: "chnumber", arg: 2, scope: !367, file: !33, line: 144, type: !370)
!374 = !DILocation(line: 144, column: 57, scope: !367)
!375 = !DILocalVariable(name: "is_padding_mandatory", arg: 3, scope: !367, file: !33, line: 144, type: !36)
!376 = !DILocation(line: 144, column: 71, scope: !367)
!377 = !DILocation(line: 145, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !367, file: !33, line: 145, column: 6)
!379 = !DILocation(line: 145, column: 6, scope: !367)
!380 = !DILocation(line: 145, column: 12, scope: !378)
!381 = !DILocalVariable(name: "blen", scope: !367, file: !33, line: 146, type: !3)
!382 = !DILocation(line: 146, column: 10, scope: !367)
!383 = !DILocation(line: 146, column: 25, scope: !367)
!384 = !DILocation(line: 146, column: 30, scope: !367)
!385 = !DILocalVariable(name: "ret", scope: !367, file: !33, line: 147, type: !36)
!386 = !DILocation(line: 147, column: 7, scope: !367)
!387 = !DILocation(line: 147, column: 41, scope: !367)
!388 = !DILocation(line: 147, column: 46, scope: !367)
!389 = !DILocation(line: 147, column: 58, scope: !367)
!390 = !DILocation(line: 147, column: 68, scope: !367)
!391 = !DILocation(line: 147, column: 13, scope: !367)
!392 = !DILocation(line: 148, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !367, file: !33, line: 148, column: 6)
!394 = !DILocation(line: 148, column: 6, scope: !367)
!395 = !DILocation(line: 149, column: 22, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !33, line: 148, column: 11)
!397 = !DILocation(line: 149, column: 4, scope: !396)
!398 = !DILocation(line: 149, column: 9, scope: !396)
!399 = !DILocation(line: 149, column: 12, scope: !396)
!400 = !DILocation(line: 150, column: 3, scope: !396)
!401 = !DILocation(line: 151, column: 10, scope: !367)
!402 = !DILocation(line: 151, column: 3, scope: !367)
!403 = !DILocation(line: 152, column: 1, scope: !367)
!404 = distinct !DISubprogram(name: "stun_set_allocate_request", scope: !33, file: !33, line: 156, type: !405, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!405 = !DISubroutineType(types: !406)
!406 = !{!36, !37, !407, !36, !36, !18, !36, !21, !36}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !409)
!409 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!410 = !DILocalVariable(name: "buf", arg: 1, scope: !404, file: !33, line: 156, type: !37)
!411 = !DILocation(line: 156, column: 44, scope: !404)
!412 = !DILocalVariable(name: "lifetime", arg: 2, scope: !404, file: !33, line: 156, type: !407)
!413 = !DILocation(line: 156, column: 58, scope: !404)
!414 = !DILocalVariable(name: "af4", arg: 3, scope: !404, file: !33, line: 156, type: !36)
!415 = !DILocation(line: 156, column: 72, scope: !404)
!416 = !DILocalVariable(name: "af6", arg: 4, scope: !404, file: !33, line: 156, type: !36)
!417 = !DILocation(line: 156, column: 81, scope: !404)
!418 = !DILocalVariable(name: "transport", arg: 5, scope: !404, file: !33, line: 156, type: !18)
!419 = !DILocation(line: 156, column: 94, scope: !404)
!420 = !DILocalVariable(name: "mobile", arg: 6, scope: !404, file: !33, line: 156, type: !36)
!421 = !DILocation(line: 156, column: 109, scope: !404)
!422 = !DILocalVariable(name: "rt", arg: 7, scope: !404, file: !33, line: 156, type: !21)
!423 = !DILocation(line: 156, column: 129, scope: !404)
!424 = !DILocalVariable(name: "ep", arg: 8, scope: !404, file: !33, line: 156, type: !36)
!425 = !DILocation(line: 156, column: 137, scope: !404)
!426 = !DILocation(line: 157, column: 40, scope: !404)
!427 = !DILocation(line: 157, column: 45, scope: !404)
!428 = !DILocation(line: 157, column: 62, scope: !404)
!429 = !DILocation(line: 157, column: 67, scope: !404)
!430 = !DILocation(line: 157, column: 74, scope: !404)
!431 = !DILocation(line: 157, column: 84, scope: !404)
!432 = !DILocation(line: 157, column: 89, scope: !404)
!433 = !DILocation(line: 157, column: 94, scope: !404)
!434 = !DILocation(line: 157, column: 105, scope: !404)
!435 = !DILocation(line: 157, column: 113, scope: !404)
!436 = !DILocation(line: 157, column: 117, scope: !404)
!437 = !DILocation(line: 157, column: 10, scope: !404)
!438 = !DILocation(line: 157, column: 3, scope: !404)
!439 = distinct !DISubprogram(name: "stun_set_allocate_response", scope: !33, file: !33, line: 160, type: !440, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!440 = !DISubroutineType(types: !441)
!441 = !{!36, !37, !90, !442, !442, !442, !407, !407, !36, !16, !496, !498}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !445, line: 48, baseType: !446)
!445 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !445, line: 44, size: 224, elements: !447)
!447 = !{!448, !459, !475}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !446, file: !445, line: 45, baseType: !449, size: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !450, line: 180, size: 128, elements: !451)
!450 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!451 = !{!452, !455}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !449, file: !450, line: 182, baseType: !453, size: 16)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !454, line: 28, baseType: !10)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !449, file: !450, line: 183, baseType: !456, size: 112, offset: 16)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 112, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 14)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !446, file: !445, line: 46, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !461, line: 245, size: 128, elements: !462)
!461 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!462 = !{!463, !464, !466, !471}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !460, file: !461, line: 247, baseType: !453, size: 16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !460, file: !461, line: 248, baseType: !465, size: 16, offset: 16)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !461, line: 123, baseType: !6)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !460, file: !461, line: 249, baseType: !467, size: 32, offset: 32)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !461, line: 31, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !467, file: !461, line: 33, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !461, line: 30, baseType: !407)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !460, file: !461, line: 252, baseType: !472, size: 64, offset: 64)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 8)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !446, file: !445, line: 47, baseType: !476, size: 224)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !461, line: 260, size: 224, elements: !477)
!477 = !{!478, !479, !480, !481, !495}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !476, file: !461, line: 262, baseType: !453, size: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !476, file: !461, line: 263, baseType: !465, size: 16, offset: 16)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !476, file: !461, line: 264, baseType: !407, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !476, file: !461, line: 265, baseType: !482, size: 128, offset: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !461, line: 219, size: 128, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !482, file: !461, line: 226, baseType: !485, size: 128)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !461, line: 221, size: 128, elements: !486)
!486 = !{!487, !491, !493}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !485, file: !461, line: 223, baseType: !488, size: 128)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 16)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !485, file: !461, line: 224, baseType: !492, size: 128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !473)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !485, file: !461, line: 225, baseType: !494, size: 128)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 128, elements: !44)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !476, file: !461, line: 266, baseType: !407, size: 32, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !5)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!499 = !DILocalVariable(name: "buf", arg: 1, scope: !439, file: !33, line: 160, type: !37)
!500 = !DILocation(line: 160, column: 45, scope: !439)
!501 = !DILocalVariable(name: "tid", arg: 2, scope: !439, file: !33, line: 160, type: !90)
!502 = !DILocation(line: 160, column: 60, scope: !439)
!503 = !DILocalVariable(name: "relayed_addr1", arg: 3, scope: !439, file: !33, line: 161, type: !442)
!504 = !DILocation(line: 161, column: 27, scope: !439)
!505 = !DILocalVariable(name: "relayed_addr2", arg: 4, scope: !439, file: !33, line: 161, type: !442)
!506 = !DILocation(line: 161, column: 58, scope: !439)
!507 = !DILocalVariable(name: "reflexive_addr", arg: 5, scope: !439, file: !33, line: 162, type: !442)
!508 = !DILocation(line: 162, column: 27, scope: !439)
!509 = !DILocalVariable(name: "lifetime", arg: 6, scope: !439, file: !33, line: 163, type: !407)
!510 = !DILocation(line: 163, column: 20, scope: !439)
!511 = !DILocalVariable(name: "max_lifetime", arg: 7, scope: !439, file: !33, line: 163, type: !407)
!512 = !DILocation(line: 163, column: 39, scope: !439)
!513 = !DILocalVariable(name: "error_code", arg: 8, scope: !439, file: !33, line: 163, type: !36)
!514 = !DILocation(line: 163, column: 57, scope: !439)
!515 = !DILocalVariable(name: "reason", arg: 9, scope: !439, file: !33, line: 163, type: !16)
!516 = !DILocation(line: 163, column: 84, scope: !439)
!517 = !DILocalVariable(name: "reservation_token", arg: 10, scope: !439, file: !33, line: 164, type: !496)
!518 = !DILocation(line: 164, column: 20, scope: !439)
!519 = !DILocalVariable(name: "mobile_id", arg: 11, scope: !439, file: !33, line: 164, type: !498)
!520 = !DILocation(line: 164, column: 45, scope: !439)
!521 = !DILocation(line: 166, column: 41, scope: !439)
!522 = !DILocation(line: 166, column: 46, scope: !439)
!523 = !DILocation(line: 166, column: 63, scope: !439)
!524 = !DILocation(line: 166, column: 68, scope: !439)
!525 = !DILocation(line: 166, column: 75, scope: !439)
!526 = !DILocation(line: 167, column: 6, scope: !439)
!527 = !DILocation(line: 167, column: 21, scope: !439)
!528 = !DILocation(line: 167, column: 36, scope: !439)
!529 = !DILocation(line: 168, column: 6, scope: !439)
!530 = !DILocation(line: 168, column: 16, scope: !439)
!531 = !DILocation(line: 168, column: 30, scope: !439)
!532 = !DILocation(line: 168, column: 42, scope: !439)
!533 = !DILocation(line: 169, column: 6, scope: !439)
!534 = !DILocation(line: 169, column: 25, scope: !439)
!535 = !DILocation(line: 166, column: 10, scope: !439)
!536 = !DILocation(line: 166, column: 3, scope: !439)
!537 = distinct !DISubprogram(name: "stun_set_channel_bind_request", scope: !33, file: !33, line: 175, type: !538, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!538 = !DISubroutineType(types: !539)
!539 = !{!6, !37, !442, !6}
!540 = !DILocalVariable(name: "buf", arg: 1, scope: !537, file: !33, line: 175, type: !37)
!541 = !DILocation(line: 175, column: 53, scope: !537)
!542 = !DILocalVariable(name: "peer_addr", arg: 2, scope: !537, file: !33, line: 176, type: !442)
!543 = !DILocation(line: 176, column: 28, scope: !537)
!544 = !DILocalVariable(name: "channel_number", arg: 3, scope: !537, file: !33, line: 176, type: !6)
!545 = !DILocation(line: 176, column: 48, scope: !537)
!546 = !DILocation(line: 178, column: 44, scope: !537)
!547 = !DILocation(line: 178, column: 49, scope: !537)
!548 = !DILocation(line: 178, column: 65, scope: !537)
!549 = !DILocation(line: 178, column: 70, scope: !537)
!550 = !DILocation(line: 178, column: 77, scope: !537)
!551 = !DILocation(line: 178, column: 88, scope: !537)
!552 = !DILocation(line: 178, column: 10, scope: !537)
!553 = !DILocation(line: 178, column: 3, scope: !537)
!554 = distinct !DISubprogram(name: "stun_set_channel_bind_response", scope: !33, file: !33, line: 181, type: !555, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !37, !90, !36, !16}
!557 = !DILocalVariable(name: "buf", arg: 1, scope: !554, file: !33, line: 181, type: !37)
!558 = !DILocation(line: 181, column: 50, scope: !554)
!559 = !DILocalVariable(name: "tid", arg: 2, scope: !554, file: !33, line: 181, type: !90)
!560 = !DILocation(line: 181, column: 65, scope: !554)
!561 = !DILocalVariable(name: "error_code", arg: 3, scope: !554, file: !33, line: 181, type: !36)
!562 = !DILocation(line: 181, column: 74, scope: !554)
!563 = !DILocalVariable(name: "reason", arg: 4, scope: !554, file: !33, line: 181, type: !16)
!564 = !DILocation(line: 181, column: 101, scope: !554)
!565 = !DILocation(line: 182, column: 38, scope: !554)
!566 = !DILocation(line: 182, column: 43, scope: !554)
!567 = !DILocation(line: 182, column: 60, scope: !554)
!568 = !DILocation(line: 182, column: 65, scope: !554)
!569 = !DILocation(line: 182, column: 72, scope: !554)
!570 = !DILocation(line: 182, column: 77, scope: !554)
!571 = !DILocation(line: 182, column: 89, scope: !554)
!572 = !DILocation(line: 182, column: 3, scope: !554)
!573 = !DILocation(line: 183, column: 1, scope: !554)
!574 = distinct !DISubprogram(name: "stun_attr_get_first", scope: !33, file: !33, line: 187, type: !575, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!575 = !DISubroutineType(types: !576)
!576 = !{!577, !77}
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_attr_ref", file: !92, line: 71, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!580 = !DILocalVariable(name: "buf", arg: 1, scope: !574, file: !33, line: 187, type: !77)
!581 = !DILocation(line: 187, column: 54, scope: !574)
!582 = !DILocation(line: 188, column: 34, scope: !574)
!583 = !DILocation(line: 188, column: 39, scope: !574)
!584 = !DILocation(line: 188, column: 53, scope: !574)
!585 = !DILocation(line: 188, column: 58, scope: !574)
!586 = !DILocation(line: 188, column: 10, scope: !574)
!587 = !DILocation(line: 188, column: 3, scope: !574)
!588 = distinct !DISubprogram(name: "stun_attr_get_next", scope: !33, file: !33, line: 191, type: !589, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!589 = !DISubroutineType(types: !590)
!590 = !{!577, !77, !577}
!591 = !DILocalVariable(name: "buf", arg: 1, scope: !588, file: !33, line: 191, type: !77)
!592 = !DILocation(line: 191, column: 53, scope: !588)
!593 = !DILocalVariable(name: "prev", arg: 2, scope: !588, file: !33, line: 191, type: !577)
!594 = !DILocation(line: 191, column: 72, scope: !588)
!595 = !DILocation(line: 192, column: 33, scope: !588)
!596 = !DILocation(line: 192, column: 38, scope: !588)
!597 = !DILocation(line: 192, column: 52, scope: !588)
!598 = !DILocation(line: 192, column: 57, scope: !588)
!599 = !DILocation(line: 192, column: 63, scope: !588)
!600 = !DILocation(line: 192, column: 10, scope: !588)
!601 = !DILocation(line: 192, column: 3, scope: !588)
!602 = distinct !DISubprogram(name: "stun_attr_add", scope: !33, file: !33, line: 195, type: !603, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!603 = !DISubroutineType(types: !604)
!604 = !{!36, !37, !6, !21, !36}
!605 = !DILocalVariable(name: "buf", arg: 1, scope: !602, file: !33, line: 195, type: !37)
!606 = !DILocation(line: 195, column: 32, scope: !602)
!607 = !DILocalVariable(name: "attr", arg: 2, scope: !602, file: !33, line: 195, type: !6)
!608 = !DILocation(line: 195, column: 46, scope: !602)
!609 = !DILocalVariable(name: "avalue", arg: 3, scope: !602, file: !33, line: 195, type: !21)
!610 = !DILocation(line: 195, column: 64, scope: !602)
!611 = !DILocalVariable(name: "alen", arg: 4, scope: !602, file: !33, line: 195, type: !36)
!612 = !DILocation(line: 195, column: 76, scope: !602)
!613 = !DILocation(line: 196, column: 28, scope: !602)
!614 = !DILocation(line: 196, column: 33, scope: !602)
!615 = !DILocation(line: 196, column: 50, scope: !602)
!616 = !DILocation(line: 196, column: 55, scope: !602)
!617 = !DILocation(line: 196, column: 62, scope: !602)
!618 = !DILocation(line: 196, column: 85, scope: !602)
!619 = !DILocation(line: 196, column: 93, scope: !602)
!620 = !DILocation(line: 196, column: 10, scope: !602)
!621 = !DILocation(line: 196, column: 3, scope: !602)
!622 = distinct !DISubprogram(name: "stun_attr_add_channel_number", scope: !33, file: !33, line: 199, type: !623, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!623 = !DISubroutineType(types: !624)
!624 = !{!36, !37, !6}
!625 = !DILocalVariable(name: "buf", arg: 1, scope: !622, file: !33, line: 199, type: !37)
!626 = !DILocation(line: 199, column: 47, scope: !622)
!627 = !DILocalVariable(name: "chnumber", arg: 2, scope: !622, file: !33, line: 199, type: !6)
!628 = !DILocation(line: 199, column: 61, scope: !622)
!629 = !DILocation(line: 200, column: 43, scope: !622)
!630 = !DILocation(line: 200, column: 48, scope: !622)
!631 = !DILocation(line: 200, column: 66, scope: !622)
!632 = !DILocation(line: 200, column: 71, scope: !622)
!633 = !DILocation(line: 200, column: 78, scope: !622)
!634 = !DILocation(line: 200, column: 10, scope: !622)
!635 = !DILocation(line: 200, column: 3, scope: !622)
!636 = distinct !DISubprogram(name: "stun_attr_add_addr", scope: !33, file: !33, line: 203, type: !637, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!637 = !DISubroutineType(types: !638)
!638 = !{!36, !37, !6, !442}
!639 = !DILocalVariable(name: "buf", arg: 1, scope: !636, file: !33, line: 203, type: !37)
!640 = !DILocation(line: 203, column: 37, scope: !636)
!641 = !DILocalVariable(name: "attr_type", arg: 2, scope: !636, file: !33, line: 203, type: !6)
!642 = !DILocation(line: 203, column: 50, scope: !636)
!643 = !DILocalVariable(name: "ca", arg: 3, scope: !636, file: !33, line: 203, type: !442)
!644 = !DILocation(line: 203, column: 77, scope: !636)
!645 = !DILocation(line: 204, column: 33, scope: !636)
!646 = !DILocation(line: 204, column: 38, scope: !636)
!647 = !DILocation(line: 204, column: 54, scope: !636)
!648 = !DILocation(line: 204, column: 59, scope: !636)
!649 = !DILocation(line: 204, column: 66, scope: !636)
!650 = !DILocation(line: 204, column: 77, scope: !636)
!651 = !DILocation(line: 204, column: 10, scope: !636)
!652 = !DILocation(line: 204, column: 3, scope: !636)
!653 = distinct !DISubprogram(name: "stun_attr_get_addr", scope: !33, file: !33, line: 207, type: !654, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!654 = !DISubroutineType(types: !655)
!655 = !{!36, !77, !577, !656, !442}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!657 = !DILocalVariable(name: "buf", arg: 1, scope: !653, file: !33, line: 207, type: !77)
!658 = !DILocation(line: 207, column: 43, scope: !653)
!659 = !DILocalVariable(name: "attr", arg: 2, scope: !653, file: !33, line: 207, type: !577)
!660 = !DILocation(line: 207, column: 62, scope: !653)
!661 = !DILocalVariable(name: "ca", arg: 3, scope: !653, file: !33, line: 207, type: !656)
!662 = !DILocation(line: 207, column: 78, scope: !653)
!663 = !DILocalVariable(name: "default_addr", arg: 4, scope: !653, file: !33, line: 208, type: !442)
!664 = !DILocation(line: 208, column: 26, scope: !653)
!665 = !DILocation(line: 210, column: 33, scope: !653)
!666 = !DILocation(line: 210, column: 38, scope: !653)
!667 = !DILocation(line: 210, column: 52, scope: !653)
!668 = !DILocation(line: 210, column: 57, scope: !653)
!669 = !DILocation(line: 210, column: 63, scope: !653)
!670 = !DILocation(line: 210, column: 69, scope: !653)
!671 = !DILocation(line: 210, column: 73, scope: !653)
!672 = !DILocation(line: 210, column: 10, scope: !653)
!673 = !DILocation(line: 210, column: 3, scope: !653)
!674 = distinct !DISubprogram(name: "stun_attr_get_first_addr", scope: !33, file: !33, line: 213, type: !675, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!675 = !DISubroutineType(types: !676)
!676 = !{!36, !77, !6, !656, !442}
!677 = !DILocalVariable(name: "buf", arg: 1, scope: !674, file: !33, line: 213, type: !77)
!678 = !DILocation(line: 213, column: 49, scope: !674)
!679 = !DILocalVariable(name: "attr_type", arg: 2, scope: !674, file: !33, line: 213, type: !6)
!680 = !DILocation(line: 213, column: 63, scope: !674)
!681 = !DILocalVariable(name: "ca", arg: 3, scope: !674, file: !33, line: 213, type: !656)
!682 = !DILocation(line: 213, column: 84, scope: !674)
!683 = !DILocalVariable(name: "default_addr", arg: 4, scope: !674, file: !33, line: 214, type: !442)
!684 = !DILocation(line: 214, column: 25, scope: !674)
!685 = !DILocation(line: 216, column: 39, scope: !674)
!686 = !DILocation(line: 216, column: 44, scope: !674)
!687 = !DILocation(line: 216, column: 58, scope: !674)
!688 = !DILocation(line: 216, column: 63, scope: !674)
!689 = !DILocation(line: 216, column: 69, scope: !674)
!690 = !DILocation(line: 216, column: 80, scope: !674)
!691 = !DILocation(line: 216, column: 84, scope: !674)
!692 = !DILocation(line: 216, column: 10, scope: !674)
!693 = !DILocation(line: 216, column: 3, scope: !674)
!694 = distinct !DISubprogram(name: "stun_attr_add_even_port", scope: !33, file: !33, line: 219, type: !695, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!695 = !DISubroutineType(types: !696)
!696 = !{!36, !37, !18}
!697 = !DILocalVariable(name: "buf", arg: 1, scope: !694, file: !33, line: 219, type: !37)
!698 = !DILocation(line: 219, column: 42, scope: !694)
!699 = !DILocalVariable(name: "value", arg: 2, scope: !694, file: !33, line: 219, type: !18)
!700 = !DILocation(line: 219, column: 55, scope: !694)
!701 = !DILocation(line: 220, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !694, file: !33, line: 220, column: 6)
!703 = !DILocation(line: 220, column: 6, scope: !694)
!704 = !DILocation(line: 220, column: 18, scope: !702)
!705 = !DILocation(line: 220, column: 13, scope: !702)
!706 = !DILocation(line: 221, column: 24, scope: !694)
!707 = !DILocation(line: 221, column: 10, scope: !694)
!708 = !DILocation(line: 221, column: 3, scope: !694)
!709 = distinct !DISubprogram(name: "stun_attr_get_first_channel_number", scope: !33, file: !33, line: 224, type: !225, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!710 = !DILocalVariable(name: "buf", arg: 1, scope: !709, file: !33, line: 224, type: !77)
!711 = !DILocation(line: 224, column: 64, scope: !709)
!712 = !DILocation(line: 225, column: 49, scope: !709)
!713 = !DILocation(line: 225, column: 54, scope: !709)
!714 = !DILocation(line: 225, column: 68, scope: !709)
!715 = !DILocation(line: 225, column: 73, scope: !709)
!716 = !DILocation(line: 225, column: 10, scope: !709)
!717 = !DILocation(line: 225, column: 3, scope: !709)
!718 = distinct !DISubprogram(name: "stun_attr_get_first_by_type", scope: !33, file: !33, line: 228, type: !719, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!719 = !DISubroutineType(types: !720)
!720 = !{!577, !77, !6}
!721 = !DILocalVariable(name: "buf", arg: 1, scope: !718, file: !33, line: 228, type: !77)
!722 = !DILocation(line: 228, column: 62, scope: !718)
!723 = !DILocalVariable(name: "attr_type", arg: 2, scope: !718, file: !33, line: 228, type: !6)
!724 = !DILocation(line: 228, column: 76, scope: !718)
!725 = !DILocation(line: 229, column: 42, scope: !718)
!726 = !DILocation(line: 229, column: 47, scope: !718)
!727 = !DILocation(line: 229, column: 61, scope: !718)
!728 = !DILocation(line: 229, column: 66, scope: !718)
!729 = !DILocation(line: 229, column: 72, scope: !718)
!730 = !DILocation(line: 229, column: 10, scope: !718)
!731 = !DILocation(line: 229, column: 3, scope: !718)
!732 = distinct !DISubprogram(name: "stun_set_binding_request", scope: !33, file: !33, line: 234, type: !733, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !37}
!735 = !DILocalVariable(name: "buf", arg: 1, scope: !732, file: !33, line: 234, type: !37)
!736 = !DILocation(line: 234, column: 44, scope: !732)
!737 = !DILocation(line: 235, column: 32, scope: !732)
!738 = !DILocation(line: 235, column: 37, scope: !732)
!739 = !DILocation(line: 235, column: 54, scope: !732)
!740 = !DILocation(line: 235, column: 59, scope: !732)
!741 = !DILocation(line: 235, column: 3, scope: !732)
!742 = !DILocation(line: 236, column: 1, scope: !732)
!743 = distinct !DISubprogram(name: "stun_set_binding_response", scope: !33, file: !33, line: 238, type: !744, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!744 = !DISubroutineType(types: !745)
!745 = !{!36, !37, !90, !442, !36, !16}
!746 = !DILocalVariable(name: "buf", arg: 1, scope: !743, file: !33, line: 238, type: !37)
!747 = !DILocation(line: 238, column: 44, scope: !743)
!748 = !DILocalVariable(name: "tid", arg: 2, scope: !743, file: !33, line: 238, type: !90)
!749 = !DILocation(line: 238, column: 59, scope: !743)
!750 = !DILocalVariable(name: "reflexive_addr", arg: 3, scope: !743, file: !33, line: 239, type: !442)
!751 = !DILocation(line: 239, column: 26, scope: !743)
!752 = !DILocalVariable(name: "error_code", arg: 4, scope: !743, file: !33, line: 239, type: !36)
!753 = !DILocation(line: 239, column: 46, scope: !743)
!754 = !DILocalVariable(name: "reason", arg: 5, scope: !743, file: !33, line: 239, type: !16)
!755 = !DILocation(line: 239, column: 73, scope: !743)
!756 = !DILocation(line: 240, column: 40, scope: !743)
!757 = !DILocation(line: 240, column: 45, scope: !743)
!758 = !DILocation(line: 240, column: 62, scope: !743)
!759 = !DILocation(line: 240, column: 67, scope: !743)
!760 = !DILocation(line: 240, column: 74, scope: !743)
!761 = !DILocation(line: 241, column: 12, scope: !743)
!762 = !DILocation(line: 241, column: 28, scope: !743)
!763 = !DILocation(line: 241, column: 40, scope: !743)
!764 = !DILocation(line: 240, column: 10, scope: !743)
!765 = !DILocation(line: 240, column: 3, scope: !743)
!766 = distinct !DISubprogram(name: "stun_prepare_binding_request", scope: !33, file: !33, line: 245, type: !733, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!767 = !DILocalVariable(name: "buf", arg: 1, scope: !766, file: !33, line: 245, type: !37)
!768 = !DILocation(line: 245, column: 48, scope: !766)
!769 = !DILocation(line: 246, column: 32, scope: !766)
!770 = !DILocation(line: 246, column: 37, scope: !766)
!771 = !DILocation(line: 246, column: 54, scope: !766)
!772 = !DILocation(line: 246, column: 59, scope: !766)
!773 = !DILocation(line: 246, column: 3, scope: !766)
!774 = !DILocation(line: 247, column: 1, scope: !766)
!775 = distinct !DISubprogram(name: "stun_is_binding_response", scope: !33, file: !33, line: 249, type: !75, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!776 = !DILocalVariable(name: "buf", arg: 1, scope: !775, file: !33, line: 249, type: !77)
!777 = !DILocation(line: 249, column: 49, scope: !775)
!778 = !DILocation(line: 250, column: 39, scope: !775)
!779 = !DILocation(line: 250, column: 44, scope: !775)
!780 = !DILocation(line: 250, column: 58, scope: !775)
!781 = !DILocation(line: 250, column: 63, scope: !775)
!782 = !DILocation(line: 250, column: 10, scope: !775)
!783 = !DILocation(line: 250, column: 3, scope: !775)
