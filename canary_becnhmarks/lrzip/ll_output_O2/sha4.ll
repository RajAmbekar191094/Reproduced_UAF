; ModuleID = './sha4.c'
source_filename = "./sha4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha4_context = type { [2 x i64], [8 x i64], [128 x i8], [128 x i8], [128 x i8], i32 }

@K = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16
@sha4_padding = internal constant <{ i8, [127 x i8] }> <{ i8 -128, [127 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha4_starts(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %2, %4
  %6 = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %4 ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %2 ]
  %7 = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %4 ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %2 ]
  %8 = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %4 ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %2 ]
  %9 = phi <2 x i64> [ <i64 -2662702644619276377, i64 5167115440072839076>, %4 ], [ <i64 2270897969802886507, i64 6620516959819538809>, %2 ]
  %10 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1
  store <2 x i64> %6, ptr %10, align 8
  %11 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 2
  store <2 x i64> %7, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 4
  store <2 x i64> %8, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 6
  store <2 x i64> %9, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 5
  store i32 %1, ptr %14, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha4_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %0, align 8, !tbaa !10
  %7 = and i64 %6, 127
  %8 = trunc i64 %7 to i32
  %9 = sub nuw nsw i32 128, %8
  %10 = zext i32 %2 to i64
  %11 = add i64 %6, %10
  store i64 %11, ptr %0, align 8, !tbaa !10
  %12 = icmp ult i64 %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds [2 x i64], ptr %0, i64 0, i64 1
  %15 = load i64, ptr %14, align 8, !tbaa !10
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8, !tbaa !10
  br label %17

17:                                               ; preds = %13, %5
  %18 = icmp eq i64 %7, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = icmp ugt i32 %9, %2
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds i8, ptr %22, i64 %7
  %24 = zext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %1, i64 %24, i1 false)
  tail call fastcc void @sha4_process(ptr noundef nonnull %0, ptr noundef nonnull %22)
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = sub nsw i32 %2, %9
  br label %27

27:                                               ; preds = %21, %19, %17
  %28 = phi i32 [ %26, %21 ], [ %2, %19 ], [ %2, %17 ]
  %29 = phi ptr [ %25, %21 ], [ %1, %19 ], [ %1, %17 ]
  %30 = phi i64 [ 0, %21 ], [ %7, %19 ], [ 0, %17 ]
  %31 = icmp sgt i32 %28, 127
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %35, %32 ], [ %29, %27 ]
  %34 = phi i32 [ %36, %32 ], [ %28, %27 ]
  tail call fastcc void @sha4_process(ptr noundef nonnull %0, ptr noundef %33)
  %35 = getelementptr inbounds i8, ptr %33, i64 128
  %36 = add nsw i32 %34, -128
  %37 = icmp ugt i32 %34, 255
  br i1 %37, label %32, label %38, !llvm.loop !12

38:                                               ; preds = %32, %27
  %39 = phi i32 [ %28, %27 ], [ %36, %32 ]
  %40 = phi ptr [ %29, %27 ], [ %35, %32 ]
  %41 = icmp sgt i32 %39, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 2
  %44 = getelementptr inbounds i8, ptr %43, i64 %30
  %45 = zext i32 %39 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr align 1 %40, i64 %45, i1 false)
  br label %46

46:                                               ; preds = %38, %42, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha4_process(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %3) #7
  br label %6

4:                                                ; preds = %6
  %5 = load i64, ptr %3, align 16, !tbaa !10
  br label %57

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %55, %6 ]
  %8 = shl nuw nsw i64 %7, 3
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !14
  %11 = zext i8 %10 to i64
  %12 = shl nuw i64 %11, 56
  %13 = or i64 %8, 1
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 48
  %18 = or i64 %17, %12
  %19 = or i64 %8, 2
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !14
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 40
  %24 = or i64 %18, %23
  %25 = or i64 %8, 3
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !14
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 32
  %30 = or i64 %24, %29
  %31 = or i64 %8, 4
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !14
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 24
  %36 = or i64 %30, %35
  %37 = or i64 %8, 5
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %40 = zext i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 16
  %42 = or i64 %36, %41
  %43 = or i64 %8, 6
  %44 = getelementptr inbounds i8, ptr %1, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !14
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 8
  %48 = or i64 %42, %47
  %49 = or i64 %8, 7
  %50 = getelementptr inbounds i8, ptr %1, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !14
  %52 = zext i8 %51 to i64
  %53 = or i64 %48, %52
  %54 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %7
  store i64 %53, ptr %54, align 8, !tbaa !10
  %55 = add nuw nsw i64 %7, 1
  %56 = icmp eq i64 %55, 16
  br i1 %56, label %4, label %6, !llvm.loop !15

57:                                               ; preds = %4, %57
  %58 = phi i64 [ %5, %4 ], [ %74, %57 ]
  %59 = phi i64 [ 16, %4 ], [ %83, %57 ]
  %60 = add nsw i64 %59, -2
  %61 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !10
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 45)
  %64 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 3)
  %65 = xor i64 %63, %64
  %66 = lshr i64 %62, 6
  %67 = xor i64 %65, %66
  %68 = add nsw i64 %59, -7
  %69 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !10
  %71 = add i64 %67, %70
  %72 = add nsw i64 %59, -15
  %73 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !10
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 63)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 56)
  %77 = xor i64 %75, %76
  %78 = lshr i64 %74, 7
  %79 = xor i64 %77, %78
  %80 = add i64 %71, %58
  %81 = add i64 %80, %79
  %82 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %59
  store i64 %81, ptr %82, align 8, !tbaa !10
  %83 = add nuw nsw i64 %59, 1
  %84 = icmp eq i64 %83, 80
  br i1 %84, label %85, label %57, !llvm.loop !16

85:                                               ; preds = %57
  %86 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !10
  %88 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 1
  %89 = load i64, ptr %88, align 8, !tbaa !10
  %90 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 2
  %91 = load i64, ptr %90, align 8, !tbaa !10
  %92 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 3
  %93 = load i64, ptr %92, align 8, !tbaa !10
  %94 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 4
  %95 = load i64, ptr %94, align 8, !tbaa !10
  %96 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 5
  %97 = load i64, ptr %96, align 8, !tbaa !10
  %98 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 6
  %99 = load i64, ptr %98, align 8, !tbaa !10
  %100 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 7
  %101 = load i64, ptr %100, align 8, !tbaa !10
  br label %102

102:                                              ; preds = %102, %85
  %103 = phi i64 [ %343, %102 ], [ 0, %85 ]
  %104 = phi i64 [ %342, %102 ], [ %87, %85 ]
  %105 = phi i64 [ %313, %102 ], [ %89, %85 ]
  %106 = phi i64 [ %284, %102 ], [ %91, %85 ]
  %107 = phi i64 [ %255, %102 ], [ %93, %85 ]
  %108 = phi i64 [ %341, %102 ], [ %95, %85 ]
  %109 = phi i64 [ %312, %102 ], [ %97, %85 ]
  %110 = phi i64 [ %283, %102 ], [ %99, %85 ]
  %111 = phi i64 [ %254, %102 ], [ %101, %85 ]
  %112 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 50)
  %113 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 46)
  %114 = xor i64 %112, %113
  %115 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 23)
  %116 = xor i64 %114, %115
  %117 = add i64 %111, %116
  %118 = xor i64 %110, %109
  %119 = and i64 %118, %108
  %120 = xor i64 %119, %110
  %121 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %103
  %122 = load i64, ptr %121, align 16, !tbaa !10
  %123 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %103
  %124 = load i64, ptr %123, align 16, !tbaa !10
  %125 = add i64 %117, %122
  %126 = add i64 %125, %120
  %127 = add i64 %126, %124
  %128 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 36)
  %129 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 30)
  %130 = xor i64 %128, %129
  %131 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 25)
  %132 = xor i64 %130, %131
  %133 = and i64 %105, %104
  %134 = or i64 %105, %104
  %135 = and i64 %106, %134
  %136 = or i64 %135, %133
  %137 = add i64 %136, %132
  %138 = add i64 %127, %107
  %139 = add i64 %137, %127
  %140 = or i64 %103, 1
  %141 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 50)
  %142 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 46)
  %143 = xor i64 %141, %142
  %144 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 23)
  %145 = xor i64 %143, %144
  %146 = xor i64 %109, %108
  %147 = and i64 %138, %146
  %148 = xor i64 %147, %109
  %149 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %140
  %150 = load i64, ptr %149, align 8, !tbaa !10
  %151 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %140
  %152 = load i64, ptr %151, align 8, !tbaa !10
  %153 = add i64 %150, %110
  %154 = add i64 %153, %152
  %155 = add i64 %154, %148
  %156 = add i64 %155, %145
  %157 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 36)
  %158 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 30)
  %159 = xor i64 %157, %158
  %160 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 25)
  %161 = xor i64 %159, %160
  %162 = and i64 %139, %104
  %163 = or i64 %139, %104
  %164 = and i64 %163, %105
  %165 = or i64 %164, %162
  %166 = add i64 %161, %165
  %167 = add i64 %156, %106
  %168 = add i64 %166, %156
  %169 = or i64 %103, 2
  %170 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 50)
  %171 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 46)
  %172 = xor i64 %170, %171
  %173 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 23)
  %174 = xor i64 %172, %173
  %175 = xor i64 %138, %108
  %176 = and i64 %167, %175
  %177 = xor i64 %176, %108
  %178 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %169
  %179 = load i64, ptr %178, align 16, !tbaa !10
  %180 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %169
  %181 = load i64, ptr %180, align 16, !tbaa !10
  %182 = add i64 %179, %109
  %183 = add i64 %182, %181
  %184 = add i64 %183, %177
  %185 = add i64 %184, %174
  %186 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 36)
  %187 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 30)
  %188 = xor i64 %186, %187
  %189 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 25)
  %190 = xor i64 %188, %189
  %191 = and i64 %168, %139
  %192 = or i64 %168, %139
  %193 = and i64 %192, %104
  %194 = or i64 %193, %191
  %195 = add i64 %190, %194
  %196 = add i64 %185, %105
  %197 = add i64 %195, %185
  %198 = or i64 %103, 3
  %199 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 50)
  %200 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 46)
  %201 = xor i64 %199, %200
  %202 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 23)
  %203 = xor i64 %201, %202
  %204 = xor i64 %167, %138
  %205 = and i64 %196, %204
  %206 = xor i64 %205, %138
  %207 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %198
  %208 = load i64, ptr %207, align 8, !tbaa !10
  %209 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %198
  %210 = load i64, ptr %209, align 8, !tbaa !10
  %211 = add i64 %208, %108
  %212 = add i64 %211, %210
  %213 = add i64 %212, %206
  %214 = add i64 %213, %203
  %215 = tail call i64 @llvm.fshl.i64(i64 %197, i64 %197, i64 36)
  %216 = tail call i64 @llvm.fshl.i64(i64 %197, i64 %197, i64 30)
  %217 = xor i64 %215, %216
  %218 = tail call i64 @llvm.fshl.i64(i64 %197, i64 %197, i64 25)
  %219 = xor i64 %217, %218
  %220 = and i64 %197, %168
  %221 = or i64 %197, %168
  %222 = and i64 %221, %139
  %223 = or i64 %222, %220
  %224 = add i64 %219, %223
  %225 = add i64 %214, %104
  %226 = add i64 %224, %214
  %227 = or i64 %103, 4
  %228 = tail call i64 @llvm.fshl.i64(i64 %225, i64 %225, i64 50)
  %229 = tail call i64 @llvm.fshl.i64(i64 %225, i64 %225, i64 46)
  %230 = xor i64 %228, %229
  %231 = tail call i64 @llvm.fshl.i64(i64 %225, i64 %225, i64 23)
  %232 = xor i64 %230, %231
  %233 = xor i64 %196, %167
  %234 = and i64 %225, %233
  %235 = xor i64 %234, %167
  %236 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %227
  %237 = load i64, ptr %236, align 16, !tbaa !10
  %238 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %227
  %239 = load i64, ptr %238, align 16, !tbaa !10
  %240 = add i64 %237, %138
  %241 = add i64 %240, %239
  %242 = add i64 %241, %235
  %243 = add i64 %242, %232
  %244 = tail call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 36)
  %245 = tail call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 30)
  %246 = xor i64 %244, %245
  %247 = tail call i64 @llvm.fshl.i64(i64 %226, i64 %226, i64 25)
  %248 = xor i64 %246, %247
  %249 = and i64 %226, %197
  %250 = or i64 %226, %197
  %251 = and i64 %250, %168
  %252 = or i64 %251, %249
  %253 = add i64 %248, %252
  %254 = add i64 %243, %139
  %255 = add i64 %253, %243
  %256 = or i64 %103, 5
  %257 = tail call i64 @llvm.fshl.i64(i64 %254, i64 %254, i64 50)
  %258 = tail call i64 @llvm.fshl.i64(i64 %254, i64 %254, i64 46)
  %259 = xor i64 %257, %258
  %260 = tail call i64 @llvm.fshl.i64(i64 %254, i64 %254, i64 23)
  %261 = xor i64 %259, %260
  %262 = xor i64 %225, %196
  %263 = and i64 %254, %262
  %264 = xor i64 %263, %196
  %265 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %256
  %266 = load i64, ptr %265, align 8, !tbaa !10
  %267 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %256
  %268 = load i64, ptr %267, align 8, !tbaa !10
  %269 = add i64 %268, %266
  %270 = add i64 %269, %167
  %271 = add i64 %270, %264
  %272 = add i64 %271, %261
  %273 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 36)
  %274 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 30)
  %275 = xor i64 %273, %274
  %276 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 25)
  %277 = xor i64 %275, %276
  %278 = and i64 %255, %226
  %279 = or i64 %255, %226
  %280 = and i64 %279, %197
  %281 = or i64 %280, %278
  %282 = add i64 %277, %281
  %283 = add i64 %272, %168
  %284 = add i64 %282, %272
  %285 = or i64 %103, 6
  %286 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 50)
  %287 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 46)
  %288 = xor i64 %286, %287
  %289 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 23)
  %290 = xor i64 %288, %289
  %291 = xor i64 %254, %225
  %292 = and i64 %283, %291
  %293 = xor i64 %292, %225
  %294 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %285
  %295 = load i64, ptr %294, align 16, !tbaa !10
  %296 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %285
  %297 = load i64, ptr %296, align 16, !tbaa !10
  %298 = add i64 %297, %295
  %299 = add i64 %298, %196
  %300 = add i64 %299, %293
  %301 = add i64 %300, %290
  %302 = tail call i64 @llvm.fshl.i64(i64 %284, i64 %284, i64 36)
  %303 = tail call i64 @llvm.fshl.i64(i64 %284, i64 %284, i64 30)
  %304 = xor i64 %302, %303
  %305 = tail call i64 @llvm.fshl.i64(i64 %284, i64 %284, i64 25)
  %306 = xor i64 %304, %305
  %307 = and i64 %284, %255
  %308 = or i64 %284, %255
  %309 = and i64 %308, %226
  %310 = or i64 %309, %307
  %311 = add i64 %306, %310
  %312 = add i64 %301, %197
  %313 = add i64 %311, %301
  %314 = or i64 %103, 7
  %315 = tail call i64 @llvm.fshl.i64(i64 %312, i64 %312, i64 50)
  %316 = tail call i64 @llvm.fshl.i64(i64 %312, i64 %312, i64 46)
  %317 = xor i64 %315, %316
  %318 = tail call i64 @llvm.fshl.i64(i64 %312, i64 %312, i64 23)
  %319 = xor i64 %317, %318
  %320 = xor i64 %283, %254
  %321 = and i64 %312, %320
  %322 = xor i64 %321, %254
  %323 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %314
  %324 = load i64, ptr %323, align 8, !tbaa !10
  %325 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %314
  %326 = load i64, ptr %325, align 8, !tbaa !10
  %327 = add i64 %326, %324
  %328 = add i64 %327, %225
  %329 = add i64 %328, %322
  %330 = add i64 %329, %319
  %331 = tail call i64 @llvm.fshl.i64(i64 %313, i64 %313, i64 36)
  %332 = tail call i64 @llvm.fshl.i64(i64 %313, i64 %313, i64 30)
  %333 = xor i64 %331, %332
  %334 = tail call i64 @llvm.fshl.i64(i64 %313, i64 %313, i64 25)
  %335 = xor i64 %333, %334
  %336 = and i64 %313, %284
  %337 = or i64 %313, %284
  %338 = and i64 %337, %255
  %339 = or i64 %338, %336
  %340 = add i64 %335, %339
  %341 = add i64 %330, %226
  %342 = add i64 %340, %330
  %343 = add nuw nsw i64 %103, 8
  %344 = icmp ult i64 %103, 72
  br i1 %344, label %102, label %345, !llvm.loop !17

345:                                              ; preds = %102
  %346 = add i64 %342, %87
  store i64 %346, ptr %86, align 8, !tbaa !10
  %347 = add i64 %313, %89
  store i64 %347, ptr %88, align 8, !tbaa !10
  %348 = add i64 %284, %91
  store i64 %348, ptr %90, align 8, !tbaa !10
  %349 = add i64 %255, %93
  store i64 %349, ptr %92, align 8, !tbaa !10
  %350 = add i64 %341, %95
  store i64 %350, ptr %94, align 8, !tbaa !10
  %351 = add i64 %312, %97
  store i64 %351, ptr %96, align 8, !tbaa !10
  %352 = add i64 %283, %99
  store i64 %352, ptr %98, align 8, !tbaa !10
  %353 = add i64 %254, %101
  store i64 %353, ptr %100, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha4_finish(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #4 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %4 = load i64, ptr %0, align 8, !tbaa !10
  %5 = getelementptr inbounds [2 x i64], ptr %0, i64 0, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !10
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %4, i64 3)
  %8 = shl i64 %4, 3
  %9 = lshr i64 %7, 56
  %10 = trunc i64 %9 to i8
  store i8 %10, ptr %3, align 16, !tbaa !14
  %11 = lshr i64 %7, 48
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !14
  %14 = lshr i64 %7, 40
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 2
  store i8 %15, ptr %16, align 2, !tbaa !14
  %17 = lshr i64 %7, 32
  %18 = trunc i64 %17 to i8
  %19 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 3
  store i8 %18, ptr %19, align 1, !tbaa !14
  %20 = lshr i64 %7, 24
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 4
  store i8 %21, ptr %22, align 4, !tbaa !14
  %23 = lshr i64 %7, 16
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 5
  store i8 %24, ptr %25, align 1, !tbaa !14
  %26 = lshr i64 %7, 8
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 6
  store i8 %27, ptr %28, align 2, !tbaa !14
  %29 = trunc i64 %7 to i8
  %30 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 7
  store i8 %29, ptr %30, align 1, !tbaa !14
  %31 = lshr i64 %8, 56
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 8
  store i8 %32, ptr %33, align 8, !tbaa !14
  %34 = lshr i64 %8, 48
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 9
  store i8 %35, ptr %36, align 1, !tbaa !14
  %37 = lshr i64 %8, 40
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 10
  store i8 %38, ptr %39, align 2, !tbaa !14
  %40 = lshr i64 %8, 32
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 11
  store i8 %41, ptr %42, align 1, !tbaa !14
  %43 = lshr i64 %8, 24
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 12
  store i8 %44, ptr %45, align 4, !tbaa !14
  %46 = lshr i64 %8, 16
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 13
  store i8 %47, ptr %48, align 1, !tbaa !14
  %49 = lshr i64 %8, 8
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 14
  store i8 %50, ptr %51, align 2, !tbaa !14
  %52 = trunc i64 %8 to i8
  %53 = getelementptr inbounds [16 x i8], ptr %3, i64 0, i64 15
  store i8 %52, ptr %53, align 1, !tbaa !14
  %54 = trunc i64 %4 to i32
  %55 = and i32 %54, 127
  %56 = icmp ult i32 %55, 112
  %57 = select i1 %56, i32 112, i32 240
  %58 = sub nsw i32 %57, %55
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %98, label %60

60:                                               ; preds = %2
  %61 = and i64 %4, 127
  %62 = trunc i64 %61 to i32
  %63 = sub nuw nsw i32 128, %62
  %64 = zext i32 %58 to i64
  %65 = add i64 %4, %64
  store i64 %65, ptr %0, align 8, !tbaa !10
  %66 = icmp ult i64 %65, %64
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = add i64 %6, 1
  store i64 %68, ptr %5, align 8, !tbaa !10
  br label %69

69:                                               ; preds = %67, %60
  %70 = icmp eq i64 %61, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %69
  %72 = icmp ult i32 %58, %63
  br i1 %72, label %79, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 2
  %75 = getelementptr inbounds i8, ptr %74, i64 %61
  %76 = zext i32 %63 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %75, ptr nonnull align 16 @sha4_padding, i64 %76, i1 false)
  tail call fastcc void @sha4_process(ptr noundef nonnull %0, ptr noundef nonnull %74)
  %77 = getelementptr inbounds i8, ptr @sha4_padding, i64 %76
  %78 = sub nsw i32 %58, %63
  br label %79

79:                                               ; preds = %73, %71, %69
  %80 = phi i32 [ %78, %73 ], [ %58, %71 ], [ %58, %69 ]
  %81 = phi ptr [ %77, %73 ], [ @sha4_padding, %71 ], [ @sha4_padding, %69 ]
  %82 = phi i64 [ 0, %73 ], [ %61, %71 ], [ 0, %69 ]
  %83 = icmp sgt i32 %80, 127
  br i1 %83, label %84, label %90

84:                                               ; preds = %79, %84
  %85 = phi ptr [ %87, %84 ], [ %81, %79 ]
  %86 = phi i32 [ %88, %84 ], [ %80, %79 ]
  tail call fastcc void @sha4_process(ptr noundef nonnull %0, ptr noundef %85)
  %87 = getelementptr inbounds i8, ptr %85, i64 128
  %88 = add nsw i32 %86, -128
  %89 = icmp ugt i32 %86, 255
  br i1 %89, label %84, label %90, !llvm.loop !12

90:                                               ; preds = %84, %79
  %91 = phi i32 [ %80, %79 ], [ %88, %84 ]
  %92 = phi ptr [ %81, %79 ], [ %87, %84 ]
  %93 = icmp sgt i32 %91, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 2
  %96 = getelementptr inbounds i8, ptr %95, i64 %82
  %97 = zext i32 %91 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %96, ptr align 1 %92, i64 %97, i1 false)
  br label %98

98:                                               ; preds = %2, %90, %94
  %99 = load i64, ptr %0, align 8, !tbaa !10
  %100 = and i64 %99, 127
  %101 = trunc i64 %100 to i32
  %102 = sub nuw nsw i64 128, %100
  %103 = add i64 %99, 16
  store i64 %103, ptr %0, align 8, !tbaa !10
  %104 = icmp ugt i64 %99, -17
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i64, ptr %5, align 8, !tbaa !10
  %107 = add i64 %106, 1
  store i64 %107, ptr %5, align 8, !tbaa !10
  br label %108

108:                                              ; preds = %105, %98
  %109 = icmp eq i64 %100, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %108
  %111 = icmp ult i32 %101, 112
  br i1 %111, label %118, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 2
  %114 = getelementptr inbounds i8, ptr %113, i64 %100
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %114, ptr nonnull align 16 %3, i64 %102, i1 false)
  tail call fastcc void @sha4_process(ptr noundef nonnull %0, ptr noundef nonnull %113)
  %115 = getelementptr inbounds i8, ptr %3, i64 %102
  %116 = add nsw i32 %101, -112
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %108, %110, %112
  %119 = phi i64 [ 0, %112 ], [ 0, %108 ], [ %100, %110 ]
  %120 = phi ptr [ %115, %112 ], [ %3, %108 ], [ %3, %110 ]
  %121 = phi i32 [ %116, %112 ], [ 16, %108 ], [ 16, %110 ]
  %122 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 2
  %123 = getelementptr inbounds i8, ptr %122, i64 %119
  %124 = zext i32 %121 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %123, ptr align 1 %120, i64 %124, i1 false)
  br label %125

125:                                              ; preds = %112, %118
  %126 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !10
  %128 = lshr i64 %127, 56
  %129 = trunc i64 %128 to i8
  store i8 %129, ptr %1, align 1, !tbaa !14
  %130 = load i64, ptr %126, align 8, !tbaa !10
  %131 = lshr i64 %130, 48
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %132, ptr %133, align 1, !tbaa !14
  %134 = load i64, ptr %126, align 8, !tbaa !10
  %135 = lshr i64 %134, 40
  %136 = trunc i64 %135 to i8
  %137 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %136, ptr %137, align 1, !tbaa !14
  %138 = load i64, ptr %126, align 8, !tbaa !10
  %139 = lshr i64 %138, 32
  %140 = trunc i64 %139 to i8
  %141 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %140, ptr %141, align 1, !tbaa !14
  %142 = load i64, ptr %126, align 8, !tbaa !10
  %143 = lshr i64 %142, 24
  %144 = trunc i64 %143 to i8
  %145 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %144, ptr %145, align 1, !tbaa !14
  %146 = load i64, ptr %126, align 8, !tbaa !10
  %147 = lshr i64 %146, 16
  %148 = trunc i64 %147 to i8
  %149 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %148, ptr %149, align 1, !tbaa !14
  %150 = load i64, ptr %126, align 8, !tbaa !10
  %151 = lshr i64 %150, 8
  %152 = trunc i64 %151 to i8
  %153 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 %152, ptr %153, align 1, !tbaa !14
  %154 = load i64, ptr %126, align 8, !tbaa !10
  %155 = trunc i64 %154 to i8
  %156 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %155, ptr %156, align 1, !tbaa !14
  %157 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 1
  %158 = load i64, ptr %157, align 8, !tbaa !10
  %159 = lshr i64 %158, 56
  %160 = trunc i64 %159 to i8
  %161 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 %160, ptr %161, align 1, !tbaa !14
  %162 = load i64, ptr %157, align 8, !tbaa !10
  %163 = lshr i64 %162, 48
  %164 = trunc i64 %163 to i8
  %165 = getelementptr inbounds i8, ptr %1, i64 9
  store i8 %164, ptr %165, align 1, !tbaa !14
  %166 = load i64, ptr %157, align 8, !tbaa !10
  %167 = lshr i64 %166, 40
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds i8, ptr %1, i64 10
  store i8 %168, ptr %169, align 1, !tbaa !14
  %170 = load i64, ptr %157, align 8, !tbaa !10
  %171 = lshr i64 %170, 32
  %172 = trunc i64 %171 to i8
  %173 = getelementptr inbounds i8, ptr %1, i64 11
  store i8 %172, ptr %173, align 1, !tbaa !14
  %174 = load i64, ptr %157, align 8, !tbaa !10
  %175 = lshr i64 %174, 24
  %176 = trunc i64 %175 to i8
  %177 = getelementptr inbounds i8, ptr %1, i64 12
  store i8 %176, ptr %177, align 1, !tbaa !14
  %178 = load i64, ptr %157, align 8, !tbaa !10
  %179 = lshr i64 %178, 16
  %180 = trunc i64 %179 to i8
  %181 = getelementptr inbounds i8, ptr %1, i64 13
  store i8 %180, ptr %181, align 1, !tbaa !14
  %182 = load i64, ptr %157, align 8, !tbaa !10
  %183 = lshr i64 %182, 8
  %184 = trunc i64 %183 to i8
  %185 = getelementptr inbounds i8, ptr %1, i64 14
  store i8 %184, ptr %185, align 1, !tbaa !14
  %186 = load i64, ptr %157, align 8, !tbaa !10
  %187 = trunc i64 %186 to i8
  %188 = getelementptr inbounds i8, ptr %1, i64 15
  store i8 %187, ptr %188, align 1, !tbaa !14
  %189 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 2
  %190 = load i64, ptr %189, align 8, !tbaa !10
  %191 = lshr i64 %190, 56
  %192 = trunc i64 %191 to i8
  %193 = getelementptr inbounds i8, ptr %1, i64 16
  store i8 %192, ptr %193, align 1, !tbaa !14
  %194 = load i64, ptr %189, align 8, !tbaa !10
  %195 = lshr i64 %194, 48
  %196 = trunc i64 %195 to i8
  %197 = getelementptr inbounds i8, ptr %1, i64 17
  store i8 %196, ptr %197, align 1, !tbaa !14
  %198 = load i64, ptr %189, align 8, !tbaa !10
  %199 = lshr i64 %198, 40
  %200 = trunc i64 %199 to i8
  %201 = getelementptr inbounds i8, ptr %1, i64 18
  store i8 %200, ptr %201, align 1, !tbaa !14
  %202 = load i64, ptr %189, align 8, !tbaa !10
  %203 = lshr i64 %202, 32
  %204 = trunc i64 %203 to i8
  %205 = getelementptr inbounds i8, ptr %1, i64 19
  store i8 %204, ptr %205, align 1, !tbaa !14
  %206 = load i64, ptr %189, align 8, !tbaa !10
  %207 = lshr i64 %206, 24
  %208 = trunc i64 %207 to i8
  %209 = getelementptr inbounds i8, ptr %1, i64 20
  store i8 %208, ptr %209, align 1, !tbaa !14
  %210 = load i64, ptr %189, align 8, !tbaa !10
  %211 = lshr i64 %210, 16
  %212 = trunc i64 %211 to i8
  %213 = getelementptr inbounds i8, ptr %1, i64 21
  store i8 %212, ptr %213, align 1, !tbaa !14
  %214 = load i64, ptr %189, align 8, !tbaa !10
  %215 = lshr i64 %214, 8
  %216 = trunc i64 %215 to i8
  %217 = getelementptr inbounds i8, ptr %1, i64 22
  store i8 %216, ptr %217, align 1, !tbaa !14
  %218 = load i64, ptr %189, align 8, !tbaa !10
  %219 = trunc i64 %218 to i8
  %220 = getelementptr inbounds i8, ptr %1, i64 23
  store i8 %219, ptr %220, align 1, !tbaa !14
  %221 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 3
  %222 = load i64, ptr %221, align 8, !tbaa !10
  %223 = lshr i64 %222, 56
  %224 = trunc i64 %223 to i8
  %225 = getelementptr inbounds i8, ptr %1, i64 24
  store i8 %224, ptr %225, align 1, !tbaa !14
  %226 = load i64, ptr %221, align 8, !tbaa !10
  %227 = lshr i64 %226, 48
  %228 = trunc i64 %227 to i8
  %229 = getelementptr inbounds i8, ptr %1, i64 25
  store i8 %228, ptr %229, align 1, !tbaa !14
  %230 = load i64, ptr %221, align 8, !tbaa !10
  %231 = lshr i64 %230, 40
  %232 = trunc i64 %231 to i8
  %233 = getelementptr inbounds i8, ptr %1, i64 26
  store i8 %232, ptr %233, align 1, !tbaa !14
  %234 = load i64, ptr %221, align 8, !tbaa !10
  %235 = lshr i64 %234, 32
  %236 = trunc i64 %235 to i8
  %237 = getelementptr inbounds i8, ptr %1, i64 27
  store i8 %236, ptr %237, align 1, !tbaa !14
  %238 = load i64, ptr %221, align 8, !tbaa !10
  %239 = lshr i64 %238, 24
  %240 = trunc i64 %239 to i8
  %241 = getelementptr inbounds i8, ptr %1, i64 28
  store i8 %240, ptr %241, align 1, !tbaa !14
  %242 = load i64, ptr %221, align 8, !tbaa !10
  %243 = lshr i64 %242, 16
  %244 = trunc i64 %243 to i8
  %245 = getelementptr inbounds i8, ptr %1, i64 29
  store i8 %244, ptr %245, align 1, !tbaa !14
  %246 = load i64, ptr %221, align 8, !tbaa !10
  %247 = lshr i64 %246, 8
  %248 = trunc i64 %247 to i8
  %249 = getelementptr inbounds i8, ptr %1, i64 30
  store i8 %248, ptr %249, align 1, !tbaa !14
  %250 = load i64, ptr %221, align 8, !tbaa !10
  %251 = trunc i64 %250 to i8
  %252 = getelementptr inbounds i8, ptr %1, i64 31
  store i8 %251, ptr %252, align 1, !tbaa !14
  %253 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 4
  %254 = load i64, ptr %253, align 8, !tbaa !10
  %255 = lshr i64 %254, 56
  %256 = trunc i64 %255 to i8
  %257 = getelementptr inbounds i8, ptr %1, i64 32
  store i8 %256, ptr %257, align 1, !tbaa !14
  %258 = load i64, ptr %253, align 8, !tbaa !10
  %259 = lshr i64 %258, 48
  %260 = trunc i64 %259 to i8
  %261 = getelementptr inbounds i8, ptr %1, i64 33
  store i8 %260, ptr %261, align 1, !tbaa !14
  %262 = load i64, ptr %253, align 8, !tbaa !10
  %263 = lshr i64 %262, 40
  %264 = trunc i64 %263 to i8
  %265 = getelementptr inbounds i8, ptr %1, i64 34
  store i8 %264, ptr %265, align 1, !tbaa !14
  %266 = load i64, ptr %253, align 8, !tbaa !10
  %267 = lshr i64 %266, 32
  %268 = trunc i64 %267 to i8
  %269 = getelementptr inbounds i8, ptr %1, i64 35
  store i8 %268, ptr %269, align 1, !tbaa !14
  %270 = load i64, ptr %253, align 8, !tbaa !10
  %271 = lshr i64 %270, 24
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds i8, ptr %1, i64 36
  store i8 %272, ptr %273, align 1, !tbaa !14
  %274 = load i64, ptr %253, align 8, !tbaa !10
  %275 = lshr i64 %274, 16
  %276 = trunc i64 %275 to i8
  %277 = getelementptr inbounds i8, ptr %1, i64 37
  store i8 %276, ptr %277, align 1, !tbaa !14
  %278 = load i64, ptr %253, align 8, !tbaa !10
  %279 = lshr i64 %278, 8
  %280 = trunc i64 %279 to i8
  %281 = getelementptr inbounds i8, ptr %1, i64 38
  store i8 %280, ptr %281, align 1, !tbaa !14
  %282 = load i64, ptr %253, align 8, !tbaa !10
  %283 = trunc i64 %282 to i8
  %284 = getelementptr inbounds i8, ptr %1, i64 39
  store i8 %283, ptr %284, align 1, !tbaa !14
  %285 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 5
  %286 = load i64, ptr %285, align 8, !tbaa !10
  %287 = lshr i64 %286, 56
  %288 = trunc i64 %287 to i8
  %289 = getelementptr inbounds i8, ptr %1, i64 40
  store i8 %288, ptr %289, align 1, !tbaa !14
  %290 = load i64, ptr %285, align 8, !tbaa !10
  %291 = lshr i64 %290, 48
  %292 = trunc i64 %291 to i8
  %293 = getelementptr inbounds i8, ptr %1, i64 41
  store i8 %292, ptr %293, align 1, !tbaa !14
  %294 = load i64, ptr %285, align 8, !tbaa !10
  %295 = lshr i64 %294, 40
  %296 = trunc i64 %295 to i8
  %297 = getelementptr inbounds i8, ptr %1, i64 42
  store i8 %296, ptr %297, align 1, !tbaa !14
  %298 = load i64, ptr %285, align 8, !tbaa !10
  %299 = lshr i64 %298, 32
  %300 = trunc i64 %299 to i8
  %301 = getelementptr inbounds i8, ptr %1, i64 43
  store i8 %300, ptr %301, align 1, !tbaa !14
  %302 = load i64, ptr %285, align 8, !tbaa !10
  %303 = lshr i64 %302, 24
  %304 = trunc i64 %303 to i8
  %305 = getelementptr inbounds i8, ptr %1, i64 44
  store i8 %304, ptr %305, align 1, !tbaa !14
  %306 = load i64, ptr %285, align 8, !tbaa !10
  %307 = lshr i64 %306, 16
  %308 = trunc i64 %307 to i8
  %309 = getelementptr inbounds i8, ptr %1, i64 45
  store i8 %308, ptr %309, align 1, !tbaa !14
  %310 = load i64, ptr %285, align 8, !tbaa !10
  %311 = lshr i64 %310, 8
  %312 = trunc i64 %311 to i8
  %313 = getelementptr inbounds i8, ptr %1, i64 46
  store i8 %312, ptr %313, align 1, !tbaa !14
  %314 = load i64, ptr %285, align 8, !tbaa !10
  %315 = trunc i64 %314 to i8
  %316 = getelementptr inbounds i8, ptr %1, i64 47
  store i8 %315, ptr %316, align 1, !tbaa !14
  %317 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 5
  %318 = load i32, ptr %317, align 8, !tbaa !5
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %385

320:                                              ; preds = %125
  %321 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 6
  %322 = load i64, ptr %321, align 8, !tbaa !10
  %323 = lshr i64 %322, 56
  %324 = trunc i64 %323 to i8
  %325 = getelementptr inbounds i8, ptr %1, i64 48
  store i8 %324, ptr %325, align 1, !tbaa !14
  %326 = load i64, ptr %321, align 8, !tbaa !10
  %327 = lshr i64 %326, 48
  %328 = trunc i64 %327 to i8
  %329 = getelementptr inbounds i8, ptr %1, i64 49
  store i8 %328, ptr %329, align 1, !tbaa !14
  %330 = load i64, ptr %321, align 8, !tbaa !10
  %331 = lshr i64 %330, 40
  %332 = trunc i64 %331 to i8
  %333 = getelementptr inbounds i8, ptr %1, i64 50
  store i8 %332, ptr %333, align 1, !tbaa !14
  %334 = load i64, ptr %321, align 8, !tbaa !10
  %335 = lshr i64 %334, 32
  %336 = trunc i64 %335 to i8
  %337 = getelementptr inbounds i8, ptr %1, i64 51
  store i8 %336, ptr %337, align 1, !tbaa !14
  %338 = load i64, ptr %321, align 8, !tbaa !10
  %339 = lshr i64 %338, 24
  %340 = trunc i64 %339 to i8
  %341 = getelementptr inbounds i8, ptr %1, i64 52
  store i8 %340, ptr %341, align 1, !tbaa !14
  %342 = load i64, ptr %321, align 8, !tbaa !10
  %343 = lshr i64 %342, 16
  %344 = trunc i64 %343 to i8
  %345 = getelementptr inbounds i8, ptr %1, i64 53
  store i8 %344, ptr %345, align 1, !tbaa !14
  %346 = load i64, ptr %321, align 8, !tbaa !10
  %347 = lshr i64 %346, 8
  %348 = trunc i64 %347 to i8
  %349 = getelementptr inbounds i8, ptr %1, i64 54
  store i8 %348, ptr %349, align 1, !tbaa !14
  %350 = load i64, ptr %321, align 8, !tbaa !10
  %351 = trunc i64 %350 to i8
  %352 = getelementptr inbounds i8, ptr %1, i64 55
  store i8 %351, ptr %352, align 1, !tbaa !14
  %353 = getelementptr inbounds %struct.sha4_context, ptr %0, i64 0, i32 1, i64 7
  %354 = load i64, ptr %353, align 8, !tbaa !10
  %355 = lshr i64 %354, 56
  %356 = trunc i64 %355 to i8
  %357 = getelementptr inbounds i8, ptr %1, i64 56
  store i8 %356, ptr %357, align 1, !tbaa !14
  %358 = load i64, ptr %353, align 8, !tbaa !10
  %359 = lshr i64 %358, 48
  %360 = trunc i64 %359 to i8
  %361 = getelementptr inbounds i8, ptr %1, i64 57
  store i8 %360, ptr %361, align 1, !tbaa !14
  %362 = load i64, ptr %353, align 8, !tbaa !10
  %363 = lshr i64 %362, 40
  %364 = trunc i64 %363 to i8
  %365 = getelementptr inbounds i8, ptr %1, i64 58
  store i8 %364, ptr %365, align 1, !tbaa !14
  %366 = load i64, ptr %353, align 8, !tbaa !10
  %367 = lshr i64 %366, 32
  %368 = trunc i64 %367 to i8
  %369 = getelementptr inbounds i8, ptr %1, i64 59
  store i8 %368, ptr %369, align 1, !tbaa !14
  %370 = load i64, ptr %353, align 8, !tbaa !10
  %371 = lshr i64 %370, 24
  %372 = trunc i64 %371 to i8
  %373 = getelementptr inbounds i8, ptr %1, i64 60
  store i8 %372, ptr %373, align 1, !tbaa !14
  %374 = load i64, ptr %353, align 8, !tbaa !10
  %375 = lshr i64 %374, 16
  %376 = trunc i64 %375 to i8
  %377 = getelementptr inbounds i8, ptr %1, i64 61
  store i8 %376, ptr %377, align 1, !tbaa !14
  %378 = load i64, ptr %353, align 8, !tbaa !10
  %379 = lshr i64 %378, 8
  %380 = trunc i64 %379 to i8
  %381 = getelementptr inbounds i8, ptr %1, i64 62
  store i8 %380, ptr %381, align 1, !tbaa !14
  %382 = load i64, ptr %353, align 8, !tbaa !10
  %383 = trunc i64 %382 to i8
  %384 = getelementptr inbounds i8, ptr %1, i64 63
  store i8 %383, ptr %384, align 1, !tbaa !14
  br label %385

385:                                              ; preds = %320, %125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.sha4_context, align 8
  call void @llvm.lifetime.start.p0(i64 472, ptr nonnull %5) #7
  %6 = icmp eq i32 %3, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %7 ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %4 ]
  %10 = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %7 ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %4 ]
  %11 = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %7 ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %4 ]
  %12 = phi <2 x i64> [ <i64 -2662702644619276377, i64 5167115440072839076>, %7 ], [ <i64 2270897969802886507, i64 6620516959819538809>, %4 ]
  %13 = getelementptr inbounds %struct.sha4_context, ptr %5, i64 0, i32 1
  store <2 x i64> %9, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sha4_context, ptr %5, i64 0, i32 1, i64 2
  store <2 x i64> %10, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sha4_context, ptr %5, i64 0, i32 1, i64 4
  store <2 x i64> %11, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sha4_context, ptr %5, i64 0, i32 1, i64 6
  store <2 x i64> %12, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sha4_context, ptr %5, i64 0, i32 5
  store i32 %3, ptr %17, align 8, !tbaa !5
  %18 = icmp slt i32 %1, 1
  br i1 %18, label %35, label %19

19:                                               ; preds = %8
  %20 = zext i32 %1 to i64
  store i64 %20, ptr %5, align 8, !tbaa !10
  %21 = icmp ugt i32 %1, 127
  br i1 %21, label %22, label %30

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %25, %22 ], [ %0, %19 ]
  %24 = phi i32 [ %26, %22 ], [ %1, %19 ]
  call fastcc void @sha4_process(ptr noundef nonnull %5, ptr noundef %23)
  %25 = getelementptr inbounds i8, ptr %23, i64 128
  %26 = add nsw i32 %24, -128
  %27 = icmp ugt i32 %24, 255
  br i1 %27, label %22, label %28, !llvm.loop !12

28:                                               ; preds = %22
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %19, %28
  %31 = phi ptr [ %25, %28 ], [ %0, %19 ]
  %32 = phi i32 [ %26, %28 ], [ %1, %19 ]
  %33 = getelementptr inbounds %struct.sha4_context, ptr %5, i64 0, i32 2
  %34 = zext i32 %32 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %33, ptr align 1 %31, i64 %34, i1 false)
  br label %35

35:                                               ; preds = %8, %28, %30
  call void @sha4_finish(ptr noundef nonnull %5, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 472, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !9, i64 464}
!6 = !{!"", !7, i64 0, !7, i64 16, !7, i64 80, !7, i64 208, !7, i64 336, !9, i64 464}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
