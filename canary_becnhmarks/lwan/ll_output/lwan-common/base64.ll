; ModuleID = '/home/raj/lwan/common/base64.c'
source_filename = "/home/raj/lwan/common/base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_table = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16, !dbg !0
@base64_decode_table = internal constant [256 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80>\80\80\80?456789:;<=\80\80\80\00\80\80\80\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\80\80\80\80\80\80\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", align 16, !dbg !11

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @base64_encode(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !29 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !36, metadata !DIExpression()), !dbg !37
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !38, metadata !DIExpression()), !dbg !39
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata ptr %8, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata ptr %9, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata ptr %10, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata ptr %11, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata ptr %12, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata ptr %13, metadata !52, metadata !DIExpression()), !dbg !54
  %14 = load i64, ptr %6, align 8, !dbg !55
  %15 = mul i64 %14, 4, !dbg !56
  %16 = udiv i64 %15, 3, !dbg !57
  %17 = add i64 %16, 4, !dbg !58
  store i64 %17, ptr %12, align 8, !dbg !59
  %18 = load i64, ptr %12, align 8, !dbg !60
  %19 = udiv i64 %18, 72, !dbg !61
  %20 = load i64, ptr %12, align 8, !dbg !62
  %21 = add i64 %20, %19, !dbg !62
  store i64 %21, ptr %12, align 8, !dbg !62
  %22 = load i64, ptr %12, align 8, !dbg !63
  %23 = add i64 %22, 1, !dbg !63
  store i64 %23, ptr %12, align 8, !dbg !63
  %24 = load i64, ptr %12, align 8, !dbg !64
  %25 = load i64, ptr %6, align 8, !dbg !66
  %26 = icmp ult i64 %24, %25, !dbg !67
  br i1 %26, label %27, label %28, !dbg !68

27:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !69
  br label %203, !dbg !69

28:                                               ; preds = %3
  %29 = load i64, ptr %12, align 8, !dbg !70
  %30 = call noalias ptr @malloc(i64 noundef %29) #4, !dbg !71
  store ptr %30, ptr %8, align 8, !dbg !72
  %31 = load ptr, ptr %8, align 8, !dbg !73
  %32 = icmp eq ptr %31, null, !dbg !75
  br i1 %32, label %33, label %34, !dbg !76

33:                                               ; preds = %28
  store ptr null, ptr %4, align 8, !dbg !77
  br label %203, !dbg !77

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 8, !dbg !78
  %36 = load i64, ptr %6, align 8, !dbg !79
  %37 = getelementptr inbounds i8, ptr %35, i64 %36, !dbg !80
  store ptr %37, ptr %10, align 8, !dbg !81
  %38 = load ptr, ptr %5, align 8, !dbg !82
  store ptr %38, ptr %11, align 8, !dbg !83
  %39 = load ptr, ptr %8, align 8, !dbg !84
  store ptr %39, ptr %9, align 8, !dbg !85
  store i32 0, ptr %13, align 4, !dbg !86
  br label %40, !dbg !87

40:                                               ; preds = %111, %34
  %41 = load ptr, ptr %10, align 8, !dbg !88
  %42 = load ptr, ptr %11, align 8, !dbg !89
  %43 = ptrtoint ptr %41 to i64, !dbg !90
  %44 = ptrtoint ptr %42 to i64, !dbg !90
  %45 = sub i64 %43, %44, !dbg !90
  %46 = icmp sge i64 %45, 3, !dbg !91
  br i1 %46, label %47, label %112, !dbg !87

47:                                               ; preds = %40
  %48 = load ptr, ptr %11, align 8, !dbg !92
  %49 = getelementptr inbounds i8, ptr %48, i64 0, !dbg !92
  %50 = load i8, ptr %49, align 1, !dbg !92
  %51 = zext i8 %50 to i32, !dbg !92
  %52 = ashr i32 %51, 2, !dbg !94
  %53 = sext i32 %52 to i64, !dbg !95
  %54 = getelementptr inbounds [65 x i8], ptr @base64_table, i64 0, i64 %53, !dbg !95
  %55 = load i8, ptr %54, align 1, !dbg !95
  %56 = load ptr, ptr %9, align 8, !dbg !96
  %57 = getelementptr inbounds i8, ptr %56, i32 1, !dbg !96
  store ptr %57, ptr %9, align 8, !dbg !96
  store i8 %55, ptr %56, align 1, !dbg !97
  %58 = load ptr, ptr %11, align 8, !dbg !98
  %59 = getelementptr inbounds i8, ptr %58, i64 0, !dbg !98
  %60 = load i8, ptr %59, align 1, !dbg !98
  %61 = zext i8 %60 to i32, !dbg !98
  %62 = and i32 %61, 3, !dbg !99
  %63 = shl i32 %62, 4, !dbg !100
  %64 = load ptr, ptr %11, align 8, !dbg !101
  %65 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !101
  %66 = load i8, ptr %65, align 1, !dbg !101
  %67 = zext i8 %66 to i32, !dbg !101
  %68 = ashr i32 %67, 4, !dbg !102
  %69 = or i32 %63, %68, !dbg !103
  %70 = sext i32 %69 to i64, !dbg !104
  %71 = getelementptr inbounds [65 x i8], ptr @base64_table, i64 0, i64 %70, !dbg !104
  %72 = load i8, ptr %71, align 1, !dbg !104
  %73 = load ptr, ptr %9, align 8, !dbg !105
  %74 = getelementptr inbounds i8, ptr %73, i32 1, !dbg !105
  store ptr %74, ptr %9, align 8, !dbg !105
  store i8 %72, ptr %73, align 1, !dbg !106
  %75 = load ptr, ptr %11, align 8, !dbg !107
  %76 = getelementptr inbounds i8, ptr %75, i64 1, !dbg !107
  %77 = load i8, ptr %76, align 1, !dbg !107
  %78 = zext i8 %77 to i32, !dbg !107
  %79 = and i32 %78, 15, !dbg !108
  %80 = shl i32 %79, 2, !dbg !109
  %81 = load ptr, ptr %11, align 8, !dbg !110
  %82 = getelementptr inbounds i8, ptr %81, i64 2, !dbg !110
  %83 = load i8, ptr %82, align 1, !dbg !110
  %84 = zext i8 %83 to i32, !dbg !110
  %85 = ashr i32 %84, 6, !dbg !111
  %86 = or i32 %80, %85, !dbg !112
  %87 = sext i32 %86 to i64, !dbg !113
  %88 = getelementptr inbounds [65 x i8], ptr @base64_table, i64 0, i64 %87, !dbg !113
  %89 = load i8, ptr %88, align 1, !dbg !113
  %90 = load ptr, ptr %9, align 8, !dbg !114
  %91 = getelementptr inbounds i8, ptr %90, i32 1, !dbg !114
  store ptr %91, ptr %9, align 8, !dbg !114
  store i8 %89, ptr %90, align 1, !dbg !115
  %92 = load ptr, ptr %11, align 8, !dbg !116
  %93 = getelementptr inbounds i8, ptr %92, i64 2, !dbg !116
  %94 = load i8, ptr %93, align 1, !dbg !116
  %95 = zext i8 %94 to i32, !dbg !116
  %96 = and i32 %95, 63, !dbg !117
  %97 = sext i32 %96 to i64, !dbg !118
  %98 = getelementptr inbounds [65 x i8], ptr @base64_table, i64 0, i64 %97, !dbg !118
  %99 = load i8, ptr %98, align 1, !dbg !118
  %100 = load ptr, ptr %9, align 8, !dbg !119
  %101 = getelementptr inbounds i8, ptr %100, i32 1, !dbg !119
  store ptr %101, ptr %9, align 8, !dbg !119
  store i8 %99, ptr %100, align 1, !dbg !120
  %102 = load ptr, ptr %11, align 8, !dbg !121
  %103 = getelementptr inbounds i8, ptr %102, i64 3, !dbg !121
  store ptr %103, ptr %11, align 8, !dbg !121
  %104 = load i32, ptr %13, align 4, !dbg !122
  %105 = add nsw i32 %104, 4, !dbg !122
  store i32 %105, ptr %13, align 4, !dbg !122
  %106 = load i32, ptr %13, align 4, !dbg !123
  %107 = icmp sge i32 %106, 72, !dbg !125
  br i1 %107, label %108, label %111, !dbg !126

108:                                              ; preds = %47
  %109 = load ptr, ptr %9, align 8, !dbg !127
  %110 = getelementptr inbounds i8, ptr %109, i32 1, !dbg !127
  store ptr %110, ptr %9, align 8, !dbg !127
  store i8 10, ptr %109, align 1, !dbg !129
  store i32 0, ptr %13, align 4, !dbg !130
  br label %111, !dbg !131

111:                                              ; preds = %108, %47
  br label %40, !dbg !87, !llvm.loop !132

112:                                              ; preds = %40
  %113 = load ptr, ptr %10, align 8, !dbg !135
  %114 = load ptr, ptr %11, align 8, !dbg !137
  %115 = ptrtoint ptr %113 to i64, !dbg !138
  %116 = ptrtoint ptr %114 to i64, !dbg !138
  %117 = sub i64 %115, %116, !dbg !138
  %118 = icmp ne i64 %117, 0, !dbg !138
  br i1 %118, label %119, label %184, !dbg !139

119:                                              ; preds = %112
  %120 = load ptr, ptr %11, align 8, !dbg !140
  %121 = getelementptr inbounds i8, ptr %120, i64 0, !dbg !140
  %122 = load i8, ptr %121, align 1, !dbg !140
  %123 = zext i8 %122 to i32, !dbg !140
  %124 = ashr i32 %123, 2, !dbg !142
  %125 = sext i32 %124 to i64, !dbg !143
  %126 = getelementptr inbounds [65 x i8], ptr @base64_table, i64 0, i64 %125, !dbg !143
  %127 = load i8, ptr %126, align 1, !dbg !143
  %128 = load ptr, ptr %9, align 8, !dbg !144
  %129 = getelementptr inbounds i8, ptr %128, i32 1, !dbg !144
  store ptr %129, ptr %9, align 8, !dbg !144
  store i8 %127, ptr %128, align 1, !dbg !145
  %130 = load ptr, ptr %10, align 8, !dbg !146
  %131 = load ptr, ptr %11, align 8, !dbg !148
  %132 = ptrtoint ptr %130 to i64, !dbg !149
  %133 = ptrtoint ptr %131 to i64, !dbg !149
  %134 = sub i64 %132, %133, !dbg !149
  %135 = icmp eq i64 %134, 1, !dbg !150
  br i1 %135, label %136, label %150, !dbg !151

136:                                              ; preds = %119
  %137 = load ptr, ptr %11, align 8, !dbg !152
  %138 = getelementptr inbounds i8, ptr %137, i64 0, !dbg !152
  %139 = load i8, ptr %138, align 1, !dbg !152
  %140 = zext i8 %139 to i32, !dbg !152
  %141 = and i32 %140, 3, !dbg !154
  %142 = shl i32 %141, 4, !dbg !155
  %143 = sext i32 %142 to i64, !dbg !156
  %144 = getelementptr inbounds [65 x i8], ptr @base64_table, i64 0, i64 %143, !dbg !156
  %145 = load i8, ptr %144, align 1, !dbg !156
  %146 = load ptr, ptr %9, align 8, !dbg !157
  %147 = getelementptr inbounds i8, ptr %146, i32 1, !dbg !157
  store ptr %147, ptr %9, align 8, !dbg !157
  store i8 %145, ptr %146, align 1, !dbg !158
  %148 = load ptr, ptr %9, align 8, !dbg !159
  %149 = getelementptr inbounds i8, ptr %148, i32 1, !dbg !159
  store ptr %149, ptr %9, align 8, !dbg !159
  store i8 61, ptr %148, align 1, !dbg !160
  br label %179, !dbg !161

150:                                              ; preds = %119
  %151 = load ptr, ptr %11, align 8, !dbg !162
  %152 = getelementptr inbounds i8, ptr %151, i64 0, !dbg !162
  %153 = load i8, ptr %152, align 1, !dbg !162
  %154 = zext i8 %153 to i32, !dbg !162
  %155 = and i32 %154, 3, !dbg !164
  %156 = shl i32 %155, 4, !dbg !165
  %157 = load ptr, ptr %11, align 8, !dbg !166
  %158 = getelementptr inbounds i8, ptr %157, i64 1, !dbg !166
  %159 = load i8, ptr %158, align 1, !dbg !166
  %160 = zext i8 %159 to i32, !dbg !166
  %161 = ashr i32 %160, 4, !dbg !167
  %162 = or i32 %156, %161, !dbg !168
  %163 = sext i32 %162 to i64, !dbg !169
  %164 = getelementptr inbounds [65 x i8], ptr @base64_table, i64 0, i64 %163, !dbg !169
  %165 = load i8, ptr %164, align 1, !dbg !169
  %166 = load ptr, ptr %9, align 8, !dbg !170
  %167 = getelementptr inbounds i8, ptr %166, i32 1, !dbg !170
  store ptr %167, ptr %9, align 8, !dbg !170
  store i8 %165, ptr %166, align 1, !dbg !171
  %168 = load ptr, ptr %11, align 8, !dbg !172
  %169 = getelementptr inbounds i8, ptr %168, i64 1, !dbg !172
  %170 = load i8, ptr %169, align 1, !dbg !172
  %171 = zext i8 %170 to i32, !dbg !172
  %172 = and i32 %171, 15, !dbg !173
  %173 = shl i32 %172, 2, !dbg !174
  %174 = sext i32 %173 to i64, !dbg !175
  %175 = getelementptr inbounds [65 x i8], ptr @base64_table, i64 0, i64 %174, !dbg !175
  %176 = load i8, ptr %175, align 1, !dbg !175
  %177 = load ptr, ptr %9, align 8, !dbg !176
  %178 = getelementptr inbounds i8, ptr %177, i32 1, !dbg !176
  store ptr %178, ptr %9, align 8, !dbg !176
  store i8 %176, ptr %177, align 1, !dbg !177
  br label %179

179:                                              ; preds = %150, %136
  %180 = load ptr, ptr %9, align 8, !dbg !178
  %181 = getelementptr inbounds i8, ptr %180, i32 1, !dbg !178
  store ptr %181, ptr %9, align 8, !dbg !178
  store i8 61, ptr %180, align 1, !dbg !179
  %182 = load i32, ptr %13, align 4, !dbg !180
  %183 = add nsw i32 %182, 4, !dbg !180
  store i32 %183, ptr %13, align 4, !dbg !180
  br label %184, !dbg !181

184:                                              ; preds = %179, %112
  %185 = load i32, ptr %13, align 4, !dbg !182
  %186 = icmp ne i32 %185, 0, !dbg !182
  br i1 %186, label %187, label %190, !dbg !184

187:                                              ; preds = %184
  %188 = load ptr, ptr %9, align 8, !dbg !185
  %189 = getelementptr inbounds i8, ptr %188, i32 1, !dbg !185
  store ptr %189, ptr %9, align 8, !dbg !185
  store i8 10, ptr %188, align 1, !dbg !186
  br label %190, !dbg !187

190:                                              ; preds = %187, %184
  %191 = load ptr, ptr %9, align 8, !dbg !188
  store i8 0, ptr %191, align 1, !dbg !189
  %192 = load ptr, ptr %7, align 8, !dbg !190
  %193 = icmp ne ptr %192, null, !dbg !190
  br i1 %193, label %194, label %201, !dbg !192

194:                                              ; preds = %190
  %195 = load ptr, ptr %9, align 8, !dbg !193
  %196 = load ptr, ptr %8, align 8, !dbg !194
  %197 = ptrtoint ptr %195 to i64, !dbg !195
  %198 = ptrtoint ptr %196 to i64, !dbg !195
  %199 = sub i64 %197, %198, !dbg !195
  %200 = load ptr, ptr %7, align 8, !dbg !196
  store i64 %199, ptr %200, align 8, !dbg !197
  br label %201, !dbg !198

201:                                              ; preds = %194, %190
  %202 = load ptr, ptr %8, align 8, !dbg !199
  store ptr %202, ptr %4, align 8, !dbg !200
  br label %203, !dbg !200

203:                                              ; preds = %201, %33, %27
  %204 = load ptr, ptr %4, align 8, !dbg !201
  ret ptr %204, !dbg !201
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @base64_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !202 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !203, metadata !DIExpression()), !dbg !204
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !205, metadata !DIExpression()), !dbg !206
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata ptr %8, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata ptr %9, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata ptr %10, metadata !213, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr %11, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata ptr %12, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata ptr %13, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata ptr %14, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 0, ptr %14, align 4, !dbg !225
  store i64 0, ptr %12, align 8, !dbg !226
  store i64 0, ptr %11, align 8, !dbg !227
  br label %16, !dbg !229

16:                                               ; preds = %34, %3
  %17 = load i64, ptr %11, align 8, !dbg !230
  %18 = load i64, ptr %6, align 8, !dbg !232
  %19 = icmp ult i64 %17, %18, !dbg !233
  br i1 %19, label %20, label %37, !dbg !234

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !235
  %22 = load i64, ptr %11, align 8, !dbg !238
  %23 = getelementptr inbounds i8, ptr %21, i64 %22, !dbg !235
  %24 = load i8, ptr %23, align 1, !dbg !235
  %25 = zext i8 %24 to i64, !dbg !239
  %26 = getelementptr inbounds [256 x i8], ptr @base64_decode_table, i64 0, i64 %25, !dbg !239
  %27 = load i8, ptr %26, align 1, !dbg !239
  %28 = zext i8 %27 to i32, !dbg !239
  %29 = icmp ne i32 %28, 128, !dbg !240
  br i1 %29, label %30, label %33, !dbg !241

30:                                               ; preds = %20
  %31 = load i64, ptr %12, align 8, !dbg !242
  %32 = add i64 %31, 1, !dbg !242
  store i64 %32, ptr %12, align 8, !dbg !242
  br label %33, !dbg !243

33:                                               ; preds = %30, %20
  br label %34, !dbg !244

34:                                               ; preds = %33
  %35 = load i64, ptr %11, align 8, !dbg !245
  %36 = add i64 %35, 1, !dbg !245
  store i64 %36, ptr %11, align 8, !dbg !245
  br label %16, !dbg !246, !llvm.loop !247

37:                                               ; preds = %16
  %38 = load i64, ptr %12, align 8, !dbg !249
  %39 = icmp eq i64 %38, 0, !dbg !251
  br i1 %39, label %44, label %40, !dbg !252

40:                                               ; preds = %37
  %41 = load i64, ptr %12, align 8, !dbg !253
  %42 = urem i64 %41, 4, !dbg !254
  %43 = icmp ne i64 %42, 0, !dbg !254
  br i1 %43, label %44, label %45, !dbg !255

44:                                               ; preds = %40, %37
  store ptr null, ptr %4, align 8, !dbg !256
  br label %158, !dbg !256

45:                                               ; preds = %40
  %46 = load i64, ptr %12, align 8, !dbg !257
  %47 = udiv i64 %46, 4, !dbg !258
  %48 = mul i64 %47, 3, !dbg !259
  %49 = add i64 %48, 1, !dbg !260
  store i64 %49, ptr %13, align 8, !dbg !261
  %50 = load i64, ptr %13, align 8, !dbg !262
  %51 = call noalias ptr @malloc(i64 noundef %50) #4, !dbg !263
  store ptr %51, ptr %8, align 8, !dbg !264
  store ptr %51, ptr %9, align 8, !dbg !265
  %52 = load ptr, ptr %8, align 8, !dbg !266
  %53 = icmp eq ptr %52, null, !dbg !268
  br i1 %53, label %54, label %55, !dbg !269

54:                                               ; preds = %45
  store ptr null, ptr %4, align 8, !dbg !270
  br label %158, !dbg !270

55:                                               ; preds = %45
  store i64 0, ptr %12, align 8, !dbg !271
  store i64 0, ptr %11, align 8, !dbg !272
  br label %56, !dbg !274

56:                                               ; preds = %146, %55
  %57 = load i64, ptr %11, align 8, !dbg !275
  %58 = load i64, ptr %6, align 8, !dbg !277
  %59 = icmp ult i64 %57, %58, !dbg !278
  br i1 %59, label %60, label %149, !dbg !279

60:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata ptr %15, metadata !280, metadata !DIExpression()), !dbg !282
  %61 = load ptr, ptr %5, align 8, !dbg !283
  %62 = load i64, ptr %11, align 8, !dbg !284
  %63 = getelementptr inbounds i8, ptr %61, i64 %62, !dbg !283
  %64 = load i8, ptr %63, align 1, !dbg !283
  %65 = zext i8 %64 to i64, !dbg !285
  %66 = getelementptr inbounds [256 x i8], ptr @base64_decode_table, i64 0, i64 %65, !dbg !285
  %67 = load i8, ptr %66, align 1, !dbg !285
  store i8 %67, ptr %15, align 1, !dbg !282
  %68 = load i8, ptr %15, align 1, !dbg !286
  %69 = zext i8 %68 to i32, !dbg !286
  %70 = icmp eq i32 %69, 128, !dbg !288
  br i1 %70, label %71, label %72, !dbg !289

71:                                               ; preds = %60
  br label %146, !dbg !290

72:                                               ; preds = %60
  %73 = load ptr, ptr %5, align 8, !dbg !291
  %74 = load i64, ptr %11, align 8, !dbg !293
  %75 = getelementptr inbounds i8, ptr %73, i64 %74, !dbg !291
  %76 = load i8, ptr %75, align 1, !dbg !291
  %77 = zext i8 %76 to i32, !dbg !291
  %78 = icmp eq i32 %77, 61, !dbg !294
  br i1 %78, label %79, label %82, !dbg !295

79:                                               ; preds = %72
  %80 = load i32, ptr %14, align 4, !dbg !296
  %81 = add nsw i32 %80, 1, !dbg !296
  store i32 %81, ptr %14, align 4, !dbg !296
  br label %82, !dbg !297

82:                                               ; preds = %79, %72
  %83 = load i8, ptr %15, align 1, !dbg !298
  %84 = load i64, ptr %12, align 8, !dbg !299
  %85 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %84, !dbg !300
  store i8 %83, ptr %85, align 1, !dbg !301
  %86 = load i64, ptr %12, align 8, !dbg !302
  %87 = add i64 %86, 1, !dbg !302
  store i64 %87, ptr %12, align 8, !dbg !302
  %88 = load i64, ptr %12, align 8, !dbg !303
  %89 = icmp eq i64 %88, 4, !dbg !305
  br i1 %89, label %90, label %145, !dbg !306

90:                                               ; preds = %82
  %91 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 0, !dbg !307
  %92 = load i8, ptr %91, align 1, !dbg !307
  %93 = zext i8 %92 to i32, !dbg !307
  %94 = shl i32 %93, 2, !dbg !309
  %95 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1, !dbg !310
  %96 = load i8, ptr %95, align 1, !dbg !310
  %97 = zext i8 %96 to i32, !dbg !310
  %98 = ashr i32 %97, 4, !dbg !311
  %99 = or i32 %94, %98, !dbg !312
  %100 = trunc i32 %99 to i8, !dbg !313
  %101 = load ptr, ptr %9, align 8, !dbg !314
  %102 = getelementptr inbounds i8, ptr %101, i32 1, !dbg !314
  store ptr %102, ptr %9, align 8, !dbg !314
  store i8 %100, ptr %101, align 1, !dbg !315
  %103 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1, !dbg !316
  %104 = load i8, ptr %103, align 1, !dbg !316
  %105 = zext i8 %104 to i32, !dbg !316
  %106 = shl i32 %105, 4, !dbg !317
  %107 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2, !dbg !318
  %108 = load i8, ptr %107, align 1, !dbg !318
  %109 = zext i8 %108 to i32, !dbg !318
  %110 = ashr i32 %109, 2, !dbg !319
  %111 = or i32 %106, %110, !dbg !320
  %112 = trunc i32 %111 to i8, !dbg !321
  %113 = load ptr, ptr %9, align 8, !dbg !322
  %114 = getelementptr inbounds i8, ptr %113, i32 1, !dbg !322
  store ptr %114, ptr %9, align 8, !dbg !322
  store i8 %112, ptr %113, align 1, !dbg !323
  %115 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2, !dbg !324
  %116 = load i8, ptr %115, align 1, !dbg !324
  %117 = zext i8 %116 to i32, !dbg !324
  %118 = shl i32 %117, 6, !dbg !325
  %119 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3, !dbg !326
  %120 = load i8, ptr %119, align 1, !dbg !326
  %121 = zext i8 %120 to i32, !dbg !326
  %122 = or i32 %118, %121, !dbg !327
  %123 = trunc i32 %122 to i8, !dbg !328
  %124 = load ptr, ptr %9, align 8, !dbg !329
  %125 = getelementptr inbounds i8, ptr %124, i32 1, !dbg !329
  store ptr %125, ptr %9, align 8, !dbg !329
  store i8 %123, ptr %124, align 1, !dbg !330
  store i64 0, ptr %12, align 8, !dbg !331
  %126 = load i32, ptr %14, align 4, !dbg !332
  %127 = icmp ne i32 %126, 0, !dbg !332
  br i1 %127, label %128, label %144, !dbg !334

128:                                              ; preds = %90
  %129 = load i32, ptr %14, align 4, !dbg !335
  %130 = icmp eq i32 %129, 1, !dbg !338
  br i1 %130, label %131, label %134, !dbg !339

131:                                              ; preds = %128
  %132 = load ptr, ptr %9, align 8, !dbg !340
  %133 = getelementptr inbounds i8, ptr %132, i32 -1, !dbg !340
  store ptr %133, ptr %9, align 8, !dbg !340
  br label %143, !dbg !341

134:                                              ; preds = %128
  %135 = load i32, ptr %14, align 4, !dbg !342
  %136 = icmp eq i32 %135, 2, !dbg !344
  br i1 %136, label %137, label %140, !dbg !345

137:                                              ; preds = %134
  %138 = load ptr, ptr %9, align 8, !dbg !346
  %139 = getelementptr inbounds i8, ptr %138, i64 -2, !dbg !346
  store ptr %139, ptr %9, align 8, !dbg !346
  br label %142, !dbg !347

140:                                              ; preds = %134
  %141 = load ptr, ptr %8, align 8, !dbg !348
  call void @free(ptr noundef %141) #5, !dbg !350
  store ptr null, ptr %4, align 8, !dbg !351
  br label %158, !dbg !351

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %131
  br label %149, !dbg !352

144:                                              ; preds = %90
  br label %145, !dbg !353

145:                                              ; preds = %144, %82
  br label %146, !dbg !354

146:                                              ; preds = %145, %71
  %147 = load i64, ptr %11, align 8, !dbg !355
  %148 = add i64 %147, 1, !dbg !355
  store i64 %148, ptr %11, align 8, !dbg !355
  br label %56, !dbg !356, !llvm.loop !357

149:                                              ; preds = %143, %56
  %150 = load ptr, ptr %9, align 8, !dbg !359
  store i8 0, ptr %150, align 1, !dbg !360
  %151 = load ptr, ptr %9, align 8, !dbg !361
  %152 = load ptr, ptr %8, align 8, !dbg !362
  %153 = ptrtoint ptr %151 to i64, !dbg !363
  %154 = ptrtoint ptr %152 to i64, !dbg !363
  %155 = sub i64 %153, %154, !dbg !363
  %156 = load ptr, ptr %7, align 8, !dbg !364
  store i64 %155, ptr %156, align 8, !dbg !365
  %157 = load ptr, ptr %8, align 8, !dbg !366
  store ptr %157, ptr %4, align 8, !dbg !367
  br label %158, !dbg !367

158:                                              ; preds = %149, %140, %54, %44
  %159 = load ptr, ptr %4, align 8, !dbg !368
  ret ptr %159, !dbg !368
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "base64_table", scope: !2, file: !13, line: 14, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/lwan/common/base64.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "8a87452d79d8a8f0198bc14a71930268")
!4 = !{!5, !6, !9}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0, !11}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "base64_decode_table", scope: !2, file: !13, line: 24, type: !14, isLocal: true, isDefinition: true)
!13 = !DIFile(filename: "common/base64.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a87452d79d8a8f0198bc14a71930268")
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!16 = !{!17}
!17 = !DISubrange(count: 256)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 520, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 65)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 16.0.0"}
!29 = distinct !DISubprogram(name: "base64_encode", scope: !13, file: !13, line: 61, type: !30, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !33, !6, !34}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!35 = !{}
!36 = !DILocalVariable(name: "src", arg: 1, scope: !29, file: !13, line: 61, type: !33)
!37 = !DILocation(line: 61, column: 52, scope: !29)
!38 = !DILocalVariable(name: "len", arg: 2, scope: !29, file: !13, line: 61, type: !6)
!39 = !DILocation(line: 61, column: 64, scope: !29)
!40 = !DILocalVariable(name: "out_len", arg: 3, scope: !29, file: !13, line: 62, type: !34)
!41 = !DILocation(line: 62, column: 18, scope: !29)
!42 = !DILocalVariable(name: "out", scope: !29, file: !13, line: 64, type: !32)
!43 = !DILocation(line: 64, column: 17, scope: !29)
!44 = !DILocalVariable(name: "pos", scope: !29, file: !13, line: 64, type: !32)
!45 = !DILocation(line: 64, column: 23, scope: !29)
!46 = !DILocalVariable(name: "end", scope: !29, file: !13, line: 65, type: !33)
!47 = !DILocation(line: 65, column: 23, scope: !29)
!48 = !DILocalVariable(name: "in", scope: !29, file: !13, line: 65, type: !33)
!49 = !DILocation(line: 65, column: 29, scope: !29)
!50 = !DILocalVariable(name: "olen", scope: !29, file: !13, line: 66, type: !6)
!51 = !DILocation(line: 66, column: 9, scope: !29)
!52 = !DILocalVariable(name: "line_len", scope: !29, file: !13, line: 67, type: !53)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocation(line: 67, column: 6, scope: !29)
!55 = !DILocation(line: 69, column: 9, scope: !29)
!56 = !DILocation(line: 69, column: 13, scope: !29)
!57 = !DILocation(line: 69, column: 17, scope: !29)
!58 = !DILocation(line: 69, column: 21, scope: !29)
!59 = !DILocation(line: 69, column: 7, scope: !29)
!60 = !DILocation(line: 70, column: 10, scope: !29)
!61 = !DILocation(line: 70, column: 15, scope: !29)
!62 = !DILocation(line: 70, column: 7, scope: !29)
!63 = !DILocation(line: 71, column: 6, scope: !29)
!64 = !DILocation(line: 72, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !29, file: !13, line: 72, column: 6)
!66 = !DILocation(line: 72, column: 13, scope: !65)
!67 = !DILocation(line: 72, column: 11, scope: !65)
!68 = !DILocation(line: 72, column: 6, scope: !29)
!69 = !DILocation(line: 73, column: 3, scope: !65)
!70 = !DILocation(line: 74, column: 15, scope: !29)
!71 = !DILocation(line: 74, column: 8, scope: !29)
!72 = !DILocation(line: 74, column: 6, scope: !29)
!73 = !DILocation(line: 75, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !29, file: !13, line: 75, column: 6)
!75 = !DILocation(line: 75, column: 10, scope: !74)
!76 = !DILocation(line: 75, column: 6, scope: !29)
!77 = !DILocation(line: 76, column: 3, scope: !74)
!78 = !DILocation(line: 78, column: 8, scope: !29)
!79 = !DILocation(line: 78, column: 14, scope: !29)
!80 = !DILocation(line: 78, column: 12, scope: !29)
!81 = !DILocation(line: 78, column: 6, scope: !29)
!82 = !DILocation(line: 79, column: 7, scope: !29)
!83 = !DILocation(line: 79, column: 5, scope: !29)
!84 = !DILocation(line: 80, column: 8, scope: !29)
!85 = !DILocation(line: 80, column: 6, scope: !29)
!86 = !DILocation(line: 81, column: 11, scope: !29)
!87 = !DILocation(line: 82, column: 2, scope: !29)
!88 = !DILocation(line: 82, column: 9, scope: !29)
!89 = !DILocation(line: 82, column: 15, scope: !29)
!90 = !DILocation(line: 82, column: 13, scope: !29)
!91 = !DILocation(line: 82, column: 18, scope: !29)
!92 = !DILocation(line: 83, column: 25, scope: !93)
!93 = distinct !DILexicalBlock(scope: !29, file: !13, line: 82, column: 24)
!94 = !DILocation(line: 83, column: 31, scope: !93)
!95 = !DILocation(line: 83, column: 12, scope: !93)
!96 = !DILocation(line: 83, column: 7, scope: !93)
!97 = !DILocation(line: 83, column: 10, scope: !93)
!98 = !DILocation(line: 84, column: 27, scope: !93)
!99 = !DILocation(line: 84, column: 33, scope: !93)
!100 = !DILocation(line: 84, column: 41, scope: !93)
!101 = !DILocation(line: 84, column: 50, scope: !93)
!102 = !DILocation(line: 84, column: 56, scope: !93)
!103 = !DILocation(line: 84, column: 47, scope: !93)
!104 = !DILocation(line: 84, column: 12, scope: !93)
!105 = !DILocation(line: 84, column: 7, scope: !93)
!106 = !DILocation(line: 84, column: 10, scope: !93)
!107 = !DILocation(line: 85, column: 27, scope: !93)
!108 = !DILocation(line: 85, column: 33, scope: !93)
!109 = !DILocation(line: 85, column: 41, scope: !93)
!110 = !DILocation(line: 85, column: 50, scope: !93)
!111 = !DILocation(line: 85, column: 56, scope: !93)
!112 = !DILocation(line: 85, column: 47, scope: !93)
!113 = !DILocation(line: 85, column: 12, scope: !93)
!114 = !DILocation(line: 85, column: 7, scope: !93)
!115 = !DILocation(line: 85, column: 10, scope: !93)
!116 = !DILocation(line: 86, column: 25, scope: !93)
!117 = !DILocation(line: 86, column: 31, scope: !93)
!118 = !DILocation(line: 86, column: 12, scope: !93)
!119 = !DILocation(line: 86, column: 7, scope: !93)
!120 = !DILocation(line: 86, column: 10, scope: !93)
!121 = !DILocation(line: 87, column: 6, scope: !93)
!122 = !DILocation(line: 88, column: 12, scope: !93)
!123 = !DILocation(line: 89, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !93, file: !13, line: 89, column: 7)
!125 = !DILocation(line: 89, column: 16, scope: !124)
!126 = !DILocation(line: 89, column: 7, scope: !93)
!127 = !DILocation(line: 90, column: 8, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !13, line: 89, column: 23)
!129 = !DILocation(line: 90, column: 11, scope: !128)
!130 = !DILocation(line: 91, column: 13, scope: !128)
!131 = !DILocation(line: 92, column: 3, scope: !128)
!132 = distinct !{!132, !87, !133, !134}
!133 = !DILocation(line: 93, column: 2, scope: !29)
!134 = !{!"llvm.loop.mustprogress"}
!135 = !DILocation(line: 95, column: 6, scope: !136)
!136 = distinct !DILexicalBlock(scope: !29, file: !13, line: 95, column: 6)
!137 = !DILocation(line: 95, column: 12, scope: !136)
!138 = !DILocation(line: 95, column: 10, scope: !136)
!139 = !DILocation(line: 95, column: 6, scope: !29)
!140 = !DILocation(line: 96, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !13, line: 95, column: 16)
!142 = !DILocation(line: 96, column: 31, scope: !141)
!143 = !DILocation(line: 96, column: 12, scope: !141)
!144 = !DILocation(line: 96, column: 7, scope: !141)
!145 = !DILocation(line: 96, column: 10, scope: !141)
!146 = !DILocation(line: 97, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !13, line: 97, column: 7)
!148 = !DILocation(line: 97, column: 13, scope: !147)
!149 = !DILocation(line: 97, column: 11, scope: !147)
!150 = !DILocation(line: 97, column: 16, scope: !147)
!151 = !DILocation(line: 97, column: 7, scope: !141)
!152 = !DILocation(line: 98, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !147, file: !13, line: 97, column: 22)
!154 = !DILocation(line: 98, column: 33, scope: !153)
!155 = !DILocation(line: 98, column: 41, scope: !153)
!156 = !DILocation(line: 98, column: 13, scope: !153)
!157 = !DILocation(line: 98, column: 8, scope: !153)
!158 = !DILocation(line: 98, column: 11, scope: !153)
!159 = !DILocation(line: 99, column: 8, scope: !153)
!160 = !DILocation(line: 99, column: 11, scope: !153)
!161 = !DILocation(line: 100, column: 3, scope: !153)
!162 = !DILocation(line: 101, column: 28, scope: !163)
!163 = distinct !DILexicalBlock(scope: !147, file: !13, line: 100, column: 10)
!164 = !DILocation(line: 101, column: 34, scope: !163)
!165 = !DILocation(line: 101, column: 42, scope: !163)
!166 = !DILocation(line: 102, column: 13, scope: !163)
!167 = !DILocation(line: 102, column: 19, scope: !163)
!168 = !DILocation(line: 101, column: 48, scope: !163)
!169 = !DILocation(line: 101, column: 13, scope: !163)
!170 = !DILocation(line: 101, column: 8, scope: !163)
!171 = !DILocation(line: 101, column: 11, scope: !163)
!172 = !DILocation(line: 103, column: 27, scope: !163)
!173 = !DILocation(line: 103, column: 33, scope: !163)
!174 = !DILocation(line: 103, column: 41, scope: !163)
!175 = !DILocation(line: 103, column: 13, scope: !163)
!176 = !DILocation(line: 103, column: 8, scope: !163)
!177 = !DILocation(line: 103, column: 11, scope: !163)
!178 = !DILocation(line: 105, column: 7, scope: !141)
!179 = !DILocation(line: 105, column: 10, scope: !141)
!180 = !DILocation(line: 106, column: 12, scope: !141)
!181 = !DILocation(line: 107, column: 2, scope: !141)
!182 = !DILocation(line: 109, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !29, file: !13, line: 109, column: 6)
!184 = !DILocation(line: 109, column: 6, scope: !29)
!185 = !DILocation(line: 110, column: 7, scope: !183)
!186 = !DILocation(line: 110, column: 10, scope: !183)
!187 = !DILocation(line: 110, column: 3, scope: !183)
!188 = !DILocation(line: 112, column: 3, scope: !29)
!189 = !DILocation(line: 112, column: 7, scope: !29)
!190 = !DILocation(line: 113, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !29, file: !13, line: 113, column: 6)
!192 = !DILocation(line: 113, column: 6, scope: !29)
!193 = !DILocation(line: 114, column: 23, scope: !191)
!194 = !DILocation(line: 114, column: 29, scope: !191)
!195 = !DILocation(line: 114, column: 27, scope: !191)
!196 = !DILocation(line: 114, column: 4, scope: !191)
!197 = !DILocation(line: 114, column: 12, scope: !191)
!198 = !DILocation(line: 114, column: 3, scope: !191)
!199 = !DILocation(line: 115, column: 9, scope: !29)
!200 = !DILocation(line: 115, column: 2, scope: !29)
!201 = !DILocation(line: 116, column: 1, scope: !29)
!202 = distinct !DISubprogram(name: "base64_decode", scope: !13, file: !13, line: 128, type: !30, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!203 = !DILocalVariable(name: "src", arg: 1, scope: !202, file: !13, line: 128, type: !33)
!204 = !DILocation(line: 128, column: 52, scope: !202)
!205 = !DILocalVariable(name: "len", arg: 2, scope: !202, file: !13, line: 128, type: !6)
!206 = !DILocation(line: 128, column: 64, scope: !202)
!207 = !DILocalVariable(name: "out_len", arg: 3, scope: !202, file: !13, line: 129, type: !34)
!208 = !DILocation(line: 129, column: 18, scope: !202)
!209 = !DILocalVariable(name: "out", scope: !202, file: !13, line: 131, type: !32)
!210 = !DILocation(line: 131, column: 17, scope: !202)
!211 = !DILocalVariable(name: "pos", scope: !202, file: !13, line: 131, type: !32)
!212 = !DILocation(line: 131, column: 23, scope: !202)
!213 = !DILocalVariable(name: "block", scope: !202, file: !13, line: 131, type: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 4)
!217 = !DILocation(line: 131, column: 28, scope: !202)
!218 = !DILocalVariable(name: "i", scope: !202, file: !13, line: 132, type: !6)
!219 = !DILocation(line: 132, column: 9, scope: !202)
!220 = !DILocalVariable(name: "count", scope: !202, file: !13, line: 132, type: !6)
!221 = !DILocation(line: 132, column: 12, scope: !202)
!222 = !DILocalVariable(name: "olen", scope: !202, file: !13, line: 132, type: !6)
!223 = !DILocation(line: 132, column: 19, scope: !202)
!224 = !DILocalVariable(name: "pad", scope: !202, file: !13, line: 133, type: !53)
!225 = !DILocation(line: 133, column: 6, scope: !202)
!226 = !DILocation(line: 135, column: 8, scope: !202)
!227 = !DILocation(line: 136, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !202, file: !13, line: 136, column: 2)
!229 = !DILocation(line: 136, column: 7, scope: !228)
!230 = !DILocation(line: 136, column: 14, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !13, line: 136, column: 2)
!232 = !DILocation(line: 136, column: 18, scope: !231)
!233 = !DILocation(line: 136, column: 16, scope: !231)
!234 = !DILocation(line: 136, column: 2, scope: !228)
!235 = !DILocation(line: 137, column: 27, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !13, line: 137, column: 7)
!237 = distinct !DILexicalBlock(scope: !231, file: !13, line: 136, column: 28)
!238 = !DILocation(line: 137, column: 31, scope: !236)
!239 = !DILocation(line: 137, column: 7, scope: !236)
!240 = !DILocation(line: 137, column: 35, scope: !236)
!241 = !DILocation(line: 137, column: 7, scope: !237)
!242 = !DILocation(line: 138, column: 9, scope: !236)
!243 = !DILocation(line: 138, column: 4, scope: !236)
!244 = !DILocation(line: 139, column: 2, scope: !237)
!245 = !DILocation(line: 136, column: 24, scope: !231)
!246 = !DILocation(line: 136, column: 2, scope: !231)
!247 = distinct !{!247, !234, !248, !134}
!248 = !DILocation(line: 139, column: 2, scope: !228)
!249 = !DILocation(line: 141, column: 6, scope: !250)
!250 = distinct !DILexicalBlock(scope: !202, file: !13, line: 141, column: 6)
!251 = !DILocation(line: 141, column: 12, scope: !250)
!252 = !DILocation(line: 141, column: 17, scope: !250)
!253 = !DILocation(line: 141, column: 20, scope: !250)
!254 = !DILocation(line: 141, column: 26, scope: !250)
!255 = !DILocation(line: 141, column: 6, scope: !202)
!256 = !DILocation(line: 142, column: 3, scope: !250)
!257 = !DILocation(line: 144, column: 10, scope: !202)
!258 = !DILocation(line: 144, column: 16, scope: !202)
!259 = !DILocation(line: 144, column: 20, scope: !202)
!260 = !DILocation(line: 144, column: 25, scope: !202)
!261 = !DILocation(line: 144, column: 7, scope: !202)
!262 = !DILocation(line: 145, column: 21, scope: !202)
!263 = !DILocation(line: 145, column: 14, scope: !202)
!264 = !DILocation(line: 145, column: 12, scope: !202)
!265 = !DILocation(line: 145, column: 6, scope: !202)
!266 = !DILocation(line: 146, column: 6, scope: !267)
!267 = distinct !DILexicalBlock(scope: !202, file: !13, line: 146, column: 6)
!268 = !DILocation(line: 146, column: 10, scope: !267)
!269 = !DILocation(line: 146, column: 6, scope: !202)
!270 = !DILocation(line: 147, column: 3, scope: !267)
!271 = !DILocation(line: 149, column: 8, scope: !202)
!272 = !DILocation(line: 150, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !202, file: !13, line: 150, column: 2)
!274 = !DILocation(line: 150, column: 7, scope: !273)
!275 = !DILocation(line: 150, column: 14, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !13, line: 150, column: 2)
!277 = !DILocation(line: 150, column: 18, scope: !276)
!278 = !DILocation(line: 150, column: 16, scope: !276)
!279 = !DILocation(line: 150, column: 2, scope: !273)
!280 = !DILocalVariable(name: "tmp", scope: !281, file: !13, line: 151, type: !9)
!281 = distinct !DILexicalBlock(scope: !276, file: !13, line: 150, column: 28)
!282 = !DILocation(line: 151, column: 17, scope: !281)
!283 = !DILocation(line: 151, column: 43, scope: !281)
!284 = !DILocation(line: 151, column: 47, scope: !281)
!285 = !DILocation(line: 151, column: 23, scope: !281)
!286 = !DILocation(line: 152, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !281, file: !13, line: 152, column: 7)
!288 = !DILocation(line: 152, column: 11, scope: !287)
!289 = !DILocation(line: 152, column: 7, scope: !281)
!290 = !DILocation(line: 153, column: 4, scope: !287)
!291 = !DILocation(line: 155, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !281, file: !13, line: 155, column: 7)
!293 = !DILocation(line: 155, column: 11, scope: !292)
!294 = !DILocation(line: 155, column: 14, scope: !292)
!295 = !DILocation(line: 155, column: 7, scope: !281)
!296 = !DILocation(line: 156, column: 7, scope: !292)
!297 = !DILocation(line: 156, column: 4, scope: !292)
!298 = !DILocation(line: 157, column: 18, scope: !281)
!299 = !DILocation(line: 157, column: 9, scope: !281)
!300 = !DILocation(line: 157, column: 3, scope: !281)
!301 = !DILocation(line: 157, column: 16, scope: !281)
!302 = !DILocation(line: 158, column: 8, scope: !281)
!303 = !DILocation(line: 159, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !281, file: !13, line: 159, column: 7)
!305 = !DILocation(line: 159, column: 13, scope: !304)
!306 = !DILocation(line: 159, column: 7, scope: !281)
!307 = !DILocation(line: 160, column: 30, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !13, line: 159, column: 19)
!309 = !DILocation(line: 160, column: 39, scope: !308)
!310 = !DILocation(line: 160, column: 48, scope: !308)
!311 = !DILocation(line: 160, column: 57, scope: !308)
!312 = !DILocation(line: 160, column: 45, scope: !308)
!313 = !DILocation(line: 160, column: 13, scope: !308)
!314 = !DILocation(line: 160, column: 8, scope: !308)
!315 = !DILocation(line: 160, column: 11, scope: !308)
!316 = !DILocation(line: 161, column: 30, scope: !308)
!317 = !DILocation(line: 161, column: 39, scope: !308)
!318 = !DILocation(line: 161, column: 48, scope: !308)
!319 = !DILocation(line: 161, column: 57, scope: !308)
!320 = !DILocation(line: 161, column: 45, scope: !308)
!321 = !DILocation(line: 161, column: 13, scope: !308)
!322 = !DILocation(line: 161, column: 8, scope: !308)
!323 = !DILocation(line: 161, column: 11, scope: !308)
!324 = !DILocation(line: 162, column: 30, scope: !308)
!325 = !DILocation(line: 162, column: 39, scope: !308)
!326 = !DILocation(line: 162, column: 47, scope: !308)
!327 = !DILocation(line: 162, column: 45, scope: !308)
!328 = !DILocation(line: 162, column: 13, scope: !308)
!329 = !DILocation(line: 162, column: 8, scope: !308)
!330 = !DILocation(line: 162, column: 11, scope: !308)
!331 = !DILocation(line: 163, column: 10, scope: !308)
!332 = !DILocation(line: 164, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !308, file: !13, line: 164, column: 8)
!334 = !DILocation(line: 164, column: 8, scope: !308)
!335 = !DILocation(line: 165, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !13, line: 165, column: 9)
!337 = distinct !DILexicalBlock(scope: !333, file: !13, line: 164, column: 13)
!338 = !DILocation(line: 165, column: 13, scope: !336)
!339 = !DILocation(line: 165, column: 9, scope: !337)
!340 = !DILocation(line: 166, column: 9, scope: !336)
!341 = !DILocation(line: 166, column: 6, scope: !336)
!342 = !DILocation(line: 167, column: 14, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !13, line: 167, column: 14)
!344 = !DILocation(line: 167, column: 18, scope: !343)
!345 = !DILocation(line: 167, column: 14, scope: !336)
!346 = !DILocation(line: 168, column: 10, scope: !343)
!347 = !DILocation(line: 168, column: 6, scope: !343)
!348 = !DILocation(line: 171, column: 11, scope: !349)
!349 = distinct !DILexicalBlock(scope: !343, file: !13, line: 169, column: 10)
!350 = !DILocation(line: 171, column: 6, scope: !349)
!351 = !DILocation(line: 172, column: 6, scope: !349)
!352 = !DILocation(line: 174, column: 5, scope: !337)
!353 = !DILocation(line: 176, column: 3, scope: !308)
!354 = !DILocation(line: 177, column: 2, scope: !281)
!355 = !DILocation(line: 150, column: 24, scope: !276)
!356 = !DILocation(line: 150, column: 2, scope: !276)
!357 = distinct !{!357, !279, !358, !134}
!358 = !DILocation(line: 177, column: 2, scope: !273)
!359 = !DILocation(line: 178, column: 10, scope: !202)
!360 = !DILocation(line: 178, column: 14, scope: !202)
!361 = !DILocation(line: 180, column: 22, scope: !202)
!362 = !DILocation(line: 180, column: 28, scope: !202)
!363 = !DILocation(line: 180, column: 26, scope: !202)
!364 = !DILocation(line: 180, column: 3, scope: !202)
!365 = !DILocation(line: 180, column: 11, scope: !202)
!366 = !DILocation(line: 181, column: 9, scope: !202)
!367 = !DILocation(line: 181, column: 2, scope: !202)
!368 = !DILocation(line: 182, column: 1, scope: !202)
