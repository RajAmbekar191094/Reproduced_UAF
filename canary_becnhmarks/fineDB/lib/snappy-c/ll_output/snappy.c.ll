; ModuleID = './snappy.c'
source_filename = "./snappy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { ptr, i64 }
%struct.snappy_env = type { ptr, ptr, ptr }
%struct.snappy_decompressor = type { ptr, ptr, ptr, i32, i8, [5 x i8] }
%struct.source = type { ptr, i32, i32, i32, i64 }

@wordmask = internal unnamed_addr constant [5 x i32] [i32 0, i32 255, i32 65535, i32 16777215, i32 -1], align 16, !dbg !0
@char_table = internal unnamed_addr constant [256 x i16] [i16 1, i16 2052, i16 4097, i16 8193, i16 2, i16 2053, i16 4098, i16 8194, i16 3, i16 2054, i16 4099, i16 8195, i16 4, i16 2055, i16 4100, i16 8196, i16 5, i16 2056, i16 4101, i16 8197, i16 6, i16 2057, i16 4102, i16 8198, i16 7, i16 2058, i16 4103, i16 8199, i16 8, i16 2059, i16 4104, i16 8200, i16 9, i16 2308, i16 4105, i16 8201, i16 10, i16 2309, i16 4106, i16 8202, i16 11, i16 2310, i16 4107, i16 8203, i16 12, i16 2311, i16 4108, i16 8204, i16 13, i16 2312, i16 4109, i16 8205, i16 14, i16 2313, i16 4110, i16 8206, i16 15, i16 2314, i16 4111, i16 8207, i16 16, i16 2315, i16 4112, i16 8208, i16 17, i16 2564, i16 4113, i16 8209, i16 18, i16 2565, i16 4114, i16 8210, i16 19, i16 2566, i16 4115, i16 8211, i16 20, i16 2567, i16 4116, i16 8212, i16 21, i16 2568, i16 4117, i16 8213, i16 22, i16 2569, i16 4118, i16 8214, i16 23, i16 2570, i16 4119, i16 8215, i16 24, i16 2571, i16 4120, i16 8216, i16 25, i16 2820, i16 4121, i16 8217, i16 26, i16 2821, i16 4122, i16 8218, i16 27, i16 2822, i16 4123, i16 8219, i16 28, i16 2823, i16 4124, i16 8220, i16 29, i16 2824, i16 4125, i16 8221, i16 30, i16 2825, i16 4126, i16 8222, i16 31, i16 2826, i16 4127, i16 8223, i16 32, i16 2827, i16 4128, i16 8224, i16 33, i16 3076, i16 4129, i16 8225, i16 34, i16 3077, i16 4130, i16 8226, i16 35, i16 3078, i16 4131, i16 8227, i16 36, i16 3079, i16 4132, i16 8228, i16 37, i16 3080, i16 4133, i16 8229, i16 38, i16 3081, i16 4134, i16 8230, i16 39, i16 3082, i16 4135, i16 8231, i16 40, i16 3083, i16 4136, i16 8232, i16 41, i16 3332, i16 4137, i16 8233, i16 42, i16 3333, i16 4138, i16 8234, i16 43, i16 3334, i16 4139, i16 8235, i16 44, i16 3335, i16 4140, i16 8236, i16 45, i16 3336, i16 4141, i16 8237, i16 46, i16 3337, i16 4142, i16 8238, i16 47, i16 3338, i16 4143, i16 8239, i16 48, i16 3339, i16 4144, i16 8240, i16 49, i16 3588, i16 4145, i16 8241, i16 50, i16 3589, i16 4146, i16 8242, i16 51, i16 3590, i16 4147, i16 8243, i16 52, i16 3591, i16 4148, i16 8244, i16 53, i16 3592, i16 4149, i16 8245, i16 54, i16 3593, i16 4150, i16 8246, i16 55, i16 3594, i16 4151, i16 8247, i16 56, i16 3595, i16 4152, i16 8248, i16 57, i16 3844, i16 4153, i16 8249, i16 58, i16 3845, i16 4154, i16 8250, i16 59, i16 3846, i16 4155, i16 8251, i16 60, i16 3847, i16 4156, i16 8252, i16 2049, i16 3848, i16 4157, i16 8253, i16 4097, i16 3849, i16 4158, i16 8254, i16 6145, i16 3850, i16 4159, i16 8255, i16 8193, i16 3851, i16 4160, i16 8256], align 16, !dbg !44

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @snappy_max_compressed_length(i64 noundef %0) local_unnamed_addr #0 !dbg !60 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !67, metadata !DIExpression()), !dbg !68
  %2 = add i64 %0, 32, !dbg !69
  %3 = udiv i64 %0, 6, !dbg !70
  %4 = add i64 %2, %3, !dbg !71
  ret i64 %4, !dbg !72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define zeroext i1 @snappy_uncompressed_length(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !73 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !79, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i64 %1, metadata !80, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata ptr %2, metadata !81, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i32 0, metadata !82, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %1), metadata !83, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !84
  call void @llvm.dbg.value(metadata ptr %0, metadata !85, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %1), metadata !90, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  call void @llvm.dbg.value(metadata ptr undef, metadata !91, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr %0, metadata !92, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %1), metadata !93, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  %4 = icmp sgt i64 %1, 0, !dbg !100
  br i1 %4, label %5, label %52, !dbg !102

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !103
  call void @llvm.dbg.value(metadata ptr %6, metadata !92, metadata !DIExpression()), !dbg !97
  %7 = load i8, ptr %0, align 1, !dbg !104, !tbaa !105
  call void @llvm.dbg.value(metadata i8 %7, metadata !94, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !97
  %8 = and i8 %7, 127, !dbg !108
  %9 = zext i8 %8 to i32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %9, metadata !95, metadata !DIExpression()), !dbg !97
  %10 = icmp sgt i8 %7, -1, !dbg !109
  br i1 %10, label %49, label %11, !dbg !111

11:                                               ; preds = %5
  %12 = icmp ugt i64 %1, 1, !dbg !112
  br i1 %12, label %13, label %52, !dbg !114

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !115
  call void @llvm.dbg.value(metadata ptr %14, metadata !92, metadata !DIExpression()), !dbg !97
  %15 = load i8, ptr %6, align 1, !dbg !116, !tbaa !105
  %16 = zext i8 %15 to i32, !dbg !116
  call void @llvm.dbg.value(metadata i32 %16, metadata !94, metadata !DIExpression()), !dbg !97
  %17 = shl nuw nsw i32 %16, 7, !dbg !117
  %18 = and i32 %17, 16256, !dbg !117
  %19 = or i32 %18, %9, !dbg !118
  call void @llvm.dbg.value(metadata i32 %19, metadata !95, metadata !DIExpression()), !dbg !97
  %20 = icmp sgt i8 %15, -1, !dbg !119
  br i1 %20, label %49, label %21, !dbg !121

21:                                               ; preds = %13
  %22 = icmp ugt i64 %1, 2, !dbg !122
  br i1 %22, label %23, label %52, !dbg !124

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !125
  call void @llvm.dbg.value(metadata ptr %24, metadata !92, metadata !DIExpression()), !dbg !97
  %25 = load i8, ptr %14, align 1, !dbg !126, !tbaa !105
  %26 = zext i8 %25 to i32, !dbg !126
  call void @llvm.dbg.value(metadata i32 %26, metadata !94, metadata !DIExpression()), !dbg !97
  %27 = shl nuw nsw i32 %26, 14, !dbg !127
  %28 = and i32 %27, 2080768, !dbg !127
  %29 = or i32 %28, %19, !dbg !128
  call void @llvm.dbg.value(metadata i32 %29, metadata !95, metadata !DIExpression()), !dbg !97
  %30 = icmp sgt i8 %25, -1, !dbg !129
  br i1 %30, label %49, label %31, !dbg !131

31:                                               ; preds = %23
  %32 = icmp ugt i64 %1, 3, !dbg !132
  br i1 %32, label %33, label %52, !dbg !134

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !135
  call void @llvm.dbg.value(metadata ptr %34, metadata !92, metadata !DIExpression()), !dbg !97
  %35 = load i8, ptr %24, align 1, !dbg !136, !tbaa !105
  %36 = zext i8 %35 to i32, !dbg !136
  call void @llvm.dbg.value(metadata i32 %36, metadata !94, metadata !DIExpression()), !dbg !97
  %37 = shl nuw nsw i32 %36, 21, !dbg !137
  %38 = and i32 %37, 266338304, !dbg !137
  %39 = or i32 %38, %29, !dbg !138
  call void @llvm.dbg.value(metadata i32 %39, metadata !95, metadata !DIExpression()), !dbg !97
  %40 = icmp sgt i8 %35, -1, !dbg !139
  br i1 %40, label %49, label %41, !dbg !141

41:                                               ; preds = %33
  %42 = icmp ugt i64 %1, 4, !dbg !142
  br i1 %42, label %43, label %52, !dbg !144

43:                                               ; preds = %41
  call void @llvm.dbg.value(metadata ptr %0, metadata !92, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !97
  %44 = load i8, ptr %34, align 1, !dbg !145, !tbaa !105
  %45 = zext i8 %44 to i32, !dbg !145
  call void @llvm.dbg.value(metadata i32 %45, metadata !94, metadata !DIExpression()), !dbg !97
  %46 = shl i32 %45, 28, !dbg !146
  %47 = or i32 %46, %39, !dbg !147
  call void @llvm.dbg.value(metadata i32 %47, metadata !95, metadata !DIExpression()), !dbg !97
  %48 = icmp ult i8 %44, 16, !dbg !148
  br i1 %48, label %49, label %52, !dbg !150

49:                                               ; preds = %43, %33, %23, %13, %5
  %50 = phi i32 [ %9, %5 ], [ %19, %13 ], [ %29, %23 ], [ %39, %33 ], [ %47, %43 ], !dbg !97
  call void @llvm.dbg.value(metadata i32 %50, metadata !95, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr poison, metadata !92, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.label(metadata !96), !dbg !151
  call void @llvm.dbg.value(metadata i32 %50, metadata !82, metadata !DIExpression()), !dbg !84
  %51 = zext i32 %50 to i64, !dbg !152
  store i64 %51, ptr %2, align 8, !dbg !154, !tbaa !155
  br label %52, !dbg !157

52:                                               ; preds = %43, %41, %31, %21, %11, %3, %49
  %53 = phi i1 [ true, %49 ], [ false, %3 ], [ false, %11 ], [ false, %21 ], [ false, %31 ], [ false, %41 ], [ false, %43 ]
  ret i1 %53, !dbg !158
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define i32 @snappy_compress_iov(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #4 !dbg !159 {
  %8 = alloca [5 x i8], align 1
  call void @llvm.dbg.declare(metadata ptr undef, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !202
  call void @llvm.dbg.value(metadata ptr %0, metadata !178, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %1, metadata !179, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %2, metadata !180, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %3, metadata !181, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %4, metadata !182, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %5, metadata !183, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %6, metadata !184, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %1, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %2, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %3, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !203
  call void @llvm.dbg.value(metadata ptr %4, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !203
  call void @llvm.dbg.value(metadata i32 poison, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !203
  call void @llvm.dbg.value(metadata ptr %0, metadata !204, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr undef, metadata !211, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr undef, metadata !212, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i64 0, metadata !214, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr undef, metadata !237, metadata !DIExpression()), !dbg !242
  %9 = trunc i64 %3 to i32, !dbg !244
  call void @llvm.dbg.value(metadata i32 %9, metadata !215, metadata !DIExpression()), !dbg !235
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %8) #12, !dbg !245
  call void @llvm.dbg.declare(metadata ptr %8, metadata !216, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %8, metadata !39, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 %9, metadata !40, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %8, metadata !41, metadata !DIExpression()), !dbg !247
  %10 = icmp ult i32 %9, 128, !dbg !249
  br i1 %10, label %11, label %14, !dbg !251

11:                                               ; preds = %7
  %12 = trunc i64 %3 to i8, !dbg !252
  %13 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !254
  call void @llvm.dbg.value(metadata ptr %13, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %12, ptr %8, align 1, !dbg !255, !tbaa !105
  br label %59, !dbg !256

14:                                               ; preds = %7
  %15 = icmp ult i32 %9, 16384, !dbg !257
  br i1 %15, label %16, label %23, !dbg !259

16:                                               ; preds = %14
  %17 = trunc i64 %3 to i8, !dbg !260
  %18 = or i8 %17, -128, !dbg !260
  %19 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !262
  call void @llvm.dbg.value(metadata ptr %19, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %18, ptr %8, align 1, !dbg !263, !tbaa !105
  %20 = lshr i64 %3, 7, !dbg !264
  %21 = trunc i64 %20 to i8, !dbg !264
  %22 = getelementptr inbounds i8, ptr %8, i64 2, !dbg !265
  call void @llvm.dbg.value(metadata ptr %22, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %21, ptr %19, align 1, !dbg !266, !tbaa !105
  br label %59, !dbg !267

23:                                               ; preds = %14
  %24 = icmp ult i32 %9, 2097152, !dbg !268
  br i1 %24, label %25, label %36, !dbg !270

25:                                               ; preds = %23
  %26 = trunc i64 %3 to i8, !dbg !271
  %27 = or i8 %26, -128, !dbg !271
  %28 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !273
  call void @llvm.dbg.value(metadata ptr %28, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %27, ptr %8, align 1, !dbg !274, !tbaa !105
  %29 = lshr i64 %3, 7, !dbg !275
  %30 = trunc i64 %29 to i8, !dbg !275
  %31 = or i8 %30, -128, !dbg !275
  %32 = getelementptr inbounds i8, ptr %8, i64 2, !dbg !276
  call void @llvm.dbg.value(metadata ptr %32, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %31, ptr %28, align 1, !dbg !277, !tbaa !105
  %33 = lshr i64 %3, 14, !dbg !278
  %34 = trunc i64 %33 to i8, !dbg !278
  %35 = getelementptr inbounds i8, ptr %8, i64 3, !dbg !279
  call void @llvm.dbg.value(metadata ptr %35, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %34, ptr %32, align 1, !dbg !280, !tbaa !105
  br label %59, !dbg !281

36:                                               ; preds = %23
  %37 = icmp ult i32 %9, 268435456, !dbg !282
  %38 = trunc i64 %3 to i8, !dbg !284
  %39 = or i8 %38, -128, !dbg !284
  %40 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !284
  call void @llvm.dbg.value(metadata ptr %40, metadata !41, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %40, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %39, ptr %8, align 1, !dbg !284, !tbaa !105
  %41 = lshr i64 %3, 7, !dbg !284
  %42 = trunc i64 %41 to i8, !dbg !284
  %43 = or i8 %42, -128, !dbg !284
  %44 = getelementptr inbounds i8, ptr %8, i64 2, !dbg !284
  call void @llvm.dbg.value(metadata ptr %44, metadata !41, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %44, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %43, ptr %40, align 1, !dbg !284, !tbaa !105
  %45 = lshr i64 %3, 14, !dbg !284
  %46 = trunc i64 %45 to i8, !dbg !284
  %47 = or i8 %46, -128, !dbg !284
  %48 = getelementptr inbounds i8, ptr %8, i64 3, !dbg !284
  call void @llvm.dbg.value(metadata ptr %48, metadata !41, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %48, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %47, ptr %44, align 1, !dbg !284, !tbaa !105
  %49 = lshr i64 %3, 21, !dbg !284
  %50 = trunc i64 %49 to i8, !dbg !284
  br i1 %37, label %51, label %53, !dbg !285

51:                                               ; preds = %36
  %52 = getelementptr inbounds i8, ptr %8, i64 4, !dbg !286
  call void @llvm.dbg.value(metadata ptr %52, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %50, ptr %48, align 1, !dbg !288, !tbaa !105
  br label %59, !dbg !289

53:                                               ; preds = %36
  %54 = or i8 %50, -128, !dbg !290
  %55 = getelementptr inbounds i8, ptr %8, i64 4, !dbg !292
  call void @llvm.dbg.value(metadata ptr %55, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %54, ptr %48, align 1, !dbg !293, !tbaa !105
  %56 = lshr i32 %9, 28, !dbg !294
  %57 = trunc i32 %56 to i8, !dbg !295
  %58 = getelementptr inbounds i8, ptr %8, i64 5, !dbg !296
  call void @llvm.dbg.value(metadata ptr %58, metadata !41, metadata !DIExpression()), !dbg !247
  store i8 %57, ptr %55, align 1, !dbg !297, !tbaa !105
  br label %59

59:                                               ; preds = %53, %51, %25, %16, %11
  %60 = phi ptr [ %13, %11 ], [ %22, %16 ], [ %35, %25 ], [ %52, %51 ], [ %58, %53 ], !dbg !298
  call void @llvm.dbg.value(metadata ptr %60, metadata !41, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %60, metadata !218, metadata !DIExpression()), !dbg !235
  %61 = ptrtoint ptr %60 to i64, !dbg !299
  %62 = ptrtoint ptr %8 to i64, !dbg !299
  %63 = sub i64 %61, %62, !dbg !299
  call void @llvm.dbg.value(metadata ptr undef, metadata !300, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %8, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64 %63, metadata !306, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %4, metadata !307, metadata !DIExpression()), !dbg !310
  %64 = load ptr, ptr %4, align 8, !dbg !312, !tbaa !313
  call void @llvm.dbg.value(metadata ptr %64, metadata !308, metadata !DIExpression()), !dbg !310
  %65 = getelementptr inbounds %struct.iovec, ptr %4, i64 0, i32 1, !dbg !316
  %66 = load i64, ptr %65, align 8, !dbg !316, !tbaa !317
  %67 = call i64 @llvm.umin.i64(i64 %66, i64 %63), !dbg !316
  call void @llvm.dbg.value(metadata i64 %67, metadata !309, metadata !DIExpression()), !dbg !310
  %68 = icmp eq ptr %64, %8, !dbg !318
  br i1 %68, label %70, label %69, !dbg !320

69:                                               ; preds = %59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr nonnull align 1 %8, i64 %67, i1 false), !dbg !321
  br label %70, !dbg !321

70:                                               ; preds = %69, %59
  %71 = trunc i64 %63 to i32, !dbg !322
  call void @llvm.dbg.value(metadata i32 %71, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %67, metadata !193, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %67, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %8, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %4, metadata !307, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64 %63, metadata !306, metadata !DIExpression()), !dbg !310
  %72 = sub i64 %63, %67, !dbg !323
  call void @llvm.dbg.value(metadata i64 %72, metadata !306, metadata !DIExpression()), !dbg !310
  %73 = icmp eq i64 %72, 0, !dbg !324
  br i1 %73, label %89, label %74, !dbg !325

74:                                               ; preds = %70, %74
  %75 = phi i32 [ %81, %74 ], [ 0, %70 ], !dbg !203
  %76 = phi i64 [ %87, %74 ], [ %72, %70 ]
  %77 = phi i64 [ %85, %74 ], [ %67, %70 ]
  %78 = phi ptr [ %80, %74 ], [ %8, %70 ]
  %79 = phi ptr [ %82, %74 ], [ %4, %70 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %77, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %78, metadata !305, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata ptr %79, metadata !307, metadata !DIExpression()), !dbg !310
  %80 = getelementptr inbounds i8, ptr %78, i64 %77, !dbg !326
  call void @llvm.dbg.value(metadata ptr %80, metadata !305, metadata !DIExpression()), !dbg !310
  %81 = add i32 %75, 1, !dbg !328
  call void @llvm.dbg.value(metadata i32 %81, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  %82 = getelementptr inbounds %struct.iovec, ptr %79, i64 1, !dbg !329
  call void @llvm.dbg.value(metadata ptr %82, metadata !307, metadata !DIExpression()), !dbg !310
  %83 = getelementptr inbounds %struct.iovec, ptr %79, i64 1, i32 1, !dbg !330
  %84 = load i64, ptr %83, align 8, !dbg !330, !tbaa !317
  %85 = call i64 @llvm.umin.i64(i64 %84, i64 %76), !dbg !330
  call void @llvm.dbg.value(metadata i64 %85, metadata !309, metadata !DIExpression()), !dbg !310
  %86 = load ptr, ptr %82, align 8, !dbg !331, !tbaa !313
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %80, i64 %85, i1 false), !dbg !332
  call void @llvm.dbg.value(metadata i64 %85, metadata !193, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %76, metadata !306, metadata !DIExpression()), !dbg !310
  %87 = sub i64 %76, %85, !dbg !323
  call void @llvm.dbg.value(metadata i64 %87, metadata !306, metadata !DIExpression()), !dbg !310
  %88 = icmp eq i64 %87, 0, !dbg !324
  br i1 %88, label %89, label %74, !dbg !325, !llvm.loop !333

89:                                               ; preds = %74, %70
  %90 = phi i64 [ %67, %70 ], [ %85, %74 ]
  %91 = phi i32 [ 0, %70 ], [ %81, %74 ], !dbg !203
  call void @llvm.dbg.value(metadata i32 %91, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %90, metadata !193, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 -5, metadata !213, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i64 poison, metadata !214, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %9, metadata !215, metadata !DIExpression()), !dbg !235
  %92 = icmp sgt i32 %9, 0, !dbg !336
  br i1 %92, label %93, label %523, !dbg !337

93:                                               ; preds = %89
  %94 = trunc i64 %90 to i32, !dbg !310
  call void @llvm.dbg.value(metadata i32 %94, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  %95 = getelementptr inbounds %struct.snappy_env, ptr %0, i64 0, i32 1
  %96 = getelementptr inbounds %struct.snappy_env, ptr %0, i64 0, i32 2
  br label %97, !dbg !337

97:                                               ; preds = %506, %93
  %98 = phi i32 [ %71, %93 ], [ %484, %506 ], !dbg !235
  %99 = phi i32 [ %94, %93 ], [ %507, %506 ], !dbg !235
  %100 = phi i32 [ %91, %93 ], [ %508, %506 ], !dbg !338
  %101 = phi i32 [ 0, %93 ], [ %520, %506 ], !dbg !339
  %102 = phi i32 [ 0, %93 ], [ %521, %506 ], !dbg !203
  %103 = phi i32 [ %9, %93 ], [ %509, %506 ]
  call void @llvm.dbg.value(metadata i32 %102, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %101, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %100, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %99, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %98, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %103, metadata !215, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr undef, metadata !340, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !349
  %104 = icmp slt i32 %101, %2, !dbg !351
  br i1 %104, label %105, label %523, !dbg !352, !prof !353

105:                                              ; preds = %97
  %106 = sext i32 %101 to i64, !dbg !354
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %106), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !355
  %107 = sext i32 %102 to i64, !dbg !356
  %108 = getelementptr inbounds %struct.iovec, ptr %1, i64 %106, i32 1, !dbg !358
  %109 = load i64, ptr %108, align 8, !dbg !358, !tbaa !317
  %110 = icmp ugt i64 %109, %107, !dbg !359
  br i1 %110, label %111, label %523, !dbg !360

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.iovec, ptr %1, i64 %106, !dbg !354
  call void @llvm.dbg.value(metadata ptr %112, metadata !346, metadata !DIExpression()), !dbg !355
  %113 = sub i64 %109, %107, !dbg !361
  %114 = load ptr, ptr %112, align 8, !dbg !363, !tbaa !313
  %115 = getelementptr i8, ptr %114, i64 %107, !dbg !364
  call void @llvm.dbg.value(metadata ptr %115, metadata !221, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %113, metadata !219, metadata !DIExpression()), !dbg !365
  %116 = icmp eq i64 %113, 0, !dbg !366
  br i1 %116, label %523, label %117, !dbg !368

117:                                              ; preds = %111
  %118 = call i32 @llvm.smin.i32(i32 %103, i32 32768), !dbg !369
  call void @llvm.dbg.value(metadata i32 %118, metadata !222, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %113, metadata !224, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !365
  %119 = zext i32 %118 to i64, !dbg !370
  %120 = icmp ult i64 %113, %119, !dbg !371
  br i1 %120, label %121, label %173, !dbg !372

121:                                              ; preds = %117
  %122 = load ptr, ptr %95, align 8, !dbg !373, !tbaa !374
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr align 1 %115, i64 %113, i1 false), !dbg !376
  call void @llvm.dbg.value(metadata ptr undef, metadata !377, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i64 %113, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %106), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !384
  %123 = trunc i64 %113 to i32, !dbg !386
  %124 = add i32 %102, %123, !dbg !386
  call void @llvm.dbg.value(metadata i32 %124, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  %125 = sext i32 %124 to i64, !dbg !387
  %126 = load i64, ptr %108, align 8, !dbg !389, !tbaa !317
  %127 = icmp ugt i64 %126, %125, !dbg !390
  %128 = add nsw i32 %101, 1, !dbg !391
  %129 = icmp slt i32 %128, %2, !dbg !391
  %130 = select i1 %129, i32 %128, i32 %101, !dbg !391
  %131 = select i1 %129, i32 0, i32 %124, !dbg !391
  %132 = select i1 %127, i32 %101, i32 %130, !dbg !391
  %133 = select i1 %127, i32 %124, i32 %131, !dbg !391
  call void @llvm.dbg.value(metadata i32 %133, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %132, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %113, metadata !224, metadata !DIExpression()), !dbg !365
  br label %134, !dbg !392

134:                                              ; preds = %150, %121
  %135 = phi i32 [ %133, %121 ], [ %169, %150 ], !dbg !393
  %136 = phi i32 [ %132, %121 ], [ %168, %150 ], !dbg !394
  %137 = phi i64 [ %113, %121 ], [ %157, %150 ]
  call void @llvm.dbg.value(metadata i32 %135, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %136, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %137, metadata !224, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata ptr undef, metadata !340, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !396
  %138 = icmp slt i32 %136, %2, !dbg !394
  %139 = sext i32 %136 to i64, !dbg !397
  br i1 %138, label %140, label %150, !dbg !398, !prof !353

140:                                              ; preds = %134
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %139), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !399
  %141 = sext i32 %135 to i64, !dbg !400
  %142 = getelementptr inbounds %struct.iovec, ptr %1, i64 %139, i32 1, !dbg !401
  %143 = load i64, ptr %142, align 8, !dbg !401, !tbaa !317
  %144 = icmp ugt i64 %143, %141, !dbg !402
  br i1 %144, label %145, label %150, !dbg !403

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.iovec, ptr %1, i64 %139, !dbg !404
  call void @llvm.dbg.value(metadata ptr %146, metadata !346, metadata !DIExpression()), !dbg !399
  %147 = sub i64 %143, %141, !dbg !405
  %148 = load ptr, ptr %146, align 8, !dbg !406, !tbaa !313
  %149 = getelementptr i8, ptr %148, i64 %141, !dbg !407
  br label %150

150:                                              ; preds = %134, %145, %140
  %151 = phi i64 [ %147, %145 ], [ 0, %140 ], [ 0, %134 ], !dbg !396
  %152 = phi ptr [ %149, %145 ], [ null, %140 ], [ null, %134 ], !dbg !396
  call void @llvm.dbg.value(metadata ptr %152, metadata !221, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %151, metadata !219, metadata !DIExpression()), !dbg !365
  %153 = sub i64 %119, %137, !dbg !408
  %154 = call i64 @llvm.umin.i64(i64 %151, i64 %153), !dbg !408
  call void @llvm.dbg.value(metadata i64 %154, metadata !226, metadata !DIExpression()), !dbg !397
  %155 = load ptr, ptr %95, align 8, !dbg !409, !tbaa !374
  %156 = getelementptr inbounds i8, ptr %155, i64 %137, !dbg !410
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %156, ptr align 1 %152, i64 %154, i1 false), !dbg !411
  %157 = add i64 %154, %137, !dbg !412
  call void @llvm.dbg.value(metadata i64 %157, metadata !224, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata ptr undef, metadata !377, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i64 %154, metadata !382, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %139), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !413
  %158 = trunc i64 %154 to i32, !dbg !415
  %159 = add i32 %135, %158, !dbg !415
  call void @llvm.dbg.value(metadata i32 %159, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  %160 = sext i32 %159 to i64, !dbg !416
  %161 = getelementptr inbounds %struct.iovec, ptr %1, i64 %139, i32 1, !dbg !417
  %162 = load i64, ptr %161, align 8, !dbg !417, !tbaa !317
  %163 = icmp ugt i64 %162, %160, !dbg !418
  %164 = add nsw i32 %136, 1, !dbg !419
  %165 = icmp slt i32 %164, %2, !dbg !419
  %166 = select i1 %165, i32 %164, i32 %136, !dbg !419
  %167 = select i1 %165, i32 0, i32 %159, !dbg !419
  %168 = select i1 %163, i32 %136, i32 %166, !dbg !419
  %169 = select i1 %163, i32 %159, i32 %167, !dbg !419
  call void @llvm.dbg.value(metadata i32 %169, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %168, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  %170 = icmp ult i64 %157, %119, !dbg !420
  br i1 %170, label %134, label %171, !dbg !392, !llvm.loop !421

171:                                              ; preds = %150
  %172 = load ptr, ptr %95, align 8, !dbg !423, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %172, metadata !221, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %119, metadata !219, metadata !DIExpression()), !dbg !365
  br label %173

173:                                              ; preds = %117, %171
  %174 = phi i32 [ %168, %171 ], [ %101, %117 ], !dbg !339
  %175 = phi i32 [ %169, %171 ], [ %102, %117 ], !dbg !203
  %176 = phi ptr [ %172, %171 ], [ %115, %117 ], !dbg !365
  %177 = phi i32 [ 0, %171 ], [ %118, %117 ], !dbg !365
  call void @llvm.dbg.value(metadata i32 %175, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %174, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %177, metadata !225, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata ptr %176, metadata !221, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %119, metadata !219, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata ptr %0, metadata !424, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i64 %119, metadata !429, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata ptr undef, metadata !430, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i32 256, metadata !431, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i32 256, metadata !431, metadata !DIExpression()), !dbg !433
  %178 = icmp ugt i32 %118, 256, !dbg !435
  call void @llvm.dbg.value(metadata i32 512, metadata !431, metadata !DIExpression()), !dbg !433
  br i1 %178, label %179, label %190, !dbg !436, !llvm.loop !437

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i32 512, metadata !431, metadata !DIExpression()), !dbg !433
  %180 = icmp ugt i32 %118, 512, !dbg !435
  call void @llvm.dbg.value(metadata i32 1024, metadata !431, metadata !DIExpression()), !dbg !433
  br i1 %180, label %181, label %190, !dbg !436, !llvm.loop !437

181:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i32 1024, metadata !431, metadata !DIExpression()), !dbg !433
  %182 = icmp ugt i32 %118, 1024, !dbg !435
  call void @llvm.dbg.value(metadata i32 2048, metadata !431, metadata !DIExpression()), !dbg !433
  br i1 %182, label %183, label %190, !dbg !436, !llvm.loop !437

183:                                              ; preds = %181
  call void @llvm.dbg.value(metadata i32 2048, metadata !431, metadata !DIExpression()), !dbg !433
  %184 = icmp ugt i32 %118, 2048, !dbg !435
  call void @llvm.dbg.value(metadata i32 4096, metadata !431, metadata !DIExpression()), !dbg !433
  br i1 %184, label %185, label %190, !dbg !436, !llvm.loop !437

185:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i32 4096, metadata !431, metadata !DIExpression()), !dbg !433
  %186 = icmp ugt i32 %118, 4096, !dbg !435
  call void @llvm.dbg.value(metadata i32 8192, metadata !431, metadata !DIExpression()), !dbg !433
  br i1 %186, label %187, label %190, !dbg !436, !llvm.loop !437

187:                                              ; preds = %185
  call void @llvm.dbg.value(metadata i32 8192, metadata !431, metadata !DIExpression()), !dbg !433
  %188 = icmp ugt i32 %118, 8192, !dbg !435
  call void @llvm.dbg.value(metadata i32 16384, metadata !431, metadata !DIExpression()), !dbg !433
  %189 = select i1 %188, i32 16384, i32 8192, !dbg !436
  br label %190, !dbg !436, !llvm.loop !437

190:                                              ; preds = %187, %185, %183, %181, %179, %173
  %191 = phi i32 [ 256, %173 ], [ 512, %179 ], [ 1024, %181 ], [ 2048, %183 ], [ 4096, %185 ], [ %189, %187 ], !dbg !433
  %192 = load ptr, ptr %0, align 8, !dbg !439, !tbaa !440
  call void @llvm.dbg.value(metadata ptr %192, metadata !432, metadata !DIExpression()), !dbg !433
  %193 = shl nuw nsw i32 %191, 1, !dbg !441
  %194 = zext i32 %193 to i64, !dbg !441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %192, i8 0, i64 %194, i1 false), !dbg !442
  call void @llvm.dbg.value(metadata ptr %192, metadata !231, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %119, metadata !67, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata ptr undef, metadata !445, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !450, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !452
  %195 = zext i32 %100 to i64, !dbg !454
  %196 = getelementptr inbounds %struct.iovec, ptr %4, i64 %195, !dbg !454
  call void @llvm.dbg.value(metadata ptr %196, metadata !451, metadata !DIExpression()), !dbg !452
  %197 = getelementptr inbounds %struct.iovec, ptr %4, i64 %195, i32 1, !dbg !455
  %198 = load i64, ptr %197, align 8, !dbg !455, !tbaa !317
  %199 = icmp ugt i64 %198, %195, !dbg !457
  br i1 %199, label %200, label %211, !dbg !458

200:                                              ; preds = %190
  %201 = add nuw nsw i64 %119, 32, !dbg !459
  %202 = udiv i64 %119, 6, !dbg !460
  call void @llvm.dbg.value(metadata !DIArgList(i64 %201, i64 %202), metadata !450, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !452
  %203 = add nuw nsw i64 %201, %202, !dbg !461
  call void @llvm.dbg.value(metadata i64 %203, metadata !450, metadata !DIExpression()), !dbg !452
  %204 = zext i32 %99 to i64, !dbg !462
  %205 = sub i64 %198, %204, !dbg !463
  %206 = icmp ult i64 %205, %203, !dbg !464
  br i1 %206, label %211, label %207, !dbg !465

207:                                              ; preds = %200
  %208 = load ptr, ptr %196, align 8, !dbg !466, !tbaa !313
  %209 = getelementptr i8, ptr %208, i64 %204, !dbg !467
  call void @llvm.dbg.value(metadata ptr %209, metadata !232, metadata !DIExpression()), !dbg !365
  %210 = icmp eq ptr %209, null, !dbg !468
  br i1 %210, label %211, label %213, !dbg !470

211:                                              ; preds = %207, %200, %190
  %212 = load ptr, ptr %96, align 8, !dbg !471, !tbaa !473
  call void @llvm.dbg.value(metadata ptr %212, metadata !232, metadata !DIExpression()), !dbg !365
  br label %213, !dbg !474

213:                                              ; preds = %211, %207
  %214 = phi ptr [ %209, %207 ], [ %212, %211 ], !dbg !365
  call void @llvm.dbg.value(metadata ptr %214, metadata !232, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %119, metadata !219, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i32 %191, metadata !230, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata ptr %176, metadata !475, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 %119, metadata !482, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %214, metadata !483, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %192, metadata !484, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i32 %191, metadata !485, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %176, metadata !486, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i32 %191, metadata !517, metadata !DIExpression()), !dbg !522
  %215 = call i32 @llvm.ctlz.i32(i32 %191, i1 true), !dbg !524, !range !525
  %216 = add nuw nsw i32 %215, 1, !dbg !526
  call void @llvm.dbg.value(metadata i32 %216, metadata !487, metadata !DIExpression()), !dbg !515
  %217 = getelementptr inbounds i8, ptr %176, i64 %119, !dbg !527
  call void @llvm.dbg.value(metadata ptr %217, metadata !488, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %176, metadata !489, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %176, metadata !490, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i32 15, metadata !491, metadata !DIExpression()), !dbg !515
  %218 = icmp ugt i32 %118, 14, !dbg !528
  br i1 %218, label %219, label %433, !dbg !529, !prof !353

219:                                              ; preds = %213
  %220 = getelementptr inbounds i8, ptr %217, i64 -15, !dbg !530
  call void @llvm.dbg.value(metadata ptr %220, metadata !492, metadata !DIExpression()), !dbg !531
  %221 = getelementptr inbounds i8, ptr %176, i64 1, !dbg !532
  call void @llvm.dbg.value(metadata ptr %221, metadata !486, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %221, metadata !533, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32 %216, metadata !538, metadata !DIExpression()), !dbg !539
  %222 = load i32, ptr %221, align 4, !dbg !541, !tbaa !542
  call void @llvm.dbg.value(metadata i32 %222, metadata !544, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32 %216, metadata !549, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32 506832829, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata !DIArgList(i32 %222, i32 %216), metadata !495, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 506832829, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  %223 = ptrtoint ptr %176 to i64
  %224 = ptrtoint ptr %217 to i64
  %225 = getelementptr inbounds i8, ptr %217, i64 -8
  %226 = trunc i64 %224 to i32
  br label %227, !dbg !553

227:                                              ; preds = %429, %219
  %228 = phi i32 [ %222, %219 ], [ %431, %429 ]
  %229 = phi ptr [ %176, %219 ], [ %355, %429 ], !dbg !515
  %230 = phi ptr [ %221, %219 ], [ %432, %429 ], !dbg !554
  %231 = phi ptr [ %214, %219 ], [ %404, %429 ]
  call void @llvm.dbg.value(metadata ptr %231, metadata !483, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %230, metadata !486, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %229, metadata !490, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata !DIArgList(i32 %228, i32 %216), metadata !495, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 506832829, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata ptr poison, metadata !501, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 32, metadata !496, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata ptr %230, metadata !500, metadata !DIExpression()), !dbg !555
  br label %232, !dbg !556

232:                                              ; preds = %240, %227
  %233 = phi i32 [ %228, %227 ], [ %244, %240 ]
  %234 = phi ptr [ %230, %227 ], [ %238, %240 ], !dbg !555
  %235 = phi i32 [ 32, %227 ], [ %241, %240 ], !dbg !555
  call void @llvm.dbg.value(metadata !DIArgList(i32 %233, i32 %216), metadata !495, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 506832829, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata ptr %234, metadata !500, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata ptr poison, metadata !501, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata ptr %234, metadata !486, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata !DIArgList(i32 %233, i32 %216), metadata !502, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 506832829, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !557
  call void @llvm.dbg.value(metadata i32 %235, metadata !496, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !555
  %236 = lshr i32 %235, 5, !dbg !558
  call void @llvm.dbg.value(metadata i32 %236, metadata !504, metadata !DIExpression()), !dbg !557
  %237 = zext i32 %236 to i64, !dbg !559
  %238 = getelementptr inbounds i8, ptr %234, i64 %237, !dbg !559
  call void @llvm.dbg.value(metadata ptr %238, metadata !500, metadata !DIExpression()), !dbg !555
  %239 = icmp ugt ptr %238, %220, !dbg !560
  br i1 %239, label %433, label %240, !dbg !562, !prof !563

240:                                              ; preds = %232
  %241 = add i32 %235, 1, !dbg !564
  call void @llvm.dbg.value(metadata i32 %241, metadata !496, metadata !DIExpression()), !dbg !555
  %242 = mul i32 %233, 506832829, !dbg !554
  call void @llvm.dbg.value(metadata !DIArgList(i32 %242, i32 %216), metadata !495, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  call void @llvm.dbg.value(metadata !DIArgList(i32 %242, i32 %216), metadata !502, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !557
  %243 = lshr i32 %242, %216, !dbg !565
  call void @llvm.dbg.value(metadata i32 %243, metadata !495, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 %243, metadata !502, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata ptr %238, metadata !533, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i32 %216, metadata !538, metadata !DIExpression()), !dbg !566
  %244 = load i32, ptr %238, align 4, !dbg !568, !tbaa !542
  call void @llvm.dbg.value(metadata i32 %244, metadata !544, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32 %216, metadata !549, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32 506832829, metadata !550, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata !DIArgList(i32 %244, i32 %216), metadata !495, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 506832829, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  %245 = zext i32 %243 to i64, !dbg !571
  %246 = getelementptr inbounds i16, ptr %192, i64 %245, !dbg !571
  %247 = load i16, ptr %246, align 2, !dbg !571, !tbaa !572
  %248 = zext i16 %247 to i64
  %249 = getelementptr inbounds i8, ptr %176, i64 %248, !dbg !574
  call void @llvm.dbg.value(metadata ptr %249, metadata !501, metadata !DIExpression()), !dbg !555
  %250 = ptrtoint ptr %234 to i64, !dbg !575
  %251 = sub i64 %250, %223, !dbg !575
  %252 = trunc i64 %251 to i16, !dbg !576
  store i16 %252, ptr %246, align 2, !dbg !577, !tbaa !572
  %253 = load i32, ptr %249, align 4, !dbg !578, !tbaa !542
  %254 = icmp eq i32 %233, %253, !dbg !578
  br i1 %254, label %255, label %232, !dbg !579, !prof !563, !llvm.loop !580

255:                                              ; preds = %240
  %256 = zext i16 %247 to i64
  %257 = getelementptr inbounds i8, ptr %176, i64 %256, !dbg !574
  %258 = ptrtoint ptr %234 to i64, !dbg !575
  %259 = ptrtoint ptr %229 to i64, !dbg !582
  %260 = sub i64 %258, %259, !dbg !582
  %261 = trunc i64 %260 to i32, !dbg !583
  call void @llvm.dbg.value(metadata ptr %231, metadata !584, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata ptr %229, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 %261, metadata !590, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i1 true, metadata !591, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !597
  %262 = add nsw i32 %261, -1, !dbg !599
  call void @llvm.dbg.value(metadata i32 %262, metadata !592, metadata !DIExpression()), !dbg !597
  %263 = icmp slt i32 %261, 61, !dbg !600
  br i1 %263, label %266, label %264, !dbg !601

264:                                              ; preds = %255
  call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i32 %262, metadata !592, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata ptr %231, metadata !584, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !597
  %265 = getelementptr inbounds i8, ptr %231, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata ptr %265, metadata !584, metadata !DIExpression()), !dbg !597
  br label %279, !dbg !603

266:                                              ; preds = %255
  %267 = trunc i32 %262 to i8, !dbg !604
  %268 = shl i8 %267, 2, !dbg !604
  %269 = getelementptr inbounds i8, ptr %231, i64 1, !dbg !606
  call void @llvm.dbg.value(metadata ptr %269, metadata !584, metadata !DIExpression()), !dbg !597
  store i8 %268, ptr %231, align 1, !dbg !607, !tbaa !105
  %270 = icmp slt i32 %261, 17
  br i1 %270, label %271, label %292, !dbg !608

271:                                              ; preds = %266
  %272 = load i64, ptr %229, align 8, !dbg !610, !tbaa !612
  store i64 %272, ptr %269, align 8, !dbg !610, !tbaa !612
  %273 = getelementptr inbounds i8, ptr %229, i64 8, !dbg !614
  %274 = load i64, ptr %273, align 8, !dbg !614, !tbaa !612
  %275 = getelementptr inbounds i8, ptr %231, i64 9, !dbg !614
  store i64 %274, ptr %275, align 8, !dbg !614, !tbaa !612
  %276 = shl i64 %260, 32, !dbg !615
  %277 = ashr exact i64 %276, 32, !dbg !615
  %278 = getelementptr inbounds i8, ptr %269, i64 %277, !dbg !615
  br label %297, !dbg !616

279:                                              ; preds = %279, %264
  %280 = phi ptr [ %286, %279 ], [ %265, %264 ]
  %281 = phi i32 [ %285, %279 ], [ 0, %264 ]
  %282 = phi i32 [ %284, %279 ], [ %262, %264 ]
  call void @llvm.dbg.value(metadata i32 %281, metadata !596, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i32 %282, metadata !592, metadata !DIExpression()), !dbg !597
  %283 = trunc i32 %282 to i8, !dbg !617
  call void @llvm.dbg.value(metadata ptr %280, metadata !584, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !597
  store i8 %283, ptr %280, align 1, !dbg !619, !tbaa !105
  %284 = lshr i32 %282, 8
  call void @llvm.dbg.value(metadata i32 %284, metadata !592, metadata !DIExpression()), !dbg !597
  %285 = add nuw nsw i32 %281, 1, !dbg !620
  call void @llvm.dbg.value(metadata i32 %285, metadata !596, metadata !DIExpression()), !dbg !602
  %286 = getelementptr inbounds i8, ptr %280, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata ptr %286, metadata !584, metadata !DIExpression()), !dbg !597
  %287 = icmp ult i32 %282, 256, !dbg !621
  br i1 %287, label %288, label %279, !dbg !603, !llvm.loop !622

288:                                              ; preds = %279
  %289 = trunc i32 %285 to i8, !dbg !624
  %290 = shl i8 %289, 2, !dbg !624
  %291 = add i8 %290, -20, !dbg !624
  store i8 %291, ptr %231, align 1, !dbg !625, !tbaa !105
  br label %292

292:                                              ; preds = %288, %266
  %293 = phi ptr [ %269, %266 ], [ %286, %288 ], !dbg !626
  call void @llvm.dbg.value(metadata ptr %293, metadata !584, metadata !DIExpression()), !dbg !597
  %294 = shl i64 %260, 32, !dbg !627
  %295 = ashr exact i64 %294, 32, !dbg !627
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %293, ptr align 1 %229, i64 %295, i1 false), !dbg !628
  %296 = getelementptr inbounds i8, ptr %293, i64 %295, !dbg !629
  br label %297, !dbg !630

297:                                              ; preds = %292, %271
  %298 = phi ptr [ %278, %271 ], [ %296, %292 ]
  br label %299, !dbg !631

299:                                              ; preds = %297, %406
  %300 = phi ptr [ %426, %406 ], [ %257, %297 ]
  %301 = phi ptr [ %355, %406 ], [ %234, %297 ], !dbg !555
  %302 = phi ptr [ %404, %406 ], [ %298, %297 ], !dbg !555
  call void @llvm.dbg.value(metadata ptr %302, metadata !483, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %301, metadata !486, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i32 poison, metadata !506, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i64 poison, metadata !505, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata ptr %300, metadata !501, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata ptr %301, metadata !507, metadata !DIExpression()), !dbg !632
  %303 = getelementptr inbounds i8, ptr %300, i64 4, !dbg !633
  %304 = getelementptr inbounds i8, ptr %301, i64 4, !dbg !634
  call void @llvm.dbg.value(metadata ptr %303, metadata !635, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata ptr %304, metadata !640, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata ptr %217, metadata !641, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32 0, metadata !642, metadata !DIExpression()), !dbg !648
  %305 = icmp ult ptr %225, %304, !dbg !650
  br i1 %305, label %308, label %320, !dbg !651, !prof !563

306:                                              ; preds = %327
  %307 = trunc i64 %329 to i32, !dbg !652
  br label %308, !dbg !652

308:                                              ; preds = %306, %299
  %309 = phi i32 [ 0, %299 ], [ %307, %306 ], !dbg !648
  %310 = phi ptr [ %304, %299 ], [ %328, %306 ]
  call void @llvm.dbg.value(metadata ptr %310, metadata !640, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32 %309, metadata !642, metadata !DIExpression()), !dbg !648
  %311 = icmp ult ptr %310, %217, !dbg !652
  br i1 %311, label %312, label %351, !dbg !653, !prof !353

312:                                              ; preds = %308
  %313 = ptrtoint ptr %310 to i64, !dbg !648
  %314 = zext i32 %309 to i64, !dbg !653
  %315 = add i32 %309, %226, !dbg !653
  %316 = trunc i64 %313 to i32, !dbg !653
  %317 = sub i32 %315, %316, !dbg !653
  %318 = sub i64 %224, %313, !dbg !653
  %319 = getelementptr i8, ptr %310, i64 %318, !dbg !653
  br label %338, !dbg !653

320:                                              ; preds = %299, %327
  %321 = phi i64 [ %329, %327 ], [ 0, %299 ]
  %322 = phi ptr [ %328, %327 ], [ %304, %299 ]
  call void @llvm.dbg.value(metadata ptr %322, metadata !640, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i64 %321, metadata !642, metadata !DIExpression()), !dbg !648
  %323 = load i64, ptr %322, align 8, !dbg !654, !tbaa !612
  %324 = getelementptr inbounds i8, ptr %303, i64 %321, !dbg !654
  %325 = load i64, ptr %324, align 8, !dbg !654, !tbaa !612
  %326 = icmp eq i64 %323, %325, !dbg !654
  br i1 %326, label %327, label %331, !dbg !655, !prof !563

327:                                              ; preds = %320
  %328 = getelementptr inbounds i8, ptr %322, i64 8, !dbg !656
  call void @llvm.dbg.value(metadata ptr %328, metadata !640, metadata !DIExpression()), !dbg !648
  %329 = add nuw i64 %321, 8, !dbg !658
  call void @llvm.dbg.value(metadata i64 %329, metadata !642, metadata !DIExpression()), !dbg !648
  %330 = icmp ugt ptr %328, %225, !dbg !650
  br i1 %330, label %306, label %320, !dbg !651, !prof !563, !llvm.loop !659

331:                                              ; preds = %320
  %332 = trunc i64 %321 to i32, !dbg !661
  %333 = xor i64 %325, %323, !dbg !661
  call void @llvm.dbg.value(metadata i64 %333, metadata !643, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 %333, metadata !663, metadata !DIExpression()), !dbg !668
  %334 = call i64 @llvm.cttz.i64(i64 %333, i1 true), !dbg !670, !range !671
  %335 = trunc i64 %334 to i32, !dbg !670
  call void @llvm.dbg.value(metadata i32 %335, metadata !647, metadata !DIExpression()), !dbg !662
  %336 = lshr i32 %335, 3, !dbg !672
  %337 = or i32 %336, %332, !dbg !673
  call void @llvm.dbg.value(metadata i32 %337, metadata !642, metadata !DIExpression()), !dbg !648
  br label %351

338:                                              ; preds = %345, %312
  %339 = phi i64 [ %314, %312 ], [ %347, %345 ]
  %340 = phi ptr [ %310, %312 ], [ %346, %345 ]
  call void @llvm.dbg.value(metadata ptr %340, metadata !640, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i64 %339, metadata !642, metadata !DIExpression()), !dbg !648
  %341 = getelementptr inbounds i8, ptr %303, i64 %339, !dbg !674
  %342 = load i8, ptr %341, align 1, !dbg !674, !tbaa !105
  %343 = load i8, ptr %340, align 1, !dbg !674, !tbaa !105
  %344 = icmp eq i8 %342, %343, !dbg !674
  br i1 %344, label %345, label %349, !dbg !677, !prof !353

345:                                              ; preds = %338
  %346 = getelementptr inbounds i8, ptr %340, i64 1, !dbg !678
  call void @llvm.dbg.value(metadata ptr %346, metadata !640, metadata !DIExpression()), !dbg !648
  %347 = add nuw i64 %339, 1, !dbg !680
  call void @llvm.dbg.value(metadata i64 %347, metadata !642, metadata !DIExpression()), !dbg !648
  %348 = icmp eq ptr %346, %319, !dbg !652
  br i1 %348, label %351, label %338, !dbg !653, !prof !563, !llvm.loop !681

349:                                              ; preds = %338
  %350 = trunc i64 %339 to i32, !dbg !677
  br label %351, !dbg !683

351:                                              ; preds = %345, %349, %331, %308
  %352 = phi i32 [ %337, %331 ], [ %309, %308 ], [ %350, %349 ], [ %317, %345 ], !dbg !648
  %353 = add nsw i32 %352, 4, !dbg !684
  call void @llvm.dbg.value(metadata i32 %353, metadata !509, metadata !DIExpression()), !dbg !632
  %354 = sext i32 %353 to i64, !dbg !685
  %355 = getelementptr inbounds i8, ptr %301, i64 %354, !dbg !685
  call void @llvm.dbg.value(metadata ptr %355, metadata !486, metadata !DIExpression()), !dbg !515
  %356 = ptrtoint ptr %301 to i64, !dbg !686
  %357 = ptrtoint ptr %300 to i64, !dbg !686
  %358 = sub i64 %356, %357, !dbg !686
  %359 = trunc i64 %358 to i32, !dbg !687
  call void @llvm.dbg.value(metadata i32 %359, metadata !510, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata ptr %302, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 %359, metadata !693, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 %353, metadata !694, metadata !DIExpression()), !dbg !695
  %360 = icmp sgt i32 %352, 63, !dbg !697
  br i1 %360, label %361, label %370, !dbg !698

361:                                              ; preds = %351
  %362 = trunc i64 %358 to i16
  br label %363, !dbg !698

363:                                              ; preds = %363, %361
  %364 = phi i32 [ %353, %361 ], [ %368, %363 ]
  %365 = phi ptr [ %302, %361 ], [ %367, %363 ]
  call void @llvm.dbg.value(metadata i32 %364, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata ptr %365, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata ptr %365, metadata !699, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 %359, metadata !702, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 64, metadata !703, metadata !DIExpression()), !dbg !707
  %366 = getelementptr inbounds i8, ptr %365, i64 1, !dbg !710
  call void @llvm.dbg.value(metadata ptr %366, metadata !699, metadata !DIExpression()), !dbg !707
  store i16 %362, ptr %366, align 2, !dbg !712, !tbaa !572
  %367 = getelementptr inbounds i8, ptr %365, i64 3, !dbg !713
  call void @llvm.dbg.value(metadata ptr %367, metadata !699, metadata !DIExpression()), !dbg !707
  store i8 -2, ptr %365, align 1, !dbg !714
  call void @llvm.dbg.value(metadata ptr %367, metadata !688, metadata !DIExpression()), !dbg !695
  %368 = add nsw i32 %364, -64, !dbg !715
  call void @llvm.dbg.value(metadata i32 %368, metadata !694, metadata !DIExpression()), !dbg !695
  %369 = icmp ugt i32 %364, 131, !dbg !697
  br i1 %369, label %363, label %370, !dbg !698, !llvm.loop !716

370:                                              ; preds = %363, %351
  %371 = phi ptr [ %302, %351 ], [ %367, %363 ]
  %372 = phi i32 [ %353, %351 ], [ %368, %363 ]
  %373 = icmp sgt i32 %372, 64, !dbg !718
  br i1 %373, label %374, label %379, !dbg !720

374:                                              ; preds = %370
  call void @llvm.dbg.value(metadata ptr %371, metadata !699, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i32 %359, metadata !702, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i32 60, metadata !703, metadata !DIExpression()), !dbg !721
  %375 = getelementptr inbounds i8, ptr %371, i64 1, !dbg !724
  call void @llvm.dbg.value(metadata ptr %375, metadata !699, metadata !DIExpression()), !dbg !721
  %376 = trunc i64 %358 to i16, !dbg !725
  store i16 %376, ptr %375, align 2, !dbg !725, !tbaa !572
  %377 = getelementptr inbounds i8, ptr %371, i64 3, !dbg !726
  call void @llvm.dbg.value(metadata ptr %377, metadata !699, metadata !DIExpression()), !dbg !721
  store i8 -18, ptr %371, align 1, !dbg !727
  call void @llvm.dbg.value(metadata ptr %377, metadata !688, metadata !DIExpression()), !dbg !695
  %378 = add nsw i32 %372, -60, !dbg !728
  call void @llvm.dbg.value(metadata i32 %378, metadata !694, metadata !DIExpression()), !dbg !695
  br label %379, !dbg !729

379:                                              ; preds = %374, %370
  %380 = phi ptr [ %377, %374 ], [ %371, %370 ]
  %381 = phi i32 [ %378, %374 ], [ %372, %370 ]
  call void @llvm.dbg.value(metadata i32 %381, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata ptr %380, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata ptr %380, metadata !699, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i32 %359, metadata !702, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i32 %381, metadata !703, metadata !DIExpression()), !dbg !730
  %382 = icmp slt i32 %381, 12, !dbg !732
  %383 = icmp slt i32 %359, 2048
  %384 = and i1 %383, %382, !dbg !733
  br i1 %384, label %385, label %395, !dbg !733

385:                                              ; preds = %379
  call void @llvm.dbg.value(metadata i32 %381, metadata !704, metadata !DIExpression(DW_OP_plus_uconst, 1073741820, DW_OP_stack_value)), !dbg !734
  %386 = shl i32 %381, 2, !dbg !735
  %387 = add i32 %386, 241, !dbg !736
  %388 = lshr i32 %359, 3, !dbg !737
  %389 = and i32 %388, 224, !dbg !737
  %390 = or i32 %387, %389, !dbg !738
  %391 = trunc i32 %390 to i8, !dbg !739
  %392 = getelementptr inbounds i8, ptr %380, i64 1, !dbg !740
  call void @llvm.dbg.value(metadata ptr %392, metadata !699, metadata !DIExpression()), !dbg !730
  %393 = trunc i64 %358 to i8, !dbg !741
  %394 = getelementptr inbounds i8, ptr %380, i64 2, !dbg !742
  call void @llvm.dbg.value(metadata ptr %394, metadata !699, metadata !DIExpression()), !dbg !730
  store i8 %393, ptr %392, align 1, !dbg !743, !tbaa !105
  br label %402, !dbg !744

395:                                              ; preds = %379
  %396 = trunc i32 %381 to i8, !dbg !745
  %397 = shl i8 %396, 2, !dbg !745
  %398 = add i8 %397, -2, !dbg !745
  %399 = getelementptr inbounds i8, ptr %380, i64 1, !dbg !746
  call void @llvm.dbg.value(metadata ptr %399, metadata !699, metadata !DIExpression()), !dbg !730
  %400 = trunc i64 %358 to i16, !dbg !747
  store i16 %400, ptr %399, align 2, !dbg !747, !tbaa !572
  %401 = getelementptr inbounds i8, ptr %380, i64 3, !dbg !748
  call void @llvm.dbg.value(metadata ptr %401, metadata !699, metadata !DIExpression()), !dbg !730
  br label %402

402:                                              ; preds = %395, %385
  %403 = phi i8 [ %391, %385 ], [ %398, %395 ], !dbg !749
  %404 = phi ptr [ %394, %385 ], [ %401, %395 ], !dbg !749
  store i8 %403, ptr %380, align 1, !dbg !749
  call void @llvm.dbg.value(metadata ptr %404, metadata !699, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata ptr %404, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata ptr %404, metadata !483, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %355, metadata !511, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !632
  call void @llvm.dbg.value(metadata ptr %355, metadata !490, metadata !DIExpression()), !dbg !515
  %405 = icmp ult ptr %355, %220, !dbg !750
  br i1 %405, label %406, label %433, !dbg !752, !prof !353

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, ptr %355, i64 -1, !dbg !753
  call void @llvm.dbg.value(metadata ptr %407, metadata !511, metadata !DIExpression()), !dbg !632
  %408 = load i64, ptr %407, align 8, !dbg !754, !tbaa !612
  call void @llvm.dbg.value(metadata i64 %408, metadata !505, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i64 %408, metadata !755, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 0, metadata !760, metadata !DIExpression()), !dbg !761
  %409 = trunc i64 %408 to i32, !dbg !763
  call void @llvm.dbg.value(metadata i32 %409, metadata !544, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 %216, metadata !549, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 506832829, metadata !550, metadata !DIExpression()), !dbg !764
  %410 = mul i32 %409, 506832829, !dbg !766
  %411 = lshr i32 %410, %216, !dbg !767
  call void @llvm.dbg.value(metadata i32 %411, metadata !512, metadata !DIExpression()), !dbg !632
  %412 = ptrtoint ptr %355 to i64, !dbg !768
  %413 = sub i64 %412, %223, !dbg !768
  %414 = trunc i64 %413 to i16, !dbg !769
  %415 = add i16 %414, -1, !dbg !769
  %416 = zext i32 %411 to i64, !dbg !770
  %417 = getelementptr inbounds i16, ptr %192, i64 %416, !dbg !770
  store i16 %415, ptr %417, align 2, !dbg !771, !tbaa !572
  call void @llvm.dbg.value(metadata i64 %408, metadata !755, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()), !dbg !772
  %418 = lshr i64 %408, 8, !dbg !774
  %419 = trunc i64 %418 to i32, !dbg !775
  call void @llvm.dbg.value(metadata i32 %419, metadata !544, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i32 %216, metadata !549, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i32 506832829, metadata !550, metadata !DIExpression()), !dbg !776
  %420 = mul i32 %419, 506832829, !dbg !778
  %421 = lshr i32 %420, %216, !dbg !779
  call void @llvm.dbg.value(metadata i32 %421, metadata !513, metadata !DIExpression()), !dbg !632
  %422 = zext i32 %421 to i64, !dbg !780
  %423 = getelementptr inbounds i16, ptr %192, i64 %422, !dbg !780
  %424 = load i16, ptr %423, align 2, !dbg !780, !tbaa !572
  %425 = zext i16 %424 to i64
  %426 = getelementptr inbounds i8, ptr %176, i64 %425, !dbg !781
  call void @llvm.dbg.value(metadata ptr %426, metadata !501, metadata !DIExpression()), !dbg !555
  %427 = load i32, ptr %426, align 4, !dbg !782, !tbaa !542
  call void @llvm.dbg.value(metadata i32 %427, metadata !506, metadata !DIExpression()), !dbg !555
  store i16 %414, ptr %423, align 2, !dbg !783, !tbaa !572
  call void @llvm.dbg.value(metadata i64 undef, metadata !755, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()), !dbg !784
  %428 = icmp eq i32 %427, %419, !dbg !786
  br i1 %428, label %299, label %429, !dbg !787, !llvm.loop !788

429:                                              ; preds = %406
  %430 = lshr i64 %408, 16, !dbg !787
  %431 = trunc i64 %430 to i32, !dbg !787
  call void @llvm.dbg.value(metadata i64 undef, metadata !755, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 2, metadata !760, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 %431, metadata !544, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 %216, metadata !549, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 506832829, metadata !550, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata !DIArgList(i32 %431, i32 %216), metadata !495, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 506832829, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !531
  %432 = getelementptr inbounds i8, ptr %355, i64 1, !dbg !794
  call void @llvm.dbg.value(metadata ptr %404, metadata !483, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %432, metadata !486, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %355, metadata !490, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr poison, metadata !501, metadata !DIExpression()), !dbg !555
  br label %227

433:                                              ; preds = %232, %402, %213
  %434 = phi ptr [ %176, %213 ], [ %355, %402 ], [ %229, %232 ], !dbg !515
  %435 = phi ptr [ %214, %213 ], [ %404, %402 ], [ %231, %232 ]
  call void @llvm.dbg.value(metadata ptr %435, metadata !483, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %434, metadata !490, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.label(metadata !514), !dbg !795
  %436 = icmp ult ptr %434, %217, !dbg !796
  br i1 %436, label %437, label %469, !dbg !798

437:                                              ; preds = %433
  %438 = ptrtoint ptr %217 to i64, !dbg !799
  %439 = ptrtoint ptr %434 to i64, !dbg !799
  %440 = sub i64 %438, %439, !dbg !799
  %441 = trunc i64 %440 to i32, !dbg !800
  call void @llvm.dbg.value(metadata ptr %435, metadata !584, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata ptr %434, metadata !589, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 %441, metadata !590, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i1 false, metadata !591, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !801
  %442 = add nsw i32 %441, -1, !dbg !803
  call void @llvm.dbg.value(metadata i32 %442, metadata !592, metadata !DIExpression()), !dbg !801
  %443 = icmp slt i32 %441, 61, !dbg !804
  br i1 %443, label %446, label %444, !dbg !805

444:                                              ; preds = %437
  call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %442, metadata !592, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata ptr %435, metadata !584, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !801
  %445 = getelementptr inbounds i8, ptr %435, i64 1, !dbg !806
  call void @llvm.dbg.value(metadata ptr %445, metadata !584, metadata !DIExpression()), !dbg !801
  br label %450, !dbg !807

446:                                              ; preds = %437
  %447 = trunc i32 %442 to i8, !dbg !808
  %448 = shl i8 %447, 2, !dbg !808
  %449 = getelementptr inbounds i8, ptr %435, i64 1, !dbg !809
  call void @llvm.dbg.value(metadata ptr %449, metadata !584, metadata !DIExpression()), !dbg !801
  br label %463

450:                                              ; preds = %450, %444
  %451 = phi ptr [ %457, %450 ], [ %445, %444 ]
  %452 = phi i32 [ %456, %450 ], [ 0, %444 ]
  %453 = phi i32 [ %455, %450 ], [ %442, %444 ]
  call void @llvm.dbg.value(metadata i32 %452, metadata !596, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %453, metadata !592, metadata !DIExpression()), !dbg !801
  %454 = trunc i32 %453 to i8, !dbg !810
  call void @llvm.dbg.value(metadata ptr %451, metadata !584, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !801
  store i8 %454, ptr %451, align 1, !dbg !811, !tbaa !105
  %455 = lshr i32 %453, 8
  call void @llvm.dbg.value(metadata i32 %455, metadata !592, metadata !DIExpression()), !dbg !801
  %456 = add nuw nsw i32 %452, 1, !dbg !812
  call void @llvm.dbg.value(metadata i32 %456, metadata !596, metadata !DIExpression()), !dbg !806
  %457 = getelementptr inbounds i8, ptr %451, i64 1, !dbg !806
  call void @llvm.dbg.value(metadata ptr %457, metadata !584, metadata !DIExpression()), !dbg !801
  %458 = icmp ult i32 %453, 256, !dbg !813
  br i1 %458, label %459, label %450, !dbg !807, !llvm.loop !814

459:                                              ; preds = %450
  %460 = trunc i32 %456 to i8, !dbg !816
  %461 = shl i8 %460, 2, !dbg !816
  %462 = add i8 %461, -20, !dbg !816
  br label %463

463:                                              ; preds = %459, %446
  %464 = phi i8 [ %462, %459 ], [ %448, %446 ], !dbg !817
  %465 = phi ptr [ %457, %459 ], [ %449, %446 ], !dbg !817
  store i8 %464, ptr %435, align 1, !dbg !817, !tbaa !105
  call void @llvm.dbg.value(metadata ptr %465, metadata !584, metadata !DIExpression()), !dbg !801
  %466 = shl i64 %440, 32, !dbg !818
  %467 = ashr exact i64 %466, 32, !dbg !818
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %465, ptr align 1 %434, i64 %467, i1 false), !dbg !819
  %468 = getelementptr inbounds i8, ptr %465, i64 %467, !dbg !820
  call void @llvm.dbg.value(metadata ptr %468, metadata !483, metadata !DIExpression()), !dbg !515
  br label %469, !dbg !821

469:                                              ; preds = %463, %433
  %470 = phi ptr [ %468, %463 ], [ %435, %433 ]
  call void @llvm.dbg.value(metadata ptr %470, metadata !233, metadata !DIExpression()), !dbg !365
  %471 = ptrtoint ptr %470 to i64, !dbg !822
  %472 = ptrtoint ptr %214 to i64, !dbg !822
  %473 = sub i64 %471, %472, !dbg !822
  call void @llvm.dbg.value(metadata ptr undef, metadata !300, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr %214, metadata !305, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i64 %473, metadata !306, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr %196, metadata !307, metadata !DIExpression()), !dbg !823
  %474 = load ptr, ptr %196, align 8, !dbg !825, !tbaa !313
  %475 = zext i32 %99 to i64, !dbg !826
  %476 = getelementptr i8, ptr %474, i64 %475, !dbg !826
  call void @llvm.dbg.value(metadata ptr %476, metadata !308, metadata !DIExpression()), !dbg !823
  %477 = load i64, ptr %197, align 8, !dbg !827, !tbaa !317
  %478 = sub i64 %477, %475, !dbg !827
  %479 = call i64 @llvm.umin.i64(i64 %478, i64 %473), !dbg !827
  call void @llvm.dbg.value(metadata i64 %479, metadata !309, metadata !DIExpression()), !dbg !823
  %480 = icmp eq ptr %476, %214, !dbg !828
  br i1 %480, label %482, label %481, !dbg !829

481:                                              ; preds = %469
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %476, ptr align 1 %214, i64 %479, i1 false), !dbg !830
  br label %482, !dbg !830

482:                                              ; preds = %481, %469
  %483 = trunc i64 %473 to i32, !dbg !831
  %484 = add i32 %98, %483, !dbg !831
  call void @llvm.dbg.value(metadata i32 %484, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !203
  %485 = trunc i64 %479 to i32, !dbg !832
  %486 = add i32 %99, %485, !dbg !832
  call void @llvm.dbg.value(metadata i32 %486, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %479, metadata !309, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr %214, metadata !305, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr %196, metadata !307, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i64 %473, metadata !306, metadata !DIExpression()), !dbg !823
  %487 = sub i64 %473, %479, !dbg !833
  call void @llvm.dbg.value(metadata i64 %487, metadata !306, metadata !DIExpression()), !dbg !823
  %488 = icmp eq i64 %487, 0, !dbg !834
  br i1 %488, label %506, label %489, !dbg !835

489:                                              ; preds = %482, %489
  %490 = phi i32 [ %496, %489 ], [ %100, %482 ], !dbg !203
  %491 = phi i64 [ %502, %489 ], [ %487, %482 ]
  %492 = phi i64 [ %500, %489 ], [ %479, %482 ]
  %493 = phi ptr [ %495, %489 ], [ %214, %482 ]
  %494 = phi ptr [ %497, %489 ], [ %196, %482 ]
  call void @llvm.dbg.value(metadata i32 %490, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %492, metadata !309, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr %493, metadata !305, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr %494, metadata !307, metadata !DIExpression()), !dbg !823
  %495 = getelementptr inbounds i8, ptr %493, i64 %492, !dbg !836
  call void @llvm.dbg.value(metadata ptr %495, metadata !305, metadata !DIExpression()), !dbg !823
  %496 = add i32 %490, 1, !dbg !837
  call void @llvm.dbg.value(metadata i32 %496, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  %497 = getelementptr inbounds %struct.iovec, ptr %494, i64 1, !dbg !838
  call void @llvm.dbg.value(metadata ptr %497, metadata !307, metadata !DIExpression()), !dbg !823
  %498 = getelementptr inbounds %struct.iovec, ptr %494, i64 1, i32 1, !dbg !839
  %499 = load i64, ptr %498, align 8, !dbg !839, !tbaa !317
  %500 = call i64 @llvm.umin.i64(i64 %499, i64 %491), !dbg !839
  call void @llvm.dbg.value(metadata i64 %500, metadata !309, metadata !DIExpression()), !dbg !823
  %501 = load ptr, ptr %497, align 8, !dbg !840, !tbaa !313
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %501, ptr align 1 %495, i64 %500, i1 false), !dbg !841
  call void @llvm.dbg.value(metadata i64 %500, metadata !193, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i64 %491, metadata !306, metadata !DIExpression()), !dbg !823
  %502 = sub i64 %491, %500, !dbg !833
  call void @llvm.dbg.value(metadata i64 %502, metadata !306, metadata !DIExpression()), !dbg !823
  %503 = icmp eq i64 %502, 0, !dbg !834
  br i1 %503, label %504, label %489, !dbg !835, !llvm.loop !842

504:                                              ; preds = %489
  %505 = trunc i64 %500 to i32, !dbg !844
  br label %506, !dbg !845

506:                                              ; preds = %504, %482
  %507 = phi i32 [ %486, %482 ], [ %505, %504 ], !dbg !823
  %508 = phi i32 [ %100, %482 ], [ %496, %504 ], !dbg !203
  call void @llvm.dbg.value(metadata i32 %508, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %507, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 %473), metadata !214, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !235
  %509 = sub i32 %103, %118, !dbg !845
  call void @llvm.dbg.value(metadata i32 %509, metadata !215, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr undef, metadata !377, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i32 %177, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !846
  %510 = sext i32 %174 to i64, !dbg !848
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %510), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !846
  %511 = add i32 %177, %175, !dbg !849
  call void @llvm.dbg.value(metadata i32 %511, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  %512 = sext i32 %511 to i64, !dbg !850
  %513 = getelementptr inbounds %struct.iovec, ptr %1, i64 %510, i32 1, !dbg !851
  %514 = load i64, ptr %513, align 8, !dbg !851, !tbaa !317
  %515 = icmp ugt i64 %514, %512, !dbg !852
  %516 = add nsw i32 %174, 1, !dbg !853
  %517 = icmp slt i32 %516, %2, !dbg !853
  %518 = select i1 %517, i32 %516, i32 %174, !dbg !853
  %519 = select i1 %517, i32 0, i32 %511, !dbg !853
  %520 = select i1 %515, i32 %174, i32 %518, !dbg !853
  %521 = select i1 %515, i32 %511, i32 %519, !dbg !853
  call void @llvm.dbg.value(metadata i32 %521, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %520, metadata !185, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 -5, metadata !213, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i64 poison, metadata !214, metadata !DIExpression()), !dbg !235
  %522 = icmp sgt i32 %509, 0, !dbg !336
  br i1 %522, label %97, label %523, !dbg !337

523:                                              ; preds = %97, %105, %111, %506, %89
  %524 = phi i32 [ %71, %89 ], [ %98, %97 ], [ %98, %105 ], [ %484, %506 ], [ %98, %111 ], !dbg !235
  %525 = phi i32 [ %91, %89 ], [ %100, %97 ], [ %100, %105 ], [ %508, %506 ], [ %100, %111 ], !dbg !338
  %526 = phi i32 [ 0, %89 ], [ -5, %97 ], [ -5, %105 ], [ 0, %506 ], [ -5, %111 ], !dbg !235
  call void @llvm.dbg.value(metadata i32 %525, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %524, metadata !193, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !203
  call void @llvm.dbg.value(metadata i32 %526, metadata !213, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.label(metadata !234), !dbg !854
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %8) #12, !dbg !855
  call void @llvm.dbg.value(metadata i32 %526, metadata !201, metadata !DIExpression()), !dbg !203
  %527 = add i32 %525, 1, !dbg !856
  store i32 %527, ptr %5, align 4, !dbg !857, !tbaa !542
  %528 = zext i32 %524 to i64, !dbg !858
  store i64 %528, ptr %6, align 8, !dbg !859, !tbaa !155
  ret i32 %526, !dbg !860
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define i32 @snappy_compress(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 !dbg !861 {
  %6 = alloca %struct.iovec, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !865, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata ptr %1, metadata !866, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 %2, metadata !867, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata ptr %3, metadata !868, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata ptr %4, metadata !869, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %6, metadata !870, metadata !DIExpression()), !dbg !875
  store ptr %1, ptr %6, align 8, !dbg !876, !tbaa !313
  %9 = getelementptr inbounds %struct.iovec, ptr %6, i64 0, i32 1, !dbg !876
  store i64 %2, ptr %9, align 8, !dbg !876, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %7, metadata !871, metadata !DIExpression()), !dbg !878
  store ptr %3, ptr %7, align 8, !dbg !879, !tbaa !313
  %10 = getelementptr inbounds %struct.iovec, ptr %7, i64 0, i32 1, !dbg !879
  store i64 4294967295, ptr %10, align 8, !dbg !879, !tbaa !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12, !dbg !880
  call void @llvm.dbg.value(metadata i32 1, metadata !872, metadata !DIExpression()), !dbg !873
  store i32 1, ptr %8, align 4, !dbg !881, !tbaa !542
  call void @llvm.dbg.value(metadata ptr %8, metadata !872, metadata !DIExpression(DW_OP_deref)), !dbg !873
  %11 = call i32 @snappy_compress_iov(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 1, i64 noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %4), !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12, !dbg !883
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12, !dbg !883
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12, !dbg !883
  ret i32 %11, !dbg !884
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define i32 @snappy_uncompress_iov(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #4 !dbg !885 {
  %5 = alloca %struct.snappy_decompressor, align 8
  %6 = alloca %struct.source, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !889, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i32 %1, metadata !890, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64 %2, metadata !891, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr %3, metadata !892, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %6, metadata !893, metadata !DIExpression()), !dbg !902
  store ptr %0, ptr %6, align 8, !dbg !903, !tbaa !904
  %7 = getelementptr inbounds %struct.source, ptr %6, i64 0, i32 1, !dbg !903
  store i32 %1, ptr %7, align 8, !dbg !903, !tbaa !906
  %8 = getelementptr inbounds %struct.source, ptr %6, i64 0, i32 2, !dbg !903
  store i32 0, ptr %8, align 4, !dbg !903, !tbaa !907
  %9 = getelementptr inbounds %struct.source, ptr %6, i64 0, i32 3, !dbg !903
  store i32 0, ptr %9, align 8, !dbg !903, !tbaa !908
  %10 = getelementptr inbounds %struct.source, ptr %6, i64 0, i32 4, !dbg !903
  store i64 %2, ptr %10, align 8, !dbg !903, !tbaa !909
  call void @llvm.dbg.value(metadata ptr %3, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !900
  call void @llvm.dbg.value(metadata ptr %3, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  call void @llvm.dbg.value(metadata ptr null, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !900
  call void @llvm.dbg.value(metadata ptr %6, metadata !910, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr undef, metadata !916, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 -1, metadata !917, metadata !DIExpression()), !dbg !928
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %5, metadata !918, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i32 0, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %5, metadata !932, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr %6, metadata !938, metadata !DIExpression()), !dbg !939
  store ptr %6, ptr %5, align 8, !dbg !941, !tbaa !942
  %11 = getelementptr inbounds %struct.snappy_decompressor, ptr %5, i64 0, i32 1, !dbg !945
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %11, i8 0, i64 21, i1 false), !dbg !946
  call void @llvm.dbg.value(metadata ptr %5, metadata !947, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr undef, metadata !952, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 0, metadata !953, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 0, metadata !953, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr %6, metadata !340, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !961
  %12 = icmp sgt i32 %1, 0, !dbg !963
  br i1 %12, label %13, label %524, !dbg !964, !prof !353

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  %14 = getelementptr inbounds %struct.iovec, ptr %0, i64 0, i32 1, !dbg !966
  %15 = load i64, ptr %14, align 8, !dbg !966, !tbaa !317
  %16 = icmp eq i64 %15, 0, !dbg !967
  br i1 %16, label %524, label %17, !dbg !968

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 0), metadata !954, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !969
  call void @llvm.dbg.value(metadata ptr %0, metadata !346, metadata !DIExpression()), !dbg !965
  %18 = load ptr, ptr %0, align 8, !dbg !970, !tbaa !313
  call void @llvm.dbg.value(metadata !DIArgList(ptr %18, i64 0), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  call void @llvm.dbg.value(metadata ptr %18, metadata !956, metadata !DIExpression()), !dbg !969
  %19 = load i8, ptr %18, align 1, !dbg !971, !tbaa !105
  call void @llvm.dbg.value(metadata i8 %19, metadata !957, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %6, metadata !377, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata i64 1, metadata !382, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !972
  store i32 1, ptr %9, align 8, !dbg !974, !tbaa !908
  %20 = icmp eq i64 %15, 1, !dbg !975
  br i1 %20, label %21, label %24, !dbg !976

21:                                               ; preds = %17
  %22 = icmp ugt i32 %1, 1, !dbg !977
  br i1 %22, label %23, label %30, !dbg !978

23:                                               ; preds = %21
  store i32 0, ptr %9, align 8, !dbg !979, !tbaa !908
  store i32 1, ptr %8, align 4, !dbg !981, !tbaa !907
  br label %24, !dbg !982

24:                                               ; preds = %23, %17
  %25 = phi i32 [ 0, %23 ], [ 1, %17 ]
  %26 = phi i32 [ 1, %23 ], [ 0, %17 ]
  %27 = and i8 %19, 127, !dbg !983
  %28 = zext i8 %27 to i32, !dbg !983
  %29 = icmp sgt i8 %19, -1, !dbg !984
  call void @llvm.dbg.value(metadata i32 poison, metadata !953, metadata !DIExpression()), !dbg !958
  br i1 %29, label %149, label %34

30:                                               ; preds = %21
  %31 = and i8 %19, 127, !dbg !983
  %32 = zext i8 %31 to i32, !dbg !983
  %33 = icmp sgt i8 %19, -1, !dbg !984
  call void @llvm.dbg.value(metadata i32 poison, metadata !953, metadata !DIExpression()), !dbg !958
  br i1 %33, label %149, label %40

34:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 7, metadata !953, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr %6, metadata !340, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !961
  %35 = icmp ult i32 %26, %1, !dbg !963
  br i1 %35, label %36, label %524, !dbg !964, !prof !353

36:                                               ; preds = %34
  %37 = zext i32 %26 to i64
  %38 = getelementptr inbounds %struct.iovec, ptr %0, i64 %37, i32 1
  %39 = load i64, ptr %38, align 8, !dbg !966, !tbaa !317
  br label %40, !dbg !964

40:                                               ; preds = %30, %36
  %41 = phi i64 [ %39, %36 ], [ 1, %30 ], !dbg !966
  %42 = phi i32 [ %25, %36 ], [ 1, %30 ]
  %43 = phi i32 [ %26, %36 ], [ 0, %30 ]
  %44 = phi i32 [ %28, %36 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i32 %43), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  %45 = zext i32 %42 to i64, !dbg !986
  %46 = icmp ugt i64 %41, %45, !dbg !967
  br i1 %46, label %47, label %524, !dbg !968

47:                                               ; preds = %40
  %48 = zext i32 %43 to i64, !dbg !987
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i32 %43), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  call void @llvm.dbg.value(metadata !DIArgList(i64 %41, i64 %45), metadata !954, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !969
  %49 = getelementptr inbounds %struct.iovec, ptr %0, i64 %48, !dbg !987
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression()), !dbg !965
  %50 = load ptr, ptr %49, align 8, !dbg !970, !tbaa !313
  call void @llvm.dbg.value(metadata !DIArgList(ptr %50, i64 %45), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  %51 = getelementptr i8, ptr %50, i64 %45, !dbg !988
  call void @llvm.dbg.value(metadata ptr %51, metadata !956, metadata !DIExpression()), !dbg !969
  %52 = load i8, ptr %51, align 1, !dbg !971, !tbaa !105
  call void @llvm.dbg.value(metadata i8 %52, metadata !957, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %6, metadata !377, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata i64 1, metadata !382, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i32 %43), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !972
  %53 = add nuw nsw i32 %42, 1, !dbg !974
  store i32 %53, ptr %9, align 8, !dbg !974, !tbaa !908
  %54 = zext i32 %53 to i64, !dbg !989
  %55 = icmp ugt i64 %41, %54, !dbg !975
  br i1 %55, label %60, label %56, !dbg !976

56:                                               ; preds = %47
  %57 = add nuw nsw i32 %43, 1, !dbg !990
  %58 = icmp ult i32 %57, %1, !dbg !977
  br i1 %58, label %59, label %60, !dbg !978

59:                                               ; preds = %56
  store i32 0, ptr %9, align 8, !dbg !979, !tbaa !908
  store i32 %57, ptr %8, align 4, !dbg !981, !tbaa !907
  br label %60, !dbg !982

60:                                               ; preds = %59, %56, %47
  %61 = phi i32 [ 0, %59 ], [ %53, %56 ], [ %53, %47 ]
  %62 = phi i32 [ %57, %59 ], [ %43, %56 ], [ %43, %47 ]
  %63 = and i8 %52, 127, !dbg !983
  %64 = zext i8 %63 to i32, !dbg !983
  %65 = shl nuw nsw i32 %64, 7, !dbg !991
  %66 = or i32 %65, %44, !dbg !992
  %67 = icmp sgt i8 %52, -1, !dbg !984
  call void @llvm.dbg.value(metadata i32 poison, metadata !953, metadata !DIExpression()), !dbg !958
  br i1 %67, label %149, label %68

68:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 14, metadata !953, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr %6, metadata !340, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !961
  %69 = icmp ult i32 %62, %1, !dbg !963
  br i1 %69, label %70, label %524, !dbg !964, !prof !353

70:                                               ; preds = %68
  %71 = zext i32 %62 to i64, !dbg !987
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %71), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  %72 = zext i32 %61 to i64, !dbg !986
  %73 = getelementptr inbounds %struct.iovec, ptr %0, i64 %71, i32 1, !dbg !966
  %74 = load i64, ptr %73, align 8, !dbg !966, !tbaa !317
  %75 = icmp ugt i64 %74, %72, !dbg !967
  br i1 %75, label %76, label %524, !dbg !968

76:                                               ; preds = %70
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %71), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  call void @llvm.dbg.value(metadata !DIArgList(i64 %74, i64 %72), metadata !954, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !969
  %77 = getelementptr inbounds %struct.iovec, ptr %0, i64 %71, !dbg !987
  call void @llvm.dbg.value(metadata ptr %77, metadata !346, metadata !DIExpression()), !dbg !965
  %78 = load ptr, ptr %77, align 8, !dbg !970, !tbaa !313
  call void @llvm.dbg.value(metadata !DIArgList(ptr %78, i64 %72), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  %79 = getelementptr i8, ptr %78, i64 %72, !dbg !988
  call void @llvm.dbg.value(metadata ptr %79, metadata !956, metadata !DIExpression()), !dbg !969
  %80 = load i8, ptr %79, align 1, !dbg !971, !tbaa !105
  call void @llvm.dbg.value(metadata i8 %80, metadata !957, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %6, metadata !377, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata i64 1, metadata !382, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %71), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !972
  %81 = add nuw nsw i32 %61, 1, !dbg !974
  store i32 %81, ptr %9, align 8, !dbg !974, !tbaa !908
  %82 = zext i32 %81 to i64, !dbg !989
  %83 = icmp ugt i64 %74, %82, !dbg !975
  br i1 %83, label %88, label %84, !dbg !976

84:                                               ; preds = %76
  %85 = add nuw nsw i32 %62, 1, !dbg !990
  %86 = icmp ult i32 %85, %1, !dbg !977
  br i1 %86, label %87, label %88, !dbg !978

87:                                               ; preds = %84
  store i32 0, ptr %9, align 8, !dbg !979, !tbaa !908
  store i32 %85, ptr %8, align 4, !dbg !981, !tbaa !907
  br label %88, !dbg !982

88:                                               ; preds = %87, %84, %76
  %89 = phi i32 [ 0, %87 ], [ %81, %84 ], [ %81, %76 ]
  %90 = phi i32 [ %85, %87 ], [ %62, %84 ], [ %62, %76 ]
  %91 = and i8 %80, 127, !dbg !983
  %92 = zext i8 %91 to i32, !dbg !983
  %93 = shl nuw nsw i32 %92, 14, !dbg !991
  %94 = or i32 %93, %66, !dbg !992
  %95 = icmp sgt i8 %80, -1, !dbg !984
  call void @llvm.dbg.value(metadata i32 poison, metadata !953, metadata !DIExpression()), !dbg !958
  br i1 %95, label %149, label %96

96:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i32 21, metadata !953, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr %6, metadata !340, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !961
  %97 = icmp ult i32 %90, %1, !dbg !963
  br i1 %97, label %98, label %524, !dbg !964, !prof !353

98:                                               ; preds = %96
  %99 = zext i32 %90 to i64, !dbg !987
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %99), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  %100 = zext i32 %89 to i64, !dbg !986
  %101 = getelementptr inbounds %struct.iovec, ptr %0, i64 %99, i32 1, !dbg !966
  %102 = load i64, ptr %101, align 8, !dbg !966, !tbaa !317
  %103 = icmp ugt i64 %102, %100, !dbg !967
  br i1 %103, label %104, label %524, !dbg !968

104:                                              ; preds = %98
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %99), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  call void @llvm.dbg.value(metadata !DIArgList(i64 %102, i64 %100), metadata !954, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !969
  %105 = getelementptr inbounds %struct.iovec, ptr %0, i64 %99, !dbg !987
  call void @llvm.dbg.value(metadata ptr %105, metadata !346, metadata !DIExpression()), !dbg !965
  %106 = load ptr, ptr %105, align 8, !dbg !970, !tbaa !313
  call void @llvm.dbg.value(metadata !DIArgList(ptr %106, i64 %100), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  %107 = getelementptr i8, ptr %106, i64 %100, !dbg !988
  call void @llvm.dbg.value(metadata ptr %107, metadata !956, metadata !DIExpression()), !dbg !969
  %108 = load i8, ptr %107, align 1, !dbg !971, !tbaa !105
  call void @llvm.dbg.value(metadata i8 %108, metadata !957, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %6, metadata !377, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata i64 1, metadata !382, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %99), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !972
  %109 = add nuw nsw i32 %89, 1, !dbg !974
  store i32 %109, ptr %9, align 8, !dbg !974, !tbaa !908
  %110 = zext i32 %109 to i64, !dbg !989
  %111 = icmp ugt i64 %102, %110, !dbg !975
  br i1 %111, label %116, label %112, !dbg !976

112:                                              ; preds = %104
  %113 = add nuw nsw i32 %90, 1, !dbg !990
  %114 = icmp ult i32 %113, %1, !dbg !977
  br i1 %114, label %115, label %116, !dbg !978

115:                                              ; preds = %112
  store i32 0, ptr %9, align 8, !dbg !979, !tbaa !908
  store i32 %113, ptr %8, align 4, !dbg !981, !tbaa !907
  br label %116, !dbg !982

116:                                              ; preds = %115, %112, %104
  %117 = phi i32 [ 0, %115 ], [ %109, %112 ], [ %109, %104 ]
  %118 = phi i32 [ %113, %115 ], [ %90, %112 ], [ %90, %104 ]
  %119 = and i8 %108, 127, !dbg !983
  %120 = zext i8 %119 to i32, !dbg !983
  %121 = shl nuw nsw i32 %120, 21, !dbg !991
  %122 = or i32 %121, %94, !dbg !992
  %123 = icmp sgt i8 %108, -1, !dbg !984
  call void @llvm.dbg.value(metadata i32 poison, metadata !953, metadata !DIExpression()), !dbg !958
  br i1 %123, label %149, label %124

124:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 28, metadata !953, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr %6, metadata !340, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !961
  %125 = icmp ult i32 %118, %1, !dbg !963
  br i1 %125, label %126, label %524, !dbg !964, !prof !353

126:                                              ; preds = %124
  %127 = zext i32 %118 to i64, !dbg !987
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %127), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  %128 = zext i32 %117 to i64, !dbg !986
  %129 = getelementptr inbounds %struct.iovec, ptr %0, i64 %127, i32 1, !dbg !966
  %130 = load i64, ptr %129, align 8, !dbg !966, !tbaa !317
  %131 = icmp ugt i64 %130, %128, !dbg !967
  br i1 %131, label %132, label %524, !dbg !968

132:                                              ; preds = %126
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %127), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !965
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  call void @llvm.dbg.value(metadata !DIArgList(i64 %130, i64 %128), metadata !954, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !969
  %133 = getelementptr inbounds %struct.iovec, ptr %0, i64 %127, !dbg !987
  call void @llvm.dbg.value(metadata ptr %133, metadata !346, metadata !DIExpression()), !dbg !965
  %134 = load ptr, ptr %133, align 8, !dbg !970, !tbaa !313
  call void @llvm.dbg.value(metadata !DIArgList(ptr %134, i64 %128), metadata !956, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !969
  %135 = getelementptr i8, ptr %134, i64 %128, !dbg !988
  call void @llvm.dbg.value(metadata ptr %135, metadata !956, metadata !DIExpression()), !dbg !969
  %136 = load i8, ptr %135, align 1, !dbg !971, !tbaa !105
  call void @llvm.dbg.value(metadata i8 %136, metadata !957, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %6, metadata !377, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata i64 1, metadata !382, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %127), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !972
  %137 = add nuw nsw i32 %117, 1, !dbg !974
  store i32 %137, ptr %9, align 8, !dbg !974, !tbaa !908
  %138 = zext i32 %137 to i64, !dbg !989
  %139 = icmp ugt i64 %130, %138, !dbg !975
  br i1 %139, label %144, label %140, !dbg !976

140:                                              ; preds = %132
  %141 = add nuw nsw i32 %118, 1, !dbg !990
  %142 = icmp ult i32 %141, %1, !dbg !977
  br i1 %142, label %143, label %144, !dbg !978

143:                                              ; preds = %140
  store i32 0, ptr %9, align 8, !dbg !979, !tbaa !908
  store i32 %141, ptr %8, align 4, !dbg !981, !tbaa !907
  br label %144, !dbg !982

144:                                              ; preds = %143, %140, %132
  %145 = zext i8 %136 to i32, !dbg !983
  %146 = shl i32 %145, 28, !dbg !991
  %147 = or i32 %146, %122, !dbg !992
  %148 = icmp sgt i8 %136, -1, !dbg !984
  call void @llvm.dbg.value(metadata i32 poison, metadata !953, metadata !DIExpression()), !dbg !958
  br i1 %148, label %149, label %524

149:                                              ; preds = %30, %144, %116, %88, %60, %24
  %150 = phi i32 [ %28, %24 ], [ %66, %60 ], [ %94, %88 ], [ %122, %116 ], [ %147, %144 ], [ %32, %30 ], !dbg !992
  call void @llvm.dbg.value(metadata i32 %150, metadata !927, metadata !DIExpression()), !dbg !928
  %151 = zext i32 %150 to i64, !dbg !993
  call void @llvm.dbg.value(metadata ptr undef, metadata !995, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %151, metadata !1000, metadata !DIExpression()), !dbg !1001
  %152 = getelementptr inbounds i8, ptr %3, i64 %151, !dbg !1003
  call void @llvm.dbg.value(metadata ptr %152, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !900
  call void @llvm.dbg.value(metadata ptr %5, metadata !1004, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr undef, metadata !1009, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr null, metadata !1010, metadata !DIExpression()), !dbg !1029
  %153 = getelementptr inbounds %struct.snappy_decompressor, ptr %5, i64 0, i32 2, !dbg !1031
  %154 = call fastcc zeroext i1 @refill_tag(ptr noundef nonnull %5), !dbg !1033
  br i1 %154, label %155, label %495, !dbg !1036

155:                                              ; preds = %149
  call void @llvm.dbg.value(metadata ptr poison, metadata !1010, metadata !DIExpression()), !dbg !1029
  %156 = load ptr, ptr %11, align 8, !dbg !1036, !tbaa !1037
  %157 = getelementptr inbounds %struct.snappy_decompressor, ptr %5, i64 0, i32 3
  %158 = ptrtoint ptr %152 to i64
  %159 = ptrtoint ptr %3 to i64
  br label %160, !dbg !1038

160:                                              ; preds = %492, %155
  %161 = phi ptr [ %3, %155 ], [ %493, %492 ], !dbg !900
  %162 = phi ptr [ %156, %155 ], [ %494, %492 ], !dbg !1029
  call void @llvm.dbg.value(metadata ptr %161, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  call void @llvm.dbg.value(metadata ptr %162, metadata !1010, metadata !DIExpression()), !dbg !1029
  %163 = load ptr, ptr %153, align 8, !dbg !1039, !tbaa !1041
  %164 = ptrtoint ptr %163 to i64, !dbg !1042
  %165 = ptrtoint ptr %162 to i64, !dbg !1042
  %166 = sub i64 %164, %165, !dbg !1042
  %167 = icmp slt i64 %166, 5, !dbg !1043
  br i1 %167, label %168, label %172, !dbg !1044

168:                                              ; preds = %160
  store ptr %162, ptr %11, align 8, !dbg !1045, !tbaa !1037
  %169 = call fastcc zeroext i1 @refill_tag(ptr noundef nonnull %5), !dbg !1047
  br i1 %169, label %170, label %495, !dbg !1049

170:                                              ; preds = %168
  %171 = load ptr, ptr %11, align 8, !dbg !1050, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %171, metadata !1010, metadata !DIExpression()), !dbg !1029
  br label %172, !dbg !1051

172:                                              ; preds = %170, %160
  %173 = phi ptr [ %171, %170 ], [ %162, %160 ], !dbg !1029
  call void @llvm.dbg.value(metadata ptr %173, metadata !1010, metadata !DIExpression()), !dbg !1029
  %174 = getelementptr inbounds i8, ptr %173, i64 1, !dbg !1052
  call void @llvm.dbg.value(metadata ptr %174, metadata !1010, metadata !DIExpression()), !dbg !1029
  %175 = load i8, ptr %173, align 1, !dbg !1053, !tbaa !105
  call void @llvm.dbg.value(metadata i8 %175, metadata !1011, metadata !DIExpression()), !dbg !1054
  %176 = zext i8 %175 to i32, !dbg !1055
  %177 = and i32 %176, 3, !dbg !1056
  %178 = icmp eq i32 %177, 0, !dbg !1057
  br i1 %178, label %179, label %306, !dbg !1058

179:                                              ; preds = %172
  %180 = lshr i32 %176, 2
  %181 = add nuw nsw i32 %180, 1, !dbg !1059
  call void @llvm.dbg.value(metadata i32 %181, metadata !1015, metadata !DIExpression()), !dbg !1060
  %182 = load ptr, ptr %153, align 8, !dbg !1061, !tbaa !1041
  %183 = ptrtoint ptr %182 to i64, !dbg !1063
  %184 = ptrtoint ptr %174 to i64, !dbg !1063
  %185 = sub i64 %183, %184, !dbg !1063
  call void @llvm.dbg.value(metadata ptr undef, metadata !1064, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr %174, metadata !1069, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %185, metadata !1070, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1075
  call void @llvm.dbg.value(metadata i32 %181, metadata !1071, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr %161, metadata !1072, metadata !DIExpression()), !dbg !1075
  %186 = ptrtoint ptr %161 to i64, !dbg !1077
  %187 = sub i64 %158, %186, !dbg !1077
  %188 = trunc i64 %187 to i32, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %188, metadata !1074, metadata !DIExpression()), !dbg !1075
  %189 = icmp ult i8 %175, 64, !dbg !1079
  %190 = and i64 %185, 4294967280
  %191 = icmp ne i64 %190, 0
  %192 = and i1 %189, %191, !dbg !1081
  %193 = icmp sgt i32 %188, 15
  %194 = select i1 %192, i1 %193, i1 false, !dbg !1081
  br i1 %194, label %195, label %208, !dbg !1081

195:                                              ; preds = %179
  %196 = load i64, ptr %174, align 8, !dbg !1082, !tbaa !612
  store i64 %196, ptr %161, align 8, !dbg !1082, !tbaa !612
  %197 = getelementptr inbounds i8, ptr %173, i64 9, !dbg !1084
  %198 = load i64, ptr %197, align 8, !dbg !1084, !tbaa !612
  %199 = getelementptr inbounds i8, ptr %161, i64 8, !dbg !1084
  store i64 %198, ptr %199, align 8, !dbg !1084, !tbaa !612
  %200 = zext i32 %181 to i64, !dbg !1085
  %201 = getelementptr inbounds i8, ptr %161, i64 %200, !dbg !1085
  call void @llvm.dbg.value(metadata ptr %201, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  %202 = getelementptr inbounds i8, ptr %174, i64 %200, !dbg !1086
  call void @llvm.dbg.value(metadata ptr %202, metadata !1010, metadata !DIExpression()), !dbg !1029
  %203 = ptrtoint ptr %202 to i64, !dbg !1088
  %204 = sub i64 %183, %203, !dbg !1088
  %205 = icmp slt i64 %204, 5, !dbg !1088
  br i1 %205, label %206, label %492, !dbg !1090

206:                                              ; preds = %195
  store ptr %202, ptr %11, align 8, !dbg !1091, !tbaa !1037
  %207 = call fastcc zeroext i1 @refill_tag(ptr noundef nonnull %5), !dbg !1093
  br i1 %207, label %489, label %495, !dbg !1091, !llvm.loop !1095

208:                                              ; preds = %179
  %209 = icmp ugt i8 %175, -17, !dbg !1098
  br i1 %209, label %210, label %221, !dbg !1099, !prof !563

210:                                              ; preds = %208
  %211 = add nsw i32 %180, -59, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %211, metadata !1018, metadata !DIExpression()), !dbg !1101
  %212 = load i32, ptr %174, align 4, !dbg !1102, !tbaa !542
  %213 = zext i32 %211 to i64, !dbg !1103
  %214 = getelementptr inbounds [5 x i32], ptr @wordmask, i64 0, i64 %213, !dbg !1103
  %215 = load i32, ptr %214, align 4, !dbg !1103, !tbaa !542
  %216 = and i32 %215, %212, !dbg !1104
  %217 = add i32 %216, 1, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %217, metadata !1015, metadata !DIExpression()), !dbg !1060
  %218 = getelementptr inbounds i8, ptr %174, i64 %213, !dbg !1106
  call void @llvm.dbg.value(metadata ptr %218, metadata !1010, metadata !DIExpression()), !dbg !1029
  %219 = ptrtoint ptr %218 to i64, !dbg !1107
  %220 = sub i64 %183, %219, !dbg !1107
  br label %221, !dbg !1108

221:                                              ; preds = %210, %208
  %222 = phi i64 [ %220, %210 ], [ %185, %208 ], !dbg !1107
  %223 = phi i32 [ %217, %210 ], [ %181, %208 ], !dbg !1060
  %224 = phi ptr [ %218, %210 ], [ %174, %208 ], !dbg !1054
  call void @llvm.dbg.value(metadata ptr %224, metadata !1010, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i32 %223, metadata !1015, metadata !DIExpression()), !dbg !1060
  %225 = trunc i64 %222 to i32, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %225, metadata !1021, metadata !DIExpression()), !dbg !1060
  %226 = icmp ugt i32 %223, %225, !dbg !1110
  br i1 %226, label %227, label %289, !dbg !1111

227:                                              ; preds = %221, %280
  %228 = phi ptr [ %238, %280 ], [ %161, %221 ], !dbg !900
  %229 = phi ptr [ %281, %280 ], [ %224, %221 ]
  %230 = phi i32 [ %239, %280 ], [ %223, %221 ]
  %231 = phi i32 [ %278, %280 ], [ %225, %221 ]
  call void @llvm.dbg.value(metadata ptr %228, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  call void @llvm.dbg.value(metadata ptr %229, metadata !1010, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i32 %230, metadata !1015, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i32 %231, metadata !1021, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata ptr undef, metadata !1112, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr %229, metadata !1117, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %231, metadata !1118, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr %228, metadata !1119, metadata !DIExpression()), !dbg !1121
  %232 = ptrtoint ptr %228 to i64, !dbg !1124
  %233 = sub i64 %158, %232, !dbg !1124
  %234 = trunc i64 %233 to i32, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %234, metadata !1120, metadata !DIExpression()), !dbg !1121
  %235 = icmp ugt i32 %231, %234, !dbg !1126
  br i1 %235, label %495, label %236, !dbg !1128

236:                                              ; preds = %227
  %237 = zext i32 %231 to i64, !dbg !1129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %228, ptr align 1 %229, i64 %237, i1 false), !dbg !1130
  %238 = getelementptr inbounds i8, ptr %228, i64 %237, !dbg !1131
  call void @llvm.dbg.value(metadata ptr %238, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  %239 = sub i32 %230, %231, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %239, metadata !1015, metadata !DIExpression()), !dbg !1060
  %240 = load ptr, ptr %5, align 8, !dbg !1133, !tbaa !942
  %241 = load i32, ptr %157, align 8, !dbg !1134, !tbaa !1135
  call void @llvm.dbg.value(metadata ptr %240, metadata !377, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 %241, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1136
  %242 = load ptr, ptr %240, align 8, !dbg !1138, !tbaa !904
  %243 = getelementptr inbounds %struct.source, ptr %240, i64 0, i32 2, !dbg !1139
  %244 = load i32, ptr %243, align 4, !dbg !1139, !tbaa !907
  %245 = sext i32 %244 to i64, !dbg !1140
  call void @llvm.dbg.value(metadata !DIArgList(ptr %242, i64 %245), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1136
  %246 = getelementptr inbounds %struct.source, ptr %240, i64 0, i32 3, !dbg !1141
  %247 = load i32, ptr %246, align 8, !dbg !1142, !tbaa !908
  %248 = add i32 %247, %241, !dbg !1142
  store i32 %248, ptr %246, align 8, !dbg !1142, !tbaa !908
  %249 = sext i32 %248 to i64, !dbg !1143
  %250 = getelementptr inbounds %struct.iovec, ptr %242, i64 %245, i32 1, !dbg !1144
  %251 = load i64, ptr %250, align 8, !dbg !1144, !tbaa !317
  %252 = icmp ugt i64 %251, %249, !dbg !1145
  br i1 %252, label %253, label %256, !dbg !1146

253:                                              ; preds = %236
  %254 = getelementptr inbounds %struct.source, ptr %240, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !dbg !1147, !tbaa !906
  br label %262, !dbg !1146

256:                                              ; preds = %236
  %257 = add nsw i32 %244, 1, !dbg !1149
  %258 = getelementptr inbounds %struct.source, ptr %240, i64 0, i32 1, !dbg !1150
  %259 = load i32, ptr %258, align 8, !dbg !1150, !tbaa !906
  %260 = icmp slt i32 %257, %259, !dbg !1151
  br i1 %260, label %261, label %262, !dbg !1152

261:                                              ; preds = %256
  store i32 0, ptr %246, align 8, !dbg !1153, !tbaa !908
  store i32 %257, ptr %243, align 4, !dbg !1154, !tbaa !907
  br label %262, !dbg !1155

262:                                              ; preds = %261, %256, %253
  %263 = phi i32 [ %248, %253 ], [ %248, %256 ], [ 0, %261 ]
  %264 = phi i32 [ %255, %253 ], [ %259, %256 ], [ %259, %261 ], !dbg !1147
  %265 = phi i32 [ %244, %253 ], [ %244, %256 ], [ %257, %261 ], !dbg !1147
  call void @llvm.dbg.value(metadata ptr %240, metadata !340, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !1156
  %266 = icmp slt i32 %265, %264, !dbg !1147
  br i1 %266, label %267, label %273, !dbg !1157, !prof !353

267:                                              ; preds = %262
  %268 = sext i32 %265 to i64, !dbg !1158
  call void @llvm.dbg.value(metadata !DIArgList(ptr %242, i64 %268), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1159
  %269 = sext i32 %263 to i64, !dbg !1160
  %270 = getelementptr inbounds %struct.iovec, ptr %242, i64 %268, i32 1, !dbg !1161
  %271 = load i64, ptr %270, align 8, !dbg !1161, !tbaa !317
  %272 = icmp ugt i64 %271, %269, !dbg !1162
  br i1 %272, label %274, label %273, !dbg !1163

273:                                              ; preds = %267, %262
  call void @llvm.dbg.value(metadata ptr null, metadata !1010, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 0, metadata !1022, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i32 0, metadata !1021, metadata !DIExpression()), !dbg !1060
  store i32 0, ptr %157, align 8, !dbg !1165, !tbaa !1135
  br label %495, !dbg !1166

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.iovec, ptr %242, i64 %268, !dbg !1158
  call void @llvm.dbg.value(metadata ptr %275, metadata !346, metadata !DIExpression()), !dbg !1159
  %276 = sub i64 %271, %269, !dbg !1167
  %277 = load ptr, ptr %275, align 8, !dbg !1168, !tbaa !313
  call void @llvm.dbg.value(metadata !DIArgList(ptr %277, i64 %269), metadata !1010, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %276, metadata !1022, metadata !DIExpression()), !dbg !1164
  %278 = trunc i64 %276 to i32, !dbg !1169
  call void @llvm.dbg.value(metadata i32 %278, metadata !1021, metadata !DIExpression()), !dbg !1060
  store i32 %278, ptr %157, align 8, !dbg !1165, !tbaa !1135
  %279 = icmp eq i32 %278, 0, !dbg !1170
  br i1 %279, label %495, label %280, !dbg !1166

280:                                              ; preds = %274
  %281 = getelementptr i8, ptr %277, i64 %269, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %281, metadata !1010, metadata !DIExpression()), !dbg !1029
  %282 = and i64 %276, 4294967295, !dbg !1173
  %283 = getelementptr inbounds i8, ptr %281, i64 %282, !dbg !1173
  store ptr %283, ptr %153, align 8, !dbg !1174, !tbaa !1041
  call void @llvm.dbg.value(metadata i32 %239, metadata !1015, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i32 %278, metadata !1021, metadata !DIExpression()), !dbg !1060
  %284 = icmp ugt i32 %239, %278, !dbg !1110
  br i1 %284, label %227, label %285, !dbg !1111, !llvm.loop !1175

285:                                              ; preds = %280
  %286 = ptrtoint ptr %238 to i64, !dbg !1177
  %287 = sub i64 %158, %286, !dbg !1177
  %288 = trunc i64 %287 to i32, !dbg !1180
  br label %289, !dbg !1181

289:                                              ; preds = %285, %221
  %290 = phi ptr [ %238, %285 ], [ %161, %221 ], !dbg !900
  %291 = phi i32 [ %288, %285 ], [ %188, %221 ], !dbg !1180
  %292 = phi i32 [ %239, %285 ], [ %223, %221 ], !dbg !1060
  %293 = phi ptr [ %281, %285 ], [ %224, %221 ], !dbg !1060
  call void @llvm.dbg.value(metadata ptr %290, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  call void @llvm.dbg.value(metadata ptr undef, metadata !1112, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata ptr %293, metadata !1117, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %292, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata ptr %290, metadata !1119, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %291, metadata !1120, metadata !DIExpression()), !dbg !1182
  %294 = icmp ugt i32 %292, %291, !dbg !1183
  br i1 %294, label %495, label %295, !dbg !1184

295:                                              ; preds = %289
  %296 = zext i32 %292 to i64, !dbg !1185
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %290, ptr align 1 %293, i64 %296, i1 false), !dbg !1186
  %297 = getelementptr inbounds i8, ptr %290, i64 %296, !dbg !1187
  call void @llvm.dbg.value(metadata ptr %297, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  %298 = getelementptr inbounds i8, ptr %293, i64 %296, !dbg !1188
  call void @llvm.dbg.value(metadata ptr %298, metadata !1010, metadata !DIExpression()), !dbg !1029
  %299 = load ptr, ptr %153, align 8, !dbg !1189, !tbaa !1041
  %300 = ptrtoint ptr %299 to i64, !dbg !1189
  %301 = ptrtoint ptr %298 to i64, !dbg !1189
  %302 = sub i64 %300, %301, !dbg !1189
  %303 = icmp slt i64 %302, 5, !dbg !1189
  br i1 %303, label %304, label %492, !dbg !1191

304:                                              ; preds = %295
  store ptr %298, ptr %11, align 8, !dbg !1192, !tbaa !1037
  %305 = call fastcc zeroext i1 @refill_tag(ptr noundef nonnull %5), !dbg !1194
  br i1 %305, label %489, label %495, !dbg !1192

306:                                              ; preds = %172
  %307 = zext i8 %175 to i64, !dbg !1196
  %308 = getelementptr inbounds [256 x i16], ptr @char_table, i64 0, i64 %307, !dbg !1196
  %309 = load i16, ptr %308, align 2, !dbg !1196, !tbaa !572
  %310 = zext i16 %309 to i32, !dbg !1196
  call void @llvm.dbg.value(metadata i32 %310, metadata !1024, metadata !DIExpression()), !dbg !1197
  %311 = load i32, ptr %174, align 4, !dbg !1198, !tbaa !542
  %312 = lshr i32 %310, 11, !dbg !1199
  %313 = zext i32 %312 to i64, !dbg !1200
  %314 = getelementptr inbounds [5 x i32], ptr @wordmask, i64 0, i64 %313, !dbg !1200
  %315 = load i32, ptr %314, align 4, !dbg !1200, !tbaa !542
  %316 = and i32 %315, %311, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %316, metadata !1026, metadata !DIExpression()), !dbg !1197
  %317 = and i32 %310, 255, !dbg !1202
  call void @llvm.dbg.value(metadata i32 %317, metadata !1027, metadata !DIExpression()), !dbg !1197
  %318 = getelementptr inbounds i8, ptr %174, i64 %313, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %318, metadata !1010, metadata !DIExpression()), !dbg !1029
  %319 = and i32 %310, 1792, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %319, metadata !1028, metadata !DIExpression()), !dbg !1197
  %320 = add i32 %316, %319, !dbg !1205
  call void @llvm.dbg.value(metadata ptr undef, metadata !1207, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 %320, metadata !1212, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 %317, metadata !1213, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata ptr %161, metadata !1214, metadata !DIExpression()), !dbg !1216
  %321 = ptrtoint ptr %161 to i64, !dbg !1218
  %322 = sub i64 %158, %321, !dbg !1218
  %323 = trunc i64 %322 to i32, !dbg !1219
  call void @llvm.dbg.value(metadata i32 %323, metadata !1215, metadata !DIExpression()), !dbg !1216
  %324 = sub i64 %321, %159, !dbg !1220
  %325 = add i32 %320, -1, !dbg !1222
  %326 = zext i32 %325 to i64, !dbg !1223
  %327 = icmp sgt i64 %324, %326, !dbg !1224
  br i1 %327, label %328, label %495, !dbg !1225

328:                                              ; preds = %306
  %329 = icmp ult i32 %317, 17, !dbg !1226
  %330 = icmp ugt i32 %320, 7
  %331 = and i1 %329, %330, !dbg !1228
  %332 = icmp ugt i32 %323, 15
  %333 = select i1 %331, i1 %332, i1 false, !dbg !1228
  br i1 %333, label %334, label %342, !dbg !1228

334:                                              ; preds = %328
  %335 = zext i32 %320 to i64, !dbg !1229
  %336 = sub nsw i64 0, %335, !dbg !1229
  %337 = getelementptr inbounds i8, ptr %161, i64 %336, !dbg !1229
  %338 = load i64, ptr %337, align 8, !dbg !1229, !tbaa !612
  store i64 %338, ptr %161, align 8, !dbg !1229, !tbaa !612
  %339 = getelementptr inbounds i8, ptr %337, i64 8, !dbg !1231
  %340 = load i64, ptr %339, align 8, !dbg !1231, !tbaa !612
  %341 = getelementptr inbounds i8, ptr %161, i64 8, !dbg !1231
  store i64 %340, ptr %341, align 8, !dbg !1231, !tbaa !612
  br label %479, !dbg !1232

342:                                              ; preds = %328
  %343 = add nuw nsw i32 %317, 10, !dbg !1233
  %344 = icmp ugt i32 %343, %323, !dbg !1236
  br i1 %344, label %413, label %345, !dbg !1237

345:                                              ; preds = %342
  %346 = zext i32 %320 to i64, !dbg !1238
  %347 = sub nsw i64 0, %346, !dbg !1238
  %348 = getelementptr i8, ptr %161, i64 %347, !dbg !1238
  call void @llvm.dbg.value(metadata ptr %348, metadata !1240, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %161, metadata !1245, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 %317, metadata !1246, metadata !DIExpression()), !dbg !1247
  %349 = ptrtoint ptr %348 to i64
  %350 = icmp ult i32 %320, 8, !dbg !1249
  br i1 %350, label %393, label %351, !dbg !1250

351:                                              ; preds = %393, %345
  %352 = phi ptr [ %161, %345 ], [ %400, %393 ]
  %353 = phi i32 [ %317, %345 ], [ %399, %393 ]
  call void @llvm.dbg.value(metadata i32 %353, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %352, metadata !1245, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %348, metadata !1240, metadata !DIExpression()), !dbg !1247
  %354 = icmp sgt i32 %353, 0, !dbg !1251
  br i1 %354, label %355, label %479, !dbg !1252

355:                                              ; preds = %351
  %356 = ptrtoint ptr %352 to i64, !dbg !1247
  %357 = call i32 @llvm.usub.sat.i32(i32 %353, i32 8), !dbg !1252
  %358 = add nuw i32 %357, 7, !dbg !1252
  %359 = lshr i32 %358, 3, !dbg !1252
  %360 = add nuw nsw i32 %359, 1, !dbg !1252
  %361 = zext i32 %360 to i64, !dbg !1252
  %362 = icmp ult i32 %357, 33, !dbg !1252
  %363 = sub i64 %356, %349, !dbg !1252
  %364 = icmp ult i64 %363, 32, !dbg !1252
  %365 = select i1 %362, i1 true, i1 %364, !dbg !1252
  br i1 %365, label %389, label %366, !dbg !1252

366:                                              ; preds = %355
  %367 = and i64 %361, 1073741820, !dbg !1252
  %368 = trunc i64 %367 to i32, !dbg !1252
  %369 = shl i32 %368, 3, !dbg !1252
  %370 = sub i32 %353, %369, !dbg !1252
  %371 = shl nuw nsw i64 %367, 3, !dbg !1252
  %372 = getelementptr i8, ptr %352, i64 %371, !dbg !1252
  %373 = shl nuw nsw i64 %367, 3, !dbg !1252
  %374 = getelementptr i8, ptr %348, i64 %373, !dbg !1252
  br label %375, !dbg !1252

375:                                              ; preds = %375, %366
  %376 = phi i64 [ 0, %366 ], [ %385, %375 ]
  %377 = shl i64 %376, 3, !dbg !1252
  %378 = getelementptr i8, ptr %352, i64 %377, !dbg !1252
  %379 = shl i64 %376, 3, !dbg !1252
  %380 = getelementptr i8, ptr %348, i64 %379, !dbg !1252
  %381 = load <2 x i64>, ptr %380, align 8, !dbg !1253, !tbaa !612
  %382 = getelementptr i64, ptr %380, i64 2, !dbg !1253
  %383 = load <2 x i64>, ptr %382, align 8, !dbg !1253, !tbaa !612
  store <2 x i64> %381, ptr %378, align 8, !dbg !1253, !tbaa !612
  %384 = getelementptr i64, ptr %378, i64 2, !dbg !1253
  store <2 x i64> %383, ptr %384, align 8, !dbg !1253, !tbaa !612
  %385 = add nuw i64 %376, 4
  %386 = icmp eq i64 %385, %367
  br i1 %386, label %387, label %375, !llvm.loop !1255

387:                                              ; preds = %375
  %388 = icmp eq i64 %367, %361, !dbg !1252
  br i1 %388, label %479, label %389, !dbg !1252

389:                                              ; preds = %355, %387
  %390 = phi i32 [ %353, %355 ], [ %370, %387 ]
  %391 = phi ptr [ %352, %355 ], [ %372, %387 ]
  %392 = phi ptr [ %348, %355 ], [ %374, %387 ]
  br label %404, !dbg !1252

393:                                              ; preds = %345, %393
  %394 = phi i64 [ %402, %393 ], [ %346, %345 ]
  %395 = phi i32 [ %399, %393 ], [ %317, %345 ]
  %396 = phi ptr [ %400, %393 ], [ %161, %345 ]
  call void @llvm.dbg.value(metadata i32 %395, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %396, metadata !1245, metadata !DIExpression()), !dbg !1247
  %397 = load i64, ptr %348, align 8, !dbg !1259, !tbaa !612
  store i64 %397, ptr %396, align 8, !dbg !1259, !tbaa !612
  %398 = trunc i64 %394 to i32, !dbg !1261
  %399 = sub i32 %395, %398, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %399, metadata !1246, metadata !DIExpression()), !dbg !1247
  %400 = getelementptr inbounds i8, ptr %396, i64 %394, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %400, metadata !1245, metadata !DIExpression()), !dbg !1247
  %401 = ptrtoint ptr %400 to i64, !dbg !1263
  %402 = sub i64 %401, %349, !dbg !1263
  %403 = icmp slt i64 %402, 8, !dbg !1249
  br i1 %403, label %393, label %351, !dbg !1250, !llvm.loop !1264

404:                                              ; preds = %389, %404
  %405 = phi i32 [ %411, %404 ], [ %390, %389 ]
  %406 = phi ptr [ %410, %404 ], [ %391, %389 ]
  %407 = phi ptr [ %409, %404 ], [ %392, %389 ]
  call void @llvm.dbg.value(metadata i32 %405, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %406, metadata !1245, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %407, metadata !1240, metadata !DIExpression()), !dbg !1247
  %408 = load i64, ptr %407, align 8, !dbg !1253, !tbaa !612
  store i64 %408, ptr %406, align 8, !dbg !1253, !tbaa !612
  %409 = getelementptr inbounds i8, ptr %407, i64 8, !dbg !1266
  call void @llvm.dbg.value(metadata ptr %409, metadata !1240, metadata !DIExpression()), !dbg !1247
  %410 = getelementptr inbounds i8, ptr %406, i64 8, !dbg !1267
  call void @llvm.dbg.value(metadata ptr %410, metadata !1245, metadata !DIExpression()), !dbg !1247
  %411 = add nsw i32 %405, -8, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %411, metadata !1246, metadata !DIExpression()), !dbg !1247
  %412 = icmp ugt i32 %405, 8, !dbg !1251
  br i1 %412, label %404, label %479, !dbg !1252, !llvm.loop !1269

413:                                              ; preds = %342
  %414 = icmp ugt i32 %317, %323, !dbg !1270
  br i1 %414, label %495, label %415, !dbg !1273

415:                                              ; preds = %413
  %416 = zext i32 %320 to i64, !dbg !1274
  %417 = sub nsw i64 0, %416, !dbg !1274
  %418 = getelementptr i8, ptr %161, i64 %417, !dbg !1274
  call void @llvm.dbg.value(metadata ptr %418, metadata !1275, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %161, metadata !1278, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %317, metadata !1279, metadata !DIExpression()), !dbg !1280
  %419 = icmp ne i32 %317, 0, !dbg !1282
  %420 = sext i1 %419 to i32, !dbg !1282
  %421 = add nsw i32 %317, %420, !dbg !1282
  %422 = zext i32 %421 to i64, !dbg !1282
  %423 = add nuw nsw i64 %422, 1, !dbg !1282
  %424 = icmp ult i32 %421, 7, !dbg !1282
  %425 = icmp ult i32 %320, 32, !dbg !1282
  %426 = select i1 %424, i1 true, i1 %425, !dbg !1282
  br i1 %426, label %466, label %427, !dbg !1282

427:                                              ; preds = %415
  %428 = icmp ult i32 %421, 31, !dbg !1282
  br i1 %428, label %450, label %429, !dbg !1282

429:                                              ; preds = %427
  %430 = and i64 %423, -32, !dbg !1282
  br label %431, !dbg !1282

431:                                              ; preds = %431, %429
  %432 = phi i64 [ 0, %429 ], [ %439, %431 ]
  %433 = getelementptr i8, ptr %418, i64 %432, !dbg !1282
  %434 = getelementptr i8, ptr %161, i64 %432, !dbg !1282
  %435 = load <16 x i8>, ptr %433, align 1, !dbg !1283, !tbaa !105
  %436 = getelementptr i8, ptr %433, i64 16, !dbg !1283
  %437 = load <16 x i8>, ptr %436, align 1, !dbg !1283, !tbaa !105
  store <16 x i8> %435, ptr %434, align 1, !dbg !1285, !tbaa !105
  %438 = getelementptr i8, ptr %434, i64 16, !dbg !1285
  store <16 x i8> %437, ptr %438, align 1, !dbg !1285, !tbaa !105
  %439 = add nuw i64 %432, 32
  %440 = icmp eq i64 %439, %430
  br i1 %440, label %441, label %431, !llvm.loop !1286

441:                                              ; preds = %431
  %442 = icmp eq i64 %423, %430, !dbg !1288
  br i1 %442, label %479, label %443, !dbg !1288

443:                                              ; preds = %441
  %444 = trunc i64 %430 to i32, !dbg !1282
  %445 = sub i32 %317, %444, !dbg !1282
  %446 = getelementptr i8, ptr %161, i64 %430, !dbg !1282
  %447 = getelementptr i8, ptr %418, i64 %430, !dbg !1282
  %448 = and i64 %423, 24, !dbg !1282
  %449 = icmp eq i64 %448, 0, !dbg !1282
  br i1 %449, label %466, label %450, !dbg !1282

450:                                              ; preds = %427, %443
  %451 = phi i64 [ %430, %443 ], [ 0, %427 ]
  %452 = and i64 %423, -8, !dbg !1282
  %453 = getelementptr i8, ptr %418, i64 %452, !dbg !1282
  %454 = getelementptr i8, ptr %161, i64 %452, !dbg !1282
  %455 = trunc i64 %452 to i32, !dbg !1282
  %456 = sub i32 %317, %455, !dbg !1282
  br label %457, !dbg !1282

457:                                              ; preds = %457, %450
  %458 = phi i64 [ %451, %450 ], [ %462, %457 ]
  %459 = getelementptr i8, ptr %418, i64 %458, !dbg !1282
  %460 = getelementptr i8, ptr %161, i64 %458, !dbg !1282
  %461 = load <8 x i8>, ptr %459, align 1, !dbg !1283, !tbaa !105
  store <8 x i8> %461, ptr %460, align 1, !dbg !1285, !tbaa !105
  %462 = add nuw i64 %458, 8
  %463 = icmp eq i64 %462, %452
  br i1 %463, label %464, label %457, !llvm.loop !1289

464:                                              ; preds = %457
  %465 = icmp eq i64 %423, %452, !dbg !1288
  br i1 %465, label %479, label %466, !dbg !1288

466:                                              ; preds = %415, %443, %464
  %467 = phi ptr [ %418, %415 ], [ %447, %443 ], [ %453, %464 ]
  %468 = phi ptr [ %161, %415 ], [ %446, %443 ], [ %454, %464 ]
  %469 = phi i32 [ %317, %415 ], [ %445, %443 ], [ %456, %464 ]
  br label %470, !dbg !1282

470:                                              ; preds = %466, %470
  %471 = phi ptr [ %474, %470 ], [ %467, %466 ]
  %472 = phi ptr [ %476, %470 ], [ %468, %466 ]
  %473 = phi i32 [ %477, %470 ], [ %469, %466 ]
  call void @llvm.dbg.value(metadata i32 %473, metadata !1279, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %472, metadata !1278, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %471, metadata !1275, metadata !DIExpression()), !dbg !1280
  %474 = getelementptr inbounds i8, ptr %471, i64 1, !dbg !1290
  call void @llvm.dbg.value(metadata ptr %474, metadata !1275, metadata !DIExpression()), !dbg !1280
  %475 = load i8, ptr %471, align 1, !dbg !1283, !tbaa !105
  %476 = getelementptr inbounds i8, ptr %472, i64 1, !dbg !1291
  call void @llvm.dbg.value(metadata ptr %476, metadata !1278, metadata !DIExpression()), !dbg !1280
  store i8 %475, ptr %472, align 1, !dbg !1285, !tbaa !105
  %477 = add nsw i32 %473, -1, !dbg !1292
  call void @llvm.dbg.value(metadata i32 %477, metadata !1279, metadata !DIExpression()), !dbg !1280
  %478 = icmp ugt i32 %473, 1, !dbg !1293
  br i1 %478, label %470, label %479, !dbg !1288, !llvm.loop !1294

479:                                              ; preds = %404, %470, %387, %441, %464, %351, %334
  %480 = zext i32 %317 to i64, !dbg !1295
  %481 = getelementptr inbounds i8, ptr %161, i64 %480, !dbg !1295
  call void @llvm.dbg.value(metadata ptr %481, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  %482 = load ptr, ptr %153, align 8, !dbg !1296, !tbaa !1041
  %483 = ptrtoint ptr %482 to i64, !dbg !1296
  %484 = ptrtoint ptr %318 to i64, !dbg !1296
  %485 = sub i64 %483, %484, !dbg !1296
  %486 = icmp slt i64 %485, 5, !dbg !1296
  br i1 %486, label %487, label %492, !dbg !1298

487:                                              ; preds = %479
  store ptr %318, ptr %11, align 8, !dbg !1299, !tbaa !1037
  %488 = call fastcc zeroext i1 @refill_tag(ptr noundef nonnull %5), !dbg !1301
  br i1 %488, label %489, label %495, !dbg !1299

489:                                              ; preds = %487, %304, %206
  %490 = phi ptr [ %201, %206 ], [ %297, %304 ], [ %481, %487 ], !dbg !1303
  call void @llvm.dbg.value(metadata ptr %490, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  %491 = load ptr, ptr %11, align 8, !dbg !1303, !tbaa !1037
  br label %492

492:                                              ; preds = %489, %479, %295, %195
  %493 = phi ptr [ %490, %489 ], [ %201, %195 ], [ %297, %295 ], [ %481, %479 ]
  %494 = phi ptr [ %491, %489 ], [ %202, %195 ], [ %298, %295 ], [ %318, %479 ]
  br label %160, !dbg !900, !llvm.loop !1304

495:                                              ; preds = %487, %413, %306, %304, %289, %206, %168, %274, %227, %273, %149
  %496 = phi ptr [ %238, %273 ], [ %3, %149 ], [ %238, %274 ], [ %228, %227 ], [ %161, %168 ], [ %161, %306 ], [ %161, %413 ], [ %481, %487 ], [ %297, %304 ], [ %290, %289 ], [ %201, %206 ], !dbg !900
  call void @llvm.dbg.value(metadata ptr %496, metadata !894, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !900
  call void @llvm.dbg.value(metadata ptr %5, metadata !1305, metadata !DIExpression()), !dbg !1310
  %497 = load ptr, ptr %5, align 8, !dbg !1312, !tbaa !942
  %498 = getelementptr inbounds %struct.snappy_decompressor, ptr %5, i64 0, i32 3, !dbg !1313
  %499 = load i32, ptr %498, align 8, !dbg !1313, !tbaa !1135
  call void @llvm.dbg.value(metadata ptr %497, metadata !377, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 %499, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1314
  %500 = load ptr, ptr %497, align 8, !dbg !1316, !tbaa !904
  %501 = getelementptr inbounds %struct.source, ptr %497, i64 0, i32 2, !dbg !1317
  %502 = load i32, ptr %501, align 4, !dbg !1317, !tbaa !907
  %503 = sext i32 %502 to i64, !dbg !1318
  call void @llvm.dbg.value(metadata !DIArgList(ptr %500, i64 %503), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1314
  %504 = getelementptr inbounds %struct.source, ptr %497, i64 0, i32 3, !dbg !1319
  %505 = load i32, ptr %504, align 8, !dbg !1320, !tbaa !908
  %506 = add i32 %505, %499, !dbg !1320
  store i32 %506, ptr %504, align 8, !dbg !1320, !tbaa !908
  %507 = sext i32 %506 to i64, !dbg !1321
  %508 = getelementptr inbounds %struct.iovec, ptr %500, i64 %503, i32 1, !dbg !1322
  %509 = load i64, ptr %508, align 8, !dbg !1322, !tbaa !317
  %510 = icmp ugt i64 %509, %507, !dbg !1323
  br i1 %510, label %517, label %511, !dbg !1324

511:                                              ; preds = %495
  %512 = add nsw i32 %502, 1, !dbg !1325
  %513 = getelementptr inbounds %struct.source, ptr %497, i64 0, i32 1, !dbg !1326
  %514 = load i32, ptr %513, align 8, !dbg !1326, !tbaa !906
  %515 = icmp slt i32 %512, %514, !dbg !1327
  br i1 %515, label %516, label %517, !dbg !1328

516:                                              ; preds = %511
  store i32 0, ptr %504, align 8, !dbg !1329, !tbaa !908
  store i32 %512, ptr %501, align 4, !dbg !1330, !tbaa !907
  br label %517, !dbg !1331

517:                                              ; preds = %516, %511, %495
  %518 = getelementptr inbounds %struct.snappy_decompressor, ptr %5, i64 0, i32 4, !dbg !1332
  %519 = load i8, ptr %518, align 4, !dbg !1332, !tbaa !1333, !range !1334, !noundef !1335
  %520 = icmp eq i8 %519, 0, !dbg !1332
  br i1 %520, label %524, label %521, !dbg !1336

521:                                              ; preds = %517
  call void @llvm.dbg.value(metadata ptr undef, metadata !1337, metadata !DIExpression()), !dbg !1342
  %522 = icmp eq ptr %496, %152, !dbg !1344
  %523 = select i1 %522, i32 0, i32 -5, !dbg !1345
  br label %524

524:                                              ; preds = %4, %13, %34, %40, %68, %70, %96, %98, %124, %126, %144, %517, %521
  %525 = phi i32 [ -5, %517 ], [ %523, %521 ], [ -5, %144 ], [ -5, %126 ], [ -5, %124 ], [ -5, %98 ], [ -5, %96 ], [ -5, %70 ], [ -5, %68 ], [ -5, %40 ], [ -5, %34 ], [ -5, %13 ], [ -5, %4 ], !dbg !928
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12, !dbg !1346
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12, !dbg !1347
  ret i32 %525, !dbg !1348
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define i32 @snappy_uncompress(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 !dbg !1349 {
  %4 = alloca %struct.iovec, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1353, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %1, metadata !1354, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %2, metadata !1355, metadata !DIExpression()), !dbg !1357
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12, !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1356, metadata !DIExpression()), !dbg !1359
  store ptr %0, ptr %4, align 8, !dbg !1360, !tbaa !313
  %5 = getelementptr inbounds %struct.iovec, ptr %4, i64 0, i32 1, !dbg !1360
  store i64 %1, ptr %5, align 8, !dbg !1360, !tbaa !317
  %6 = call i32 @snappy_uncompress_iov(ptr noundef nonnull %4, i32 noundef 1, i64 noundef %1, ptr noundef %2), !dbg !1361
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12, !dbg !1362
  ret i32 %6, !dbg !1363
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define i32 @snappy_init_env_sg(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 !dbg !1364 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1368, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i1 %1, metadata !1369, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  %3 = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #13, !dbg !1372
  store ptr %3, ptr %0, align 8, !dbg !1373, !tbaa !440
  %4 = icmp eq ptr %3, null, !dbg !1374
  br i1 %4, label %15, label %5, !dbg !1376

5:                                                ; preds = %2
  br i1 %1, label %6, label %27, !dbg !1377

6:                                                ; preds = %5
  %7 = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #13, !dbg !1378
  %8 = getelementptr inbounds %struct.snappy_env, ptr %0, i64 0, i32 1, !dbg !1381
  store ptr %7, ptr %8, align 8, !dbg !1382, !tbaa !374
  %9 = icmp eq ptr %7, null, !dbg !1383
  br i1 %9, label %19, label %10, !dbg !1385

10:                                               ; preds = %6
  %11 = tail call noalias dereferenceable_or_null(38261) ptr @malloc(i64 noundef 38261) #13, !dbg !1386
  %12 = getelementptr inbounds %struct.snappy_env, ptr %0, i64 0, i32 2, !dbg !1387
  store ptr %11, ptr %12, align 8, !dbg !1388, !tbaa !473
  %13 = icmp eq ptr %11, null, !dbg !1389
  br i1 %13, label %14, label %27, !dbg !1391

14:                                               ; preds = %10
  call void @llvm.dbg.label(metadata !1370), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %0, metadata !1393, metadata !DIExpression()), !dbg !1398
  tail call void @free(ptr noundef nonnull %3) #12, !dbg !1400
  br label %19, !dbg !1401

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.snappy_env, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !dbg !1402, !tbaa !374
  call void @llvm.dbg.label(metadata !1370), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %0, metadata !1393, metadata !DIExpression()), !dbg !1398
  tail call void @free(ptr noundef %3) #12, !dbg !1400
  %18 = icmp eq ptr %17, null, !dbg !1404
  br i1 %18, label %21, label %19, !dbg !1401

19:                                               ; preds = %15, %14, %6
  %20 = phi ptr [ %3, %6 ], [ %7, %14 ], [ %17, %15 ]
  tail call void @free(ptr noundef nonnull %20) #12, !dbg !1398
  br label %21, !dbg !1405

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.snappy_env, ptr %0, i64 0, i32 2, !dbg !1405
  %23 = load ptr, ptr %22, align 8, !dbg !1405, !tbaa !473
  %24 = icmp eq ptr %23, null, !dbg !1407
  br i1 %24, label %26, label %25, !dbg !1408

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #12, !dbg !1409
  br label %26, !dbg !1409

26:                                               ; preds = %21, %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !dbg !1410
  br label %27, !dbg !1411

27:                                               ; preds = %5, %10, %26
  %28 = phi i32 [ -12, %26 ], [ 0, %10 ], [ 0, %5 ], !dbg !1371
  ret i32 %28, !dbg !1412
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1413 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nounwind willreturn uwtable
define void @snappy_free_env(ptr nocapture noundef %0) local_unnamed_addr #5 !dbg !1394 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1393, metadata !DIExpression()), !dbg !1417
  %2 = load ptr, ptr %0, align 8, !dbg !1418, !tbaa !440
  tail call void @free(ptr noundef %2) #12, !dbg !1418
  %3 = getelementptr inbounds %struct.snappy_env, ptr %0, i64 0, i32 1, !dbg !1419
  %4 = load ptr, ptr %3, align 8, !dbg !1419, !tbaa !374
  %5 = icmp eq ptr %4, null, !dbg !1420
  br i1 %5, label %7, label %6, !dbg !1421

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #12, !dbg !1422
  br label %7, !dbg !1422

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.snappy_env, ptr %0, i64 0, i32 2, !dbg !1423
  %9 = load ptr, ptr %8, align 8, !dbg !1423, !tbaa !473
  %10 = icmp eq ptr %9, null, !dbg !1424
  br i1 %10, label %12, label %11, !dbg !1425

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #12, !dbg !1426
  br label %12, !dbg !1426

12:                                               ; preds = %11, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !dbg !1427
  ret void, !dbg !1428
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define i32 @snappy_init_env(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 !dbg !1429 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1433, metadata !DIExpression()), !dbg !1434
  %2 = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #13, !dbg !1435
  store ptr %2, ptr %0, align 8, !dbg !1436, !tbaa !440
  %3 = icmp eq ptr %2, null, !dbg !1437
  %4 = select i1 %3, i32 -12, i32 0, !dbg !1434
  ret i32 %4, !dbg !1439
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1440 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @refill_tag(ptr noundef %0) unnamed_addr #4 !dbg !1443 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1447, metadata !DIExpression()), !dbg !1462
  %2 = getelementptr inbounds %struct.snappy_decompressor, ptr %0, i64 0, i32 1, !dbg !1463
  %3 = load ptr, ptr %2, align 8, !dbg !1463, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %3, metadata !1448, metadata !DIExpression()), !dbg !1462
  %4 = getelementptr inbounds %struct.snappy_decompressor, ptr %0, i64 0, i32 2, !dbg !1464
  %5 = load ptr, ptr %4, align 8, !dbg !1464, !tbaa !1041
  %6 = icmp eq ptr %3, %5, !dbg !1465
  br i1 %6, label %7, label %51, !dbg !1466

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !dbg !1467, !tbaa !942
  %9 = getelementptr inbounds %struct.snappy_decompressor, ptr %0, i64 0, i32 3, !dbg !1468
  %10 = load i32, ptr %9, align 8, !dbg !1468, !tbaa !1135
  call void @llvm.dbg.value(metadata ptr %8, metadata !377, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 %10, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1469
  %11 = load ptr, ptr %8, align 8, !dbg !1471, !tbaa !904
  %12 = getelementptr inbounds %struct.source, ptr %8, i64 0, i32 2, !dbg !1472
  %13 = load i32, ptr %12, align 4, !dbg !1472, !tbaa !907
  %14 = sext i32 %13 to i64, !dbg !1473
  call void @llvm.dbg.value(metadata !DIArgList(ptr %11, i64 %14), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1469
  %15 = getelementptr inbounds %struct.source, ptr %8, i64 0, i32 3, !dbg !1474
  %16 = load i32, ptr %15, align 8, !dbg !1475, !tbaa !908
  %17 = add i32 %16, %10, !dbg !1475
  store i32 %17, ptr %15, align 8, !dbg !1475, !tbaa !908
  %18 = sext i32 %17 to i64, !dbg !1476
  %19 = getelementptr inbounds %struct.iovec, ptr %11, i64 %14, i32 1, !dbg !1477
  %20 = load i64, ptr %19, align 8, !dbg !1477, !tbaa !317
  %21 = icmp ugt i64 %20, %18, !dbg !1478
  br i1 %21, label %22, label %25, !dbg !1479

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.source, ptr %8, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !dbg !1480, !tbaa !906
  br label %31, !dbg !1479

25:                                               ; preds = %7
  %26 = add nsw i32 %13, 1, !dbg !1482
  %27 = getelementptr inbounds %struct.source, ptr %8, i64 0, i32 1, !dbg !1483
  %28 = load i32, ptr %27, align 8, !dbg !1483, !tbaa !906
  %29 = icmp slt i32 %26, %28, !dbg !1484
  br i1 %29, label %30, label %31, !dbg !1485

30:                                               ; preds = %25
  store i32 0, ptr %15, align 8, !dbg !1486, !tbaa !908
  store i32 %26, ptr %12, align 4, !dbg !1487, !tbaa !907
  br label %31, !dbg !1488

31:                                               ; preds = %22, %25, %30
  %32 = phi i32 [ %17, %22 ], [ %17, %25 ], [ 0, %30 ]
  %33 = phi i32 [ %24, %22 ], [ %28, %25 ], [ %28, %30 ], !dbg !1480
  %34 = phi i32 [ %13, %22 ], [ %13, %25 ], [ %26, %30 ], !dbg !1480
  call void @llvm.dbg.value(metadata ptr %8, metadata !340, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !1489
  %35 = icmp slt i32 %34, %33, !dbg !1480
  br i1 %35, label %36, label %42, !dbg !1490, !prof !353

36:                                               ; preds = %31
  %37 = sext i32 %34 to i64, !dbg !1491
  call void @llvm.dbg.value(metadata !DIArgList(ptr %11, i64 %37), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1492
  %38 = sext i32 %32 to i64, !dbg !1493
  %39 = getelementptr inbounds %struct.iovec, ptr %11, i64 %37, i32 1, !dbg !1494
  %40 = load i64, ptr %39, align 8, !dbg !1494, !tbaa !317
  %41 = icmp ugt i64 %40, %38, !dbg !1495
  br i1 %41, label %44, label %42, !dbg !1496

42:                                               ; preds = %36, %31
  call void @llvm.dbg.value(metadata ptr null, metadata !1448, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i64 0, metadata !1449, metadata !DIExpression()), !dbg !1497
  store i32 0, ptr %9, align 8, !dbg !1498, !tbaa !1135
  %43 = getelementptr inbounds %struct.snappy_decompressor, ptr %0, i64 0, i32 4, !dbg !1499
  store i8 1, ptr %43, align 4, !dbg !1502, !tbaa !1333
  br label %172

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.iovec, ptr %11, i64 %37, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %45, metadata !346, metadata !DIExpression()), !dbg !1492
  %46 = load ptr, ptr %45, align 8, !dbg !1503, !tbaa !313
  call void @llvm.dbg.value(metadata !DIArgList(ptr %46, i64 %38), metadata !1448, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1462
  call void @llvm.dbg.value(metadata !DIArgList(i64 %40, i64 %38), metadata !1449, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1497
  %47 = trunc i64 %40 to i32, !dbg !1504
  %48 = sub i32 %47, %32, !dbg !1504
  store i32 %48, ptr %9, align 8, !dbg !1498, !tbaa !1135
  %49 = getelementptr i8, ptr %46, i64 %38, !dbg !1505
  call void @llvm.dbg.value(metadata ptr %49, metadata !1448, metadata !DIExpression()), !dbg !1462
  %50 = getelementptr i8, ptr %46, i64 %40, !dbg !1506
  store ptr %50, ptr %4, align 8, !dbg !1507, !tbaa !1041
  br label %51

51:                                               ; preds = %44, %1
  %52 = phi ptr [ %50, %44 ], [ %5, %1 ], !dbg !1508
  %53 = phi ptr [ %49, %44 ], [ %3, %1 ], !dbg !1462
  call void @llvm.dbg.value(metadata ptr %53, metadata !1448, metadata !DIExpression()), !dbg !1462
  %54 = load i8, ptr %53, align 1, !dbg !1509, !tbaa !105
  call void @llvm.dbg.value(metadata i8 %54, metadata !1452, metadata !DIExpression()), !dbg !1462
  %55 = zext i8 %54 to i64, !dbg !1510
  %56 = getelementptr inbounds [256 x i16], ptr @char_table, i64 0, i64 %55, !dbg !1510
  %57 = load i16, ptr %56, align 2, !dbg !1510, !tbaa !572
  call void @llvm.dbg.value(metadata i16 %57, metadata !1453, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1462
  %58 = lshr i16 %57, 11, !dbg !1511
  %59 = add nuw nsw i16 %58, 1, !dbg !1512
  %60 = zext i16 %59 to i32, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %60, metadata !1454, metadata !DIExpression()), !dbg !1462
  %61 = ptrtoint ptr %52 to i64, !dbg !1513
  %62 = ptrtoint ptr %53 to i64, !dbg !1513
  %63 = sub i64 %61, %62, !dbg !1513
  %64 = trunc i64 %63 to i32, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %64, metadata !1455, metadata !DIExpression()), !dbg !1462
  %65 = icmp ult i32 %64, %60, !dbg !1515
  br i1 %65, label %66, label %144, !dbg !1516

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.snappy_decompressor, ptr %0, i64 0, i32 5, !dbg !1517
  %68 = and i64 %63, 4294967295, !dbg !1518
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %67, ptr nonnull align 1 %53, i64 %68, i1 false), !dbg !1519
  %69 = load ptr, ptr %0, align 8, !dbg !1520, !tbaa !942
  %70 = getelementptr inbounds %struct.snappy_decompressor, ptr %0, i64 0, i32 3, !dbg !1521
  %71 = load i32, ptr %70, align 8, !dbg !1521, !tbaa !1135
  call void @llvm.dbg.value(metadata ptr %69, metadata !377, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i32 %71, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1522
  %72 = load ptr, ptr %69, align 8, !dbg !1524, !tbaa !904
  %73 = getelementptr inbounds %struct.source, ptr %69, i64 0, i32 2, !dbg !1525
  %74 = load i32, ptr %73, align 4, !dbg !1525, !tbaa !907
  %75 = sext i32 %74 to i64, !dbg !1526
  call void @llvm.dbg.value(metadata !DIArgList(ptr %72, i64 %75), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1522
  %76 = getelementptr inbounds %struct.source, ptr %69, i64 0, i32 3, !dbg !1527
  %77 = load i32, ptr %76, align 8, !dbg !1528, !tbaa !908
  %78 = add i32 %77, %71, !dbg !1528
  store i32 %78, ptr %76, align 8, !dbg !1528, !tbaa !908
  %79 = sext i32 %78 to i64, !dbg !1529
  %80 = getelementptr inbounds %struct.iovec, ptr %72, i64 %75, i32 1, !dbg !1530
  %81 = load i64, ptr %80, align 8, !dbg !1530, !tbaa !317
  %82 = icmp ugt i64 %81, %79, !dbg !1531
  br i1 %82, label %89, label %83, !dbg !1532

83:                                               ; preds = %66
  %84 = add nsw i32 %74, 1, !dbg !1533
  %85 = getelementptr inbounds %struct.source, ptr %69, i64 0, i32 1, !dbg !1534
  %86 = load i32, ptr %85, align 8, !dbg !1534, !tbaa !906
  %87 = icmp slt i32 %84, %86, !dbg !1535
  br i1 %87, label %88, label %89, !dbg !1536

88:                                               ; preds = %83
  store i32 0, ptr %76, align 8, !dbg !1537, !tbaa !908
  store i32 %84, ptr %73, align 4, !dbg !1538, !tbaa !907
  br label %89, !dbg !1539

89:                                               ; preds = %88, %83, %66
  %90 = phi i32 [ %78, %66 ], [ %78, %83 ], [ 0, %88 ]
  %91 = phi i32 [ %74, %66 ], [ %74, %83 ], [ %84, %88 ]
  store i32 0, ptr %70, align 8, !dbg !1540, !tbaa !1135
  call void @llvm.dbg.value(metadata i32 %64, metadata !1455, metadata !DIExpression()), !dbg !1462
  br label %92, !dbg !1541

92:                                               ; preds = %89, %137
  %93 = phi i32 [ %138, %137 ], [ %90, %89 ]
  %94 = phi ptr [ %120, %137 ], [ %72, %89 ]
  %95 = phi i32 [ %139, %137 ], [ %91, %89 ], !dbg !1543
  %96 = phi ptr [ %119, %137 ], [ %69, %89 ], !dbg !1544
  %97 = phi i32 [ %118, %137 ], [ %64, %89 ]
  call void @llvm.dbg.value(metadata i32 %97, metadata !1455, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %96, metadata !340, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()), !dbg !1545
  %98 = getelementptr inbounds %struct.source, ptr %96, i64 0, i32 1, !dbg !1543
  %99 = load i32, ptr %98, align 8, !dbg !1543, !tbaa !906
  %100 = icmp slt i32 %95, %99, !dbg !1543
  br i1 %100, label %101, label %172, !dbg !1541, !prof !353

101:                                              ; preds = %92
  %102 = sext i32 %95 to i64, !dbg !1546
  call void @llvm.dbg.value(metadata !DIArgList(ptr %94, i64 %102), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1547
  %103 = sext i32 %93 to i64, !dbg !1548
  %104 = getelementptr inbounds %struct.iovec, ptr %94, i64 %102, i32 1, !dbg !1549
  %105 = load i64, ptr %104, align 8, !dbg !1549, !tbaa !317
  %106 = icmp ugt i64 %105, %103, !dbg !1550
  br i1 %106, label %107, label %172, !dbg !1551

107:                                              ; preds = %101
  call void @llvm.dbg.value(metadata !DIArgList(ptr %94, i64 %102), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1547
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1460, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1552
  call void @llvm.dbg.value(metadata !DIArgList(i64 %105, i64 %103), metadata !1456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1552
  %108 = sub i64 %105, %103, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %108, metadata !1456, metadata !DIExpression()), !dbg !1552
  %109 = getelementptr inbounds %struct.iovec, ptr %94, i64 %102, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %109, metadata !346, metadata !DIExpression()), !dbg !1547
  %110 = load ptr, ptr %109, align 8, !dbg !1554, !tbaa !313
  call void @llvm.dbg.value(metadata !DIArgList(ptr %110, i64 %103), metadata !1460, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1552
  %111 = getelementptr i8, ptr %110, i64 %103, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %111, metadata !1460, metadata !DIExpression()), !dbg !1552
  %112 = sub i32 %60, %97, !dbg !1556
  %113 = zext i32 %112 to i64, !dbg !1556
  %114 = tail call i64 @llvm.umin.i64(i64 %108, i64 %113), !dbg !1556
  %115 = trunc i64 %114 to i32, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %115, metadata !1461, metadata !DIExpression()), !dbg !1552
  %116 = zext i32 %97 to i64, !dbg !1557
  %117 = getelementptr inbounds i8, ptr %67, i64 %116, !dbg !1557
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %117, ptr align 1 %111, i64 %114, i1 false), !dbg !1558
  %118 = add i32 %97, %115, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %118, metadata !1455, metadata !DIExpression()), !dbg !1462
  %119 = load ptr, ptr %0, align 8, !dbg !1560, !tbaa !942
  call void @llvm.dbg.value(metadata ptr %119, metadata !377, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i64 %114, metadata !382, metadata !DIExpression()), !dbg !1561
  %120 = load ptr, ptr %119, align 8, !dbg !1563, !tbaa !904
  %121 = getelementptr inbounds %struct.source, ptr %119, i64 0, i32 2, !dbg !1564
  %122 = load i32, ptr %121, align 4, !dbg !1564, !tbaa !907
  %123 = sext i32 %122 to i64, !dbg !1565
  call void @llvm.dbg.value(metadata !DIArgList(ptr %120, i64 %123), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1561
  %124 = getelementptr inbounds %struct.source, ptr %119, i64 0, i32 3, !dbg !1566
  %125 = load i32, ptr %124, align 8, !dbg !1567, !tbaa !908
  %126 = add i32 %125, %115, !dbg !1567
  store i32 %126, ptr %124, align 8, !dbg !1567, !tbaa !908
  %127 = sext i32 %126 to i64, !dbg !1568
  %128 = getelementptr inbounds %struct.iovec, ptr %120, i64 %123, i32 1, !dbg !1569
  %129 = load i64, ptr %128, align 8, !dbg !1569, !tbaa !317
  %130 = icmp ugt i64 %129, %127, !dbg !1570
  br i1 %130, label %137, label %131, !dbg !1571

131:                                              ; preds = %107
  %132 = add nsw i32 %122, 1, !dbg !1572
  %133 = getelementptr inbounds %struct.source, ptr %119, i64 0, i32 1, !dbg !1573
  %134 = load i32, ptr %133, align 8, !dbg !1573, !tbaa !906
  %135 = icmp slt i32 %132, %134, !dbg !1574
  br i1 %135, label %136, label %137, !dbg !1575

136:                                              ; preds = %131
  store i32 0, ptr %124, align 8, !dbg !1576, !tbaa !908
  store i32 %132, ptr %121, align 4, !dbg !1577, !tbaa !907
  br label %137, !dbg !1578

137:                                              ; preds = %136, %131, %107
  %138 = phi i32 [ 0, %136 ], [ %126, %131 ], [ %126, %107 ]
  %139 = phi i32 [ %132, %136 ], [ %122, %131 ], [ %122, %107 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !1455, metadata !DIExpression()), !dbg !1462
  %140 = icmp ult i32 %118, %60, !dbg !1579
  br i1 %140, label %92, label %141, !dbg !1580

141:                                              ; preds = %137
  store ptr %67, ptr %2, align 8, !dbg !1581, !tbaa !1037
  %142 = zext i16 %59 to i64, !dbg !1582
  %143 = getelementptr inbounds i8, ptr %67, i64 %142, !dbg !1582
  store ptr %143, ptr %4, align 8, !dbg !1583, !tbaa !1041
  br label %172, !dbg !1584

144:                                              ; preds = %51
  %145 = icmp ult i32 %64, 5, !dbg !1585
  br i1 %145, label %146, label %171, !dbg !1587

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.snappy_decompressor, ptr %0, i64 0, i32 5, !dbg !1588
  %148 = and i64 %63, 4294967295, !dbg !1590
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %147, ptr nonnull align 1 %53, i64 %148, i1 false), !dbg !1591
  %149 = load ptr, ptr %0, align 8, !dbg !1592, !tbaa !942
  %150 = getelementptr inbounds %struct.snappy_decompressor, ptr %0, i64 0, i32 3, !dbg !1593
  %151 = load i32, ptr %150, align 8, !dbg !1593, !tbaa !1135
  call void @llvm.dbg.value(metadata ptr %149, metadata !377, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %151, metadata !382, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1594
  %152 = load ptr, ptr %149, align 8, !dbg !1596, !tbaa !904
  %153 = getelementptr inbounds %struct.source, ptr %149, i64 0, i32 2, !dbg !1597
  %154 = load i32, ptr %153, align 4, !dbg !1597, !tbaa !907
  %155 = sext i32 %154 to i64, !dbg !1598
  call void @llvm.dbg.value(metadata !DIArgList(ptr %152, i64 %155), metadata !383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1594
  %156 = getelementptr inbounds %struct.source, ptr %149, i64 0, i32 3, !dbg !1599
  %157 = load i32, ptr %156, align 8, !dbg !1600, !tbaa !908
  %158 = add i32 %157, %151, !dbg !1600
  store i32 %158, ptr %156, align 8, !dbg !1600, !tbaa !908
  %159 = sext i32 %158 to i64, !dbg !1601
  %160 = getelementptr inbounds %struct.iovec, ptr %152, i64 %155, i32 1, !dbg !1602
  %161 = load i64, ptr %160, align 8, !dbg !1602, !tbaa !317
  %162 = icmp ugt i64 %161, %159, !dbg !1603
  br i1 %162, label %169, label %163, !dbg !1604

163:                                              ; preds = %146
  %164 = add nsw i32 %154, 1, !dbg !1605
  %165 = getelementptr inbounds %struct.source, ptr %149, i64 0, i32 1, !dbg !1606
  %166 = load i32, ptr %165, align 8, !dbg !1606, !tbaa !906
  %167 = icmp slt i32 %164, %166, !dbg !1607
  br i1 %167, label %168, label %169, !dbg !1608

168:                                              ; preds = %163
  store i32 0, ptr %156, align 8, !dbg !1609, !tbaa !908
  store i32 %164, ptr %153, align 4, !dbg !1610, !tbaa !907
  br label %169, !dbg !1611

169:                                              ; preds = %146, %163, %168
  store i32 0, ptr %150, align 8, !dbg !1612, !tbaa !1135
  store ptr %147, ptr %2, align 8, !dbg !1613, !tbaa !1037
  %170 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !1614
  store ptr %170, ptr %4, align 8, !dbg !1615, !tbaa !1041
  br label %172, !dbg !1616

171:                                              ; preds = %144
  store ptr %53, ptr %2, align 8, !dbg !1617, !tbaa !1037
  br label %172

172:                                              ; preds = %92, %101, %42, %169, %171, %141
  %173 = phi i1 [ true, %169 ], [ true, %171 ], [ true, %141 ], [ false, %42 ], [ false, %101 ], [ false, %92 ], !dbg !1462
  ret i1 %173, !dbg !1619
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "wordmask", scope: !2, file: !6, line: 940, type: !50, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "snappy.c", directory: "/home/raj/FineDB/lib/snappy-c", checksumkind: CSK_MD5, checksum: "a047100d4440e76070fe79d382d3a55b")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 517, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./snappy.c", directory: "/home/raj/FineDB/lib/snappy-c", checksumkind: CSK_MD5, checksum: "a047100d4440e76070fe79d382d3a55b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "LITERAL", value: 0)
!10 = !DIEnumerator(name: "COPY_1_BYTE_OFFSET", value: 1)
!11 = !DIEnumerator(name: "COPY_2_BYTE_OFFSET", value: 2)
!12 = !DIEnumerator(name: "COPY_4_BYTE_OFFSET", value: 3)
!13 = !{!14, !15, !17, !20, !22, !23, !26, !29, !27, !24}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 31, baseType: !7)
!25 = !DIFile(filename: "./compat.h", directory: "/home/raj/FineDB/lib/snappy-c", checksumkind: CSK_MD5, checksum: "6193b644d27480847bff0ffa759a6ec9")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 32, baseType: !28)
!28 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 30, baseType: !31)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !{!33, !0, !44}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "B", scope: !35, file: !6, line: 179, type: !42, isLocal: true, isDefinition: true)
!35 = distinct !DISubprogram(name: "varint_encode32", scope: !6, file: !6, line: 175, type: !36, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{!15, !15, !24}
!38 = !{!39, !40, !41}
!39 = !DILocalVariable(name: "sptr", arg: 1, scope: !35, file: !6, line: 175, type: !15)
!40 = !DILocalVariable(name: "v", arg: 2, scope: !35, file: !6, line: 175, type: !24)
!41 = !DILocalVariable(name: "ptr", scope: !35, file: !6, line: 178, type: !22)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "char_table", scope: !2, file: !6, line: 957, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 4096, elements: !48)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!48 = !{!49}
!49 = !DISubrange(count: 256)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !52)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!52 = !{!53}
!53 = !DISubrange(count: 5)
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 8, !"PIC Level", i32 2}
!58 = !{i32 7, !"uwtable", i32 2}
!59 = !{!"clang version 16.0.0"}
!60 = distinct !DISubprogram(name: "snappy_max_compressed_length", scope: !6, file: !6, line: 511, type: !61, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !63}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !{!67}
!67 = !DILocalVariable(name: "source_len", arg: 1, scope: !60, file: !6, line: 511, type: !63)
!68 = !DILocation(line: 0, scope: !60)
!69 = !DILocation(line: 513, column: 12, scope: !60)
!70 = !DILocation(line: 513, column: 38, scope: !60)
!71 = !DILocation(line: 513, column: 25, scope: !60)
!72 = !DILocation(line: 513, column: 2, scope: !60)
!73 = distinct !DISubprogram(name: "snappy_uncompressed_length", scope: !6, file: !6, line: 624, type: !74, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !20, !63, !77}
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!78 = !{!79, !80, !81, !82, !83}
!79 = !DILocalVariable(name: "start", arg: 1, scope: !73, file: !6, line: 624, type: !20)
!80 = !DILocalVariable(name: "n", arg: 2, scope: !73, file: !6, line: 624, type: !63)
!81 = !DILocalVariable(name: "result", arg: 3, scope: !73, file: !6, line: 624, type: !77)
!82 = !DILocalVariable(name: "v", scope: !73, file: !6, line: 626, type: !24)
!83 = !DILocalVariable(name: "limit", scope: !73, file: !6, line: 627, type: !20)
!84 = !DILocation(line: 0, scope: !73)
!85 = !DILocalVariable(name: "p", arg: 1, scope: !86, file: !6, line: 126, type: !20)
!86 = distinct !DISubprogram(name: "varint_parse32_with_limit", scope: !6, file: !6, line: 126, type: !87, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{!20, !20, !20, !23}
!89 = !{!85, !90, !91, !92, !93, !94, !95, !96}
!90 = !DILocalVariable(name: "l", arg: 2, scope: !86, file: !6, line: 127, type: !20)
!91 = !DILocalVariable(name: "OUTPUT", arg: 3, scope: !86, file: !6, line: 128, type: !23)
!92 = !DILocalVariable(name: "ptr", scope: !86, file: !6, line: 130, type: !17)
!93 = !DILocalVariable(name: "limit", scope: !86, file: !6, line: 131, type: !17)
!94 = !DILocalVariable(name: "b", scope: !86, file: !6, line: 132, type: !24)
!95 = !DILocalVariable(name: "result", scope: !86, file: !6, line: 132, type: !24)
!96 = !DILabel(scope: !86, name: "done", file: !6, line: 165)
!97 = !DILocation(line: 0, scope: !86, inlinedAt: !98)
!98 = distinct !DILocation(line: 628, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !73, file: !6, line: 628, column: 6)
!100 = !DILocation(line: 134, column: 10, scope: !101, inlinedAt: !98)
!101 = distinct !DILexicalBlock(scope: !86, file: !6, line: 134, column: 6)
!102 = !DILocation(line: 134, column: 6, scope: !86, inlinedAt: !98)
!103 = !DILocation(line: 136, column: 11, scope: !86, inlinedAt: !98)
!104 = !DILocation(line: 136, column: 6, scope: !86, inlinedAt: !98)
!105 = !{!106, !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !DILocation(line: 137, column: 13, scope: !86, inlinedAt: !98)
!109 = !DILocation(line: 138, column: 8, scope: !110, inlinedAt: !98)
!110 = distinct !DILexicalBlock(scope: !86, file: !6, line: 138, column: 6)
!111 = !DILocation(line: 138, column: 6, scope: !86, inlinedAt: !98)
!112 = !DILocation(line: 140, column: 10, scope: !113, inlinedAt: !98)
!113 = distinct !DILexicalBlock(scope: !86, file: !6, line: 140, column: 6)
!114 = !DILocation(line: 140, column: 6, scope: !86, inlinedAt: !98)
!115 = !DILocation(line: 142, column: 11, scope: !86, inlinedAt: !98)
!116 = !DILocation(line: 142, column: 6, scope: !86, inlinedAt: !98)
!117 = !DILocation(line: 143, column: 22, scope: !86, inlinedAt: !98)
!118 = !DILocation(line: 143, column: 9, scope: !86, inlinedAt: !98)
!119 = !DILocation(line: 144, column: 8, scope: !120, inlinedAt: !98)
!120 = distinct !DILexicalBlock(scope: !86, file: !6, line: 144, column: 6)
!121 = !DILocation(line: 144, column: 6, scope: !86, inlinedAt: !98)
!122 = !DILocation(line: 146, column: 10, scope: !123, inlinedAt: !98)
!123 = distinct !DILexicalBlock(scope: !86, file: !6, line: 146, column: 6)
!124 = !DILocation(line: 146, column: 6, scope: !86, inlinedAt: !98)
!125 = !DILocation(line: 148, column: 11, scope: !86, inlinedAt: !98)
!126 = !DILocation(line: 148, column: 6, scope: !86, inlinedAt: !98)
!127 = !DILocation(line: 149, column: 22, scope: !86, inlinedAt: !98)
!128 = !DILocation(line: 149, column: 9, scope: !86, inlinedAt: !98)
!129 = !DILocation(line: 150, column: 8, scope: !130, inlinedAt: !98)
!130 = distinct !DILexicalBlock(scope: !86, file: !6, line: 150, column: 6)
!131 = !DILocation(line: 150, column: 6, scope: !86, inlinedAt: !98)
!132 = !DILocation(line: 152, column: 10, scope: !133, inlinedAt: !98)
!133 = distinct !DILexicalBlock(scope: !86, file: !6, line: 152, column: 6)
!134 = !DILocation(line: 152, column: 6, scope: !86, inlinedAt: !98)
!135 = !DILocation(line: 154, column: 11, scope: !86, inlinedAt: !98)
!136 = !DILocation(line: 154, column: 6, scope: !86, inlinedAt: !98)
!137 = !DILocation(line: 155, column: 22, scope: !86, inlinedAt: !98)
!138 = !DILocation(line: 155, column: 9, scope: !86, inlinedAt: !98)
!139 = !DILocation(line: 156, column: 8, scope: !140, inlinedAt: !98)
!140 = distinct !DILexicalBlock(scope: !86, file: !6, line: 156, column: 6)
!141 = !DILocation(line: 156, column: 6, scope: !86, inlinedAt: !98)
!142 = !DILocation(line: 158, column: 10, scope: !143, inlinedAt: !98)
!143 = distinct !DILexicalBlock(scope: !86, file: !6, line: 158, column: 6)
!144 = !DILocation(line: 158, column: 6, scope: !86, inlinedAt: !98)
!145 = !DILocation(line: 160, column: 6, scope: !86, inlinedAt: !98)
!146 = !DILocation(line: 161, column: 22, scope: !86, inlinedAt: !98)
!147 = !DILocation(line: 161, column: 9, scope: !86, inlinedAt: !98)
!148 = !DILocation(line: 162, column: 8, scope: !149, inlinedAt: !98)
!149 = distinct !DILexicalBlock(scope: !86, file: !6, line: 162, column: 6)
!150 = !DILocation(line: 162, column: 6, scope: !86, inlinedAt: !98)
!151 = !DILocation(line: 165, column: 1, scope: !86, inlinedAt: !98)
!152 = !DILocation(line: 629, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !99, file: !6, line: 628, column: 59)
!154 = !DILocation(line: 629, column: 11, scope: !153)
!155 = !{!156, !156, i64 0}
!156 = !{!"long", !106, i64 0}
!157 = !DILocation(line: 630, column: 3, scope: !153)
!158 = !DILocation(line: 634, column: 1, scope: !73)
!159 = distinct !DISubprogram(name: "snappy_compress_iov", scope: !6, file: !6, line: 1314, type: !160, scopeLine: 1321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!160 = !DISubroutineType(types: !161)
!161 = !{!43, !162, !170, !43, !63, !170, !176, !77}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snappy_env", file: !164, line: 8, size: 192, elements: !165)
!164 = !DIFile(filename: "./snappy.h", directory: "/home/raj/FineDB/lib/snappy-c", checksumkind: CSK_MD5, checksum: "cfb9bcda4cc85171bf9848efd16b1ae4")
!165 = !{!166, !168, !169}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !163, file: !164, line: 9, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !163, file: !164, line: 10, baseType: !14, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_output", scope: !163, file: !164, line: 11, baseType: !14, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !172, line: 26, size: 128, elements: !173)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !171, file: !172, line: 28, baseType: !14, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !171, file: !172, line: 29, baseType: !63, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !193, !201}
!178 = !DILocalVariable(name: "env", arg: 1, scope: !159, file: !6, line: 1314, type: !162)
!179 = !DILocalVariable(name: "iov_in", arg: 2, scope: !159, file: !6, line: 1315, type: !170)
!180 = !DILocalVariable(name: "iov_in_len", arg: 3, scope: !159, file: !6, line: 1316, type: !43)
!181 = !DILocalVariable(name: "input_length", arg: 4, scope: !159, file: !6, line: 1317, type: !63)
!182 = !DILocalVariable(name: "iov_out", arg: 5, scope: !159, file: !6, line: 1318, type: !170)
!183 = !DILocalVariable(name: "iov_out_len", arg: 6, scope: !159, file: !6, line: 1319, type: !176)
!184 = !DILocalVariable(name: "compressed_length", arg: 7, scope: !159, file: !6, line: 1320, type: !77)
!185 = !DILocalVariable(name: "reader", scope: !159, file: !6, line: 1322, type: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "source", file: !6, line: 207, size: 256, elements: !187)
!187 = !{!188, !189, !190, !191, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !186, file: !6, line: 208, baseType: !170, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "iovlen", scope: !186, file: !6, line: 209, baseType: !43, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "curvec", scope: !186, file: !6, line: 210, baseType: !43, size: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "curoff", scope: !186, file: !6, line: 211, baseType: !43, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !186, file: !6, line: 212, baseType: !63, size: 64, offset: 192)
!193 = !DILocalVariable(name: "writer", scope: !159, file: !6, line: 1327, type: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sink", file: !6, line: 245, size: 192, elements: !195)
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !194, file: !6, line: 246, baseType: !170, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "iovlen", scope: !194, file: !6, line: 247, baseType: !43, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "curvec", scope: !194, file: !6, line: 248, baseType: !7, size: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "curoff", scope: !194, file: !6, line: 249, baseType: !7, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !194, file: !6, line: 250, baseType: !7, size: 32, offset: 160)
!201 = !DILocalVariable(name: "err", scope: !159, file: !6, line: 1331, type: !43)
!202 = !DILocation(line: 1322, column: 16, scope: !159)
!203 = !DILocation(line: 0, scope: !159)
!204 = !DILocalVariable(name: "env", arg: 1, scope: !205, file: !6, line: 1234, type: !162)
!205 = distinct !DISubprogram(name: "compress", scope: !6, file: !6, line: 1234, type: !206, scopeLine: 1236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!206 = !DISubroutineType(types: !207)
!207 = !{!43, !162, !208, !209}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!210 = !{!204, !211, !212, !213, !214, !215, !216, !218, !219, !221, !222, !224, !225, !226, !230, !231, !232, !233, !234}
!211 = !DILocalVariable(name: "reader", arg: 2, scope: !205, file: !6, line: 1234, type: !208)
!212 = !DILocalVariable(name: "writer", arg: 3, scope: !205, file: !6, line: 1235, type: !209)
!213 = !DILocalVariable(name: "err", scope: !205, file: !6, line: 1237, type: !43)
!214 = !DILocalVariable(name: "written", scope: !205, file: !6, line: 1238, type: !63)
!215 = !DILocalVariable(name: "N", scope: !205, file: !6, line: 1239, type: !43)
!216 = !DILocalVariable(name: "ulength", scope: !205, file: !6, line: 1240, type: !217)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 40, elements: !52)
!218 = !DILocalVariable(name: "p", scope: !205, file: !6, line: 1241, type: !15)
!219 = !DILocalVariable(name: "fragment_size", scope: !220, file: !6, line: 1248, type: !63)
!220 = distinct !DILexicalBlock(scope: !205, file: !6, line: 1246, column: 16)
!221 = !DILocalVariable(name: "fragment", scope: !220, file: !6, line: 1249, type: !20)
!222 = !DILocalVariable(name: "num_to_read", scope: !220, file: !6, line: 1254, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!224 = !DILocalVariable(name: "bytes_read", scope: !220, file: !6, line: 1255, type: !63)
!225 = !DILocalVariable(name: "pending_advance", scope: !220, file: !6, line: 1257, type: !43)
!226 = !DILocalVariable(name: "n", scope: !227, file: !6, line: 1269, type: !63)
!227 = distinct !DILexicalBlock(scope: !228, file: !6, line: 1267, column: 37)
!228 = distinct !DILexicalBlock(scope: !229, file: !6, line: 1263, column: 8)
!229 = distinct !DILexicalBlock(scope: !220, file: !6, line: 1258, column: 7)
!230 = !DILocalVariable(name: "table_size", scope: !220, file: !6, line: 1284, type: !43)
!231 = !DILocalVariable(name: "table", scope: !220, file: !6, line: 1285, type: !29)
!232 = !DILocalVariable(name: "dest", scope: !220, file: !6, line: 1288, type: !15)
!233 = !DILocalVariable(name: "end", scope: !220, file: !6, line: 1298, type: !15)
!234 = !DILabel(scope: !205, name: "out", file: !6, line: 1308)
!235 = !DILocation(line: 0, scope: !205, inlinedAt: !236)
!236 = distinct !DILocation(line: 1331, column: 12, scope: !159)
!237 = !DILocalVariable(name: "s", arg: 1, scope: !238, file: !6, line: 216, type: !208)
!238 = distinct !DISubprogram(name: "available", scope: !6, file: !6, line: 216, type: !239, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!43, !208}
!241 = !{!237}
!242 = !DILocation(line: 0, scope: !238, inlinedAt: !243)
!243 = distinct !DILocation(line: 1239, column: 10, scope: !205, inlinedAt: !236)
!244 = !DILocation(line: 218, column: 9, scope: !238, inlinedAt: !243)
!245 = !DILocation(line: 1240, column: 2, scope: !205, inlinedAt: !236)
!246 = !DILocation(line: 1240, column: 7, scope: !205, inlinedAt: !236)
!247 = !DILocation(line: 0, scope: !35, inlinedAt: !248)
!248 = distinct !DILocation(line: 1241, column: 12, scope: !205, inlinedAt: !236)
!249 = !DILocation(line: 181, column: 8, scope: !250, inlinedAt: !248)
!250 = distinct !DILexicalBlock(scope: !35, file: !6, line: 181, column: 6)
!251 = !DILocation(line: 181, column: 6, scope: !35, inlinedAt: !248)
!252 = !DILocation(line: 182, column: 14, scope: !253, inlinedAt: !248)
!253 = distinct !DILexicalBlock(scope: !250, file: !6, line: 181, column: 20)
!254 = !DILocation(line: 182, column: 8, scope: !253, inlinedAt: !248)
!255 = !DILocation(line: 182, column: 12, scope: !253, inlinedAt: !248)
!256 = !DILocation(line: 183, column: 2, scope: !253, inlinedAt: !248)
!257 = !DILocation(line: 183, column: 15, scope: !258, inlinedAt: !248)
!258 = distinct !DILexicalBlock(scope: !250, file: !6, line: 183, column: 13)
!259 = !DILocation(line: 183, column: 13, scope: !250, inlinedAt: !248)
!260 = !DILocation(line: 184, column: 14, scope: !261, inlinedAt: !248)
!261 = distinct !DILexicalBlock(scope: !258, file: !6, line: 183, column: 28)
!262 = !DILocation(line: 184, column: 8, scope: !261, inlinedAt: !248)
!263 = !DILocation(line: 184, column: 12, scope: !261, inlinedAt: !248)
!264 = !DILocation(line: 185, column: 14, scope: !261, inlinedAt: !248)
!265 = !DILocation(line: 185, column: 8, scope: !261, inlinedAt: !248)
!266 = !DILocation(line: 185, column: 12, scope: !261, inlinedAt: !248)
!267 = !DILocation(line: 186, column: 2, scope: !261, inlinedAt: !248)
!268 = !DILocation(line: 186, column: 15, scope: !269, inlinedAt: !248)
!269 = distinct !DILexicalBlock(scope: !258, file: !6, line: 186, column: 13)
!270 = !DILocation(line: 186, column: 13, scope: !258, inlinedAt: !248)
!271 = !DILocation(line: 187, column: 14, scope: !272, inlinedAt: !248)
!272 = distinct !DILexicalBlock(scope: !269, file: !6, line: 186, column: 28)
!273 = !DILocation(line: 187, column: 8, scope: !272, inlinedAt: !248)
!274 = !DILocation(line: 187, column: 12, scope: !272, inlinedAt: !248)
!275 = !DILocation(line: 188, column: 14, scope: !272, inlinedAt: !248)
!276 = !DILocation(line: 188, column: 8, scope: !272, inlinedAt: !248)
!277 = !DILocation(line: 188, column: 12, scope: !272, inlinedAt: !248)
!278 = !DILocation(line: 189, column: 14, scope: !272, inlinedAt: !248)
!279 = !DILocation(line: 189, column: 8, scope: !272, inlinedAt: !248)
!280 = !DILocation(line: 189, column: 12, scope: !272, inlinedAt: !248)
!281 = !DILocation(line: 190, column: 2, scope: !272, inlinedAt: !248)
!282 = !DILocation(line: 190, column: 15, scope: !283, inlinedAt: !248)
!283 = distinct !DILexicalBlock(scope: !269, file: !6, line: 190, column: 13)
!284 = !DILocation(line: 0, scope: !283, inlinedAt: !248)
!285 = !DILocation(line: 190, column: 13, scope: !269, inlinedAt: !248)
!286 = !DILocation(line: 194, column: 8, scope: !287, inlinedAt: !248)
!287 = distinct !DILexicalBlock(scope: !283, file: !6, line: 190, column: 28)
!288 = !DILocation(line: 194, column: 12, scope: !287, inlinedAt: !248)
!289 = !DILocation(line: 195, column: 2, scope: !287, inlinedAt: !248)
!290 = !DILocation(line: 199, column: 14, scope: !291, inlinedAt: !248)
!291 = distinct !DILexicalBlock(scope: !283, file: !6, line: 195, column: 9)
!292 = !DILocation(line: 199, column: 8, scope: !291, inlinedAt: !248)
!293 = !DILocation(line: 199, column: 12, scope: !291, inlinedAt: !248)
!294 = !DILocation(line: 200, column: 16, scope: !291, inlinedAt: !248)
!295 = !DILocation(line: 200, column: 14, scope: !291, inlinedAt: !248)
!296 = !DILocation(line: 200, column: 8, scope: !291, inlinedAt: !248)
!297 = !DILocation(line: 200, column: 12, scope: !291, inlinedAt: !248)
!298 = !DILocation(line: 0, scope: !250, inlinedAt: !248)
!299 = !DILocation(line: 1243, column: 28, scope: !205, inlinedAt: !236)
!300 = !DILocalVariable(name: "s", arg: 1, scope: !301, file: !6, line: 253, type: !209)
!301 = distinct !DISubprogram(name: "append", scope: !6, file: !6, line: 253, type: !302, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !209, !20, !63}
!304 = !{!300, !305, !306, !307, !308, !309}
!305 = !DILocalVariable(name: "data", arg: 2, scope: !301, file: !6, line: 253, type: !20)
!306 = !DILocalVariable(name: "n", arg: 3, scope: !301, file: !6, line: 253, type: !63)
!307 = !DILocalVariable(name: "iov", scope: !301, file: !6, line: 255, type: !170)
!308 = !DILocalVariable(name: "dst", scope: !301, file: !6, line: 256, type: !15)
!309 = !DILocalVariable(name: "nlen", scope: !301, file: !6, line: 257, type: !63)
!310 = !DILocation(line: 0, scope: !301, inlinedAt: !311)
!311 = distinct !DILocation(line: 1243, column: 2, scope: !205, inlinedAt: !236)
!312 = !DILocation(line: 256, column: 19, scope: !301, inlinedAt: !311)
!313 = !{!314, !315, i64 0}
!314 = !{!"iovec", !315, i64 0, !156, i64 8}
!315 = !{!"any pointer", !106, i64 0}
!316 = !DILocation(line: 257, column: 16, scope: !301, inlinedAt: !311)
!317 = !{!314, !156, i64 8}
!318 = !DILocation(line: 258, column: 11, scope: !319, inlinedAt: !311)
!319 = distinct !DILexicalBlock(scope: !301, file: !6, line: 258, column: 6)
!320 = !DILocation(line: 258, column: 6, scope: !301, inlinedAt: !311)
!321 = !DILocation(line: 259, column: 3, scope: !319, inlinedAt: !311)
!322 = !DILocation(line: 260, column: 13, scope: !301, inlinedAt: !311)
!323 = !DILocation(line: 262, column: 12, scope: !301, inlinedAt: !311)
!324 = !DILocation(line: 262, column: 21, scope: !301, inlinedAt: !311)
!325 = !DILocation(line: 262, column: 2, scope: !301, inlinedAt: !311)
!326 = !DILocation(line: 263, column: 8, scope: !327, inlinedAt: !311)
!327 = distinct !DILexicalBlock(scope: !301, file: !6, line: 262, column: 26)
!328 = !DILocation(line: 264, column: 12, scope: !327, inlinedAt: !311)
!329 = !DILocation(line: 266, column: 6, scope: !327, inlinedAt: !311)
!330 = !DILocation(line: 267, column: 10, scope: !327, inlinedAt: !311)
!331 = !DILocation(line: 268, column: 15, scope: !327, inlinedAt: !311)
!332 = !DILocation(line: 268, column: 3, scope: !327, inlinedAt: !311)
!333 = distinct !{!333, !325, !334, !335}
!334 = !DILocation(line: 270, column: 2, scope: !301, inlinedAt: !311)
!335 = !{!"llvm.loop.mustprogress"}
!336 = !DILocation(line: 1246, column: 11, scope: !205, inlinedAt: !236)
!337 = !DILocation(line: 1246, column: 2, scope: !205, inlinedAt: !236)
!338 = !DILocation(line: 1327, column: 23, scope: !159)
!339 = !DILocation(line: 1322, column: 25, scope: !159)
!340 = !DILocalVariable(name: "s", arg: 1, scope: !341, file: !6, line: 221, type: !208)
!341 = distinct !DISubprogram(name: "peek", scope: !6, file: !6, line: 221, type: !342, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{!20, !208, !77}
!344 = !{!340, !345, !346}
!345 = !DILocalVariable(name: "len", arg: 2, scope: !341, file: !6, line: 221, type: !77)
!346 = !DILocalVariable(name: "iv", scope: !347, file: !6, line: 224, type: !170)
!347 = distinct !DILexicalBlock(scope: !348, file: !6, line: 223, column: 37)
!348 = distinct !DILexicalBlock(scope: !341, file: !6, line: 223, column: 6)
!349 = !DILocation(line: 0, scope: !341, inlinedAt: !350)
!350 = distinct !DILocation(line: 1249, column: 26, scope: !220, inlinedAt: !236)
!351 = !DILocation(line: 223, column: 6, scope: !348, inlinedAt: !350)
!352 = !DILocation(line: 223, column: 6, scope: !341, inlinedAt: !350)
!353 = !{!"branch_weights", i32 2000, i32 1}
!354 = !DILocation(line: 224, column: 23, scope: !347, inlinedAt: !350)
!355 = !DILocation(line: 0, scope: !347, inlinedAt: !350)
!356 = !DILocation(line: 225, column: 7, scope: !357, inlinedAt: !350)
!357 = distinct !DILexicalBlock(scope: !347, file: !6, line: 225, column: 7)
!358 = !DILocation(line: 225, column: 23, scope: !357, inlinedAt: !350)
!359 = !DILocation(line: 225, column: 17, scope: !357, inlinedAt: !350)
!360 = !DILocation(line: 225, column: 7, scope: !347, inlinedAt: !350)
!361 = !DILocation(line: 226, column: 23, scope: !362, inlinedAt: !350)
!362 = distinct !DILexicalBlock(scope: !357, file: !6, line: 225, column: 32)
!363 = !DILocation(line: 227, column: 15, scope: !362, inlinedAt: !350)
!364 = !DILocation(line: 227, column: 24, scope: !362, inlinedAt: !350)
!365 = !DILocation(line: 0, scope: !220, inlinedAt: !236)
!366 = !DILocation(line: 1250, column: 21, scope: !367, inlinedAt: !236)
!367 = distinct !DILexicalBlock(scope: !220, file: !6, line: 1250, column: 7)
!368 = !DILocation(line: 1250, column: 7, scope: !220, inlinedAt: !236)
!369 = !DILocation(line: 1254, column: 32, scope: !220, inlinedAt: !236)
!370 = !DILocation(line: 1258, column: 21, scope: !229, inlinedAt: !236)
!371 = !DILocation(line: 1258, column: 18, scope: !229, inlinedAt: !236)
!372 = !DILocation(line: 1258, column: 7, scope: !220, inlinedAt: !236)
!373 = !DILocation(line: 1264, column: 16, scope: !228, inlinedAt: !236)
!374 = !{!375, !315, i64 8}
!375 = !{!"snappy_env", !315, i64 0, !315, i64 8, !315, i64 16}
!376 = !DILocation(line: 1264, column: 4, scope: !228, inlinedAt: !236)
!377 = !DILocalVariable(name: "s", arg: 1, scope: !378, file: !6, line: 234, type: !208)
!378 = distinct !DISubprogram(name: "skip", scope: !6, file: !6, line: 234, type: !379, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !208, !63}
!381 = !{!377, !382, !383}
!382 = !DILocalVariable(name: "n", arg: 2, scope: !378, file: !6, line: 234, type: !63)
!383 = !DILocalVariable(name: "iv", scope: !378, file: !6, line: 236, type: !170)
!384 = !DILocation(line: 0, scope: !378, inlinedAt: !385)
!385 = distinct !DILocation(line: 1265, column: 4, scope: !228, inlinedAt: !236)
!386 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !385)
!387 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !385)
!388 = distinct !DILexicalBlock(scope: !378, file: !6, line: 239, column: 6)
!389 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !385)
!390 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !385)
!391 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !385)
!392 = !DILocation(line: 1267, column: 4, scope: !228, inlinedAt: !236)
!393 = !DILocation(line: 0, scope: !228, inlinedAt: !236)
!394 = !DILocation(line: 223, column: 6, scope: !348, inlinedAt: !395)
!395 = distinct !DILocation(line: 1268, column: 16, scope: !227, inlinedAt: !236)
!396 = !DILocation(line: 0, scope: !341, inlinedAt: !395)
!397 = !DILocation(line: 0, scope: !227, inlinedAt: !236)
!398 = !DILocation(line: 223, column: 6, scope: !341, inlinedAt: !395)
!399 = !DILocation(line: 0, scope: !347, inlinedAt: !395)
!400 = !DILocation(line: 225, column: 7, scope: !357, inlinedAt: !395)
!401 = !DILocation(line: 225, column: 23, scope: !357, inlinedAt: !395)
!402 = !DILocation(line: 225, column: 17, scope: !357, inlinedAt: !395)
!403 = !DILocation(line: 225, column: 7, scope: !347, inlinedAt: !395)
!404 = !DILocation(line: 224, column: 23, scope: !347, inlinedAt: !395)
!405 = !DILocation(line: 226, column: 23, scope: !362, inlinedAt: !395)
!406 = !DILocation(line: 227, column: 15, scope: !362, inlinedAt: !395)
!407 = !DILocation(line: 227, column: 24, scope: !362, inlinedAt: !395)
!408 = !DILocation(line: 1270, column: 9, scope: !227, inlinedAt: !236)
!409 = !DILocation(line: 1272, column: 26, scope: !227, inlinedAt: !236)
!410 = !DILocation(line: 1272, column: 35, scope: !227, inlinedAt: !236)
!411 = !DILocation(line: 1272, column: 5, scope: !227, inlinedAt: !236)
!412 = !DILocation(line: 1273, column: 16, scope: !227, inlinedAt: !236)
!413 = !DILocation(line: 0, scope: !378, inlinedAt: !414)
!414 = distinct !DILocation(line: 1274, column: 5, scope: !227, inlinedAt: !236)
!415 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !414)
!416 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !414)
!417 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !414)
!418 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !414)
!419 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !414)
!420 = !DILocation(line: 1267, column: 22, scope: !228, inlinedAt: !236)
!421 = distinct !{!421, !392, !422, !335}
!422 = !DILocation(line: 1275, column: 4, scope: !228, inlinedAt: !236)
!423 = !DILocation(line: 1277, column: 20, scope: !228, inlinedAt: !236)
!424 = !DILocalVariable(name: "env", arg: 1, scope: !425, file: !6, line: 653, type: !162)
!425 = distinct !DISubprogram(name: "get_hash_table", scope: !6, file: !6, line: 653, type: !426, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!29, !162, !63, !176}
!428 = !{!424, !429, !430, !431, !432}
!429 = !DILocalVariable(name: "input_size", arg: 2, scope: !425, file: !6, line: 653, type: !63)
!430 = !DILocalVariable(name: "table_size", arg: 3, scope: !425, file: !6, line: 654, type: !176)
!431 = !DILocalVariable(name: "htsize", scope: !425, file: !6, line: 656, type: !7)
!432 = !DILocalVariable(name: "table", scope: !425, file: !6, line: 664, type: !29)
!433 = !DILocation(line: 0, scope: !425, inlinedAt: !434)
!434 = distinct !DILocation(line: 1285, column: 16, scope: !220, inlinedAt: !236)
!435 = !DILocation(line: 659, column: 39, scope: !425, inlinedAt: !434)
!436 = !DILocation(line: 659, column: 2, scope: !425, inlinedAt: !434)
!437 = distinct !{!437, !436, !438, !335}
!438 = !DILocation(line: 660, column: 14, scope: !425, inlinedAt: !434)
!439 = !DILocation(line: 665, column: 15, scope: !425, inlinedAt: !434)
!440 = !{!375, !315, i64 0}
!441 = !DILocation(line: 668, column: 26, scope: !425, inlinedAt: !434)
!442 = !DILocation(line: 668, column: 2, scope: !425, inlinedAt: !434)
!443 = !DILocation(line: 0, scope: !60, inlinedAt: !444)
!444 = distinct !DILocation(line: 1289, column: 28, scope: !220, inlinedAt: !236)
!445 = !DILocalVariable(name: "s", arg: 1, scope: !446, file: !6, line: 273, type: !209)
!446 = distinct !DISubprogram(name: "sink_peek", scope: !6, file: !6, line: 273, type: !447, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!14, !209, !63}
!449 = !{!445, !450, !451}
!450 = !DILocalVariable(name: "n", arg: 2, scope: !446, file: !6, line: 273, type: !63)
!451 = !DILocalVariable(name: "iov", scope: !446, file: !6, line: 275, type: !170)
!452 = !DILocation(line: 0, scope: !446, inlinedAt: !453)
!453 = distinct !DILocation(line: 1289, column: 10, scope: !220, inlinedAt: !236)
!454 = !DILocation(line: 275, column: 23, scope: !446, inlinedAt: !453)
!455 = !DILocation(line: 276, column: 23, scope: !456, inlinedAt: !453)
!456 = distinct !DILexicalBlock(scope: !446, file: !6, line: 276, column: 6)
!457 = !DILocation(line: 276, column: 16, scope: !456, inlinedAt: !453)
!458 = !DILocation(line: 276, column: 31, scope: !456, inlinedAt: !453)
!459 = !DILocation(line: 513, column: 12, scope: !60, inlinedAt: !444)
!460 = !DILocation(line: 513, column: 38, scope: !60, inlinedAt: !444)
!461 = !DILocation(line: 513, column: 25, scope: !60, inlinedAt: !444)
!462 = !DILocation(line: 276, column: 49, scope: !456, inlinedAt: !453)
!463 = !DILocation(line: 276, column: 47, scope: !456, inlinedAt: !453)
!464 = !DILocation(line: 276, column: 59, scope: !456, inlinedAt: !453)
!465 = !DILocation(line: 276, column: 6, scope: !446, inlinedAt: !453)
!466 = !DILocation(line: 277, column: 15, scope: !456, inlinedAt: !453)
!467 = !DILocation(line: 277, column: 24, scope: !456, inlinedAt: !453)
!468 = !DILocation(line: 1290, column: 8, scope: !469, inlinedAt: !236)
!469 = distinct !DILexicalBlock(scope: !220, file: !6, line: 1290, column: 7)
!470 = !DILocation(line: 1290, column: 7, scope: !220, inlinedAt: !236)
!471 = !DILocation(line: 1296, column: 16, scope: !472, inlinedAt: !236)
!472 = distinct !DILexicalBlock(scope: !469, file: !6, line: 1290, column: 14)
!473 = !{!375, !315, i64 16}
!474 = !DILocation(line: 1297, column: 3, scope: !472, inlinedAt: !236)
!475 = !DILocalVariable(name: "input", arg: 1, scope: !476, file: !6, line: 785, type: !479)
!476 = distinct !DISubprogram(name: "compress_fragment", scope: !6, file: !6, line: 785, type: !477, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!477 = !DISubroutineType(types: !478)
!478 = !{!15, !479, !480, !15, !29, !223}
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!481 = !{!475, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !495, !496, !500, !501, !502, !504, !505, !506, !507, !509, !510, !511, !512, !513, !514}
!482 = !DILocalVariable(name: "input_size", arg: 2, scope: !476, file: !6, line: 786, type: !480)
!483 = !DILocalVariable(name: "op", arg: 3, scope: !476, file: !6, line: 787, type: !15)
!484 = !DILocalVariable(name: "table", arg: 4, scope: !476, file: !6, line: 787, type: !29)
!485 = !DILocalVariable(name: "table_size", arg: 5, scope: !476, file: !6, line: 787, type: !223)
!486 = !DILocalVariable(name: "ip", scope: !476, file: !6, line: 790, type: !20)
!487 = !DILocalVariable(name: "shift", scope: !476, file: !6, line: 793, type: !42)
!488 = !DILocalVariable(name: "ip_end", scope: !476, file: !6, line: 795, type: !20)
!489 = !DILocalVariable(name: "baseip", scope: !476, file: !6, line: 796, type: !20)
!490 = !DILocalVariable(name: "next_emit", scope: !476, file: !6, line: 801, type: !20)
!491 = !DILocalVariable(name: "kinput_margin_bytes", scope: !476, file: !6, line: 803, type: !223)
!492 = !DILocalVariable(name: "ip_limit", scope: !493, file: !6, line: 806, type: !479)
!493 = distinct !DILexicalBlock(scope: !494, file: !6, line: 805, column: 49)
!494 = distinct !DILexicalBlock(scope: !476, file: !6, line: 805, column: 6)
!495 = !DILocalVariable(name: "next_hash", scope: !493, file: !6, line: 809, type: !24)
!496 = !DILocalVariable(name: "skip_bytes", scope: !497, file: !6, line: 839, type: !24)
!497 = distinct !DILexicalBlock(scope: !498, file: !6, line: 810, column: 41)
!498 = distinct !DILexicalBlock(scope: !499, file: !6, line: 810, column: 3)
!499 = distinct !DILexicalBlock(scope: !493, file: !6, line: 810, column: 3)
!500 = !DILocalVariable(name: "next_ip", scope: !497, file: !6, line: 841, type: !20)
!501 = !DILocalVariable(name: "candidate", scope: !497, file: !6, line: 842, type: !20)
!502 = !DILocalVariable(name: "hval", scope: !503, file: !6, line: 845, type: !24)
!503 = distinct !DILexicalBlock(scope: !497, file: !6, line: 843, column: 7)
!504 = !DILocalVariable(name: "bytes_between_hash_lookups", scope: !503, file: !6, line: 847, type: !24)
!505 = !DILocalVariable(name: "input_bytes", scope: !497, file: !6, line: 879, type: !27)
!506 = !DILocalVariable(name: "candidate_bytes", scope: !497, file: !6, line: 880, type: !24)
!507 = !DILocalVariable(name: "base", scope: !508, file: !6, line: 887, type: !20)
!508 = distinct !DILexicalBlock(scope: !497, file: !6, line: 882, column: 7)
!509 = !DILocalVariable(name: "matched", scope: !508, file: !6, line: 888, type: !43)
!510 = !DILocalVariable(name: "offset", scope: !508, file: !6, line: 892, type: !43)
!511 = !DILocalVariable(name: "insert_tail", scope: !508, file: !6, line: 899, type: !20)
!512 = !DILocalVariable(name: "prev_hash", scope: !508, file: !6, line: 905, type: !24)
!513 = !DILocalVariable(name: "cur_hash", scope: !508, file: !6, line: 909, type: !24)
!514 = !DILabel(scope: !476, name: "emit_remainder", file: !6, line: 925)
!515 = !DILocation(line: 0, scope: !476, inlinedAt: !516)
!516 = distinct !DILocation(line: 1298, column: 15, scope: !220, inlinedAt: !236)
!517 = !DILocalVariable(name: "n", arg: 1, scope: !518, file: !6, line: 102, type: !24)
!518 = distinct !DISubprogram(name: "log2_floor", scope: !6, file: !6, line: 102, type: !519, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!43, !24}
!521 = !{!517}
!522 = !DILocation(line: 0, scope: !518, inlinedAt: !523)
!523 = distinct !DILocation(line: 793, column: 25, scope: !476, inlinedAt: !516)
!524 = !DILocation(line: 104, column: 9, scope: !518, inlinedAt: !523)
!525 = !{i32 0, i32 33}
!526 = !DILocation(line: 793, column: 23, scope: !476, inlinedAt: !516)
!527 = !DILocation(line: 795, column: 29, scope: !476, inlinedAt: !516)
!528 = !DILocation(line: 805, column: 6, scope: !494, inlinedAt: !516)
!529 = !DILocation(line: 805, column: 6, scope: !476, inlinedAt: !516)
!530 = !DILocation(line: 806, column: 51, scope: !493, inlinedAt: !516)
!531 = !DILocation(line: 0, scope: !493, inlinedAt: !516)
!532 = !DILocation(line: 810, column: 25, scope: !499, inlinedAt: !516)
!533 = !DILocalVariable(name: "p", arg: 1, scope: !534, file: !6, line: 484, type: !20)
!534 = distinct !DISubprogram(name: "hash", scope: !6, file: !6, line: 484, type: !535, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!24, !20, !43}
!537 = !{!533, !538}
!538 = !DILocalVariable(name: "shift", arg: 2, scope: !534, file: !6, line: 484, type: !43)
!539 = !DILocation(line: 0, scope: !534, inlinedAt: !540)
!540 = distinct !DILocation(line: 810, column: 20, scope: !499, inlinedAt: !516)
!541 = !DILocation(line: 486, column: 20, scope: !534, inlinedAt: !540)
!542 = !{!543, !543, i64 0}
!543 = !{!"int", !106, i64 0}
!544 = !DILocalVariable(name: "bytes", arg: 1, scope: !545, file: !6, line: 478, type: !24)
!545 = distinct !DISubprogram(name: "hash_bytes", scope: !6, file: !6, line: 478, type: !546, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!24, !24, !43}
!548 = !{!544, !549, !550}
!549 = !DILocalVariable(name: "shift", arg: 2, scope: !545, file: !6, line: 478, type: !43)
!550 = !DILocalVariable(name: "kmul", scope: !545, file: !6, line: 480, type: !24)
!551 = !DILocation(line: 0, scope: !545, inlinedAt: !552)
!552 = distinct !DILocation(line: 486, column: 9, scope: !534, inlinedAt: !540)
!553 = !DILocation(line: 810, column: 8, scope: !499, inlinedAt: !516)
!554 = !DILocation(line: 0, scope: !499, inlinedAt: !516)
!555 = !DILocation(line: 0, scope: !497, inlinedAt: !516)
!556 = !DILocation(line: 843, column: 4, scope: !497, inlinedAt: !516)
!557 = !DILocation(line: 0, scope: !503, inlinedAt: !516)
!558 = !DILocation(line: 847, column: 51, scope: !503, inlinedAt: !516)
!559 = !DILocation(line: 848, column: 18, scope: !503, inlinedAt: !516)
!560 = !DILocation(line: 849, column: 9, scope: !561, inlinedAt: !516)
!561 = distinct !DILexicalBlock(scope: !503, file: !6, line: 849, column: 9)
!562 = !DILocation(line: 849, column: 9, scope: !503, inlinedAt: !516)
!563 = !{!"branch_weights", i32 1, i32 2000}
!564 = !DILocation(line: 847, column: 48, scope: !503, inlinedAt: !516)
!565 = !DILocation(line: 810, column: 18, scope: !499, inlinedAt: !516)
!566 = !DILocation(line: 0, scope: !534, inlinedAt: !567)
!567 = distinct !DILocation(line: 852, column: 17, scope: !503, inlinedAt: !516)
!568 = !DILocation(line: 486, column: 20, scope: !534, inlinedAt: !567)
!569 = !DILocation(line: 0, scope: !545, inlinedAt: !570)
!570 = distinct !DILocation(line: 486, column: 9, scope: !534, inlinedAt: !567)
!571 = !DILocation(line: 853, column: 26, scope: !503, inlinedAt: !516)
!572 = !{!573, !573, i64 0}
!573 = !{!"short", !106, i64 0}
!574 = !DILocation(line: 853, column: 24, scope: !503, inlinedAt: !516)
!575 = !DILocation(line: 857, column: 22, scope: !503, inlinedAt: !516)
!576 = !DILocation(line: 857, column: 19, scope: !503, inlinedAt: !516)
!577 = !DILocation(line: 857, column: 17, scope: !503, inlinedAt: !516)
!578 = !DILocation(line: 858, column: 13, scope: !497, inlinedAt: !516)
!579 = !DILocation(line: 858, column: 4, scope: !503, inlinedAt: !516)
!580 = distinct !{!580, !556, !581, !335}
!581 = !DILocation(line: 859, column: 34, scope: !497, inlinedAt: !516)
!582 = !DILocation(line: 867, column: 40, scope: !497, inlinedAt: !516)
!583 = !DILocation(line: 867, column: 37, scope: !497, inlinedAt: !516)
!584 = !DILocalVariable(name: "op", arg: 1, scope: !585, file: !6, line: 524, type: !15)
!585 = distinct !DISubprogram(name: "emit_literal", scope: !6, file: !6, line: 524, type: !586, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!15, !15, !20, !43, !76}
!588 = !{!584, !589, !590, !591, !592, !593, !596}
!589 = !DILocalVariable(name: "literal", arg: 2, scope: !585, file: !6, line: 525, type: !20)
!590 = !DILocalVariable(name: "len", arg: 3, scope: !585, file: !6, line: 526, type: !43)
!591 = !DILocalVariable(name: "allow_fast_path", arg: 4, scope: !585, file: !6, line: 526, type: !76)
!592 = !DILocalVariable(name: "n", scope: !585, file: !6, line: 528, type: !43)
!593 = !DILocalVariable(name: "base", scope: !594, file: !6, line: 554, type: !15)
!594 = distinct !DILexicalBlock(scope: !595, file: !6, line: 552, column: 9)
!595 = distinct !DILexicalBlock(scope: !585, file: !6, line: 530, column: 6)
!596 = !DILocalVariable(name: "count", scope: !594, file: !6, line: 555, type: !43)
!597 = !DILocation(line: 0, scope: !585, inlinedAt: !598)
!598 = distinct !DILocation(line: 867, column: 9, scope: !497, inlinedAt: !516)
!599 = !DILocation(line: 528, column: 14, scope: !585, inlinedAt: !598)
!600 = !DILocation(line: 530, column: 8, scope: !595, inlinedAt: !598)
!601 = !DILocation(line: 530, column: 6, scope: !585, inlinedAt: !598)
!602 = !DILocation(line: 0, scope: !594, inlinedAt: !598)
!603 = !DILocation(line: 557, column: 3, scope: !594, inlinedAt: !598)
!604 = !DILocation(line: 532, column: 11, scope: !605, inlinedAt: !598)
!605 = distinct !DILexicalBlock(scope: !595, file: !6, line: 530, column: 14)
!606 = !DILocation(line: 532, column: 6, scope: !605, inlinedAt: !598)
!607 = !DILocation(line: 532, column: 9, scope: !605, inlinedAt: !598)
!608 = !DILocation(line: 546, column: 23, scope: !609, inlinedAt: !598)
!609 = distinct !DILexicalBlock(scope: !605, file: !6, line: 546, column: 7)
!610 = !DILocation(line: 547, column: 4, scope: !611, inlinedAt: !598)
!611 = distinct !DILexicalBlock(scope: !609, file: !6, line: 546, column: 37)
!612 = !{!613, !613, i64 0}
!613 = !{!"long long", !106, i64 0}
!614 = !DILocation(line: 548, column: 4, scope: !611, inlinedAt: !598)
!615 = !DILocation(line: 550, column: 14, scope: !611, inlinedAt: !598)
!616 = !DILocation(line: 550, column: 4, scope: !611, inlinedAt: !598)
!617 = !DILocation(line: 558, column: 12, scope: !618, inlinedAt: !598)
!618 = distinct !DILexicalBlock(scope: !594, file: !6, line: 557, column: 17)
!619 = !DILocation(line: 558, column: 10, scope: !618, inlinedAt: !598)
!620 = !DILocation(line: 560, column: 9, scope: !618, inlinedAt: !598)
!621 = !DILocation(line: 557, column: 12, scope: !594, inlinedAt: !598)
!622 = distinct !{!622, !603, !623, !335}
!623 = !DILocation(line: 561, column: 3, scope: !594, inlinedAt: !598)
!624 = !DILocation(line: 564, column: 11, scope: !594, inlinedAt: !598)
!625 = !DILocation(line: 564, column: 9, scope: !594, inlinedAt: !598)
!626 = !DILocation(line: 0, scope: !595, inlinedAt: !598)
!627 = !DILocation(line: 566, column: 22, scope: !585, inlinedAt: !598)
!628 = !DILocation(line: 566, column: 2, scope: !585, inlinedAt: !598)
!629 = !DILocation(line: 567, column: 12, scope: !585, inlinedAt: !598)
!630 = !DILocation(line: 567, column: 2, scope: !585, inlinedAt: !598)
!631 = !DILocation(line: 882, column: 4, scope: !497, inlinedAt: !516)
!632 = !DILocation(line: 0, scope: !508, inlinedAt: !516)
!633 = !DILocation(line: 889, column: 37, scope: !508, inlinedAt: !516)
!634 = !DILocation(line: 889, column: 45, scope: !508, inlinedAt: !516)
!635 = !DILocalVariable(name: "s1", arg: 1, scope: !636, file: !6, line: 686, type: !20)
!636 = distinct !DISubprogram(name: "find_match_length", scope: !6, file: !6, line: 686, type: !637, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!43, !20, !20, !20}
!639 = !{!635, !640, !641, !642, !643, !647}
!640 = !DILocalVariable(name: "s2", arg: 2, scope: !636, file: !6, line: 687, type: !20)
!641 = !DILocalVariable(name: "s2_limit", arg: 3, scope: !636, file: !6, line: 687, type: !20)
!642 = !DILocalVariable(name: "matched", scope: !636, file: !6, line: 689, type: !43)
!643 = !DILocalVariable(name: "x", scope: !644, file: !6, line: 712, type: !27)
!644 = distinct !DILexicalBlock(scope: !645, file: !6, line: 703, column: 10)
!645 = distinct !DILexicalBlock(scope: !646, file: !6, line: 699, column: 7)
!646 = distinct !DILexicalBlock(scope: !636, file: !6, line: 698, column: 37)
!647 = !DILocalVariable(name: "matching_bits", scope: !644, file: !6, line: 715, type: !43)
!648 = !DILocation(line: 0, scope: !636, inlinedAt: !649)
!649 = distinct !DILocation(line: 889, column: 9, scope: !508, inlinedAt: !516)
!650 = !DILocation(line: 698, column: 9, scope: !636, inlinedAt: !649)
!651 = !DILocation(line: 698, column: 2, scope: !636, inlinedAt: !649)
!652 = !DILocation(line: 720, column: 9, scope: !636, inlinedAt: !649)
!653 = !DILocation(line: 720, column: 2, scope: !636, inlinedAt: !649)
!654 = !DILocation(line: 699, column: 7, scope: !645, inlinedAt: !649)
!655 = !DILocation(line: 699, column: 7, scope: !646, inlinedAt: !649)
!656 = !DILocation(line: 701, column: 7, scope: !657, inlinedAt: !649)
!657 = distinct !DILexicalBlock(scope: !645, file: !6, line: 700, column: 65)
!658 = !DILocation(line: 702, column: 12, scope: !657, inlinedAt: !649)
!659 = distinct !{!659, !651, !660, !335}
!660 = !DILocation(line: 719, column: 2, scope: !636, inlinedAt: !649)
!661 = !DILocation(line: 713, column: 29, scope: !644, inlinedAt: !649)
!662 = !DILocation(line: 0, scope: !644, inlinedAt: !649)
!663 = !DILocalVariable(name: "n", arg: 1, scope: !664, file: !6, line: 112, type: !27)
!664 = distinct !DISubprogram(name: "find_lsb_set_non_zero64", scope: !6, file: !6, line: 112, type: !665, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!43, !27}
!667 = !{!663}
!668 = !DILocation(line: 0, scope: !664, inlinedAt: !669)
!669 = distinct !DILocation(line: 715, column: 24, scope: !644, inlinedAt: !649)
!670 = !DILocation(line: 114, column: 9, scope: !664, inlinedAt: !669)
!671 = !{i64 0, i64 65}
!672 = !DILocation(line: 716, column: 29, scope: !644, inlinedAt: !649)
!673 = !DILocation(line: 716, column: 12, scope: !644, inlinedAt: !649)
!674 = !DILocation(line: 721, column: 7, scope: !675, inlinedAt: !649)
!675 = distinct !DILexicalBlock(scope: !676, file: !6, line: 721, column: 7)
!676 = distinct !DILexicalBlock(scope: !636, file: !6, line: 720, column: 32)
!677 = !DILocation(line: 721, column: 7, scope: !676, inlinedAt: !649)
!678 = !DILocation(line: 722, column: 4, scope: !679, inlinedAt: !649)
!679 = distinct !DILexicalBlock(scope: !675, file: !6, line: 721, column: 35)
!680 = !DILocation(line: 723, column: 4, scope: !679, inlinedAt: !649)
!681 = distinct !{!681, !653, !682, !335}
!682 = !DILocation(line: 727, column: 2, scope: !636, inlinedAt: !649)
!683 = !DILocation(line: 729, column: 1, scope: !636, inlinedAt: !649)
!684 = !DILocation(line: 888, column: 21, scope: !508, inlinedAt: !516)
!685 = !DILocation(line: 891, column: 8, scope: !508, inlinedAt: !516)
!686 = !DILocation(line: 892, column: 23, scope: !508, inlinedAt: !516)
!687 = !DILocation(line: 892, column: 18, scope: !508, inlinedAt: !516)
!688 = !DILocalVariable(name: "op", arg: 1, scope: !689, file: !6, line: 591, type: !15)
!689 = distinct !DISubprogram(name: "emit_copy", scope: !6, file: !6, line: 591, type: !690, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!15, !15, !43, !43}
!692 = !{!688, !693, !694}
!693 = !DILocalVariable(name: "offset", arg: 2, scope: !689, file: !6, line: 591, type: !43)
!694 = !DILocalVariable(name: "len", arg: 3, scope: !689, file: !6, line: 591, type: !43)
!695 = !DILocation(line: 0, scope: !689, inlinedAt: !696)
!696 = distinct !DILocation(line: 894, column: 10, scope: !508, inlinedAt: !516)
!697 = !DILocation(line: 597, column: 13, scope: !689, inlinedAt: !696)
!698 = !DILocation(line: 597, column: 2, scope: !689, inlinedAt: !696)
!699 = !DILocalVariable(name: "op", arg: 1, scope: !700, file: !6, line: 570, type: !15)
!700 = distinct !DISubprogram(name: "emit_copy_less_than64", scope: !6, file: !6, line: 570, type: !690, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !701)
!701 = !{!699, !702, !703, !704}
!702 = !DILocalVariable(name: "offset", arg: 2, scope: !700, file: !6, line: 570, type: !43)
!703 = !DILocalVariable(name: "len", arg: 3, scope: !700, file: !6, line: 570, type: !43)
!704 = !DILocalVariable(name: "len_minus_4", scope: !705, file: !6, line: 577, type: !43)
!705 = distinct !DILexicalBlock(scope: !706, file: !6, line: 576, column: 37)
!706 = distinct !DILexicalBlock(scope: !700, file: !6, line: 576, column: 6)
!707 = !DILocation(line: 0, scope: !700, inlinedAt: !708)
!708 = distinct !DILocation(line: 598, column: 8, scope: !709, inlinedAt: !696)
!709 = distinct !DILexicalBlock(scope: !689, file: !6, line: 597, column: 20)
!710 = !DILocation(line: 584, column: 6, scope: !711, inlinedAt: !708)
!711 = distinct !DILexicalBlock(scope: !706, file: !6, line: 583, column: 9)
!712 = !DILocation(line: 585, column: 3, scope: !711, inlinedAt: !708)
!713 = !DILocation(line: 586, column: 6, scope: !711, inlinedAt: !708)
!714 = !DILocation(line: 0, scope: !706, inlinedAt: !708)
!715 = !DILocation(line: 599, column: 7, scope: !709, inlinedAt: !696)
!716 = distinct !{!716, !698, !717, !335}
!717 = !DILocation(line: 600, column: 2, scope: !689, inlinedAt: !696)
!718 = !DILocation(line: 606, column: 10, scope: !719, inlinedAt: !696)
!719 = distinct !DILexicalBlock(scope: !689, file: !6, line: 606, column: 6)
!720 = !DILocation(line: 606, column: 6, scope: !689, inlinedAt: !696)
!721 = !DILocation(line: 0, scope: !700, inlinedAt: !722)
!722 = distinct !DILocation(line: 607, column: 8, scope: !723, inlinedAt: !696)
!723 = distinct !DILexicalBlock(scope: !719, file: !6, line: 606, column: 16)
!724 = !DILocation(line: 584, column: 6, scope: !711, inlinedAt: !722)
!725 = !DILocation(line: 585, column: 3, scope: !711, inlinedAt: !722)
!726 = !DILocation(line: 586, column: 6, scope: !711, inlinedAt: !722)
!727 = !DILocation(line: 0, scope: !706, inlinedAt: !722)
!728 = !DILocation(line: 608, column: 7, scope: !723, inlinedAt: !696)
!729 = !DILocation(line: 609, column: 2, scope: !723, inlinedAt: !696)
!730 = !DILocation(line: 0, scope: !700, inlinedAt: !731)
!731 = distinct !DILocation(line: 612, column: 7, scope: !689, inlinedAt: !696)
!732 = !DILocation(line: 576, column: 11, scope: !706, inlinedAt: !731)
!733 = !DILocation(line: 576, column: 17, scope: !706, inlinedAt: !731)
!734 = !DILocation(line: 0, scope: !705, inlinedAt: !731)
!735 = !DILocation(line: 580, column: 43, scope: !705, inlinedAt: !731)
!736 = !DILocation(line: 580, column: 26, scope: !705, inlinedAt: !731)
!737 = !DILocation(line: 581, column: 10, scope: !705, inlinedAt: !731)
!738 = !DILocation(line: 580, column: 49, scope: !705, inlinedAt: !731)
!739 = !DILocation(line: 580, column: 7, scope: !705, inlinedAt: !731)
!740 = !DILocation(line: 579, column: 6, scope: !705, inlinedAt: !731)
!741 = !DILocation(line: 582, column: 11, scope: !705, inlinedAt: !731)
!742 = !DILocation(line: 582, column: 6, scope: !705, inlinedAt: !731)
!743 = !DILocation(line: 582, column: 9, scope: !705, inlinedAt: !731)
!744 = !DILocation(line: 583, column: 2, scope: !705, inlinedAt: !731)
!745 = !DILocation(line: 584, column: 11, scope: !711, inlinedAt: !731)
!746 = !DILocation(line: 584, column: 6, scope: !711, inlinedAt: !731)
!747 = !DILocation(line: 585, column: 3, scope: !711, inlinedAt: !731)
!748 = !DILocation(line: 586, column: 6, scope: !711, inlinedAt: !731)
!749 = !DILocation(line: 0, scope: !706, inlinedAt: !731)
!750 = !DILocation(line: 901, column: 9, scope: !751, inlinedAt: !516)
!751 = distinct !DILexicalBlock(scope: !508, file: !6, line: 901, column: 9)
!752 = !DILocation(line: 901, column: 9, scope: !508, inlinedAt: !516)
!753 = !DILocation(line: 899, column: 34, scope: !508, inlinedAt: !516)
!754 = !DILocation(line: 904, column: 19, scope: !508, inlinedAt: !516)
!755 = !DILocalVariable(name: "v", arg: 1, scope: !756, file: !6, line: 765, type: !27)
!756 = distinct !DISubprogram(name: "get_u32_at_offset", scope: !6, file: !6, line: 765, type: !757, scopeLine: 766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{!24, !27, !43}
!759 = !{!755, !760}
!760 = !DILocalVariable(name: "offset", arg: 2, scope: !756, file: !6, line: 765, type: !43)
!761 = !DILocation(line: 0, scope: !756, inlinedAt: !762)
!762 = distinct !DILocation(line: 906, column: 20, scope: !508, inlinedAt: !516)
!763 = !DILocation(line: 768, column: 9, scope: !756, inlinedAt: !762)
!764 = !DILocation(line: 0, scope: !545, inlinedAt: !765)
!765 = distinct !DILocation(line: 906, column: 9, scope: !508, inlinedAt: !516)
!766 = !DILocation(line: 481, column: 16, scope: !545, inlinedAt: !765)
!767 = !DILocation(line: 481, column: 24, scope: !545, inlinedAt: !765)
!768 = !DILocation(line: 908, column: 27, scope: !508, inlinedAt: !516)
!769 = !DILocation(line: 908, column: 24, scope: !508, inlinedAt: !516)
!770 = !DILocation(line: 908, column: 5, scope: !508, inlinedAt: !516)
!771 = !DILocation(line: 908, column: 22, scope: !508, inlinedAt: !516)
!772 = !DILocation(line: 0, scope: !756, inlinedAt: !773)
!773 = distinct !DILocation(line: 910, column: 20, scope: !508, inlinedAt: !516)
!774 = !DILocation(line: 768, column: 11, scope: !756, inlinedAt: !773)
!775 = !DILocation(line: 768, column: 9, scope: !756, inlinedAt: !773)
!776 = !DILocation(line: 0, scope: !545, inlinedAt: !777)
!777 = distinct !DILocation(line: 910, column: 9, scope: !508, inlinedAt: !516)
!778 = !DILocation(line: 481, column: 16, scope: !545, inlinedAt: !777)
!779 = !DILocation(line: 481, column: 24, scope: !545, inlinedAt: !777)
!780 = !DILocation(line: 912, column: 26, scope: !508, inlinedAt: !516)
!781 = !DILocation(line: 912, column: 24, scope: !508, inlinedAt: !516)
!782 = !DILocation(line: 913, column: 23, scope: !508, inlinedAt: !516)
!783 = !DILocation(line: 914, column: 21, scope: !508, inlinedAt: !516)
!784 = !DILocation(line: 0, scope: !756, inlinedAt: !785)
!785 = distinct !DILocation(line: 915, column: 13, scope: !497, inlinedAt: !516)
!786 = !DILocation(line: 915, column: 47, scope: !497, inlinedAt: !516)
!787 = !DILocation(line: 915, column: 4, scope: !508, inlinedAt: !516)
!788 = distinct !{!788, !631, !789, !335}
!789 = !DILocation(line: 916, column: 21, scope: !497, inlinedAt: !516)
!790 = !DILocation(line: 0, scope: !756, inlinedAt: !791)
!791 = distinct !DILocation(line: 919, column: 19, scope: !497, inlinedAt: !516)
!792 = !DILocation(line: 0, scope: !545, inlinedAt: !793)
!793 = distinct !DILocation(line: 919, column: 8, scope: !497, inlinedAt: !516)
!794 = !DILocation(line: 921, column: 4, scope: !497, inlinedAt: !516)
!795 = !DILocation(line: 925, column: 1, scope: !476, inlinedAt: !516)
!796 = !DILocation(line: 927, column: 16, scope: !797, inlinedAt: !516)
!797 = distinct !DILexicalBlock(scope: !476, file: !6, line: 927, column: 6)
!798 = !DILocation(line: 927, column: 6, scope: !476, inlinedAt: !516)
!799 = !DILocation(line: 928, column: 43, scope: !797, inlinedAt: !516)
!800 = !DILocation(line: 928, column: 36, scope: !797, inlinedAt: !516)
!801 = !DILocation(line: 0, scope: !585, inlinedAt: !802)
!802 = distinct !DILocation(line: 928, column: 8, scope: !797, inlinedAt: !516)
!803 = !DILocation(line: 528, column: 14, scope: !585, inlinedAt: !802)
!804 = !DILocation(line: 530, column: 8, scope: !595, inlinedAt: !802)
!805 = !DILocation(line: 530, column: 6, scope: !585, inlinedAt: !802)
!806 = !DILocation(line: 0, scope: !594, inlinedAt: !802)
!807 = !DILocation(line: 557, column: 3, scope: !594, inlinedAt: !802)
!808 = !DILocation(line: 532, column: 11, scope: !605, inlinedAt: !802)
!809 = !DILocation(line: 532, column: 6, scope: !605, inlinedAt: !802)
!810 = !DILocation(line: 558, column: 12, scope: !618, inlinedAt: !802)
!811 = !DILocation(line: 558, column: 10, scope: !618, inlinedAt: !802)
!812 = !DILocation(line: 560, column: 9, scope: !618, inlinedAt: !802)
!813 = !DILocation(line: 557, column: 12, scope: !594, inlinedAt: !802)
!814 = distinct !{!814, !807, !815, !335}
!815 = !DILocation(line: 561, column: 3, scope: !594, inlinedAt: !802)
!816 = !DILocation(line: 564, column: 11, scope: !594, inlinedAt: !802)
!817 = !DILocation(line: 0, scope: !595, inlinedAt: !802)
!818 = !DILocation(line: 566, column: 22, scope: !585, inlinedAt: !802)
!819 = !DILocation(line: 566, column: 2, scope: !585, inlinedAt: !802)
!820 = !DILocation(line: 567, column: 12, scope: !585, inlinedAt: !802)
!821 = !DILocation(line: 928, column: 3, scope: !797, inlinedAt: !516)
!822 = !DILocation(line: 1300, column: 28, scope: !220, inlinedAt: !236)
!823 = !DILocation(line: 0, scope: !301, inlinedAt: !824)
!824 = distinct !DILocation(line: 1300, column: 3, scope: !220, inlinedAt: !236)
!825 = !DILocation(line: 256, column: 19, scope: !301, inlinedAt: !824)
!826 = !DILocation(line: 256, column: 28, scope: !301, inlinedAt: !824)
!827 = !DILocation(line: 257, column: 16, scope: !301, inlinedAt: !824)
!828 = !DILocation(line: 258, column: 11, scope: !319, inlinedAt: !824)
!829 = !DILocation(line: 258, column: 6, scope: !301, inlinedAt: !824)
!830 = !DILocation(line: 259, column: 3, scope: !319, inlinedAt: !824)
!831 = !DILocation(line: 260, column: 13, scope: !301, inlinedAt: !824)
!832 = !DILocation(line: 261, column: 12, scope: !301, inlinedAt: !824)
!833 = !DILocation(line: 262, column: 12, scope: !301, inlinedAt: !824)
!834 = !DILocation(line: 262, column: 21, scope: !301, inlinedAt: !824)
!835 = !DILocation(line: 262, column: 2, scope: !301, inlinedAt: !824)
!836 = !DILocation(line: 263, column: 8, scope: !327, inlinedAt: !824)
!837 = !DILocation(line: 264, column: 12, scope: !327, inlinedAt: !824)
!838 = !DILocation(line: 266, column: 6, scope: !327, inlinedAt: !824)
!839 = !DILocation(line: 267, column: 10, scope: !327, inlinedAt: !824)
!840 = !DILocation(line: 268, column: 15, scope: !327, inlinedAt: !824)
!841 = !DILocation(line: 268, column: 3, scope: !327, inlinedAt: !824)
!842 = distinct !{!842, !835, !843, !335}
!843 = !DILocation(line: 270, column: 2, scope: !301, inlinedAt: !824)
!844 = !DILocation(line: 269, column: 15, scope: !327, inlinedAt: !824)
!845 = !DILocation(line: 1303, column: 5, scope: !220, inlinedAt: !236)
!846 = !DILocation(line: 0, scope: !378, inlinedAt: !847)
!847 = distinct !DILocation(line: 1304, column: 3, scope: !220, inlinedAt: !236)
!848 = !DILocation(line: 236, column: 22, scope: !378, inlinedAt: !847)
!849 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !847)
!850 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !847)
!851 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !847)
!852 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !847)
!853 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !847)
!854 = !DILocation(line: 1308, column: 1, scope: !205, inlinedAt: !236)
!855 = !DILocation(line: 1310, column: 1, scope: !205, inlinedAt: !236)
!856 = !DILocation(line: 1333, column: 31, scope: !159)
!857 = !DILocation(line: 1333, column: 15, scope: !159)
!858 = !DILocation(line: 1336, column: 23, scope: !159)
!859 = !DILocation(line: 1336, column: 21, scope: !159)
!860 = !DILocation(line: 1337, column: 2, scope: !159)
!861 = distinct !DISubprogram(name: "snappy_compress", scope: !6, file: !6, line: 1358, type: !862, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{!43, !162, !20, !63, !15, !77}
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872}
!865 = !DILocalVariable(name: "env", arg: 1, scope: !861, file: !6, line: 1358, type: !162)
!866 = !DILocalVariable(name: "input", arg: 2, scope: !861, file: !6, line: 1359, type: !20)
!867 = !DILocalVariable(name: "input_length", arg: 3, scope: !861, file: !6, line: 1360, type: !63)
!868 = !DILocalVariable(name: "compressed", arg: 4, scope: !861, file: !6, line: 1361, type: !15)
!869 = !DILocalVariable(name: "compressed_length", arg: 5, scope: !861, file: !6, line: 1361, type: !77)
!870 = !DILocalVariable(name: "iov_in", scope: !861, file: !6, line: 1363, type: !171)
!871 = !DILocalVariable(name: "iov_out", scope: !861, file: !6, line: 1367, type: !171)
!872 = !DILocalVariable(name: "out", scope: !861, file: !6, line: 1371, type: !43)
!873 = !DILocation(line: 0, scope: !861)
!874 = !DILocation(line: 1363, column: 2, scope: !861)
!875 = !DILocation(line: 1363, column: 15, scope: !861)
!876 = !DILocation(line: 1363, column: 24, scope: !861)
!877 = !DILocation(line: 1367, column: 2, scope: !861)
!878 = !DILocation(line: 1367, column: 15, scope: !861)
!879 = !DILocation(line: 1367, column: 25, scope: !861)
!880 = !DILocation(line: 1371, column: 2, scope: !861)
!881 = !DILocation(line: 1371, column: 6, scope: !861)
!882 = !DILocation(line: 1372, column: 9, scope: !861)
!883 = !DILocation(line: 1375, column: 1, scope: !861)
!884 = !DILocation(line: 1372, column: 2, scope: !861)
!885 = distinct !DISubprogram(name: "snappy_uncompress_iov", scope: !6, file: !6, line: 1378, type: !886, scopeLine: 1380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{!43, !170, !43, !63, !15}
!888 = !{!889, !890, !891, !892, !893, !894}
!889 = !DILocalVariable(name: "iov_in", arg: 1, scope: !885, file: !6, line: 1378, type: !170)
!890 = !DILocalVariable(name: "iov_in_len", arg: 2, scope: !885, file: !6, line: 1378, type: !43)
!891 = !DILocalVariable(name: "input_len", arg: 3, scope: !885, file: !6, line: 1379, type: !63)
!892 = !DILocalVariable(name: "uncompressed", arg: 4, scope: !885, file: !6, line: 1379, type: !15)
!893 = !DILocalVariable(name: "reader", scope: !885, file: !6, line: 1381, type: !186)
!894 = !DILocalVariable(name: "output", scope: !885, file: !6, line: 1386, type: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer", file: !6, line: 325, size: 192, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !895, file: !6, line: 326, baseType: !15, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !895, file: !6, line: 327, baseType: !15, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !895, file: !6, line: 328, baseType: !15, size: 64, offset: 128)
!900 = !DILocation(line: 0, scope: !885)
!901 = !DILocation(line: 1381, column: 2, scope: !885)
!902 = !DILocation(line: 1381, column: 16, scope: !885)
!903 = !DILocation(line: 1381, column: 25, scope: !885)
!904 = !{!905, !315, i64 0}
!905 = !{!"source", !315, i64 0, !543, i64 8, !543, i64 12, !543, i64 16, !156, i64 24}
!906 = !{!905, !543, i64 8}
!907 = !{!905, !543, i64 12}
!908 = !{!905, !543, i64 16}
!909 = !{!905, !156, i64 24}
!910 = !DILocalVariable(name: "r", arg: 1, scope: !911, file: !6, line: 1211, type: !208)
!911 = distinct !DISubprogram(name: "internal_uncompress", scope: !6, file: !6, line: 1211, type: !912, scopeLine: 1213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !915)
!912 = !DISubroutineType(types: !913)
!913 = !{!43, !208, !914, !24}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!915 = !{!910, !916, !917, !918, !927}
!916 = !DILocalVariable(name: "writer", arg: 2, scope: !911, file: !6, line: 1212, type: !914)
!917 = !DILocalVariable(name: "max_len", arg: 3, scope: !911, file: !6, line: 1212, type: !24)
!918 = !DILocalVariable(name: "decompressor", scope: !911, file: !6, line: 1214, type: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snappy_decompressor", file: !6, line: 992, size: 320, elements: !920)
!920 = !{!921, !922, !923, !924, !925, !926}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !919, file: !6, line: 993, baseType: !208, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !919, file: !6, line: 994, baseType: !20, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ip_limit", scope: !919, file: !6, line: 995, baseType: !20, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !919, file: !6, line: 996, baseType: !24, size: 32, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !919, file: !6, line: 997, baseType: !76, size: 8, offset: 224)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !919, file: !6, line: 998, baseType: !217, size: 40, offset: 232)
!927 = !DILocalVariable(name: "uncompressed_len", scope: !911, file: !6, line: 1215, type: !24)
!928 = !DILocation(line: 0, scope: !911, inlinedAt: !929)
!929 = distinct !DILocation(line: 1390, column: 9, scope: !885)
!930 = !DILocation(line: 1214, column: 2, scope: !911, inlinedAt: !929)
!931 = !DILocation(line: 1214, column: 29, scope: !911, inlinedAt: !929)
!932 = !DILocalVariable(name: "d", arg: 1, scope: !933, file: !6, line: 1002, type: !936)
!933 = distinct !DISubprogram(name: "init_snappy_decompressor", scope: !6, file: !6, line: 1002, type: !934, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !936, !208}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!937 = !{!932, !938}
!938 = !DILocalVariable(name: "reader", arg: 2, scope: !933, file: !6, line: 1002, type: !208)
!939 = !DILocation(line: 0, scope: !933, inlinedAt: !940)
!940 = distinct !DILocation(line: 1217, column: 2, scope: !911, inlinedAt: !929)
!941 = !DILocation(line: 1004, column: 12, scope: !933, inlinedAt: !940)
!942 = !{!943, !315, i64 0}
!943 = !{!"snappy_decompressor", !315, i64 0, !315, i64 8, !315, i64 16, !543, i64 24, !944, i64 28, !106, i64 29}
!944 = !{!"_Bool", !106, i64 0}
!945 = !DILocation(line: 1005, column: 5, scope: !933, inlinedAt: !940)
!946 = !DILocation(line: 1006, column: 14, scope: !933, inlinedAt: !940)
!947 = !DILocalVariable(name: "d", arg: 1, scope: !948, file: !6, line: 1021, type: !936)
!948 = distinct !DISubprogram(name: "read_uncompressed_length", scope: !6, file: !6, line: 1021, type: !949, scopeLine: 1023, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!76, !936, !23}
!951 = !{!947, !952, !953, !954, !956, !957}
!952 = !DILocalVariable(name: "result", arg: 2, scope: !948, file: !6, line: 1022, type: !23)
!953 = !DILocalVariable(name: "shift", scope: !948, file: !6, line: 1029, type: !24)
!954 = !DILocalVariable(name: "n", scope: !955, file: !6, line: 1033, type: !63)
!955 = distinct !DILexicalBlock(scope: !948, file: !6, line: 1030, column: 15)
!956 = !DILocalVariable(name: "ip", scope: !955, file: !6, line: 1034, type: !20)
!957 = !DILocalVariable(name: "c", scope: !955, file: !6, line: 1037, type: !18)
!958 = !DILocation(line: 0, scope: !948, inlinedAt: !959)
!959 = distinct !DILocation(line: 1219, column: 7, scope: !960, inlinedAt: !929)
!960 = distinct !DILexicalBlock(scope: !911, file: !6, line: 1219, column: 6)
!961 = !DILocation(line: 0, scope: !341, inlinedAt: !962)
!962 = distinct !DILocation(line: 1034, column: 20, scope: !955, inlinedAt: !959)
!963 = !DILocation(line: 223, column: 6, scope: !348, inlinedAt: !962)
!964 = !DILocation(line: 223, column: 6, scope: !341, inlinedAt: !962)
!965 = !DILocation(line: 0, scope: !347, inlinedAt: !962)
!966 = !DILocation(line: 225, column: 23, scope: !357, inlinedAt: !962)
!967 = !DILocation(line: 225, column: 17, scope: !357, inlinedAt: !962)
!968 = !DILocation(line: 225, column: 7, scope: !347, inlinedAt: !962)
!969 = !DILocation(line: 0, scope: !955, inlinedAt: !959)
!970 = !DILocation(line: 227, column: 15, scope: !362, inlinedAt: !962)
!971 = !DILocation(line: 1037, column: 27, scope: !955, inlinedAt: !959)
!972 = !DILocation(line: 0, scope: !378, inlinedAt: !973)
!973 = distinct !DILocation(line: 1038, column: 3, scope: !955, inlinedAt: !959)
!974 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !973)
!975 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !973)
!976 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !973)
!977 = !DILocation(line: 239, column: 48, scope: !388, inlinedAt: !973)
!978 = !DILocation(line: 239, column: 6, scope: !378, inlinedAt: !973)
!979 = !DILocation(line: 240, column: 13, scope: !980, inlinedAt: !973)
!980 = distinct !DILexicalBlock(scope: !388, file: !6, line: 239, column: 61)
!981 = !DILocation(line: 241, column: 12, scope: !980, inlinedAt: !973)
!982 = !DILocation(line: 242, column: 2, scope: !980, inlinedAt: !973)
!983 = !DILocation(line: 1039, column: 23, scope: !955, inlinedAt: !959)
!984 = !DILocation(line: 1040, column: 9, scope: !985, inlinedAt: !959)
!985 = distinct !DILexicalBlock(scope: !955, file: !6, line: 1040, column: 7)
!986 = !DILocation(line: 225, column: 7, scope: !357, inlinedAt: !962)
!987 = !DILocation(line: 224, column: 23, scope: !347, inlinedAt: !962)
!988 = !DILocation(line: 227, column: 24, scope: !362, inlinedAt: !962)
!989 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !973)
!990 = !DILocation(line: 239, column: 44, scope: !388, inlinedAt: !973)
!991 = !DILocation(line: 1039, column: 31, scope: !955, inlinedAt: !959)
!992 = !DILocation(line: 1039, column: 11, scope: !955, inlinedAt: !959)
!993 = !DILocation(line: 1222, column: 6, scope: !994, inlinedAt: !929)
!994 = distinct !DILexicalBlock(scope: !911, file: !6, line: 1222, column: 6)
!995 = !DILocalVariable(name: "w", arg: 1, scope: !996, file: !6, line: 332, type: !914)
!996 = distinct !DISubprogram(name: "writer_set_expected_length", scope: !6, file: !6, line: 332, type: !997, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !914, !63}
!999 = !{!995, !1000}
!1000 = !DILocalVariable(name: "len", arg: 2, scope: !996, file: !6, line: 332, type: !63)
!1001 = !DILocation(line: 0, scope: !996, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 1225, column: 2, scope: !911, inlinedAt: !929)
!1003 = !DILocation(line: 334, column: 22, scope: !996, inlinedAt: !1002)
!1004 = !DILocalVariable(name: "d", arg: 1, scope: !1005, file: !6, line: 1054, type: !936)
!1005 = distinct !DISubprogram(name: "decompress_all_tags", scope: !6, file: !6, line: 1054, type: !1006, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !936, !914}
!1008 = !{!1004, !1009, !1010, !1011, !1015, !1018, !1021, !1022, !1024, !1026, !1027, !1028}
!1009 = !DILocalVariable(name: "writer", arg: 2, scope: !1005, file: !6, line: 1055, type: !914)
!1010 = !DILocalVariable(name: "ip", scope: !1005, file: !6, line: 1057, type: !20)
!1011 = !DILocalVariable(name: "c", scope: !1012, file: !6, line: 1082, type: !18)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !6, line: 1074, column: 11)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !6, line: 1074, column: 2)
!1014 = distinct !DILexicalBlock(scope: !1005, file: !6, line: 1074, column: 2)
!1015 = !DILocalVariable(name: "literal_length", scope: !1016, file: !6, line: 1085, type: !24)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !6, line: 1084, column: 29)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !6, line: 1084, column: 7)
!1018 = !DILocalVariable(name: "literal_ll", scope: !1019, file: !6, line: 1095, type: !51)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !6, line: 1093, column: 40)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !6, line: 1093, column: 8)
!1021 = !DILocalVariable(name: "avail", scope: !1016, file: !6, line: 1101, type: !24)
!1022 = !DILocalVariable(name: "n", scope: !1023, file: !6, line: 1107, type: !63)
!1023 = distinct !DILexicalBlock(scope: !1016, file: !6, line: 1102, column: 35)
!1024 = !DILocalVariable(name: "entry", scope: !1025, file: !6, line: 1120, type: !51)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !6, line: 1119, column: 10)
!1026 = !DILocalVariable(name: "trailer", scope: !1025, file: !6, line: 1121, type: !51)
!1027 = !DILocalVariable(name: "length", scope: !1025, file: !6, line: 1123, type: !51)
!1028 = !DILocalVariable(name: "copy_offset", scope: !1025, file: !6, line: 1132, type: !51)
!1029 = !DILocation(line: 0, scope: !1005, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 1228, column: 2, scope: !911, inlinedAt: !929)
!1031 = !DILocation(line: 1073, column: 2, scope: !1032, inlinedAt: !1030)
!1032 = distinct !DILexicalBlock(scope: !1005, file: !6, line: 1073, column: 2)
!1033 = !DILocation(line: 1073, column: 2, scope: !1034, inlinedAt: !1030)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !6, line: 1073, column: 2)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !6, line: 1073, column: 2)
!1036 = !DILocation(line: 1073, column: 2, scope: !1035, inlinedAt: !1030)
!1037 = !{!943, !315, i64 8}
!1038 = !DILocation(line: 1074, column: 2, scope: !1005, inlinedAt: !1030)
!1039 = !DILocation(line: 1075, column: 10, scope: !1040, inlinedAt: !1030)
!1040 = distinct !DILexicalBlock(scope: !1012, file: !6, line: 1075, column: 7)
!1041 = !{!943, !315, i64 16}
!1042 = !DILocation(line: 1075, column: 19, scope: !1040, inlinedAt: !1030)
!1043 = !DILocation(line: 1075, column: 24, scope: !1040, inlinedAt: !1030)
!1044 = !DILocation(line: 1075, column: 7, scope: !1012, inlinedAt: !1030)
!1045 = !DILocation(line: 1076, column: 10, scope: !1046, inlinedAt: !1030)
!1046 = distinct !DILexicalBlock(scope: !1040, file: !6, line: 1075, column: 29)
!1047 = !DILocation(line: 1077, column: 9, scope: !1048, inlinedAt: !1030)
!1048 = distinct !DILexicalBlock(scope: !1046, file: !6, line: 1077, column: 8)
!1049 = !DILocation(line: 1077, column: 8, scope: !1046, inlinedAt: !1030)
!1050 = !DILocation(line: 1079, column: 12, scope: !1046, inlinedAt: !1030)
!1051 = !DILocation(line: 1080, column: 3, scope: !1046, inlinedAt: !1030)
!1052 = !DILocation(line: 1082, column: 54, scope: !1012, inlinedAt: !1030)
!1053 = !DILocation(line: 1082, column: 27, scope: !1012, inlinedAt: !1030)
!1054 = !DILocation(line: 0, scope: !1012, inlinedAt: !1030)
!1055 = !DILocation(line: 1084, column: 8, scope: !1017, inlinedAt: !1030)
!1056 = !DILocation(line: 1084, column: 10, scope: !1017, inlinedAt: !1030)
!1057 = !DILocation(line: 1084, column: 17, scope: !1017, inlinedAt: !1030)
!1058 = !DILocation(line: 1084, column: 7, scope: !1012, inlinedAt: !1030)
!1059 = !DILocation(line: 1085, column: 34, scope: !1016, inlinedAt: !1030)
!1060 = !DILocation(line: 0, scope: !1016, inlinedAt: !1030)
!1061 = !DILocation(line: 1086, column: 46, scope: !1062, inlinedAt: !1030)
!1062 = distinct !DILexicalBlock(scope: !1016, file: !6, line: 1086, column: 8)
!1063 = !DILocation(line: 1086, column: 55, scope: !1062, inlinedAt: !1030)
!1064 = !DILocalVariable(name: "w", arg: 1, scope: !1065, file: !6, line: 456, type: !914)
!1065 = distinct !DISubprogram(name: "writer_try_fast_append", scope: !6, file: !6, line: 456, type: !1066, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!76, !914, !20, !24, !24}
!1068 = !{!1064, !1069, !1070, !1071, !1072, !1074}
!1069 = !DILocalVariable(name: "ip", arg: 2, scope: !1065, file: !6, line: 456, type: !20)
!1070 = !DILocalVariable(name: "available_bytes", arg: 3, scope: !1065, file: !6, line: 457, type: !24)
!1071 = !DILocalVariable(name: "len", arg: 4, scope: !1065, file: !6, line: 457, type: !24)
!1072 = !DILocalVariable(name: "op", scope: !1065, file: !6, line: 459, type: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1074 = !DILocalVariable(name: "space_left", scope: !1065, file: !6, line: 460, type: !42)
!1075 = !DILocation(line: 0, scope: !1065, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 1086, column: 8, scope: !1062, inlinedAt: !1030)
!1077 = !DILocation(line: 460, column: 37, scope: !1065, inlinedAt: !1076)
!1078 = !DILocation(line: 460, column: 25, scope: !1065, inlinedAt: !1076)
!1079 = !DILocation(line: 461, column: 10, scope: !1080, inlinedAt: !1076)
!1080 = distinct !DILexicalBlock(scope: !1065, file: !6, line: 461, column: 6)
!1081 = !DILocation(line: 461, column: 16, scope: !1080, inlinedAt: !1076)
!1082 = !DILocation(line: 463, column: 3, scope: !1083, inlinedAt: !1076)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !6, line: 461, column: 62)
!1084 = !DILocation(line: 464, column: 3, scope: !1083, inlinedAt: !1076)
!1085 = !DILocation(line: 465, column: 14, scope: !1083, inlinedAt: !1076)
!1086 = !DILocation(line: 1089, column: 8, scope: !1087, inlinedAt: !1030)
!1087 = distinct !DILexicalBlock(scope: !1062, file: !6, line: 1087, column: 27)
!1088 = !DILocation(line: 1090, column: 5, scope: !1089, inlinedAt: !1030)
!1089 = distinct !DILexicalBlock(scope: !1087, file: !6, line: 1090, column: 5)
!1090 = !DILocation(line: 1090, column: 5, scope: !1087, inlinedAt: !1030)
!1091 = !DILocation(line: 1090, column: 5, scope: !1092, inlinedAt: !1030)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !6, line: 1090, column: 5)
!1093 = !DILocation(line: 1090, column: 5, scope: !1094, inlinedAt: !1030)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !6, line: 1090, column: 5)
!1095 = distinct !{!1095, !1096, !1097}
!1096 = !DILocation(line: 1074, column: 2, scope: !1014, inlinedAt: !1030)
!1097 = !DILocation(line: 1139, column: 2, scope: !1014, inlinedAt: !1030)
!1098 = !DILocation(line: 1093, column: 8, scope: !1020, inlinedAt: !1030)
!1099 = !DILocation(line: 1093, column: 8, scope: !1016, inlinedAt: !1030)
!1100 = !DILocation(line: 1095, column: 43, scope: !1019, inlinedAt: !1030)
!1101 = !DILocation(line: 0, scope: !1019, inlinedAt: !1030)
!1102 = !DILocation(line: 1096, column: 23, scope: !1019, inlinedAt: !1030)
!1103 = !DILocation(line: 1097, column: 9, scope: !1019, inlinedAt: !1030)
!1104 = !DILocation(line: 1096, column: 46, scope: !1019, inlinedAt: !1030)
!1105 = !DILocation(line: 1097, column: 31, scope: !1019, inlinedAt: !1030)
!1106 = !DILocation(line: 1098, column: 8, scope: !1019, inlinedAt: !1030)
!1107 = !DILocation(line: 1101, column: 28, scope: !1016, inlinedAt: !1030)
!1108 = !DILocation(line: 1099, column: 4, scope: !1019, inlinedAt: !1030)
!1109 = !DILocation(line: 1101, column: 16, scope: !1016, inlinedAt: !1030)
!1110 = !DILocation(line: 1102, column: 17, scope: !1016, inlinedAt: !1030)
!1111 = !DILocation(line: 1102, column: 4, scope: !1016, inlinedAt: !1030)
!1112 = !DILocalVariable(name: "w", arg: 1, scope: !1113, file: !6, line: 444, type: !914)
!1113 = distinct !DISubprogram(name: "writer_append", scope: !6, file: !6, line: 444, type: !1114, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!76, !914, !20, !24}
!1116 = !{!1112, !1117, !1118, !1119, !1120}
!1117 = !DILocalVariable(name: "ip", arg: 2, scope: !1113, file: !6, line: 444, type: !20)
!1118 = !DILocalVariable(name: "len", arg: 3, scope: !1113, file: !6, line: 444, type: !24)
!1119 = !DILocalVariable(name: "op", scope: !1113, file: !6, line: 446, type: !1073)
!1120 = !DILocalVariable(name: "space_left", scope: !1113, file: !6, line: 448, type: !51)
!1121 = !DILocation(line: 0, scope: !1113, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 1103, column: 10, scope: !1123, inlinedAt: !1030)
!1123 = distinct !DILexicalBlock(scope: !1023, file: !6, line: 1103, column: 9)
!1124 = !DILocation(line: 448, column: 37, scope: !1113, inlinedAt: !1122)
!1125 = !DILocation(line: 448, column: 25, scope: !1113, inlinedAt: !1122)
!1126 = !DILocation(line: 449, column: 17, scope: !1127, inlinedAt: !1122)
!1127 = distinct !DILexicalBlock(scope: !1113, file: !6, line: 449, column: 6)
!1128 = !DILocation(line: 449, column: 6, scope: !1113, inlinedAt: !1122)
!1129 = !DILocation(line: 451, column: 17, scope: !1113, inlinedAt: !1122)
!1130 = !DILocation(line: 451, column: 2, scope: !1113, inlinedAt: !1122)
!1131 = !DILocation(line: 452, column: 13, scope: !1113, inlinedAt: !1122)
!1132 = !DILocation(line: 1105, column: 20, scope: !1023, inlinedAt: !1030)
!1133 = !DILocation(line: 1106, column: 13, scope: !1023, inlinedAt: !1030)
!1134 = !DILocation(line: 1106, column: 24, scope: !1023, inlinedAt: !1030)
!1135 = !{!943, !543, i64 24}
!1136 = !DILocation(line: 0, scope: !378, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 1106, column: 5, scope: !1023, inlinedAt: !1030)
!1138 = !DILocation(line: 236, column: 25, scope: !378, inlinedAt: !1137)
!1139 = !DILocation(line: 236, column: 32, scope: !378, inlinedAt: !1137)
!1140 = !DILocation(line: 236, column: 22, scope: !378, inlinedAt: !1137)
!1141 = !DILocation(line: 237, column: 5, scope: !378, inlinedAt: !1137)
!1142 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !1137)
!1143 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !1137)
!1144 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !1137)
!1145 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !1137)
!1146 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !1137)
!1147 = !DILocation(line: 223, column: 6, scope: !348, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 1108, column: 10, scope: !1023, inlinedAt: !1030)
!1149 = !DILocation(line: 239, column: 44, scope: !388, inlinedAt: !1137)
!1150 = !DILocation(line: 239, column: 53, scope: !388, inlinedAt: !1137)
!1151 = !DILocation(line: 239, column: 48, scope: !388, inlinedAt: !1137)
!1152 = !DILocation(line: 239, column: 6, scope: !378, inlinedAt: !1137)
!1153 = !DILocation(line: 240, column: 13, scope: !980, inlinedAt: !1137)
!1154 = !DILocation(line: 241, column: 12, scope: !980, inlinedAt: !1137)
!1155 = !DILocation(line: 242, column: 2, scope: !980, inlinedAt: !1137)
!1156 = !DILocation(line: 0, scope: !341, inlinedAt: !1148)
!1157 = !DILocation(line: 223, column: 6, scope: !341, inlinedAt: !1148)
!1158 = !DILocation(line: 224, column: 23, scope: !347, inlinedAt: !1148)
!1159 = !DILocation(line: 0, scope: !347, inlinedAt: !1148)
!1160 = !DILocation(line: 225, column: 7, scope: !357, inlinedAt: !1148)
!1161 = !DILocation(line: 225, column: 23, scope: !357, inlinedAt: !1148)
!1162 = !DILocation(line: 225, column: 17, scope: !357, inlinedAt: !1148)
!1163 = !DILocation(line: 225, column: 7, scope: !347, inlinedAt: !1148)
!1164 = !DILocation(line: 0, scope: !1023, inlinedAt: !1030)
!1165 = !DILocation(line: 1110, column: 15, scope: !1023, inlinedAt: !1030)
!1166 = !DILocation(line: 1111, column: 9, scope: !1023, inlinedAt: !1030)
!1167 = !DILocation(line: 226, column: 23, scope: !362, inlinedAt: !1148)
!1168 = !DILocation(line: 227, column: 15, scope: !362, inlinedAt: !1148)
!1169 = !DILocation(line: 1109, column: 13, scope: !1023, inlinedAt: !1030)
!1170 = !DILocation(line: 1111, column: 15, scope: !1171, inlinedAt: !1030)
!1171 = distinct !DILexicalBlock(scope: !1023, file: !6, line: 1111, column: 9)
!1172 = !DILocation(line: 227, column: 24, scope: !362, inlinedAt: !1148)
!1173 = !DILocation(line: 1113, column: 22, scope: !1023, inlinedAt: !1030)
!1174 = !DILocation(line: 1113, column: 17, scope: !1023, inlinedAt: !1030)
!1175 = distinct !{!1175, !1111, !1176, !335}
!1176 = !DILocation(line: 1114, column: 4, scope: !1016, inlinedAt: !1030)
!1177 = !DILocation(line: 448, column: 37, scope: !1113, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 1115, column: 9, scope: !1179, inlinedAt: !1030)
!1179 = distinct !DILexicalBlock(scope: !1016, file: !6, line: 1115, column: 8)
!1180 = !DILocation(line: 448, column: 25, scope: !1113, inlinedAt: !1178)
!1181 = !DILocation(line: 446, column: 22, scope: !1113, inlinedAt: !1178)
!1182 = !DILocation(line: 0, scope: !1113, inlinedAt: !1178)
!1183 = !DILocation(line: 449, column: 17, scope: !1127, inlinedAt: !1178)
!1184 = !DILocation(line: 449, column: 6, scope: !1113, inlinedAt: !1178)
!1185 = !DILocation(line: 451, column: 17, scope: !1113, inlinedAt: !1178)
!1186 = !DILocation(line: 451, column: 2, scope: !1113, inlinedAt: !1178)
!1187 = !DILocation(line: 452, column: 13, scope: !1113, inlinedAt: !1178)
!1188 = !DILocation(line: 1117, column: 7, scope: !1016, inlinedAt: !1030)
!1189 = !DILocation(line: 1118, column: 4, scope: !1190, inlinedAt: !1030)
!1190 = distinct !DILexicalBlock(scope: !1016, file: !6, line: 1118, column: 4)
!1191 = !DILocation(line: 1118, column: 4, scope: !1016, inlinedAt: !1030)
!1192 = !DILocation(line: 1118, column: 4, scope: !1193, inlinedAt: !1030)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !6, line: 1118, column: 4)
!1194 = !DILocation(line: 1118, column: 4, scope: !1195, inlinedAt: !1030)
!1195 = distinct !DILexicalBlock(scope: !1193, file: !6, line: 1118, column: 4)
!1196 = !DILocation(line: 1120, column: 22, scope: !1025, inlinedAt: !1030)
!1197 = !DILocation(line: 0, scope: !1025, inlinedAt: !1030)
!1198 = !DILocation(line: 1121, column: 24, scope: !1025, inlinedAt: !1030)
!1199 = !DILocation(line: 1122, column: 20, scope: !1025, inlinedAt: !1030)
!1200 = !DILocation(line: 1122, column: 5, scope: !1025, inlinedAt: !1030)
!1201 = !DILocation(line: 1121, column: 47, scope: !1025, inlinedAt: !1030)
!1202 = !DILocation(line: 1123, column: 29, scope: !1025, inlinedAt: !1030)
!1203 = !DILocation(line: 1124, column: 7, scope: !1025, inlinedAt: !1030)
!1204 = !DILocation(line: 1132, column: 34, scope: !1025, inlinedAt: !1030)
!1205 = !DILocation(line: 1134, column: 24, scope: !1206, inlinedAt: !1030)
!1206 = distinct !DILexicalBlock(scope: !1025, file: !6, line: 1133, column: 8)
!1207 = !DILocalVariable(name: "w", arg: 1, scope: !1208, file: !6, line: 415, type: !914)
!1208 = distinct !DISubprogram(name: "writer_append_from_self", scope: !6, file: !6, line: 415, type: !1209, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1211)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!76, !914, !24, !24}
!1211 = !{!1207, !1212, !1213, !1214, !1215}
!1212 = !DILocalVariable(name: "offset", arg: 2, scope: !1208, file: !6, line: 415, type: !24)
!1213 = !DILocalVariable(name: "len", arg: 3, scope: !1208, file: !6, line: 416, type: !24)
!1214 = !DILocalVariable(name: "op", scope: !1208, file: !6, line: 418, type: !1073)
!1215 = !DILocalVariable(name: "space_left", scope: !1208, file: !6, line: 420, type: !51)
!1216 = !DILocation(line: 0, scope: !1208, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 1133, column: 9, scope: !1206, inlinedAt: !1030)
!1218 = !DILocation(line: 420, column: 37, scope: !1208, inlinedAt: !1217)
!1219 = !DILocation(line: 420, column: 25, scope: !1208, inlinedAt: !1217)
!1220 = !DILocation(line: 422, column: 9, scope: !1221, inlinedAt: !1217)
!1221 = distinct !DILexicalBlock(scope: !1208, file: !6, line: 422, column: 6)
!1222 = !DILocation(line: 422, column: 29, scope: !1221, inlinedAt: !1217)
!1223 = !DILocation(line: 422, column: 22, scope: !1221, inlinedAt: !1217)
!1224 = !DILocation(line: 422, column: 19, scope: !1221, inlinedAt: !1217)
!1225 = !DILocation(line: 422, column: 6, scope: !1208, inlinedAt: !1217)
!1226 = !DILocation(line: 424, column: 10, scope: !1227, inlinedAt: !1217)
!1227 = distinct !DILexicalBlock(scope: !1208, file: !6, line: 424, column: 6)
!1228 = !DILocation(line: 424, column: 16, scope: !1227, inlinedAt: !1217)
!1229 = !DILocation(line: 427, column: 3, scope: !1230, inlinedAt: !1217)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !6, line: 424, column: 52)
!1231 = !DILocation(line: 428, column: 3, scope: !1230, inlinedAt: !1217)
!1232 = !DILocation(line: 429, column: 2, scope: !1230, inlinedAt: !1217)
!1233 = !DILocation(line: 430, column: 25, scope: !1234, inlinedAt: !1217)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !6, line: 430, column: 7)
!1235 = distinct !DILexicalBlock(scope: !1227, file: !6, line: 429, column: 9)
!1236 = !DILocation(line: 430, column: 18, scope: !1234, inlinedAt: !1217)
!1237 = !DILocation(line: 430, column: 7, scope: !1235, inlinedAt: !1217)
!1238 = !DILocation(line: 431, column: 34, scope: !1239, inlinedAt: !1217)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !6, line: 430, column: 57)
!1240 = !DILocalVariable(name: "src", arg: 1, scope: !1241, file: !6, line: 399, type: !20)
!1241 = distinct !DISubprogram(name: "incremental_copy_fast_path", scope: !6, file: !6, line: 399, type: !1242, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !20, !15, !43}
!1244 = !{!1240, !1245, !1246}
!1245 = !DILocalVariable(name: "op", arg: 2, scope: !1241, file: !6, line: 399, type: !15)
!1246 = !DILocalVariable(name: "len", arg: 3, scope: !1241, file: !6, line: 400, type: !43)
!1247 = !DILocation(line: 0, scope: !1241, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 431, column: 4, scope: !1239, inlinedAt: !1217)
!1249 = !DILocation(line: 402, column: 18, scope: !1241, inlinedAt: !1248)
!1250 = !DILocation(line: 402, column: 2, scope: !1241, inlinedAt: !1248)
!1251 = !DILocation(line: 407, column: 13, scope: !1241, inlinedAt: !1248)
!1252 = !DILocation(line: 407, column: 2, scope: !1241, inlinedAt: !1248)
!1253 = !DILocation(line: 408, column: 3, scope: !1254, inlinedAt: !1248)
!1254 = distinct !DILexicalBlock(scope: !1241, file: !6, line: 407, column: 18)
!1255 = distinct !{!1255, !1252, !1256, !335, !1257, !1258}
!1256 = !DILocation(line: 412, column: 2, scope: !1241, inlinedAt: !1248)
!1257 = !{!"llvm.loop.isvectorized", i32 1}
!1258 = !{!"llvm.loop.unroll.runtime.disable"}
!1259 = !DILocation(line: 403, column: 3, scope: !1260, inlinedAt: !1248)
!1260 = distinct !DILexicalBlock(scope: !1241, file: !6, line: 402, column: 23)
!1261 = !DILocation(line: 404, column: 7, scope: !1260, inlinedAt: !1248)
!1262 = !DILocation(line: 405, column: 6, scope: !1260, inlinedAt: !1248)
!1263 = !DILocation(line: 402, column: 12, scope: !1241, inlinedAt: !1248)
!1264 = distinct !{!1264, !1250, !1265, !335}
!1265 = !DILocation(line: 406, column: 2, scope: !1241, inlinedAt: !1248)
!1266 = !DILocation(line: 409, column: 7, scope: !1254, inlinedAt: !1248)
!1267 = !DILocation(line: 410, column: 6, scope: !1254, inlinedAt: !1248)
!1268 = !DILocation(line: 411, column: 7, scope: !1254, inlinedAt: !1248)
!1269 = distinct !{!1269, !1252, !1256, !335, !1257}
!1270 = !DILocation(line: 433, column: 19, scope: !1271, inlinedAt: !1217)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !6, line: 433, column: 8)
!1272 = distinct !DILexicalBlock(scope: !1234, file: !6, line: 432, column: 10)
!1273 = !DILocation(line: 433, column: 8, scope: !1272, inlinedAt: !1217)
!1274 = !DILocation(line: 436, column: 24, scope: !1272, inlinedAt: !1217)
!1275 = !DILocalVariable(name: "src", arg: 1, scope: !1276, file: !6, line: 356, type: !20)
!1276 = distinct !DISubprogram(name: "incremental_copy", scope: !6, file: !6, line: 356, type: !1242, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1277 = !{!1275, !1278, !1279}
!1278 = !DILocalVariable(name: "op", arg: 2, scope: !1276, file: !6, line: 356, type: !15)
!1279 = !DILocalVariable(name: "len", arg: 3, scope: !1276, file: !6, line: 356, type: !43)
!1280 = !DILocation(line: 0, scope: !1276, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 436, column: 4, scope: !1272, inlinedAt: !1217)
!1282 = !DILocation(line: 359, column: 2, scope: !1276, inlinedAt: !1281)
!1283 = !DILocation(line: 360, column: 11, scope: !1284, inlinedAt: !1281)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !6, line: 359, column: 5)
!1285 = !DILocation(line: 360, column: 9, scope: !1284, inlinedAt: !1281)
!1286 = distinct !{!1286, !1282, !1287, !335, !1257, !1258}
!1287 = !DILocation(line: 361, column: 20, scope: !1276, inlinedAt: !1281)
!1288 = !DILocation(line: 361, column: 2, scope: !1284, inlinedAt: !1281)
!1289 = distinct !{!1289, !1282, !1287, !335, !1257, !1258}
!1290 = !DILocation(line: 360, column: 15, scope: !1284, inlinedAt: !1281)
!1291 = !DILocation(line: 360, column: 6, scope: !1284, inlinedAt: !1281)
!1292 = !DILocation(line: 361, column: 11, scope: !1276, inlinedAt: !1281)
!1293 = !DILocation(line: 361, column: 17, scope: !1276, inlinedAt: !1281)
!1294 = distinct !{!1294, !1282, !1287, !335, !1257}
!1295 = !DILocation(line: 440, column: 13, scope: !1208, inlinedAt: !1217)
!1296 = !DILocation(line: 1137, column: 4, scope: !1297, inlinedAt: !1030)
!1297 = distinct !DILexicalBlock(scope: !1025, file: !6, line: 1137, column: 4)
!1298 = !DILocation(line: 1137, column: 4, scope: !1025, inlinedAt: !1030)
!1299 = !DILocation(line: 1137, column: 4, scope: !1300, inlinedAt: !1030)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !6, line: 1137, column: 4)
!1301 = !DILocation(line: 1137, column: 4, scope: !1302, inlinedAt: !1030)
!1302 = distinct !DILexicalBlock(scope: !1300, file: !6, line: 1137, column: 4)
!1303 = !DILocation(line: 0, scope: !1017, inlinedAt: !1030)
!1304 = distinct !{!1304, !1096, !1097}
!1305 = !DILocalVariable(name: "d", arg: 1, scope: !1306, file: !6, line: 1011, type: !936)
!1306 = distinct !DISubprogram(name: "exit_snappy_decompressor", scope: !6, file: !6, line: 1011, type: !1307, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !936}
!1309 = !{!1305}
!1310 = !DILocation(line: 0, scope: !1306, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 1230, column: 2, scope: !911, inlinedAt: !929)
!1312 = !DILocation(line: 1013, column: 10, scope: !1306, inlinedAt: !1311)
!1313 = !DILocation(line: 1013, column: 21, scope: !1306, inlinedAt: !1311)
!1314 = !DILocation(line: 0, scope: !378, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 1013, column: 2, scope: !1306, inlinedAt: !1311)
!1316 = !DILocation(line: 236, column: 25, scope: !378, inlinedAt: !1315)
!1317 = !DILocation(line: 236, column: 32, scope: !378, inlinedAt: !1315)
!1318 = !DILocation(line: 236, column: 22, scope: !378, inlinedAt: !1315)
!1319 = !DILocation(line: 237, column: 5, scope: !378, inlinedAt: !1315)
!1320 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !1315)
!1321 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !1315)
!1322 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !1315)
!1323 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !1315)
!1324 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !1315)
!1325 = !DILocation(line: 239, column: 44, scope: !388, inlinedAt: !1315)
!1326 = !DILocation(line: 239, column: 53, scope: !388, inlinedAt: !1315)
!1327 = !DILocation(line: 239, column: 48, scope: !388, inlinedAt: !1315)
!1328 = !DILocation(line: 239, column: 6, scope: !378, inlinedAt: !1315)
!1329 = !DILocation(line: 240, column: 13, scope: !980, inlinedAt: !1315)
!1330 = !DILocation(line: 241, column: 12, scope: !980, inlinedAt: !1315)
!1331 = !DILocation(line: 242, column: 2, scope: !980, inlinedAt: !1315)
!1332 = !DILocation(line: 1231, column: 23, scope: !911, inlinedAt: !929)
!1333 = !{!943, !944, i64 28}
!1334 = !{i8 0, i8 2}
!1335 = !{}
!1336 = !DILocation(line: 1231, column: 27, scope: !911, inlinedAt: !929)
!1337 = !DILocalVariable(name: "w", arg: 1, scope: !1338, file: !6, line: 338, type: !914)
!1338 = distinct !DISubprogram(name: "writer_check_length", scope: !6, file: !6, line: 338, type: !1339, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!76, !914}
!1341 = !{!1337}
!1342 = !DILocation(line: 0, scope: !1338, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 1231, column: 30, scope: !911, inlinedAt: !929)
!1344 = !DILocation(line: 340, column: 15, scope: !1338, inlinedAt: !1343)
!1345 = !DILocation(line: 1231, column: 9, scope: !911, inlinedAt: !929)
!1346 = !DILocation(line: 1232, column: 1, scope: !911, inlinedAt: !929)
!1347 = !DILocation(line: 1391, column: 1, scope: !885)
!1348 = !DILocation(line: 1390, column: 2, scope: !885)
!1349 = distinct !DISubprogram(name: "snappy_uncompress", scope: !6, file: !6, line: 1405, type: !1350, scopeLine: 1406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!43, !20, !63, !15}
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DILocalVariable(name: "compressed", arg: 1, scope: !1349, file: !6, line: 1405, type: !20)
!1354 = !DILocalVariable(name: "n", arg: 2, scope: !1349, file: !6, line: 1405, type: !63)
!1355 = !DILocalVariable(name: "uncompressed", arg: 3, scope: !1349, file: !6, line: 1405, type: !15)
!1356 = !DILocalVariable(name: "iov", scope: !1349, file: !6, line: 1407, type: !171)
!1357 = !DILocation(line: 0, scope: !1349)
!1358 = !DILocation(line: 1407, column: 2, scope: !1349)
!1359 = !DILocation(line: 1407, column: 15, scope: !1349)
!1360 = !DILocation(line: 1407, column: 21, scope: !1349)
!1361 = !DILocation(line: 1411, column: 9, scope: !1349)
!1362 = !DILocation(line: 1412, column: 1, scope: !1349)
!1363 = !DILocation(line: 1411, column: 2, scope: !1349)
!1364 = distinct !DISubprogram(name: "snappy_init_env_sg", scope: !6, file: !6, line: 1490, type: !1365, scopeLine: 1491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!43, !162, !76}
!1367 = !{!1368, !1369, !1370}
!1368 = !DILocalVariable(name: "env", arg: 1, scope: !1364, file: !6, line: 1490, type: !162)
!1369 = !DILocalVariable(name: "sg", arg: 2, scope: !1364, file: !6, line: 1490, type: !76)
!1370 = !DILabel(scope: !1364, name: "error", file: !6, line: 1505)
!1371 = !DILocation(line: 0, scope: !1364)
!1372 = !DILocation(line: 1492, column: 20, scope: !1364)
!1373 = !DILocation(line: 1492, column: 18, scope: !1364)
!1374 = !DILocation(line: 1493, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1364, file: !6, line: 1493, column: 6)
!1376 = !DILocation(line: 1493, column: 6, scope: !1364)
!1377 = !DILocation(line: 1495, column: 6, scope: !1364)
!1378 = !DILocation(line: 1496, column: 18, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !6, line: 1495, column: 10)
!1380 = distinct !DILexicalBlock(scope: !1364, file: !6, line: 1495, column: 6)
!1381 = !DILocation(line: 1496, column: 8, scope: !1379)
!1382 = !DILocation(line: 1496, column: 16, scope: !1379)
!1383 = !DILocation(line: 1497, column: 8, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !6, line: 1497, column: 7)
!1385 = !DILocation(line: 1497, column: 7, scope: !1379)
!1386 = !DILocation(line: 1500, column: 4, scope: !1379)
!1387 = !DILocation(line: 1499, column: 8, scope: !1379)
!1388 = !DILocation(line: 1499, column: 23, scope: !1379)
!1389 = !DILocation(line: 1501, column: 8, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1379, file: !6, line: 1501, column: 7)
!1391 = !DILocation(line: 1501, column: 7, scope: !1379)
!1392 = !DILocation(line: 1505, column: 1, scope: !1364)
!1393 = !DILocalVariable(name: "env", arg: 1, scope: !1394, file: !6, line: 1536, type: !162)
!1394 = distinct !DISubprogram(name: "snappy_free_env", scope: !6, file: !6, line: 1536, type: !1395, scopeLine: 1537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !162}
!1397 = !{!1393}
!1398 = !DILocation(line: 0, scope: !1394, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 1506, column: 2, scope: !1364)
!1400 = !DILocation(line: 1538, column: 2, scope: !1394, inlinedAt: !1399)
!1401 = !DILocation(line: 1540, column: 6, scope: !1394, inlinedAt: !1399)
!1402 = !DILocation(line: 1540, column: 11, scope: !1403, inlinedAt: !1399)
!1403 = distinct !DILexicalBlock(scope: !1394, file: !6, line: 1540, column: 6)
!1404 = !DILocation(line: 1540, column: 19, scope: !1403, inlinedAt: !1399)
!1405 = !DILocation(line: 1542, column: 11, scope: !1406, inlinedAt: !1399)
!1406 = distinct !DILexicalBlock(scope: !1394, file: !6, line: 1542, column: 6)
!1407 = !DILocation(line: 1542, column: 26, scope: !1406, inlinedAt: !1399)
!1408 = !DILocation(line: 1542, column: 6, scope: !1394, inlinedAt: !1399)
!1409 = !DILocation(line: 1543, column: 3, scope: !1406, inlinedAt: !1399)
!1410 = !DILocation(line: 1545, column: 2, scope: !1394, inlinedAt: !1399)
!1411 = !DILocation(line: 1507, column: 2, scope: !1364)
!1412 = !DILocation(line: 1508, column: 1, scope: !1364)
!1413 = !DISubprogram(name: "malloc", scope: !1414, file: !1414, line: 540, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1335)
!1414 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!14, !63}
!1417 = !DILocation(line: 0, scope: !1394)
!1418 = !DILocation(line: 1538, column: 2, scope: !1394)
!1419 = !DILocation(line: 1540, column: 11, scope: !1403)
!1420 = !DILocation(line: 1540, column: 19, scope: !1403)
!1421 = !DILocation(line: 1540, column: 6, scope: !1394)
!1422 = !DILocation(line: 1541, column: 3, scope: !1403)
!1423 = !DILocation(line: 1542, column: 11, scope: !1406)
!1424 = !DILocation(line: 1542, column: 26, scope: !1406)
!1425 = !DILocation(line: 1542, column: 6, scope: !1394)
!1426 = !DILocation(line: 1543, column: 3, scope: !1406)
!1427 = !DILocation(line: 1545, column: 2, scope: !1394)
!1428 = !DILocation(line: 1546, column: 1, scope: !1394)
!1429 = distinct !DISubprogram(name: "snappy_init_env", scope: !6, file: !6, line: 1521, type: !1430, scopeLine: 1522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!43, !162}
!1432 = !{!1433}
!1433 = !DILocalVariable(name: "env", arg: 1, scope: !1429, file: !6, line: 1521, type: !162)
!1434 = !DILocation(line: 0, scope: !1429)
!1435 = !DILocation(line: 1523, column: 20, scope: !1429)
!1436 = !DILocation(line: 1523, column: 18, scope: !1429)
!1437 = !DILocation(line: 1524, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1429, file: !6, line: 1524, column: 6)
!1439 = !DILocation(line: 1527, column: 1, scope: !1429)
!1440 = !DISubprogram(name: "free", scope: !1414, file: !1414, line: 555, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1335)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !14}
!1443 = distinct !DISubprogram(name: "refill_tag", scope: !6, file: !6, line: 1144, type: !1444, scopeLine: 1145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1446)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!76, !936}
!1446 = !{!1447, !1448, !1449, !1452, !1453, !1454, !1455, !1456, !1460, !1461}
!1447 = !DILocalVariable(name: "d", arg: 1, scope: !1443, file: !6, line: 1144, type: !936)
!1448 = !DILocalVariable(name: "ip", scope: !1443, file: !6, line: 1146, type: !20)
!1449 = !DILocalVariable(name: "n", scope: !1450, file: !6, line: 1149, type: !63)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !6, line: 1148, column: 25)
!1451 = distinct !DILexicalBlock(scope: !1443, file: !6, line: 1148, column: 6)
!1452 = !DILocalVariable(name: "c", scope: !1443, file: !6, line: 1163, type: !18)
!1453 = !DILocalVariable(name: "entry", scope: !1443, file: !6, line: 1164, type: !51)
!1454 = !DILocalVariable(name: "needed", scope: !1443, file: !6, line: 1165, type: !51)
!1455 = !DILocalVariable(name: "nbuf", scope: !1443, file: !6, line: 1169, type: !24)
!1456 = !DILocalVariable(name: "length", scope: !1457, file: !6, line: 1182, type: !63)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !6, line: 1181, column: 25)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !6, line: 1171, column: 21)
!1459 = distinct !DILexicalBlock(scope: !1443, file: !6, line: 1171, column: 6)
!1460 = !DILocalVariable(name: "src", scope: !1457, file: !6, line: 1183, type: !20)
!1461 = !DILocalVariable(name: "to_add", scope: !1457, file: !6, line: 1186, type: !24)
!1462 = !DILocation(line: 0, scope: !1443)
!1463 = !DILocation(line: 1146, column: 22, scope: !1443)
!1464 = !DILocation(line: 1148, column: 15, scope: !1451)
!1465 = !DILocation(line: 1148, column: 9, scope: !1451)
!1466 = !DILocation(line: 1148, column: 6, scope: !1443)
!1467 = !DILocation(line: 1151, column: 11, scope: !1450)
!1468 = !DILocation(line: 1151, column: 22, scope: !1450)
!1469 = !DILocation(line: 0, scope: !378, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 1151, column: 3, scope: !1450)
!1471 = !DILocation(line: 236, column: 25, scope: !378, inlinedAt: !1470)
!1472 = !DILocation(line: 236, column: 32, scope: !378, inlinedAt: !1470)
!1473 = !DILocation(line: 236, column: 22, scope: !378, inlinedAt: !1470)
!1474 = !DILocation(line: 237, column: 5, scope: !378, inlinedAt: !1470)
!1475 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !1470)
!1476 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !1470)
!1477 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !1470)
!1478 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !1470)
!1479 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !1470)
!1480 = !DILocation(line: 223, column: 6, scope: !348, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 1152, column: 8, scope: !1450)
!1482 = !DILocation(line: 239, column: 44, scope: !388, inlinedAt: !1470)
!1483 = !DILocation(line: 239, column: 53, scope: !388, inlinedAt: !1470)
!1484 = !DILocation(line: 239, column: 48, scope: !388, inlinedAt: !1470)
!1485 = !DILocation(line: 239, column: 6, scope: !378, inlinedAt: !1470)
!1486 = !DILocation(line: 240, column: 13, scope: !980, inlinedAt: !1470)
!1487 = !DILocation(line: 241, column: 12, scope: !980, inlinedAt: !1470)
!1488 = !DILocation(line: 242, column: 2, scope: !980, inlinedAt: !1470)
!1489 = !DILocation(line: 0, scope: !341, inlinedAt: !1481)
!1490 = !DILocation(line: 223, column: 6, scope: !341, inlinedAt: !1481)
!1491 = !DILocation(line: 224, column: 23, scope: !347, inlinedAt: !1481)
!1492 = !DILocation(line: 0, scope: !347, inlinedAt: !1481)
!1493 = !DILocation(line: 225, column: 7, scope: !357, inlinedAt: !1481)
!1494 = !DILocation(line: 225, column: 23, scope: !357, inlinedAt: !1481)
!1495 = !DILocation(line: 225, column: 17, scope: !357, inlinedAt: !1481)
!1496 = !DILocation(line: 225, column: 7, scope: !347, inlinedAt: !1481)
!1497 = !DILocation(line: 0, scope: !1450)
!1498 = !DILocation(line: 1153, column: 13, scope: !1450)
!1499 = !DILocation(line: 1155, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !6, line: 1154, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1450, file: !6, line: 1154, column: 7)
!1502 = !DILocation(line: 1155, column: 11, scope: !1500)
!1503 = !DILocation(line: 227, column: 15, scope: !362, inlinedAt: !1481)
!1504 = !DILocation(line: 1153, column: 15, scope: !1450)
!1505 = !DILocation(line: 227, column: 24, scope: !362, inlinedAt: !1481)
!1506 = !DILocation(line: 1158, column: 20, scope: !1450)
!1507 = !DILocation(line: 1158, column: 15, scope: !1450)
!1508 = !DILocation(line: 1169, column: 16, scope: !1443)
!1509 = !DILocation(line: 1163, column: 26, scope: !1443)
!1510 = !DILocation(line: 1164, column: 20, scope: !1443)
!1511 = !DILocation(line: 1165, column: 28, scope: !1443)
!1512 = !DILocation(line: 1165, column: 35, scope: !1443)
!1513 = !DILocation(line: 1169, column: 25, scope: !1443)
!1514 = !DILocation(line: 1169, column: 13, scope: !1443)
!1515 = !DILocation(line: 1171, column: 11, scope: !1459)
!1516 = !DILocation(line: 1171, column: 6, scope: !1443)
!1517 = !DILocation(line: 1178, column: 14, scope: !1458)
!1518 = !DILocation(line: 1178, column: 27, scope: !1458)
!1519 = !DILocation(line: 1178, column: 3, scope: !1458)
!1520 = !DILocation(line: 1179, column: 11, scope: !1458)
!1521 = !DILocation(line: 1179, column: 22, scope: !1458)
!1522 = !DILocation(line: 0, scope: !378, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 1179, column: 3, scope: !1458)
!1524 = !DILocation(line: 236, column: 25, scope: !378, inlinedAt: !1523)
!1525 = !DILocation(line: 236, column: 32, scope: !378, inlinedAt: !1523)
!1526 = !DILocation(line: 236, column: 22, scope: !378, inlinedAt: !1523)
!1527 = !DILocation(line: 237, column: 5, scope: !378, inlinedAt: !1523)
!1528 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !1523)
!1529 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !1523)
!1530 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !1523)
!1531 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !1523)
!1532 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !1523)
!1533 = !DILocation(line: 239, column: 44, scope: !388, inlinedAt: !1523)
!1534 = !DILocation(line: 239, column: 53, scope: !388, inlinedAt: !1523)
!1535 = !DILocation(line: 239, column: 48, scope: !388, inlinedAt: !1523)
!1536 = !DILocation(line: 239, column: 6, scope: !378, inlinedAt: !1523)
!1537 = !DILocation(line: 240, column: 13, scope: !980, inlinedAt: !1523)
!1538 = !DILocation(line: 241, column: 12, scope: !980, inlinedAt: !1523)
!1539 = !DILocation(line: 242, column: 2, scope: !980, inlinedAt: !1523)
!1540 = !DILocation(line: 1180, column: 13, scope: !1458)
!1541 = !DILocation(line: 223, column: 6, scope: !341, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 1183, column: 22, scope: !1457)
!1543 = !DILocation(line: 223, column: 6, scope: !348, inlinedAt: !1542)
!1544 = !DILocation(line: 1183, column: 30, scope: !1457)
!1545 = !DILocation(line: 0, scope: !341, inlinedAt: !1542)
!1546 = !DILocation(line: 224, column: 23, scope: !347, inlinedAt: !1542)
!1547 = !DILocation(line: 0, scope: !347, inlinedAt: !1542)
!1548 = !DILocation(line: 225, column: 7, scope: !357, inlinedAt: !1542)
!1549 = !DILocation(line: 225, column: 23, scope: !357, inlinedAt: !1542)
!1550 = !DILocation(line: 225, column: 17, scope: !357, inlinedAt: !1542)
!1551 = !DILocation(line: 225, column: 7, scope: !347, inlinedAt: !1542)
!1552 = !DILocation(line: 0, scope: !1457)
!1553 = !DILocation(line: 226, column: 23, scope: !362, inlinedAt: !1542)
!1554 = !DILocation(line: 227, column: 15, scope: !362, inlinedAt: !1542)
!1555 = !DILocation(line: 227, column: 24, scope: !362, inlinedAt: !1542)
!1556 = !DILocation(line: 1186, column: 17, scope: !1457)
!1557 = !DILocation(line: 1187, column: 22, scope: !1457)
!1558 = !DILocation(line: 1187, column: 4, scope: !1457)
!1559 = !DILocation(line: 1188, column: 9, scope: !1457)
!1560 = !DILocation(line: 1189, column: 12, scope: !1457)
!1561 = !DILocation(line: 0, scope: !378, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 1189, column: 4, scope: !1457)
!1563 = !DILocation(line: 236, column: 25, scope: !378, inlinedAt: !1562)
!1564 = !DILocation(line: 236, column: 32, scope: !378, inlinedAt: !1562)
!1565 = !DILocation(line: 236, column: 22, scope: !378, inlinedAt: !1562)
!1566 = !DILocation(line: 237, column: 5, scope: !378, inlinedAt: !1562)
!1567 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !1562)
!1568 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !1562)
!1569 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !1562)
!1570 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !1562)
!1571 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !1562)
!1572 = !DILocation(line: 239, column: 44, scope: !388, inlinedAt: !1562)
!1573 = !DILocation(line: 239, column: 53, scope: !388, inlinedAt: !1562)
!1574 = !DILocation(line: 239, column: 48, scope: !388, inlinedAt: !1562)
!1575 = !DILocation(line: 239, column: 6, scope: !378, inlinedAt: !1562)
!1576 = !DILocation(line: 240, column: 13, scope: !980, inlinedAt: !1562)
!1577 = !DILocation(line: 241, column: 12, scope: !980, inlinedAt: !1562)
!1578 = !DILocation(line: 242, column: 2, scope: !980, inlinedAt: !1562)
!1579 = !DILocation(line: 1181, column: 15, scope: !1458)
!1580 = !DILocation(line: 1181, column: 3, scope: !1458)
!1581 = !DILocation(line: 1192, column: 9, scope: !1458)
!1582 = !DILocation(line: 1193, column: 28, scope: !1458)
!1583 = !DILocation(line: 1193, column: 15, scope: !1458)
!1584 = !DILocation(line: 1194, column: 2, scope: !1458)
!1585 = !DILocation(line: 1194, column: 18, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1459, file: !6, line: 1194, column: 13)
!1587 = !DILocation(line: 1194, column: 13, scope: !1459)
!1588 = !DILocation(line: 1199, column: 14, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !6, line: 1194, column: 23)
!1590 = !DILocation(line: 1199, column: 27, scope: !1589)
!1591 = !DILocation(line: 1199, column: 3, scope: !1589)
!1592 = !DILocation(line: 1200, column: 11, scope: !1589)
!1593 = !DILocation(line: 1200, column: 22, scope: !1589)
!1594 = !DILocation(line: 0, scope: !378, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 1200, column: 3, scope: !1589)
!1596 = !DILocation(line: 236, column: 25, scope: !378, inlinedAt: !1595)
!1597 = !DILocation(line: 236, column: 32, scope: !378, inlinedAt: !1595)
!1598 = !DILocation(line: 236, column: 22, scope: !378, inlinedAt: !1595)
!1599 = !DILocation(line: 237, column: 5, scope: !378, inlinedAt: !1595)
!1600 = !DILocation(line: 237, column: 12, scope: !378, inlinedAt: !1595)
!1601 = !DILocation(line: 239, column: 6, scope: !388, inlinedAt: !1595)
!1602 = !DILocation(line: 239, column: 23, scope: !388, inlinedAt: !1595)
!1603 = !DILocation(line: 239, column: 16, scope: !388, inlinedAt: !1595)
!1604 = !DILocation(line: 239, column: 31, scope: !388, inlinedAt: !1595)
!1605 = !DILocation(line: 239, column: 44, scope: !388, inlinedAt: !1595)
!1606 = !DILocation(line: 239, column: 53, scope: !388, inlinedAt: !1595)
!1607 = !DILocation(line: 239, column: 48, scope: !388, inlinedAt: !1595)
!1608 = !DILocation(line: 239, column: 6, scope: !378, inlinedAt: !1595)
!1609 = !DILocation(line: 240, column: 13, scope: !980, inlinedAt: !1595)
!1610 = !DILocation(line: 241, column: 12, scope: !980, inlinedAt: !1595)
!1611 = !DILocation(line: 242, column: 2, scope: !980, inlinedAt: !1595)
!1612 = !DILocation(line: 1201, column: 13, scope: !1589)
!1613 = !DILocation(line: 1202, column: 9, scope: !1589)
!1614 = !DILocation(line: 1203, column: 28, scope: !1589)
!1615 = !DILocation(line: 1203, column: 15, scope: !1589)
!1616 = !DILocation(line: 1204, column: 2, scope: !1589)
!1617 = !DILocation(line: 1206, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1586, file: !6, line: 1204, column: 9)
!1619 = !DILocation(line: 1209, column: 1, scope: !1443)
