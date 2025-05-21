; ModuleID = './md5.c'
source_filename = "./md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }

@fillbuf = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5_init_ctx(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %3, i32 0, i32 0
  store i32 1732584193, ptr %4, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.md5_ctx, ptr %5, i32 0, i32 1
  store i32 -271733879, ptr %6, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.md5_ctx, ptr %7, i32 0, i32 2
  store i32 -1732584194, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %9, i32 0, i32 3
  store i32 271733878, ptr %10, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.md5_ctx, ptr %11, i32 0, i32 4
  %13 = getelementptr inbounds [2 x i32], ptr %12, i64 0, i64 1
  store i32 0, ptr %13, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.md5_ctx, ptr %14, i32 0, i32 4
  %16 = getelementptr inbounds [2 x i32], ptr %15, i64 0, i64 0
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.md5_ctx, ptr %17, i32 0, i32 5
  store i32 0, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @md5_read_ctx(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  store ptr %6, ptr %5, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 0
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = call i32 @__uint32_identity(i32 noundef %11)
  call void @set_uint32(ptr noundef %8, i32 noundef %12)
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds i8, ptr %13, i64 4
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.md5_ctx, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = call i32 @__uint32_identity(i32 noundef %17)
  call void @set_uint32(ptr noundef %14, i32 noundef %18)
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds i8, ptr %19, i64 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.md5_ctx, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @__uint32_identity(i32 noundef %23)
  call void @set_uint32(ptr noundef %20, i32 noundef %24)
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 12
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.md5_ctx, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @__uint32_identity(i32 noundef %29)
  call void @set_uint32(ptr noundef %26, i32 noundef %30)
  %31 = load ptr, ptr %4, align 8
  ret ptr %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_uint32(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 4 %4, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uint32_identity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @md5_finish_ctx(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.md5_ctx, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %5, align 4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ult i32 %10, 56
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 16, i32 32
  %14 = sext i32 %13 to i64
  store i64 %14, ptr %6, align 8
  %15 = load i32, ptr %5, align 4
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.md5_ctx, ptr %16, i32 0, i32 4
  %18 = getelementptr inbounds [2 x i32], ptr %17, i64 0, i64 0
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %15
  store i32 %20, ptr %18, align 4
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.md5_ctx, ptr %21, i32 0, i32 4
  %23 = getelementptr inbounds [2 x i32], ptr %22, i64 0, i64 0
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.md5_ctx, ptr %28, i32 0, i32 4
  %30 = getelementptr inbounds [2 x i32], ptr %29, i64 0, i64 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %27, %2
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.md5_ctx, ptr %34, i32 0, i32 4
  %36 = getelementptr inbounds [2 x i32], ptr %35, i64 0, i64 0
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 3
  %39 = call i32 @__uint32_identity(i32 noundef %38)
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.md5_ctx, ptr %40, i32 0, i32 6
  %42 = load i64, ptr %6, align 8
  %43 = sub i64 %42, 2
  %44 = getelementptr inbounds [32 x i32], ptr %41, i64 0, i64 %43
  store i32 %39, ptr %44, align 4
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.md5_ctx, ptr %45, i32 0, i32 4
  %47 = getelementptr inbounds [2 x i32], ptr %46, i64 0, i64 1
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %48, 3
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr inbounds %struct.md5_ctx, ptr %50, i32 0, i32 4
  %52 = getelementptr inbounds [2 x i32], ptr %51, i64 0, i64 0
  %53 = load i32, ptr %52, align 4
  %54 = lshr i32 %53, 29
  %55 = or i32 %49, %54
  %56 = call i32 @__uint32_identity(i32 noundef %55)
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.md5_ctx, ptr %57, i32 0, i32 6
  %59 = load i64, ptr %6, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds [32 x i32], ptr %58, i64 0, i64 %60
  store i32 %56, ptr %61, align 4
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct.md5_ctx, ptr %62, i32 0, i32 6
  %64 = getelementptr inbounds [32 x i32], ptr %63, i64 0, i64 0
  %65 = load i32, ptr %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %64, i64 %66
  %68 = load i64, ptr %6, align 8
  %69 = sub i64 %68, 2
  %70 = mul i64 %69, 4
  %71 = load i32, ptr %5, align 4
  %72 = zext i32 %71 to i64
  %73 = sub i64 %70, %72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 16 @fillbuf, i64 %73, i1 false)
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.md5_ctx, ptr %74, i32 0, i32 6
  %76 = getelementptr inbounds [32 x i32], ptr %75, i64 0, i64 0
  %77 = load i64, ptr %6, align 8
  %78 = mul i64 %77, 4
  %79 = load ptr, ptr %3, align 8
  call void @md5_process_block(ptr noundef %76, i64 noundef %78, ptr noundef %79) #5
  %80 = load ptr, ptr %3, align 8
  %81 = load ptr, ptr %4, align 8
  %82 = call ptr @md5_read_ctx(ptr noundef %80, ptr noundef %81) #5
  ret ptr %82
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5_process_block(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %8, align 8
  %22 = load i64, ptr %5, align 8
  %23 = udiv i64 %22, 4
  store i64 %23, ptr %9, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i64, ptr %9, align 8
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  store ptr %26, ptr %10, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.md5_ctx, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %11, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds %struct.md5_ctx, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %12, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.md5_ctx, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %13, align 4
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.md5_ctx, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %14, align 4
  %39 = load i64, ptr %5, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, ptr %15, align 4
  %41 = load i32, ptr %15, align 4
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct.md5_ctx, ptr %42, i32 0, i32 4
  %44 = getelementptr inbounds [2 x i32], ptr %43, i64 0, i64 0
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %41
  store i32 %46, ptr %44, align 4
  %47 = load i64, ptr %5, align 8
  %48 = lshr i64 %47, 31
  %49 = lshr i64 %48, 1
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.md5_ctx, ptr %50, i32 0, i32 4
  %52 = getelementptr inbounds [2 x i32], ptr %51, i64 0, i64 0
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %15, align 4
  %55 = icmp ult i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = add i64 %49, %57
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds %struct.md5_ctx, ptr %59, i32 0, i32 4
  %61 = getelementptr inbounds [2 x i32], ptr %60, i64 0, i64 1
  %62 = load i32, ptr %61, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, %58
  %65 = trunc i64 %64 to i32
  store i32 %65, ptr %61, align 4
  br label %66

66:                                               ; preds = %1579, %3
  %67 = load ptr, ptr %8, align 8
  %68 = load ptr, ptr %10, align 8
  %69 = icmp ult ptr %67, %68
  br i1 %69, label %70, label %1592

70:                                               ; preds = %66
  %71 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 0
  store ptr %71, ptr %16, align 8
  %72 = load i32, ptr %11, align 4
  store i32 %72, ptr %17, align 4
  %73 = load i32, ptr %12, align 4
  store i32 %73, ptr %18, align 4
  %74 = load i32, ptr %13, align 4
  store i32 %74, ptr %19, align 4
  %75 = load i32, ptr %14, align 4
  store i32 %75, ptr %20, align 4
  br label %76

76:                                               ; preds = %70
  %77 = load i32, ptr %14, align 4
  %78 = load i32, ptr %12, align 4
  %79 = load i32, ptr %13, align 4
  %80 = load i32, ptr %14, align 4
  %81 = xor i32 %79, %80
  %82 = and i32 %78, %81
  %83 = xor i32 %77, %82
  %84 = load ptr, ptr %8, align 8
  %85 = load i32, ptr %84, align 4
  %86 = call i32 @__uint32_identity(i32 noundef %85)
  %87 = load ptr, ptr %16, align 8
  %88 = getelementptr inbounds i32, ptr %87, i32 1
  store ptr %88, ptr %16, align 8
  store i32 %86, ptr %87, align 4
  %89 = add i32 %83, %86
  %90 = add i32 %89, -680876936
  %91 = load i32, ptr %11, align 4
  %92 = add i32 %91, %90
  store i32 %92, ptr %11, align 4
  %93 = load ptr, ptr %8, align 8
  %94 = getelementptr inbounds i32, ptr %93, i32 1
  store ptr %94, ptr %8, align 8
  %95 = load i32, ptr %11, align 4
  %96 = shl i32 %95, 7
  %97 = load i32, ptr %11, align 4
  %98 = lshr i32 %97, 25
  %99 = or i32 %96, %98
  store i32 %99, ptr %11, align 4
  %100 = load i32, ptr %12, align 4
  %101 = load i32, ptr %11, align 4
  %102 = add i32 %101, %100
  store i32 %102, ptr %11, align 4
  br label %103

103:                                              ; preds = %76
  br label %104

104:                                              ; preds = %103
  %105 = load i32, ptr %13, align 4
  %106 = load i32, ptr %11, align 4
  %107 = load i32, ptr %12, align 4
  %108 = load i32, ptr %13, align 4
  %109 = xor i32 %107, %108
  %110 = and i32 %106, %109
  %111 = xor i32 %105, %110
  %112 = load ptr, ptr %8, align 8
  %113 = load i32, ptr %112, align 4
  %114 = call i32 @__uint32_identity(i32 noundef %113)
  %115 = load ptr, ptr %16, align 8
  %116 = getelementptr inbounds i32, ptr %115, i32 1
  store ptr %116, ptr %16, align 8
  store i32 %114, ptr %115, align 4
  %117 = add i32 %111, %114
  %118 = add i32 %117, -389564586
  %119 = load i32, ptr %14, align 4
  %120 = add i32 %119, %118
  store i32 %120, ptr %14, align 4
  %121 = load ptr, ptr %8, align 8
  %122 = getelementptr inbounds i32, ptr %121, i32 1
  store ptr %122, ptr %8, align 8
  %123 = load i32, ptr %14, align 4
  %124 = shl i32 %123, 12
  %125 = load i32, ptr %14, align 4
  %126 = lshr i32 %125, 20
  %127 = or i32 %124, %126
  store i32 %127, ptr %14, align 4
  %128 = load i32, ptr %11, align 4
  %129 = load i32, ptr %14, align 4
  %130 = add i32 %129, %128
  store i32 %130, ptr %14, align 4
  br label %131

131:                                              ; preds = %104
  br label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %12, align 4
  %134 = load i32, ptr %14, align 4
  %135 = load i32, ptr %11, align 4
  %136 = load i32, ptr %12, align 4
  %137 = xor i32 %135, %136
  %138 = and i32 %134, %137
  %139 = xor i32 %133, %138
  %140 = load ptr, ptr %8, align 8
  %141 = load i32, ptr %140, align 4
  %142 = call i32 @__uint32_identity(i32 noundef %141)
  %143 = load ptr, ptr %16, align 8
  %144 = getelementptr inbounds i32, ptr %143, i32 1
  store ptr %144, ptr %16, align 8
  store i32 %142, ptr %143, align 4
  %145 = add i32 %139, %142
  %146 = add i32 %145, 606105819
  %147 = load i32, ptr %13, align 4
  %148 = add i32 %147, %146
  store i32 %148, ptr %13, align 4
  %149 = load ptr, ptr %8, align 8
  %150 = getelementptr inbounds i32, ptr %149, i32 1
  store ptr %150, ptr %8, align 8
  %151 = load i32, ptr %13, align 4
  %152 = shl i32 %151, 17
  %153 = load i32, ptr %13, align 4
  %154 = lshr i32 %153, 15
  %155 = or i32 %152, %154
  store i32 %155, ptr %13, align 4
  %156 = load i32, ptr %14, align 4
  %157 = load i32, ptr %13, align 4
  %158 = add i32 %157, %156
  store i32 %158, ptr %13, align 4
  br label %159

159:                                              ; preds = %132
  br label %160

160:                                              ; preds = %159
  %161 = load i32, ptr %11, align 4
  %162 = load i32, ptr %13, align 4
  %163 = load i32, ptr %14, align 4
  %164 = load i32, ptr %11, align 4
  %165 = xor i32 %163, %164
  %166 = and i32 %162, %165
  %167 = xor i32 %161, %166
  %168 = load ptr, ptr %8, align 8
  %169 = load i32, ptr %168, align 4
  %170 = call i32 @__uint32_identity(i32 noundef %169)
  %171 = load ptr, ptr %16, align 8
  %172 = getelementptr inbounds i32, ptr %171, i32 1
  store ptr %172, ptr %16, align 8
  store i32 %170, ptr %171, align 4
  %173 = add i32 %167, %170
  %174 = add i32 %173, -1044525330
  %175 = load i32, ptr %12, align 4
  %176 = add i32 %175, %174
  store i32 %176, ptr %12, align 4
  %177 = load ptr, ptr %8, align 8
  %178 = getelementptr inbounds i32, ptr %177, i32 1
  store ptr %178, ptr %8, align 8
  %179 = load i32, ptr %12, align 4
  %180 = shl i32 %179, 22
  %181 = load i32, ptr %12, align 4
  %182 = lshr i32 %181, 10
  %183 = or i32 %180, %182
  store i32 %183, ptr %12, align 4
  %184 = load i32, ptr %13, align 4
  %185 = load i32, ptr %12, align 4
  %186 = add i32 %185, %184
  store i32 %186, ptr %12, align 4
  br label %187

187:                                              ; preds = %160
  br label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %14, align 4
  %190 = load i32, ptr %12, align 4
  %191 = load i32, ptr %13, align 4
  %192 = load i32, ptr %14, align 4
  %193 = xor i32 %191, %192
  %194 = and i32 %190, %193
  %195 = xor i32 %189, %194
  %196 = load ptr, ptr %8, align 8
  %197 = load i32, ptr %196, align 4
  %198 = call i32 @__uint32_identity(i32 noundef %197)
  %199 = load ptr, ptr %16, align 8
  %200 = getelementptr inbounds i32, ptr %199, i32 1
  store ptr %200, ptr %16, align 8
  store i32 %198, ptr %199, align 4
  %201 = add i32 %195, %198
  %202 = add i32 %201, -176418897
  %203 = load i32, ptr %11, align 4
  %204 = add i32 %203, %202
  store i32 %204, ptr %11, align 4
  %205 = load ptr, ptr %8, align 8
  %206 = getelementptr inbounds i32, ptr %205, i32 1
  store ptr %206, ptr %8, align 8
  %207 = load i32, ptr %11, align 4
  %208 = shl i32 %207, 7
  %209 = load i32, ptr %11, align 4
  %210 = lshr i32 %209, 25
  %211 = or i32 %208, %210
  store i32 %211, ptr %11, align 4
  %212 = load i32, ptr %12, align 4
  %213 = load i32, ptr %11, align 4
  %214 = add i32 %213, %212
  store i32 %214, ptr %11, align 4
  br label %215

215:                                              ; preds = %188
  br label %216

216:                                              ; preds = %215
  %217 = load i32, ptr %13, align 4
  %218 = load i32, ptr %11, align 4
  %219 = load i32, ptr %12, align 4
  %220 = load i32, ptr %13, align 4
  %221 = xor i32 %219, %220
  %222 = and i32 %218, %221
  %223 = xor i32 %217, %222
  %224 = load ptr, ptr %8, align 8
  %225 = load i32, ptr %224, align 4
  %226 = call i32 @__uint32_identity(i32 noundef %225)
  %227 = load ptr, ptr %16, align 8
  %228 = getelementptr inbounds i32, ptr %227, i32 1
  store ptr %228, ptr %16, align 8
  store i32 %226, ptr %227, align 4
  %229 = add i32 %223, %226
  %230 = add i32 %229, 1200080426
  %231 = load i32, ptr %14, align 4
  %232 = add i32 %231, %230
  store i32 %232, ptr %14, align 4
  %233 = load ptr, ptr %8, align 8
  %234 = getelementptr inbounds i32, ptr %233, i32 1
  store ptr %234, ptr %8, align 8
  %235 = load i32, ptr %14, align 4
  %236 = shl i32 %235, 12
  %237 = load i32, ptr %14, align 4
  %238 = lshr i32 %237, 20
  %239 = or i32 %236, %238
  store i32 %239, ptr %14, align 4
  %240 = load i32, ptr %11, align 4
  %241 = load i32, ptr %14, align 4
  %242 = add i32 %241, %240
  store i32 %242, ptr %14, align 4
  br label %243

243:                                              ; preds = %216
  br label %244

244:                                              ; preds = %243
  %245 = load i32, ptr %12, align 4
  %246 = load i32, ptr %14, align 4
  %247 = load i32, ptr %11, align 4
  %248 = load i32, ptr %12, align 4
  %249 = xor i32 %247, %248
  %250 = and i32 %246, %249
  %251 = xor i32 %245, %250
  %252 = load ptr, ptr %8, align 8
  %253 = load i32, ptr %252, align 4
  %254 = call i32 @__uint32_identity(i32 noundef %253)
  %255 = load ptr, ptr %16, align 8
  %256 = getelementptr inbounds i32, ptr %255, i32 1
  store ptr %256, ptr %16, align 8
  store i32 %254, ptr %255, align 4
  %257 = add i32 %251, %254
  %258 = add i32 %257, -1473231341
  %259 = load i32, ptr %13, align 4
  %260 = add i32 %259, %258
  store i32 %260, ptr %13, align 4
  %261 = load ptr, ptr %8, align 8
  %262 = getelementptr inbounds i32, ptr %261, i32 1
  store ptr %262, ptr %8, align 8
  %263 = load i32, ptr %13, align 4
  %264 = shl i32 %263, 17
  %265 = load i32, ptr %13, align 4
  %266 = lshr i32 %265, 15
  %267 = or i32 %264, %266
  store i32 %267, ptr %13, align 4
  %268 = load i32, ptr %14, align 4
  %269 = load i32, ptr %13, align 4
  %270 = add i32 %269, %268
  store i32 %270, ptr %13, align 4
  br label %271

271:                                              ; preds = %244
  br label %272

272:                                              ; preds = %271
  %273 = load i32, ptr %11, align 4
  %274 = load i32, ptr %13, align 4
  %275 = load i32, ptr %14, align 4
  %276 = load i32, ptr %11, align 4
  %277 = xor i32 %275, %276
  %278 = and i32 %274, %277
  %279 = xor i32 %273, %278
  %280 = load ptr, ptr %8, align 8
  %281 = load i32, ptr %280, align 4
  %282 = call i32 @__uint32_identity(i32 noundef %281)
  %283 = load ptr, ptr %16, align 8
  %284 = getelementptr inbounds i32, ptr %283, i32 1
  store ptr %284, ptr %16, align 8
  store i32 %282, ptr %283, align 4
  %285 = add i32 %279, %282
  %286 = add i32 %285, -45705983
  %287 = load i32, ptr %12, align 4
  %288 = add i32 %287, %286
  store i32 %288, ptr %12, align 4
  %289 = load ptr, ptr %8, align 8
  %290 = getelementptr inbounds i32, ptr %289, i32 1
  store ptr %290, ptr %8, align 8
  %291 = load i32, ptr %12, align 4
  %292 = shl i32 %291, 22
  %293 = load i32, ptr %12, align 4
  %294 = lshr i32 %293, 10
  %295 = or i32 %292, %294
  store i32 %295, ptr %12, align 4
  %296 = load i32, ptr %13, align 4
  %297 = load i32, ptr %12, align 4
  %298 = add i32 %297, %296
  store i32 %298, ptr %12, align 4
  br label %299

299:                                              ; preds = %272
  br label %300

300:                                              ; preds = %299
  %301 = load i32, ptr %14, align 4
  %302 = load i32, ptr %12, align 4
  %303 = load i32, ptr %13, align 4
  %304 = load i32, ptr %14, align 4
  %305 = xor i32 %303, %304
  %306 = and i32 %302, %305
  %307 = xor i32 %301, %306
  %308 = load ptr, ptr %8, align 8
  %309 = load i32, ptr %308, align 4
  %310 = call i32 @__uint32_identity(i32 noundef %309)
  %311 = load ptr, ptr %16, align 8
  %312 = getelementptr inbounds i32, ptr %311, i32 1
  store ptr %312, ptr %16, align 8
  store i32 %310, ptr %311, align 4
  %313 = add i32 %307, %310
  %314 = add i32 %313, 1770035416
  %315 = load i32, ptr %11, align 4
  %316 = add i32 %315, %314
  store i32 %316, ptr %11, align 4
  %317 = load ptr, ptr %8, align 8
  %318 = getelementptr inbounds i32, ptr %317, i32 1
  store ptr %318, ptr %8, align 8
  %319 = load i32, ptr %11, align 4
  %320 = shl i32 %319, 7
  %321 = load i32, ptr %11, align 4
  %322 = lshr i32 %321, 25
  %323 = or i32 %320, %322
  store i32 %323, ptr %11, align 4
  %324 = load i32, ptr %12, align 4
  %325 = load i32, ptr %11, align 4
  %326 = add i32 %325, %324
  store i32 %326, ptr %11, align 4
  br label %327

327:                                              ; preds = %300
  br label %328

328:                                              ; preds = %327
  %329 = load i32, ptr %13, align 4
  %330 = load i32, ptr %11, align 4
  %331 = load i32, ptr %12, align 4
  %332 = load i32, ptr %13, align 4
  %333 = xor i32 %331, %332
  %334 = and i32 %330, %333
  %335 = xor i32 %329, %334
  %336 = load ptr, ptr %8, align 8
  %337 = load i32, ptr %336, align 4
  %338 = call i32 @__uint32_identity(i32 noundef %337)
  %339 = load ptr, ptr %16, align 8
  %340 = getelementptr inbounds i32, ptr %339, i32 1
  store ptr %340, ptr %16, align 8
  store i32 %338, ptr %339, align 4
  %341 = add i32 %335, %338
  %342 = add i32 %341, -1958414417
  %343 = load i32, ptr %14, align 4
  %344 = add i32 %343, %342
  store i32 %344, ptr %14, align 4
  %345 = load ptr, ptr %8, align 8
  %346 = getelementptr inbounds i32, ptr %345, i32 1
  store ptr %346, ptr %8, align 8
  %347 = load i32, ptr %14, align 4
  %348 = shl i32 %347, 12
  %349 = load i32, ptr %14, align 4
  %350 = lshr i32 %349, 20
  %351 = or i32 %348, %350
  store i32 %351, ptr %14, align 4
  %352 = load i32, ptr %11, align 4
  %353 = load i32, ptr %14, align 4
  %354 = add i32 %353, %352
  store i32 %354, ptr %14, align 4
  br label %355

355:                                              ; preds = %328
  br label %356

356:                                              ; preds = %355
  %357 = load i32, ptr %12, align 4
  %358 = load i32, ptr %14, align 4
  %359 = load i32, ptr %11, align 4
  %360 = load i32, ptr %12, align 4
  %361 = xor i32 %359, %360
  %362 = and i32 %358, %361
  %363 = xor i32 %357, %362
  %364 = load ptr, ptr %8, align 8
  %365 = load i32, ptr %364, align 4
  %366 = call i32 @__uint32_identity(i32 noundef %365)
  %367 = load ptr, ptr %16, align 8
  %368 = getelementptr inbounds i32, ptr %367, i32 1
  store ptr %368, ptr %16, align 8
  store i32 %366, ptr %367, align 4
  %369 = add i32 %363, %366
  %370 = add i32 %369, -42063
  %371 = load i32, ptr %13, align 4
  %372 = add i32 %371, %370
  store i32 %372, ptr %13, align 4
  %373 = load ptr, ptr %8, align 8
  %374 = getelementptr inbounds i32, ptr %373, i32 1
  store ptr %374, ptr %8, align 8
  %375 = load i32, ptr %13, align 4
  %376 = shl i32 %375, 17
  %377 = load i32, ptr %13, align 4
  %378 = lshr i32 %377, 15
  %379 = or i32 %376, %378
  store i32 %379, ptr %13, align 4
  %380 = load i32, ptr %14, align 4
  %381 = load i32, ptr %13, align 4
  %382 = add i32 %381, %380
  store i32 %382, ptr %13, align 4
  br label %383

383:                                              ; preds = %356
  br label %384

384:                                              ; preds = %383
  %385 = load i32, ptr %11, align 4
  %386 = load i32, ptr %13, align 4
  %387 = load i32, ptr %14, align 4
  %388 = load i32, ptr %11, align 4
  %389 = xor i32 %387, %388
  %390 = and i32 %386, %389
  %391 = xor i32 %385, %390
  %392 = load ptr, ptr %8, align 8
  %393 = load i32, ptr %392, align 4
  %394 = call i32 @__uint32_identity(i32 noundef %393)
  %395 = load ptr, ptr %16, align 8
  %396 = getelementptr inbounds i32, ptr %395, i32 1
  store ptr %396, ptr %16, align 8
  store i32 %394, ptr %395, align 4
  %397 = add i32 %391, %394
  %398 = add i32 %397, -1990404162
  %399 = load i32, ptr %12, align 4
  %400 = add i32 %399, %398
  store i32 %400, ptr %12, align 4
  %401 = load ptr, ptr %8, align 8
  %402 = getelementptr inbounds i32, ptr %401, i32 1
  store ptr %402, ptr %8, align 8
  %403 = load i32, ptr %12, align 4
  %404 = shl i32 %403, 22
  %405 = load i32, ptr %12, align 4
  %406 = lshr i32 %405, 10
  %407 = or i32 %404, %406
  store i32 %407, ptr %12, align 4
  %408 = load i32, ptr %13, align 4
  %409 = load i32, ptr %12, align 4
  %410 = add i32 %409, %408
  store i32 %410, ptr %12, align 4
  br label %411

411:                                              ; preds = %384
  br label %412

412:                                              ; preds = %411
  %413 = load i32, ptr %14, align 4
  %414 = load i32, ptr %12, align 4
  %415 = load i32, ptr %13, align 4
  %416 = load i32, ptr %14, align 4
  %417 = xor i32 %415, %416
  %418 = and i32 %414, %417
  %419 = xor i32 %413, %418
  %420 = load ptr, ptr %8, align 8
  %421 = load i32, ptr %420, align 4
  %422 = call i32 @__uint32_identity(i32 noundef %421)
  %423 = load ptr, ptr %16, align 8
  %424 = getelementptr inbounds i32, ptr %423, i32 1
  store ptr %424, ptr %16, align 8
  store i32 %422, ptr %423, align 4
  %425 = add i32 %419, %422
  %426 = add i32 %425, 1804603682
  %427 = load i32, ptr %11, align 4
  %428 = add i32 %427, %426
  store i32 %428, ptr %11, align 4
  %429 = load ptr, ptr %8, align 8
  %430 = getelementptr inbounds i32, ptr %429, i32 1
  store ptr %430, ptr %8, align 8
  %431 = load i32, ptr %11, align 4
  %432 = shl i32 %431, 7
  %433 = load i32, ptr %11, align 4
  %434 = lshr i32 %433, 25
  %435 = or i32 %432, %434
  store i32 %435, ptr %11, align 4
  %436 = load i32, ptr %12, align 4
  %437 = load i32, ptr %11, align 4
  %438 = add i32 %437, %436
  store i32 %438, ptr %11, align 4
  br label %439

439:                                              ; preds = %412
  br label %440

440:                                              ; preds = %439
  %441 = load i32, ptr %13, align 4
  %442 = load i32, ptr %11, align 4
  %443 = load i32, ptr %12, align 4
  %444 = load i32, ptr %13, align 4
  %445 = xor i32 %443, %444
  %446 = and i32 %442, %445
  %447 = xor i32 %441, %446
  %448 = load ptr, ptr %8, align 8
  %449 = load i32, ptr %448, align 4
  %450 = call i32 @__uint32_identity(i32 noundef %449)
  %451 = load ptr, ptr %16, align 8
  %452 = getelementptr inbounds i32, ptr %451, i32 1
  store ptr %452, ptr %16, align 8
  store i32 %450, ptr %451, align 4
  %453 = add i32 %447, %450
  %454 = add i32 %453, -40341101
  %455 = load i32, ptr %14, align 4
  %456 = add i32 %455, %454
  store i32 %456, ptr %14, align 4
  %457 = load ptr, ptr %8, align 8
  %458 = getelementptr inbounds i32, ptr %457, i32 1
  store ptr %458, ptr %8, align 8
  %459 = load i32, ptr %14, align 4
  %460 = shl i32 %459, 12
  %461 = load i32, ptr %14, align 4
  %462 = lshr i32 %461, 20
  %463 = or i32 %460, %462
  store i32 %463, ptr %14, align 4
  %464 = load i32, ptr %11, align 4
  %465 = load i32, ptr %14, align 4
  %466 = add i32 %465, %464
  store i32 %466, ptr %14, align 4
  br label %467

467:                                              ; preds = %440
  br label %468

468:                                              ; preds = %467
  %469 = load i32, ptr %12, align 4
  %470 = load i32, ptr %14, align 4
  %471 = load i32, ptr %11, align 4
  %472 = load i32, ptr %12, align 4
  %473 = xor i32 %471, %472
  %474 = and i32 %470, %473
  %475 = xor i32 %469, %474
  %476 = load ptr, ptr %8, align 8
  %477 = load i32, ptr %476, align 4
  %478 = call i32 @__uint32_identity(i32 noundef %477)
  %479 = load ptr, ptr %16, align 8
  %480 = getelementptr inbounds i32, ptr %479, i32 1
  store ptr %480, ptr %16, align 8
  store i32 %478, ptr %479, align 4
  %481 = add i32 %475, %478
  %482 = add i32 %481, -1502002290
  %483 = load i32, ptr %13, align 4
  %484 = add i32 %483, %482
  store i32 %484, ptr %13, align 4
  %485 = load ptr, ptr %8, align 8
  %486 = getelementptr inbounds i32, ptr %485, i32 1
  store ptr %486, ptr %8, align 8
  %487 = load i32, ptr %13, align 4
  %488 = shl i32 %487, 17
  %489 = load i32, ptr %13, align 4
  %490 = lshr i32 %489, 15
  %491 = or i32 %488, %490
  store i32 %491, ptr %13, align 4
  %492 = load i32, ptr %14, align 4
  %493 = load i32, ptr %13, align 4
  %494 = add i32 %493, %492
  store i32 %494, ptr %13, align 4
  br label %495

495:                                              ; preds = %468
  br label %496

496:                                              ; preds = %495
  %497 = load i32, ptr %11, align 4
  %498 = load i32, ptr %13, align 4
  %499 = load i32, ptr %14, align 4
  %500 = load i32, ptr %11, align 4
  %501 = xor i32 %499, %500
  %502 = and i32 %498, %501
  %503 = xor i32 %497, %502
  %504 = load ptr, ptr %8, align 8
  %505 = load i32, ptr %504, align 4
  %506 = call i32 @__uint32_identity(i32 noundef %505)
  %507 = load ptr, ptr %16, align 8
  %508 = getelementptr inbounds i32, ptr %507, i32 1
  store ptr %508, ptr %16, align 8
  store i32 %506, ptr %507, align 4
  %509 = add i32 %503, %506
  %510 = add i32 %509, 1236535329
  %511 = load i32, ptr %12, align 4
  %512 = add i32 %511, %510
  store i32 %512, ptr %12, align 4
  %513 = load ptr, ptr %8, align 8
  %514 = getelementptr inbounds i32, ptr %513, i32 1
  store ptr %514, ptr %8, align 8
  %515 = load i32, ptr %12, align 4
  %516 = shl i32 %515, 22
  %517 = load i32, ptr %12, align 4
  %518 = lshr i32 %517, 10
  %519 = or i32 %516, %518
  store i32 %519, ptr %12, align 4
  %520 = load i32, ptr %13, align 4
  %521 = load i32, ptr %12, align 4
  %522 = add i32 %521, %520
  store i32 %522, ptr %12, align 4
  br label %523

523:                                              ; preds = %496
  br label %524

524:                                              ; preds = %523
  %525 = load i32, ptr %13, align 4
  %526 = load i32, ptr %14, align 4
  %527 = load i32, ptr %12, align 4
  %528 = load i32, ptr %13, align 4
  %529 = xor i32 %527, %528
  %530 = and i32 %526, %529
  %531 = xor i32 %525, %530
  %532 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %533 = load i32, ptr %532, align 4
  %534 = add i32 %531, %533
  %535 = add i32 %534, -165796510
  %536 = load i32, ptr %11, align 4
  %537 = add i32 %536, %535
  store i32 %537, ptr %11, align 4
  %538 = load i32, ptr %11, align 4
  %539 = shl i32 %538, 5
  %540 = load i32, ptr %11, align 4
  %541 = lshr i32 %540, 27
  %542 = or i32 %539, %541
  store i32 %542, ptr %11, align 4
  %543 = load i32, ptr %12, align 4
  %544 = load i32, ptr %11, align 4
  %545 = add i32 %544, %543
  store i32 %545, ptr %11, align 4
  br label %546

546:                                              ; preds = %524
  br label %547

547:                                              ; preds = %546
  %548 = load i32, ptr %12, align 4
  %549 = load i32, ptr %13, align 4
  %550 = load i32, ptr %11, align 4
  %551 = load i32, ptr %12, align 4
  %552 = xor i32 %550, %551
  %553 = and i32 %549, %552
  %554 = xor i32 %548, %553
  %555 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 6
  %556 = load i32, ptr %555, align 8
  %557 = add i32 %554, %556
  %558 = add i32 %557, -1069501632
  %559 = load i32, ptr %14, align 4
  %560 = add i32 %559, %558
  store i32 %560, ptr %14, align 4
  %561 = load i32, ptr %14, align 4
  %562 = shl i32 %561, 9
  %563 = load i32, ptr %14, align 4
  %564 = lshr i32 %563, 23
  %565 = or i32 %562, %564
  store i32 %565, ptr %14, align 4
  %566 = load i32, ptr %11, align 4
  %567 = load i32, ptr %14, align 4
  %568 = add i32 %567, %566
  store i32 %568, ptr %14, align 4
  br label %569

569:                                              ; preds = %547
  br label %570

570:                                              ; preds = %569
  %571 = load i32, ptr %11, align 4
  %572 = load i32, ptr %12, align 4
  %573 = load i32, ptr %14, align 4
  %574 = load i32, ptr %11, align 4
  %575 = xor i32 %573, %574
  %576 = and i32 %572, %575
  %577 = xor i32 %571, %576
  %578 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 11
  %579 = load i32, ptr %578, align 4
  %580 = add i32 %577, %579
  %581 = add i32 %580, 643717713
  %582 = load i32, ptr %13, align 4
  %583 = add i32 %582, %581
  store i32 %583, ptr %13, align 4
  %584 = load i32, ptr %13, align 4
  %585 = shl i32 %584, 14
  %586 = load i32, ptr %13, align 4
  %587 = lshr i32 %586, 18
  %588 = or i32 %585, %587
  store i32 %588, ptr %13, align 4
  %589 = load i32, ptr %14, align 4
  %590 = load i32, ptr %13, align 4
  %591 = add i32 %590, %589
  store i32 %591, ptr %13, align 4
  br label %592

592:                                              ; preds = %570
  br label %593

593:                                              ; preds = %592
  %594 = load i32, ptr %14, align 4
  %595 = load i32, ptr %11, align 4
  %596 = load i32, ptr %13, align 4
  %597 = load i32, ptr %14, align 4
  %598 = xor i32 %596, %597
  %599 = and i32 %595, %598
  %600 = xor i32 %594, %599
  %601 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 0
  %602 = load i32, ptr %601, align 16
  %603 = add i32 %600, %602
  %604 = add i32 %603, -373897302
  %605 = load i32, ptr %12, align 4
  %606 = add i32 %605, %604
  store i32 %606, ptr %12, align 4
  %607 = load i32, ptr %12, align 4
  %608 = shl i32 %607, 20
  %609 = load i32, ptr %12, align 4
  %610 = lshr i32 %609, 12
  %611 = or i32 %608, %610
  store i32 %611, ptr %12, align 4
  %612 = load i32, ptr %13, align 4
  %613 = load i32, ptr %12, align 4
  %614 = add i32 %613, %612
  store i32 %614, ptr %12, align 4
  br label %615

615:                                              ; preds = %593
  br label %616

616:                                              ; preds = %615
  %617 = load i32, ptr %13, align 4
  %618 = load i32, ptr %14, align 4
  %619 = load i32, ptr %12, align 4
  %620 = load i32, ptr %13, align 4
  %621 = xor i32 %619, %620
  %622 = and i32 %618, %621
  %623 = xor i32 %617, %622
  %624 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 5
  %625 = load i32, ptr %624, align 4
  %626 = add i32 %623, %625
  %627 = add i32 %626, -701558691
  %628 = load i32, ptr %11, align 4
  %629 = add i32 %628, %627
  store i32 %629, ptr %11, align 4
  %630 = load i32, ptr %11, align 4
  %631 = shl i32 %630, 5
  %632 = load i32, ptr %11, align 4
  %633 = lshr i32 %632, 27
  %634 = or i32 %631, %633
  store i32 %634, ptr %11, align 4
  %635 = load i32, ptr %12, align 4
  %636 = load i32, ptr %11, align 4
  %637 = add i32 %636, %635
  store i32 %637, ptr %11, align 4
  br label %638

638:                                              ; preds = %616
  br label %639

639:                                              ; preds = %638
  %640 = load i32, ptr %12, align 4
  %641 = load i32, ptr %13, align 4
  %642 = load i32, ptr %11, align 4
  %643 = load i32, ptr %12, align 4
  %644 = xor i32 %642, %643
  %645 = and i32 %641, %644
  %646 = xor i32 %640, %645
  %647 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 10
  %648 = load i32, ptr %647, align 8
  %649 = add i32 %646, %648
  %650 = add i32 %649, 38016083
  %651 = load i32, ptr %14, align 4
  %652 = add i32 %651, %650
  store i32 %652, ptr %14, align 4
  %653 = load i32, ptr %14, align 4
  %654 = shl i32 %653, 9
  %655 = load i32, ptr %14, align 4
  %656 = lshr i32 %655, 23
  %657 = or i32 %654, %656
  store i32 %657, ptr %14, align 4
  %658 = load i32, ptr %11, align 4
  %659 = load i32, ptr %14, align 4
  %660 = add i32 %659, %658
  store i32 %660, ptr %14, align 4
  br label %661

661:                                              ; preds = %639
  br label %662

662:                                              ; preds = %661
  %663 = load i32, ptr %11, align 4
  %664 = load i32, ptr %12, align 4
  %665 = load i32, ptr %14, align 4
  %666 = load i32, ptr %11, align 4
  %667 = xor i32 %665, %666
  %668 = and i32 %664, %667
  %669 = xor i32 %663, %668
  %670 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 15
  %671 = load i32, ptr %670, align 4
  %672 = add i32 %669, %671
  %673 = add i32 %672, -660478335
  %674 = load i32, ptr %13, align 4
  %675 = add i32 %674, %673
  store i32 %675, ptr %13, align 4
  %676 = load i32, ptr %13, align 4
  %677 = shl i32 %676, 14
  %678 = load i32, ptr %13, align 4
  %679 = lshr i32 %678, 18
  %680 = or i32 %677, %679
  store i32 %680, ptr %13, align 4
  %681 = load i32, ptr %14, align 4
  %682 = load i32, ptr %13, align 4
  %683 = add i32 %682, %681
  store i32 %683, ptr %13, align 4
  br label %684

684:                                              ; preds = %662
  br label %685

685:                                              ; preds = %684
  %686 = load i32, ptr %14, align 4
  %687 = load i32, ptr %11, align 4
  %688 = load i32, ptr %13, align 4
  %689 = load i32, ptr %14, align 4
  %690 = xor i32 %688, %689
  %691 = and i32 %687, %690
  %692 = xor i32 %686, %691
  %693 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 4
  %694 = load i32, ptr %693, align 16
  %695 = add i32 %692, %694
  %696 = add i32 %695, -405537848
  %697 = load i32, ptr %12, align 4
  %698 = add i32 %697, %696
  store i32 %698, ptr %12, align 4
  %699 = load i32, ptr %12, align 4
  %700 = shl i32 %699, 20
  %701 = load i32, ptr %12, align 4
  %702 = lshr i32 %701, 12
  %703 = or i32 %700, %702
  store i32 %703, ptr %12, align 4
  %704 = load i32, ptr %13, align 4
  %705 = load i32, ptr %12, align 4
  %706 = add i32 %705, %704
  store i32 %706, ptr %12, align 4
  br label %707

707:                                              ; preds = %685
  br label %708

708:                                              ; preds = %707
  %709 = load i32, ptr %13, align 4
  %710 = load i32, ptr %14, align 4
  %711 = load i32, ptr %12, align 4
  %712 = load i32, ptr %13, align 4
  %713 = xor i32 %711, %712
  %714 = and i32 %710, %713
  %715 = xor i32 %709, %714
  %716 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 9
  %717 = load i32, ptr %716, align 4
  %718 = add i32 %715, %717
  %719 = add i32 %718, 568446438
  %720 = load i32, ptr %11, align 4
  %721 = add i32 %720, %719
  store i32 %721, ptr %11, align 4
  %722 = load i32, ptr %11, align 4
  %723 = shl i32 %722, 5
  %724 = load i32, ptr %11, align 4
  %725 = lshr i32 %724, 27
  %726 = or i32 %723, %725
  store i32 %726, ptr %11, align 4
  %727 = load i32, ptr %12, align 4
  %728 = load i32, ptr %11, align 4
  %729 = add i32 %728, %727
  store i32 %729, ptr %11, align 4
  br label %730

730:                                              ; preds = %708
  br label %731

731:                                              ; preds = %730
  %732 = load i32, ptr %12, align 4
  %733 = load i32, ptr %13, align 4
  %734 = load i32, ptr %11, align 4
  %735 = load i32, ptr %12, align 4
  %736 = xor i32 %734, %735
  %737 = and i32 %733, %736
  %738 = xor i32 %732, %737
  %739 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 14
  %740 = load i32, ptr %739, align 8
  %741 = add i32 %738, %740
  %742 = add i32 %741, -1019803690
  %743 = load i32, ptr %14, align 4
  %744 = add i32 %743, %742
  store i32 %744, ptr %14, align 4
  %745 = load i32, ptr %14, align 4
  %746 = shl i32 %745, 9
  %747 = load i32, ptr %14, align 4
  %748 = lshr i32 %747, 23
  %749 = or i32 %746, %748
  store i32 %749, ptr %14, align 4
  %750 = load i32, ptr %11, align 4
  %751 = load i32, ptr %14, align 4
  %752 = add i32 %751, %750
  store i32 %752, ptr %14, align 4
  br label %753

753:                                              ; preds = %731
  br label %754

754:                                              ; preds = %753
  %755 = load i32, ptr %11, align 4
  %756 = load i32, ptr %12, align 4
  %757 = load i32, ptr %14, align 4
  %758 = load i32, ptr %11, align 4
  %759 = xor i32 %757, %758
  %760 = and i32 %756, %759
  %761 = xor i32 %755, %760
  %762 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 3
  %763 = load i32, ptr %762, align 4
  %764 = add i32 %761, %763
  %765 = add i32 %764, -187363961
  %766 = load i32, ptr %13, align 4
  %767 = add i32 %766, %765
  store i32 %767, ptr %13, align 4
  %768 = load i32, ptr %13, align 4
  %769 = shl i32 %768, 14
  %770 = load i32, ptr %13, align 4
  %771 = lshr i32 %770, 18
  %772 = or i32 %769, %771
  store i32 %772, ptr %13, align 4
  %773 = load i32, ptr %14, align 4
  %774 = load i32, ptr %13, align 4
  %775 = add i32 %774, %773
  store i32 %775, ptr %13, align 4
  br label %776

776:                                              ; preds = %754
  br label %777

777:                                              ; preds = %776
  %778 = load i32, ptr %14, align 4
  %779 = load i32, ptr %11, align 4
  %780 = load i32, ptr %13, align 4
  %781 = load i32, ptr %14, align 4
  %782 = xor i32 %780, %781
  %783 = and i32 %779, %782
  %784 = xor i32 %778, %783
  %785 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 8
  %786 = load i32, ptr %785, align 16
  %787 = add i32 %784, %786
  %788 = add i32 %787, 1163531501
  %789 = load i32, ptr %12, align 4
  %790 = add i32 %789, %788
  store i32 %790, ptr %12, align 4
  %791 = load i32, ptr %12, align 4
  %792 = shl i32 %791, 20
  %793 = load i32, ptr %12, align 4
  %794 = lshr i32 %793, 12
  %795 = or i32 %792, %794
  store i32 %795, ptr %12, align 4
  %796 = load i32, ptr %13, align 4
  %797 = load i32, ptr %12, align 4
  %798 = add i32 %797, %796
  store i32 %798, ptr %12, align 4
  br label %799

799:                                              ; preds = %777
  br label %800

800:                                              ; preds = %799
  %801 = load i32, ptr %13, align 4
  %802 = load i32, ptr %14, align 4
  %803 = load i32, ptr %12, align 4
  %804 = load i32, ptr %13, align 4
  %805 = xor i32 %803, %804
  %806 = and i32 %802, %805
  %807 = xor i32 %801, %806
  %808 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 13
  %809 = load i32, ptr %808, align 4
  %810 = add i32 %807, %809
  %811 = add i32 %810, -1444681467
  %812 = load i32, ptr %11, align 4
  %813 = add i32 %812, %811
  store i32 %813, ptr %11, align 4
  %814 = load i32, ptr %11, align 4
  %815 = shl i32 %814, 5
  %816 = load i32, ptr %11, align 4
  %817 = lshr i32 %816, 27
  %818 = or i32 %815, %817
  store i32 %818, ptr %11, align 4
  %819 = load i32, ptr %12, align 4
  %820 = load i32, ptr %11, align 4
  %821 = add i32 %820, %819
  store i32 %821, ptr %11, align 4
  br label %822

822:                                              ; preds = %800
  br label %823

823:                                              ; preds = %822
  %824 = load i32, ptr %12, align 4
  %825 = load i32, ptr %13, align 4
  %826 = load i32, ptr %11, align 4
  %827 = load i32, ptr %12, align 4
  %828 = xor i32 %826, %827
  %829 = and i32 %825, %828
  %830 = xor i32 %824, %829
  %831 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %832 = load i32, ptr %831, align 8
  %833 = add i32 %830, %832
  %834 = add i32 %833, -51403784
  %835 = load i32, ptr %14, align 4
  %836 = add i32 %835, %834
  store i32 %836, ptr %14, align 4
  %837 = load i32, ptr %14, align 4
  %838 = shl i32 %837, 9
  %839 = load i32, ptr %14, align 4
  %840 = lshr i32 %839, 23
  %841 = or i32 %838, %840
  store i32 %841, ptr %14, align 4
  %842 = load i32, ptr %11, align 4
  %843 = load i32, ptr %14, align 4
  %844 = add i32 %843, %842
  store i32 %844, ptr %14, align 4
  br label %845

845:                                              ; preds = %823
  br label %846

846:                                              ; preds = %845
  %847 = load i32, ptr %11, align 4
  %848 = load i32, ptr %12, align 4
  %849 = load i32, ptr %14, align 4
  %850 = load i32, ptr %11, align 4
  %851 = xor i32 %849, %850
  %852 = and i32 %848, %851
  %853 = xor i32 %847, %852
  %854 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 7
  %855 = load i32, ptr %854, align 4
  %856 = add i32 %853, %855
  %857 = add i32 %856, 1735328473
  %858 = load i32, ptr %13, align 4
  %859 = add i32 %858, %857
  store i32 %859, ptr %13, align 4
  %860 = load i32, ptr %13, align 4
  %861 = shl i32 %860, 14
  %862 = load i32, ptr %13, align 4
  %863 = lshr i32 %862, 18
  %864 = or i32 %861, %863
  store i32 %864, ptr %13, align 4
  %865 = load i32, ptr %14, align 4
  %866 = load i32, ptr %13, align 4
  %867 = add i32 %866, %865
  store i32 %867, ptr %13, align 4
  br label %868

868:                                              ; preds = %846
  br label %869

869:                                              ; preds = %868
  %870 = load i32, ptr %14, align 4
  %871 = load i32, ptr %11, align 4
  %872 = load i32, ptr %13, align 4
  %873 = load i32, ptr %14, align 4
  %874 = xor i32 %872, %873
  %875 = and i32 %871, %874
  %876 = xor i32 %870, %875
  %877 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 12
  %878 = load i32, ptr %877, align 16
  %879 = add i32 %876, %878
  %880 = add i32 %879, -1926607734
  %881 = load i32, ptr %12, align 4
  %882 = add i32 %881, %880
  store i32 %882, ptr %12, align 4
  %883 = load i32, ptr %12, align 4
  %884 = shl i32 %883, 20
  %885 = load i32, ptr %12, align 4
  %886 = lshr i32 %885, 12
  %887 = or i32 %884, %886
  store i32 %887, ptr %12, align 4
  %888 = load i32, ptr %13, align 4
  %889 = load i32, ptr %12, align 4
  %890 = add i32 %889, %888
  store i32 %890, ptr %12, align 4
  br label %891

891:                                              ; preds = %869
  br label %892

892:                                              ; preds = %891
  %893 = load i32, ptr %12, align 4
  %894 = load i32, ptr %13, align 4
  %895 = xor i32 %893, %894
  %896 = load i32, ptr %14, align 4
  %897 = xor i32 %895, %896
  %898 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 5
  %899 = load i32, ptr %898, align 4
  %900 = add i32 %897, %899
  %901 = add i32 %900, -378558
  %902 = load i32, ptr %11, align 4
  %903 = add i32 %902, %901
  store i32 %903, ptr %11, align 4
  %904 = load i32, ptr %11, align 4
  %905 = shl i32 %904, 4
  %906 = load i32, ptr %11, align 4
  %907 = lshr i32 %906, 28
  %908 = or i32 %905, %907
  store i32 %908, ptr %11, align 4
  %909 = load i32, ptr %12, align 4
  %910 = load i32, ptr %11, align 4
  %911 = add i32 %910, %909
  store i32 %911, ptr %11, align 4
  br label %912

912:                                              ; preds = %892
  br label %913

913:                                              ; preds = %912
  %914 = load i32, ptr %11, align 4
  %915 = load i32, ptr %12, align 4
  %916 = xor i32 %914, %915
  %917 = load i32, ptr %13, align 4
  %918 = xor i32 %916, %917
  %919 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 8
  %920 = load i32, ptr %919, align 16
  %921 = add i32 %918, %920
  %922 = add i32 %921, -2022574463
  %923 = load i32, ptr %14, align 4
  %924 = add i32 %923, %922
  store i32 %924, ptr %14, align 4
  %925 = load i32, ptr %14, align 4
  %926 = shl i32 %925, 11
  %927 = load i32, ptr %14, align 4
  %928 = lshr i32 %927, 21
  %929 = or i32 %926, %928
  store i32 %929, ptr %14, align 4
  %930 = load i32, ptr %11, align 4
  %931 = load i32, ptr %14, align 4
  %932 = add i32 %931, %930
  store i32 %932, ptr %14, align 4
  br label %933

933:                                              ; preds = %913
  br label %934

934:                                              ; preds = %933
  %935 = load i32, ptr %14, align 4
  %936 = load i32, ptr %11, align 4
  %937 = xor i32 %935, %936
  %938 = load i32, ptr %12, align 4
  %939 = xor i32 %937, %938
  %940 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 11
  %941 = load i32, ptr %940, align 4
  %942 = add i32 %939, %941
  %943 = add i32 %942, 1839030562
  %944 = load i32, ptr %13, align 4
  %945 = add i32 %944, %943
  store i32 %945, ptr %13, align 4
  %946 = load i32, ptr %13, align 4
  %947 = shl i32 %946, 16
  %948 = load i32, ptr %13, align 4
  %949 = lshr i32 %948, 16
  %950 = or i32 %947, %949
  store i32 %950, ptr %13, align 4
  %951 = load i32, ptr %14, align 4
  %952 = load i32, ptr %13, align 4
  %953 = add i32 %952, %951
  store i32 %953, ptr %13, align 4
  br label %954

954:                                              ; preds = %934
  br label %955

955:                                              ; preds = %954
  %956 = load i32, ptr %13, align 4
  %957 = load i32, ptr %14, align 4
  %958 = xor i32 %956, %957
  %959 = load i32, ptr %11, align 4
  %960 = xor i32 %958, %959
  %961 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 14
  %962 = load i32, ptr %961, align 8
  %963 = add i32 %960, %962
  %964 = add i32 %963, -35309556
  %965 = load i32, ptr %12, align 4
  %966 = add i32 %965, %964
  store i32 %966, ptr %12, align 4
  %967 = load i32, ptr %12, align 4
  %968 = shl i32 %967, 23
  %969 = load i32, ptr %12, align 4
  %970 = lshr i32 %969, 9
  %971 = or i32 %968, %970
  store i32 %971, ptr %12, align 4
  %972 = load i32, ptr %13, align 4
  %973 = load i32, ptr %12, align 4
  %974 = add i32 %973, %972
  store i32 %974, ptr %12, align 4
  br label %975

975:                                              ; preds = %955
  br label %976

976:                                              ; preds = %975
  %977 = load i32, ptr %12, align 4
  %978 = load i32, ptr %13, align 4
  %979 = xor i32 %977, %978
  %980 = load i32, ptr %14, align 4
  %981 = xor i32 %979, %980
  %982 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %983 = load i32, ptr %982, align 4
  %984 = add i32 %981, %983
  %985 = add i32 %984, -1530992060
  %986 = load i32, ptr %11, align 4
  %987 = add i32 %986, %985
  store i32 %987, ptr %11, align 4
  %988 = load i32, ptr %11, align 4
  %989 = shl i32 %988, 4
  %990 = load i32, ptr %11, align 4
  %991 = lshr i32 %990, 28
  %992 = or i32 %989, %991
  store i32 %992, ptr %11, align 4
  %993 = load i32, ptr %12, align 4
  %994 = load i32, ptr %11, align 4
  %995 = add i32 %994, %993
  store i32 %995, ptr %11, align 4
  br label %996

996:                                              ; preds = %976
  br label %997

997:                                              ; preds = %996
  %998 = load i32, ptr %11, align 4
  %999 = load i32, ptr %12, align 4
  %1000 = xor i32 %998, %999
  %1001 = load i32, ptr %13, align 4
  %1002 = xor i32 %1000, %1001
  %1003 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 4
  %1004 = load i32, ptr %1003, align 16
  %1005 = add i32 %1002, %1004
  %1006 = add i32 %1005, 1272893353
  %1007 = load i32, ptr %14, align 4
  %1008 = add i32 %1007, %1006
  store i32 %1008, ptr %14, align 4
  %1009 = load i32, ptr %14, align 4
  %1010 = shl i32 %1009, 11
  %1011 = load i32, ptr %14, align 4
  %1012 = lshr i32 %1011, 21
  %1013 = or i32 %1010, %1012
  store i32 %1013, ptr %14, align 4
  %1014 = load i32, ptr %11, align 4
  %1015 = load i32, ptr %14, align 4
  %1016 = add i32 %1015, %1014
  store i32 %1016, ptr %14, align 4
  br label %1017

1017:                                             ; preds = %997
  br label %1018

1018:                                             ; preds = %1017
  %1019 = load i32, ptr %14, align 4
  %1020 = load i32, ptr %11, align 4
  %1021 = xor i32 %1019, %1020
  %1022 = load i32, ptr %12, align 4
  %1023 = xor i32 %1021, %1022
  %1024 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 7
  %1025 = load i32, ptr %1024, align 4
  %1026 = add i32 %1023, %1025
  %1027 = add i32 %1026, -155497632
  %1028 = load i32, ptr %13, align 4
  %1029 = add i32 %1028, %1027
  store i32 %1029, ptr %13, align 4
  %1030 = load i32, ptr %13, align 4
  %1031 = shl i32 %1030, 16
  %1032 = load i32, ptr %13, align 4
  %1033 = lshr i32 %1032, 16
  %1034 = or i32 %1031, %1033
  store i32 %1034, ptr %13, align 4
  %1035 = load i32, ptr %14, align 4
  %1036 = load i32, ptr %13, align 4
  %1037 = add i32 %1036, %1035
  store i32 %1037, ptr %13, align 4
  br label %1038

1038:                                             ; preds = %1018
  br label %1039

1039:                                             ; preds = %1038
  %1040 = load i32, ptr %13, align 4
  %1041 = load i32, ptr %14, align 4
  %1042 = xor i32 %1040, %1041
  %1043 = load i32, ptr %11, align 4
  %1044 = xor i32 %1042, %1043
  %1045 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 10
  %1046 = load i32, ptr %1045, align 8
  %1047 = add i32 %1044, %1046
  %1048 = add i32 %1047, -1094730640
  %1049 = load i32, ptr %12, align 4
  %1050 = add i32 %1049, %1048
  store i32 %1050, ptr %12, align 4
  %1051 = load i32, ptr %12, align 4
  %1052 = shl i32 %1051, 23
  %1053 = load i32, ptr %12, align 4
  %1054 = lshr i32 %1053, 9
  %1055 = or i32 %1052, %1054
  store i32 %1055, ptr %12, align 4
  %1056 = load i32, ptr %13, align 4
  %1057 = load i32, ptr %12, align 4
  %1058 = add i32 %1057, %1056
  store i32 %1058, ptr %12, align 4
  br label %1059

1059:                                             ; preds = %1039
  br label %1060

1060:                                             ; preds = %1059
  %1061 = load i32, ptr %12, align 4
  %1062 = load i32, ptr %13, align 4
  %1063 = xor i32 %1061, %1062
  %1064 = load i32, ptr %14, align 4
  %1065 = xor i32 %1063, %1064
  %1066 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 13
  %1067 = load i32, ptr %1066, align 4
  %1068 = add i32 %1065, %1067
  %1069 = add i32 %1068, 681279174
  %1070 = load i32, ptr %11, align 4
  %1071 = add i32 %1070, %1069
  store i32 %1071, ptr %11, align 4
  %1072 = load i32, ptr %11, align 4
  %1073 = shl i32 %1072, 4
  %1074 = load i32, ptr %11, align 4
  %1075 = lshr i32 %1074, 28
  %1076 = or i32 %1073, %1075
  store i32 %1076, ptr %11, align 4
  %1077 = load i32, ptr %12, align 4
  %1078 = load i32, ptr %11, align 4
  %1079 = add i32 %1078, %1077
  store i32 %1079, ptr %11, align 4
  br label %1080

1080:                                             ; preds = %1060
  br label %1081

1081:                                             ; preds = %1080
  %1082 = load i32, ptr %11, align 4
  %1083 = load i32, ptr %12, align 4
  %1084 = xor i32 %1082, %1083
  %1085 = load i32, ptr %13, align 4
  %1086 = xor i32 %1084, %1085
  %1087 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 0
  %1088 = load i32, ptr %1087, align 16
  %1089 = add i32 %1086, %1088
  %1090 = add i32 %1089, -358537222
  %1091 = load i32, ptr %14, align 4
  %1092 = add i32 %1091, %1090
  store i32 %1092, ptr %14, align 4
  %1093 = load i32, ptr %14, align 4
  %1094 = shl i32 %1093, 11
  %1095 = load i32, ptr %14, align 4
  %1096 = lshr i32 %1095, 21
  %1097 = or i32 %1094, %1096
  store i32 %1097, ptr %14, align 4
  %1098 = load i32, ptr %11, align 4
  %1099 = load i32, ptr %14, align 4
  %1100 = add i32 %1099, %1098
  store i32 %1100, ptr %14, align 4
  br label %1101

1101:                                             ; preds = %1081
  br label %1102

1102:                                             ; preds = %1101
  %1103 = load i32, ptr %14, align 4
  %1104 = load i32, ptr %11, align 4
  %1105 = xor i32 %1103, %1104
  %1106 = load i32, ptr %12, align 4
  %1107 = xor i32 %1105, %1106
  %1108 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 3
  %1109 = load i32, ptr %1108, align 4
  %1110 = add i32 %1107, %1109
  %1111 = add i32 %1110, -722521979
  %1112 = load i32, ptr %13, align 4
  %1113 = add i32 %1112, %1111
  store i32 %1113, ptr %13, align 4
  %1114 = load i32, ptr %13, align 4
  %1115 = shl i32 %1114, 16
  %1116 = load i32, ptr %13, align 4
  %1117 = lshr i32 %1116, 16
  %1118 = or i32 %1115, %1117
  store i32 %1118, ptr %13, align 4
  %1119 = load i32, ptr %14, align 4
  %1120 = load i32, ptr %13, align 4
  %1121 = add i32 %1120, %1119
  store i32 %1121, ptr %13, align 4
  br label %1122

1122:                                             ; preds = %1102
  br label %1123

1123:                                             ; preds = %1122
  %1124 = load i32, ptr %13, align 4
  %1125 = load i32, ptr %14, align 4
  %1126 = xor i32 %1124, %1125
  %1127 = load i32, ptr %11, align 4
  %1128 = xor i32 %1126, %1127
  %1129 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 6
  %1130 = load i32, ptr %1129, align 8
  %1131 = add i32 %1128, %1130
  %1132 = add i32 %1131, 76029189
  %1133 = load i32, ptr %12, align 4
  %1134 = add i32 %1133, %1132
  store i32 %1134, ptr %12, align 4
  %1135 = load i32, ptr %12, align 4
  %1136 = shl i32 %1135, 23
  %1137 = load i32, ptr %12, align 4
  %1138 = lshr i32 %1137, 9
  %1139 = or i32 %1136, %1138
  store i32 %1139, ptr %12, align 4
  %1140 = load i32, ptr %13, align 4
  %1141 = load i32, ptr %12, align 4
  %1142 = add i32 %1141, %1140
  store i32 %1142, ptr %12, align 4
  br label %1143

1143:                                             ; preds = %1123
  br label %1144

1144:                                             ; preds = %1143
  %1145 = load i32, ptr %12, align 4
  %1146 = load i32, ptr %13, align 4
  %1147 = xor i32 %1145, %1146
  %1148 = load i32, ptr %14, align 4
  %1149 = xor i32 %1147, %1148
  %1150 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 9
  %1151 = load i32, ptr %1150, align 4
  %1152 = add i32 %1149, %1151
  %1153 = add i32 %1152, -640364487
  %1154 = load i32, ptr %11, align 4
  %1155 = add i32 %1154, %1153
  store i32 %1155, ptr %11, align 4
  %1156 = load i32, ptr %11, align 4
  %1157 = shl i32 %1156, 4
  %1158 = load i32, ptr %11, align 4
  %1159 = lshr i32 %1158, 28
  %1160 = or i32 %1157, %1159
  store i32 %1160, ptr %11, align 4
  %1161 = load i32, ptr %12, align 4
  %1162 = load i32, ptr %11, align 4
  %1163 = add i32 %1162, %1161
  store i32 %1163, ptr %11, align 4
  br label %1164

1164:                                             ; preds = %1144
  br label %1165

1165:                                             ; preds = %1164
  %1166 = load i32, ptr %11, align 4
  %1167 = load i32, ptr %12, align 4
  %1168 = xor i32 %1166, %1167
  %1169 = load i32, ptr %13, align 4
  %1170 = xor i32 %1168, %1169
  %1171 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 12
  %1172 = load i32, ptr %1171, align 16
  %1173 = add i32 %1170, %1172
  %1174 = add i32 %1173, -421815835
  %1175 = load i32, ptr %14, align 4
  %1176 = add i32 %1175, %1174
  store i32 %1176, ptr %14, align 4
  %1177 = load i32, ptr %14, align 4
  %1178 = shl i32 %1177, 11
  %1179 = load i32, ptr %14, align 4
  %1180 = lshr i32 %1179, 21
  %1181 = or i32 %1178, %1180
  store i32 %1181, ptr %14, align 4
  %1182 = load i32, ptr %11, align 4
  %1183 = load i32, ptr %14, align 4
  %1184 = add i32 %1183, %1182
  store i32 %1184, ptr %14, align 4
  br label %1185

1185:                                             ; preds = %1165
  br label %1186

1186:                                             ; preds = %1185
  %1187 = load i32, ptr %14, align 4
  %1188 = load i32, ptr %11, align 4
  %1189 = xor i32 %1187, %1188
  %1190 = load i32, ptr %12, align 4
  %1191 = xor i32 %1189, %1190
  %1192 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 15
  %1193 = load i32, ptr %1192, align 4
  %1194 = add i32 %1191, %1193
  %1195 = add i32 %1194, 530742520
  %1196 = load i32, ptr %13, align 4
  %1197 = add i32 %1196, %1195
  store i32 %1197, ptr %13, align 4
  %1198 = load i32, ptr %13, align 4
  %1199 = shl i32 %1198, 16
  %1200 = load i32, ptr %13, align 4
  %1201 = lshr i32 %1200, 16
  %1202 = or i32 %1199, %1201
  store i32 %1202, ptr %13, align 4
  %1203 = load i32, ptr %14, align 4
  %1204 = load i32, ptr %13, align 4
  %1205 = add i32 %1204, %1203
  store i32 %1205, ptr %13, align 4
  br label %1206

1206:                                             ; preds = %1186
  br label %1207

1207:                                             ; preds = %1206
  %1208 = load i32, ptr %13, align 4
  %1209 = load i32, ptr %14, align 4
  %1210 = xor i32 %1208, %1209
  %1211 = load i32, ptr %11, align 4
  %1212 = xor i32 %1210, %1211
  %1213 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %1214 = load i32, ptr %1213, align 8
  %1215 = add i32 %1212, %1214
  %1216 = add i32 %1215, -995338651
  %1217 = load i32, ptr %12, align 4
  %1218 = add i32 %1217, %1216
  store i32 %1218, ptr %12, align 4
  %1219 = load i32, ptr %12, align 4
  %1220 = shl i32 %1219, 23
  %1221 = load i32, ptr %12, align 4
  %1222 = lshr i32 %1221, 9
  %1223 = or i32 %1220, %1222
  store i32 %1223, ptr %12, align 4
  %1224 = load i32, ptr %13, align 4
  %1225 = load i32, ptr %12, align 4
  %1226 = add i32 %1225, %1224
  store i32 %1226, ptr %12, align 4
  br label %1227

1227:                                             ; preds = %1207
  br label %1228

1228:                                             ; preds = %1227
  %1229 = load i32, ptr %13, align 4
  %1230 = load i32, ptr %12, align 4
  %1231 = load i32, ptr %14, align 4
  %1232 = xor i32 %1231, -1
  %1233 = or i32 %1230, %1232
  %1234 = xor i32 %1229, %1233
  %1235 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 0
  %1236 = load i32, ptr %1235, align 16
  %1237 = add i32 %1234, %1236
  %1238 = add i32 %1237, -198630844
  %1239 = load i32, ptr %11, align 4
  %1240 = add i32 %1239, %1238
  store i32 %1240, ptr %11, align 4
  %1241 = load i32, ptr %11, align 4
  %1242 = shl i32 %1241, 6
  %1243 = load i32, ptr %11, align 4
  %1244 = lshr i32 %1243, 26
  %1245 = or i32 %1242, %1244
  store i32 %1245, ptr %11, align 4
  %1246 = load i32, ptr %12, align 4
  %1247 = load i32, ptr %11, align 4
  %1248 = add i32 %1247, %1246
  store i32 %1248, ptr %11, align 4
  br label %1249

1249:                                             ; preds = %1228
  br label %1250

1250:                                             ; preds = %1249
  %1251 = load i32, ptr %12, align 4
  %1252 = load i32, ptr %11, align 4
  %1253 = load i32, ptr %13, align 4
  %1254 = xor i32 %1253, -1
  %1255 = or i32 %1252, %1254
  %1256 = xor i32 %1251, %1255
  %1257 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 7
  %1258 = load i32, ptr %1257, align 4
  %1259 = add i32 %1256, %1258
  %1260 = add i32 %1259, 1126891415
  %1261 = load i32, ptr %14, align 4
  %1262 = add i32 %1261, %1260
  store i32 %1262, ptr %14, align 4
  %1263 = load i32, ptr %14, align 4
  %1264 = shl i32 %1263, 10
  %1265 = load i32, ptr %14, align 4
  %1266 = lshr i32 %1265, 22
  %1267 = or i32 %1264, %1266
  store i32 %1267, ptr %14, align 4
  %1268 = load i32, ptr %11, align 4
  %1269 = load i32, ptr %14, align 4
  %1270 = add i32 %1269, %1268
  store i32 %1270, ptr %14, align 4
  br label %1271

1271:                                             ; preds = %1250
  br label %1272

1272:                                             ; preds = %1271
  %1273 = load i32, ptr %11, align 4
  %1274 = load i32, ptr %14, align 4
  %1275 = load i32, ptr %12, align 4
  %1276 = xor i32 %1275, -1
  %1277 = or i32 %1274, %1276
  %1278 = xor i32 %1273, %1277
  %1279 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 14
  %1280 = load i32, ptr %1279, align 8
  %1281 = add i32 %1278, %1280
  %1282 = add i32 %1281, -1416354905
  %1283 = load i32, ptr %13, align 4
  %1284 = add i32 %1283, %1282
  store i32 %1284, ptr %13, align 4
  %1285 = load i32, ptr %13, align 4
  %1286 = shl i32 %1285, 15
  %1287 = load i32, ptr %13, align 4
  %1288 = lshr i32 %1287, 17
  %1289 = or i32 %1286, %1288
  store i32 %1289, ptr %13, align 4
  %1290 = load i32, ptr %14, align 4
  %1291 = load i32, ptr %13, align 4
  %1292 = add i32 %1291, %1290
  store i32 %1292, ptr %13, align 4
  br label %1293

1293:                                             ; preds = %1272
  br label %1294

1294:                                             ; preds = %1293
  %1295 = load i32, ptr %14, align 4
  %1296 = load i32, ptr %13, align 4
  %1297 = load i32, ptr %11, align 4
  %1298 = xor i32 %1297, -1
  %1299 = or i32 %1296, %1298
  %1300 = xor i32 %1295, %1299
  %1301 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 5
  %1302 = load i32, ptr %1301, align 4
  %1303 = add i32 %1300, %1302
  %1304 = add i32 %1303, -57434055
  %1305 = load i32, ptr %12, align 4
  %1306 = add i32 %1305, %1304
  store i32 %1306, ptr %12, align 4
  %1307 = load i32, ptr %12, align 4
  %1308 = shl i32 %1307, 21
  %1309 = load i32, ptr %12, align 4
  %1310 = lshr i32 %1309, 11
  %1311 = or i32 %1308, %1310
  store i32 %1311, ptr %12, align 4
  %1312 = load i32, ptr %13, align 4
  %1313 = load i32, ptr %12, align 4
  %1314 = add i32 %1313, %1312
  store i32 %1314, ptr %12, align 4
  br label %1315

1315:                                             ; preds = %1294
  br label %1316

1316:                                             ; preds = %1315
  %1317 = load i32, ptr %13, align 4
  %1318 = load i32, ptr %12, align 4
  %1319 = load i32, ptr %14, align 4
  %1320 = xor i32 %1319, -1
  %1321 = or i32 %1318, %1320
  %1322 = xor i32 %1317, %1321
  %1323 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 12
  %1324 = load i32, ptr %1323, align 16
  %1325 = add i32 %1322, %1324
  %1326 = add i32 %1325, 1700485571
  %1327 = load i32, ptr %11, align 4
  %1328 = add i32 %1327, %1326
  store i32 %1328, ptr %11, align 4
  %1329 = load i32, ptr %11, align 4
  %1330 = shl i32 %1329, 6
  %1331 = load i32, ptr %11, align 4
  %1332 = lshr i32 %1331, 26
  %1333 = or i32 %1330, %1332
  store i32 %1333, ptr %11, align 4
  %1334 = load i32, ptr %12, align 4
  %1335 = load i32, ptr %11, align 4
  %1336 = add i32 %1335, %1334
  store i32 %1336, ptr %11, align 4
  br label %1337

1337:                                             ; preds = %1316
  br label %1338

1338:                                             ; preds = %1337
  %1339 = load i32, ptr %12, align 4
  %1340 = load i32, ptr %11, align 4
  %1341 = load i32, ptr %13, align 4
  %1342 = xor i32 %1341, -1
  %1343 = or i32 %1340, %1342
  %1344 = xor i32 %1339, %1343
  %1345 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 3
  %1346 = load i32, ptr %1345, align 4
  %1347 = add i32 %1344, %1346
  %1348 = add i32 %1347, -1894986606
  %1349 = load i32, ptr %14, align 4
  %1350 = add i32 %1349, %1348
  store i32 %1350, ptr %14, align 4
  %1351 = load i32, ptr %14, align 4
  %1352 = shl i32 %1351, 10
  %1353 = load i32, ptr %14, align 4
  %1354 = lshr i32 %1353, 22
  %1355 = or i32 %1352, %1354
  store i32 %1355, ptr %14, align 4
  %1356 = load i32, ptr %11, align 4
  %1357 = load i32, ptr %14, align 4
  %1358 = add i32 %1357, %1356
  store i32 %1358, ptr %14, align 4
  br label %1359

1359:                                             ; preds = %1338
  br label %1360

1360:                                             ; preds = %1359
  %1361 = load i32, ptr %11, align 4
  %1362 = load i32, ptr %14, align 4
  %1363 = load i32, ptr %12, align 4
  %1364 = xor i32 %1363, -1
  %1365 = or i32 %1362, %1364
  %1366 = xor i32 %1361, %1365
  %1367 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 10
  %1368 = load i32, ptr %1367, align 8
  %1369 = add i32 %1366, %1368
  %1370 = add i32 %1369, -1051523
  %1371 = load i32, ptr %13, align 4
  %1372 = add i32 %1371, %1370
  store i32 %1372, ptr %13, align 4
  %1373 = load i32, ptr %13, align 4
  %1374 = shl i32 %1373, 15
  %1375 = load i32, ptr %13, align 4
  %1376 = lshr i32 %1375, 17
  %1377 = or i32 %1374, %1376
  store i32 %1377, ptr %13, align 4
  %1378 = load i32, ptr %14, align 4
  %1379 = load i32, ptr %13, align 4
  %1380 = add i32 %1379, %1378
  store i32 %1380, ptr %13, align 4
  br label %1381

1381:                                             ; preds = %1360
  br label %1382

1382:                                             ; preds = %1381
  %1383 = load i32, ptr %14, align 4
  %1384 = load i32, ptr %13, align 4
  %1385 = load i32, ptr %11, align 4
  %1386 = xor i32 %1385, -1
  %1387 = or i32 %1384, %1386
  %1388 = xor i32 %1383, %1387
  %1389 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %1390 = load i32, ptr %1389, align 4
  %1391 = add i32 %1388, %1390
  %1392 = add i32 %1391, -2054922799
  %1393 = load i32, ptr %12, align 4
  %1394 = add i32 %1393, %1392
  store i32 %1394, ptr %12, align 4
  %1395 = load i32, ptr %12, align 4
  %1396 = shl i32 %1395, 21
  %1397 = load i32, ptr %12, align 4
  %1398 = lshr i32 %1397, 11
  %1399 = or i32 %1396, %1398
  store i32 %1399, ptr %12, align 4
  %1400 = load i32, ptr %13, align 4
  %1401 = load i32, ptr %12, align 4
  %1402 = add i32 %1401, %1400
  store i32 %1402, ptr %12, align 4
  br label %1403

1403:                                             ; preds = %1382
  br label %1404

1404:                                             ; preds = %1403
  %1405 = load i32, ptr %13, align 4
  %1406 = load i32, ptr %12, align 4
  %1407 = load i32, ptr %14, align 4
  %1408 = xor i32 %1407, -1
  %1409 = or i32 %1406, %1408
  %1410 = xor i32 %1405, %1409
  %1411 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 8
  %1412 = load i32, ptr %1411, align 16
  %1413 = add i32 %1410, %1412
  %1414 = add i32 %1413, 1873313359
  %1415 = load i32, ptr %11, align 4
  %1416 = add i32 %1415, %1414
  store i32 %1416, ptr %11, align 4
  %1417 = load i32, ptr %11, align 4
  %1418 = shl i32 %1417, 6
  %1419 = load i32, ptr %11, align 4
  %1420 = lshr i32 %1419, 26
  %1421 = or i32 %1418, %1420
  store i32 %1421, ptr %11, align 4
  %1422 = load i32, ptr %12, align 4
  %1423 = load i32, ptr %11, align 4
  %1424 = add i32 %1423, %1422
  store i32 %1424, ptr %11, align 4
  br label %1425

1425:                                             ; preds = %1404
  br label %1426

1426:                                             ; preds = %1425
  %1427 = load i32, ptr %12, align 4
  %1428 = load i32, ptr %11, align 4
  %1429 = load i32, ptr %13, align 4
  %1430 = xor i32 %1429, -1
  %1431 = or i32 %1428, %1430
  %1432 = xor i32 %1427, %1431
  %1433 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 15
  %1434 = load i32, ptr %1433, align 4
  %1435 = add i32 %1432, %1434
  %1436 = add i32 %1435, -30611744
  %1437 = load i32, ptr %14, align 4
  %1438 = add i32 %1437, %1436
  store i32 %1438, ptr %14, align 4
  %1439 = load i32, ptr %14, align 4
  %1440 = shl i32 %1439, 10
  %1441 = load i32, ptr %14, align 4
  %1442 = lshr i32 %1441, 22
  %1443 = or i32 %1440, %1442
  store i32 %1443, ptr %14, align 4
  %1444 = load i32, ptr %11, align 4
  %1445 = load i32, ptr %14, align 4
  %1446 = add i32 %1445, %1444
  store i32 %1446, ptr %14, align 4
  br label %1447

1447:                                             ; preds = %1426
  br label %1448

1448:                                             ; preds = %1447
  %1449 = load i32, ptr %11, align 4
  %1450 = load i32, ptr %14, align 4
  %1451 = load i32, ptr %12, align 4
  %1452 = xor i32 %1451, -1
  %1453 = or i32 %1450, %1452
  %1454 = xor i32 %1449, %1453
  %1455 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 6
  %1456 = load i32, ptr %1455, align 8
  %1457 = add i32 %1454, %1456
  %1458 = add i32 %1457, -1560198380
  %1459 = load i32, ptr %13, align 4
  %1460 = add i32 %1459, %1458
  store i32 %1460, ptr %13, align 4
  %1461 = load i32, ptr %13, align 4
  %1462 = shl i32 %1461, 15
  %1463 = load i32, ptr %13, align 4
  %1464 = lshr i32 %1463, 17
  %1465 = or i32 %1462, %1464
  store i32 %1465, ptr %13, align 4
  %1466 = load i32, ptr %14, align 4
  %1467 = load i32, ptr %13, align 4
  %1468 = add i32 %1467, %1466
  store i32 %1468, ptr %13, align 4
  br label %1469

1469:                                             ; preds = %1448
  br label %1470

1470:                                             ; preds = %1469
  %1471 = load i32, ptr %14, align 4
  %1472 = load i32, ptr %13, align 4
  %1473 = load i32, ptr %11, align 4
  %1474 = xor i32 %1473, -1
  %1475 = or i32 %1472, %1474
  %1476 = xor i32 %1471, %1475
  %1477 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 13
  %1478 = load i32, ptr %1477, align 4
  %1479 = add i32 %1476, %1478
  %1480 = add i32 %1479, 1309151649
  %1481 = load i32, ptr %12, align 4
  %1482 = add i32 %1481, %1480
  store i32 %1482, ptr %12, align 4
  %1483 = load i32, ptr %12, align 4
  %1484 = shl i32 %1483, 21
  %1485 = load i32, ptr %12, align 4
  %1486 = lshr i32 %1485, 11
  %1487 = or i32 %1484, %1486
  store i32 %1487, ptr %12, align 4
  %1488 = load i32, ptr %13, align 4
  %1489 = load i32, ptr %12, align 4
  %1490 = add i32 %1489, %1488
  store i32 %1490, ptr %12, align 4
  br label %1491

1491:                                             ; preds = %1470
  br label %1492

1492:                                             ; preds = %1491
  %1493 = load i32, ptr %13, align 4
  %1494 = load i32, ptr %12, align 4
  %1495 = load i32, ptr %14, align 4
  %1496 = xor i32 %1495, -1
  %1497 = or i32 %1494, %1496
  %1498 = xor i32 %1493, %1497
  %1499 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 4
  %1500 = load i32, ptr %1499, align 16
  %1501 = add i32 %1498, %1500
  %1502 = add i32 %1501, -145523070
  %1503 = load i32, ptr %11, align 4
  %1504 = add i32 %1503, %1502
  store i32 %1504, ptr %11, align 4
  %1505 = load i32, ptr %11, align 4
  %1506 = shl i32 %1505, 6
  %1507 = load i32, ptr %11, align 4
  %1508 = lshr i32 %1507, 26
  %1509 = or i32 %1506, %1508
  store i32 %1509, ptr %11, align 4
  %1510 = load i32, ptr %12, align 4
  %1511 = load i32, ptr %11, align 4
  %1512 = add i32 %1511, %1510
  store i32 %1512, ptr %11, align 4
  br label %1513

1513:                                             ; preds = %1492
  br label %1514

1514:                                             ; preds = %1513
  %1515 = load i32, ptr %12, align 4
  %1516 = load i32, ptr %11, align 4
  %1517 = load i32, ptr %13, align 4
  %1518 = xor i32 %1517, -1
  %1519 = or i32 %1516, %1518
  %1520 = xor i32 %1515, %1519
  %1521 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 11
  %1522 = load i32, ptr %1521, align 4
  %1523 = add i32 %1520, %1522
  %1524 = add i32 %1523, -1120210379
  %1525 = load i32, ptr %14, align 4
  %1526 = add i32 %1525, %1524
  store i32 %1526, ptr %14, align 4
  %1527 = load i32, ptr %14, align 4
  %1528 = shl i32 %1527, 10
  %1529 = load i32, ptr %14, align 4
  %1530 = lshr i32 %1529, 22
  %1531 = or i32 %1528, %1530
  store i32 %1531, ptr %14, align 4
  %1532 = load i32, ptr %11, align 4
  %1533 = load i32, ptr %14, align 4
  %1534 = add i32 %1533, %1532
  store i32 %1534, ptr %14, align 4
  br label %1535

1535:                                             ; preds = %1514
  br label %1536

1536:                                             ; preds = %1535
  %1537 = load i32, ptr %11, align 4
  %1538 = load i32, ptr %14, align 4
  %1539 = load i32, ptr %12, align 4
  %1540 = xor i32 %1539, -1
  %1541 = or i32 %1538, %1540
  %1542 = xor i32 %1537, %1541
  %1543 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %1544 = load i32, ptr %1543, align 8
  %1545 = add i32 %1542, %1544
  %1546 = add i32 %1545, 718787259
  %1547 = load i32, ptr %13, align 4
  %1548 = add i32 %1547, %1546
  store i32 %1548, ptr %13, align 4
  %1549 = load i32, ptr %13, align 4
  %1550 = shl i32 %1549, 15
  %1551 = load i32, ptr %13, align 4
  %1552 = lshr i32 %1551, 17
  %1553 = or i32 %1550, %1552
  store i32 %1553, ptr %13, align 4
  %1554 = load i32, ptr %14, align 4
  %1555 = load i32, ptr %13, align 4
  %1556 = add i32 %1555, %1554
  store i32 %1556, ptr %13, align 4
  br label %1557

1557:                                             ; preds = %1536
  br label %1558

1558:                                             ; preds = %1557
  %1559 = load i32, ptr %14, align 4
  %1560 = load i32, ptr %13, align 4
  %1561 = load i32, ptr %11, align 4
  %1562 = xor i32 %1561, -1
  %1563 = or i32 %1560, %1562
  %1564 = xor i32 %1559, %1563
  %1565 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 9
  %1566 = load i32, ptr %1565, align 4
  %1567 = add i32 %1564, %1566
  %1568 = add i32 %1567, -343485551
  %1569 = load i32, ptr %12, align 4
  %1570 = add i32 %1569, %1568
  store i32 %1570, ptr %12, align 4
  %1571 = load i32, ptr %12, align 4
  %1572 = shl i32 %1571, 21
  %1573 = load i32, ptr %12, align 4
  %1574 = lshr i32 %1573, 11
  %1575 = or i32 %1572, %1574
  store i32 %1575, ptr %12, align 4
  %1576 = load i32, ptr %13, align 4
  %1577 = load i32, ptr %12, align 4
  %1578 = add i32 %1577, %1576
  store i32 %1578, ptr %12, align 4
  br label %1579

1579:                                             ; preds = %1558
  %1580 = load i32, ptr %17, align 4
  %1581 = load i32, ptr %11, align 4
  %1582 = add i32 %1581, %1580
  store i32 %1582, ptr %11, align 4
  %1583 = load i32, ptr %18, align 4
  %1584 = load i32, ptr %12, align 4
  %1585 = add i32 %1584, %1583
  store i32 %1585, ptr %12, align 4
  %1586 = load i32, ptr %19, align 4
  %1587 = load i32, ptr %13, align 4
  %1588 = add i32 %1587, %1586
  store i32 %1588, ptr %13, align 4
  %1589 = load i32, ptr %20, align 4
  %1590 = load i32, ptr %14, align 4
  %1591 = add i32 %1590, %1589
  store i32 %1591, ptr %14, align 4
  br label %66, !llvm.loop !6

1592:                                             ; preds = %66
  %1593 = load i32, ptr %11, align 4
  %1594 = load ptr, ptr %6, align 8
  %1595 = getelementptr inbounds %struct.md5_ctx, ptr %1594, i32 0, i32 0
  store i32 %1593, ptr %1595, align 4
  %1596 = load i32, ptr %12, align 4
  %1597 = load ptr, ptr %6, align 8
  %1598 = getelementptr inbounds %struct.md5_ctx, ptr %1597, i32 0, i32 1
  store i32 %1596, ptr %1598, align 4
  %1599 = load i32, ptr %13, align 4
  %1600 = load ptr, ptr %6, align 8
  %1601 = getelementptr inbounds %struct.md5_ctx, ptr %1600, i32 0, i32 2
  store i32 %1599, ptr %1601, align 4
  %1602 = load i32, ptr %14, align 4
  %1603 = load ptr, ptr %6, align 8
  %1604 = getelementptr inbounds %struct.md5_ctx, ptr %1603, i32 0, i32 3
  store i32 %1602, ptr %1604, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md5_stream(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.md5_ctx, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %10 = call noalias ptr @malloc(i64 noundef 32840) #6
  store ptr %10, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  br label %62

14:                                               ; preds = %2
  call void @md5_init_ctx(ptr noundef %6) #5
  br label %15

15:                                               ; preds = %14, %48
  store i64 0, ptr %7, align 8
  br label %16

16:                                               ; preds = %15, %47
  %17 = load ptr, ptr %8, align 8
  %18 = load i64, ptr %7, align 8
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = load i64, ptr %7, align 8
  %21 = sub i64 32768, %20
  %22 = load ptr, ptr %4, align 8
  %23 = call i64 @fread(ptr noundef %19, i64 noundef 1, i64 noundef %21, ptr noundef %22)
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %9, align 8
  %25 = load i64, ptr %7, align 8
  %26 = add i64 %25, %24
  store i64 %26, ptr %7, align 8
  %27 = load i64, ptr %7, align 8
  %28 = icmp eq i64 %27, 32768
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %48

30:                                               ; preds = %16
  %31 = load i64, ptr %9, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8
  %35 = call i32 @ferror(ptr noundef %34) #5
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %39) #5
  store ptr null, ptr %8, align 8
  br label %40

40:                                               ; preds = %38
  store i32 1, ptr %3, align 4
  br label %62

41:                                               ; preds = %33
  br label %50

42:                                               ; preds = %30
  %43 = load ptr, ptr %4, align 8
  %44 = call i32 @feof(ptr noundef %43) #5
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %50

47:                                               ; preds = %42
  br label %16

48:                                               ; preds = %29
  %49 = load ptr, ptr %8, align 8
  call void @md5_process_block(ptr noundef %49, i64 noundef 32768, ptr noundef %6) #5
  br label %15

50:                                               ; preds = %46, %41
  %51 = load i64, ptr %7, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load ptr, ptr %8, align 8
  %55 = load i64, ptr %7, align 8
  call void @md5_process_bytes(ptr noundef %54, i64 noundef %55, ptr noundef %6) #5
  br label %56

56:                                               ; preds = %53, %50
  %57 = load ptr, ptr %5, align 8
  %58 = call ptr @md5_finish_ctx(ptr noundef %6, ptr noundef %57) #5
  br label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %60) #5
  store ptr null, ptr %8, align 8
  br label %61

61:                                               ; preds = %59
  store i32 0, ptr %3, align 4
  br label %62

62:                                               ; preds = %61, %40, %13
  %63 = load i32, ptr %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.md5_ctx, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  store i64 %18, ptr %7, align 8
  %19 = load i64, ptr %7, align 8
  %20 = sub i64 128, %19
  %21 = load i64, ptr %5, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, ptr %5, align 8
  br label %28

25:                                               ; preds = %14
  %26 = load i64, ptr %7, align 8
  %27 = sub i64 128, %26
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i64 [ %24, %23 ], [ %27, %25 ]
  store i64 %29, ptr %8, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds %struct.md5_ctx, ptr %30, i32 0, i32 6
  %32 = getelementptr inbounds [32 x i32], ptr %31, i64 0, i64 0
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = load ptr, ptr %4, align 8
  %36 = load i64, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %35, i64 %36, i1 false)
  %37 = load i64, ptr %8, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.md5_ctx, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = add i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, ptr %39, align 4
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds %struct.md5_ctx, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 64
  br i1 %47, label %48, label %77

48:                                               ; preds = %28
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.md5_ctx, ptr %49, i32 0, i32 6
  %51 = getelementptr inbounds [32 x i32], ptr %50, i64 0, i64 0
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.md5_ctx, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -64
  %56 = zext i32 %55 to i64
  %57 = load ptr, ptr %6, align 8
  call void @md5_process_block(ptr noundef %51, i64 noundef %56, ptr noundef %57) #5
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds %struct.md5_ctx, ptr %58, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 63
  store i32 %61, ptr %59, align 4
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds %struct.md5_ctx, ptr %62, i32 0, i32 6
  %64 = getelementptr inbounds [32 x i32], ptr %63, i64 0, i64 0
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds %struct.md5_ctx, ptr %65, i32 0, i32 6
  %67 = getelementptr inbounds [32 x i32], ptr %66, i64 0, i64 0
  %68 = load i64, ptr %7, align 8
  %69 = load i64, ptr %8, align 8
  %70 = add i64 %68, %69
  %71 = and i64 %70, -64
  %72 = getelementptr inbounds i8, ptr %67, i64 %71
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.md5_ctx, ptr %73, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = zext i32 %75 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %64, ptr align 1 %72, i64 %76, i1 false)
  br label %77

77:                                               ; preds = %48, %28
  %78 = load ptr, ptr %4, align 8
  %79 = load i64, ptr %8, align 8
  %80 = getelementptr inbounds i8, ptr %78, i64 %79
  store ptr %80, ptr %4, align 8
  %81 = load i64, ptr %8, align 8
  %82 = load i64, ptr %5, align 8
  %83 = sub i64 %82, %81
  store i64 %83, ptr %5, align 8
  br label %84

84:                                               ; preds = %77, %3
  %85 = load i64, ptr %5, align 8
  %86 = icmp uge i64 %85, 64
  br i1 %86, label %87, label %119

87:                                               ; preds = %84
  %88 = load ptr, ptr %4, align 8
  %89 = ptrtoint ptr %88 to i64
  %90 = urem i64 %89, 4
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %96, %92
  %94 = load i64, ptr %5, align 8
  %95 = icmp ugt i64 %94, 64
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load ptr, ptr %6, align 8
  %98 = getelementptr inbounds %struct.md5_ctx, ptr %97, i32 0, i32 6
  %99 = getelementptr inbounds [32 x i32], ptr %98, i64 0, i64 0
  %100 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %99, ptr align 1 %100, i64 64, i1 false)
  %101 = load ptr, ptr %6, align 8
  call void @md5_process_block(ptr noundef %99, i64 noundef 64, ptr noundef %101) #5
  %102 = load ptr, ptr %4, align 8
  %103 = getelementptr inbounds i8, ptr %102, i64 64
  store ptr %103, ptr %4, align 8
  %104 = load i64, ptr %5, align 8
  %105 = sub i64 %104, 64
  store i64 %105, ptr %5, align 8
  br label %93, !llvm.loop !8

106:                                              ; preds = %93
  br label %118

107:                                              ; preds = %87
  %108 = load ptr, ptr %4, align 8
  %109 = load i64, ptr %5, align 8
  %110 = and i64 %109, -64
  %111 = load ptr, ptr %6, align 8
  call void @md5_process_block(ptr noundef %108, i64 noundef %110, ptr noundef %111) #5
  %112 = load ptr, ptr %4, align 8
  %113 = load i64, ptr %5, align 8
  %114 = and i64 %113, -64
  %115 = getelementptr inbounds i8, ptr %112, i64 %114
  store ptr %115, ptr %4, align 8
  %116 = load i64, ptr %5, align 8
  %117 = and i64 %116, 63
  store i64 %117, ptr %5, align 8
  br label %118

118:                                              ; preds = %107, %106
  br label %119

119:                                              ; preds = %118, %84
  %120 = load i64, ptr %5, align 8
  %121 = icmp ugt i64 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %119
  %123 = load ptr, ptr %6, align 8
  %124 = getelementptr inbounds %struct.md5_ctx, ptr %123, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = zext i32 %125 to i64
  store i64 %126, ptr %9, align 8
  %127 = load ptr, ptr %6, align 8
  %128 = getelementptr inbounds %struct.md5_ctx, ptr %127, i32 0, i32 6
  %129 = getelementptr inbounds [32 x i32], ptr %128, i64 0, i64 0
  %130 = load i64, ptr %9, align 8
  %131 = getelementptr inbounds i8, ptr %129, i64 %130
  %132 = load ptr, ptr %4, align 8
  %133 = load i64, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %132, i64 %133, i1 false)
  %134 = load i64, ptr %5, align 8
  %135 = load i64, ptr %9, align 8
  %136 = add i64 %135, %134
  store i64 %136, ptr %9, align 8
  %137 = load i64, ptr %9, align 8
  %138 = icmp uge i64 %137, 64
  br i1 %138, label %139, label %153

139:                                              ; preds = %122
  %140 = load ptr, ptr %6, align 8
  %141 = getelementptr inbounds %struct.md5_ctx, ptr %140, i32 0, i32 6
  %142 = getelementptr inbounds [32 x i32], ptr %141, i64 0, i64 0
  %143 = load ptr, ptr %6, align 8
  call void @md5_process_block(ptr noundef %142, i64 noundef 64, ptr noundef %143) #5
  %144 = load i64, ptr %9, align 8
  %145 = sub i64 %144, 64
  store i64 %145, ptr %9, align 8
  %146 = load ptr, ptr %6, align 8
  %147 = getelementptr inbounds %struct.md5_ctx, ptr %146, i32 0, i32 6
  %148 = getelementptr inbounds [32 x i32], ptr %147, i64 0, i64 0
  %149 = load ptr, ptr %6, align 8
  %150 = getelementptr inbounds %struct.md5_ctx, ptr %149, i32 0, i32 6
  %151 = getelementptr inbounds [32 x i32], ptr %150, i64 0, i64 16
  %152 = load i64, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %148, ptr align 4 %151, i64 %152, i1 false)
  br label %153

153:                                              ; preds = %139, %122
  %154 = load i64, ptr %9, align 8
  %155 = trunc i64 %154 to i32
  %156 = load ptr, ptr %6, align 8
  %157 = getelementptr inbounds %struct.md5_ctx, ptr %156, i32 0, i32 5
  store i32 %155, ptr %157, align 4
  br label %158

158:                                              ; preds = %153, %119
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @md5_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.md5_ctx, align 4
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  call void @md5_init_ctx(ptr noundef %7) #5
  %8 = load ptr, ptr %4, align 8
  %9 = load i64, ptr %5, align 8
  call void @md5_process_bytes(ptr noundef %8, i64 noundef %9, ptr noundef %7) #5
  %10 = load ptr, ptr %6, align 8
  %11 = call ptr @md5_finish_ctx(ptr noundef %7, ptr noundef %10) #5
  ret ptr %11
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
