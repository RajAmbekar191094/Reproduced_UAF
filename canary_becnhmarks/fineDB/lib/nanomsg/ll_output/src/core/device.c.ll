; ModuleID = './src/core/device.c'
source_filename = "./src/core/device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i16, i16 }
%struct.nn_iovec = type { ptr, i64 }
%struct.nn_msghdr = type { ptr, i32, ptr, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"./src/core/device.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [21 x i8] c"opsz == sizeof (op1)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [21 x i8] c"opsz == sizeof (op2)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [8 x i8] c"rc == 0\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [23 x i8] c"opsz == sizeof (s1rcv)\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [11 x i8] c"s1rcv >= 0\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [23 x i8] c"opsz == sizeof (s1snd)\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [11 x i8] c"s1snd >= 0\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [23 x i8] c"opsz == sizeof (s2rcv)\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [11 x i8] c"s2rcv >= 0\00", align 1, !dbg !45
@.str.12 = private unnamed_addr constant [23 x i8] c"opsz == sizeof (s2snd)\00", align 1, !dbg !47
@.str.13 = private unnamed_addr constant [11 x i8] c"s2snd >= 0\00", align 1, !dbg !49
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !51
@.str.15 = private unnamed_addr constant [20 x i8] c"opsz == sizeof (op)\00", align 1, !dbg !56
@.str.16 = private unnamed_addr constant [8 x i8] c"rc != 0\00", align 1, !dbg !58

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_device(i32 noundef %0, i32 noundef %1) #0 !dbg !76 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata ptr %6, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata ptr %7, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata ptr %8, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata ptr %9, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %10, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata ptr %11, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata ptr %12, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata ptr %13, metadata !98, metadata !DIExpression()), !dbg !99
  %14 = load i32, ptr %4, align 4, !dbg !100
  %15 = icmp slt i32 %14, 0, !dbg !102
  br i1 %15, label %16, label %21, !dbg !103

16:                                               ; preds = %2
  %17 = load i32, ptr %5, align 4, !dbg !104
  %18 = icmp slt i32 %17, 0, !dbg !105
  br i1 %18, label %19, label %21, !dbg !106

19:                                               ; preds = %16
  %20 = call ptr @__errno_location() #6, !dbg !107
  store i32 9, ptr %20, align 4, !dbg !109
  store i32 -1, ptr %3, align 4, !dbg !110
  br label %449, !dbg !110

21:                                               ; preds = %16, %2
  %22 = load i32, ptr %5, align 4, !dbg !111
  %23 = icmp slt i32 %22, 0, !dbg !113
  br i1 %23, label %24, label %27, !dbg !114

24:                                               ; preds = %21
  %25 = load i32, ptr %4, align 4, !dbg !115
  %26 = call i32 @nn_device_loopback(i32 noundef %25), !dbg !116
  store i32 %26, ptr %3, align 4, !dbg !117
  br label %449, !dbg !117

27:                                               ; preds = %21
  %28 = load i32, ptr %4, align 4, !dbg !118
  %29 = icmp slt i32 %28, 0, !dbg !120
  br i1 %29, label %30, label %33, !dbg !121

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4, !dbg !122
  %32 = call i32 @nn_device_loopback(i32 noundef %31), !dbg !123
  store i32 %32, ptr %3, align 4, !dbg !124
  br label %449, !dbg !124

33:                                               ; preds = %27
  store i64 4, ptr %13, align 8, !dbg !125
  %34 = load i32, ptr %4, align 4, !dbg !126
  %35 = call i32 @nn_getsockopt(i32 noundef %34, i32 noundef 0, i32 noundef 12, ptr noundef %7, ptr noundef %13), !dbg !127
  store i32 %35, ptr %6, align 4, !dbg !128
  br label %36, !dbg !129

36:                                               ; preds = %33
  %37 = load i32, ptr %6, align 4, !dbg !130
  %38 = icmp eq i32 %37, 0, !dbg !130
  %39 = xor i1 %38, true, !dbg !130
  %40 = zext i1 %39 to i32, !dbg !130
  %41 = sext i32 %40 to i64, !dbg !130
  %42 = icmp ne i64 %41, 0, !dbg !130
  br i1 %42, label %43, label %51, !dbg !133

43:                                               ; preds = %36
  %44 = load ptr, ptr @stderr, align 8, !dbg !134
  %45 = call ptr @__errno_location() #6, !dbg !134
  %46 = load i32, ptr %45, align 4, !dbg !134
  %47 = call ptr @nn_err_strerror(i32 noundef %46), !dbg !134
  %48 = call ptr @__errno_location() #6, !dbg !134
  %49 = load i32, ptr %48, align 4, !dbg !134
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str, ptr noundef %47, i32 noundef %49, ptr noundef @.str.1, i32 noundef 71), !dbg !134
  call void @nn_err_abort() #7, !dbg !134
  unreachable, !dbg !134

51:                                               ; preds = %36
  br label %52, !dbg !133

52:                                               ; preds = %51
  br label %53, !dbg !136

53:                                               ; preds = %52
  %54 = load i64, ptr %13, align 8, !dbg !137
  %55 = icmp eq i64 %54, 4, !dbg !137
  %56 = xor i1 %55, true, !dbg !137
  %57 = zext i1 %56 to i32, !dbg !137
  %58 = sext i32 %57 to i64, !dbg !137
  %59 = icmp ne i64 %58, 0, !dbg !137
  br i1 %59, label %60, label %63, !dbg !140

60:                                               ; preds = %53
  %61 = load ptr, ptr @stderr, align 8, !dbg !141
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 72), !dbg !141
  call void @nn_err_abort() #7, !dbg !141
  unreachable, !dbg !141

63:                                               ; preds = %53
  br label %64, !dbg !140

64:                                               ; preds = %63
  store i64 4, ptr %13, align 8, !dbg !143
  %65 = load i32, ptr %5, align 4, !dbg !144
  %66 = call i32 @nn_getsockopt(i32 noundef %65, i32 noundef 0, i32 noundef 12, ptr noundef %8, ptr noundef %13), !dbg !145
  store i32 %66, ptr %6, align 4, !dbg !146
  br label %67, !dbg !147

67:                                               ; preds = %64
  %68 = load i32, ptr %6, align 4, !dbg !148
  %69 = icmp eq i32 %68, 0, !dbg !148
  %70 = xor i1 %69, true, !dbg !148
  %71 = zext i1 %70 to i32, !dbg !148
  %72 = sext i32 %71 to i64, !dbg !148
  %73 = icmp ne i64 %72, 0, !dbg !148
  br i1 %73, label %74, label %82, !dbg !151

74:                                               ; preds = %67
  %75 = load ptr, ptr @stderr, align 8, !dbg !152
  %76 = call ptr @__errno_location() #6, !dbg !152
  %77 = load i32, ptr %76, align 4, !dbg !152
  %78 = call ptr @nn_err_strerror(i32 noundef %77), !dbg !152
  %79 = call ptr @__errno_location() #6, !dbg !152
  %80 = load i32, ptr %79, align 4, !dbg !152
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str, ptr noundef %78, i32 noundef %80, ptr noundef @.str.1, i32 noundef 75), !dbg !152
  call void @nn_err_abort() #7, !dbg !152
  unreachable, !dbg !152

82:                                               ; preds = %67
  br label %83, !dbg !151

83:                                               ; preds = %82
  br label %84, !dbg !154

84:                                               ; preds = %83
  %85 = load i64, ptr %13, align 8, !dbg !155
  %86 = icmp eq i64 %85, 4, !dbg !155
  %87 = xor i1 %86, true, !dbg !155
  %88 = zext i1 %87 to i32, !dbg !155
  %89 = sext i32 %88 to i64, !dbg !155
  %90 = icmp ne i64 %89, 0, !dbg !155
  br i1 %90, label %91, label %94, !dbg !158

91:                                               ; preds = %84
  %92 = load ptr, ptr @stderr, align 8, !dbg !159
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 76), !dbg !159
  call void @nn_err_abort() #7, !dbg !159
  unreachable, !dbg !159

94:                                               ; preds = %84
  br label %95, !dbg !158

95:                                               ; preds = %94
  %96 = load i32, ptr %7, align 4, !dbg !161
  %97 = icmp ne i32 %96, 2, !dbg !163
  br i1 %97, label %101, label %98, !dbg !164

98:                                               ; preds = %95
  %99 = load i32, ptr %8, align 4, !dbg !165
  %100 = icmp ne i32 %99, 2, !dbg !166
  br i1 %100, label %101, label %103, !dbg !167

101:                                              ; preds = %98, %95
  %102 = call ptr @__errno_location() #6, !dbg !168
  store i32 22, ptr %102, align 4, !dbg !170
  store i32 -1, ptr %3, align 4, !dbg !171
  br label %449, !dbg !171

103:                                              ; preds = %98
  store i64 4, ptr %13, align 8, !dbg !172
  %104 = load i32, ptr %4, align 4, !dbg !173
  %105 = call i32 @nn_getsockopt(i32 noundef %104, i32 noundef 0, i32 noundef 13, ptr noundef %7, ptr noundef %13), !dbg !174
  store i32 %105, ptr %6, align 4, !dbg !175
  br label %106, !dbg !176

106:                                              ; preds = %103
  %107 = load i32, ptr %6, align 4, !dbg !177
  %108 = icmp eq i32 %107, 0, !dbg !177
  %109 = xor i1 %108, true, !dbg !177
  %110 = zext i1 %109 to i32, !dbg !177
  %111 = sext i32 %110 to i64, !dbg !177
  %112 = icmp ne i64 %111, 0, !dbg !177
  br i1 %112, label %113, label %121, !dbg !180

113:                                              ; preds = %106
  %114 = load ptr, ptr @stderr, align 8, !dbg !181
  %115 = call ptr @__errno_location() #6, !dbg !181
  %116 = load i32, ptr %115, align 4, !dbg !181
  %117 = call ptr @nn_err_strerror(i32 noundef %116), !dbg !181
  %118 = call ptr @__errno_location() #6, !dbg !181
  %119 = load i32, ptr %118, align 4, !dbg !181
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str, ptr noundef %117, i32 noundef %119, ptr noundef @.str.1, i32 noundef 85), !dbg !181
  call void @nn_err_abort() #7, !dbg !181
  unreachable, !dbg !181

121:                                              ; preds = %106
  br label %122, !dbg !180

122:                                              ; preds = %121
  br label %123, !dbg !183

123:                                              ; preds = %122
  %124 = load i64, ptr %13, align 8, !dbg !184
  %125 = icmp eq i64 %124, 4, !dbg !184
  %126 = xor i1 %125, true, !dbg !184
  %127 = zext i1 %126 to i32, !dbg !184
  %128 = sext i32 %127 to i64, !dbg !184
  %129 = icmp ne i64 %128, 0, !dbg !184
  br i1 %129, label %130, label %133, !dbg !187

130:                                              ; preds = %123
  %131 = load ptr, ptr @stderr, align 8, !dbg !188
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 86), !dbg !188
  call void @nn_err_abort() #7, !dbg !188
  unreachable, !dbg !188

133:                                              ; preds = %123
  br label %134, !dbg !187

134:                                              ; preds = %133
  store i64 4, ptr %13, align 8, !dbg !190
  %135 = load i32, ptr %5, align 4, !dbg !191
  %136 = call i32 @nn_getsockopt(i32 noundef %135, i32 noundef 0, i32 noundef 13, ptr noundef %8, ptr noundef %13), !dbg !192
  store i32 %136, ptr %6, align 4, !dbg !193
  br label %137, !dbg !194

137:                                              ; preds = %134
  %138 = load i32, ptr %6, align 4, !dbg !195
  %139 = icmp eq i32 %138, 0, !dbg !195
  %140 = xor i1 %139, true, !dbg !195
  %141 = zext i1 %140 to i32, !dbg !195
  %142 = sext i32 %141 to i64, !dbg !195
  %143 = icmp ne i64 %142, 0, !dbg !195
  br i1 %143, label %144, label %152, !dbg !198

144:                                              ; preds = %137
  %145 = load ptr, ptr @stderr, align 8, !dbg !199
  %146 = call ptr @__errno_location() #6, !dbg !199
  %147 = load i32, ptr %146, align 4, !dbg !199
  %148 = call ptr @nn_err_strerror(i32 noundef %147), !dbg !199
  %149 = call ptr @__errno_location() #6, !dbg !199
  %150 = load i32, ptr %149, align 4, !dbg !199
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef @.str, ptr noundef %148, i32 noundef %150, ptr noundef @.str.1, i32 noundef 89), !dbg !199
  call void @nn_err_abort() #7, !dbg !199
  unreachable, !dbg !199

152:                                              ; preds = %137
  br label %153, !dbg !198

153:                                              ; preds = %152
  br label %154, !dbg !201

154:                                              ; preds = %153
  %155 = load i64, ptr %13, align 8, !dbg !202
  %156 = icmp eq i64 %155, 4, !dbg !202
  %157 = xor i1 %156, true, !dbg !202
  %158 = zext i1 %157 to i32, !dbg !202
  %159 = sext i32 %158 to i64, !dbg !202
  %160 = icmp ne i64 %159, 0, !dbg !202
  br i1 %160, label %161, label %164, !dbg !205

161:                                              ; preds = %154
  %162 = load ptr, ptr @stderr, align 8, !dbg !206
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 90), !dbg !206
  call void @nn_err_abort() #7, !dbg !206
  unreachable, !dbg !206

164:                                              ; preds = %154
  br label %165, !dbg !205

165:                                              ; preds = %164
  %166 = load i32, ptr %7, align 4, !dbg !208
  %167 = sdiv i32 %166, 16, !dbg !210
  %168 = load i32, ptr %8, align 4, !dbg !211
  %169 = sdiv i32 %168, 16, !dbg !212
  %170 = icmp ne i32 %167, %169, !dbg !213
  br i1 %170, label %171, label %173, !dbg !214

171:                                              ; preds = %165
  %172 = call ptr @__errno_location() #6, !dbg !215
  store i32 22, ptr %172, align 4, !dbg !217
  store i32 -1, ptr %3, align 4, !dbg !218
  br label %449, !dbg !218

173:                                              ; preds = %165
  store i64 4, ptr %13, align 8, !dbg !219
  %174 = load i32, ptr %4, align 4, !dbg !220
  %175 = call i32 @nn_getsockopt(i32 noundef %174, i32 noundef 0, i32 noundef 11, ptr noundef %9, ptr noundef %13), !dbg !221
  store i32 %175, ptr %6, align 4, !dbg !222
  %176 = load i32, ptr %6, align 4, !dbg !223
  %177 = icmp slt i32 %176, 0, !dbg !225
  br i1 %177, label %178, label %182, !dbg !226

178:                                              ; preds = %173
  %179 = call i32 @nn_errno(), !dbg !227
  %180 = icmp eq i32 %179, 92, !dbg !228
  br i1 %180, label %181, label %182, !dbg !229

181:                                              ; preds = %178
  store i32 -1, ptr %9, align 4, !dbg !230
  br label %219, !dbg !231

182:                                              ; preds = %178, %173
  br label %183, !dbg !232

183:                                              ; preds = %182
  %184 = load i32, ptr %6, align 4, !dbg !234
  %185 = icmp eq i32 %184, 0, !dbg !234
  %186 = xor i1 %185, true, !dbg !234
  %187 = zext i1 %186 to i32, !dbg !234
  %188 = sext i32 %187 to i64, !dbg !234
  %189 = icmp ne i64 %188, 0, !dbg !234
  br i1 %189, label %190, label %193, !dbg !237

190:                                              ; preds = %183
  %191 = load ptr, ptr @stderr, align 8, !dbg !238
  %192 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 102), !dbg !238
  call void @nn_err_abort() #7, !dbg !238
  unreachable, !dbg !238

193:                                              ; preds = %183
  br label %194, !dbg !237

194:                                              ; preds = %193
  br label %195, !dbg !240

195:                                              ; preds = %194
  %196 = load i64, ptr %13, align 8, !dbg !241
  %197 = icmp eq i64 %196, 4, !dbg !241
  %198 = xor i1 %197, true, !dbg !241
  %199 = zext i1 %198 to i32, !dbg !241
  %200 = sext i32 %199 to i64, !dbg !241
  %201 = icmp ne i64 %200, 0, !dbg !241
  br i1 %201, label %202, label %205, !dbg !244

202:                                              ; preds = %195
  %203 = load ptr, ptr @stderr, align 8, !dbg !245
  %204 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 103), !dbg !245
  call void @nn_err_abort() #7, !dbg !245
  unreachable, !dbg !245

205:                                              ; preds = %195
  br label %206, !dbg !244

206:                                              ; preds = %205
  br label %207, !dbg !247

207:                                              ; preds = %206
  %208 = load i32, ptr %9, align 4, !dbg !248
  %209 = icmp sge i32 %208, 0, !dbg !248
  %210 = xor i1 %209, true, !dbg !248
  %211 = zext i1 %210 to i32, !dbg !248
  %212 = sext i32 %211 to i64, !dbg !248
  %213 = icmp ne i64 %212, 0, !dbg !248
  br i1 %213, label %214, label %217, !dbg !251

214:                                              ; preds = %207
  %215 = load ptr, ptr @stderr, align 8, !dbg !252
  %216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 104), !dbg !252
  call void @nn_err_abort() #7, !dbg !252
  unreachable, !dbg !252

217:                                              ; preds = %207
  br label %218, !dbg !251

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218, %181
  store i64 4, ptr %13, align 8, !dbg !254
  %220 = load i32, ptr %4, align 4, !dbg !255
  %221 = call i32 @nn_getsockopt(i32 noundef %220, i32 noundef 0, i32 noundef 10, ptr noundef %10, ptr noundef %13), !dbg !256
  store i32 %221, ptr %6, align 4, !dbg !257
  %222 = load i32, ptr %6, align 4, !dbg !258
  %223 = icmp slt i32 %222, 0, !dbg !260
  br i1 %223, label %224, label %228, !dbg !261

224:                                              ; preds = %219
  %225 = call i32 @nn_errno(), !dbg !262
  %226 = icmp eq i32 %225, 92, !dbg !263
  br i1 %226, label %227, label %228, !dbg !264

227:                                              ; preds = %224
  store i32 -1, ptr %10, align 4, !dbg !265
  br label %265, !dbg !266

228:                                              ; preds = %224, %219
  br label %229, !dbg !267

229:                                              ; preds = %228
  %230 = load i32, ptr %6, align 4, !dbg !269
  %231 = icmp eq i32 %230, 0, !dbg !269
  %232 = xor i1 %231, true, !dbg !269
  %233 = zext i1 %232 to i32, !dbg !269
  %234 = sext i32 %233 to i64, !dbg !269
  %235 = icmp ne i64 %234, 0, !dbg !269
  br i1 %235, label %236, label %239, !dbg !272

236:                                              ; preds = %229
  %237 = load ptr, ptr @stderr, align 8, !dbg !273
  %238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %237, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 111), !dbg !273
  call void @nn_err_abort() #7, !dbg !273
  unreachable, !dbg !273

239:                                              ; preds = %229
  br label %240, !dbg !272

240:                                              ; preds = %239
  br label %241, !dbg !275

241:                                              ; preds = %240
  %242 = load i64, ptr %13, align 8, !dbg !276
  %243 = icmp eq i64 %242, 4, !dbg !276
  %244 = xor i1 %243, true, !dbg !276
  %245 = zext i1 %244 to i32, !dbg !276
  %246 = sext i32 %245 to i64, !dbg !276
  %247 = icmp ne i64 %246, 0, !dbg !276
  br i1 %247, label %248, label %251, !dbg !279

248:                                              ; preds = %241
  %249 = load ptr, ptr @stderr, align 8, !dbg !280
  %250 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %249, ptr noundef @.str.2, ptr noundef @.str.8, ptr noundef @.str.1, i32 noundef 112), !dbg !280
  call void @nn_err_abort() #7, !dbg !280
  unreachable, !dbg !280

251:                                              ; preds = %241
  br label %252, !dbg !279

252:                                              ; preds = %251
  br label %253, !dbg !282

253:                                              ; preds = %252
  %254 = load i32, ptr %10, align 4, !dbg !283
  %255 = icmp sge i32 %254, 0, !dbg !283
  %256 = xor i1 %255, true, !dbg !283
  %257 = zext i1 %256 to i32, !dbg !283
  %258 = sext i32 %257 to i64, !dbg !283
  %259 = icmp ne i64 %258, 0, !dbg !283
  br i1 %259, label %260, label %263, !dbg !286

260:                                              ; preds = %253
  %261 = load ptr, ptr @stderr, align 8, !dbg !287
  %262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef @.str.2, ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 113), !dbg !287
  call void @nn_err_abort() #7, !dbg !287
  unreachable, !dbg !287

263:                                              ; preds = %253
  br label %264, !dbg !286

264:                                              ; preds = %263
  br label %265

265:                                              ; preds = %264, %227
  store i64 4, ptr %13, align 8, !dbg !289
  %266 = load i32, ptr %5, align 4, !dbg !290
  %267 = call i32 @nn_getsockopt(i32 noundef %266, i32 noundef 0, i32 noundef 11, ptr noundef %11, ptr noundef %13), !dbg !291
  store i32 %267, ptr %6, align 4, !dbg !292
  %268 = load i32, ptr %6, align 4, !dbg !293
  %269 = icmp slt i32 %268, 0, !dbg !295
  br i1 %269, label %270, label %274, !dbg !296

270:                                              ; preds = %265
  %271 = call i32 @nn_errno(), !dbg !297
  %272 = icmp eq i32 %271, 92, !dbg !298
  br i1 %272, label %273, label %274, !dbg !299

273:                                              ; preds = %270
  store i32 -1, ptr %11, align 4, !dbg !300
  br label %311, !dbg !301

274:                                              ; preds = %270, %265
  br label %275, !dbg !302

275:                                              ; preds = %274
  %276 = load i32, ptr %6, align 4, !dbg !304
  %277 = icmp eq i32 %276, 0, !dbg !304
  %278 = xor i1 %277, true, !dbg !304
  %279 = zext i1 %278 to i32, !dbg !304
  %280 = sext i32 %279 to i64, !dbg !304
  %281 = icmp ne i64 %280, 0, !dbg !304
  br i1 %281, label %282, label %285, !dbg !307

282:                                              ; preds = %275
  %283 = load ptr, ptr @stderr, align 8, !dbg !308
  %284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 120), !dbg !308
  call void @nn_err_abort() #7, !dbg !308
  unreachable, !dbg !308

285:                                              ; preds = %275
  br label %286, !dbg !307

286:                                              ; preds = %285
  br label %287, !dbg !310

287:                                              ; preds = %286
  %288 = load i64, ptr %13, align 8, !dbg !311
  %289 = icmp eq i64 %288, 4, !dbg !311
  %290 = xor i1 %289, true, !dbg !311
  %291 = zext i1 %290 to i32, !dbg !311
  %292 = sext i32 %291 to i64, !dbg !311
  %293 = icmp ne i64 %292, 0, !dbg !311
  br i1 %293, label %294, label %297, !dbg !314

294:                                              ; preds = %287
  %295 = load ptr, ptr @stderr, align 8, !dbg !315
  %296 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef @.str.2, ptr noundef @.str.10, ptr noundef @.str.1, i32 noundef 121), !dbg !315
  call void @nn_err_abort() #7, !dbg !315
  unreachable, !dbg !315

297:                                              ; preds = %287
  br label %298, !dbg !314

298:                                              ; preds = %297
  br label %299, !dbg !317

299:                                              ; preds = %298
  %300 = load i32, ptr %11, align 4, !dbg !318
  %301 = icmp sge i32 %300, 0, !dbg !318
  %302 = xor i1 %301, true, !dbg !318
  %303 = zext i1 %302 to i32, !dbg !318
  %304 = sext i32 %303 to i64, !dbg !318
  %305 = icmp ne i64 %304, 0, !dbg !318
  br i1 %305, label %306, label %309, !dbg !321

306:                                              ; preds = %299
  %307 = load ptr, ptr @stderr, align 8, !dbg !322
  %308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef @.str.2, ptr noundef @.str.11, ptr noundef @.str.1, i32 noundef 122), !dbg !322
  call void @nn_err_abort() #7, !dbg !322
  unreachable, !dbg !322

309:                                              ; preds = %299
  br label %310, !dbg !321

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310, %273
  store i64 4, ptr %13, align 8, !dbg !324
  %312 = load i32, ptr %5, align 4, !dbg !325
  %313 = call i32 @nn_getsockopt(i32 noundef %312, i32 noundef 0, i32 noundef 10, ptr noundef %12, ptr noundef %13), !dbg !326
  store i32 %313, ptr %6, align 4, !dbg !327
  %314 = load i32, ptr %6, align 4, !dbg !328
  %315 = icmp slt i32 %314, 0, !dbg !330
  br i1 %315, label %316, label %320, !dbg !331

316:                                              ; preds = %311
  %317 = call i32 @nn_errno(), !dbg !332
  %318 = icmp eq i32 %317, 92, !dbg !333
  br i1 %318, label %319, label %320, !dbg !334

319:                                              ; preds = %316
  store i32 -1, ptr %12, align 4, !dbg !335
  br label %357, !dbg !336

320:                                              ; preds = %316, %311
  br label %321, !dbg !337

321:                                              ; preds = %320
  %322 = load i32, ptr %6, align 4, !dbg !339
  %323 = icmp eq i32 %322, 0, !dbg !339
  %324 = xor i1 %323, true, !dbg !339
  %325 = zext i1 %324 to i32, !dbg !339
  %326 = sext i32 %325 to i64, !dbg !339
  %327 = icmp ne i64 %326, 0, !dbg !339
  br i1 %327, label %328, label %331, !dbg !342

328:                                              ; preds = %321
  %329 = load ptr, ptr @stderr, align 8, !dbg !343
  %330 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %329, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 129), !dbg !343
  call void @nn_err_abort() #7, !dbg !343
  unreachable, !dbg !343

331:                                              ; preds = %321
  br label %332, !dbg !342

332:                                              ; preds = %331
  br label %333, !dbg !345

333:                                              ; preds = %332
  %334 = load i64, ptr %13, align 8, !dbg !346
  %335 = icmp eq i64 %334, 4, !dbg !346
  %336 = xor i1 %335, true, !dbg !346
  %337 = zext i1 %336 to i32, !dbg !346
  %338 = sext i32 %337 to i64, !dbg !346
  %339 = icmp ne i64 %338, 0, !dbg !346
  br i1 %339, label %340, label %343, !dbg !349

340:                                              ; preds = %333
  %341 = load ptr, ptr @stderr, align 8, !dbg !350
  %342 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %341, ptr noundef @.str.2, ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 130), !dbg !350
  call void @nn_err_abort() #7, !dbg !350
  unreachable, !dbg !350

343:                                              ; preds = %333
  br label %344, !dbg !349

344:                                              ; preds = %343
  br label %345, !dbg !352

345:                                              ; preds = %344
  %346 = load i32, ptr %12, align 4, !dbg !353
  %347 = icmp sge i32 %346, 0, !dbg !353
  %348 = xor i1 %347, true, !dbg !353
  %349 = zext i1 %348 to i32, !dbg !353
  %350 = sext i32 %349 to i64, !dbg !353
  %351 = icmp ne i64 %350, 0, !dbg !353
  br i1 %351, label %352, label %355, !dbg !356

352:                                              ; preds = %345
  %353 = load ptr, ptr @stderr, align 8, !dbg !357
  %354 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %353, ptr noundef @.str.2, ptr noundef @.str.13, ptr noundef @.str.1, i32 noundef 131), !dbg !357
  call void @nn_err_abort() #7, !dbg !357
  unreachable, !dbg !357

355:                                              ; preds = %345
  br label %356, !dbg !356

356:                                              ; preds = %355
  br label %357

357:                                              ; preds = %356, %319
  %358 = load i32, ptr %9, align 4, !dbg !359
  %359 = icmp ne i32 %358, -1, !dbg !361
  br i1 %359, label %360, label %365, !dbg !362

360:                                              ; preds = %357
  %361 = load i32, ptr %12, align 4, !dbg !363
  %362 = icmp eq i32 %361, -1, !dbg !364
  br i1 %362, label %363, label %365, !dbg !365

363:                                              ; preds = %360
  %364 = call ptr @__errno_location() #6, !dbg !366
  store i32 22, ptr %364, align 4, !dbg !368
  store i32 -1, ptr %3, align 4, !dbg !369
  br label %449, !dbg !369

365:                                              ; preds = %360, %357
  %366 = load i32, ptr %10, align 4, !dbg !370
  %367 = icmp ne i32 %366, -1, !dbg !372
  br i1 %367, label %368, label %373, !dbg !373

368:                                              ; preds = %365
  %369 = load i32, ptr %11, align 4, !dbg !374
  %370 = icmp eq i32 %369, -1, !dbg !375
  br i1 %370, label %371, label %373, !dbg !376

371:                                              ; preds = %368
  %372 = call ptr @__errno_location() #6, !dbg !377
  store i32 22, ptr %372, align 4, !dbg !379
  store i32 -1, ptr %3, align 4, !dbg !380
  br label %449, !dbg !380

373:                                              ; preds = %368, %365
  %374 = load i32, ptr %11, align 4, !dbg !381
  %375 = icmp ne i32 %374, -1, !dbg !383
  br i1 %375, label %376, label %381, !dbg !384

376:                                              ; preds = %373
  %377 = load i32, ptr %10, align 4, !dbg !385
  %378 = icmp eq i32 %377, -1, !dbg !386
  br i1 %378, label %379, label %381, !dbg !387

379:                                              ; preds = %376
  %380 = call ptr @__errno_location() #6, !dbg !388
  store i32 22, ptr %380, align 4, !dbg !390
  store i32 -1, ptr %3, align 4, !dbg !391
  br label %449, !dbg !391

381:                                              ; preds = %376, %373
  %382 = load i32, ptr %12, align 4, !dbg !392
  %383 = icmp ne i32 %382, -1, !dbg !394
  br i1 %383, label %384, label %389, !dbg !395

384:                                              ; preds = %381
  %385 = load i32, ptr %9, align 4, !dbg !396
  %386 = icmp eq i32 %385, -1, !dbg !397
  br i1 %386, label %387, label %389, !dbg !398

387:                                              ; preds = %384
  %388 = call ptr @__errno_location() #6, !dbg !399
  store i32 22, ptr %388, align 4, !dbg !401
  store i32 -1, ptr %3, align 4, !dbg !402
  br label %449, !dbg !402

389:                                              ; preds = %384, %381
  %390 = load i32, ptr %9, align 4, !dbg !403
  %391 = icmp ne i32 %390, -1, !dbg !405
  br i1 %391, label %392, label %409, !dbg !406

392:                                              ; preds = %389
  %393 = load i32, ptr %10, align 4, !dbg !407
  %394 = icmp ne i32 %393, -1, !dbg !408
  br i1 %394, label %395, label %409, !dbg !409

395:                                              ; preds = %392
  %396 = load i32, ptr %11, align 4, !dbg !410
  %397 = icmp ne i32 %396, -1, !dbg !411
  br i1 %397, label %398, label %409, !dbg !412

398:                                              ; preds = %395
  %399 = load i32, ptr %12, align 4, !dbg !413
  %400 = icmp ne i32 %399, -1, !dbg !414
  br i1 %400, label %401, label %409, !dbg !415

401:                                              ; preds = %398
  %402 = load i32, ptr %4, align 4, !dbg !416
  %403 = load i32, ptr %9, align 4, !dbg !417
  %404 = load i32, ptr %10, align 4, !dbg !418
  %405 = load i32, ptr %5, align 4, !dbg !419
  %406 = load i32, ptr %11, align 4, !dbg !420
  %407 = load i32, ptr %12, align 4, !dbg !421
  %408 = call i32 @nn_device_twoway(i32 noundef %402, i32 noundef %403, i32 noundef %404, i32 noundef %405, i32 noundef %406, i32 noundef %407), !dbg !422
  store i32 %408, ptr %3, align 4, !dbg !423
  br label %449, !dbg !423

409:                                              ; preds = %398, %395, %392, %389
  %410 = load i32, ptr %9, align 4, !dbg !424
  %411 = icmp ne i32 %410, -1, !dbg !426
  br i1 %411, label %412, label %427, !dbg !427

412:                                              ; preds = %409
  %413 = load i32, ptr %10, align 4, !dbg !428
  %414 = icmp eq i32 %413, -1, !dbg !429
  br i1 %414, label %415, label %427, !dbg !430

415:                                              ; preds = %412
  %416 = load i32, ptr %11, align 4, !dbg !431
  %417 = icmp eq i32 %416, -1, !dbg !432
  br i1 %417, label %418, label %427, !dbg !433

418:                                              ; preds = %415
  %419 = load i32, ptr %12, align 4, !dbg !434
  %420 = icmp ne i32 %419, -1, !dbg !435
  br i1 %420, label %421, label %427, !dbg !436

421:                                              ; preds = %418
  %422 = load i32, ptr %4, align 4, !dbg !437
  %423 = load i32, ptr %9, align 4, !dbg !438
  %424 = load i32, ptr %5, align 4, !dbg !439
  %425 = load i32, ptr %12, align 4, !dbg !440
  %426 = call i32 @nn_device_oneway(i32 noundef %422, i32 noundef %423, i32 noundef %424, i32 noundef %425), !dbg !441
  store i32 %426, ptr %3, align 4, !dbg !442
  br label %449, !dbg !442

427:                                              ; preds = %418, %415, %412, %409
  %428 = load i32, ptr %9, align 4, !dbg !443
  %429 = icmp eq i32 %428, -1, !dbg !445
  br i1 %429, label %430, label %445, !dbg !446

430:                                              ; preds = %427
  %431 = load i32, ptr %10, align 4, !dbg !447
  %432 = icmp ne i32 %431, -1, !dbg !448
  br i1 %432, label %433, label %445, !dbg !449

433:                                              ; preds = %430
  %434 = load i32, ptr %11, align 4, !dbg !450
  %435 = icmp ne i32 %434, -1, !dbg !451
  br i1 %435, label %436, label %445, !dbg !452

436:                                              ; preds = %433
  %437 = load i32, ptr %12, align 4, !dbg !453
  %438 = icmp eq i32 %437, -1, !dbg !454
  br i1 %438, label %439, label %445, !dbg !455

439:                                              ; preds = %436
  %440 = load i32, ptr %5, align 4, !dbg !456
  %441 = load i32, ptr %11, align 4, !dbg !457
  %442 = load i32, ptr %4, align 4, !dbg !458
  %443 = load i32, ptr %10, align 4, !dbg !459
  %444 = call i32 @nn_device_oneway(i32 noundef %440, i32 noundef %441, i32 noundef %442, i32 noundef %443), !dbg !460
  store i32 %444, ptr %3, align 4, !dbg !461
  br label %449, !dbg !461

445:                                              ; preds = %436, %433, %430, %427
  br label %446, !dbg !462

446:                                              ; preds = %445
  %447 = load ptr, ptr @stderr, align 8, !dbg !463
  %448 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %447, ptr noundef @.str.2, ptr noundef @.str.14, ptr noundef @.str.1, i32 noundef 165), !dbg !463
  call void @nn_err_abort() #7, !dbg !463
  unreachable, !dbg !463

449:                                              ; preds = %19, %24, %30, %101, %171, %363, %371, %379, %387, %401, %421, %439
  %450 = load i32, ptr %3, align 4, !dbg !467
  ret i32 %450, !dbg !467
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_device_loopback(i32 noundef %0) #0 !dbg !468 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata ptr %4, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata ptr %5, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata ptr %6, metadata !477, metadata !DIExpression()), !dbg !478
  store i64 4, ptr %6, align 8, !dbg !479
  %7 = load i32, ptr %3, align 4, !dbg !480
  %8 = call i32 @nn_getsockopt(i32 noundef %7, i32 noundef 0, i32 noundef 12, ptr noundef %5, ptr noundef %6), !dbg !481
  store i32 %8, ptr %4, align 4, !dbg !482
  br label %9, !dbg !483

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 4, !dbg !484
  %11 = icmp eq i32 %10, 0, !dbg !484
  %12 = xor i1 %11, true, !dbg !484
  %13 = zext i1 %12 to i32, !dbg !484
  %14 = sext i32 %13 to i64, !dbg !484
  %15 = icmp ne i64 %14, 0, !dbg !484
  br i1 %15, label %16, label %24, !dbg !487

16:                                               ; preds = %9
  %17 = load ptr, ptr @stderr, align 8, !dbg !488
  %18 = call ptr @__errno_location() #6, !dbg !488
  %19 = load i32, ptr %18, align 4, !dbg !488
  %20 = call ptr @nn_err_strerror(i32 noundef %19), !dbg !488
  %21 = call ptr @__errno_location() #6, !dbg !488
  %22 = load i32, ptr %21, align 4, !dbg !488
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str, ptr noundef %20, i32 noundef %22, ptr noundef @.str.1, i32 noundef 177), !dbg !488
  call void @nn_err_abort() #7, !dbg !488
  unreachable, !dbg !488

24:                                               ; preds = %9
  br label %25, !dbg !487

25:                                               ; preds = %24
  br label %26, !dbg !490

26:                                               ; preds = %25
  %27 = load i64, ptr %6, align 8, !dbg !491
  %28 = icmp eq i64 %27, 4, !dbg !491
  %29 = xor i1 %28, true, !dbg !491
  %30 = zext i1 %29 to i32, !dbg !491
  %31 = sext i32 %30 to i64, !dbg !491
  %32 = icmp ne i64 %31, 0, !dbg !491
  br i1 %32, label %33, label %36, !dbg !494

33:                                               ; preds = %26
  %34 = load ptr, ptr @stderr, align 8, !dbg !495
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.2, ptr noundef @.str.15, ptr noundef @.str.1, i32 noundef 178), !dbg !495
  call void @nn_err_abort() #7, !dbg !495
  unreachable, !dbg !495

36:                                               ; preds = %26
  br label %37, !dbg !494

37:                                               ; preds = %36
  %38 = load i32, ptr %5, align 4, !dbg !497
  %39 = icmp ne i32 %38, 2, !dbg !499
  br i1 %39, label %40, label %42, !dbg !500

40:                                               ; preds = %37
  %41 = call ptr @__errno_location() #6, !dbg !501
  store i32 22, ptr %41, align 4, !dbg !503
  store i32 -1, ptr %2, align 4, !dbg !504
  br label %54, !dbg !504

42:                                               ; preds = %37
  br label %43, !dbg !505

43:                                               ; preds = %42, %53
  %44 = load i32, ptr %3, align 4, !dbg !506
  %45 = load i32, ptr %3, align 4, !dbg !508
  %46 = call i32 @nn_device_mvmsg(i32 noundef %44, i32 noundef %45, i32 noundef 0), !dbg !509
  store i32 %46, ptr %4, align 4, !dbg !510
  %47 = load i32, ptr %4, align 4, !dbg !511
  %48 = icmp slt i32 %47, 0, !dbg !511
  %49 = zext i1 %48 to i32, !dbg !511
  %50 = sext i32 %49 to i64, !dbg !511
  %51 = icmp ne i64 %50, 0, !dbg !511
  br i1 %51, label %52, label %53, !dbg !513

52:                                               ; preds = %43
  store i32 -1, ptr %2, align 4, !dbg !514
  br label %54, !dbg !514

53:                                               ; preds = %43
  br label %43, !dbg !505, !llvm.loop !515

54:                                               ; preds = %52, %40
  %55 = load i32, ptr %2, align 4, !dbg !517
  ret i32 %55, !dbg !517
}

declare i32 @nn_getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare ptr @nn_err_strerror(i32 noundef) #3

; Function Attrs: noreturn
declare void @nn_err_abort() #4

declare i32 @nn_errno() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_device_twoway(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !518 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x %struct.pollfd], align 16
  store i32 %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !521, metadata !DIExpression()), !dbg !522
  store i32 %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !523, metadata !DIExpression()), !dbg !524
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !525, metadata !DIExpression()), !dbg !526
  store i32 %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !527, metadata !DIExpression()), !dbg !528
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !529, metadata !DIExpression()), !dbg !530
  store i32 %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata ptr %14, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata ptr %15, metadata !535, metadata !DIExpression()), !dbg !546
  %16 = load i32, ptr %9, align 4, !dbg !547
  %17 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 0, !dbg !548
  %18 = getelementptr inbounds %struct.pollfd, ptr %17, i32 0, i32 0, !dbg !549
  store i32 %16, ptr %18, align 16, !dbg !550
  %19 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 0, !dbg !551
  %20 = getelementptr inbounds %struct.pollfd, ptr %19, i32 0, i32 1, !dbg !552
  store i16 1, ptr %20, align 4, !dbg !553
  %21 = load i32, ptr %10, align 4, !dbg !554
  %22 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 1, !dbg !555
  %23 = getelementptr inbounds %struct.pollfd, ptr %22, i32 0, i32 0, !dbg !556
  store i32 %21, ptr %23, align 8, !dbg !557
  %24 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 1, !dbg !558
  %25 = getelementptr inbounds %struct.pollfd, ptr %24, i32 0, i32 1, !dbg !559
  store i16 1, ptr %25, align 4, !dbg !560
  %26 = load i32, ptr %12, align 4, !dbg !561
  %27 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 2, !dbg !562
  %28 = getelementptr inbounds %struct.pollfd, ptr %27, i32 0, i32 0, !dbg !563
  store i32 %26, ptr %28, align 16, !dbg !564
  %29 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 2, !dbg !565
  %30 = getelementptr inbounds %struct.pollfd, ptr %29, i32 0, i32 1, !dbg !566
  store i16 1, ptr %30, align 4, !dbg !567
  %31 = load i32, ptr %13, align 4, !dbg !568
  %32 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 3, !dbg !569
  %33 = getelementptr inbounds %struct.pollfd, ptr %32, i32 0, i32 0, !dbg !570
  store i32 %31, ptr %33, align 8, !dbg !571
  %34 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 3, !dbg !572
  %35 = getelementptr inbounds %struct.pollfd, ptr %34, i32 0, i32 1, !dbg !573
  store i16 1, ptr %35, align 4, !dbg !574
  br label %36, !dbg !575

36:                                               ; preds = %6, %174
  %37 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 0, !dbg !576
  %38 = call i32 @poll(ptr noundef %37, i64 noundef 4, i32 noundef -1), !dbg !578
  store i32 %38, ptr %14, align 4, !dbg !579
  br label %39, !dbg !580

39:                                               ; preds = %36
  %40 = load i32, ptr %14, align 4, !dbg !581
  %41 = icmp sge i32 %40, 0, !dbg !581
  %42 = xor i1 %41, true, !dbg !581
  %43 = zext i1 %42 to i32, !dbg !581
  %44 = sext i32 %43 to i64, !dbg !581
  %45 = icmp ne i64 %44, 0, !dbg !581
  br i1 %45, label %46, label %54, !dbg !584

46:                                               ; preds = %39
  %47 = load ptr, ptr @stderr, align 8, !dbg !585
  %48 = call ptr @__errno_location() #6, !dbg !585
  %49 = load i32, ptr %48, align 4, !dbg !585
  %50 = call ptr @nn_err_strerror(i32 noundef %49), !dbg !585
  %51 = call ptr @__errno_location() #6, !dbg !585
  %52 = load i32, ptr %51, align 4, !dbg !585
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str, ptr noundef %50, i32 noundef %52, ptr noundef @.str.1, i32 noundef 279), !dbg !585
  call void @nn_err_abort() #7, !dbg !585
  unreachable, !dbg !585

54:                                               ; preds = %39
  br label %55, !dbg !584

55:                                               ; preds = %54
  %56 = load i32, ptr %14, align 4, !dbg !587
  %57 = icmp slt i32 %56, 0, !dbg !587
  br i1 %57, label %58, label %62, !dbg !587

58:                                               ; preds = %55
  %59 = call ptr @__errno_location() #6, !dbg !587
  %60 = load i32, ptr %59, align 4, !dbg !587
  %61 = icmp eq i32 %60, 4, !dbg !587
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ false, %55 ], [ %61, %58 ], !dbg !589
  %64 = zext i1 %63 to i32, !dbg !587
  %65 = sext i32 %64 to i64, !dbg !587
  %66 = icmp ne i64 %65, 0, !dbg !587
  br i1 %66, label %67, label %68, !dbg !590

67:                                               ; preds = %62
  store i32 -1, ptr %7, align 4, !dbg !591
  br label %175, !dbg !591

68:                                               ; preds = %62
  br label %69, !dbg !592

69:                                               ; preds = %68
  %70 = load i32, ptr %14, align 4, !dbg !593
  %71 = icmp ne i32 %70, 0, !dbg !593
  %72 = xor i1 %71, true, !dbg !593
  %73 = zext i1 %72 to i32, !dbg !593
  %74 = sext i32 %73 to i64, !dbg !593
  %75 = icmp ne i64 %74, 0, !dbg !593
  br i1 %75, label %76, label %79, !dbg !596

76:                                               ; preds = %69
  %77 = load ptr, ptr @stderr, align 8, !dbg !597
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.2, ptr noundef @.str.16, ptr noundef @.str.1, i32 noundef 282), !dbg !597
  call void @nn_err_abort() #7, !dbg !597
  unreachable, !dbg !597

79:                                               ; preds = %69
  br label %80, !dbg !596

80:                                               ; preds = %79
  %81 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 0, !dbg !599
  %82 = getelementptr inbounds %struct.pollfd, ptr %81, i32 0, i32 2, !dbg !601
  %83 = load i16, ptr %82, align 2, !dbg !601
  %84 = sext i16 %83 to i32, !dbg !599
  %85 = and i32 %84, 1, !dbg !602
  %86 = icmp ne i32 %85, 0, !dbg !602
  br i1 %86, label %87, label %90, !dbg !603

87:                                               ; preds = %80
  %88 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 0, !dbg !604
  %89 = getelementptr inbounds %struct.pollfd, ptr %88, i32 0, i32 1, !dbg !605
  store i16 0, ptr %89, align 4, !dbg !606
  br label %90, !dbg !604

90:                                               ; preds = %87, %80
  %91 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 1, !dbg !607
  %92 = getelementptr inbounds %struct.pollfd, ptr %91, i32 0, i32 2, !dbg !609
  %93 = load i16, ptr %92, align 2, !dbg !609
  %94 = sext i16 %93 to i32, !dbg !607
  %95 = and i32 %94, 1, !dbg !610
  %96 = icmp ne i32 %95, 0, !dbg !610
  br i1 %96, label %97, label %100, !dbg !611

97:                                               ; preds = %90
  %98 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 1, !dbg !612
  %99 = getelementptr inbounds %struct.pollfd, ptr %98, i32 0, i32 1, !dbg !613
  store i16 0, ptr %99, align 4, !dbg !614
  br label %100, !dbg !612

100:                                              ; preds = %97, %90
  %101 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 2, !dbg !615
  %102 = getelementptr inbounds %struct.pollfd, ptr %101, i32 0, i32 2, !dbg !617
  %103 = load i16, ptr %102, align 2, !dbg !617
  %104 = sext i16 %103 to i32, !dbg !615
  %105 = and i32 %104, 1, !dbg !618
  %106 = icmp ne i32 %105, 0, !dbg !618
  br i1 %106, label %107, label %110, !dbg !619

107:                                              ; preds = %100
  %108 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 2, !dbg !620
  %109 = getelementptr inbounds %struct.pollfd, ptr %108, i32 0, i32 1, !dbg !621
  store i16 0, ptr %109, align 4, !dbg !622
  br label %110, !dbg !620

110:                                              ; preds = %107, %100
  %111 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 3, !dbg !623
  %112 = getelementptr inbounds %struct.pollfd, ptr %111, i32 0, i32 2, !dbg !625
  %113 = load i16, ptr %112, align 2, !dbg !625
  %114 = sext i16 %113 to i32, !dbg !623
  %115 = and i32 %114, 1, !dbg !626
  %116 = icmp ne i32 %115, 0, !dbg !626
  br i1 %116, label %117, label %120, !dbg !627

117:                                              ; preds = %110
  %118 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 3, !dbg !628
  %119 = getelementptr inbounds %struct.pollfd, ptr %118, i32 0, i32 1, !dbg !629
  store i16 0, ptr %119, align 4, !dbg !630
  br label %120, !dbg !628

120:                                              ; preds = %117, %110
  %121 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 0, !dbg !631
  %122 = getelementptr inbounds %struct.pollfd, ptr %121, i32 0, i32 1, !dbg !633
  %123 = load i16, ptr %122, align 4, !dbg !633
  %124 = sext i16 %123 to i32, !dbg !631
  %125 = icmp eq i32 %124, 0, !dbg !634
  br i1 %125, label %126, label %147, !dbg !635

126:                                              ; preds = %120
  %127 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 3, !dbg !636
  %128 = getelementptr inbounds %struct.pollfd, ptr %127, i32 0, i32 1, !dbg !637
  %129 = load i16, ptr %128, align 4, !dbg !637
  %130 = sext i16 %129 to i32, !dbg !636
  %131 = icmp eq i32 %130, 0, !dbg !638
  br i1 %131, label %132, label %147, !dbg !639

132:                                              ; preds = %126
  %133 = load i32, ptr %8, align 4, !dbg !640
  %134 = load i32, ptr %11, align 4, !dbg !642
  %135 = call i32 @nn_device_mvmsg(i32 noundef %133, i32 noundef %134, i32 noundef 1), !dbg !643
  store i32 %135, ptr %14, align 4, !dbg !644
  %136 = load i32, ptr %14, align 4, !dbg !645
  %137 = icmp slt i32 %136, 0, !dbg !645
  %138 = zext i1 %137 to i32, !dbg !645
  %139 = sext i32 %138 to i64, !dbg !645
  %140 = icmp ne i64 %139, 0, !dbg !645
  br i1 %140, label %141, label %142, !dbg !647

141:                                              ; preds = %132
  store i32 -1, ptr %7, align 4, !dbg !648
  br label %175, !dbg !648

142:                                              ; preds = %132
  %143 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 0, !dbg !649
  %144 = getelementptr inbounds %struct.pollfd, ptr %143, i32 0, i32 1, !dbg !650
  store i16 1, ptr %144, align 4, !dbg !651
  %145 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 3, !dbg !652
  %146 = getelementptr inbounds %struct.pollfd, ptr %145, i32 0, i32 1, !dbg !653
  store i16 1, ptr %146, align 4, !dbg !654
  br label %147, !dbg !655

147:                                              ; preds = %142, %126, %120
  %148 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 2, !dbg !656
  %149 = getelementptr inbounds %struct.pollfd, ptr %148, i32 0, i32 1, !dbg !658
  %150 = load i16, ptr %149, align 4, !dbg !658
  %151 = sext i16 %150 to i32, !dbg !656
  %152 = icmp eq i32 %151, 0, !dbg !659
  br i1 %152, label %153, label %174, !dbg !660

153:                                              ; preds = %147
  %154 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 1, !dbg !661
  %155 = getelementptr inbounds %struct.pollfd, ptr %154, i32 0, i32 1, !dbg !662
  %156 = load i16, ptr %155, align 4, !dbg !662
  %157 = sext i16 %156 to i32, !dbg !661
  %158 = icmp eq i32 %157, 0, !dbg !663
  br i1 %158, label %159, label %174, !dbg !664

159:                                              ; preds = %153
  %160 = load i32, ptr %11, align 4, !dbg !665
  %161 = load i32, ptr %8, align 4, !dbg !667
  %162 = call i32 @nn_device_mvmsg(i32 noundef %160, i32 noundef %161, i32 noundef 1), !dbg !668
  store i32 %162, ptr %14, align 4, !dbg !669
  %163 = load i32, ptr %14, align 4, !dbg !670
  %164 = icmp slt i32 %163, 0, !dbg !670
  %165 = zext i1 %164 to i32, !dbg !670
  %166 = sext i32 %165 to i64, !dbg !670
  %167 = icmp ne i64 %166, 0, !dbg !670
  br i1 %167, label %168, label %169, !dbg !672

168:                                              ; preds = %159
  store i32 -1, ptr %7, align 4, !dbg !673
  br label %175, !dbg !673

169:                                              ; preds = %159
  %170 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 2, !dbg !674
  %171 = getelementptr inbounds %struct.pollfd, ptr %170, i32 0, i32 1, !dbg !675
  store i16 1, ptr %171, align 4, !dbg !676
  %172 = getelementptr inbounds [4 x %struct.pollfd], ptr %15, i64 0, i64 1, !dbg !677
  %173 = getelementptr inbounds %struct.pollfd, ptr %172, i32 0, i32 1, !dbg !678
  store i16 1, ptr %173, align 4, !dbg !679
  br label %174, !dbg !680

174:                                              ; preds = %169, %153, %147
  br label %36, !dbg !575, !llvm.loop !681

175:                                              ; preds = %168, %141, %67
  %176 = load i32, ptr %7, align 4, !dbg !683
  ret i32 %176, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_device_oneway(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !684 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !687, metadata !DIExpression()), !dbg !688
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !689, metadata !DIExpression()), !dbg !690
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !691, metadata !DIExpression()), !dbg !692
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata ptr %9, metadata !695, metadata !DIExpression()), !dbg !696
  br label %10, !dbg !697

10:                                               ; preds = %4, %20
  %11 = load i32, ptr %5, align 4, !dbg !698
  %12 = load i32, ptr %7, align 4, !dbg !700
  %13 = call i32 @nn_device_mvmsg(i32 noundef %11, i32 noundef %12, i32 noundef 0), !dbg !701
  store i32 %13, ptr %9, align 4, !dbg !702
  %14 = load i32, ptr %9, align 4, !dbg !703
  %15 = icmp slt i32 %14, 0, !dbg !703
  %16 = zext i1 %15 to i32, !dbg !703
  %17 = sext i32 %16 to i64, !dbg !703
  %18 = icmp ne i64 %17, 0, !dbg !703
  br i1 %18, label %19, label %20, !dbg !705

19:                                               ; preds = %10
  ret i32 -1, !dbg !706

20:                                               ; preds = %10
  br label %10, !dbg !697, !llvm.loop !707
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_device_mvmsg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !709 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.nn_iovec, align 8
  %12 = alloca %struct.nn_msghdr, align 8
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !712, metadata !DIExpression()), !dbg !713
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !714, metadata !DIExpression()), !dbg !715
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.declare(metadata ptr %8, metadata !718, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.declare(metadata ptr %9, metadata !720, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata ptr %10, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata ptr %11, metadata !725, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata ptr %12, metadata !732, metadata !DIExpression()), !dbg !740
  %13 = getelementptr inbounds %struct.nn_iovec, ptr %11, i32 0, i32 0, !dbg !741
  store ptr %9, ptr %13, align 8, !dbg !742
  %14 = getelementptr inbounds %struct.nn_iovec, ptr %11, i32 0, i32 1, !dbg !743
  store i64 -1, ptr %14, align 8, !dbg !744
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 32, i1 false), !dbg !745
  %15 = getelementptr inbounds %struct.nn_msghdr, ptr %12, i32 0, i32 0, !dbg !746
  store ptr %11, ptr %15, align 8, !dbg !747
  %16 = getelementptr inbounds %struct.nn_msghdr, ptr %12, i32 0, i32 1, !dbg !748
  store i32 1, ptr %16, align 8, !dbg !749
  %17 = getelementptr inbounds %struct.nn_msghdr, ptr %12, i32 0, i32 2, !dbg !750
  store ptr %10, ptr %17, align 8, !dbg !751
  %18 = getelementptr inbounds %struct.nn_msghdr, ptr %12, i32 0, i32 3, !dbg !752
  store i64 -1, ptr %18, align 8, !dbg !753
  %19 = load i32, ptr %5, align 4, !dbg !754
  %20 = load i32, ptr %7, align 4, !dbg !755
  %21 = call i32 @nn_recvmsg(i32 noundef %19, ptr noundef %12, i32 noundef %20), !dbg !756
  store i32 %21, ptr %8, align 4, !dbg !757
  %22 = load i32, ptr %8, align 4, !dbg !758
  %23 = icmp slt i32 %22, 0, !dbg !758
  br i1 %23, label %24, label %27, !dbg !758

24:                                               ; preds = %3
  %25 = call i32 @nn_errno(), !dbg !758
  %26 = icmp eq i32 %25, 156384765, !dbg !758
  br label %27

27:                                               ; preds = %24, %3
  %28 = phi i1 [ false, %3 ], [ %26, %24 ], !dbg !760
  %29 = zext i1 %28 to i32, !dbg !758
  %30 = sext i32 %29 to i64, !dbg !758
  %31 = icmp ne i64 %30, 0, !dbg !758
  br i1 %31, label %32, label %33, !dbg !761

32:                                               ; preds = %27
  store i32 -1, ptr %4, align 4, !dbg !762
  br label %83, !dbg !762

33:                                               ; preds = %27
  br label %34, !dbg !763

34:                                               ; preds = %33
  %35 = load i32, ptr %8, align 4, !dbg !764
  %36 = icmp sge i32 %35, 0, !dbg !764
  %37 = xor i1 %36, true, !dbg !764
  %38 = zext i1 %37 to i32, !dbg !764
  %39 = sext i32 %38 to i64, !dbg !764
  %40 = icmp ne i64 %39, 0, !dbg !764
  br i1 %40, label %41, label %49, !dbg !767

41:                                               ; preds = %34
  %42 = load ptr, ptr @stderr, align 8, !dbg !768
  %43 = call ptr @__errno_location() #6, !dbg !768
  %44 = load i32, ptr %43, align 4, !dbg !768
  %45 = call ptr @nn_err_strerror(i32 noundef %44), !dbg !768
  %46 = call ptr @__errno_location() #6, !dbg !768
  %47 = load i32, ptr %46, align 4, !dbg !768
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str, ptr noundef %45, i32 noundef %47, ptr noundef @.str.1, i32 noundef 348), !dbg !768
  call void @nn_err_abort() #7, !dbg !768
  unreachable, !dbg !768

49:                                               ; preds = %34
  br label %50, !dbg !767

50:                                               ; preds = %49
  %51 = load i32, ptr %6, align 4, !dbg !770
  %52 = load i32, ptr %7, align 4, !dbg !771
  %53 = call i32 @nn_sendmsg(i32 noundef %51, ptr noundef %12, i32 noundef %52), !dbg !772
  store i32 %53, ptr %8, align 4, !dbg !773
  %54 = load i32, ptr %8, align 4, !dbg !774
  %55 = icmp slt i32 %54, 0, !dbg !774
  br i1 %55, label %56, label %59, !dbg !774

56:                                               ; preds = %50
  %57 = call i32 @nn_errno(), !dbg !774
  %58 = icmp eq i32 %57, 156384765, !dbg !774
  br label %59

59:                                               ; preds = %56, %50
  %60 = phi i1 [ false, %50 ], [ %58, %56 ], !dbg !776
  %61 = zext i1 %60 to i32, !dbg !774
  %62 = sext i32 %61 to i64, !dbg !774
  %63 = icmp ne i64 %62, 0, !dbg !774
  br i1 %63, label %64, label %65, !dbg !777

64:                                               ; preds = %59
  store i32 -1, ptr %4, align 4, !dbg !778
  br label %83, !dbg !778

65:                                               ; preds = %59
  br label %66, !dbg !779

66:                                               ; preds = %65
  %67 = load i32, ptr %8, align 4, !dbg !780
  %68 = icmp sge i32 %67, 0, !dbg !780
  %69 = xor i1 %68, true, !dbg !780
  %70 = zext i1 %69 to i32, !dbg !780
  %71 = sext i32 %70 to i64, !dbg !780
  %72 = icmp ne i64 %71, 0, !dbg !780
  br i1 %72, label %73, label %81, !dbg !783

73:                                               ; preds = %66
  %74 = load ptr, ptr @stderr, align 8, !dbg !784
  %75 = call ptr @__errno_location() #6, !dbg !784
  %76 = load i32, ptr %75, align 4, !dbg !784
  %77 = call ptr @nn_err_strerror(i32 noundef %76), !dbg !784
  %78 = call ptr @__errno_location() #6, !dbg !784
  %79 = load i32, ptr %78, align 4, !dbg !784
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str, ptr noundef %77, i32 noundef %79, ptr noundef @.str.1, i32 noundef 352), !dbg !784
  call void @nn_err_abort() #7, !dbg !784
  unreachable, !dbg !784

81:                                               ; preds = %66
  br label %82, !dbg !783

82:                                               ; preds = %81
  store i32 0, ptr %4, align 4, !dbg !786
  br label %83, !dbg !786

83:                                               ; preds = %82, %64, %32
  %84 = load i32, ptr %4, align 4, !dbg !787
  ret i32 %84, !dbg !787
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @nn_recvmsg(i32 noundef, ptr noundef, i32 noundef) #3

declare i32 @nn_sendmsg(i32 noundef, ptr noundef, i32 noundef) #3

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!60}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/core/device.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "aedc769485a00c5af0c30517cc947c11")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 21)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 8)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 23)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 11)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !31, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !36, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !31, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !36, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !31, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !36, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 2)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !9, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !26, isLocal: true, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C11, file: !61, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !62, globals: !67, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "src/core/device.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "aedc769485a00c5af0c30517cc947c11")
!62 = !{!63, !64}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !{!0, !7, !12, !17, !22, !24, !29, !34, !39, !41, !43, !45, !47, !49, !51, !56, !58}
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 16.0.0"}
!76 = distinct !DISubprogram(name: "nn_device", scope: !2, file: !2, line: 45, type: !77, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{!63, !63, !63}
!79 = !{}
!80 = !DILocalVariable(name: "s1", arg: 1, scope: !76, file: !2, line: 45, type: !63)
!81 = !DILocation(line: 45, column: 20, scope: !76)
!82 = !DILocalVariable(name: "s2", arg: 2, scope: !76, file: !2, line: 45, type: !63)
!83 = !DILocation(line: 45, column: 28, scope: !76)
!84 = !DILocalVariable(name: "rc", scope: !76, file: !2, line: 47, type: !63)
!85 = !DILocation(line: 47, column: 9, scope: !76)
!86 = !DILocalVariable(name: "op1", scope: !76, file: !2, line: 48, type: !63)
!87 = !DILocation(line: 48, column: 9, scope: !76)
!88 = !DILocalVariable(name: "op2", scope: !76, file: !2, line: 49, type: !63)
!89 = !DILocation(line: 49, column: 9, scope: !76)
!90 = !DILocalVariable(name: "s1rcv", scope: !76, file: !2, line: 50, type: !63)
!91 = !DILocation(line: 50, column: 9, scope: !76)
!92 = !DILocalVariable(name: "s1snd", scope: !76, file: !2, line: 51, type: !63)
!93 = !DILocation(line: 51, column: 9, scope: !76)
!94 = !DILocalVariable(name: "s2rcv", scope: !76, file: !2, line: 52, type: !63)
!95 = !DILocation(line: 52, column: 9, scope: !76)
!96 = !DILocalVariable(name: "s2snd", scope: !76, file: !2, line: 53, type: !63)
!97 = !DILocation(line: 53, column: 9, scope: !76)
!98 = !DILocalVariable(name: "opsz", scope: !76, file: !2, line: 54, type: !64)
!99 = !DILocation(line: 54, column: 12, scope: !76)
!100 = !DILocation(line: 57, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !76, file: !2, line: 57, column: 9)
!102 = !DILocation(line: 57, column: 12, scope: !101)
!103 = !DILocation(line: 57, column: 16, scope: !101)
!104 = !DILocation(line: 57, column: 19, scope: !101)
!105 = !DILocation(line: 57, column: 22, scope: !101)
!106 = !DILocation(line: 57, column: 9, scope: !76)
!107 = !DILocation(line: 58, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !101, file: !2, line: 57, column: 27)
!109 = !DILocation(line: 58, column: 15, scope: !108)
!110 = !DILocation(line: 59, column: 9, scope: !108)
!111 = !DILocation(line: 63, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !76, file: !2, line: 63, column: 9)
!113 = !DILocation(line: 63, column: 12, scope: !112)
!114 = !DILocation(line: 63, column: 9, scope: !76)
!115 = !DILocation(line: 64, column: 36, scope: !112)
!116 = !DILocation(line: 64, column: 16, scope: !112)
!117 = !DILocation(line: 64, column: 9, scope: !112)
!118 = !DILocation(line: 65, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !76, file: !2, line: 65, column: 9)
!120 = !DILocation(line: 65, column: 12, scope: !119)
!121 = !DILocation(line: 65, column: 9, scope: !76)
!122 = !DILocation(line: 66, column: 36, scope: !119)
!123 = !DILocation(line: 66, column: 16, scope: !119)
!124 = !DILocation(line: 66, column: 9, scope: !119)
!125 = !DILocation(line: 69, column: 10, scope: !76)
!126 = !DILocation(line: 70, column: 25, scope: !76)
!127 = !DILocation(line: 70, column: 10, scope: !76)
!128 = !DILocation(line: 70, column: 8, scope: !76)
!129 = !DILocation(line: 71, column: 5, scope: !76)
!130 = !DILocation(line: 71, column: 5, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 71, column: 5)
!132 = distinct !DILexicalBlock(scope: !76, file: !2, line: 71, column: 5)
!133 = !DILocation(line: 71, column: 5, scope: !132)
!134 = !DILocation(line: 71, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !2, line: 71, column: 5)
!136 = !DILocation(line: 72, column: 5, scope: !76)
!137 = !DILocation(line: 72, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 72, column: 5)
!139 = distinct !DILexicalBlock(scope: !76, file: !2, line: 72, column: 5)
!140 = !DILocation(line: 72, column: 5, scope: !139)
!141 = !DILocation(line: 72, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !2, line: 72, column: 5)
!143 = !DILocation(line: 73, column: 10, scope: !76)
!144 = !DILocation(line: 74, column: 25, scope: !76)
!145 = !DILocation(line: 74, column: 10, scope: !76)
!146 = !DILocation(line: 74, column: 8, scope: !76)
!147 = !DILocation(line: 75, column: 5, scope: !76)
!148 = !DILocation(line: 75, column: 5, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 75, column: 5)
!150 = distinct !DILexicalBlock(scope: !76, file: !2, line: 75, column: 5)
!151 = !DILocation(line: 75, column: 5, scope: !150)
!152 = !DILocation(line: 75, column: 5, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !2, line: 75, column: 5)
!154 = !DILocation(line: 76, column: 5, scope: !76)
!155 = !DILocation(line: 76, column: 5, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 76, column: 5)
!157 = distinct !DILexicalBlock(scope: !76, file: !2, line: 76, column: 5)
!158 = !DILocation(line: 76, column: 5, scope: !157)
!159 = !DILocation(line: 76, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !2, line: 76, column: 5)
!161 = !DILocation(line: 77, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !76, file: !2, line: 77, column: 9)
!163 = !DILocation(line: 77, column: 13, scope: !162)
!164 = !DILocation(line: 77, column: 26, scope: !162)
!165 = !DILocation(line: 77, column: 29, scope: !162)
!166 = !DILocation(line: 77, column: 33, scope: !162)
!167 = !DILocation(line: 77, column: 9, scope: !76)
!168 = !DILocation(line: 78, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !162, file: !2, line: 77, column: 47)
!170 = !DILocation(line: 78, column: 15, scope: !169)
!171 = !DILocation(line: 79, column: 9, scope: !169)
!172 = !DILocation(line: 83, column: 10, scope: !76)
!173 = !DILocation(line: 84, column: 25, scope: !76)
!174 = !DILocation(line: 84, column: 10, scope: !76)
!175 = !DILocation(line: 84, column: 8, scope: !76)
!176 = !DILocation(line: 85, column: 5, scope: !76)
!177 = !DILocation(line: 85, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !2, line: 85, column: 5)
!179 = distinct !DILexicalBlock(scope: !76, file: !2, line: 85, column: 5)
!180 = !DILocation(line: 85, column: 5, scope: !179)
!181 = !DILocation(line: 85, column: 5, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !2, line: 85, column: 5)
!183 = !DILocation(line: 86, column: 5, scope: !76)
!184 = !DILocation(line: 86, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 86, column: 5)
!186 = distinct !DILexicalBlock(scope: !76, file: !2, line: 86, column: 5)
!187 = !DILocation(line: 86, column: 5, scope: !186)
!188 = !DILocation(line: 86, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !2, line: 86, column: 5)
!190 = !DILocation(line: 87, column: 10, scope: !76)
!191 = !DILocation(line: 88, column: 25, scope: !76)
!192 = !DILocation(line: 88, column: 10, scope: !76)
!193 = !DILocation(line: 88, column: 8, scope: !76)
!194 = !DILocation(line: 89, column: 5, scope: !76)
!195 = !DILocation(line: 89, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 89, column: 5)
!197 = distinct !DILexicalBlock(scope: !76, file: !2, line: 89, column: 5)
!198 = !DILocation(line: 89, column: 5, scope: !197)
!199 = !DILocation(line: 89, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !2, line: 89, column: 5)
!201 = !DILocation(line: 90, column: 5, scope: !76)
!202 = !DILocation(line: 90, column: 5, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !2, line: 90, column: 5)
!204 = distinct !DILexicalBlock(scope: !76, file: !2, line: 90, column: 5)
!205 = !DILocation(line: 90, column: 5, scope: !204)
!206 = !DILocation(line: 90, column: 5, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !2, line: 90, column: 5)
!208 = !DILocation(line: 91, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !76, file: !2, line: 91, column: 9)
!210 = !DILocation(line: 91, column: 13, scope: !209)
!211 = !DILocation(line: 91, column: 21, scope: !209)
!212 = !DILocation(line: 91, column: 25, scope: !209)
!213 = !DILocation(line: 91, column: 18, scope: !209)
!214 = !DILocation(line: 91, column: 9, scope: !76)
!215 = !DILocation(line: 92, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !2, line: 91, column: 31)
!217 = !DILocation(line: 92, column: 15, scope: !216)
!218 = !DILocation(line: 93, column: 9, scope: !216)
!219 = !DILocation(line: 97, column: 10, scope: !76)
!220 = !DILocation(line: 98, column: 25, scope: !76)
!221 = !DILocation(line: 98, column: 10, scope: !76)
!222 = !DILocation(line: 98, column: 8, scope: !76)
!223 = !DILocation(line: 99, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !76, file: !2, line: 99, column: 9)
!225 = !DILocation(line: 99, column: 12, scope: !224)
!226 = !DILocation(line: 99, column: 16, scope: !224)
!227 = !DILocation(line: 99, column: 19, scope: !224)
!228 = !DILocation(line: 99, column: 31, scope: !224)
!229 = !DILocation(line: 99, column: 9, scope: !76)
!230 = !DILocation(line: 100, column: 15, scope: !224)
!231 = !DILocation(line: 100, column: 9, scope: !224)
!232 = !DILocation(line: 102, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !224, file: !2, line: 101, column: 10)
!234 = !DILocation(line: 102, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !2, line: 102, column: 9)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 102, column: 9)
!237 = !DILocation(line: 102, column: 9, scope: !236)
!238 = !DILocation(line: 102, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !2, line: 102, column: 9)
!240 = !DILocation(line: 103, column: 9, scope: !233)
!241 = !DILocation(line: 103, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !2, line: 103, column: 9)
!243 = distinct !DILexicalBlock(scope: !233, file: !2, line: 103, column: 9)
!244 = !DILocation(line: 103, column: 9, scope: !243)
!245 = !DILocation(line: 103, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !2, line: 103, column: 9)
!247 = !DILocation(line: 104, column: 9, scope: !233)
!248 = !DILocation(line: 104, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 104, column: 9)
!250 = distinct !DILexicalBlock(scope: !233, file: !2, line: 104, column: 9)
!251 = !DILocation(line: 104, column: 9, scope: !250)
!252 = !DILocation(line: 104, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !2, line: 104, column: 9)
!254 = !DILocation(line: 106, column: 10, scope: !76)
!255 = !DILocation(line: 107, column: 25, scope: !76)
!256 = !DILocation(line: 107, column: 10, scope: !76)
!257 = !DILocation(line: 107, column: 8, scope: !76)
!258 = !DILocation(line: 108, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !76, file: !2, line: 108, column: 9)
!260 = !DILocation(line: 108, column: 12, scope: !259)
!261 = !DILocation(line: 108, column: 16, scope: !259)
!262 = !DILocation(line: 108, column: 19, scope: !259)
!263 = !DILocation(line: 108, column: 31, scope: !259)
!264 = !DILocation(line: 108, column: 9, scope: !76)
!265 = !DILocation(line: 109, column: 15, scope: !259)
!266 = !DILocation(line: 109, column: 9, scope: !259)
!267 = !DILocation(line: 111, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !259, file: !2, line: 110, column: 10)
!269 = !DILocation(line: 111, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !2, line: 111, column: 9)
!271 = distinct !DILexicalBlock(scope: !268, file: !2, line: 111, column: 9)
!272 = !DILocation(line: 111, column: 9, scope: !271)
!273 = !DILocation(line: 111, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !2, line: 111, column: 9)
!275 = !DILocation(line: 112, column: 9, scope: !268)
!276 = !DILocation(line: 112, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 112, column: 9)
!278 = distinct !DILexicalBlock(scope: !268, file: !2, line: 112, column: 9)
!279 = !DILocation(line: 112, column: 9, scope: !278)
!280 = !DILocation(line: 112, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !2, line: 112, column: 9)
!282 = !DILocation(line: 113, column: 9, scope: !268)
!283 = !DILocation(line: 113, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !2, line: 113, column: 9)
!285 = distinct !DILexicalBlock(scope: !268, file: !2, line: 113, column: 9)
!286 = !DILocation(line: 113, column: 9, scope: !285)
!287 = !DILocation(line: 113, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !2, line: 113, column: 9)
!289 = !DILocation(line: 115, column: 10, scope: !76)
!290 = !DILocation(line: 116, column: 25, scope: !76)
!291 = !DILocation(line: 116, column: 10, scope: !76)
!292 = !DILocation(line: 116, column: 8, scope: !76)
!293 = !DILocation(line: 117, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !76, file: !2, line: 117, column: 9)
!295 = !DILocation(line: 117, column: 12, scope: !294)
!296 = !DILocation(line: 117, column: 16, scope: !294)
!297 = !DILocation(line: 117, column: 19, scope: !294)
!298 = !DILocation(line: 117, column: 31, scope: !294)
!299 = !DILocation(line: 117, column: 9, scope: !76)
!300 = !DILocation(line: 118, column: 15, scope: !294)
!301 = !DILocation(line: 118, column: 9, scope: !294)
!302 = !DILocation(line: 120, column: 9, scope: !303)
!303 = distinct !DILexicalBlock(scope: !294, file: !2, line: 119, column: 10)
!304 = !DILocation(line: 120, column: 9, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 120, column: 9)
!306 = distinct !DILexicalBlock(scope: !303, file: !2, line: 120, column: 9)
!307 = !DILocation(line: 120, column: 9, scope: !306)
!308 = !DILocation(line: 120, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !2, line: 120, column: 9)
!310 = !DILocation(line: 121, column: 9, scope: !303)
!311 = !DILocation(line: 121, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 121, column: 9)
!313 = distinct !DILexicalBlock(scope: !303, file: !2, line: 121, column: 9)
!314 = !DILocation(line: 121, column: 9, scope: !313)
!315 = !DILocation(line: 121, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !2, line: 121, column: 9)
!317 = !DILocation(line: 122, column: 9, scope: !303)
!318 = !DILocation(line: 122, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 122, column: 9)
!320 = distinct !DILexicalBlock(scope: !303, file: !2, line: 122, column: 9)
!321 = !DILocation(line: 122, column: 9, scope: !320)
!322 = !DILocation(line: 122, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !2, line: 122, column: 9)
!324 = !DILocation(line: 124, column: 10, scope: !76)
!325 = !DILocation(line: 125, column: 25, scope: !76)
!326 = !DILocation(line: 125, column: 10, scope: !76)
!327 = !DILocation(line: 125, column: 8, scope: !76)
!328 = !DILocation(line: 126, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !76, file: !2, line: 126, column: 9)
!330 = !DILocation(line: 126, column: 12, scope: !329)
!331 = !DILocation(line: 126, column: 16, scope: !329)
!332 = !DILocation(line: 126, column: 19, scope: !329)
!333 = !DILocation(line: 126, column: 31, scope: !329)
!334 = !DILocation(line: 126, column: 9, scope: !76)
!335 = !DILocation(line: 127, column: 15, scope: !329)
!336 = !DILocation(line: 127, column: 9, scope: !329)
!337 = !DILocation(line: 129, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !329, file: !2, line: 128, column: 10)
!339 = !DILocation(line: 129, column: 9, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !2, line: 129, column: 9)
!341 = distinct !DILexicalBlock(scope: !338, file: !2, line: 129, column: 9)
!342 = !DILocation(line: 129, column: 9, scope: !341)
!343 = !DILocation(line: 129, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !2, line: 129, column: 9)
!345 = !DILocation(line: 130, column: 9, scope: !338)
!346 = !DILocation(line: 130, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 130, column: 9)
!348 = distinct !DILexicalBlock(scope: !338, file: !2, line: 130, column: 9)
!349 = !DILocation(line: 130, column: 9, scope: !348)
!350 = !DILocation(line: 130, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !2, line: 130, column: 9)
!352 = !DILocation(line: 131, column: 9, scope: !338)
!353 = !DILocation(line: 131, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 131, column: 9)
!355 = distinct !DILexicalBlock(scope: !338, file: !2, line: 131, column: 9)
!356 = !DILocation(line: 131, column: 9, scope: !355)
!357 = !DILocation(line: 131, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !2, line: 131, column: 9)
!359 = !DILocation(line: 135, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !76, file: !2, line: 135, column: 9)
!361 = !DILocation(line: 135, column: 15, scope: !360)
!362 = !DILocation(line: 135, column: 21, scope: !360)
!363 = !DILocation(line: 135, column: 24, scope: !360)
!364 = !DILocation(line: 135, column: 30, scope: !360)
!365 = !DILocation(line: 135, column: 9, scope: !76)
!366 = !DILocation(line: 136, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !360, file: !2, line: 135, column: 37)
!368 = !DILocation(line: 136, column: 15, scope: !367)
!369 = !DILocation(line: 137, column: 9, scope: !367)
!370 = !DILocation(line: 139, column: 9, scope: !371)
!371 = distinct !DILexicalBlock(scope: !76, file: !2, line: 139, column: 9)
!372 = !DILocation(line: 139, column: 15, scope: !371)
!373 = !DILocation(line: 139, column: 21, scope: !371)
!374 = !DILocation(line: 139, column: 24, scope: !371)
!375 = !DILocation(line: 139, column: 30, scope: !371)
!376 = !DILocation(line: 139, column: 9, scope: !76)
!377 = !DILocation(line: 140, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !371, file: !2, line: 139, column: 37)
!379 = !DILocation(line: 140, column: 15, scope: !378)
!380 = !DILocation(line: 141, column: 9, scope: !378)
!381 = !DILocation(line: 143, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !76, file: !2, line: 143, column: 9)
!383 = !DILocation(line: 143, column: 15, scope: !382)
!384 = !DILocation(line: 143, column: 21, scope: !382)
!385 = !DILocation(line: 143, column: 24, scope: !382)
!386 = !DILocation(line: 143, column: 30, scope: !382)
!387 = !DILocation(line: 143, column: 9, scope: !76)
!388 = !DILocation(line: 144, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !382, file: !2, line: 143, column: 37)
!390 = !DILocation(line: 144, column: 15, scope: !389)
!391 = !DILocation(line: 145, column: 9, scope: !389)
!392 = !DILocation(line: 147, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !76, file: !2, line: 147, column: 9)
!394 = !DILocation(line: 147, column: 15, scope: !393)
!395 = !DILocation(line: 147, column: 21, scope: !393)
!396 = !DILocation(line: 147, column: 24, scope: !393)
!397 = !DILocation(line: 147, column: 30, scope: !393)
!398 = !DILocation(line: 147, column: 9, scope: !76)
!399 = !DILocation(line: 148, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !393, file: !2, line: 147, column: 37)
!401 = !DILocation(line: 148, column: 15, scope: !400)
!402 = !DILocation(line: 149, column: 9, scope: !400)
!403 = !DILocation(line: 153, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !76, file: !2, line: 153, column: 9)
!405 = !DILocation(line: 153, column: 15, scope: !404)
!406 = !DILocation(line: 153, column: 21, scope: !404)
!407 = !DILocation(line: 153, column: 24, scope: !404)
!408 = !DILocation(line: 153, column: 30, scope: !404)
!409 = !DILocation(line: 153, column: 36, scope: !404)
!410 = !DILocation(line: 153, column: 39, scope: !404)
!411 = !DILocation(line: 153, column: 45, scope: !404)
!412 = !DILocation(line: 153, column: 51, scope: !404)
!413 = !DILocation(line: 153, column: 54, scope: !404)
!414 = !DILocation(line: 153, column: 60, scope: !404)
!415 = !DILocation(line: 153, column: 9, scope: !76)
!416 = !DILocation(line: 154, column: 34, scope: !404)
!417 = !DILocation(line: 154, column: 38, scope: !404)
!418 = !DILocation(line: 154, column: 45, scope: !404)
!419 = !DILocation(line: 154, column: 52, scope: !404)
!420 = !DILocation(line: 154, column: 56, scope: !404)
!421 = !DILocation(line: 154, column: 63, scope: !404)
!422 = !DILocation(line: 154, column: 16, scope: !404)
!423 = !DILocation(line: 154, column: 9, scope: !404)
!424 = !DILocation(line: 157, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !76, file: !2, line: 157, column: 9)
!426 = !DILocation(line: 157, column: 15, scope: !425)
!427 = !DILocation(line: 157, column: 21, scope: !425)
!428 = !DILocation(line: 157, column: 24, scope: !425)
!429 = !DILocation(line: 157, column: 30, scope: !425)
!430 = !DILocation(line: 157, column: 36, scope: !425)
!431 = !DILocation(line: 157, column: 39, scope: !425)
!432 = !DILocation(line: 157, column: 45, scope: !425)
!433 = !DILocation(line: 157, column: 51, scope: !425)
!434 = !DILocation(line: 157, column: 54, scope: !425)
!435 = !DILocation(line: 157, column: 60, scope: !425)
!436 = !DILocation(line: 157, column: 9, scope: !76)
!437 = !DILocation(line: 158, column: 34, scope: !425)
!438 = !DILocation(line: 158, column: 38, scope: !425)
!439 = !DILocation(line: 158, column: 45, scope: !425)
!440 = !DILocation(line: 158, column: 49, scope: !425)
!441 = !DILocation(line: 158, column: 16, scope: !425)
!442 = !DILocation(line: 158, column: 9, scope: !425)
!443 = !DILocation(line: 161, column: 9, scope: !444)
!444 = distinct !DILexicalBlock(scope: !76, file: !2, line: 161, column: 9)
!445 = !DILocation(line: 161, column: 15, scope: !444)
!446 = !DILocation(line: 161, column: 21, scope: !444)
!447 = !DILocation(line: 161, column: 24, scope: !444)
!448 = !DILocation(line: 161, column: 30, scope: !444)
!449 = !DILocation(line: 161, column: 36, scope: !444)
!450 = !DILocation(line: 161, column: 39, scope: !444)
!451 = !DILocation(line: 161, column: 45, scope: !444)
!452 = !DILocation(line: 161, column: 51, scope: !444)
!453 = !DILocation(line: 161, column: 54, scope: !444)
!454 = !DILocation(line: 161, column: 60, scope: !444)
!455 = !DILocation(line: 161, column: 9, scope: !76)
!456 = !DILocation(line: 162, column: 34, scope: !444)
!457 = !DILocation(line: 162, column: 38, scope: !444)
!458 = !DILocation(line: 162, column: 45, scope: !444)
!459 = !DILocation(line: 162, column: 49, scope: !444)
!460 = !DILocation(line: 162, column: 16, scope: !444)
!461 = !DILocation(line: 162, column: 9, scope: !444)
!462 = !DILocation(line: 165, column: 5, scope: !76)
!463 = !DILocation(line: 165, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 165, column: 5)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 165, column: 5)
!466 = distinct !DILexicalBlock(scope: !76, file: !2, line: 165, column: 5)
!467 = !DILocation(line: 166, column: 1, scope: !76)
!468 = distinct !DISubprogram(name: "nn_device_loopback", scope: !2, file: !2, line: 168, type: !469, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !79)
!469 = !DISubroutineType(types: !470)
!470 = !{!63, !63}
!471 = !DILocalVariable(name: "s", arg: 1, scope: !468, file: !2, line: 168, type: !63)
!472 = !DILocation(line: 168, column: 29, scope: !468)
!473 = !DILocalVariable(name: "rc", scope: !468, file: !2, line: 170, type: !63)
!474 = !DILocation(line: 170, column: 9, scope: !468)
!475 = !DILocalVariable(name: "op", scope: !468, file: !2, line: 171, type: !63)
!476 = !DILocation(line: 171, column: 9, scope: !468)
!477 = !DILocalVariable(name: "opsz", scope: !468, file: !2, line: 172, type: !64)
!478 = !DILocation(line: 172, column: 12, scope: !468)
!479 = !DILocation(line: 175, column: 10, scope: !468)
!480 = !DILocation(line: 176, column: 25, scope: !468)
!481 = !DILocation(line: 176, column: 10, scope: !468)
!482 = !DILocation(line: 176, column: 8, scope: !468)
!483 = !DILocation(line: 177, column: 5, scope: !468)
!484 = !DILocation(line: 177, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !2, line: 177, column: 5)
!486 = distinct !DILexicalBlock(scope: !468, file: !2, line: 177, column: 5)
!487 = !DILocation(line: 177, column: 5, scope: !486)
!488 = !DILocation(line: 177, column: 5, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !2, line: 177, column: 5)
!490 = !DILocation(line: 178, column: 5, scope: !468)
!491 = !DILocation(line: 178, column: 5, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !2, line: 178, column: 5)
!493 = distinct !DILexicalBlock(scope: !468, file: !2, line: 178, column: 5)
!494 = !DILocation(line: 178, column: 5, scope: !493)
!495 = !DILocation(line: 178, column: 5, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !2, line: 178, column: 5)
!497 = !DILocation(line: 179, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !468, file: !2, line: 179, column: 9)
!499 = !DILocation(line: 179, column: 12, scope: !498)
!500 = !DILocation(line: 179, column: 9, scope: !468)
!501 = !DILocation(line: 180, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !2, line: 179, column: 26)
!503 = !DILocation(line: 180, column: 15, scope: !502)
!504 = !DILocation(line: 181, column: 9, scope: !502)
!505 = !DILocation(line: 184, column: 5, scope: !468)
!506 = !DILocation(line: 185, column: 31, scope: !507)
!507 = distinct !DILexicalBlock(scope: !468, file: !2, line: 184, column: 15)
!508 = !DILocation(line: 185, column: 34, scope: !507)
!509 = !DILocation(line: 185, column: 14, scope: !507)
!510 = !DILocation(line: 185, column: 12, scope: !507)
!511 = !DILocation(line: 186, column: 13, scope: !512)
!512 = distinct !DILexicalBlock(scope: !507, file: !2, line: 186, column: 13)
!513 = !DILocation(line: 186, column: 13, scope: !507)
!514 = !DILocation(line: 187, column: 13, scope: !512)
!515 = distinct !{!515, !505, !516}
!516 = !DILocation(line: 188, column: 5, scope: !468)
!517 = !DILocation(line: 189, column: 1, scope: !468)
!518 = distinct !DISubprogram(name: "nn_device_twoway", scope: !2, file: !2, line: 259, type: !519, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !79)
!519 = !DISubroutineType(types: !520)
!520 = !{!63, !63, !63, !63, !63, !63, !63}
!521 = !DILocalVariable(name: "s1", arg: 1, scope: !518, file: !2, line: 259, type: !63)
!522 = !DILocation(line: 259, column: 34, scope: !518)
!523 = !DILocalVariable(name: "s1rcv", arg: 2, scope: !518, file: !2, line: 259, type: !63)
!524 = !DILocation(line: 259, column: 42, scope: !518)
!525 = !DILocalVariable(name: "s1snd", arg: 3, scope: !518, file: !2, line: 259, type: !63)
!526 = !DILocation(line: 259, column: 53, scope: !518)
!527 = !DILocalVariable(name: "s2", arg: 4, scope: !518, file: !2, line: 260, type: !63)
!528 = !DILocation(line: 260, column: 9, scope: !518)
!529 = !DILocalVariable(name: "s2rcv", arg: 5, scope: !518, file: !2, line: 260, type: !63)
!530 = !DILocation(line: 260, column: 17, scope: !518)
!531 = !DILocalVariable(name: "s2snd", arg: 6, scope: !518, file: !2, line: 260, type: !63)
!532 = !DILocation(line: 260, column: 28, scope: !518)
!533 = !DILocalVariable(name: "rc", scope: !518, file: !2, line: 262, type: !63)
!534 = !DILocation(line: 262, column: 9, scope: !518)
!535 = !DILocalVariable(name: "pfd", scope: !518, file: !2, line: 263, type: !536)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 256, elements: !544)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !538, line: 36, size: 64, elements: !539)
!538 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!539 = !{!540, !541, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !537, file: !538, line: 38, baseType: !63, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !537, file: !538, line: 39, baseType: !542, size: 16, offset: 32)
!542 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !537, file: !538, line: 40, baseType: !542, size: 16, offset: 48)
!544 = !{!545}
!545 = !DISubrange(count: 4)
!546 = !DILocation(line: 263, column: 19, scope: !518)
!547 = !DILocation(line: 266, column: 18, scope: !518)
!548 = !DILocation(line: 266, column: 5, scope: !518)
!549 = !DILocation(line: 266, column: 13, scope: !518)
!550 = !DILocation(line: 266, column: 16, scope: !518)
!551 = !DILocation(line: 267, column: 5, scope: !518)
!552 = !DILocation(line: 267, column: 13, scope: !518)
!553 = !DILocation(line: 267, column: 20, scope: !518)
!554 = !DILocation(line: 268, column: 18, scope: !518)
!555 = !DILocation(line: 268, column: 5, scope: !518)
!556 = !DILocation(line: 268, column: 13, scope: !518)
!557 = !DILocation(line: 268, column: 16, scope: !518)
!558 = !DILocation(line: 269, column: 5, scope: !518)
!559 = !DILocation(line: 269, column: 13, scope: !518)
!560 = !DILocation(line: 269, column: 20, scope: !518)
!561 = !DILocation(line: 270, column: 18, scope: !518)
!562 = !DILocation(line: 270, column: 5, scope: !518)
!563 = !DILocation(line: 270, column: 13, scope: !518)
!564 = !DILocation(line: 270, column: 16, scope: !518)
!565 = !DILocation(line: 271, column: 5, scope: !518)
!566 = !DILocation(line: 271, column: 13, scope: !518)
!567 = !DILocation(line: 271, column: 20, scope: !518)
!568 = !DILocation(line: 272, column: 18, scope: !518)
!569 = !DILocation(line: 272, column: 5, scope: !518)
!570 = !DILocation(line: 272, column: 13, scope: !518)
!571 = !DILocation(line: 272, column: 16, scope: !518)
!572 = !DILocation(line: 273, column: 5, scope: !518)
!573 = !DILocation(line: 273, column: 13, scope: !518)
!574 = !DILocation(line: 273, column: 20, scope: !518)
!575 = !DILocation(line: 275, column: 5, scope: !518)
!576 = !DILocation(line: 278, column: 20, scope: !577)
!577 = distinct !DILexicalBlock(scope: !518, file: !2, line: 275, column: 15)
!578 = !DILocation(line: 278, column: 14, scope: !577)
!579 = !DILocation(line: 278, column: 12, scope: !577)
!580 = !DILocation(line: 279, column: 9, scope: !577)
!581 = !DILocation(line: 279, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 279, column: 9)
!583 = distinct !DILexicalBlock(scope: !577, file: !2, line: 279, column: 9)
!584 = !DILocation(line: 279, column: 9, scope: !583)
!585 = !DILocation(line: 279, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !2, line: 279, column: 9)
!587 = !DILocation(line: 280, column: 13, scope: !588)
!588 = distinct !DILexicalBlock(scope: !577, file: !2, line: 280, column: 13)
!589 = !DILocation(line: 0, scope: !588)
!590 = !DILocation(line: 280, column: 13, scope: !577)
!591 = !DILocation(line: 281, column: 13, scope: !588)
!592 = !DILocation(line: 282, column: 9, scope: !577)
!593 = !DILocation(line: 282, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !2, line: 282, column: 9)
!595 = distinct !DILexicalBlock(scope: !577, file: !2, line: 282, column: 9)
!596 = !DILocation(line: 282, column: 9, scope: !595)
!597 = !DILocation(line: 282, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !2, line: 282, column: 9)
!599 = !DILocation(line: 286, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !577, file: !2, line: 286, column: 13)
!601 = !DILocation(line: 286, column: 21, scope: !600)
!602 = !DILocation(line: 286, column: 29, scope: !600)
!603 = !DILocation(line: 286, column: 13, scope: !577)
!604 = !DILocation(line: 287, column: 13, scope: !600)
!605 = !DILocation(line: 287, column: 21, scope: !600)
!606 = !DILocation(line: 287, column: 28, scope: !600)
!607 = !DILocation(line: 288, column: 13, scope: !608)
!608 = distinct !DILexicalBlock(scope: !577, file: !2, line: 288, column: 13)
!609 = !DILocation(line: 288, column: 21, scope: !608)
!610 = !DILocation(line: 288, column: 29, scope: !608)
!611 = !DILocation(line: 288, column: 13, scope: !577)
!612 = !DILocation(line: 289, column: 13, scope: !608)
!613 = !DILocation(line: 289, column: 21, scope: !608)
!614 = !DILocation(line: 289, column: 28, scope: !608)
!615 = !DILocation(line: 290, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !577, file: !2, line: 290, column: 13)
!617 = !DILocation(line: 290, column: 21, scope: !616)
!618 = !DILocation(line: 290, column: 29, scope: !616)
!619 = !DILocation(line: 290, column: 13, scope: !577)
!620 = !DILocation(line: 291, column: 13, scope: !616)
!621 = !DILocation(line: 291, column: 21, scope: !616)
!622 = !DILocation(line: 291, column: 28, scope: !616)
!623 = !DILocation(line: 292, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !577, file: !2, line: 292, column: 13)
!625 = !DILocation(line: 292, column: 21, scope: !624)
!626 = !DILocation(line: 292, column: 29, scope: !624)
!627 = !DILocation(line: 292, column: 13, scope: !577)
!628 = !DILocation(line: 293, column: 13, scope: !624)
!629 = !DILocation(line: 293, column: 21, scope: !624)
!630 = !DILocation(line: 293, column: 28, scope: !624)
!631 = !DILocation(line: 296, column: 13, scope: !632)
!632 = distinct !DILexicalBlock(scope: !577, file: !2, line: 296, column: 13)
!633 = !DILocation(line: 296, column: 21, scope: !632)
!634 = !DILocation(line: 296, column: 28, scope: !632)
!635 = !DILocation(line: 296, column: 33, scope: !632)
!636 = !DILocation(line: 296, column: 36, scope: !632)
!637 = !DILocation(line: 296, column: 44, scope: !632)
!638 = !DILocation(line: 296, column: 51, scope: !632)
!639 = !DILocation(line: 296, column: 13, scope: !577)
!640 = !DILocation(line: 297, column: 35, scope: !641)
!641 = distinct !DILexicalBlock(scope: !632, file: !2, line: 296, column: 57)
!642 = !DILocation(line: 297, column: 39, scope: !641)
!643 = !DILocation(line: 297, column: 18, scope: !641)
!644 = !DILocation(line: 297, column: 16, scope: !641)
!645 = !DILocation(line: 298, column: 17, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !2, line: 298, column: 17)
!647 = !DILocation(line: 298, column: 17, scope: !641)
!648 = !DILocation(line: 299, column: 17, scope: !646)
!649 = !DILocation(line: 300, column: 13, scope: !641)
!650 = !DILocation(line: 300, column: 21, scope: !641)
!651 = !DILocation(line: 300, column: 28, scope: !641)
!652 = !DILocation(line: 301, column: 13, scope: !641)
!653 = !DILocation(line: 301, column: 21, scope: !641)
!654 = !DILocation(line: 301, column: 28, scope: !641)
!655 = !DILocation(line: 302, column: 9, scope: !641)
!656 = !DILocation(line: 305, column: 13, scope: !657)
!657 = distinct !DILexicalBlock(scope: !577, file: !2, line: 305, column: 13)
!658 = !DILocation(line: 305, column: 21, scope: !657)
!659 = !DILocation(line: 305, column: 28, scope: !657)
!660 = !DILocation(line: 305, column: 33, scope: !657)
!661 = !DILocation(line: 305, column: 36, scope: !657)
!662 = !DILocation(line: 305, column: 44, scope: !657)
!663 = !DILocation(line: 305, column: 51, scope: !657)
!664 = !DILocation(line: 305, column: 13, scope: !577)
!665 = !DILocation(line: 306, column: 35, scope: !666)
!666 = distinct !DILexicalBlock(scope: !657, file: !2, line: 305, column: 57)
!667 = !DILocation(line: 306, column: 39, scope: !666)
!668 = !DILocation(line: 306, column: 18, scope: !666)
!669 = !DILocation(line: 306, column: 16, scope: !666)
!670 = !DILocation(line: 307, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !2, line: 307, column: 17)
!672 = !DILocation(line: 307, column: 17, scope: !666)
!673 = !DILocation(line: 308, column: 17, scope: !671)
!674 = !DILocation(line: 309, column: 13, scope: !666)
!675 = !DILocation(line: 309, column: 21, scope: !666)
!676 = !DILocation(line: 309, column: 28, scope: !666)
!677 = !DILocation(line: 310, column: 13, scope: !666)
!678 = !DILocation(line: 310, column: 21, scope: !666)
!679 = !DILocation(line: 310, column: 28, scope: !666)
!680 = !DILocation(line: 311, column: 9, scope: !666)
!681 = distinct !{!681, !575, !682}
!682 = !DILocation(line: 312, column: 5, scope: !518)
!683 = !DILocation(line: 313, column: 1, scope: !518)
!684 = distinct !DISubprogram(name: "nn_device_oneway", scope: !2, file: !2, line: 319, type: !685, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !79)
!685 = !DISubroutineType(types: !686)
!686 = !{!63, !63, !63, !63, !63}
!687 = !DILocalVariable(name: "s1", arg: 1, scope: !684, file: !2, line: 319, type: !63)
!688 = !DILocation(line: 319, column: 34, scope: !684)
!689 = !DILocalVariable(name: "s1rcv", arg: 2, scope: !684, file: !2, line: 319, type: !63)
!690 = !DILocation(line: 319, column: 42, scope: !684)
!691 = !DILocalVariable(name: "s2", arg: 3, scope: !684, file: !2, line: 319, type: !63)
!692 = !DILocation(line: 319, column: 53, scope: !684)
!693 = !DILocalVariable(name: "s2snd", arg: 4, scope: !684, file: !2, line: 319, type: !63)
!694 = !DILocation(line: 319, column: 61, scope: !684)
!695 = !DILocalVariable(name: "rc", scope: !684, file: !2, line: 321, type: !63)
!696 = !DILocation(line: 321, column: 9, scope: !684)
!697 = !DILocation(line: 323, column: 5, scope: !684)
!698 = !DILocation(line: 324, column: 31, scope: !699)
!699 = distinct !DILexicalBlock(scope: !684, file: !2, line: 323, column: 15)
!700 = !DILocation(line: 324, column: 35, scope: !699)
!701 = !DILocation(line: 324, column: 14, scope: !699)
!702 = !DILocation(line: 324, column: 12, scope: !699)
!703 = !DILocation(line: 325, column: 13, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !2, line: 325, column: 13)
!705 = !DILocation(line: 325, column: 13, scope: !699)
!706 = !DILocation(line: 326, column: 13, scope: !704)
!707 = distinct !{!707, !697, !708}
!708 = !DILocation(line: 327, column: 5, scope: !684)
!709 = distinct !DISubprogram(name: "nn_device_mvmsg", scope: !2, file: !2, line: 330, type: !710, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !79)
!710 = !DISubroutineType(types: !711)
!711 = !{!63, !63, !63, !63}
!712 = !DILocalVariable(name: "from", arg: 1, scope: !709, file: !2, line: 330, type: !63)
!713 = !DILocation(line: 330, column: 33, scope: !709)
!714 = !DILocalVariable(name: "to", arg: 2, scope: !709, file: !2, line: 330, type: !63)
!715 = !DILocation(line: 330, column: 43, scope: !709)
!716 = !DILocalVariable(name: "flags", arg: 3, scope: !709, file: !2, line: 330, type: !63)
!717 = !DILocation(line: 330, column: 51, scope: !709)
!718 = !DILocalVariable(name: "rc", scope: !709, file: !2, line: 332, type: !63)
!719 = !DILocation(line: 332, column: 9, scope: !709)
!720 = !DILocalVariable(name: "body", scope: !709, file: !2, line: 333, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!722 = !DILocation(line: 333, column: 11, scope: !709)
!723 = !DILocalVariable(name: "control", scope: !709, file: !2, line: 334, type: !721)
!724 = !DILocation(line: 334, column: 11, scope: !709)
!725 = !DILocalVariable(name: "iov", scope: !709, file: !2, line: 335, type: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_iovec", file: !727, line: 165, size: 128, elements: !728)
!727 = !DIFile(filename: "./src/core/../nn.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !726, file: !727, line: 166, baseType: !721, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !726, file: !727, line: 167, baseType: !64, size: 64, offset: 64)
!731 = !DILocation(line: 335, column: 21, scope: !709)
!732 = !DILocalVariable(name: "hdr", scope: !709, file: !2, line: 336, type: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msghdr", file: !727, line: 170, size: 256, elements: !734)
!734 = !{!735, !737, !738, !739}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !733, file: !727, line: 171, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !733, file: !727, line: 172, baseType: !63, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !733, file: !727, line: 173, baseType: !721, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !733, file: !727, line: 174, baseType: !64, size: 64, offset: 192)
!740 = !DILocation(line: 336, column: 22, scope: !709)
!741 = !DILocation(line: 338, column: 9, scope: !709)
!742 = !DILocation(line: 338, column: 18, scope: !709)
!743 = !DILocation(line: 339, column: 9, scope: !709)
!744 = !DILocation(line: 339, column: 17, scope: !709)
!745 = !DILocation(line: 340, column: 5, scope: !709)
!746 = !DILocation(line: 341, column: 9, scope: !709)
!747 = !DILocation(line: 341, column: 17, scope: !709)
!748 = !DILocation(line: 342, column: 9, scope: !709)
!749 = !DILocation(line: 342, column: 20, scope: !709)
!750 = !DILocation(line: 343, column: 9, scope: !709)
!751 = !DILocation(line: 343, column: 21, scope: !709)
!752 = !DILocation(line: 344, column: 9, scope: !709)
!753 = !DILocation(line: 344, column: 24, scope: !709)
!754 = !DILocation(line: 345, column: 22, scope: !709)
!755 = !DILocation(line: 345, column: 34, scope: !709)
!756 = !DILocation(line: 345, column: 10, scope: !709)
!757 = !DILocation(line: 345, column: 8, scope: !709)
!758 = !DILocation(line: 346, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !709, file: !2, line: 346, column: 9)
!760 = !DILocation(line: 0, scope: !759)
!761 = !DILocation(line: 346, column: 9, scope: !709)
!762 = !DILocation(line: 347, column: 9, scope: !759)
!763 = !DILocation(line: 348, column: 5, scope: !709)
!764 = !DILocation(line: 348, column: 5, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !2, line: 348, column: 5)
!766 = distinct !DILexicalBlock(scope: !709, file: !2, line: 348, column: 5)
!767 = !DILocation(line: 348, column: 5, scope: !766)
!768 = !DILocation(line: 348, column: 5, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !2, line: 348, column: 5)
!770 = !DILocation(line: 349, column: 22, scope: !709)
!771 = !DILocation(line: 349, column: 32, scope: !709)
!772 = !DILocation(line: 349, column: 10, scope: !709)
!773 = !DILocation(line: 349, column: 8, scope: !709)
!774 = !DILocation(line: 350, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !709, file: !2, line: 350, column: 9)
!776 = !DILocation(line: 0, scope: !775)
!777 = !DILocation(line: 350, column: 9, scope: !709)
!778 = !DILocation(line: 351, column: 9, scope: !775)
!779 = !DILocation(line: 352, column: 5, scope: !709)
!780 = !DILocation(line: 352, column: 5, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 352, column: 5)
!782 = distinct !DILexicalBlock(scope: !709, file: !2, line: 352, column: 5)
!783 = !DILocation(line: 352, column: 5, scope: !782)
!784 = !DILocation(line: 352, column: 5, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !2, line: 352, column: 5)
!786 = !DILocation(line: 353, column: 5, scope: !709)
!787 = !DILocation(line: 354, column: 1, scope: !709)
