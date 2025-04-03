; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable2.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::chrono::duration" = type { i64 }
%"class.std::chrono::duration.0" = type { i64 }
%"class.std::chrono::duration.1" = type { i64 }
%struct.timespec = type { i64, i64 }
%class.Derived = type { %class.Base.base, i32 }
%class.Base.base = type <{ ptr, i32 }>
%class.Base = type <{ ptr, i32, [4 x i8] }>

$_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IivEERKT_ = comdat any

$_ZN7DerivedC2Ev = comdat any

$_ZN4BaseC2Ev = comdat any

$_ZN7Derived5func1Ev = comdat any

$_ZN7Derived5func2Ev = comdat any

$_ZN7Derived5func3Ev = comdat any

$_ZN4Base5func1Ev = comdat any

$_ZN4Base5func2Ev = comdat any

$_ZN4Base5func3Ev = comdat any

$_ZNSt6chronoleIlSt5ratioILl1ELl1000EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEE4zeroEv = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS2_ILl1ELl1000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chronomiIlSt5ratioILl1ELl1000EElS1_ILl1ELl1EEEENSt11common_typeIJNS_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv = comdat any

$_ZNSt6chronoltIlSt5ratioILl1ELl1000EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv = comdat any

$_ZNSt6chrono15duration_valuesIlE4zeroEv = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_ = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1000EEEES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1EEvEERKNS0_IT_T0_EE = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE = comdat any

$_ZTV7Derived = comdat any

$_ZTS7Derived = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTI7Derived = comdat any

$_ZTV4Base = comdat any

@basePtr = dso_local global ptr null, align 8, !dbg !0
@t1 = dso_local global i64 0, align 8, !dbg !254
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [43 x i8] c"Thread accessing deleted object's func(): \00", align 1, !dbg !260
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !267
@_ZTV7Derived = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI7Derived, ptr @_ZN7Derived5func1Ev, ptr @_ZN7Derived5func2Ev, ptr @_ZN7Derived5func3Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS7Derived = linkonce_odr dso_local constant [9 x i8] c"7Derived\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS4Base = linkonce_odr dso_local constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTI4Base = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS4Base }, comdat, align 8
@_ZTI7Derived = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7Derived, ptr @_ZTI4Base }, comdat, align 8
@_ZTV4Base = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI4Base, ptr @_ZN4Base5func1Ev, ptr @_ZN4Base5func2Ev, ptr @_ZN4Base5func3Ev] }, comdat, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Base::func1\00", align 1, !dbg !272
@.str.3 = private unnamed_addr constant [6 x i8] c"Data:\00", align 1, !dbg !277
@.str.4 = private unnamed_addr constant [12 x i8] c"Base::func2\00", align 1, !dbg !282
@.str.5 = private unnamed_addr constant [12 x i8] c"Base::func3\00", align 1, !dbg !284
@.str.6 = private unnamed_addr constant [15 x i8] c"Derived::func1\00", align 1, !dbg !286
@.str.7 = private unnamed_addr constant [15 x i8] c"Derived::func2\00", align 1, !dbg !291
@.str.8 = private unnamed_addr constant [15 x i8] c"Derived::func3\00", align 1, !dbg !293

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10threadFuncPv(ptr noundef %0) #0 !dbg !1226 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::chrono::duration", align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1229, metadata !DIExpression()), !dbg !1230
  store i32 10000, ptr %4, align 4, !dbg !1231
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IivEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4), !dbg !1232
  call void @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %3), !dbg !1233
  %5 = load ptr, ptr @basePtr, align 8, !dbg !1234
  %6 = icmp ne ptr %5, null, !dbg !1234
  br i1 %6, label %7, label %14, !dbg !1236

7:                                                ; preds = %1
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !1237
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @.str.1), !dbg !1239
  %10 = load ptr, ptr @basePtr, align 8, !dbg !1240
  %11 = load ptr, ptr %10, align 8, !dbg !1241
  %12 = getelementptr inbounds ptr, ptr %11, i64 0, !dbg !1241
  %13 = load ptr, ptr %12, align 8, !dbg !1241
  call void %13(ptr noundef nonnull align 8 dereferenceable(12) %10), !dbg !1241
  br label %14, !dbg !1242

14:                                               ; preds = %7, %1
  ret ptr null, !dbg !1243
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat !dbg !1244 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::chrono::duration", align 8
  %4 = alloca %"class.std::chrono::duration.0", align 8
  %5 = alloca %"class.std::chrono::duration.1", align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  %7 = alloca %struct.timespec, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1249, metadata !DIExpression()), !dbg !1250
  %8 = load ptr, ptr %2, align 8, !dbg !1251
  %9 = load ptr, ptr %2, align 8, !dbg !1253
  %10 = call i64 @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEE4zeroEv() #11, !dbg !1253
  %11 = getelementptr inbounds %"class.std::chrono::duration", ptr %3, i32 0, i32 0, !dbg !1253
  store i64 %10, ptr %11, align 8, !dbg !1253
  %12 = call noundef zeroext i1 @_ZNSt6chronoleIlSt5ratioILl1ELl1000EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %3), !dbg !1254
  br i1 %12, label %13, label %14, !dbg !1255

13:                                               ; preds = %1
  br label %37, !dbg !1256

14:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1257, metadata !DIExpression()), !dbg !1264
  %15 = load ptr, ptr %2, align 8, !dbg !1265
  %16 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS2_ILl1ELl1000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %15), !dbg !1266
  %17 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %4, i32 0, i32 0, !dbg !1266
  store i64 %16, ptr %17, align 8, !dbg !1266
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1267, metadata !DIExpression()), !dbg !1273
  %18 = load ptr, ptr %2, align 8, !dbg !1274
  %19 = call i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1000EElS1_ILl1ELl1EEEENSt11common_typeIJNS_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1275
  %20 = getelementptr inbounds %"class.std::chrono::duration", ptr %6, i32 0, i32 0, !dbg !1275
  store i64 %19, ptr %20, align 8, !dbg !1275
  %21 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !1276
  %22 = getelementptr inbounds %"class.std::chrono::duration.1", ptr %5, i32 0, i32 0, !dbg !1276
  store i64 %21, ptr %22, align 8, !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1277, metadata !DIExpression()), !dbg !1278
  %23 = getelementptr inbounds %struct.timespec, ptr %7, i32 0, i32 0, !dbg !1279
  %24 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1280
  store i64 %24, ptr %23, align 8, !dbg !1279
  %25 = getelementptr inbounds %struct.timespec, ptr %7, i32 0, i32 1, !dbg !1279
  %26 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !1281
  store i64 %26, ptr %25, align 8, !dbg !1279
  br label %27, !dbg !1282

27:                                               ; preds = %36, %14
  %28 = call i32 @nanosleep(ptr noundef %7, ptr noundef %7), !dbg !1283
  %29 = icmp eq i32 %28, -1, !dbg !1284
  br i1 %29, label %30, label %34, !dbg !1285

30:                                               ; preds = %27
  %31 = call ptr @__errno_location() #12, !dbg !1286
  %32 = load i32, ptr %31, align 4, !dbg !1286
  %33 = icmp eq i32 %32, 4, !dbg !1287
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ], !dbg !1288
  br i1 %35, label %36, label %37, !dbg !1282

36:                                               ; preds = %34
  br label %27, !dbg !1282, !llvm.loop !1289

37:                                               ; preds = %13, %34
  ret void, !dbg !1292
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IivEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 !dbg !1293 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1302, metadata !DIExpression()), !dbg !1304
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1305, metadata !DIExpression()), !dbg !1306
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::chrono::duration", ptr %5, i32 0, i32 0, !dbg !1307
  %7 = load ptr, ptr %4, align 8, !dbg !1308
  %8 = load i32, ptr %7, align 4, !dbg !1308
  %9 = sext i32 %8 to i64, !dbg !1308
  store i64 %9, ptr %6, align 8, !dbg !1307
  ret void, !dbg !1309
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z11startThreadv() #4 !dbg !1310 {
  %1 = alloca %class.Derived, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1311, metadata !DIExpression()), !dbg !1324
  call void @_ZN7DerivedC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #11, !dbg !1324
  store ptr %1, ptr @basePtr, align 8, !dbg !1325
  %2 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z10threadFuncPv, ptr noundef null) #11, !dbg !1326
  ret void, !dbg !1327
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DerivedC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 !dbg !1328 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1330, metadata !DIExpression()), !dbg !1332
  %3 = load ptr, ptr %2, align 8
  call void @_ZN4BaseC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #11, !dbg !1333
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV7Derived, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1333
  %4 = getelementptr inbounds %class.Derived, ptr %3, i32 0, i32 1, !dbg !1334
  store i32 20, ptr %4, align 4, !dbg !1334
  ret void, !dbg !1333
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 !dbg !1335 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z11startThreadv(), !dbg !1336
  %2 = load i64, ptr @t1, align 8, !dbg !1337
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !1338
  ret i32 0, !dbg !1339
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #2 comdat align 2 !dbg !1340 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1342, metadata !DIExpression()), !dbg !1343
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV4Base, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1344
  %4 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !1345
  store i32 10, ptr %4, align 8, !dbg !1345
  ret void, !dbg !1344
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7Derived5func1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !1346 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1347, metadata !DIExpression()), !dbg !1348
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6), !dbg !1349
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.3), !dbg !1350
  %6 = getelementptr inbounds %class.Derived, ptr %3, i32 0, i32 1, !dbg !1351
  %7 = load i32, ptr %6, align 4, !dbg !1351
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !1352
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1353
  ret void, !dbg !1354
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7Derived5func2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !1355 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1356, metadata !DIExpression()), !dbg !1357
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7), !dbg !1358
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.3), !dbg !1359
  %6 = getelementptr inbounds %class.Derived, ptr %3, i32 0, i32 1, !dbg !1360
  %7 = load i32, ptr %6, align 4, !dbg !1360
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !1361
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1362
  ret void, !dbg !1363
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7Derived5func3Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !1364 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1365, metadata !DIExpression()), !dbg !1366
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.8), !dbg !1367
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.3), !dbg !1368
  %6 = getelementptr inbounds %class.Derived, ptr %3, i32 0, i32 1, !dbg !1369
  %7 = load i32, ptr %6, align 4, !dbg !1369
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !1370
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1371
  ret void, !dbg !1372
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base5func1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !1373 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1374, metadata !DIExpression()), !dbg !1375
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !1376
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.3), !dbg !1377
  %6 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !1378
  %7 = load i32, ptr %6, align 8, !dbg !1378
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !1379
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1380
  ret void, !dbg !1381
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base5func2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !1382 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1383, metadata !DIExpression()), !dbg !1384
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !1385
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.3), !dbg !1386
  %6 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !1387
  %7 = load i32, ptr %6, align 8, !dbg !1387
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !1388
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base5func3Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !1391 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1392, metadata !DIExpression()), !dbg !1393
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !1394
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.3), !dbg !1395
  %6 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !1396
  %7 = load i32, ptr %6, align 8, !dbg !1396
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !1397
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1398
  ret void, !dbg !1399
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt6chronoleIlSt5ratioILl1ELl1000EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !1400 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1401, metadata !DIExpression()), !dbg !1402
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1403, metadata !DIExpression()), !dbg !1404
  %5 = load ptr, ptr %4, align 8, !dbg !1405
  %6 = load ptr, ptr %3, align 8, !dbg !1406
  %7 = call noundef zeroext i1 @_ZNSt6chronoltIlSt5ratioILl1ELl1000EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !1407
  %8 = xor i1 %7, true, !dbg !1408
  ret i1 %8, !dbg !1409
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEE4zeroEv() #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1410 {
  %1 = alloca %"class.std::chrono::duration", align 8
  %2 = alloca i64, align 8
  %3 = call noundef i64 @_ZNSt6chrono15duration_valuesIlE4zeroEv() #11, !dbg !1411
  store i64 %3, ptr %2, align 8, !dbg !1411
  invoke void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %4 unwind label %7, !dbg !1412

4:                                                ; preds = %0
  %5 = getelementptr inbounds %"class.std::chrono::duration", ptr %1, i32 0, i32 0, !dbg !1413
  %6 = load i64, ptr %5, align 8, !dbg !1413
  ret i64 %6, !dbg !1413

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1412
  %9 = extractvalue { ptr, i32 } %8, 0, !dbg !1412
  call void @__clang_call_terminate(ptr %9) #13, !dbg !1412
  unreachable, !dbg !1412
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS2_ILl1ELl1000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat !dbg !1414 {
  %2 = alloca %"class.std::chrono::duration.0", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1419, metadata !DIExpression()), !dbg !1420
  %4 = load ptr, ptr %3, align 8, !dbg !1421
  %5 = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1424
  %6 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %2, i32 0, i32 0, !dbg !1424
  store i64 %5, ptr %6, align 8, !dbg !1424
  %7 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %2, i32 0, i32 0, !dbg !1425
  %8 = load i64, ptr %7, align 8, !dbg !1425
  ret i64 %8, !dbg !1425
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat !dbg !1426 {
  %2 = alloca %"class.std::chrono::duration.1", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1431, metadata !DIExpression()), !dbg !1432
  %4 = load ptr, ptr %3, align 8, !dbg !1433
  %5 = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1000EEEES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1436
  %6 = getelementptr inbounds %"class.std::chrono::duration.1", ptr %2, i32 0, i32 0, !dbg !1436
  store i64 %5, ptr %6, align 8, !dbg !1436
  %7 = getelementptr inbounds %"class.std::chrono::duration.1", ptr %2, i32 0, i32 0, !dbg !1437
  %8 = load i64, ptr %7, align 8, !dbg !1437
  ret i64 %8, !dbg !1437
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1000EElS1_ILl1ELl1EEEENSt11common_typeIJNS_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !210 {
  %3 = alloca %"class.std::chrono::duration", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::chrono::duration", align 8
  %8 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1438, metadata !DIExpression()), !dbg !1439
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1440, metadata !DIExpression()), !dbg !1441
  %9 = load ptr, ptr %4, align 8, !dbg !1442
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 8, i1 false), !dbg !1443
  %10 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %7), !dbg !1444
  %11 = load ptr, ptr %5, align 8, !dbg !1445
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1EEvEERKNS0_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11), !dbg !1446
  %12 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %8), !dbg !1447
  %13 = sub nsw i64 %10, %12, !dbg !1448
  store i64 %13, ptr %6, align 8, !dbg !1443
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !1449
  %14 = getelementptr inbounds %"class.std::chrono::duration", ptr %3, i32 0, i32 0, !dbg !1450
  %15 = load i64, ptr %14, align 8, !dbg !1450
  ret i64 %15, !dbg !1450
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1451 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1452, metadata !DIExpression()), !dbg !1454
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %3, i32 0, i32 0, !dbg !1455
  %5 = load i64, ptr %4, align 8, !dbg !1455
  ret i64 %5, !dbg !1456
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1457 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1458, metadata !DIExpression()), !dbg !1460
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::chrono::duration.1", ptr %3, i32 0, i32 0, !dbg !1461
  %5 = load i64, ptr %4, align 8, !dbg !1461
  ret i64 %5, !dbg !1462
}

declare i32 @nanosleep(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt6chronoltIlSt5ratioILl1ELl1000EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !81 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::chrono::duration", align 8
  %6 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1463, metadata !DIExpression()), !dbg !1464
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1465, metadata !DIExpression()), !dbg !1466
  %7 = load ptr, ptr %3, align 8, !dbg !1467
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %7, i64 8, i1 false), !dbg !1468
  %8 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !1469
  %9 = load ptr, ptr %4, align 8, !dbg !1470
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %9, i64 8, i1 false), !dbg !1471
  %10 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !1472
  %11 = icmp slt i64 %8, %10, !dbg !1473
  ret i1 %11, !dbg !1474
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1475 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1476, metadata !DIExpression()), !dbg !1478
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::chrono::duration", ptr %3, i32 0, i32 0, !dbg !1479
  %5 = load i64, ptr %4, align 8, !dbg !1479
  ret i64 %5, !dbg !1480
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6chrono15duration_valuesIlE4zeroEv() #4 comdat align 2 !dbg !1481 {
  ret i64 0, !dbg !1490
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !1491 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1498, metadata !DIExpression()), !dbg !1499
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1500, metadata !DIExpression()), !dbg !1501
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::chrono::duration", ptr %5, i32 0, i32 0, !dbg !1502
  %7 = load ptr, ptr %4, align 8, !dbg !1503
  %8 = load i64, ptr %7, align 8, !dbg !1503
  store i64 %8, ptr %6, align 8, !dbg !1502
  ret void, !dbg !1504
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #9 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #11
  call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !1505 {
  %2 = alloca %"class.std::chrono::duration.0", align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1515, metadata !DIExpression()), !dbg !1516
  %5 = load ptr, ptr %3, align 8, !dbg !1517
  %6 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !1518
  %7 = sdiv i64 %6, 1000, !dbg !1519
  store i64 %7, ptr %4, align 8, !dbg !1520
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1521
  %8 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %2, i32 0, i32 0, !dbg !1522
  %9 = load i64, ptr %8, align 8, !dbg !1522
  ret i64 %9, !dbg !1522
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !1523 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1527, metadata !DIExpression()), !dbg !1529
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1530, metadata !DIExpression()), !dbg !1531
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::chrono::duration.0", ptr %5, i32 0, i32 0, !dbg !1532
  %7 = load ptr, ptr %4, align 8, !dbg !1533
  %8 = load i64, ptr %7, align 8, !dbg !1533
  store i64 %8, ptr %6, align 8, !dbg !1532
  ret void, !dbg !1534
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1000EEEES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !1535 {
  %2 = alloca %"class.std::chrono::duration.1", align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1544, metadata !DIExpression()), !dbg !1545
  %5 = load ptr, ptr %3, align 8, !dbg !1546
  %6 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !1547
  %7 = mul nsw i64 %6, 1000000, !dbg !1548
  store i64 %7, ptr %4, align 8, !dbg !1549
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1550
  %8 = getelementptr inbounds %"class.std::chrono::duration.1", ptr %2, i32 0, i32 0, !dbg !1551
  %9 = load i64, ptr %8, align 8, !dbg !1551
  ret i64 %9, !dbg !1551
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !1552 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1556, metadata !DIExpression()), !dbg !1558
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1559, metadata !DIExpression()), !dbg !1560
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::chrono::duration.1", ptr %5, i32 0, i32 0, !dbg !1561
  %7 = load ptr, ptr %4, align 8, !dbg !1562
  %8 = load i64, ptr %7, align 8, !dbg !1562
  store i64 %8, ptr %6, align 8, !dbg !1561
  ret void, !dbg !1563
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1EEvEERKNS0_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 !dbg !1564 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::chrono::duration", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1569, metadata !DIExpression()), !dbg !1570
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1571, metadata !DIExpression()), !dbg !1572
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::chrono::duration", ptr %6, i32 0, i32 0, !dbg !1573
  %8 = load ptr, ptr %4, align 8, !dbg !1574
  %9 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %8), !dbg !1575
  %10 = getelementptr inbounds %"class.std::chrono::duration", ptr %5, i32 0, i32 0, !dbg !1575
  store i64 %9, ptr %10, align 8, !dbg !1575
  %11 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !1576
  store i64 %11, ptr %7, align 8, !dbg !1573
  ret void, !dbg !1577
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat !dbg !1578 {
  %2 = alloca %"class.std::chrono::duration", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1589, metadata !DIExpression()), !dbg !1590
  %4 = load ptr, ptr %3, align 8, !dbg !1591
  %5 = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1594
  %6 = getelementptr inbounds %"class.std::chrono::duration", ptr %2, i32 0, i32 0, !dbg !1594
  store i64 %5, ptr %6, align 8, !dbg !1594
  %7 = getelementptr inbounds %"class.std::chrono::duration", ptr %2, i32 0, i32 0, !dbg !1595
  %8 = load i64, ptr %7, align 8, !dbg !1595
  ret i64 %8, !dbg !1595
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !1596 {
  %2 = alloca %"class.std::chrono::duration", align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1604, metadata !DIExpression()), !dbg !1605
  %5 = load ptr, ptr %3, align 8, !dbg !1606
  %6 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !1607
  %7 = mul nsw i64 %6, 1000, !dbg !1608
  store i64 %7, ptr %4, align 8, !dbg !1609
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1610
  %8 = getelementptr inbounds %"class.std::chrono::duration", ptr %2, i32 0, i32 0, !dbg !1611
  %9 = load i64, ptr %8, align 8, !dbg !1611
  ret i64 %9, !dbg !1611
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224}
!llvm.ident = !{!1225}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basePtr", scope: !2, file: !256, line: 47, type: !1203, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !253, imports: !295, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable2.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "c37612d0569d22ce12c5504d0df41c75")
!4 = !{!5, !12, !77, !13, !80, !9, !97, !100, !153, !156, !209, !68, !241, !247}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "milliseconds", scope: !7, file: !6, line: 905, baseType: !9)
!6 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/chrono.h", directory: "")
!7 = !DINamespace(name: "chrono", scope: !8)
!8 = !DINamespace(name: "std", scope: null)
!9 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long, std::ratio<1L, 1000L> >", scope: !7, file: !6, line: 523, size: 64, flags: DIFlagTypePassByValue, elements: !10, templateParams: !65, identifier: "_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE")
!10 = !{!11, !14, !21, !25, !30, !31, !35, !39, !42, !43, !46, !50, !51, !52, !53, !54, !59, !60, !63, !64}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !9, file: !6, line: 696, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !9, file: !6, line: 571, baseType: !13, flags: DIFlagPublic)
!13 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!14 = !DISubprogram(name: "_S_gcd", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEE6_S_gcdEll", scope: !9, file: !6, line: 534, type: !15, scopeLine: 534, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !18, line: 101, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !20, line: 72, baseType: !13)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!21 = !DISubprogram(name: "duration", scope: !9, file: !6, line: 575, type: !22, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!25 = !DISubprogram(name: "duration", scope: !9, file: !6, line: 577, type: !26, scopeLine: 577, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !24, !28}
!28 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!30 = !DISubprogram(name: "~duration", scope: !9, file: !6, line: 595, type: !22, scopeLine: 595, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!31 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEaSERKS3_", scope: !9, file: !6, line: 596, type: !32, scopeLine: 596, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !24, !28}
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!35 = !DISubprogram(name: "count", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv", scope: !9, file: !6, line: 600, type: !36, scopeLine: 600, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!36 = !DISubroutineType(types: !37)
!37 = !{!12, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!39 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEEpsEv", scope: !9, file: !6, line: 606, type: !40, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!40 = !DISubroutineType(types: !41)
!41 = !{!9, !38}
!42 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEEngEv", scope: !9, file: !6, line: 610, type: !40, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!43 = !DISubprogram(name: "operator++", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEppEv", scope: !9, file: !6, line: 614, type: !44, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!44 = !DISubroutineType(types: !45)
!45 = !{!34, !24}
!46 = !DISubprogram(name: "operator++", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEppEi", scope: !9, file: !6, line: 621, type: !47, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!47 = !DISubroutineType(types: !48)
!48 = !{!9, !24, !49}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DISubprogram(name: "operator--", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEmmEv", scope: !9, file: !6, line: 625, type: !44, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!51 = !DISubprogram(name: "operator--", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEmmEi", scope: !9, file: !6, line: 632, type: !47, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!52 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEpLERKS3_", scope: !9, file: !6, line: 636, type: !32, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!53 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEmIERKS3_", scope: !9, file: !6, line: 643, type: !32, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!54 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEmLERKl", scope: !9, file: !6, line: 650, type: !55, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{!34, !24, !57}
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!59 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEdVERKl", scope: !9, file: !6, line: 657, type: !55, scopeLine: 657, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!60 = !DISubprogram(name: "zero", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEE4zeroEv", scope: !9, file: !6, line: 684, type: !61, scopeLine: 684, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{!9}
!63 = !DISubprogram(name: "min", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEE3minEv", scope: !9, file: !6, line: 688, type: !61, scopeLine: 688, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!64 = !DISubprogram(name: "max", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEE3maxEv", scope: !9, file: !6, line: 692, type: !61, scopeLine: 692, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!65 = !{!66, !67}
!66 = !DITemplateTypeParameter(name: "_Rep", type: !13)
!67 = !DITemplateTypeParameter(name: "_Period", type: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratio<1L, 1000L>", scope: !8, file: !69, line: 266, size: 8, flags: DIFlagTypePassByValue, elements: !70, templateParams: !74, identifier: "_ZTSSt5ratioILl1ELl1000EE")
!69 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ratio", directory: "")
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !68, file: !69, line: 273, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !68, file: !69, line: 276, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1000)
!74 = !{!75, !76}
!75 = !DITemplateValueParameter(name: "_Num", type: !13, value: i64 1)
!76 = !DITemplateValueParameter(name: "_Den", type: !13, value: i64 1000)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !78, line: 7, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !20, line: 160, baseType: !13)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ct", scope: !81, file: !6, line: 838, baseType: !91)
!81 = distinct !DISubprogram(name: "operator<<long, std::ratio<1L, 1000L>, long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt6chronoltIlSt5ratioILl1ELl1000EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE", scope: !7, file: !6, line: 833, type: !82, scopeLine: 835, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !86, retainedNodes: !85)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !28, !28}
!84 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!85 = !{}
!86 = !{!87, !88, !89, !90}
!87 = !DITemplateTypeParameter(name: "_Rep1", type: !13)
!88 = !DITemplateTypeParameter(name: "_Period1", type: !68)
!89 = !DITemplateTypeParameter(name: "_Rep2", type: !13)
!90 = !DITemplateTypeParameter(name: "_Period2", type: !68)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !92, file: !6, line: 115, baseType: !9)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<std::chrono::duration<long, std::ratio<1L, 1000L> >, std::chrono::duration<long, std::ratio<1L, 1000L> > >", scope: !8, file: !6, line: 112, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !93, identifier: "_ZTSSt11common_typeIJNSt6chrono8durationIlSt5ratioILl1ELl1000EEEES4_EE")
!93 = !{!94}
!94 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !95)
!95 = !{!96, !96}
!96 = !DITemplateTypeParameter(type: !9)
!97 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long, std::ratio<1L, 1L> >", scope: !7, file: !6, line: 523, size: 64, flags: DIFlagTypePassByValue, elements: !98, templateParams: !145, identifier: "_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE")
!98 = !{!99, !101, !102, !106, !111, !112, !116, !120, !123, !124, !127, !130, !131, !132, !133, !134, !139, !140, !143, !144}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !97, file: !6, line: 696, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !97, file: !6, line: 571, baseType: !13, flags: DIFlagPublic)
!101 = !DISubprogram(name: "_S_gcd", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE6_S_gcdEll", scope: !97, file: !6, line: 534, type: !15, scopeLine: 534, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!102 = !DISubprogram(name: "duration", scope: !97, file: !6, line: 575, type: !103, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!106 = !DISubprogram(name: "duration", scope: !97, file: !6, line: 577, type: !107, scopeLine: 577, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !105, !109}
!109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!111 = !DISubprogram(name: "~duration", scope: !97, file: !6, line: 595, type: !103, scopeLine: 595, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!112 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEaSERKS3_", scope: !97, file: !6, line: 596, type: !113, scopeLine: 596, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !105, !109}
!115 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !97, size: 64)
!116 = !DISubprogram(name: "count", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv", scope: !97, file: !6, line: 600, type: !117, scopeLine: 600, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!117 = !DISubroutineType(types: !118)
!118 = !{!100, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!120 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEEpsEv", scope: !97, file: !6, line: 606, type: !121, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{!97, !119}
!123 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEEngEv", scope: !97, file: !6, line: 610, type: !121, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!124 = !DISubprogram(name: "operator++", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEppEv", scope: !97, file: !6, line: 614, type: !125, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{!115, !105}
!127 = !DISubprogram(name: "operator++", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEppEi", scope: !97, file: !6, line: 621, type: !128, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!97, !105, !49}
!130 = !DISubprogram(name: "operator--", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEmmEv", scope: !97, file: !6, line: 625, type: !125, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!131 = !DISubprogram(name: "operator--", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEmmEi", scope: !97, file: !6, line: 632, type: !128, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!132 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEpLERKS3_", scope: !97, file: !6, line: 636, type: !113, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!133 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEmIERKS3_", scope: !97, file: !6, line: 643, type: !113, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!134 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEmLERKl", scope: !97, file: !6, line: 650, type: !135, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!115, !105, !137}
!137 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!139 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEdVERKl", scope: !97, file: !6, line: 657, type: !135, scopeLine: 657, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!140 = !DISubprogram(name: "zero", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE4zeroEv", scope: !97, file: !6, line: 684, type: !141, scopeLine: 684, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{!97}
!143 = !DISubprogram(name: "min", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE3minEv", scope: !97, file: !6, line: 688, type: !141, scopeLine: 688, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!144 = !DISubprogram(name: "max", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEE3maxEv", scope: !97, file: !6, line: 692, type: !141, scopeLine: 692, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!145 = !{!66, !146}
!146 = !DITemplateTypeParameter(name: "_Period", type: !147, defaulted: true)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratio<1L, 1L>", scope: !8, file: !69, line: 266, size: 8, flags: DIFlagTypePassByValue, elements: !148, templateParams: !151, identifier: "_ZTSSt5ratioILl1ELl1EE")
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !147, file: !69, line: 273, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !147, file: !69, line: 276, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1)
!151 = !{!75, !152}
!152 = !DITemplateValueParameter(name: "_Den", type: !13, defaulted: true, value: i64 1)
!153 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "duration<long, std::ratio<1L, 1000000000L> >", scope: !7, file: !6, line: 523, size: 64, flags: DIFlagTypePassByValue, elements: !154, templateParams: !201, identifier: "_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE")
!154 = !{!155, !157, !158, !162, !167, !168, !172, !176, !179, !180, !183, !186, !187, !188, !189, !190, !195, !196, !199, !200}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__r", scope: !153, file: !6, line: 696, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "rep", scope: !153, file: !6, line: 571, baseType: !13, flags: DIFlagPublic)
!157 = !DISubprogram(name: "_S_gcd", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE6_S_gcdEll", scope: !153, file: !6, line: 534, type: !15, scopeLine: 534, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!158 = !DISubprogram(name: "duration", scope: !153, file: !6, line: 575, type: !159, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!162 = !DISubprogram(name: "duration", scope: !153, file: !6, line: 577, type: !163, scopeLine: 577, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !161, !165}
!165 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!167 = !DISubprogram(name: "~duration", scope: !153, file: !6, line: 595, type: !159, scopeLine: 595, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!168 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_", scope: !153, file: !6, line: 596, type: !169, scopeLine: 596, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !161, !165}
!171 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !153, size: 64)
!172 = !DISubprogram(name: "count", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv", scope: !153, file: !6, line: 600, type: !173, scopeLine: 600, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!173 = !DISubroutineType(types: !174)
!174 = !{!156, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!176 = !DISubprogram(name: "operator+", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEpsEv", scope: !153, file: !6, line: 606, type: !177, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!153, !175}
!179 = !DISubprogram(name: "operator-", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEngEv", scope: !153, file: !6, line: 610, type: !177, scopeLine: 610, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubprogram(name: "operator++", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEppEv", scope: !153, file: !6, line: 614, type: !181, scopeLine: 614, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{!171, !161}
!183 = !DISubprogram(name: "operator++", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEppEi", scope: !153, file: !6, line: 621, type: !184, scopeLine: 621, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{!153, !161, !49}
!186 = !DISubprogram(name: "operator--", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEmmEv", scope: !153, file: !6, line: 625, type: !181, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!187 = !DISubprogram(name: "operator--", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEmmEi", scope: !153, file: !6, line: 632, type: !184, scopeLine: 632, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!188 = !DISubprogram(name: "operator+=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEpLERKS3_", scope: !153, file: !6, line: 636, type: !169, scopeLine: 636, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!189 = !DISubprogram(name: "operator-=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEmIERKS3_", scope: !153, file: !6, line: 643, type: !169, scopeLine: 643, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!190 = !DISubprogram(name: "operator*=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEmLERKl", scope: !153, file: !6, line: 650, type: !191, scopeLine: 650, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!171, !161, !193}
!193 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!195 = !DISubprogram(name: "operator/=", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEdVERKl", scope: !153, file: !6, line: 657, type: !191, scopeLine: 657, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!196 = !DISubprogram(name: "zero", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv", scope: !153, file: !6, line: 684, type: !197, scopeLine: 684, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{!153}
!199 = !DISubprogram(name: "min", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE3minEv", scope: !153, file: !6, line: 688, type: !197, scopeLine: 688, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!200 = !DISubprogram(name: "max", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE3maxEv", scope: !153, file: !6, line: 692, type: !197, scopeLine: 692, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!201 = !{!66, !202}
!202 = !DITemplateTypeParameter(name: "_Period", type: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratio<1L, 1000000000L>", scope: !8, file: !69, line: 266, size: 8, flags: DIFlagTypePassByValue, elements: !204, templateParams: !207, identifier: "_ZTSSt5ratioILl1ELl1000000000EE")
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !203, file: !69, line: 273, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !203, file: !69, line: 276, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1000000000)
!207 = !{!75, !208}
!208 = !DITemplateValueParameter(name: "_Den", type: !13, value: i64 1000000000)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cd", scope: !210, file: !6, line: 726, baseType: !213)
!210 = distinct !DISubprogram(name: "operator-<long, std::ratio<1L, 1000L>, long, std::ratio<1L, 1L> >", linkageName: "_ZNSt6chronomiIlSt5ratioILl1ELl1000EElS1_ILl1ELl1EEEENSt11common_typeIJNS_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_", scope: !7, file: !6, line: 721, type: !211, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !240, retainedNodes: !85)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !28, !109}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !214, file: !6, line: 93, baseType: !9)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_common_type<std::common_type<long, long>, std::ratio<1L, 1000L>, std::ratio<1L, 1L>, void>", scope: !8, file: !6, line: 82, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !215, identifier: "_ZTSSt22__duration_common_typeISt11common_typeIJllEESt5ratioILl1ELl1000EES2_ILl1ELl1EEvE")
!215 = !{!216, !88, !238, !239}
!216 = !DITemplateTypeParameter(name: "_CT", type: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_type<long, long>", scope: !8, file: !218, line: 2324, size: 8, flags: DIFlagTypePassByValue, elements: !219, templateParams: !234, identifier: "_ZTSSt11common_typeIJllEE")
!218 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/type_traits", directory: "")
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !217, baseType: !221, extraData: i32 0)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !222, file: !218, line: 2319, baseType: !231)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__common_type_impl<long, long, long, long>", scope: !8, file: !218, line: 2314, size: 8, flags: DIFlagTypePassByValue, elements: !223, templateParams: !226, identifier: "_ZTSSt18__common_type_implIllllE")
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !222, baseType: !225, flags: DIFlagPrivate, extraData: i32 0)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__do_common_type_impl", scope: !8, file: !218, line: 2263, size: 8, flags: DIFlagTypePassByValue, elements: !85, identifier: "_ZTSSt21__do_common_type_impl")
!226 = !{!227, !228, !229, !230}
!227 = !DITemplateTypeParameter(name: "_Tp1", type: !13)
!228 = !DITemplateTypeParameter(name: "_Tp2", type: !13)
!229 = !DITemplateTypeParameter(name: "_Dp1", type: !13)
!230 = !DITemplateTypeParameter(name: "_Dp2", type: !13)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__success_type<long>", scope: !8, file: !218, line: 2257, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !232, identifier: "_ZTSSt14__success_typeIlE")
!232 = !{!233}
!233 = !DITemplateTypeParameter(name: "_Tp", type: !13)
!234 = !{!235}
!235 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tp", value: !236)
!236 = !{!237, !237}
!237 = !DITemplateTypeParameter(type: !13)
!238 = !DITemplateTypeParameter(name: "_Period2", type: !147)
!239 = !DITemplateTypeParameter(type: null, defaulted: true)
!240 = !{!87, !88, !89, !238}
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratio<1000000L, 1L>", scope: !8, file: !69, line: 266, size: 8, flags: DIFlagTypePassByValue, elements: !242, templateParams: !245, identifier: "_ZTSSt5ratioILl1000000ELl1EE")
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !241, file: !69, line: 273, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1000000)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !241, file: !69, line: 276, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1)
!245 = !{!246, !152}
!246 = !DITemplateValueParameter(name: "_Num", type: !13, value: i64 1000000)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratio<1000L, 1L>", scope: !8, file: !69, line: 266, size: 8, flags: DIFlagTypePassByValue, elements: !248, templateParams: !251, identifier: "_ZTSSt5ratioILl1000ELl1EE")
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !247, file: !69, line: 273, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1000)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !247, file: !69, line: 276, baseType: !72, flags: DIFlagStaticMember, extraData: i64 1)
!251 = !{!252, !152}
!252 = !DITemplateValueParameter(name: "_Num", type: !13, value: i64 1000)
!253 = !{!0, !254, !260, !267, !272, !277, !282, !284, !286, !291, !293}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !256, line: 48, type: !257, isLocal: false, isDefinition: true)
!256 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable2.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "c37612d0569d22ce12c5504d0df41c75")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !258, line: 27, baseType: !259)
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!259 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !256, line: 53, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 344, elements: !265)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!265 = !{!266}
!266 = !DISubrange(count: 43)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !256, line: 53, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 16, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 2)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !256, line: 11, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 96, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 12)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !256, line: 11, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 48, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 6)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !256, line: 14, type: !274, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !256, line: 17, type: !274, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !256, line: 31, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 120, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 15)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !256, line: 34, type: !288, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !256, line: 37, type: !288, isLocal: true, isDefinition: true)
!295 = !{!296, !314, !317, !322, !330, !338, !342, !349, !353, !357, !359, !361, !365, !375, !379, !385, !391, !393, !397, !401, !405, !409, !422, !424, !428, !432, !436, !438, !444, !448, !452, !454, !456, !460, !468, !472, !476, !480, !482, !488, !490, !497, !502, !506, !510, !514, !518, !522, !524, !526, !530, !534, !538, !540, !544, !548, !550, !552, !556, !562, !567, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !586, !590, !595, !599, !603, !608, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !644, !648, !652, !658, !662, !666, !671, !673, !677, !681, !685, !695, !697, !701, !705, !709, !713, !717, !721, !725, !729, !733, !737, !741, !743, !747, !751, !755, !761, !765, !769, !771, !775, !779, !785, !787, !791, !795, !799, !803, !807, !811, !815, !816, !817, !818, !820, !821, !822, !823, !824, !825, !826, !830, !836, !841, !845, !847, !849, !851, !853, !860, !864, !868, !872, !876, !880, !885, !889, !891, !895, !901, !905, !910, !912, !914, !918, !922, !924, !926, !928, !930, !934, !936, !938, !942, !946, !950, !954, !958, !962, !964, !968, !972, !976, !980, !982, !984, !988, !992, !993, !994, !995, !996, !997, !1005, !1012, !1015, !1016, !1018, !1020, !1022, !1024, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1048, !1052, !1054, !1058, !1062, !1068, !1072, !1074, !1077, !1079, !1081, !1083, !1085, !1088, !1091, !1094, !1097, !1098, !1102, !1107, !1111, !1114, !1117, !1119, !1121, !1123, !1125, !1128, !1131, !1134, !1137, !1140, !1142, !1147, !1148, !1149, !1154, !1158, !1163, !1168, !1172, !1178, !1182, !1184, !1188, !1195, !1200}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !297, file: !313, line: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !298, line: 6, baseType: !299)
!298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !300, line: 21, baseType: !301)
!300 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !302, identifier: "_ZTS11__mbstate_t")
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !301, file: !300, line: 15, baseType: !49, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !301, file: !300, line: 20, baseType: !305, size: 32, offset: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !300, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !306, identifier: "_ZTSN11__mbstate_tUt_E")
!306 = !{!307, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !305, file: !300, line: 18, baseType: !308, size: 32)
!308 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !305, file: !300, line: 19, baseType: !310, size: 32)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 32, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 4)
!313 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !315, file: !313, line: 141)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !316, line: 20, baseType: !308)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !318, file: !313, line: 143)
!318 = !DISubprogram(name: "btowc", scope: !319, file: !319, line: 284, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!320 = !DISubroutineType(types: !321)
!321 = !{!315, !49}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !323, file: !313, line: 144)
!323 = !DISubprogram(name: "fgetwc", scope: !319, file: !319, line: 726, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!315, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !328, line: 5, baseType: !329)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !328, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !331, file: !313, line: 145)
!331 = !DISubprogram(name: "fgetws", scope: !319, file: !319, line: 755, type: !332, flags: DIFlagPrototyped, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !336, !49, !337}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !334)
!337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !326)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !339, file: !313, line: 146)
!339 = !DISubprogram(name: "fputwc", scope: !319, file: !319, line: 740, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!315, !335, !326}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !343, file: !313, line: 147)
!343 = !DISubprogram(name: "fputws", scope: !319, file: !319, line: 762, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!49, !346, !337}
!346 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !350, file: !313, line: 148)
!350 = !DISubprogram(name: "fwide", scope: !319, file: !319, line: 573, type: !351, flags: DIFlagPrototyped, spFlags: 0)
!351 = !DISubroutineType(types: !352)
!352 = !{!49, !326, !49}
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !354, file: !313, line: 149)
!354 = !DISubprogram(name: "fwprintf", scope: !319, file: !319, line: 580, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!355 = !DISubroutineType(types: !356)
!356 = !{!49, !337, !346, null}
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !358, file: !313, line: 150)
!358 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !319, file: !319, line: 640, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !360, file: !313, line: 151)
!360 = !DISubprogram(name: "getwc", scope: !319, file: !319, line: 727, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !362, file: !313, line: 152)
!362 = !DISubprogram(name: "getwchar", scope: !319, file: !319, line: 733, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{!315}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !366, file: !313, line: 153)
!366 = !DISubprogram(name: "mbrlen", scope: !319, file: !319, line: 307, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !371, !369, !373}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !370, line: 46, baseType: !259)
!370 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !376, file: !313, line: 154)
!376 = !DISubprogram(name: "mbrtowc", scope: !319, file: !319, line: 296, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{!369, !336, !371, !369, !373}
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !380, file: !313, line: 155)
!380 = !DISubprogram(name: "mbsinit", scope: !319, file: !319, line: 292, type: !381, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{!49, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !386, file: !313, line: 156)
!386 = !DISubprogram(name: "mbsrtowcs", scope: !319, file: !319, line: 337, type: !387, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{!369, !336, !389, !369, !373}
!389 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !392, file: !313, line: 157)
!392 = !DISubprogram(name: "putwc", scope: !319, file: !319, line: 741, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !394, file: !313, line: 158)
!394 = !DISubprogram(name: "putwchar", scope: !319, file: !319, line: 747, type: !395, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{!315, !335}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !398, file: !313, line: 160)
!398 = !DISubprogram(name: "swprintf", scope: !319, file: !319, line: 590, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!49, !336, !369, !346, null}
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !402, file: !313, line: 162)
!402 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !319, file: !319, line: 647, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{!49, !346, !346, null}
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !406, file: !313, line: 163)
!406 = !DISubprogram(name: "ungetwc", scope: !319, file: !319, line: 770, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!315, !315, !326}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !410, file: !313, line: 164)
!410 = !DISubprogram(name: "vfwprintf", scope: !319, file: !319, line: 598, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!49, !337, !346, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !415, identifier: "_ZTS13__va_list_tag")
!415 = !{!416, !418, !419, !421}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !414, file: !417, baseType: !308, size: 32)
!417 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable2.cpp", directory: "/home/cs22mtech12008")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !414, file: !417, baseType: !308, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !414, file: !417, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !414, file: !417, baseType: !420, size: 64, offset: 128)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !423, file: !313, line: 166)
!423 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !319, file: !319, line: 693, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !425, file: !313, line: 169)
!425 = !DISubprogram(name: "vswprintf", scope: !319, file: !319, line: 611, type: !426, flags: DIFlagPrototyped, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{!49, !336, !369, !346, !413}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !429, file: !313, line: 172)
!429 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !319, file: !319, line: 700, type: !430, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DISubroutineType(types: !431)
!431 = !{!49, !346, !346, !413}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !433, file: !313, line: 174)
!433 = !DISubprogram(name: "vwprintf", scope: !319, file: !319, line: 606, type: !434, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DISubroutineType(types: !435)
!435 = !{!49, !346, !413}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !437, file: !313, line: 176)
!437 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !319, file: !319, line: 697, type: !434, flags: DIFlagPrototyped, spFlags: 0)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !439, file: !313, line: 178)
!439 = !DISubprogram(name: "wcrtomb", scope: !319, file: !319, line: 301, type: !440, flags: DIFlagPrototyped, spFlags: 0)
!440 = !DISubroutineType(types: !441)
!441 = !{!369, !442, !335, !373}
!442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !445, file: !313, line: 179)
!445 = !DISubprogram(name: "wcscat", scope: !319, file: !319, line: 97, type: !446, flags: DIFlagPrototyped, spFlags: 0)
!446 = !DISubroutineType(types: !447)
!447 = !{!334, !336, !346}
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !449, file: !313, line: 180)
!449 = !DISubprogram(name: "wcscmp", scope: !319, file: !319, line: 106, type: !450, flags: DIFlagPrototyped, spFlags: 0)
!450 = !DISubroutineType(types: !451)
!451 = !{!49, !347, !347}
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !453, file: !313, line: 181)
!453 = !DISubprogram(name: "wcscoll", scope: !319, file: !319, line: 131, type: !450, flags: DIFlagPrototyped, spFlags: 0)
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !455, file: !313, line: 182)
!455 = !DISubprogram(name: "wcscpy", scope: !319, file: !319, line: 87, type: !446, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !457, file: !313, line: 183)
!457 = !DISubprogram(name: "wcscspn", scope: !319, file: !319, line: 187, type: !458, flags: DIFlagPrototyped, spFlags: 0)
!458 = !DISubroutineType(types: !459)
!459 = !{!369, !347, !347}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !461, file: !313, line: 184)
!461 = !DISubprogram(name: "wcsftime", scope: !319, file: !319, line: 834, type: !462, flags: DIFlagPrototyped, spFlags: 0)
!462 = !DISubroutineType(types: !463)
!463 = !{!369, !336, !369, !346, !464}
!464 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !319, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !469, file: !313, line: 185)
!469 = !DISubprogram(name: "wcslen", scope: !319, file: !319, line: 222, type: !470, flags: DIFlagPrototyped, spFlags: 0)
!470 = !DISubroutineType(types: !471)
!471 = !{!369, !347}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !473, file: !313, line: 186)
!473 = !DISubprogram(name: "wcsncat", scope: !319, file: !319, line: 101, type: !474, flags: DIFlagPrototyped, spFlags: 0)
!474 = !DISubroutineType(types: !475)
!475 = !{!334, !336, !346, !369}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !477, file: !313, line: 187)
!477 = !DISubprogram(name: "wcsncmp", scope: !319, file: !319, line: 109, type: !478, flags: DIFlagPrototyped, spFlags: 0)
!478 = !DISubroutineType(types: !479)
!479 = !{!49, !347, !347, !369}
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !481, file: !313, line: 188)
!481 = !DISubprogram(name: "wcsncpy", scope: !319, file: !319, line: 92, type: !474, flags: DIFlagPrototyped, spFlags: 0)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !483, file: !313, line: 189)
!483 = !DISubprogram(name: "wcsrtombs", scope: !319, file: !319, line: 343, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{!369, !442, !486, !369, !373}
!486 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !489, file: !313, line: 190)
!489 = !DISubprogram(name: "wcsspn", scope: !319, file: !319, line: 191, type: !458, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !491, file: !313, line: 191)
!491 = !DISubprogram(name: "wcstod", scope: !319, file: !319, line: 377, type: !492, flags: DIFlagPrototyped, spFlags: 0)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !346, !495}
!494 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!495 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !498, file: !313, line: 193)
!498 = !DISubprogram(name: "wcstof", scope: !319, file: !319, line: 382, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !346, !495}
!501 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !503, file: !313, line: 195)
!503 = !DISubprogram(name: "wcstok", scope: !319, file: !319, line: 217, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!334, !336, !346, !495}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !507, file: !313, line: 196)
!507 = !DISubprogram(name: "wcstol", scope: !319, file: !319, line: 428, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{!13, !346, !495, !49}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !511, file: !313, line: 197)
!511 = !DISubprogram(name: "wcstoul", scope: !319, file: !319, line: 433, type: !512, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!259, !346, !495, !49}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !515, file: !313, line: 198)
!515 = !DISubprogram(name: "wcsxfrm", scope: !319, file: !319, line: 135, type: !516, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{!369, !336, !346, !369}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !519, file: !313, line: 199)
!519 = !DISubprogram(name: "wctob", scope: !319, file: !319, line: 288, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DISubroutineType(types: !521)
!521 = !{!49, !315}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !523, file: !313, line: 200)
!523 = !DISubprogram(name: "wmemcmp", scope: !319, file: !319, line: 258, type: !478, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !525, file: !313, line: 201)
!525 = !DISubprogram(name: "wmemcpy", scope: !319, file: !319, line: 262, type: !474, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !527, file: !313, line: 202)
!527 = !DISubprogram(name: "wmemmove", scope: !319, file: !319, line: 267, type: !528, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!334, !334, !347, !369}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !531, file: !313, line: 203)
!531 = !DISubprogram(name: "wmemset", scope: !319, file: !319, line: 271, type: !532, flags: DIFlagPrototyped, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!334, !334, !335, !369}
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !535, file: !313, line: 204)
!535 = !DISubprogram(name: "wprintf", scope: !319, file: !319, line: 587, type: !536, flags: DIFlagPrototyped, spFlags: 0)
!536 = !DISubroutineType(types: !537)
!537 = !{!49, !346, null}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !539, file: !313, line: 205)
!539 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !319, file: !319, line: 644, type: !536, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !541, file: !313, line: 206)
!541 = !DISubprogram(name: "wcschr", scope: !319, file: !319, line: 164, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!334, !347, !335}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !545, file: !313, line: 207)
!545 = !DISubprogram(name: "wcspbrk", scope: !319, file: !319, line: 201, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!334, !347, !347}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !549, file: !313, line: 208)
!549 = !DISubprogram(name: "wcsrchr", scope: !319, file: !319, line: 174, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !551, file: !313, line: 209)
!551 = !DISubprogram(name: "wcsstr", scope: !319, file: !319, line: 212, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !553, file: !313, line: 210)
!553 = !DISubprogram(name: "wmemchr", scope: !319, file: !319, line: 253, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!334, !347, !335, !369}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !558, file: !313, line: 251)
!557 = !DINamespace(name: "__gnu_cxx", scope: null)
!558 = !DISubprogram(name: "wcstold", scope: !319, file: !319, line: 384, type: !559, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !346, !495}
!561 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !563, file: !313, line: 260)
!563 = !DISubprogram(name: "wcstoll", scope: !319, file: !319, line: 441, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{!566, !346, !495, !49}
!566 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !568, file: !313, line: 261)
!568 = !DISubprogram(name: "wcstoull", scope: !319, file: !319, line: 448, type: !569, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{!571, !346, !495, !49}
!571 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !558, file: !313, line: 267)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !563, file: !313, line: 268)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !568, file: !313, line: 269)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !498, file: !313, line: 283)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !423, file: !313, line: 286)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !429, file: !313, line: 289)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !437, file: !313, line: 292)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !558, file: !313, line: 296)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !563, file: !313, line: 297)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !568, file: !313, line: 298)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !583, file: !584, line: 66)
!583 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !585, file: !584, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!584 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!585 = !DINamespace(name: "__exception_ptr", scope: !8)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !585, entity: !587, file: !584, line: 85)
!587 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !8, file: !584, line: 81, type: !588, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !583}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !591, file: !584, line: 243)
!591 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !585, file: !584, line: 230, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !594, !594}
!594 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !583, size: 64)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !596, file: !598, line: 53)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !597, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!597 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!598 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !600, file: !598, line: 54)
!600 = !DISubprogram(name: "setlocale", scope: !597, file: !597, line: 122, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{!443, !49, !372}
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !604, file: !598, line: 55)
!604 = !DISubprogram(name: "localeconv", scope: !597, file: !597, line: 125, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DISubroutineType(types: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !609, file: !613, line: 64)
!609 = !DISubprogram(name: "isalnum", scope: !610, file: !610, line: 108, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!611 = !DISubroutineType(types: !612)
!612 = !{!49, !49}
!613 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !615, file: !613, line: 65)
!615 = !DISubprogram(name: "isalpha", scope: !610, file: !610, line: 109, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !617, file: !613, line: 66)
!617 = !DISubprogram(name: "iscntrl", scope: !610, file: !610, line: 110, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !619, file: !613, line: 67)
!619 = !DISubprogram(name: "isdigit", scope: !610, file: !610, line: 111, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !621, file: !613, line: 68)
!621 = !DISubprogram(name: "isgraph", scope: !610, file: !610, line: 113, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !623, file: !613, line: 69)
!623 = !DISubprogram(name: "islower", scope: !610, file: !610, line: 112, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !625, file: !613, line: 70)
!625 = !DISubprogram(name: "isprint", scope: !610, file: !610, line: 114, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !627, file: !613, line: 71)
!627 = !DISubprogram(name: "ispunct", scope: !610, file: !610, line: 115, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !629, file: !613, line: 72)
!629 = !DISubprogram(name: "isspace", scope: !610, file: !610, line: 116, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !631, file: !613, line: 73)
!631 = !DISubprogram(name: "isupper", scope: !610, file: !610, line: 117, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !633, file: !613, line: 74)
!633 = !DISubprogram(name: "isxdigit", scope: !610, file: !610, line: 118, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !635, file: !613, line: 75)
!635 = !DISubprogram(name: "tolower", scope: !610, file: !610, line: 122, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !637, file: !613, line: 76)
!637 = !DISubprogram(name: "toupper", scope: !610, file: !610, line: 125, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !639, file: !613, line: 87)
!639 = !DISubprogram(name: "isblank", scope: !610, file: !610, line: 130, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !641, entity: !642, file: !643, line: 58)
!641 = !DINamespace(name: "__gnu_debug", scope: null)
!642 = !DINamespace(name: "__debug", scope: !8)
!643 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !645, file: !647, line: 52)
!645 = !DISubprogram(name: "abs", scope: !646, file: !646, line: 840, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!646 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!647 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !649, file: !651, line: 131)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !646, line: 62, baseType: !650)
!650 = !DICompositeType(tag: DW_TAG_structure_type, file: !646, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!651 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !653, file: !651, line: 132)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !646, line: 70, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !646, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !655, identifier: "_ZTS6ldiv_t")
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !654, file: !646, line: 68, baseType: !13, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !654, file: !646, line: 69, baseType: !13, size: 64, offset: 64)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !659, file: !651, line: 134)
!659 = !DISubprogram(name: "abort", scope: !646, file: !646, line: 591, type: !660, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{null}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !663, file: !651, line: 136)
!663 = !DISubprogram(name: "aligned_alloc", scope: !646, file: !646, line: 586, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DISubroutineType(types: !665)
!665 = !{!420, !369, !369}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !667, file: !651, line: 138)
!667 = !DISubprogram(name: "atexit", scope: !646, file: !646, line: 595, type: !668, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DISubroutineType(types: !669)
!669 = !{!49, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !672, file: !651, line: 141)
!672 = !DISubprogram(name: "at_quick_exit", scope: !646, file: !646, line: 600, type: !668, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !674, file: !651, line: 144)
!674 = !DISubprogram(name: "atof", scope: !646, file: !646, line: 101, type: !675, flags: DIFlagPrototyped, spFlags: 0)
!675 = !DISubroutineType(types: !676)
!676 = !{!494, !372}
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !678, file: !651, line: 145)
!678 = !DISubprogram(name: "atoi", scope: !646, file: !646, line: 104, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{!49, !372}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !682, file: !651, line: 146)
!682 = !DISubprogram(name: "atol", scope: !646, file: !646, line: 107, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{!13, !372}
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !686, file: !651, line: 147)
!686 = !DISubprogram(name: "bsearch", scope: !646, file: !646, line: 820, type: !687, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{!420, !689, !689, !369, !369, !691}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !646, line: 808, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!49, !689, !689}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !696, file: !651, line: 148)
!696 = !DISubprogram(name: "calloc", scope: !646, file: !646, line: 542, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !698, file: !651, line: 149)
!698 = !DISubprogram(name: "div", scope: !646, file: !646, line: 852, type: !699, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DISubroutineType(types: !700)
!700 = !{!649, !49, !49}
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !702, file: !651, line: 150)
!702 = !DISubprogram(name: "exit", scope: !646, file: !646, line: 617, type: !703, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !49}
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !706, file: !651, line: 151)
!706 = !DISubprogram(name: "free", scope: !646, file: !646, line: 565, type: !707, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !420}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !710, file: !651, line: 152)
!710 = !DISubprogram(name: "getenv", scope: !646, file: !646, line: 634, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!443, !372}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !714, file: !651, line: 153)
!714 = !DISubprogram(name: "labs", scope: !646, file: !646, line: 841, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!13, !13}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !718, file: !651, line: 154)
!718 = !DISubprogram(name: "ldiv", scope: !646, file: !646, line: 854, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!653, !13, !13}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !722, file: !651, line: 155)
!722 = !DISubprogram(name: "malloc", scope: !646, file: !646, line: 539, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!420, !369}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !726, file: !651, line: 157)
!726 = !DISubprogram(name: "mblen", scope: !646, file: !646, line: 922, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!49, !372, !369}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !730, file: !651, line: 158)
!730 = !DISubprogram(name: "mbstowcs", scope: !646, file: !646, line: 933, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!369, !336, !371, !369}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !734, file: !651, line: 159)
!734 = !DISubprogram(name: "mbtowc", scope: !646, file: !646, line: 925, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!49, !336, !371, !369}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !738, file: !651, line: 161)
!738 = !DISubprogram(name: "qsort", scope: !646, file: !646, line: 830, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !420, !369, !369, !691}
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !742, file: !651, line: 164)
!742 = !DISubprogram(name: "quick_exit", scope: !646, file: !646, line: 623, type: !703, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !744, file: !651, line: 167)
!744 = !DISubprogram(name: "rand", scope: !646, file: !646, line: 453, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!49}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !748, file: !651, line: 168)
!748 = !DISubprogram(name: "realloc", scope: !646, file: !646, line: 550, type: !749, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DISubroutineType(types: !750)
!750 = !{!420, !420, !369}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !752, file: !651, line: 169)
!752 = !DISubprogram(name: "srand", scope: !646, file: !646, line: 455, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !308}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !756, file: !651, line: 170)
!756 = !DISubprogram(name: "strtod", scope: !646, file: !646, line: 117, type: !757, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DISubroutineType(types: !758)
!758 = !{!494, !371, !759}
!759 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !762, file: !651, line: 171)
!762 = !DISubprogram(name: "strtol", scope: !646, file: !646, line: 176, type: !763, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DISubroutineType(types: !764)
!764 = !{!13, !371, !759, !49}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !766, file: !651, line: 172)
!766 = !DISubprogram(name: "strtoul", scope: !646, file: !646, line: 180, type: !767, flags: DIFlagPrototyped, spFlags: 0)
!767 = !DISubroutineType(types: !768)
!768 = !{!259, !371, !759, !49}
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !770, file: !651, line: 173)
!770 = !DISubprogram(name: "system", scope: !646, file: !646, line: 784, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !772, file: !651, line: 175)
!772 = !DISubprogram(name: "wcstombs", scope: !646, file: !646, line: 936, type: !773, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DISubroutineType(types: !774)
!774 = !{!369, !442, !346, !369}
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !776, file: !651, line: 176)
!776 = !DISubprogram(name: "wctomb", scope: !646, file: !646, line: 929, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DISubroutineType(types: !778)
!778 = !{!49, !443, !335}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !780, file: !651, line: 204)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !646, line: 80, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !646, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !782, identifier: "_ZTS7lldiv_t")
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !781, file: !646, line: 78, baseType: !566, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !781, file: !646, line: 79, baseType: !566, size: 64, offset: 64)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !786, file: !651, line: 210)
!786 = !DISubprogram(name: "_Exit", scope: !646, file: !646, line: 629, type: !703, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !788, file: !651, line: 214)
!788 = !DISubprogram(name: "llabs", scope: !646, file: !646, line: 844, type: !789, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DISubroutineType(types: !790)
!790 = !{!566, !566}
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !792, file: !651, line: 220)
!792 = !DISubprogram(name: "lldiv", scope: !646, file: !646, line: 858, type: !793, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DISubroutineType(types: !794)
!794 = !{!780, !566, !566}
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !796, file: !651, line: 231)
!796 = !DISubprogram(name: "atoll", scope: !646, file: !646, line: 112, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!566, !372}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !800, file: !651, line: 232)
!800 = !DISubprogram(name: "strtoll", scope: !646, file: !646, line: 200, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!566, !371, !759, !49}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !804, file: !651, line: 233)
!804 = !DISubprogram(name: "strtoull", scope: !646, file: !646, line: 205, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!571, !371, !759, !49}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !808, file: !651, line: 235)
!808 = !DISubprogram(name: "strtof", scope: !646, file: !646, line: 123, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{!501, !371, !759}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !812, file: !651, line: 236)
!812 = !DISubprogram(name: "strtold", scope: !646, file: !646, line: 126, type: !813, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DISubroutineType(types: !814)
!814 = !{!561, !371, !759}
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !780, file: !651, line: 244)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !786, file: !651, line: 246)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !788, file: !651, line: 248)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !819, file: !651, line: 249)
!819 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !557, file: !651, line: 217, type: !793, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !792, file: !651, line: 250)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !796, file: !651, line: 252)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !808, file: !651, line: 253)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !800, file: !651, line: 254)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !804, file: !651, line: 255)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !812, file: !651, line: 256)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !827, file: !829, line: 98)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !828, line: 7, baseType: !329)
!828 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!829 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !831, file: !829, line: 99)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !832, line: 84, baseType: !833)
!832 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !834, line: 14, baseType: !835)
!834 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !834, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !837, file: !829, line: 101)
!837 = !DISubprogram(name: "clearerr", scope: !832, file: !832, line: 757, type: !838, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !842, file: !829, line: 102)
!842 = !DISubprogram(name: "fclose", scope: !832, file: !832, line: 213, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!843 = !DISubroutineType(types: !844)
!844 = !{!49, !840}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !846, file: !829, line: 103)
!846 = !DISubprogram(name: "feof", scope: !832, file: !832, line: 759, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !848, file: !829, line: 104)
!848 = !DISubprogram(name: "ferror", scope: !832, file: !832, line: 761, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !850, file: !829, line: 105)
!850 = !DISubprogram(name: "fflush", scope: !832, file: !832, line: 218, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !852, file: !829, line: 106)
!852 = !DISubprogram(name: "fgetc", scope: !832, file: !832, line: 485, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !854, file: !829, line: 107)
!854 = !DISubprogram(name: "fgetpos", scope: !832, file: !832, line: 731, type: !855, flags: DIFlagPrototyped, spFlags: 0)
!855 = !DISubroutineType(types: !856)
!856 = !{!49, !857, !858}
!857 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !840)
!858 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !861, file: !829, line: 108)
!861 = !DISubprogram(name: "fgets", scope: !832, file: !832, line: 564, type: !862, flags: DIFlagPrototyped, spFlags: 0)
!862 = !DISubroutineType(types: !863)
!863 = !{!443, !442, !49, !857}
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !865, file: !829, line: 109)
!865 = !DISubprogram(name: "fopen", scope: !832, file: !832, line: 246, type: !866, flags: DIFlagPrototyped, spFlags: 0)
!866 = !DISubroutineType(types: !867)
!867 = !{!840, !371, !371}
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !869, file: !829, line: 110)
!869 = !DISubprogram(name: "fprintf", scope: !832, file: !832, line: 326, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!870 = !DISubroutineType(types: !871)
!871 = !{!49, !857, !371, null}
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !873, file: !829, line: 111)
!873 = !DISubprogram(name: "fputc", scope: !832, file: !832, line: 521, type: !874, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DISubroutineType(types: !875)
!875 = !{!49, !49, !840}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !877, file: !829, line: 112)
!877 = !DISubprogram(name: "fputs", scope: !832, file: !832, line: 626, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DISubroutineType(types: !879)
!879 = !{!49, !371, !857}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !881, file: !829, line: 113)
!881 = !DISubprogram(name: "fread", scope: !832, file: !832, line: 646, type: !882, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{!369, !884, !369, !369, !857}
!884 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !420)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !886, file: !829, line: 114)
!886 = !DISubprogram(name: "freopen", scope: !832, file: !832, line: 252, type: !887, flags: DIFlagPrototyped, spFlags: 0)
!887 = !DISubroutineType(types: !888)
!888 = !{!840, !371, !371, !857}
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !890, file: !829, line: 115)
!890 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !832, file: !832, line: 407, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !892, file: !829, line: 116)
!892 = !DISubprogram(name: "fseek", scope: !832, file: !832, line: 684, type: !893, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DISubroutineType(types: !894)
!894 = !{!49, !840, !13, !49}
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !896, file: !829, line: 117)
!896 = !DISubprogram(name: "fsetpos", scope: !832, file: !832, line: 736, type: !897, flags: DIFlagPrototyped, spFlags: 0)
!897 = !DISubroutineType(types: !898)
!898 = !{!49, !840, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !902, file: !829, line: 118)
!902 = !DISubprogram(name: "ftell", scope: !832, file: !832, line: 689, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!13, !840}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !906, file: !829, line: 119)
!906 = !DISubprogram(name: "fwrite", scope: !832, file: !832, line: 652, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!369, !909, !369, !369, !857}
!909 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !689)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !911, file: !829, line: 120)
!911 = !DISubprogram(name: "getc", scope: !832, file: !832, line: 486, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !913, file: !829, line: 121)
!913 = !DISubprogram(name: "getchar", scope: !832, file: !832, line: 492, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !915, file: !829, line: 126)
!915 = !DISubprogram(name: "perror", scope: !832, file: !832, line: 775, type: !916, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !372}
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !919, file: !829, line: 127)
!919 = !DISubprogram(name: "printf", scope: !832, file: !832, line: 332, type: !920, flags: DIFlagPrototyped, spFlags: 0)
!920 = !DISubroutineType(types: !921)
!921 = !{!49, !371, null}
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !923, file: !829, line: 128)
!923 = !DISubprogram(name: "putc", scope: !832, file: !832, line: 522, type: !874, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !925, file: !829, line: 129)
!925 = !DISubprogram(name: "putchar", scope: !832, file: !832, line: 528, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !927, file: !829, line: 130)
!927 = !DISubprogram(name: "puts", scope: !832, file: !832, line: 632, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !929, file: !829, line: 131)
!929 = !DISubprogram(name: "remove", scope: !832, file: !832, line: 146, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !931, file: !829, line: 132)
!931 = !DISubprogram(name: "rename", scope: !832, file: !832, line: 148, type: !932, flags: DIFlagPrototyped, spFlags: 0)
!932 = !DISubroutineType(types: !933)
!933 = !{!49, !372, !372}
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !935, file: !829, line: 133)
!935 = !DISubprogram(name: "rewind", scope: !832, file: !832, line: 694, type: !838, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !937, file: !829, line: 134)
!937 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !832, file: !832, line: 410, type: !920, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !939, file: !829, line: 135)
!939 = !DISubprogram(name: "setbuf", scope: !832, file: !832, line: 304, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !857, !442}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !943, file: !829, line: 136)
!943 = !DISubprogram(name: "setvbuf", scope: !832, file: !832, line: 308, type: !944, flags: DIFlagPrototyped, spFlags: 0)
!944 = !DISubroutineType(types: !945)
!945 = !{!49, !857, !442, !49, !369}
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !947, file: !829, line: 137)
!947 = !DISubprogram(name: "sprintf", scope: !832, file: !832, line: 334, type: !948, flags: DIFlagPrototyped, spFlags: 0)
!948 = !DISubroutineType(types: !949)
!949 = !{!49, !442, !371, null}
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !951, file: !829, line: 138)
!951 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !832, file: !832, line: 412, type: !952, flags: DIFlagPrototyped, spFlags: 0)
!952 = !DISubroutineType(types: !953)
!953 = !{!49, !371, !371, null}
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !955, file: !829, line: 139)
!955 = !DISubprogram(name: "tmpfile", scope: !832, file: !832, line: 173, type: !956, flags: DIFlagPrototyped, spFlags: 0)
!956 = !DISubroutineType(types: !957)
!957 = !{!840}
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !959, file: !829, line: 141)
!959 = !DISubprogram(name: "tmpnam", scope: !832, file: !832, line: 187, type: !960, flags: DIFlagPrototyped, spFlags: 0)
!960 = !DISubroutineType(types: !961)
!961 = !{!443, !443}
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !963, file: !829, line: 143)
!963 = !DISubprogram(name: "ungetc", scope: !832, file: !832, line: 639, type: !874, flags: DIFlagPrototyped, spFlags: 0)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !965, file: !829, line: 144)
!965 = !DISubprogram(name: "vfprintf", scope: !832, file: !832, line: 341, type: !966, flags: DIFlagPrototyped, spFlags: 0)
!966 = !DISubroutineType(types: !967)
!967 = !{!49, !857, !371, !413}
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !969, file: !829, line: 145)
!969 = !DISubprogram(name: "vprintf", scope: !832, file: !832, line: 347, type: !970, flags: DIFlagPrototyped, spFlags: 0)
!970 = !DISubroutineType(types: !971)
!971 = !{!49, !371, !413}
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !973, file: !829, line: 146)
!973 = !DISubprogram(name: "vsprintf", scope: !832, file: !832, line: 349, type: !974, flags: DIFlagPrototyped, spFlags: 0)
!974 = !DISubroutineType(types: !975)
!975 = !{!49, !442, !371, !413}
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !977, file: !829, line: 175)
!977 = !DISubprogram(name: "snprintf", scope: !832, file: !832, line: 354, type: !978, flags: DIFlagPrototyped, spFlags: 0)
!978 = !DISubroutineType(types: !979)
!979 = !{!49, !442, !369, !371, null}
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !981, file: !829, line: 176)
!981 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !832, file: !832, line: 451, type: !966, flags: DIFlagPrototyped, spFlags: 0)
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !983, file: !829, line: 177)
!983 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !832, file: !832, line: 456, type: !970, flags: DIFlagPrototyped, spFlags: 0)
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !985, file: !829, line: 178)
!985 = !DISubprogram(name: "vsnprintf", scope: !832, file: !832, line: 358, type: !986, flags: DIFlagPrototyped, spFlags: 0)
!986 = !DISubroutineType(types: !987)
!987 = !{!49, !442, !369, !371, !413}
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !557, entity: !989, file: !829, line: 179)
!989 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !832, file: !832, line: 459, type: !990, flags: DIFlagPrototyped, spFlags: 0)
!990 = !DISubroutineType(types: !991)
!991 = !{!49, !371, !371, !413}
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !977, file: !829, line: 185)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !981, file: !829, line: 186)
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !983, file: !829, line: 187)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !985, file: !829, line: 188)
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !989, file: !829, line: 189)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !998, file: !1004, line: 58)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !999, line: 24, baseType: !1000)
!999 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !999, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !1001, identifier: "_ZTS11max_align_t")
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !1000, file: !999, line: 20, baseType: !566, size: 64, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !1000, file: !999, line: 22, baseType: !561, size: 128, align: 128, offset: 128)
!1004 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1006, file: !1011, line: 82)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1007, line: 48, baseType: !1008)
!1007 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 41, baseType: !49)
!1011 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1013, file: !1011, line: 83)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1014, line: 38, baseType: !259)
!1014 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !315, file: !1011, line: 84)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1017, file: !1011, line: 86)
!1017 = !DISubprogram(name: "iswalnum", scope: !1014, file: !1014, line: 95, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1019, file: !1011, line: 87)
!1019 = !DISubprogram(name: "iswalpha", scope: !1014, file: !1014, line: 101, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1021, file: !1011, line: 89)
!1021 = !DISubprogram(name: "iswblank", scope: !1014, file: !1014, line: 146, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1023, file: !1011, line: 91)
!1023 = !DISubprogram(name: "iswcntrl", scope: !1014, file: !1014, line: 104, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1025, file: !1011, line: 92)
!1025 = !DISubprogram(name: "iswctype", scope: !1014, file: !1014, line: 159, type: !1026, flags: DIFlagPrototyped, spFlags: 0)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!49, !315, !1013}
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1029, file: !1011, line: 93)
!1029 = !DISubprogram(name: "iswdigit", scope: !1014, file: !1014, line: 108, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1031, file: !1011, line: 94)
!1031 = !DISubprogram(name: "iswgraph", scope: !1014, file: !1014, line: 112, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1033, file: !1011, line: 95)
!1033 = !DISubprogram(name: "iswlower", scope: !1014, file: !1014, line: 117, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1035, file: !1011, line: 96)
!1035 = !DISubprogram(name: "iswprint", scope: !1014, file: !1014, line: 120, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1037, file: !1011, line: 97)
!1037 = !DISubprogram(name: "iswpunct", scope: !1014, file: !1014, line: 125, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1039, file: !1011, line: 98)
!1039 = !DISubprogram(name: "iswspace", scope: !1014, file: !1014, line: 130, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1041, file: !1011, line: 99)
!1041 = !DISubprogram(name: "iswupper", scope: !1014, file: !1014, line: 135, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1043, file: !1011, line: 100)
!1043 = !DISubprogram(name: "iswxdigit", scope: !1014, file: !1014, line: 140, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1045, file: !1011, line: 101)
!1045 = !DISubprogram(name: "towctrans", scope: !1007, file: !1007, line: 55, type: !1046, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!315, !315, !1006}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1049, file: !1011, line: 102)
!1049 = !DISubprogram(name: "towlower", scope: !1014, file: !1014, line: 166, type: !1050, flags: DIFlagPrototyped, spFlags: 0)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!315, !315}
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1053, file: !1011, line: 103)
!1053 = !DISubprogram(name: "towupper", scope: !1014, file: !1014, line: 169, type: !1050, flags: DIFlagPrototyped, spFlags: 0)
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1055, file: !1011, line: 104)
!1055 = !DISubprogram(name: "wctrans", scope: !1007, file: !1007, line: 52, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!1006, !372}
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1059, file: !1011, line: 105)
!1059 = !DISubprogram(name: "wctype", scope: !1014, file: !1014, line: 155, type: !1060, flags: DIFlagPrototyped, spFlags: 0)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!1013, !372}
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1063, file: !1067, line: 51)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1064, line: 24, baseType: !1065)
!1064 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !20, line: 37, baseType: !1066)
!1066 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1067 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdint", directory: "")
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1069, file: !1067, line: 52)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1064, line: 25, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !20, line: 39, baseType: !1071)
!1071 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1073, file: !1067, line: 53)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1064, line: 26, baseType: !1010)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1075, file: !1067, line: 54)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1064, line: 27, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !20, line: 44, baseType: !13)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1078, file: !1067, line: 56)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !18, line: 58, baseType: !1066)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1080, file: !1067, line: 57)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !18, line: 60, baseType: !13)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1082, file: !1067, line: 58)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !18, line: 61, baseType: !13)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1084, file: !1067, line: 59)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !18, line: 62, baseType: !13)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1086, file: !1067, line: 61)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !18, line: 43, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !20, line: 52, baseType: !1065)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1089, file: !1067, line: 62)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !18, line: 44, baseType: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !20, line: 54, baseType: !1070)
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1092, file: !1067, line: 63)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !18, line: 45, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !20, line: 56, baseType: !1010)
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1095, file: !1067, line: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !18, line: 46, baseType: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !20, line: 58, baseType: !1076)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !17, file: !1067, line: 66)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1099, file: !1067, line: 67)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1100, line: 267, baseType: !1101)
!1100 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !20, line: 206, baseType: !13)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1103, file: !1067, line: 69)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1104, line: 24, baseType: !1105)
!1104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !20, line: 38, baseType: !1106)
!1106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1108, file: !1067, line: 70)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1104, line: 25, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !20, line: 40, baseType: !1110)
!1110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1112, file: !1067, line: 71)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1104, line: 26, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 42, baseType: !308)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1115, file: !1067, line: 72)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1104, line: 27, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !20, line: 45, baseType: !259)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1118, file: !1067, line: 74)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !18, line: 71, baseType: !1106)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1120, file: !1067, line: 75)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !18, line: 73, baseType: !259)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1122, file: !1067, line: 76)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !18, line: 74, baseType: !259)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1124, file: !1067, line: 77)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !18, line: 75, baseType: !259)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1126, file: !1067, line: 79)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !18, line: 49, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !20, line: 53, baseType: !1105)
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1129, file: !1067, line: 80)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !18, line: 50, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !20, line: 55, baseType: !1109)
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1132, file: !1067, line: 81)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !18, line: 51, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !20, line: 57, baseType: !1113)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1135, file: !1067, line: 82)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !18, line: 52, baseType: !1136)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !20, line: 59, baseType: !1116)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1138, file: !1067, line: 84)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !18, line: 102, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !20, line: 73, baseType: !259)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1141, file: !1067, line: 85)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 90, baseType: !259)
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1143, file: !1146, line: 60)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1144, line: 7, baseType: !1145)
!1144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !20, line: 156, baseType: !13)
!1146 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ctime", directory: "")
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !77, file: !1146, line: 61)
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !467, file: !1146, line: 62)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1150, file: !1146, line: 64)
!1150 = !DISubprogram(name: "clock", scope: !1151, file: !1151, line: 72, type: !1152, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!1143}
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1155, file: !1146, line: 65)
!1155 = !DISubprogram(name: "difftime", scope: !1151, file: !1151, line: 78, type: !1156, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!494, !77, !77}
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1159, file: !1146, line: 66)
!1159 = !DISubprogram(name: "mktime", scope: !1151, file: !1151, line: 82, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!77, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1164, file: !1146, line: 67)
!1164 = !DISubprogram(name: "time", scope: !1151, file: !1151, line: 75, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!77, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1169, file: !1146, line: 68)
!1169 = !DISubprogram(name: "asctime", scope: !1151, file: !1151, line: 139, type: !1170, flags: DIFlagPrototyped, spFlags: 0)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!443, !465}
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1173, file: !1146, line: 69)
!1173 = !DISubprogram(name: "ctime", scope: !1151, file: !1151, line: 142, type: !1174, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!443, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1179, file: !1146, line: 70)
!1179 = !DISubprogram(name: "gmtime", scope: !1151, file: !1151, line: 119, type: !1180, flags: DIFlagPrototyped, spFlags: 0)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1162, !1176}
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1183, file: !1146, line: 71)
!1183 = !DISubprogram(name: "localtime", scope: !1151, file: !1151, line: 123, type: !1180, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1185, file: !1146, line: 72)
!1185 = !DISubprogram(name: "strftime", scope: !1151, file: !1151, line: 88, type: !1186, flags: DIFlagPrototyped, spFlags: 0)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!369, !442, !369, !371, !464}
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1189, file: !1146, line: 79)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1190, line: 10, size: 128, flags: DIFlagTypePassByValue, elements: !1191, identifier: "_ZTS8timespec")
!1190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1189, file: !1190, line: 12, baseType: !79, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1189, file: !1190, line: 16, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !20, line: 196, baseType: !13)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1196, file: !1146, line: 80)
!1196 = !DISubprogram(name: "timespec_get", scope: !1151, file: !1151, line: 257, type: !1197, flags: DIFlagPrototyped, spFlags: 0)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!49, !1199, !49}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1200 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !7, entity: !1201, file: !6, line: 1447)
!1201 = !DINamespace(name: "chrono_literals", scope: !1202, exportSymbols: true)
!1202 = !DINamespace(name: "literals", scope: !8, exportSymbols: true)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Base", file: !256, line: 7, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1205, vtableHolder: !1204, identifier: "_ZTS4Base")
!1205 = !{!1206, !1209, !1210, !1214, !1215, !1216, !1217}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Base", scope: !256, file: !256, baseType: !1207, size: 64, flags: DIFlagArtificial)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !745, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1204, file: !256, line: 9, baseType: !49, size: 32, offset: 64, flags: DIFlagPublic)
!1210 = !DISubprogram(name: "func1", linkageName: "_ZN4Base5func1Ev", scope: !1204, file: !256, line: 10, type: !1211, scopeLine: 10, containingType: !1204, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !1213}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1214 = !DISubprogram(name: "func2", linkageName: "_ZN4Base5func2Ev", scope: !1204, file: !256, line: 13, type: !1211, scopeLine: 13, containingType: !1204, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1215 = !DISubprogram(name: "func3", linkageName: "_ZN4Base5func3Ev", scope: !1204, file: !256, line: 16, type: !1211, scopeLine: 16, containingType: !1204, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1216 = !DISubprogram(name: "func4", linkageName: "_ZN4Base5func4Ev", scope: !1204, file: !256, line: 19, type: !1211, scopeLine: 19, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1217 = !DISubprogram(name: "func5", linkageName: "_ZN4Base5func5Ev", scope: !1204, file: !256, line: 22, type: !1211, scopeLine: 22, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1218 = !{i32 7, !"Dwarf Version", i32 5}
!1219 = !{i32 2, !"Debug Info Version", i32 3}
!1220 = !{i32 1, !"wchar_size", i32 4}
!1221 = !{i32 8, !"PIC Level", i32 2}
!1222 = !{i32 7, !"PIE Level", i32 2}
!1223 = !{i32 7, !"uwtable", i32 2}
!1224 = !{i32 7, !"frame-pointer", i32 2}
!1225 = !{!"clang version 16.0.0"}
!1226 = distinct !DISubprogram(name: "threadFunc", linkageName: "_Z10threadFuncPv", scope: !256, file: !256, line: 50, type: !1227, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !85)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!420, !420}
!1229 = !DILocalVariable(name: "arg", arg: 1, scope: !1226, file: !256, line: 50, type: !420)
!1230 = !DILocation(line: 50, column: 24, scope: !1226)
!1231 = !DILocation(line: 51, column: 59, scope: !1226)
!1232 = !DILocation(line: 51, column: 33, scope: !1226)
!1233 = !DILocation(line: 51, column: 5, scope: !1226)
!1234 = !DILocation(line: 52, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1226, file: !256, line: 52, column: 9)
!1236 = !DILocation(line: 52, column: 9, scope: !1226)
!1237 = !DILocation(line: 53, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !256, line: 52, column: 18)
!1239 = !DILocation(line: 53, column: 66, scope: !1238)
!1240 = !DILocation(line: 54, column: 9, scope: !1238)
!1241 = !DILocation(line: 54, column: 18, scope: !1238)
!1242 = !DILocation(line: 55, column: 5, scope: !1238)
!1243 = !DILocation(line: 56, column: 5, scope: !1226)
!1244 = distinct !DISubprogram(name: "sleep_for<long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE", scope: !1246, file: !1245, line: 68, type: !1247, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !65, retainedNodes: !85)
!1245 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/this_thread_sleep.h", directory: "")
!1246 = !DINamespace(name: "this_thread", scope: !8)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !28}
!1249 = !DILocalVariable(name: "__rtime", arg: 1, scope: !1244, file: !1245, line: 68, type: !28)
!1250 = !DILocation(line: 68, column: 56, scope: !1244)
!1251 = !DILocation(line: 70, column: 6, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1244, file: !1245, line: 70, column: 6)
!1253 = !DILocation(line: 70, column: 17, scope: !1252)
!1254 = !DILocation(line: 70, column: 14, scope: !1252)
!1255 = !DILocation(line: 70, column: 6, scope: !1244)
!1256 = !DILocation(line: 71, column: 4, scope: !1252)
!1257 = !DILocalVariable(name: "__s", scope: !1244, file: !1245, line: 72, type: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_is_duration<std::chrono::duration<long> >", scope: !7, file: !6, line: 240, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1260, file: !218, line: 112, baseType: !97)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, std::chrono::duration<long, std::ratio<1L, 1L> > >", scope: !8, file: !218, line: 111, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !1261, identifier: "_ZTSSt9enable_ifILb1ENSt6chrono8durationIlSt5ratioILl1ELl1EEEEE")
!1261 = !{!1262, !1263}
!1262 = !DITemplateValueParameter(type: !84, value: i1 true)
!1263 = !DITemplateTypeParameter(name: "_Tp", type: !97)
!1264 = !DILocation(line: 72, column: 7, scope: !1244)
!1265 = !DILocation(line: 72, column: 52, scope: !1244)
!1266 = !DILocation(line: 72, column: 13, scope: !1244)
!1267 = !DILocalVariable(name: "__ns", scope: !1244, file: !1245, line: 73, type: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_is_duration<std::chrono::duration<long, std::ratio<1L, 1000000000L> > >", scope: !7, file: !6, line: 240, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1270, file: !218, line: 112, baseType: !153)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, std::chrono::duration<long, std::ratio<1L, 1000000000L> > >", scope: !8, file: !218, line: 111, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !1271, identifier: "_ZTSSt9enable_ifILb1ENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE")
!1271 = !{!1262, !1272}
!1272 = !DITemplateTypeParameter(name: "_Tp", type: !153)
!1273 = !DILocation(line: 73, column: 7, scope: !1244)
!1274 = !DILocation(line: 73, column: 57, scope: !1244)
!1275 = !DILocation(line: 73, column: 65, scope: !1244)
!1276 = !DILocation(line: 73, column: 14, scope: !1244)
!1277 = !DILocalVariable(name: "__ts", scope: !1244, file: !1245, line: 75, type: !1189)
!1278 = !DILocation(line: 75, column: 20, scope: !1244)
!1279 = !DILocation(line: 76, column: 4, scope: !1244)
!1280 = !DILocation(line: 77, column: 35, scope: !1244)
!1281 = !DILocation(line: 78, column: 29, scope: !1244)
!1282 = !DILocation(line: 80, column: 2, scope: !1244)
!1283 = !DILocation(line: 80, column: 9, scope: !1244)
!1284 = !DILocation(line: 80, column: 35, scope: !1244)
!1285 = !DILocation(line: 80, column: 41, scope: !1244)
!1286 = !DILocation(line: 80, column: 44, scope: !1244)
!1287 = !DILocation(line: 80, column: 50, scope: !1244)
!1288 = !DILocation(line: 0, scope: !1244)
!1289 = distinct !{!1289, !1282, !1290, !1291}
!1290 = !DILocation(line: 81, column: 6, scope: !1244)
!1291 = !{!"llvm.loop.mustprogress"}
!1292 = !DILocation(line: 85, column: 7, scope: !1244)
!1293 = distinct !DISubprogram(name: "duration<int, void>", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IivEERKT_", scope: !9, file: !6, line: 584, type: !1294, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1299, declaration: !1298, retainedNodes: !85)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !24, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!1298 = !DISubprogram(name: "duration<int, void>", scope: !9, file: !6, line: 584, type: !1294, scopeLine: 584, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1299)
!1299 = !{!1300, !1301}
!1300 = !DITemplateTypeParameter(name: "_Rep2", type: !49)
!1301 = !DITemplateTypeParameter(type: null)
!1302 = !DILocalVariable(name: "this", arg: 1, scope: !1293, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!1304 = !DILocation(line: 0, scope: !1293)
!1305 = !DILocalVariable(name: "__rep", arg: 2, scope: !1293, file: !6, line: 584, type: !1296)
!1306 = !DILocation(line: 584, column: 45, scope: !1293)
!1307 = !DILocation(line: 585, column: 6, scope: !1293)
!1308 = !DILocation(line: 585, column: 27, scope: !1293)
!1309 = !DILocation(line: 585, column: 37, scope: !1293)
!1310 = distinct !DISubprogram(name: "startThread", linkageName: "_Z11startThreadv", scope: !256, file: !256, line: 59, type: !660, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !85)
!1311 = !DILocalVariable(name: "DerivedObj", scope: !1310, file: !256, line: 60, type: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Derived", file: !256, line: 27, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1313, vtableHolder: !1204, identifier: "_ZTS7Derived")
!1313 = !{!1314, !1315, !1316, !1320, !1321, !1322, !1323}
!1314 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1312, baseType: !1204, flags: DIFlagPublic, extraData: i32 0)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1312, file: !256, line: 29, baseType: !49, size: 32, offset: 96, flags: DIFlagPublic)
!1316 = !DISubprogram(name: "func1", linkageName: "_ZN7Derived5func1Ev", scope: !1312, file: !256, line: 30, type: !1317, scopeLine: 30, containingType: !1312, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1320 = !DISubprogram(name: "func2", linkageName: "_ZN7Derived5func2Ev", scope: !1312, file: !256, line: 33, type: !1317, scopeLine: 33, containingType: !1312, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1321 = !DISubprogram(name: "func3", linkageName: "_ZN7Derived5func3Ev", scope: !1312, file: !256, line: 36, type: !1317, scopeLine: 36, containingType: !1312, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1322 = !DISubprogram(name: "func4", linkageName: "_ZN7Derived5func4Ev", scope: !1312, file: !256, line: 39, type: !1317, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1323 = !DISubprogram(name: "func5", linkageName: "_ZN7Derived5func5Ev", scope: !1312, file: !256, line: 42, type: !1317, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1324 = !DILocation(line: 60, column: 13, scope: !1310)
!1325 = !DILocation(line: 61, column: 13, scope: !1310)
!1326 = !DILocation(line: 62, column: 5, scope: !1310)
!1327 = !DILocation(line: 64, column: 1, scope: !1310)
!1328 = distinct !DISubprogram(name: "Derived", linkageName: "_ZN7DerivedC2Ev", scope: !1312, file: !256, line: 27, type: !1317, scopeLine: 27, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1329, retainedNodes: !85)
!1329 = !DISubprogram(name: "Derived", scope: !1312, type: !1317, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1330 = !DILocalVariable(name: "this", arg: 1, scope: !1328, type: !1331, flags: DIFlagArtificial | DIFlagObjectPointer)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1332 = !DILocation(line: 0, scope: !1328)
!1333 = !DILocation(line: 27, column: 7, scope: !1328)
!1334 = !DILocation(line: 29, column: 5, scope: !1328)
!1335 = distinct !DISubprogram(name: "main", scope: !256, file: !256, line: 66, type: !745, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !85)
!1336 = !DILocation(line: 68, column: 5, scope: !1335)
!1337 = !DILocation(line: 69, column: 18, scope: !1335)
!1338 = !DILocation(line: 69, column: 5, scope: !1335)
!1339 = !DILocation(line: 70, column: 5, scope: !1335)
!1340 = distinct !DISubprogram(name: "Base", linkageName: "_ZN4BaseC2Ev", scope: !1204, file: !256, line: 7, type: !1211, scopeLine: 7, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1341, retainedNodes: !85)
!1341 = !DISubprogram(name: "Base", scope: !1204, type: !1211, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1342 = !DILocalVariable(name: "this", arg: 1, scope: !1340, type: !1203, flags: DIFlagArtificial | DIFlagObjectPointer)
!1343 = !DILocation(line: 0, scope: !1340)
!1344 = !DILocation(line: 7, column: 7, scope: !1340)
!1345 = !DILocation(line: 9, column: 5, scope: !1340)
!1346 = distinct !DISubprogram(name: "func1", linkageName: "_ZN7Derived5func1Ev", scope: !1312, file: !256, line: 30, type: !1317, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1316, retainedNodes: !85)
!1347 = !DILocalVariable(name: "this", arg: 1, scope: !1346, type: !1331, flags: DIFlagArtificial | DIFlagObjectPointer)
!1348 = !DILocation(line: 0, scope: !1346)
!1349 = !DILocation(line: 31, column: 19, scope: !1346)
!1350 = !DILocation(line: 31, column: 39, scope: !1346)
!1351 = !DILocation(line: 31, column: 50, scope: !1346)
!1352 = !DILocation(line: 31, column: 48, scope: !1346)
!1353 = !DILocation(line: 31, column: 51, scope: !1346)
!1354 = !DILocation(line: 32, column: 5, scope: !1346)
!1355 = distinct !DISubprogram(name: "func2", linkageName: "_ZN7Derived5func2Ev", scope: !1312, file: !256, line: 33, type: !1317, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1320, retainedNodes: !85)
!1356 = !DILocalVariable(name: "this", arg: 1, scope: !1355, type: !1331, flags: DIFlagArtificial | DIFlagObjectPointer)
!1357 = !DILocation(line: 0, scope: !1355)
!1358 = !DILocation(line: 34, column: 19, scope: !1355)
!1359 = !DILocation(line: 34, column: 39, scope: !1355)
!1360 = !DILocation(line: 34, column: 51, scope: !1355)
!1361 = !DILocation(line: 34, column: 49, scope: !1355)
!1362 = !DILocation(line: 34, column: 52, scope: !1355)
!1363 = !DILocation(line: 35, column: 5, scope: !1355)
!1364 = distinct !DISubprogram(name: "func3", linkageName: "_ZN7Derived5func3Ev", scope: !1312, file: !256, line: 36, type: !1317, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1321, retainedNodes: !85)
!1365 = !DILocalVariable(name: "this", arg: 1, scope: !1364, type: !1331, flags: DIFlagArtificial | DIFlagObjectPointer)
!1366 = !DILocation(line: 0, scope: !1364)
!1367 = !DILocation(line: 37, column: 19, scope: !1364)
!1368 = !DILocation(line: 37, column: 39, scope: !1364)
!1369 = !DILocation(line: 37, column: 51, scope: !1364)
!1370 = !DILocation(line: 37, column: 49, scope: !1364)
!1371 = !DILocation(line: 37, column: 52, scope: !1364)
!1372 = !DILocation(line: 38, column: 5, scope: !1364)
!1373 = distinct !DISubprogram(name: "func1", linkageName: "_ZN4Base5func1Ev", scope: !1204, file: !256, line: 10, type: !1211, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1210, retainedNodes: !85)
!1374 = !DILocalVariable(name: "this", arg: 1, scope: !1373, type: !1203, flags: DIFlagArtificial | DIFlagObjectPointer)
!1375 = !DILocation(line: 0, scope: !1373)
!1376 = !DILocation(line: 11, column: 19, scope: !1373)
!1377 = !DILocation(line: 11, column: 36, scope: !1373)
!1378 = !DILocation(line: 11, column: 48, scope: !1373)
!1379 = !DILocation(line: 11, column: 46, scope: !1373)
!1380 = !DILocation(line: 11, column: 50, scope: !1373)
!1381 = !DILocation(line: 12, column: 5, scope: !1373)
!1382 = distinct !DISubprogram(name: "func2", linkageName: "_ZN4Base5func2Ev", scope: !1204, file: !256, line: 13, type: !1211, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1214, retainedNodes: !85)
!1383 = !DILocalVariable(name: "this", arg: 1, scope: !1382, type: !1203, flags: DIFlagArtificial | DIFlagObjectPointer)
!1384 = !DILocation(line: 0, scope: !1382)
!1385 = !DILocation(line: 14, column: 19, scope: !1382)
!1386 = !DILocation(line: 14, column: 36, scope: !1382)
!1387 = !DILocation(line: 14, column: 48, scope: !1382)
!1388 = !DILocation(line: 14, column: 46, scope: !1382)
!1389 = !DILocation(line: 14, column: 50, scope: !1382)
!1390 = !DILocation(line: 15, column: 5, scope: !1382)
!1391 = distinct !DISubprogram(name: "func3", linkageName: "_ZN4Base5func3Ev", scope: !1204, file: !256, line: 16, type: !1211, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1215, retainedNodes: !85)
!1392 = !DILocalVariable(name: "this", arg: 1, scope: !1391, type: !1203, flags: DIFlagArtificial | DIFlagObjectPointer)
!1393 = !DILocation(line: 0, scope: !1391)
!1394 = !DILocation(line: 17, column: 19, scope: !1391)
!1395 = !DILocation(line: 17, column: 36, scope: !1391)
!1396 = !DILocation(line: 17, column: 48, scope: !1391)
!1397 = !DILocation(line: 17, column: 46, scope: !1391)
!1398 = !DILocation(line: 17, column: 50, scope: !1391)
!1399 = !DILocation(line: 18, column: 5, scope: !1391)
!1400 = distinct !DISubprogram(name: "operator<=<long, std::ratio<1L, 1000L>, long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt6chronoleIlSt5ratioILl1ELl1000EElS2_EEbRKNS_8durationIT_T0_EERKNS3_IT1_T2_EE", scope: !7, file: !6, line: 866, type: !82, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !86, retainedNodes: !85)
!1401 = !DILocalVariable(name: "__lhs", arg: 1, scope: !1400, file: !6, line: 866, type: !28)
!1402 = !DILocation(line: 866, column: 51, scope: !1400)
!1403 = !DILocalVariable(name: "__rhs", arg: 2, scope: !1400, file: !6, line: 867, type: !28)
!1404 = !DILocation(line: 867, column: 37, scope: !1400)
!1405 = !DILocation(line: 868, column: 18, scope: !1400)
!1406 = !DILocation(line: 868, column: 26, scope: !1400)
!1407 = !DILocation(line: 868, column: 24, scope: !1400)
!1408 = !DILocation(line: 868, column: 16, scope: !1400)
!1409 = !DILocation(line: 868, column: 9, scope: !1400)
!1410 = distinct !DISubprogram(name: "zero", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEE4zeroEv", scope: !9, file: !6, line: 684, type: !61, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !60, retainedNodes: !85)
!1411 = !DILocation(line: 685, column: 20, scope: !1410)
!1412 = !DILocation(line: 685, column: 11, scope: !1410)
!1413 = !DILocation(line: 685, column: 4, scope: !1410)
!1414 = distinct !DISubprogram(name: "duration_cast<std::chrono::duration<long, std::ratio<1L, 1L> >, long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS2_ILl1ELl1000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", scope: !7, file: !6, line: 273, type: !1415, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1417, retainedNodes: !85)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1258, !28}
!1417 = !{!1418, !66, !67}
!1418 = !DITemplateTypeParameter(name: "_ToDur", type: !97)
!1419 = !DILocalVariable(name: "__d", arg: 1, scope: !1414, file: !6, line: 273, type: !28)
!1420 = !DILocation(line: 273, column: 52, scope: !1414)
!1421 = !DILocation(line: 287, column: 24, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !6, line: 280, column: 2)
!1423 = distinct !DILexicalBlock(scope: !1414, file: !6, line: 276, column: 16)
!1424 = !DILocation(line: 287, column: 11, scope: !1422)
!1425 = !DILocation(line: 287, column: 4, scope: !1422)
!1426 = distinct !DISubprogram(name: "duration_cast<std::chrono::duration<long, std::ratio<1L, 1000000000L> >, long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", scope: !7, file: !6, line: 273, type: !1427, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1429, retainedNodes: !85)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1268, !28}
!1429 = !{!1430, !66, !67}
!1430 = !DITemplateTypeParameter(name: "_ToDur", type: !153)
!1431 = !DILocalVariable(name: "__d", arg: 1, scope: !1426, file: !6, line: 273, type: !28)
!1432 = !DILocation(line: 273, column: 52, scope: !1426)
!1433 = !DILocation(line: 287, column: 24, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !6, line: 280, column: 2)
!1435 = distinct !DILexicalBlock(scope: !1426, file: !6, line: 276, column: 16)
!1436 = !DILocation(line: 287, column: 11, scope: !1434)
!1437 = !DILocation(line: 287, column: 4, scope: !1434)
!1438 = !DILocalVariable(name: "__lhs", arg: 1, scope: !210, file: !6, line: 721, type: !28)
!1439 = !DILocation(line: 721, column: 50, scope: !210)
!1440 = !DILocalVariable(name: "__rhs", arg: 2, scope: !210, file: !6, line: 722, type: !109)
!1441 = !DILocation(line: 722, column: 36, scope: !210)
!1442 = !DILocation(line: 727, column: 19, scope: !210)
!1443 = !DILocation(line: 727, column: 14, scope: !210)
!1444 = !DILocation(line: 727, column: 26, scope: !210)
!1445 = !DILocation(line: 727, column: 41, scope: !210)
!1446 = !DILocation(line: 727, column: 36, scope: !210)
!1447 = !DILocation(line: 727, column: 48, scope: !210)
!1448 = !DILocation(line: 727, column: 34, scope: !210)
!1449 = !DILocation(line: 727, column: 9, scope: !210)
!1450 = !DILocation(line: 727, column: 2, scope: !210)
!1451 = distinct !DISubprogram(name: "count", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv", scope: !97, file: !6, line: 600, type: !117, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !116, retainedNodes: !85)
!1452 = !DILocalVariable(name: "this", arg: 1, scope: !1451, type: !1453, flags: DIFlagArtificial | DIFlagObjectPointer)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1454 = !DILocation(line: 0, scope: !1451)
!1455 = !DILocation(line: 601, column: 11, scope: !1451)
!1456 = !DILocation(line: 601, column: 4, scope: !1451)
!1457 = distinct !DISubprogram(name: "count", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv", scope: !153, file: !6, line: 600, type: !173, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !172, retainedNodes: !85)
!1458 = !DILocalVariable(name: "this", arg: 1, scope: !1457, type: !1459, flags: DIFlagArtificial | DIFlagObjectPointer)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1460 = !DILocation(line: 0, scope: !1457)
!1461 = !DILocation(line: 601, column: 11, scope: !1457)
!1462 = !DILocation(line: 601, column: 4, scope: !1457)
!1463 = !DILocalVariable(name: "__lhs", arg: 1, scope: !81, file: !6, line: 833, type: !28)
!1464 = !DILocation(line: 833, column: 50, scope: !81)
!1465 = !DILocalVariable(name: "__rhs", arg: 2, scope: !81, file: !6, line: 834, type: !28)
!1466 = !DILocation(line: 834, column: 36, scope: !81)
!1467 = !DILocation(line: 839, column: 14, scope: !81)
!1468 = !DILocation(line: 839, column: 9, scope: !81)
!1469 = !DILocation(line: 839, column: 21, scope: !81)
!1470 = !DILocation(line: 839, column: 36, scope: !81)
!1471 = !DILocation(line: 839, column: 31, scope: !81)
!1472 = !DILocation(line: 839, column: 43, scope: !81)
!1473 = !DILocation(line: 839, column: 29, scope: !81)
!1474 = !DILocation(line: 839, column: 2, scope: !81)
!1475 = distinct !DISubprogram(name: "count", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv", scope: !9, file: !6, line: 600, type: !36, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !35, retainedNodes: !85)
!1476 = !DILocalVariable(name: "this", arg: 1, scope: !1475, type: !1477, flags: DIFlagArtificial | DIFlagObjectPointer)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1478 = !DILocation(line: 0, scope: !1475)
!1479 = !DILocation(line: 601, column: 11, scope: !1475)
!1480 = !DILocation(line: 601, column: 4, scope: !1475)
!1481 = distinct !DISubprogram(name: "zero", linkageName: "_ZNSt6chrono15duration_valuesIlE4zeroEv", scope: !1482, file: !6, line: 496, type: !1485, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1484, retainedNodes: !85)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "duration_values<long>", scope: !7, file: !6, line: 493, size: 8, flags: DIFlagTypePassByValue, elements: !1483, templateParams: !1489, identifier: "_ZTSNSt6chrono15duration_valuesIlEE")
!1483 = !{!1484, !1487, !1488}
!1484 = !DISubprogram(name: "zero", linkageName: "_ZNSt6chrono15duration_valuesIlE4zeroEv", scope: !1482, file: !6, line: 496, type: !1485, scopeLine: 496, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!13}
!1487 = !DISubprogram(name: "max", linkageName: "_ZNSt6chrono15duration_valuesIlE3maxEv", scope: !1482, file: !6, line: 500, type: !1485, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1488 = !DISubprogram(name: "min", linkageName: "_ZNSt6chrono15duration_valuesIlE3minEv", scope: !1482, file: !6, line: 504, type: !1485, scopeLine: 504, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1489 = !{!66}
!1490 = !DILocation(line: 497, column: 4, scope: !1481)
!1491 = distinct !DISubprogram(name: "duration<long, void>", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_", scope: !9, file: !6, line: 584, type: !1492, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1497, declaration: !1496, retainedNodes: !85)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !24, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1496 = !DISubprogram(name: "duration<long, void>", scope: !9, file: !6, line: 584, type: !1492, scopeLine: 584, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1497)
!1497 = !{!89, !1301}
!1498 = !DILocalVariable(name: "this", arg: 1, scope: !1491, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1499 = !DILocation(line: 0, scope: !1491)
!1500 = !DILocalVariable(name: "__rep", arg: 2, scope: !1491, file: !6, line: 584, type: !1494)
!1501 = !DILocation(line: 584, column: 45, scope: !1491)
!1502 = !DILocation(line: 585, column: 6, scope: !1491)
!1503 = !DILocation(line: 585, column: 27, scope: !1491)
!1504 = !DILocation(line: 585, column: 37, scope: !1491)
!1505 = distinct !DISubprogram(name: "__cast<long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE", scope: !1506, file: !6, line: 208, type: !1512, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !65, declaration: !1514, retainedNodes: !85)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_cast_impl<std::chrono::duration<long, std::ratio<1L, 1L> >, std::ratio<1L, 1000L>, long, true, false>", scope: !7, file: !6, line: 204, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !1507, identifier: "_ZTSNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES2_ILl1ELl1000EElLb1ELb0EEE")
!1507 = !{!1418, !1508, !1509, !1510, !1511}
!1508 = !DITemplateTypeParameter(name: "_CF", type: !68)
!1509 = !DITemplateTypeParameter(name: "_CR", type: !13)
!1510 = !DITemplateValueParameter(name: "_NumIsOne", type: !84, value: i1 true)
!1511 = !DITemplateValueParameter(name: "_DenIsOne", type: !84, defaulted: true, value: i1 false)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!97, !28}
!1514 = !DISubprogram(name: "__cast<long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE", scope: !1506, file: !6, line: 208, type: !1512, scopeLine: 208, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !65)
!1515 = !DILocalVariable(name: "__d", arg: 1, scope: !1505, file: !6, line: 208, type: !28)
!1516 = !DILocation(line: 208, column: 42, scope: !1505)
!1517 = !DILocation(line: 212, column: 25, scope: !1505)
!1518 = !DILocation(line: 212, column: 29, scope: !1505)
!1519 = !DILocation(line: 212, column: 38, scope: !1505)
!1520 = !DILocation(line: 211, column: 20, scope: !1505)
!1521 = !DILocation(line: 211, column: 13, scope: !1505)
!1522 = !DILocation(line: 211, column: 6, scope: !1505)
!1523 = distinct !DISubprogram(name: "duration<long, void>", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_", scope: !97, file: !6, line: 584, type: !1524, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1497, declaration: !1526, retainedNodes: !85)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !105, !1494}
!1526 = !DISubprogram(name: "duration<long, void>", scope: !97, file: !6, line: 584, type: !1524, scopeLine: 584, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1497)
!1527 = !DILocalVariable(name: "this", arg: 1, scope: !1523, type: !1528, flags: DIFlagArtificial | DIFlagObjectPointer)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1529 = !DILocation(line: 0, scope: !1523)
!1530 = !DILocalVariable(name: "__rep", arg: 2, scope: !1523, file: !6, line: 584, type: !1494)
!1531 = !DILocation(line: 584, column: 45, scope: !1523)
!1532 = !DILocation(line: 585, column: 6, scope: !1523)
!1533 = !DILocation(line: 585, column: 27, scope: !1523)
!1534 = !DILocation(line: 585, column: 37, scope: !1523)
!1535 = distinct !DISubprogram(name: "__cast<long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1000EEEES4_RKNS1_IT_T0_EE", scope: !1536, file: !6, line: 221, type: !1541, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !65, declaration: !1543, retainedNodes: !85)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_cast_impl<std::chrono::duration<long, std::ratio<1L, 1000000000L> >, std::ratio<1000000L, 1L>, long, false, true>", scope: !7, file: !6, line: 217, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !1537, identifier: "_ZTSNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000ELl1EElLb0ELb1EEE")
!1537 = !{!1430, !1538, !1509, !1539, !1540}
!1538 = !DITemplateTypeParameter(name: "_CF", type: !241)
!1539 = !DITemplateValueParameter(name: "_NumIsOne", type: !84, defaulted: true, value: i1 false)
!1540 = !DITemplateValueParameter(name: "_DenIsOne", type: !84, value: i1 true)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!153, !28}
!1543 = !DISubprogram(name: "__cast<long, std::ratio<1L, 1000L> >", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1000EEEES4_RKNS1_IT_T0_EE", scope: !1536, file: !6, line: 221, type: !1541, scopeLine: 221, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !65)
!1544 = !DILocalVariable(name: "__d", arg: 1, scope: !1535, file: !6, line: 221, type: !28)
!1545 = !DILocation(line: 221, column: 42, scope: !1535)
!1546 = !DILocation(line: 225, column: 25, scope: !1535)
!1547 = !DILocation(line: 225, column: 29, scope: !1535)
!1548 = !DILocation(line: 225, column: 38, scope: !1535)
!1549 = !DILocation(line: 224, column: 20, scope: !1535)
!1550 = !DILocation(line: 224, column: 13, scope: !1535)
!1551 = !DILocation(line: 224, column: 6, scope: !1535)
!1552 = distinct !DISubprogram(name: "duration<long, void>", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_", scope: !153, file: !6, line: 584, type: !1553, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1497, declaration: !1555, retainedNodes: !85)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !161, !1494}
!1555 = !DISubprogram(name: "duration<long, void>", scope: !153, file: !6, line: 584, type: !1553, scopeLine: 584, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1497)
!1556 = !DILocalVariable(name: "this", arg: 1, scope: !1552, type: !1557, flags: DIFlagArtificial | DIFlagObjectPointer)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1558 = !DILocation(line: 0, scope: !1552)
!1559 = !DILocalVariable(name: "__rep", arg: 2, scope: !1552, file: !6, line: 584, type: !1494)
!1560 = !DILocation(line: 584, column: 45, scope: !1552)
!1561 = !DILocation(line: 585, column: 6, scope: !1552)
!1562 = !DILocation(line: 585, column: 27, scope: !1552)
!1563 = !DILocation(line: 585, column: 37, scope: !1552)
!1564 = distinct !DISubprogram(name: "duration<long, std::ratio<1L, 1L>, void>", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1EEvEERKNS0_IT_T0_EE", scope: !9, file: !6, line: 592, type: !1565, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1568, declaration: !1567, retainedNodes: !85)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !24, !109}
!1567 = !DISubprogram(name: "duration<long, std::ratio<1L, 1L>, void>", scope: !9, file: !6, line: 592, type: !1565, scopeLine: 592, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !1568)
!1568 = !{!89, !238, !1301}
!1569 = !DILocalVariable(name: "this", arg: 1, scope: !1564, type: !1303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1570 = !DILocation(line: 0, scope: !1564)
!1571 = !DILocalVariable(name: "__d", arg: 2, scope: !1564, file: !6, line: 592, type: !109)
!1572 = !DILocation(line: 592, column: 56, scope: !1564)
!1573 = !DILocation(line: 593, column: 6, scope: !1564)
!1574 = !DILocation(line: 593, column: 34, scope: !1564)
!1575 = !DILocation(line: 593, column: 10, scope: !1564)
!1576 = !DILocation(line: 593, column: 39, scope: !1564)
!1577 = !DILocation(line: 593, column: 50, scope: !1564)
!1578 = distinct !DISubprogram(name: "duration_cast<std::chrono::duration<long, std::ratio<1L, 1000L> >, long, std::ratio<1L, 1L> >", linkageName: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", scope: !7, file: !6, line: 273, type: !1579, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1586, retainedNodes: !85)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1581, !109}
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_is_duration<std::chrono::duration<long, std::ratio<1L, 1000L> > >", scope: !7, file: !6, line: 240, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1583, file: !218, line: 112, baseType: !9)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, std::chrono::duration<long, std::ratio<1L, 1000L> > >", scope: !8, file: !218, line: 111, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !1584, identifier: "_ZTSSt9enable_ifILb1ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE")
!1584 = !{!1262, !1585}
!1585 = !DITemplateTypeParameter(name: "_Tp", type: !9)
!1586 = !{!1587, !66, !1588}
!1587 = !DITemplateTypeParameter(name: "_ToDur", type: !9)
!1588 = !DITemplateTypeParameter(name: "_Period", type: !147)
!1589 = !DILocalVariable(name: "__d", arg: 1, scope: !1578, file: !6, line: 273, type: !109)
!1590 = !DILocation(line: 273, column: 52, scope: !1578)
!1591 = !DILocation(line: 287, column: 24, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !6, line: 280, column: 2)
!1593 = distinct !DILexicalBlock(scope: !1578, file: !6, line: 276, column: 16)
!1594 = !DILocation(line: 287, column: 11, scope: !1592)
!1595 = !DILocation(line: 287, column: 4, scope: !1592)
!1596 = distinct !DISubprogram(name: "__cast<long, std::ratio<1L, 1L> >", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE", scope: !1597, file: !6, line: 221, type: !1600, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1603, declaration: !1602, retainedNodes: !85)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__duration_cast_impl<std::chrono::duration<long, std::ratio<1L, 1000L> >, std::ratio<1000L, 1L>, long, false, true>", scope: !7, file: !6, line: 217, size: 8, flags: DIFlagTypePassByValue, elements: !85, templateParams: !1598, identifier: "_ZTSNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1000ELl1EElLb0ELb1EEE")
!1598 = !{!1587, !1599, !1509, !1539, !1540}
!1599 = !DITemplateTypeParameter(name: "_CF", type: !247)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!9, !109}
!1602 = !DISubprogram(name: "__cast<long, std::ratio<1L, 1L> >", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE", scope: !1597, file: !6, line: 221, type: !1600, scopeLine: 221, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !1603)
!1603 = !{!66, !1588}
!1604 = !DILocalVariable(name: "__d", arg: 1, scope: !1596, file: !6, line: 221, type: !109)
!1605 = !DILocation(line: 221, column: 42, scope: !1596)
!1606 = !DILocation(line: 225, column: 25, scope: !1596)
!1607 = !DILocation(line: 225, column: 29, scope: !1596)
!1608 = !DILocation(line: 225, column: 38, scope: !1596)
!1609 = !DILocation(line: 224, column: 20, scope: !1596)
!1610 = !DILocation(line: 224, column: 13, scope: !1596)
!1611 = !DILocation(line: 224, column: 6, scope: !1596)
