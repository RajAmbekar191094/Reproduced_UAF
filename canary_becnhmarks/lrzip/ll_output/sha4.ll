; ModuleID = './sha4.c'
source_filename = "./sha4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha4_context = type { [2 x i64], [8 x i64], [128 x i8], [128 x i8], [128 x i8], i32 }

@K = internal constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16
@sha4_padding = internal constant <{ i8, [127 x i8] }> <{ i8 -128, [127 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha4_starts(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.sha4_context, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 0
  store i64 0, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.sha4_context, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds [2 x i64], ptr %9, i64 0, i64 1
  store i64 0, ptr %10, align 8
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.sha4_context, ptr %14, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i64], ptr %15, i64 0, i64 0
  store i64 7640891576956012808, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.sha4_context, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds [8 x i64], ptr %18, i64 0, i64 1
  store i64 -4942790177534073029, ptr %19, align 8
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.sha4_context, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds [8 x i64], ptr %21, i64 0, i64 2
  store i64 4354685564936845355, ptr %22, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.sha4_context, ptr %23, i32 0, i32 1
  %25 = getelementptr inbounds [8 x i64], ptr %24, i64 0, i64 3
  store i64 -6534734903238641935, ptr %25, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.sha4_context, ptr %26, i32 0, i32 1
  %28 = getelementptr inbounds [8 x i64], ptr %27, i64 0, i64 4
  store i64 5840696475078001361, ptr %28, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.sha4_context, ptr %29, i32 0, i32 1
  %31 = getelementptr inbounds [8 x i64], ptr %30, i64 0, i64 5
  store i64 -7276294671716946913, ptr %31, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.sha4_context, ptr %32, i32 0, i32 1
  %34 = getelementptr inbounds [8 x i64], ptr %33, i64 0, i64 6
  store i64 2270897969802886507, ptr %34, align 8
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.sha4_context, ptr %35, i32 0, i32 1
  %37 = getelementptr inbounds [8 x i64], ptr %36, i64 0, i64 7
  store i64 6620516959819538809, ptr %37, align 8
  br label %63

38:                                               ; preds = %2
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.sha4_context, ptr %39, i32 0, i32 1
  %41 = getelementptr inbounds [8 x i64], ptr %40, i64 0, i64 0
  store i64 -3766243637369397544, ptr %41, align 8
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.sha4_context, ptr %42, i32 0, i32 1
  %44 = getelementptr inbounds [8 x i64], ptr %43, i64 0, i64 1
  store i64 7105036623409894663, ptr %44, align 8
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.sha4_context, ptr %45, i32 0, i32 1
  %47 = getelementptr inbounds [8 x i64], ptr %46, i64 0, i64 2
  store i64 -7973340178411365097, ptr %47, align 8
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.sha4_context, ptr %48, i32 0, i32 1
  %50 = getelementptr inbounds [8 x i64], ptr %49, i64 0, i64 3
  store i64 1526699215303891257, ptr %50, align 8
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.sha4_context, ptr %51, i32 0, i32 1
  %53 = getelementptr inbounds [8 x i64], ptr %52, i64 0, i64 4
  store i64 7436329637833083697, ptr %53, align 8
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.sha4_context, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds [8 x i64], ptr %55, i64 0, i64 5
  store i64 -8163818279084223215, ptr %56, align 8
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.sha4_context, ptr %57, i32 0, i32 1
  %59 = getelementptr inbounds [8 x i64], ptr %58, i64 0, i64 6
  store i64 -2662702644619276377, ptr %59, align 8
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.sha4_context, ptr %60, i32 0, i32 1
  %62 = getelementptr inbounds [8 x i64], ptr %61, i64 0, i64 7
  store i64 5167115440072839076, ptr %62, align 8
  br label %63

63:                                               ; preds = %38, %13
  %64 = load i32, ptr %4, align 4
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct.sha4_context, ptr %65, i32 0, i32 5
  store i32 %64, ptr %66, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha4_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %91

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.sha4_context, ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds [2 x i64], ptr %14, i64 0, i64 0
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 127
  store i64 %17, ptr %8, align 8
  %18 = load i64, ptr %8, align 8
  %19 = sub i64 128, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %7, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.sha4_context, ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds [2 x i64], ptr %24, i64 0, i64 0
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, %22
  store i64 %27, ptr %25, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.sha4_context, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds [2 x i64], ptr %29, i64 0, i64 0
  %31 = load i64, ptr %30, align 8
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %12
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.sha4_context, ptr %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x i64], ptr %37, i64 0, i64 1
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %35, %12
  %42 = load i64, ptr %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i32, ptr %6, align 4
  %46 = load i32, ptr %7, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.sha4_context, ptr %49, i32 0, i32 2
  %51 = getelementptr inbounds [128 x i8], ptr %50, i64 0, i64 0
  %52 = load i64, ptr %8, align 8
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = load ptr, ptr %5, align 8
  %55 = load i32, ptr %7, align 4
  %56 = sext i32 %55 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %54, i64 %56, i1 false)
  %57 = load ptr, ptr %4, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.sha4_context, ptr %58, i32 0, i32 2
  %60 = getelementptr inbounds [128 x i8], ptr %59, i64 0, i64 0
  call void @sha4_process(ptr noundef %57, ptr noundef %60)
  %61 = load i32, ptr %7, align 4
  %62 = load ptr, ptr %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  store ptr %64, ptr %5, align 8
  %65 = load i32, ptr %7, align 4
  %66 = load i32, ptr %6, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, ptr %6, align 4
  store i64 0, ptr %8, align 8
  br label %68

68:                                               ; preds = %48, %44, %41
  br label %69

69:                                               ; preds = %72, %68
  %70 = load i32, ptr %6, align 4
  %71 = icmp sge i32 %70, 128
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load ptr, ptr %4, align 8
  %74 = load ptr, ptr %5, align 8
  call void @sha4_process(ptr noundef %73, ptr noundef %74)
  %75 = load ptr, ptr %5, align 8
  %76 = getelementptr inbounds i8, ptr %75, i64 128
  store ptr %76, ptr %5, align 8
  %77 = load i32, ptr %6, align 4
  %78 = sub nsw i32 %77, 128
  store i32 %78, ptr %6, align 4
  br label %69, !llvm.loop !6

79:                                               ; preds = %69
  %80 = load i32, ptr %6, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct.sha4_context, ptr %83, i32 0, i32 2
  %85 = getelementptr inbounds [128 x i8], ptr %84, i64 0, i64 0
  %86 = load i64, ptr %8, align 8
  %87 = getelementptr inbounds i8, ptr %85, i64 %86
  %88 = load ptr, ptr %5, align 8
  %89 = load i32, ptr %6, align 4
  %90 = sext i32 %89 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %88, i64 %90, i1 false)
  br label %91

91:                                               ; preds = %11, %82, %79
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha4_process(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [80 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %101, %2
  %18 = load i32, ptr %5, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %104

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %5, align 4
  %23 = shl i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = shl i64 %27, 56
  %29 = load ptr, ptr %4, align 8
  %30 = load i32, ptr %5, align 4
  %31 = shl i32 %30, 3
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %29, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = shl i64 %36, 48
  %38 = or i64 %28, %37
  %39 = load ptr, ptr %4, align 8
  %40 = load i32, ptr %5, align 4
  %41 = shl i32 %40, 3
  %42 = add nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %39, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i64
  %47 = shl i64 %46, 40
  %48 = or i64 %38, %47
  %49 = load ptr, ptr %4, align 8
  %50 = load i32, ptr %5, align 4
  %51 = shl i32 %50, 3
  %52 = add nsw i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %49, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i64
  %57 = shl i64 %56, 32
  %58 = or i64 %48, %57
  %59 = load ptr, ptr %4, align 8
  %60 = load i32, ptr %5, align 4
  %61 = shl i32 %60, 3
  %62 = add nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %59, i64 %63
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i64
  %67 = shl i64 %66, 24
  %68 = or i64 %58, %67
  %69 = load ptr, ptr %4, align 8
  %70 = load i32, ptr %5, align 4
  %71 = shl i32 %70, 3
  %72 = add nsw i32 %71, 5
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %69, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i64
  %77 = shl i64 %76, 16
  %78 = or i64 %68, %77
  %79 = load ptr, ptr %4, align 8
  %80 = load i32, ptr %5, align 4
  %81 = shl i32 %80, 3
  %82 = add nsw i32 %81, 6
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %79, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i64
  %87 = shl i64 %86, 8
  %88 = or i64 %78, %87
  %89 = load ptr, ptr %4, align 8
  %90 = load i32, ptr %5, align 4
  %91 = shl i32 %90, 3
  %92 = add nsw i32 %91, 7
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %89, i64 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i64
  %97 = or i64 %88, %96
  %98 = load i32, ptr %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %99
  store i64 %97, ptr %100, align 8
  br label %101

101:                                              ; preds = %20
  %102 = load i32, ptr %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %5, align 4
  br label %17, !llvm.loop !8

104:                                              ; preds = %17
  br label %105

105:                                              ; preds = %193, %104
  %106 = load i32, ptr %5, align 4
  %107 = icmp slt i32 %106, 80
  br i1 %107, label %108, label %196

108:                                              ; preds = %105
  %109 = load i32, ptr %5, align 4
  %110 = sub nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8
  %114 = lshr i64 %113, 19
  %115 = load i32, ptr %5, align 4
  %116 = sub nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8
  %120 = shl i64 %119, 45
  %121 = or i64 %114, %120
  %122 = load i32, ptr %5, align 4
  %123 = sub nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %124
  %126 = load i64, ptr %125, align 8
  %127 = lshr i64 %126, 61
  %128 = load i32, ptr %5, align 4
  %129 = sub nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %130
  %132 = load i64, ptr %131, align 8
  %133 = shl i64 %132, 3
  %134 = or i64 %127, %133
  %135 = xor i64 %121, %134
  %136 = load i32, ptr %5, align 4
  %137 = sub nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %138
  %140 = load i64, ptr %139, align 8
  %141 = lshr i64 %140, 6
  %142 = xor i64 %135, %141
  %143 = load i32, ptr %5, align 4
  %144 = sub nsw i32 %143, 7
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %145
  %147 = load i64, ptr %146, align 8
  %148 = add i64 %142, %147
  %149 = load i32, ptr %5, align 4
  %150 = sub nsw i32 %149, 15
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %151
  %153 = load i64, ptr %152, align 8
  %154 = lshr i64 %153, 1
  %155 = load i32, ptr %5, align 4
  %156 = sub nsw i32 %155, 15
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %157
  %159 = load i64, ptr %158, align 8
  %160 = shl i64 %159, 63
  %161 = or i64 %154, %160
  %162 = load i32, ptr %5, align 4
  %163 = sub nsw i32 %162, 15
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %164
  %166 = load i64, ptr %165, align 8
  %167 = lshr i64 %166, 8
  %168 = load i32, ptr %5, align 4
  %169 = sub nsw i32 %168, 15
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %170
  %172 = load i64, ptr %171, align 8
  %173 = shl i64 %172, 56
  %174 = or i64 %167, %173
  %175 = xor i64 %161, %174
  %176 = load i32, ptr %5, align 4
  %177 = sub nsw i32 %176, 15
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %178
  %180 = load i64, ptr %179, align 8
  %181 = lshr i64 %180, 7
  %182 = xor i64 %175, %181
  %183 = add i64 %148, %182
  %184 = load i32, ptr %5, align 4
  %185 = sub nsw i32 %184, 16
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %186
  %188 = load i64, ptr %187, align 8
  %189 = add i64 %183, %188
  %190 = load i32, ptr %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %191
  store i64 %189, ptr %192, align 8
  br label %193

193:                                              ; preds = %108
  %194 = load i32, ptr %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %5, align 4
  br label %105, !llvm.loop !9

196:                                              ; preds = %105
  %197 = load ptr, ptr %3, align 8
  %198 = getelementptr inbounds %struct.sha4_context, ptr %197, i32 0, i32 1
  %199 = getelementptr inbounds [8 x i64], ptr %198, i64 0, i64 0
  %200 = load i64, ptr %199, align 8
  store i64 %200, ptr %9, align 8
  %201 = load ptr, ptr %3, align 8
  %202 = getelementptr inbounds %struct.sha4_context, ptr %201, i32 0, i32 1
  %203 = getelementptr inbounds [8 x i64], ptr %202, i64 0, i64 1
  %204 = load i64, ptr %203, align 8
  store i64 %204, ptr %10, align 8
  %205 = load ptr, ptr %3, align 8
  %206 = getelementptr inbounds %struct.sha4_context, ptr %205, i32 0, i32 1
  %207 = getelementptr inbounds [8 x i64], ptr %206, i64 0, i64 2
  %208 = load i64, ptr %207, align 8
  store i64 %208, ptr %11, align 8
  %209 = load ptr, ptr %3, align 8
  %210 = getelementptr inbounds %struct.sha4_context, ptr %209, i32 0, i32 1
  %211 = getelementptr inbounds [8 x i64], ptr %210, i64 0, i64 3
  %212 = load i64, ptr %211, align 8
  store i64 %212, ptr %12, align 8
  %213 = load ptr, ptr %3, align 8
  %214 = getelementptr inbounds %struct.sha4_context, ptr %213, i32 0, i32 1
  %215 = getelementptr inbounds [8 x i64], ptr %214, i64 0, i64 4
  %216 = load i64, ptr %215, align 8
  store i64 %216, ptr %13, align 8
  %217 = load ptr, ptr %3, align 8
  %218 = getelementptr inbounds %struct.sha4_context, ptr %217, i32 0, i32 1
  %219 = getelementptr inbounds [8 x i64], ptr %218, i64 0, i64 5
  %220 = load i64, ptr %219, align 8
  store i64 %220, ptr %14, align 8
  %221 = load ptr, ptr %3, align 8
  %222 = getelementptr inbounds %struct.sha4_context, ptr %221, i32 0, i32 1
  %223 = getelementptr inbounds [8 x i64], ptr %222, i64 0, i64 6
  %224 = load i64, ptr %223, align 8
  store i64 %224, ptr %15, align 8
  %225 = load ptr, ptr %3, align 8
  %226 = getelementptr inbounds %struct.sha4_context, ptr %225, i32 0, i32 1
  %227 = getelementptr inbounds [8 x i64], ptr %226, i64 0, i64 7
  %228 = load i64, ptr %227, align 8
  store i64 %228, ptr %16, align 8
  store i32 0, ptr %5, align 4
  br label %229

229:                                              ; preds = %806, %196
  %230 = load i64, ptr %16, align 8
  %231 = load i64, ptr %13, align 8
  %232 = lshr i64 %231, 14
  %233 = load i64, ptr %13, align 8
  %234 = shl i64 %233, 50
  %235 = or i64 %232, %234
  %236 = load i64, ptr %13, align 8
  %237 = lshr i64 %236, 18
  %238 = load i64, ptr %13, align 8
  %239 = shl i64 %238, 46
  %240 = or i64 %237, %239
  %241 = xor i64 %235, %240
  %242 = load i64, ptr %13, align 8
  %243 = lshr i64 %242, 41
  %244 = load i64, ptr %13, align 8
  %245 = shl i64 %244, 23
  %246 = or i64 %243, %245
  %247 = xor i64 %241, %246
  %248 = add i64 %230, %247
  %249 = load i64, ptr %15, align 8
  %250 = load i64, ptr %13, align 8
  %251 = load i64, ptr %14, align 8
  %252 = load i64, ptr %15, align 8
  %253 = xor i64 %251, %252
  %254 = and i64 %250, %253
  %255 = xor i64 %249, %254
  %256 = add i64 %248, %255
  %257 = load i32, ptr %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8
  %261 = add i64 %256, %260
  %262 = load i32, ptr %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %263
  %265 = load i64, ptr %264, align 8
  %266 = add i64 %261, %265
  store i64 %266, ptr %6, align 8
  %267 = load i64, ptr %9, align 8
  %268 = lshr i64 %267, 28
  %269 = load i64, ptr %9, align 8
  %270 = shl i64 %269, 36
  %271 = or i64 %268, %270
  %272 = load i64, ptr %9, align 8
  %273 = lshr i64 %272, 34
  %274 = load i64, ptr %9, align 8
  %275 = shl i64 %274, 30
  %276 = or i64 %273, %275
  %277 = xor i64 %271, %276
  %278 = load i64, ptr %9, align 8
  %279 = lshr i64 %278, 39
  %280 = load i64, ptr %9, align 8
  %281 = shl i64 %280, 25
  %282 = or i64 %279, %281
  %283 = xor i64 %277, %282
  %284 = load i64, ptr %9, align 8
  %285 = load i64, ptr %10, align 8
  %286 = and i64 %284, %285
  %287 = load i64, ptr %11, align 8
  %288 = load i64, ptr %9, align 8
  %289 = load i64, ptr %10, align 8
  %290 = or i64 %288, %289
  %291 = and i64 %287, %290
  %292 = or i64 %286, %291
  %293 = add i64 %283, %292
  store i64 %293, ptr %7, align 8
  %294 = load i64, ptr %6, align 8
  %295 = load i64, ptr %12, align 8
  %296 = add i64 %295, %294
  store i64 %296, ptr %12, align 8
  %297 = load i64, ptr %6, align 8
  %298 = load i64, ptr %7, align 8
  %299 = add i64 %297, %298
  store i64 %299, ptr %16, align 8
  %300 = load i32, ptr %5, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, ptr %5, align 4
  %302 = load i64, ptr %15, align 8
  %303 = load i64, ptr %12, align 8
  %304 = lshr i64 %303, 14
  %305 = load i64, ptr %12, align 8
  %306 = shl i64 %305, 50
  %307 = or i64 %304, %306
  %308 = load i64, ptr %12, align 8
  %309 = lshr i64 %308, 18
  %310 = load i64, ptr %12, align 8
  %311 = shl i64 %310, 46
  %312 = or i64 %309, %311
  %313 = xor i64 %307, %312
  %314 = load i64, ptr %12, align 8
  %315 = lshr i64 %314, 41
  %316 = load i64, ptr %12, align 8
  %317 = shl i64 %316, 23
  %318 = or i64 %315, %317
  %319 = xor i64 %313, %318
  %320 = add i64 %302, %319
  %321 = load i64, ptr %14, align 8
  %322 = load i64, ptr %12, align 8
  %323 = load i64, ptr %13, align 8
  %324 = load i64, ptr %14, align 8
  %325 = xor i64 %323, %324
  %326 = and i64 %322, %325
  %327 = xor i64 %321, %326
  %328 = add i64 %320, %327
  %329 = load i32, ptr %5, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %330
  %332 = load i64, ptr %331, align 8
  %333 = add i64 %328, %332
  %334 = load i32, ptr %5, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %335
  %337 = load i64, ptr %336, align 8
  %338 = add i64 %333, %337
  store i64 %338, ptr %6, align 8
  %339 = load i64, ptr %16, align 8
  %340 = lshr i64 %339, 28
  %341 = load i64, ptr %16, align 8
  %342 = shl i64 %341, 36
  %343 = or i64 %340, %342
  %344 = load i64, ptr %16, align 8
  %345 = lshr i64 %344, 34
  %346 = load i64, ptr %16, align 8
  %347 = shl i64 %346, 30
  %348 = or i64 %345, %347
  %349 = xor i64 %343, %348
  %350 = load i64, ptr %16, align 8
  %351 = lshr i64 %350, 39
  %352 = load i64, ptr %16, align 8
  %353 = shl i64 %352, 25
  %354 = or i64 %351, %353
  %355 = xor i64 %349, %354
  %356 = load i64, ptr %16, align 8
  %357 = load i64, ptr %9, align 8
  %358 = and i64 %356, %357
  %359 = load i64, ptr %10, align 8
  %360 = load i64, ptr %16, align 8
  %361 = load i64, ptr %9, align 8
  %362 = or i64 %360, %361
  %363 = and i64 %359, %362
  %364 = or i64 %358, %363
  %365 = add i64 %355, %364
  store i64 %365, ptr %7, align 8
  %366 = load i64, ptr %6, align 8
  %367 = load i64, ptr %11, align 8
  %368 = add i64 %367, %366
  store i64 %368, ptr %11, align 8
  %369 = load i64, ptr %6, align 8
  %370 = load i64, ptr %7, align 8
  %371 = add i64 %369, %370
  store i64 %371, ptr %15, align 8
  %372 = load i32, ptr %5, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, ptr %5, align 4
  %374 = load i64, ptr %14, align 8
  %375 = load i64, ptr %11, align 8
  %376 = lshr i64 %375, 14
  %377 = load i64, ptr %11, align 8
  %378 = shl i64 %377, 50
  %379 = or i64 %376, %378
  %380 = load i64, ptr %11, align 8
  %381 = lshr i64 %380, 18
  %382 = load i64, ptr %11, align 8
  %383 = shl i64 %382, 46
  %384 = or i64 %381, %383
  %385 = xor i64 %379, %384
  %386 = load i64, ptr %11, align 8
  %387 = lshr i64 %386, 41
  %388 = load i64, ptr %11, align 8
  %389 = shl i64 %388, 23
  %390 = or i64 %387, %389
  %391 = xor i64 %385, %390
  %392 = add i64 %374, %391
  %393 = load i64, ptr %13, align 8
  %394 = load i64, ptr %11, align 8
  %395 = load i64, ptr %12, align 8
  %396 = load i64, ptr %13, align 8
  %397 = xor i64 %395, %396
  %398 = and i64 %394, %397
  %399 = xor i64 %393, %398
  %400 = add i64 %392, %399
  %401 = load i32, ptr %5, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %402
  %404 = load i64, ptr %403, align 8
  %405 = add i64 %400, %404
  %406 = load i32, ptr %5, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %407
  %409 = load i64, ptr %408, align 8
  %410 = add i64 %405, %409
  store i64 %410, ptr %6, align 8
  %411 = load i64, ptr %15, align 8
  %412 = lshr i64 %411, 28
  %413 = load i64, ptr %15, align 8
  %414 = shl i64 %413, 36
  %415 = or i64 %412, %414
  %416 = load i64, ptr %15, align 8
  %417 = lshr i64 %416, 34
  %418 = load i64, ptr %15, align 8
  %419 = shl i64 %418, 30
  %420 = or i64 %417, %419
  %421 = xor i64 %415, %420
  %422 = load i64, ptr %15, align 8
  %423 = lshr i64 %422, 39
  %424 = load i64, ptr %15, align 8
  %425 = shl i64 %424, 25
  %426 = or i64 %423, %425
  %427 = xor i64 %421, %426
  %428 = load i64, ptr %15, align 8
  %429 = load i64, ptr %16, align 8
  %430 = and i64 %428, %429
  %431 = load i64, ptr %9, align 8
  %432 = load i64, ptr %15, align 8
  %433 = load i64, ptr %16, align 8
  %434 = or i64 %432, %433
  %435 = and i64 %431, %434
  %436 = or i64 %430, %435
  %437 = add i64 %427, %436
  store i64 %437, ptr %7, align 8
  %438 = load i64, ptr %6, align 8
  %439 = load i64, ptr %10, align 8
  %440 = add i64 %439, %438
  store i64 %440, ptr %10, align 8
  %441 = load i64, ptr %6, align 8
  %442 = load i64, ptr %7, align 8
  %443 = add i64 %441, %442
  store i64 %443, ptr %14, align 8
  %444 = load i32, ptr %5, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, ptr %5, align 4
  %446 = load i64, ptr %13, align 8
  %447 = load i64, ptr %10, align 8
  %448 = lshr i64 %447, 14
  %449 = load i64, ptr %10, align 8
  %450 = shl i64 %449, 50
  %451 = or i64 %448, %450
  %452 = load i64, ptr %10, align 8
  %453 = lshr i64 %452, 18
  %454 = load i64, ptr %10, align 8
  %455 = shl i64 %454, 46
  %456 = or i64 %453, %455
  %457 = xor i64 %451, %456
  %458 = load i64, ptr %10, align 8
  %459 = lshr i64 %458, 41
  %460 = load i64, ptr %10, align 8
  %461 = shl i64 %460, 23
  %462 = or i64 %459, %461
  %463 = xor i64 %457, %462
  %464 = add i64 %446, %463
  %465 = load i64, ptr %12, align 8
  %466 = load i64, ptr %10, align 8
  %467 = load i64, ptr %11, align 8
  %468 = load i64, ptr %12, align 8
  %469 = xor i64 %467, %468
  %470 = and i64 %466, %469
  %471 = xor i64 %465, %470
  %472 = add i64 %464, %471
  %473 = load i32, ptr %5, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %474
  %476 = load i64, ptr %475, align 8
  %477 = add i64 %472, %476
  %478 = load i32, ptr %5, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %479
  %481 = load i64, ptr %480, align 8
  %482 = add i64 %477, %481
  store i64 %482, ptr %6, align 8
  %483 = load i64, ptr %14, align 8
  %484 = lshr i64 %483, 28
  %485 = load i64, ptr %14, align 8
  %486 = shl i64 %485, 36
  %487 = or i64 %484, %486
  %488 = load i64, ptr %14, align 8
  %489 = lshr i64 %488, 34
  %490 = load i64, ptr %14, align 8
  %491 = shl i64 %490, 30
  %492 = or i64 %489, %491
  %493 = xor i64 %487, %492
  %494 = load i64, ptr %14, align 8
  %495 = lshr i64 %494, 39
  %496 = load i64, ptr %14, align 8
  %497 = shl i64 %496, 25
  %498 = or i64 %495, %497
  %499 = xor i64 %493, %498
  %500 = load i64, ptr %14, align 8
  %501 = load i64, ptr %15, align 8
  %502 = and i64 %500, %501
  %503 = load i64, ptr %16, align 8
  %504 = load i64, ptr %14, align 8
  %505 = load i64, ptr %15, align 8
  %506 = or i64 %504, %505
  %507 = and i64 %503, %506
  %508 = or i64 %502, %507
  %509 = add i64 %499, %508
  store i64 %509, ptr %7, align 8
  %510 = load i64, ptr %6, align 8
  %511 = load i64, ptr %9, align 8
  %512 = add i64 %511, %510
  store i64 %512, ptr %9, align 8
  %513 = load i64, ptr %6, align 8
  %514 = load i64, ptr %7, align 8
  %515 = add i64 %513, %514
  store i64 %515, ptr %13, align 8
  %516 = load i32, ptr %5, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, ptr %5, align 4
  %518 = load i64, ptr %12, align 8
  %519 = load i64, ptr %9, align 8
  %520 = lshr i64 %519, 14
  %521 = load i64, ptr %9, align 8
  %522 = shl i64 %521, 50
  %523 = or i64 %520, %522
  %524 = load i64, ptr %9, align 8
  %525 = lshr i64 %524, 18
  %526 = load i64, ptr %9, align 8
  %527 = shl i64 %526, 46
  %528 = or i64 %525, %527
  %529 = xor i64 %523, %528
  %530 = load i64, ptr %9, align 8
  %531 = lshr i64 %530, 41
  %532 = load i64, ptr %9, align 8
  %533 = shl i64 %532, 23
  %534 = or i64 %531, %533
  %535 = xor i64 %529, %534
  %536 = add i64 %518, %535
  %537 = load i64, ptr %11, align 8
  %538 = load i64, ptr %9, align 8
  %539 = load i64, ptr %10, align 8
  %540 = load i64, ptr %11, align 8
  %541 = xor i64 %539, %540
  %542 = and i64 %538, %541
  %543 = xor i64 %537, %542
  %544 = add i64 %536, %543
  %545 = load i32, ptr %5, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %546
  %548 = load i64, ptr %547, align 8
  %549 = add i64 %544, %548
  %550 = load i32, ptr %5, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %551
  %553 = load i64, ptr %552, align 8
  %554 = add i64 %549, %553
  store i64 %554, ptr %6, align 8
  %555 = load i64, ptr %13, align 8
  %556 = lshr i64 %555, 28
  %557 = load i64, ptr %13, align 8
  %558 = shl i64 %557, 36
  %559 = or i64 %556, %558
  %560 = load i64, ptr %13, align 8
  %561 = lshr i64 %560, 34
  %562 = load i64, ptr %13, align 8
  %563 = shl i64 %562, 30
  %564 = or i64 %561, %563
  %565 = xor i64 %559, %564
  %566 = load i64, ptr %13, align 8
  %567 = lshr i64 %566, 39
  %568 = load i64, ptr %13, align 8
  %569 = shl i64 %568, 25
  %570 = or i64 %567, %569
  %571 = xor i64 %565, %570
  %572 = load i64, ptr %13, align 8
  %573 = load i64, ptr %14, align 8
  %574 = and i64 %572, %573
  %575 = load i64, ptr %15, align 8
  %576 = load i64, ptr %13, align 8
  %577 = load i64, ptr %14, align 8
  %578 = or i64 %576, %577
  %579 = and i64 %575, %578
  %580 = or i64 %574, %579
  %581 = add i64 %571, %580
  store i64 %581, ptr %7, align 8
  %582 = load i64, ptr %6, align 8
  %583 = load i64, ptr %16, align 8
  %584 = add i64 %583, %582
  store i64 %584, ptr %16, align 8
  %585 = load i64, ptr %6, align 8
  %586 = load i64, ptr %7, align 8
  %587 = add i64 %585, %586
  store i64 %587, ptr %12, align 8
  %588 = load i32, ptr %5, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, ptr %5, align 4
  %590 = load i64, ptr %11, align 8
  %591 = load i64, ptr %16, align 8
  %592 = lshr i64 %591, 14
  %593 = load i64, ptr %16, align 8
  %594 = shl i64 %593, 50
  %595 = or i64 %592, %594
  %596 = load i64, ptr %16, align 8
  %597 = lshr i64 %596, 18
  %598 = load i64, ptr %16, align 8
  %599 = shl i64 %598, 46
  %600 = or i64 %597, %599
  %601 = xor i64 %595, %600
  %602 = load i64, ptr %16, align 8
  %603 = lshr i64 %602, 41
  %604 = load i64, ptr %16, align 8
  %605 = shl i64 %604, 23
  %606 = or i64 %603, %605
  %607 = xor i64 %601, %606
  %608 = add i64 %590, %607
  %609 = load i64, ptr %10, align 8
  %610 = load i64, ptr %16, align 8
  %611 = load i64, ptr %9, align 8
  %612 = load i64, ptr %10, align 8
  %613 = xor i64 %611, %612
  %614 = and i64 %610, %613
  %615 = xor i64 %609, %614
  %616 = add i64 %608, %615
  %617 = load i32, ptr %5, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %618
  %620 = load i64, ptr %619, align 8
  %621 = add i64 %616, %620
  %622 = load i32, ptr %5, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %623
  %625 = load i64, ptr %624, align 8
  %626 = add i64 %621, %625
  store i64 %626, ptr %6, align 8
  %627 = load i64, ptr %12, align 8
  %628 = lshr i64 %627, 28
  %629 = load i64, ptr %12, align 8
  %630 = shl i64 %629, 36
  %631 = or i64 %628, %630
  %632 = load i64, ptr %12, align 8
  %633 = lshr i64 %632, 34
  %634 = load i64, ptr %12, align 8
  %635 = shl i64 %634, 30
  %636 = or i64 %633, %635
  %637 = xor i64 %631, %636
  %638 = load i64, ptr %12, align 8
  %639 = lshr i64 %638, 39
  %640 = load i64, ptr %12, align 8
  %641 = shl i64 %640, 25
  %642 = or i64 %639, %641
  %643 = xor i64 %637, %642
  %644 = load i64, ptr %12, align 8
  %645 = load i64, ptr %13, align 8
  %646 = and i64 %644, %645
  %647 = load i64, ptr %14, align 8
  %648 = load i64, ptr %12, align 8
  %649 = load i64, ptr %13, align 8
  %650 = or i64 %648, %649
  %651 = and i64 %647, %650
  %652 = or i64 %646, %651
  %653 = add i64 %643, %652
  store i64 %653, ptr %7, align 8
  %654 = load i64, ptr %6, align 8
  %655 = load i64, ptr %15, align 8
  %656 = add i64 %655, %654
  store i64 %656, ptr %15, align 8
  %657 = load i64, ptr %6, align 8
  %658 = load i64, ptr %7, align 8
  %659 = add i64 %657, %658
  store i64 %659, ptr %11, align 8
  %660 = load i32, ptr %5, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, ptr %5, align 4
  %662 = load i64, ptr %10, align 8
  %663 = load i64, ptr %15, align 8
  %664 = lshr i64 %663, 14
  %665 = load i64, ptr %15, align 8
  %666 = shl i64 %665, 50
  %667 = or i64 %664, %666
  %668 = load i64, ptr %15, align 8
  %669 = lshr i64 %668, 18
  %670 = load i64, ptr %15, align 8
  %671 = shl i64 %670, 46
  %672 = or i64 %669, %671
  %673 = xor i64 %667, %672
  %674 = load i64, ptr %15, align 8
  %675 = lshr i64 %674, 41
  %676 = load i64, ptr %15, align 8
  %677 = shl i64 %676, 23
  %678 = or i64 %675, %677
  %679 = xor i64 %673, %678
  %680 = add i64 %662, %679
  %681 = load i64, ptr %9, align 8
  %682 = load i64, ptr %15, align 8
  %683 = load i64, ptr %16, align 8
  %684 = load i64, ptr %9, align 8
  %685 = xor i64 %683, %684
  %686 = and i64 %682, %685
  %687 = xor i64 %681, %686
  %688 = add i64 %680, %687
  %689 = load i32, ptr %5, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %690
  %692 = load i64, ptr %691, align 8
  %693 = add i64 %688, %692
  %694 = load i32, ptr %5, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %695
  %697 = load i64, ptr %696, align 8
  %698 = add i64 %693, %697
  store i64 %698, ptr %6, align 8
  %699 = load i64, ptr %11, align 8
  %700 = lshr i64 %699, 28
  %701 = load i64, ptr %11, align 8
  %702 = shl i64 %701, 36
  %703 = or i64 %700, %702
  %704 = load i64, ptr %11, align 8
  %705 = lshr i64 %704, 34
  %706 = load i64, ptr %11, align 8
  %707 = shl i64 %706, 30
  %708 = or i64 %705, %707
  %709 = xor i64 %703, %708
  %710 = load i64, ptr %11, align 8
  %711 = lshr i64 %710, 39
  %712 = load i64, ptr %11, align 8
  %713 = shl i64 %712, 25
  %714 = or i64 %711, %713
  %715 = xor i64 %709, %714
  %716 = load i64, ptr %11, align 8
  %717 = load i64, ptr %12, align 8
  %718 = and i64 %716, %717
  %719 = load i64, ptr %13, align 8
  %720 = load i64, ptr %11, align 8
  %721 = load i64, ptr %12, align 8
  %722 = or i64 %720, %721
  %723 = and i64 %719, %722
  %724 = or i64 %718, %723
  %725 = add i64 %715, %724
  store i64 %725, ptr %7, align 8
  %726 = load i64, ptr %6, align 8
  %727 = load i64, ptr %14, align 8
  %728 = add i64 %727, %726
  store i64 %728, ptr %14, align 8
  %729 = load i64, ptr %6, align 8
  %730 = load i64, ptr %7, align 8
  %731 = add i64 %729, %730
  store i64 %731, ptr %10, align 8
  %732 = load i32, ptr %5, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, ptr %5, align 4
  %734 = load i64, ptr %9, align 8
  %735 = load i64, ptr %14, align 8
  %736 = lshr i64 %735, 14
  %737 = load i64, ptr %14, align 8
  %738 = shl i64 %737, 50
  %739 = or i64 %736, %738
  %740 = load i64, ptr %14, align 8
  %741 = lshr i64 %740, 18
  %742 = load i64, ptr %14, align 8
  %743 = shl i64 %742, 46
  %744 = or i64 %741, %743
  %745 = xor i64 %739, %744
  %746 = load i64, ptr %14, align 8
  %747 = lshr i64 %746, 41
  %748 = load i64, ptr %14, align 8
  %749 = shl i64 %748, 23
  %750 = or i64 %747, %749
  %751 = xor i64 %745, %750
  %752 = add i64 %734, %751
  %753 = load i64, ptr %16, align 8
  %754 = load i64, ptr %14, align 8
  %755 = load i64, ptr %15, align 8
  %756 = load i64, ptr %16, align 8
  %757 = xor i64 %755, %756
  %758 = and i64 %754, %757
  %759 = xor i64 %753, %758
  %760 = add i64 %752, %759
  %761 = load i32, ptr %5, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds [80 x i64], ptr @K, i64 0, i64 %762
  %764 = load i64, ptr %763, align 8
  %765 = add i64 %760, %764
  %766 = load i32, ptr %5, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds [80 x i64], ptr %8, i64 0, i64 %767
  %769 = load i64, ptr %768, align 8
  %770 = add i64 %765, %769
  store i64 %770, ptr %6, align 8
  %771 = load i64, ptr %10, align 8
  %772 = lshr i64 %771, 28
  %773 = load i64, ptr %10, align 8
  %774 = shl i64 %773, 36
  %775 = or i64 %772, %774
  %776 = load i64, ptr %10, align 8
  %777 = lshr i64 %776, 34
  %778 = load i64, ptr %10, align 8
  %779 = shl i64 %778, 30
  %780 = or i64 %777, %779
  %781 = xor i64 %775, %780
  %782 = load i64, ptr %10, align 8
  %783 = lshr i64 %782, 39
  %784 = load i64, ptr %10, align 8
  %785 = shl i64 %784, 25
  %786 = or i64 %783, %785
  %787 = xor i64 %781, %786
  %788 = load i64, ptr %10, align 8
  %789 = load i64, ptr %11, align 8
  %790 = and i64 %788, %789
  %791 = load i64, ptr %12, align 8
  %792 = load i64, ptr %10, align 8
  %793 = load i64, ptr %11, align 8
  %794 = or i64 %792, %793
  %795 = and i64 %791, %794
  %796 = or i64 %790, %795
  %797 = add i64 %787, %796
  store i64 %797, ptr %7, align 8
  %798 = load i64, ptr %6, align 8
  %799 = load i64, ptr %13, align 8
  %800 = add i64 %799, %798
  store i64 %800, ptr %13, align 8
  %801 = load i64, ptr %6, align 8
  %802 = load i64, ptr %7, align 8
  %803 = add i64 %801, %802
  store i64 %803, ptr %9, align 8
  %804 = load i32, ptr %5, align 4
  %805 = add nsw i32 %804, 1
  store i32 %805, ptr %5, align 4
  br label %806

806:                                              ; preds = %229
  %807 = load i32, ptr %5, align 4
  %808 = icmp slt i32 %807, 80
  br i1 %808, label %229, label %809, !llvm.loop !10

809:                                              ; preds = %806
  %810 = load i64, ptr %9, align 8
  %811 = load ptr, ptr %3, align 8
  %812 = getelementptr inbounds %struct.sha4_context, ptr %811, i32 0, i32 1
  %813 = getelementptr inbounds [8 x i64], ptr %812, i64 0, i64 0
  %814 = load i64, ptr %813, align 8
  %815 = add i64 %814, %810
  store i64 %815, ptr %813, align 8
  %816 = load i64, ptr %10, align 8
  %817 = load ptr, ptr %3, align 8
  %818 = getelementptr inbounds %struct.sha4_context, ptr %817, i32 0, i32 1
  %819 = getelementptr inbounds [8 x i64], ptr %818, i64 0, i64 1
  %820 = load i64, ptr %819, align 8
  %821 = add i64 %820, %816
  store i64 %821, ptr %819, align 8
  %822 = load i64, ptr %11, align 8
  %823 = load ptr, ptr %3, align 8
  %824 = getelementptr inbounds %struct.sha4_context, ptr %823, i32 0, i32 1
  %825 = getelementptr inbounds [8 x i64], ptr %824, i64 0, i64 2
  %826 = load i64, ptr %825, align 8
  %827 = add i64 %826, %822
  store i64 %827, ptr %825, align 8
  %828 = load i64, ptr %12, align 8
  %829 = load ptr, ptr %3, align 8
  %830 = getelementptr inbounds %struct.sha4_context, ptr %829, i32 0, i32 1
  %831 = getelementptr inbounds [8 x i64], ptr %830, i64 0, i64 3
  %832 = load i64, ptr %831, align 8
  %833 = add i64 %832, %828
  store i64 %833, ptr %831, align 8
  %834 = load i64, ptr %13, align 8
  %835 = load ptr, ptr %3, align 8
  %836 = getelementptr inbounds %struct.sha4_context, ptr %835, i32 0, i32 1
  %837 = getelementptr inbounds [8 x i64], ptr %836, i64 0, i64 4
  %838 = load i64, ptr %837, align 8
  %839 = add i64 %838, %834
  store i64 %839, ptr %837, align 8
  %840 = load i64, ptr %14, align 8
  %841 = load ptr, ptr %3, align 8
  %842 = getelementptr inbounds %struct.sha4_context, ptr %841, i32 0, i32 1
  %843 = getelementptr inbounds [8 x i64], ptr %842, i64 0, i64 5
  %844 = load i64, ptr %843, align 8
  %845 = add i64 %844, %840
  store i64 %845, ptr %843, align 8
  %846 = load i64, ptr %15, align 8
  %847 = load ptr, ptr %3, align 8
  %848 = getelementptr inbounds %struct.sha4_context, ptr %847, i32 0, i32 1
  %849 = getelementptr inbounds [8 x i64], ptr %848, i64 0, i64 6
  %850 = load i64, ptr %849, align 8
  %851 = add i64 %850, %846
  store i64 %851, ptr %849, align 8
  %852 = load i64, ptr %16, align 8
  %853 = load ptr, ptr %3, align 8
  %854 = getelementptr inbounds %struct.sha4_context, ptr %853, i32 0, i32 1
  %855 = getelementptr inbounds [8 x i64], ptr %854, i64 0, i64 7
  %856 = load i64, ptr %855, align 8
  %857 = add i64 %856, %852
  store i64 %857, ptr %855, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha4_finish(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16 x i8], align 16
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.sha4_context, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds [2 x i64], ptr %11, i64 0, i64 0
  %13 = load i64, ptr %12, align 8
  %14 = lshr i64 %13, 61
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.sha4_context, ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  %18 = load i64, ptr %17, align 8
  %19 = shl i64 %18, 3
  %20 = or i64 %14, %19
  store i64 %20, ptr %7, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.sha4_context, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds [2 x i64], ptr %22, i64 0, i64 0
  %24 = load i64, ptr %23, align 8
  %25 = shl i64 %24, 3
  store i64 %25, ptr %8, align 8
  %26 = load i64, ptr %7, align 8
  %27 = lshr i64 %26, 56
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 0
  store i8 %28, ptr %29, align 16
  %30 = load i64, ptr %7, align 8
  %31 = lshr i64 %30, 48
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 1
  store i8 %32, ptr %33, align 1
  %34 = load i64, ptr %7, align 8
  %35 = lshr i64 %34, 40
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 2
  store i8 %36, ptr %37, align 2
  %38 = load i64, ptr %7, align 8
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 3
  store i8 %40, ptr %41, align 1
  %42 = load i64, ptr %7, align 8
  %43 = lshr i64 %42, 24
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 4
  store i8 %44, ptr %45, align 4
  %46 = load i64, ptr %7, align 8
  %47 = lshr i64 %46, 16
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 5
  store i8 %48, ptr %49, align 1
  %50 = load i64, ptr %7, align 8
  %51 = lshr i64 %50, 8
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 6
  store i8 %52, ptr %53, align 2
  %54 = load i64, ptr %7, align 8
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 7
  store i8 %55, ptr %56, align 1
  %57 = load i64, ptr %8, align 8
  %58 = lshr i64 %57, 56
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 8
  store i8 %59, ptr %60, align 8
  %61 = load i64, ptr %8, align 8
  %62 = lshr i64 %61, 48
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 9
  store i8 %63, ptr %64, align 1
  %65 = load i64, ptr %8, align 8
  %66 = lshr i64 %65, 40
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 10
  store i8 %67, ptr %68, align 2
  %69 = load i64, ptr %8, align 8
  %70 = lshr i64 %69, 32
  %71 = trunc i64 %70 to i8
  %72 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 11
  store i8 %71, ptr %72, align 1
  %73 = load i64, ptr %8, align 8
  %74 = lshr i64 %73, 24
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 12
  store i8 %75, ptr %76, align 4
  %77 = load i64, ptr %8, align 8
  %78 = lshr i64 %77, 16
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 13
  store i8 %79, ptr %80, align 1
  %81 = load i64, ptr %8, align 8
  %82 = lshr i64 %81, 8
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 14
  store i8 %83, ptr %84, align 2
  %85 = load i64, ptr %8, align 8
  %86 = trunc i64 %85 to i8
  %87 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 15
  store i8 %86, ptr %87, align 1
  %88 = load ptr, ptr %3, align 8
  %89 = getelementptr inbounds %struct.sha4_context, ptr %88, i32 0, i32 0
  %90 = getelementptr inbounds [2 x i64], ptr %89, i64 0, i64 0
  %91 = load i64, ptr %90, align 8
  %92 = and i64 %91, 127
  %93 = trunc i64 %92 to i32
  store i32 %93, ptr %5, align 4
  %94 = load i32, ptr %5, align 4
  %95 = icmp slt i32 %94, 112
  br i1 %95, label %96, label %99

96:                                               ; preds = %2
  %97 = load i32, ptr %5, align 4
  %98 = sub nsw i32 112, %97
  br label %102

99:                                               ; preds = %2
  %100 = load i32, ptr %5, align 4
  %101 = sub nsw i32 240, %100
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i32 [ %98, %96 ], [ %101, %99 ]
  store i32 %103, ptr %6, align 4
  %104 = load ptr, ptr %3, align 8
  %105 = load i32, ptr %6, align 4
  call void @sha4_update(ptr noundef %104, ptr noundef @sha4_padding, i32 noundef %105)
  %106 = load ptr, ptr %3, align 8
  %107 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 0
  call void @sha4_update(ptr noundef %106, ptr noundef %107, i32 noundef 16)
  %108 = load ptr, ptr %3, align 8
  %109 = getelementptr inbounds %struct.sha4_context, ptr %108, i32 0, i32 1
  %110 = getelementptr inbounds [8 x i64], ptr %109, i64 0, i64 0
  %111 = load i64, ptr %110, align 8
  %112 = lshr i64 %111, 56
  %113 = trunc i64 %112 to i8
  %114 = load ptr, ptr %4, align 8
  %115 = getelementptr inbounds i8, ptr %114, i64 0
  store i8 %113, ptr %115, align 1
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct.sha4_context, ptr %116, i32 0, i32 1
  %118 = getelementptr inbounds [8 x i64], ptr %117, i64 0, i64 0
  %119 = load i64, ptr %118, align 8
  %120 = lshr i64 %119, 48
  %121 = trunc i64 %120 to i8
  %122 = load ptr, ptr %4, align 8
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  store i8 %121, ptr %123, align 1
  %124 = load ptr, ptr %3, align 8
  %125 = getelementptr inbounds %struct.sha4_context, ptr %124, i32 0, i32 1
  %126 = getelementptr inbounds [8 x i64], ptr %125, i64 0, i64 0
  %127 = load i64, ptr %126, align 8
  %128 = lshr i64 %127, 40
  %129 = trunc i64 %128 to i8
  %130 = load ptr, ptr %4, align 8
  %131 = getelementptr inbounds i8, ptr %130, i64 2
  store i8 %129, ptr %131, align 1
  %132 = load ptr, ptr %3, align 8
  %133 = getelementptr inbounds %struct.sha4_context, ptr %132, i32 0, i32 1
  %134 = getelementptr inbounds [8 x i64], ptr %133, i64 0, i64 0
  %135 = load i64, ptr %134, align 8
  %136 = lshr i64 %135, 32
  %137 = trunc i64 %136 to i8
  %138 = load ptr, ptr %4, align 8
  %139 = getelementptr inbounds i8, ptr %138, i64 3
  store i8 %137, ptr %139, align 1
  %140 = load ptr, ptr %3, align 8
  %141 = getelementptr inbounds %struct.sha4_context, ptr %140, i32 0, i32 1
  %142 = getelementptr inbounds [8 x i64], ptr %141, i64 0, i64 0
  %143 = load i64, ptr %142, align 8
  %144 = lshr i64 %143, 24
  %145 = trunc i64 %144 to i8
  %146 = load ptr, ptr %4, align 8
  %147 = getelementptr inbounds i8, ptr %146, i64 4
  store i8 %145, ptr %147, align 1
  %148 = load ptr, ptr %3, align 8
  %149 = getelementptr inbounds %struct.sha4_context, ptr %148, i32 0, i32 1
  %150 = getelementptr inbounds [8 x i64], ptr %149, i64 0, i64 0
  %151 = load i64, ptr %150, align 8
  %152 = lshr i64 %151, 16
  %153 = trunc i64 %152 to i8
  %154 = load ptr, ptr %4, align 8
  %155 = getelementptr inbounds i8, ptr %154, i64 5
  store i8 %153, ptr %155, align 1
  %156 = load ptr, ptr %3, align 8
  %157 = getelementptr inbounds %struct.sha4_context, ptr %156, i32 0, i32 1
  %158 = getelementptr inbounds [8 x i64], ptr %157, i64 0, i64 0
  %159 = load i64, ptr %158, align 8
  %160 = lshr i64 %159, 8
  %161 = trunc i64 %160 to i8
  %162 = load ptr, ptr %4, align 8
  %163 = getelementptr inbounds i8, ptr %162, i64 6
  store i8 %161, ptr %163, align 1
  %164 = load ptr, ptr %3, align 8
  %165 = getelementptr inbounds %struct.sha4_context, ptr %164, i32 0, i32 1
  %166 = getelementptr inbounds [8 x i64], ptr %165, i64 0, i64 0
  %167 = load i64, ptr %166, align 8
  %168 = trunc i64 %167 to i8
  %169 = load ptr, ptr %4, align 8
  %170 = getelementptr inbounds i8, ptr %169, i64 7
  store i8 %168, ptr %170, align 1
  %171 = load ptr, ptr %3, align 8
  %172 = getelementptr inbounds %struct.sha4_context, ptr %171, i32 0, i32 1
  %173 = getelementptr inbounds [8 x i64], ptr %172, i64 0, i64 1
  %174 = load i64, ptr %173, align 8
  %175 = lshr i64 %174, 56
  %176 = trunc i64 %175 to i8
  %177 = load ptr, ptr %4, align 8
  %178 = getelementptr inbounds i8, ptr %177, i64 8
  store i8 %176, ptr %178, align 1
  %179 = load ptr, ptr %3, align 8
  %180 = getelementptr inbounds %struct.sha4_context, ptr %179, i32 0, i32 1
  %181 = getelementptr inbounds [8 x i64], ptr %180, i64 0, i64 1
  %182 = load i64, ptr %181, align 8
  %183 = lshr i64 %182, 48
  %184 = trunc i64 %183 to i8
  %185 = load ptr, ptr %4, align 8
  %186 = getelementptr inbounds i8, ptr %185, i64 9
  store i8 %184, ptr %186, align 1
  %187 = load ptr, ptr %3, align 8
  %188 = getelementptr inbounds %struct.sha4_context, ptr %187, i32 0, i32 1
  %189 = getelementptr inbounds [8 x i64], ptr %188, i64 0, i64 1
  %190 = load i64, ptr %189, align 8
  %191 = lshr i64 %190, 40
  %192 = trunc i64 %191 to i8
  %193 = load ptr, ptr %4, align 8
  %194 = getelementptr inbounds i8, ptr %193, i64 10
  store i8 %192, ptr %194, align 1
  %195 = load ptr, ptr %3, align 8
  %196 = getelementptr inbounds %struct.sha4_context, ptr %195, i32 0, i32 1
  %197 = getelementptr inbounds [8 x i64], ptr %196, i64 0, i64 1
  %198 = load i64, ptr %197, align 8
  %199 = lshr i64 %198, 32
  %200 = trunc i64 %199 to i8
  %201 = load ptr, ptr %4, align 8
  %202 = getelementptr inbounds i8, ptr %201, i64 11
  store i8 %200, ptr %202, align 1
  %203 = load ptr, ptr %3, align 8
  %204 = getelementptr inbounds %struct.sha4_context, ptr %203, i32 0, i32 1
  %205 = getelementptr inbounds [8 x i64], ptr %204, i64 0, i64 1
  %206 = load i64, ptr %205, align 8
  %207 = lshr i64 %206, 24
  %208 = trunc i64 %207 to i8
  %209 = load ptr, ptr %4, align 8
  %210 = getelementptr inbounds i8, ptr %209, i64 12
  store i8 %208, ptr %210, align 1
  %211 = load ptr, ptr %3, align 8
  %212 = getelementptr inbounds %struct.sha4_context, ptr %211, i32 0, i32 1
  %213 = getelementptr inbounds [8 x i64], ptr %212, i64 0, i64 1
  %214 = load i64, ptr %213, align 8
  %215 = lshr i64 %214, 16
  %216 = trunc i64 %215 to i8
  %217 = load ptr, ptr %4, align 8
  %218 = getelementptr inbounds i8, ptr %217, i64 13
  store i8 %216, ptr %218, align 1
  %219 = load ptr, ptr %3, align 8
  %220 = getelementptr inbounds %struct.sha4_context, ptr %219, i32 0, i32 1
  %221 = getelementptr inbounds [8 x i64], ptr %220, i64 0, i64 1
  %222 = load i64, ptr %221, align 8
  %223 = lshr i64 %222, 8
  %224 = trunc i64 %223 to i8
  %225 = load ptr, ptr %4, align 8
  %226 = getelementptr inbounds i8, ptr %225, i64 14
  store i8 %224, ptr %226, align 1
  %227 = load ptr, ptr %3, align 8
  %228 = getelementptr inbounds %struct.sha4_context, ptr %227, i32 0, i32 1
  %229 = getelementptr inbounds [8 x i64], ptr %228, i64 0, i64 1
  %230 = load i64, ptr %229, align 8
  %231 = trunc i64 %230 to i8
  %232 = load ptr, ptr %4, align 8
  %233 = getelementptr inbounds i8, ptr %232, i64 15
  store i8 %231, ptr %233, align 1
  %234 = load ptr, ptr %3, align 8
  %235 = getelementptr inbounds %struct.sha4_context, ptr %234, i32 0, i32 1
  %236 = getelementptr inbounds [8 x i64], ptr %235, i64 0, i64 2
  %237 = load i64, ptr %236, align 8
  %238 = lshr i64 %237, 56
  %239 = trunc i64 %238 to i8
  %240 = load ptr, ptr %4, align 8
  %241 = getelementptr inbounds i8, ptr %240, i64 16
  store i8 %239, ptr %241, align 1
  %242 = load ptr, ptr %3, align 8
  %243 = getelementptr inbounds %struct.sha4_context, ptr %242, i32 0, i32 1
  %244 = getelementptr inbounds [8 x i64], ptr %243, i64 0, i64 2
  %245 = load i64, ptr %244, align 8
  %246 = lshr i64 %245, 48
  %247 = trunc i64 %246 to i8
  %248 = load ptr, ptr %4, align 8
  %249 = getelementptr inbounds i8, ptr %248, i64 17
  store i8 %247, ptr %249, align 1
  %250 = load ptr, ptr %3, align 8
  %251 = getelementptr inbounds %struct.sha4_context, ptr %250, i32 0, i32 1
  %252 = getelementptr inbounds [8 x i64], ptr %251, i64 0, i64 2
  %253 = load i64, ptr %252, align 8
  %254 = lshr i64 %253, 40
  %255 = trunc i64 %254 to i8
  %256 = load ptr, ptr %4, align 8
  %257 = getelementptr inbounds i8, ptr %256, i64 18
  store i8 %255, ptr %257, align 1
  %258 = load ptr, ptr %3, align 8
  %259 = getelementptr inbounds %struct.sha4_context, ptr %258, i32 0, i32 1
  %260 = getelementptr inbounds [8 x i64], ptr %259, i64 0, i64 2
  %261 = load i64, ptr %260, align 8
  %262 = lshr i64 %261, 32
  %263 = trunc i64 %262 to i8
  %264 = load ptr, ptr %4, align 8
  %265 = getelementptr inbounds i8, ptr %264, i64 19
  store i8 %263, ptr %265, align 1
  %266 = load ptr, ptr %3, align 8
  %267 = getelementptr inbounds %struct.sha4_context, ptr %266, i32 0, i32 1
  %268 = getelementptr inbounds [8 x i64], ptr %267, i64 0, i64 2
  %269 = load i64, ptr %268, align 8
  %270 = lshr i64 %269, 24
  %271 = trunc i64 %270 to i8
  %272 = load ptr, ptr %4, align 8
  %273 = getelementptr inbounds i8, ptr %272, i64 20
  store i8 %271, ptr %273, align 1
  %274 = load ptr, ptr %3, align 8
  %275 = getelementptr inbounds %struct.sha4_context, ptr %274, i32 0, i32 1
  %276 = getelementptr inbounds [8 x i64], ptr %275, i64 0, i64 2
  %277 = load i64, ptr %276, align 8
  %278 = lshr i64 %277, 16
  %279 = trunc i64 %278 to i8
  %280 = load ptr, ptr %4, align 8
  %281 = getelementptr inbounds i8, ptr %280, i64 21
  store i8 %279, ptr %281, align 1
  %282 = load ptr, ptr %3, align 8
  %283 = getelementptr inbounds %struct.sha4_context, ptr %282, i32 0, i32 1
  %284 = getelementptr inbounds [8 x i64], ptr %283, i64 0, i64 2
  %285 = load i64, ptr %284, align 8
  %286 = lshr i64 %285, 8
  %287 = trunc i64 %286 to i8
  %288 = load ptr, ptr %4, align 8
  %289 = getelementptr inbounds i8, ptr %288, i64 22
  store i8 %287, ptr %289, align 1
  %290 = load ptr, ptr %3, align 8
  %291 = getelementptr inbounds %struct.sha4_context, ptr %290, i32 0, i32 1
  %292 = getelementptr inbounds [8 x i64], ptr %291, i64 0, i64 2
  %293 = load i64, ptr %292, align 8
  %294 = trunc i64 %293 to i8
  %295 = load ptr, ptr %4, align 8
  %296 = getelementptr inbounds i8, ptr %295, i64 23
  store i8 %294, ptr %296, align 1
  %297 = load ptr, ptr %3, align 8
  %298 = getelementptr inbounds %struct.sha4_context, ptr %297, i32 0, i32 1
  %299 = getelementptr inbounds [8 x i64], ptr %298, i64 0, i64 3
  %300 = load i64, ptr %299, align 8
  %301 = lshr i64 %300, 56
  %302 = trunc i64 %301 to i8
  %303 = load ptr, ptr %4, align 8
  %304 = getelementptr inbounds i8, ptr %303, i64 24
  store i8 %302, ptr %304, align 1
  %305 = load ptr, ptr %3, align 8
  %306 = getelementptr inbounds %struct.sha4_context, ptr %305, i32 0, i32 1
  %307 = getelementptr inbounds [8 x i64], ptr %306, i64 0, i64 3
  %308 = load i64, ptr %307, align 8
  %309 = lshr i64 %308, 48
  %310 = trunc i64 %309 to i8
  %311 = load ptr, ptr %4, align 8
  %312 = getelementptr inbounds i8, ptr %311, i64 25
  store i8 %310, ptr %312, align 1
  %313 = load ptr, ptr %3, align 8
  %314 = getelementptr inbounds %struct.sha4_context, ptr %313, i32 0, i32 1
  %315 = getelementptr inbounds [8 x i64], ptr %314, i64 0, i64 3
  %316 = load i64, ptr %315, align 8
  %317 = lshr i64 %316, 40
  %318 = trunc i64 %317 to i8
  %319 = load ptr, ptr %4, align 8
  %320 = getelementptr inbounds i8, ptr %319, i64 26
  store i8 %318, ptr %320, align 1
  %321 = load ptr, ptr %3, align 8
  %322 = getelementptr inbounds %struct.sha4_context, ptr %321, i32 0, i32 1
  %323 = getelementptr inbounds [8 x i64], ptr %322, i64 0, i64 3
  %324 = load i64, ptr %323, align 8
  %325 = lshr i64 %324, 32
  %326 = trunc i64 %325 to i8
  %327 = load ptr, ptr %4, align 8
  %328 = getelementptr inbounds i8, ptr %327, i64 27
  store i8 %326, ptr %328, align 1
  %329 = load ptr, ptr %3, align 8
  %330 = getelementptr inbounds %struct.sha4_context, ptr %329, i32 0, i32 1
  %331 = getelementptr inbounds [8 x i64], ptr %330, i64 0, i64 3
  %332 = load i64, ptr %331, align 8
  %333 = lshr i64 %332, 24
  %334 = trunc i64 %333 to i8
  %335 = load ptr, ptr %4, align 8
  %336 = getelementptr inbounds i8, ptr %335, i64 28
  store i8 %334, ptr %336, align 1
  %337 = load ptr, ptr %3, align 8
  %338 = getelementptr inbounds %struct.sha4_context, ptr %337, i32 0, i32 1
  %339 = getelementptr inbounds [8 x i64], ptr %338, i64 0, i64 3
  %340 = load i64, ptr %339, align 8
  %341 = lshr i64 %340, 16
  %342 = trunc i64 %341 to i8
  %343 = load ptr, ptr %4, align 8
  %344 = getelementptr inbounds i8, ptr %343, i64 29
  store i8 %342, ptr %344, align 1
  %345 = load ptr, ptr %3, align 8
  %346 = getelementptr inbounds %struct.sha4_context, ptr %345, i32 0, i32 1
  %347 = getelementptr inbounds [8 x i64], ptr %346, i64 0, i64 3
  %348 = load i64, ptr %347, align 8
  %349 = lshr i64 %348, 8
  %350 = trunc i64 %349 to i8
  %351 = load ptr, ptr %4, align 8
  %352 = getelementptr inbounds i8, ptr %351, i64 30
  store i8 %350, ptr %352, align 1
  %353 = load ptr, ptr %3, align 8
  %354 = getelementptr inbounds %struct.sha4_context, ptr %353, i32 0, i32 1
  %355 = getelementptr inbounds [8 x i64], ptr %354, i64 0, i64 3
  %356 = load i64, ptr %355, align 8
  %357 = trunc i64 %356 to i8
  %358 = load ptr, ptr %4, align 8
  %359 = getelementptr inbounds i8, ptr %358, i64 31
  store i8 %357, ptr %359, align 1
  %360 = load ptr, ptr %3, align 8
  %361 = getelementptr inbounds %struct.sha4_context, ptr %360, i32 0, i32 1
  %362 = getelementptr inbounds [8 x i64], ptr %361, i64 0, i64 4
  %363 = load i64, ptr %362, align 8
  %364 = lshr i64 %363, 56
  %365 = trunc i64 %364 to i8
  %366 = load ptr, ptr %4, align 8
  %367 = getelementptr inbounds i8, ptr %366, i64 32
  store i8 %365, ptr %367, align 1
  %368 = load ptr, ptr %3, align 8
  %369 = getelementptr inbounds %struct.sha4_context, ptr %368, i32 0, i32 1
  %370 = getelementptr inbounds [8 x i64], ptr %369, i64 0, i64 4
  %371 = load i64, ptr %370, align 8
  %372 = lshr i64 %371, 48
  %373 = trunc i64 %372 to i8
  %374 = load ptr, ptr %4, align 8
  %375 = getelementptr inbounds i8, ptr %374, i64 33
  store i8 %373, ptr %375, align 1
  %376 = load ptr, ptr %3, align 8
  %377 = getelementptr inbounds %struct.sha4_context, ptr %376, i32 0, i32 1
  %378 = getelementptr inbounds [8 x i64], ptr %377, i64 0, i64 4
  %379 = load i64, ptr %378, align 8
  %380 = lshr i64 %379, 40
  %381 = trunc i64 %380 to i8
  %382 = load ptr, ptr %4, align 8
  %383 = getelementptr inbounds i8, ptr %382, i64 34
  store i8 %381, ptr %383, align 1
  %384 = load ptr, ptr %3, align 8
  %385 = getelementptr inbounds %struct.sha4_context, ptr %384, i32 0, i32 1
  %386 = getelementptr inbounds [8 x i64], ptr %385, i64 0, i64 4
  %387 = load i64, ptr %386, align 8
  %388 = lshr i64 %387, 32
  %389 = trunc i64 %388 to i8
  %390 = load ptr, ptr %4, align 8
  %391 = getelementptr inbounds i8, ptr %390, i64 35
  store i8 %389, ptr %391, align 1
  %392 = load ptr, ptr %3, align 8
  %393 = getelementptr inbounds %struct.sha4_context, ptr %392, i32 0, i32 1
  %394 = getelementptr inbounds [8 x i64], ptr %393, i64 0, i64 4
  %395 = load i64, ptr %394, align 8
  %396 = lshr i64 %395, 24
  %397 = trunc i64 %396 to i8
  %398 = load ptr, ptr %4, align 8
  %399 = getelementptr inbounds i8, ptr %398, i64 36
  store i8 %397, ptr %399, align 1
  %400 = load ptr, ptr %3, align 8
  %401 = getelementptr inbounds %struct.sha4_context, ptr %400, i32 0, i32 1
  %402 = getelementptr inbounds [8 x i64], ptr %401, i64 0, i64 4
  %403 = load i64, ptr %402, align 8
  %404 = lshr i64 %403, 16
  %405 = trunc i64 %404 to i8
  %406 = load ptr, ptr %4, align 8
  %407 = getelementptr inbounds i8, ptr %406, i64 37
  store i8 %405, ptr %407, align 1
  %408 = load ptr, ptr %3, align 8
  %409 = getelementptr inbounds %struct.sha4_context, ptr %408, i32 0, i32 1
  %410 = getelementptr inbounds [8 x i64], ptr %409, i64 0, i64 4
  %411 = load i64, ptr %410, align 8
  %412 = lshr i64 %411, 8
  %413 = trunc i64 %412 to i8
  %414 = load ptr, ptr %4, align 8
  %415 = getelementptr inbounds i8, ptr %414, i64 38
  store i8 %413, ptr %415, align 1
  %416 = load ptr, ptr %3, align 8
  %417 = getelementptr inbounds %struct.sha4_context, ptr %416, i32 0, i32 1
  %418 = getelementptr inbounds [8 x i64], ptr %417, i64 0, i64 4
  %419 = load i64, ptr %418, align 8
  %420 = trunc i64 %419 to i8
  %421 = load ptr, ptr %4, align 8
  %422 = getelementptr inbounds i8, ptr %421, i64 39
  store i8 %420, ptr %422, align 1
  %423 = load ptr, ptr %3, align 8
  %424 = getelementptr inbounds %struct.sha4_context, ptr %423, i32 0, i32 1
  %425 = getelementptr inbounds [8 x i64], ptr %424, i64 0, i64 5
  %426 = load i64, ptr %425, align 8
  %427 = lshr i64 %426, 56
  %428 = trunc i64 %427 to i8
  %429 = load ptr, ptr %4, align 8
  %430 = getelementptr inbounds i8, ptr %429, i64 40
  store i8 %428, ptr %430, align 1
  %431 = load ptr, ptr %3, align 8
  %432 = getelementptr inbounds %struct.sha4_context, ptr %431, i32 0, i32 1
  %433 = getelementptr inbounds [8 x i64], ptr %432, i64 0, i64 5
  %434 = load i64, ptr %433, align 8
  %435 = lshr i64 %434, 48
  %436 = trunc i64 %435 to i8
  %437 = load ptr, ptr %4, align 8
  %438 = getelementptr inbounds i8, ptr %437, i64 41
  store i8 %436, ptr %438, align 1
  %439 = load ptr, ptr %3, align 8
  %440 = getelementptr inbounds %struct.sha4_context, ptr %439, i32 0, i32 1
  %441 = getelementptr inbounds [8 x i64], ptr %440, i64 0, i64 5
  %442 = load i64, ptr %441, align 8
  %443 = lshr i64 %442, 40
  %444 = trunc i64 %443 to i8
  %445 = load ptr, ptr %4, align 8
  %446 = getelementptr inbounds i8, ptr %445, i64 42
  store i8 %444, ptr %446, align 1
  %447 = load ptr, ptr %3, align 8
  %448 = getelementptr inbounds %struct.sha4_context, ptr %447, i32 0, i32 1
  %449 = getelementptr inbounds [8 x i64], ptr %448, i64 0, i64 5
  %450 = load i64, ptr %449, align 8
  %451 = lshr i64 %450, 32
  %452 = trunc i64 %451 to i8
  %453 = load ptr, ptr %4, align 8
  %454 = getelementptr inbounds i8, ptr %453, i64 43
  store i8 %452, ptr %454, align 1
  %455 = load ptr, ptr %3, align 8
  %456 = getelementptr inbounds %struct.sha4_context, ptr %455, i32 0, i32 1
  %457 = getelementptr inbounds [8 x i64], ptr %456, i64 0, i64 5
  %458 = load i64, ptr %457, align 8
  %459 = lshr i64 %458, 24
  %460 = trunc i64 %459 to i8
  %461 = load ptr, ptr %4, align 8
  %462 = getelementptr inbounds i8, ptr %461, i64 44
  store i8 %460, ptr %462, align 1
  %463 = load ptr, ptr %3, align 8
  %464 = getelementptr inbounds %struct.sha4_context, ptr %463, i32 0, i32 1
  %465 = getelementptr inbounds [8 x i64], ptr %464, i64 0, i64 5
  %466 = load i64, ptr %465, align 8
  %467 = lshr i64 %466, 16
  %468 = trunc i64 %467 to i8
  %469 = load ptr, ptr %4, align 8
  %470 = getelementptr inbounds i8, ptr %469, i64 45
  store i8 %468, ptr %470, align 1
  %471 = load ptr, ptr %3, align 8
  %472 = getelementptr inbounds %struct.sha4_context, ptr %471, i32 0, i32 1
  %473 = getelementptr inbounds [8 x i64], ptr %472, i64 0, i64 5
  %474 = load i64, ptr %473, align 8
  %475 = lshr i64 %474, 8
  %476 = trunc i64 %475 to i8
  %477 = load ptr, ptr %4, align 8
  %478 = getelementptr inbounds i8, ptr %477, i64 46
  store i8 %476, ptr %478, align 1
  %479 = load ptr, ptr %3, align 8
  %480 = getelementptr inbounds %struct.sha4_context, ptr %479, i32 0, i32 1
  %481 = getelementptr inbounds [8 x i64], ptr %480, i64 0, i64 5
  %482 = load i64, ptr %481, align 8
  %483 = trunc i64 %482 to i8
  %484 = load ptr, ptr %4, align 8
  %485 = getelementptr inbounds i8, ptr %484, i64 47
  store i8 %483, ptr %485, align 1
  %486 = load ptr, ptr %3, align 8
  %487 = getelementptr inbounds %struct.sha4_context, ptr %486, i32 0, i32 5
  %488 = load i32, ptr %487, align 8
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %617

490:                                              ; preds = %102
  %491 = load ptr, ptr %3, align 8
  %492 = getelementptr inbounds %struct.sha4_context, ptr %491, i32 0, i32 1
  %493 = getelementptr inbounds [8 x i64], ptr %492, i64 0, i64 6
  %494 = load i64, ptr %493, align 8
  %495 = lshr i64 %494, 56
  %496 = trunc i64 %495 to i8
  %497 = load ptr, ptr %4, align 8
  %498 = getelementptr inbounds i8, ptr %497, i64 48
  store i8 %496, ptr %498, align 1
  %499 = load ptr, ptr %3, align 8
  %500 = getelementptr inbounds %struct.sha4_context, ptr %499, i32 0, i32 1
  %501 = getelementptr inbounds [8 x i64], ptr %500, i64 0, i64 6
  %502 = load i64, ptr %501, align 8
  %503 = lshr i64 %502, 48
  %504 = trunc i64 %503 to i8
  %505 = load ptr, ptr %4, align 8
  %506 = getelementptr inbounds i8, ptr %505, i64 49
  store i8 %504, ptr %506, align 1
  %507 = load ptr, ptr %3, align 8
  %508 = getelementptr inbounds %struct.sha4_context, ptr %507, i32 0, i32 1
  %509 = getelementptr inbounds [8 x i64], ptr %508, i64 0, i64 6
  %510 = load i64, ptr %509, align 8
  %511 = lshr i64 %510, 40
  %512 = trunc i64 %511 to i8
  %513 = load ptr, ptr %4, align 8
  %514 = getelementptr inbounds i8, ptr %513, i64 50
  store i8 %512, ptr %514, align 1
  %515 = load ptr, ptr %3, align 8
  %516 = getelementptr inbounds %struct.sha4_context, ptr %515, i32 0, i32 1
  %517 = getelementptr inbounds [8 x i64], ptr %516, i64 0, i64 6
  %518 = load i64, ptr %517, align 8
  %519 = lshr i64 %518, 32
  %520 = trunc i64 %519 to i8
  %521 = load ptr, ptr %4, align 8
  %522 = getelementptr inbounds i8, ptr %521, i64 51
  store i8 %520, ptr %522, align 1
  %523 = load ptr, ptr %3, align 8
  %524 = getelementptr inbounds %struct.sha4_context, ptr %523, i32 0, i32 1
  %525 = getelementptr inbounds [8 x i64], ptr %524, i64 0, i64 6
  %526 = load i64, ptr %525, align 8
  %527 = lshr i64 %526, 24
  %528 = trunc i64 %527 to i8
  %529 = load ptr, ptr %4, align 8
  %530 = getelementptr inbounds i8, ptr %529, i64 52
  store i8 %528, ptr %530, align 1
  %531 = load ptr, ptr %3, align 8
  %532 = getelementptr inbounds %struct.sha4_context, ptr %531, i32 0, i32 1
  %533 = getelementptr inbounds [8 x i64], ptr %532, i64 0, i64 6
  %534 = load i64, ptr %533, align 8
  %535 = lshr i64 %534, 16
  %536 = trunc i64 %535 to i8
  %537 = load ptr, ptr %4, align 8
  %538 = getelementptr inbounds i8, ptr %537, i64 53
  store i8 %536, ptr %538, align 1
  %539 = load ptr, ptr %3, align 8
  %540 = getelementptr inbounds %struct.sha4_context, ptr %539, i32 0, i32 1
  %541 = getelementptr inbounds [8 x i64], ptr %540, i64 0, i64 6
  %542 = load i64, ptr %541, align 8
  %543 = lshr i64 %542, 8
  %544 = trunc i64 %543 to i8
  %545 = load ptr, ptr %4, align 8
  %546 = getelementptr inbounds i8, ptr %545, i64 54
  store i8 %544, ptr %546, align 1
  %547 = load ptr, ptr %3, align 8
  %548 = getelementptr inbounds %struct.sha4_context, ptr %547, i32 0, i32 1
  %549 = getelementptr inbounds [8 x i64], ptr %548, i64 0, i64 6
  %550 = load i64, ptr %549, align 8
  %551 = trunc i64 %550 to i8
  %552 = load ptr, ptr %4, align 8
  %553 = getelementptr inbounds i8, ptr %552, i64 55
  store i8 %551, ptr %553, align 1
  %554 = load ptr, ptr %3, align 8
  %555 = getelementptr inbounds %struct.sha4_context, ptr %554, i32 0, i32 1
  %556 = getelementptr inbounds [8 x i64], ptr %555, i64 0, i64 7
  %557 = load i64, ptr %556, align 8
  %558 = lshr i64 %557, 56
  %559 = trunc i64 %558 to i8
  %560 = load ptr, ptr %4, align 8
  %561 = getelementptr inbounds i8, ptr %560, i64 56
  store i8 %559, ptr %561, align 1
  %562 = load ptr, ptr %3, align 8
  %563 = getelementptr inbounds %struct.sha4_context, ptr %562, i32 0, i32 1
  %564 = getelementptr inbounds [8 x i64], ptr %563, i64 0, i64 7
  %565 = load i64, ptr %564, align 8
  %566 = lshr i64 %565, 48
  %567 = trunc i64 %566 to i8
  %568 = load ptr, ptr %4, align 8
  %569 = getelementptr inbounds i8, ptr %568, i64 57
  store i8 %567, ptr %569, align 1
  %570 = load ptr, ptr %3, align 8
  %571 = getelementptr inbounds %struct.sha4_context, ptr %570, i32 0, i32 1
  %572 = getelementptr inbounds [8 x i64], ptr %571, i64 0, i64 7
  %573 = load i64, ptr %572, align 8
  %574 = lshr i64 %573, 40
  %575 = trunc i64 %574 to i8
  %576 = load ptr, ptr %4, align 8
  %577 = getelementptr inbounds i8, ptr %576, i64 58
  store i8 %575, ptr %577, align 1
  %578 = load ptr, ptr %3, align 8
  %579 = getelementptr inbounds %struct.sha4_context, ptr %578, i32 0, i32 1
  %580 = getelementptr inbounds [8 x i64], ptr %579, i64 0, i64 7
  %581 = load i64, ptr %580, align 8
  %582 = lshr i64 %581, 32
  %583 = trunc i64 %582 to i8
  %584 = load ptr, ptr %4, align 8
  %585 = getelementptr inbounds i8, ptr %584, i64 59
  store i8 %583, ptr %585, align 1
  %586 = load ptr, ptr %3, align 8
  %587 = getelementptr inbounds %struct.sha4_context, ptr %586, i32 0, i32 1
  %588 = getelementptr inbounds [8 x i64], ptr %587, i64 0, i64 7
  %589 = load i64, ptr %588, align 8
  %590 = lshr i64 %589, 24
  %591 = trunc i64 %590 to i8
  %592 = load ptr, ptr %4, align 8
  %593 = getelementptr inbounds i8, ptr %592, i64 60
  store i8 %591, ptr %593, align 1
  %594 = load ptr, ptr %3, align 8
  %595 = getelementptr inbounds %struct.sha4_context, ptr %594, i32 0, i32 1
  %596 = getelementptr inbounds [8 x i64], ptr %595, i64 0, i64 7
  %597 = load i64, ptr %596, align 8
  %598 = lshr i64 %597, 16
  %599 = trunc i64 %598 to i8
  %600 = load ptr, ptr %4, align 8
  %601 = getelementptr inbounds i8, ptr %600, i64 61
  store i8 %599, ptr %601, align 1
  %602 = load ptr, ptr %3, align 8
  %603 = getelementptr inbounds %struct.sha4_context, ptr %602, i32 0, i32 1
  %604 = getelementptr inbounds [8 x i64], ptr %603, i64 0, i64 7
  %605 = load i64, ptr %604, align 8
  %606 = lshr i64 %605, 8
  %607 = trunc i64 %606 to i8
  %608 = load ptr, ptr %4, align 8
  %609 = getelementptr inbounds i8, ptr %608, i64 62
  store i8 %607, ptr %609, align 1
  %610 = load ptr, ptr %3, align 8
  %611 = getelementptr inbounds %struct.sha4_context, ptr %610, i32 0, i32 1
  %612 = getelementptr inbounds [8 x i64], ptr %611, i64 0, i64 7
  %613 = load i64, ptr %612, align 8
  %614 = trunc i64 %613 to i8
  %615 = load ptr, ptr %4, align 8
  %616 = getelementptr inbounds i8, ptr %615, i64 63
  store i8 %614, ptr %616, align 1
  br label %617

617:                                              ; preds = %490, %102
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sha4_context, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %10 = load i32, ptr %8, align 4
  call void @sha4_starts(ptr noundef %9, i32 noundef %10)
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %6, align 4
  call void @sha4_update(ptr noundef %9, ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %7, align 8
  call void @sha4_finish(ptr noundef %9, ptr noundef %13)
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 472, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
