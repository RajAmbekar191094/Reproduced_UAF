; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.writer_msg_s = type { i32, ptr, %struct.ybin_s, %struct.ybin_s, i32 }
%struct.ybin_s = type { ptr, i64 }
%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }
%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.snappy_env = type { ptr, ptr, ptr }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%struct.MDB_val = type { i64, ptr }
%struct.timeval = type { i64, i64 }
%struct.ydynabin_s = type { ptr, i64, i64, i64 }

@finedb_g = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"dht:n:s:f:p:i:\00", align 1, !dbg !42
@optarg = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1, !dbg !47
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !52
@.str.2 = private unnamed_addr constant [104 x i8] c"Configuration\0A\09# threads: %d\0A\09# dbs: %d\0A\09Map size: %d\0A\09Port number: %d\0A\09Database path: %s\0A\09Timeout: %d\0A\00", align 1, !dbg !58
@__FUNCTION__.signal_handler = private unnamed_addr constant [15 x i8] c"signal_handler\00", align 1, !dbg !63
@.str.3 = private unnamed_addr constant [29 x i8] c"Interruption signal catched.\00", align 1, !dbg !66
@str = private unnamed_addr constant [530 x i8] c"Usage: finedb [-t number] [-n number] [-s number] [-p port] [-f path] [-i seconds] [-h] [-d]\0A\09-t number    Set the number of connection threads.\0A\09-n number    Set the maximum number of opened databases.\0A\09-s number    Set the database map size (maximum size on disk).\0A\09-p port      Listening port number.\0A\09-f path      Path to the database directory.\0A\09-i seconds   NUmber of seconds before considering a connection is timing out.\0A\09-h           Shows this help and exits.\0A\09-d           Debug mode. Error messages are more verbose.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"command_del.c\00", align 1, !dbg !98
@__FUNCTION__.command_del = private unnamed_addr constant [12 x i8] c"command_del\00", align 1, !dbg !104
@.str.1.5 = private unnamed_addr constant [12 x i8] c"DEL command\00", align 1, !dbg !109
@.str.2.6 = private unnamed_addr constant [41 x i8] c"Unable to send message to writer thread.\00", align 1, !dbg !112
@.str.3.7 = private unnamed_addr constant [27 x i8] c"Deletion done on database.\00", align 1, !dbg !117
@.str.4.8 = private unnamed_addr constant [35 x i8] c"Unable to delete data on database.\00", align 1, !dbg !122
@.str.5 = private unnamed_addr constant [15 x i8] c"DEL command %s\00", align 1, !dbg !127
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1, !dbg !129
@.str.7 = private unnamed_addr constant [7 x i8] c"failed\00", align 1, !dbg !134
@.str.8 = private unnamed_addr constant [10 x i8] c"PUT error\00", align 1, !dbg !136
@.str.9 = private unnamed_addr constant [9 x i8] c"server.c\00", align 1, !dbg !141
@__FUNCTION__.server_create_listening_socket = private unnamed_addr constant [31 x i8] c"server_create_listening_socket\00", align 1, !dbg !147
@.str.1.10 = private unnamed_addr constant [13 x i8] c"Socket error\00", align 1, !dbg !152
@.str.2.11 = private unnamed_addr constant [32 x i8] c"setsockopt(SO_REUSEADDR) failed\00", align 1, !dbg !157
@.str.3.12 = private unnamed_addr constant [32 x i8] c"setsockopt(SO_KEEPALIVE) failed\00", align 1, !dbg !162
@.str.4.13 = private unnamed_addr constant [11 x i8] c"Bind error\00", align 1, !dbg !164
@.str.5.14 = private unnamed_addr constant [13 x i8] c"Listen error\00", align 1, !dbg !169
@__FUNCTION__.server_loop = private unnamed_addr constant [12 x i8] c"server_loop\00", align 1, !dbg !171
@.str.6.15 = private unnamed_addr constant [29 x i8] c"setsockopt(KEEPALIVE) failed\00", align 1, !dbg !173
@.str.16 = private unnamed_addr constant [15 x i8] c"command_ping.c\00", align 1, !dbg !175
@__FUNCTION__.command_ping = private unnamed_addr constant [13 x i8] c"command_ping\00", align 1, !dbg !178
@.str.1.17 = private unnamed_addr constant [13 x i8] c"PING command\00", align 1, !dbg !181
@.str.18 = private unnamed_addr constant [23 x i8] c"inproc://writer_socket\00", align 1, !dbg !183
@.str.1.19 = private unnamed_addr constant [16 x i8] c"writer_thread.c\00", align 1, !dbg !189
@__FUNCTION__.writer_loop = private unnamed_addr constant [12 x i8] c"writer_loop\00", align 1, !dbg !194
@.str.2.20 = private unnamed_addr constant [42 x i8] c"Unable to create socket in writer thread.\00", align 1, !dbg !196
@.str.3.21 = private unnamed_addr constant [19 x i8] c"WRITE '%s' => '%s'\00", align 1, !dbg !201
@.str.4.22 = private unnamed_addr constant [26 x i8] c"Data written to database.\00", align 1, !dbg !206
@.str.5.23 = private unnamed_addr constant [36 x i8] c"Unable to write data into database.\00", align 1, !dbg !211
@.str.6.24 = private unnamed_addr constant [12 x i8] c"DELETE '%s'\00", align 1, !dbg !216
@.str.7.25 = private unnamed_addr constant [28 x i8] c"Data removed from database.\00", align 1, !dbg !218
@.str.8.26 = private unnamed_addr constant [37 x i8] c"Unable to delete data into database.\00", align 1, !dbg !223
@.str.29 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1, !dbg !228
@.str.1.30 = private unnamed_addr constant [16 x i8] c"../var/database\00", align 1, !dbg !234
@.str.2.31 = private unnamed_addr constant [9 x i8] c"finedb.c\00", align 1, !dbg !236
@__FUNCTION__.finedb_init = private unnamed_addr constant [12 x i8] c"finedb_init\00", align 1, !dbg !238
@.str.3.32 = private unnamed_addr constant [25 x i8] c"Unable to open database.\00", align 1, !dbg !240
@.str.4.33 = private unnamed_addr constant [24 x i8] c"inproc://threads_socket\00", align 1, !dbg !245
@.str.5.34 = private unnamed_addr constant [33 x i8] c"Unable to create threads socket.\00", align 1, !dbg !250
@.str.6.35 = private unnamed_addr constant [32 x i8] c"Unable to create writer thread.\00", align 1, !dbg !255
@.str.7.36 = private unnamed_addr constant [10 x i8] c"Aborting.\00", align 1, !dbg !257
@.str.41 = private unnamed_addr constant [14 x i8] c"command_put.c\00", align 1, !dbg !259
@__FUNCTION__.command_put = private unnamed_addr constant [12 x i8] c"command_put\00", align 1, !dbg !262
@.str.1.42 = private unnamed_addr constant [12 x i8] c"PUT command\00", align 1, !dbg !264
@.str.2.43 = private unnamed_addr constant [13 x i8] c"NAME : '%s'.\00", align 1, !dbg !266
@.str.3.44 = private unnamed_addr constant [13 x i8] c"DATA : '%s'.\00", align 1, !dbg !268
@.str.4.45 = private unnamed_addr constant [37 x i8] c"Unable to create Snappy environment.\00", align 1, !dbg !270
@.str.5.46 = private unnamed_addr constant [27 x i8] c"Unable to allocate memory.\00", align 1, !dbg !272
@.str.6.47 = private unnamed_addr constant [25 x i8] c"Unable to compress data.\00", align 1, !dbg !274
@.str.7.48 = private unnamed_addr constant [41 x i8] c"Unable to send message to writer thread.\00", align 1, !dbg !276
@.str.12 = private unnamed_addr constant [26 x i8] c"Data written to database.\00", align 1, !dbg !278
@.str.13 = private unnamed_addr constant [36 x i8] c"Unable to write data into database.\00", align 1, !dbg !280
@.str.15 = private unnamed_addr constant [15 x i8] c"PUT command %s\00", align 1, !dbg !282
@.str.16.49 = private unnamed_addr constant [3 x i8] c"OK\00", align 1, !dbg !284
@.str.17 = private unnamed_addr constant [7 x i8] c"failed\00", align 1, !dbg !286
@.str.18.50 = private unnamed_addr constant [10 x i8] c"PUT error\00", align 1, !dbg !288
@.str.51 = private unnamed_addr constant [15 x i8] c"command_list.c\00", align 1, !dbg !290
@__FUNCTION__.command_list = private unnamed_addr constant [13 x i8] c"command_list\00", align 1, !dbg !293
@.str.1.52 = private unnamed_addr constant [13 x i8] c"LIST command\00", align 1, !dbg !295
@.str.2.53 = private unnamed_addr constant [16 x i8] c"LIST command OK\00", align 1, !dbg !297
@.str.3.54 = private unnamed_addr constant [11 x i8] c"LIST error\00", align 1, !dbg !299
@__FUNCTION__._command_list_loop = private unnamed_addr constant [19 x i8] c"_command_list_loop\00", align 1, !dbg !301
@.str.4.55 = private unnamed_addr constant [20 x i8] c"list element: '%s'.\00", align 1, !dbg !304
@.str.5.56 = private unnamed_addr constant [25 x i8] c"Unable to send response.\00", align 1, !dbg !309
@.str.6.57 = private unnamed_addr constant [48 x i8] c"Unable to send the complete response (%d / %d).\00", align 1, !dbg !311
@.str.60 = private unnamed_addr constant [11 x i8] c"database.c\00", align 1, !dbg !316
@__FUNCTION__.database_open = private unnamed_addr constant [14 x i8] c"database_open\00", align 1, !dbg !319
@.str.1.61 = private unnamed_addr constant [15 x i8] c"Open database.\00", align 1, !dbg !322
@.str.2.62 = private unnamed_addr constant [38 x i8] c"Unable to open database on '%s' (%s).\00", align 1, !dbg !324
@.str.3.63 = private unnamed_addr constant [34 x i8] c"Unable to set mapsize to %d (%s).\00", align 1, !dbg !329
@.str.4.64 = private unnamed_addr constant [32 x i8] c"Unable to set max readers (%s).\00", align 1, !dbg !334
@.str.5.65 = private unnamed_addr constant [28 x i8] c"Unable to set max dbs (%s).\00", align 1, !dbg !336
@.str.6.66 = private unnamed_addr constant [43 x i8] c"Unable to open database environmenti (%s).\00", align 1, !dbg !338
@.str.7.67 = private unnamed_addr constant [17 x i8] c"Database opened.\00", align 1, !dbg !343
@__FUNCTION__.database_close = private unnamed_addr constant [15 x i8] c"database_close\00", align 1, !dbg !348
@.str.8.70 = private unnamed_addr constant [16 x i8] c"Close database.\00", align 1, !dbg !350
@.str.9.71 = private unnamed_addr constant [17 x i8] c"Database closed.\00", align 1, !dbg !352
@__FUNCTION__.database_transaction_start = private unnamed_addr constant [27 x i8] c"database_transaction_start\00", align 1, !dbg !354
@.str.10 = private unnamed_addr constant [35 x i8] c"Unable to create transaction (%s).\00", align 1, !dbg !357
@__FUNCTION__.database_transaction_commit = private unnamed_addr constant [28 x i8] c"database_transaction_commit\00", align 1, !dbg !359
@.str.11 = private unnamed_addr constant [35 x i8] c"Unable to commit transaction (%s).\00", align 1, !dbg !362
@__FUNCTION__.database_put = private unnamed_addr constant [13 x i8] c"database_put\00", align 1, !dbg !364
@.str.12.74 = private unnamed_addr constant [37 x i8] c"Unable to open database handle (%s).\00", align 1, !dbg !366
@.str.13.75 = private unnamed_addr constant [39 x i8] c"Unable to write data in database (%s).\00", align 1, !dbg !368
@__FUNCTION__.database_del = private unnamed_addr constant [13 x i8] c"database_del\00", align 1, !dbg !373
@__FUNCTION__.database_get = private unnamed_addr constant [13 x i8] c"database_get\00", align 1, !dbg !375
@.str.14 = private unnamed_addr constant [14 x i8] c"No data (%s).\00", align 1, !dbg !377
@.str.15.78 = private unnamed_addr constant [38 x i8] c"Unable to read data in database (%s).\00", align 1, !dbg !379
@__FUNCTION__.database_list = private unnamed_addr constant [14 x i8] c"database_list\00", align 1, !dbg !381
@.str.16.81 = private unnamed_addr constant [40 x i8] c"Unable to open cursor on database (%s).\00", align 1, !dbg !383
@__FUNCTION__.database_drop = private unnamed_addr constant [14 x i8] c"database_drop\00", align 1, !dbg !388
@.str.17.82 = private unnamed_addr constant [30 x i8] c"Unable to drop database (%s).\00", align 1, !dbg !390
@get_self_path.path = internal global [4096 x i8] zeroinitializer, align 16, !dbg !395
@.str.85 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1, !dbg !405
@.str.86 = private unnamed_addr constant [14 x i8] c"command_get.c\00", align 1, !dbg !412
@__FUNCTION__.command_get = private unnamed_addr constant [12 x i8] c"command_get\00", align 1, !dbg !415
@.str.1.87 = private unnamed_addr constant [12 x i8] c"GET command\00", align 1, !dbg !417
@.str.2.88 = private unnamed_addr constant [17 x i8] c"Uncompress data.\00", align 1, !dbg !419
@.str.3.89 = private unnamed_addr constant [27 x i8] c"Unable to uncompress data.\00", align 1, !dbg !421
@.str.4.90 = private unnamed_addr constant [15 x i8] c"GET command OK\00", align 1, !dbg !423
@.str.5.91 = private unnamed_addr constant [12 x i8] c"GET no data\00", align 1, !dbg !425
@.str.6.92 = private unnamed_addr constant [10 x i8] c"GET error\00", align 1, !dbg !427
@.str.93 = private unnamed_addr constant [16 x i8] c"command_setdb.c\00", align 1, !dbg !429
@__FUNCTION__.command_setdb = private unnamed_addr constant [14 x i8] c"command_setdb\00", align 1, !dbg !432
@.str.1.94 = private unnamed_addr constant [14 x i8] c"SETDB command\00", align 1, !dbg !434
@.str.2.95 = private unnamed_addr constant [17 x i8] c"SETDB command OK\00", align 1, !dbg !436
@.str.3.96 = private unnamed_addr constant [12 x i8] c"SETDB error\00", align 1, !dbg !438
@.str.97 = private unnamed_addr constant [21 x i8] c"command_start_stop.c\00", align 1, !dbg !440
@__FUNCTION__.command_start = private unnamed_addr constant [14 x i8] c"command_start\00", align 1, !dbg !446
@.str.1.98 = private unnamed_addr constant [14 x i8] c"START command\00", align 1, !dbg !448
@.str.2.99 = private unnamed_addr constant [12 x i8] c"START error\00", align 1, !dbg !450
@__FUNCTION__.command_stop = private unnamed_addr constant [13 x i8] c"command_stop\00", align 1, !dbg !452
@.str.3.100 = private unnamed_addr constant [13 x i8] c"STOP command\00", align 1, !dbg !454
@.str.4.101 = private unnamed_addr constant [11 x i8] c"STOP error\00", align 1, !dbg !456
@.str.104 = private unnamed_addr constant [20 x i8] c"connection_thread.c\00", align 1, !dbg !458
@__FUNCTION__.connection_thread_new = private unnamed_addr constant [22 x i8] c"connection_thread_new\00", align 1, !dbg !461
@.str.1.105 = private unnamed_addr constant [25 x i8] c"Unable to create thread.\00", align 1, !dbg !466
@__FUNCTION__.connection_thread_execution = private unnamed_addr constant [28 x i8] c"connection_thread_execution\00", align 1, !dbg !468
@.str.2.106 = private unnamed_addr constant [13 x i8] c"Thread loop.\00", align 1, !dbg !470
@.str.3.107 = private unnamed_addr constant [23 x i8] c"inproc://writer_socket\00", align 1, !dbg !472
@.str.4.108 = private unnamed_addr constant [38 x i8] c"Unable to connect to writer's socket.\00", align 1, !dbg !474
@.str.5.109 = private unnamed_addr constant [24 x i8] c"inproc://threads_socket\00", align 1, !dbg !476
@.str.6.110 = private unnamed_addr constant [43 x i8] c"Unable to connect to main thread's socket.\00", align 1, !dbg !478
@.str.7.111 = private unnamed_addr constant [32 x i8] c"Process an incoming connection.\00", align 1, !dbg !480
@.str.8.112 = private unnamed_addr constant [26 x i8] c"Processing a new request.\00", align 1, !dbg !482
@.str.9.115 = private unnamed_addr constant [23 x i8] c"The socket was closed.\00", align 1, !dbg !484
@.str.10.116 = private unnamed_addr constant [46 x i8] c"---Req: '%x' - txn: %d - sync: %d - comp: %d\0A\00", align 1, !dbg !486
@.str.11.117 = private unnamed_addr constant [17 x i8] c"Bad command '%x'\00", align 1, !dbg !491
@.str.12.120 = private unnamed_addr constant [11 x i8] c"Command %x\00", align 1, !dbg !493
@.str.13.121 = private unnamed_addr constant [19 x i8] c"End of connection.\00", align 1, !dbg !495
@__FUNCTION__.connection_read_data = private unnamed_addr constant [21 x i8] c"connection_read_data\00", align 1, !dbg !497
@.str.14.123 = private unnamed_addr constant [34 x i8] c"Unable to set RCVTIMEO on socket.\00", align 1, !dbg !500
@.str.15.124 = private unnamed_addr constant [13 x i8] c"Socket error\00", align 1, !dbg !502
@.str.16.125 = private unnamed_addr constant [14 x i8] c"Socket closed\00", align 1, !dbg !504
@.str.17.126 = private unnamed_addr constant [39 x i8] c"Unable to remove RCVTIMEO from socket.\00", align 1, !dbg !506
@__FUNCTION__.connection_send_response = private unnamed_addr constant [25 x i8] c"connection_send_response\00", align 1, !dbg !508
@.str.18.122 = private unnamed_addr constant [20 x i8] c"Send response (%d).\00", align 1, !dbg !511
@.str.19 = private unnamed_addr constant [34 x i8] c"Unable to set SNDTIMEO on socket.\00", align 1, !dbg !513
@.str.20 = private unnamed_addr constant [25 x i8] c"Unable to send response.\00", align 1, !dbg !515
@.str.21 = private unnamed_addr constant [48 x i8] c"Unable to send the complete response (%d / %d).\00", align 1, !dbg !517
@.str.22 = private unnamed_addr constant [35 x i8] c"Too much data were sent (%d / %d).\00", align 1, !dbg !519
@.str.23 = private unnamed_addr constant [39 x i8] c"Unable to remove SNDTIMEO from socket.\00", align 1, !dbg !521
@.str.24 = private unnamed_addr constant [20 x i8] c"Sent %d bytes '%s'.\00", align 1, !dbg !523
@_commands = internal unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [9 x ptr] }> <{ ptr @command_ping, ptr @command_get, ptr @command_del, ptr @command_put, ptr @command_setdb, ptr @command_start, ptr @command_stop, [9 x ptr] zeroinitializer }>, align 16, !dbg !525
@.str.129 = private unnamed_addr constant [15 x i8] c"command_drop.c\00", align 1, !dbg !604
@__FUNCTION__.command_drop = private unnamed_addr constant [13 x i8] c"command_drop\00", align 1, !dbg !607
@.str.1.130 = private unnamed_addr constant [12 x i8] c"PUT command\00", align 1, !dbg !609
@.str.2.131 = private unnamed_addr constant [41 x i8] c"Unable to send message to writer thread.\00", align 1, !dbg !611
@.str.3.132 = private unnamed_addr constant [18 x i8] c"Database dropped.\00", align 1, !dbg !613
@.str.4.133 = private unnamed_addr constant [25 x i8] c"Unable to drop database.\00", align 1, !dbg !618
@.str.5.136 = private unnamed_addr constant [16 x i8] c"DROP command %s\00", align 1, !dbg !620
@.str.6.135 = private unnamed_addr constant [3 x i8] c"OK\00", align 1, !dbg !622
@.str.7.134 = private unnamed_addr constant [7 x i8] c"failed\00", align 1, !dbg !624
@.str.8.137 = private unnamed_addr constant [11 x i8] c"DROP error\00", align 1, !dbg !626

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !774, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr %1, metadata !775, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr @.str, metadata !776, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i32 1, metadata !778, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i64 10485760, metadata !779, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 15, metadata !780, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 11138, metadata !781, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 30, metadata !782, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr null, metadata !783, metadata !DIExpression()), !dbg !785
  %3 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @signal_handler) #19, !dbg !786
  %4 = load ptr, ptr %1, align 8, !dbg !787, !tbaa !788
  tail call void @ylog_init(i32 noundef 1, ptr noundef null, ptr noundef %4, i32 noundef 524288) #19, !dbg !787
  tail call void @ylog_set_prio(i32 noundef 2) #19, !dbg !792
  br label %5, !dbg !793

5:                                                ; preds = %13, %2
  %6 = phi i64 [ 10485760, %2 ], [ %14, %13 ], !dbg !794
  %7 = phi i16 [ 15, %2 ], [ %15, %13 ], !dbg !795
  %8 = phi i16 [ 11138, %2 ], [ %16, %13 ], !dbg !796
  %9 = phi i16 [ 30, %2 ], [ %17, %13 ], !dbg !797
  %10 = phi ptr [ null, %2 ], [ %18, %13 ], !dbg !798
  %11 = phi i32 [ 1, %2 ], [ %19, %13 ], !dbg !799
  call void @llvm.dbg.value(metadata i32 %11, metadata !778, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr %10, metadata !783, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 %9, metadata !782, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 %8, metadata !781, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 %7, metadata !780, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i64 %6, metadata !779, metadata !DIExpression()), !dbg !785
  %12 = tail call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str) #19, !dbg !800
  call void @llvm.dbg.value(metadata i32 %12, metadata !777, metadata !DIExpression()), !dbg !785
  switch i32 %12, label %13 [
    i32 -1, label %46
    i32 116, label %20
    i32 110, label %24
    i32 115, label %28
    i32 112, label %33
    i32 102, label %37
    i32 105, label %40
    i32 100, label %44
    i32 104, label %45
  ], !dbg !793

13:                                               ; preds = %44, %40, %37, %33, %28, %24, %20, %5
  %14 = phi i64 [ %6, %44 ], [ %6, %40 ], [ %6, %37 ], [ %6, %33 ], [ %32, %28 ], [ %6, %24 ], [ %6, %20 ], [ %6, %5 ]
  %15 = phi i16 [ %7, %44 ], [ %7, %40 ], [ %7, %37 ], [ %7, %33 ], [ %7, %28 ], [ %7, %24 ], [ %23, %20 ], [ %7, %5 ]
  %16 = phi i16 [ %8, %44 ], [ %8, %40 ], [ %8, %37 ], [ %36, %33 ], [ %8, %28 ], [ %8, %24 ], [ %8, %20 ], [ %8, %5 ]
  %17 = phi i16 [ %9, %44 ], [ %43, %40 ], [ %9, %37 ], [ %9, %33 ], [ %9, %28 ], [ %9, %24 ], [ %9, %20 ], [ %9, %5 ]
  %18 = phi ptr [ %10, %44 ], [ %10, %40 ], [ %39, %37 ], [ %10, %33 ], [ %10, %28 ], [ %10, %24 ], [ %10, %20 ], [ %10, %5 ]
  %19 = phi i32 [ %11, %44 ], [ %11, %40 ], [ %11, %37 ], [ %11, %33 ], [ %11, %28 ], [ %27, %24 ], [ %11, %20 ], [ %11, %5 ]
  br label %5, !dbg !785, !llvm.loop !801

20:                                               ; preds = %5
  %21 = load ptr, ptr @optarg, align 8, !dbg !803, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %21, metadata !806, metadata !DIExpression()), !dbg !812
  %22 = tail call i64 @strtol(ptr nocapture noundef nonnull %21, ptr noundef null, i32 noundef 10) #19, !dbg !814
  %23 = trunc i64 %22 to i16, !dbg !815
  call void @llvm.dbg.value(metadata i16 %23, metadata !780, metadata !DIExpression()), !dbg !785
  br label %13, !dbg !816

24:                                               ; preds = %5
  %25 = load ptr, ptr @optarg, align 8, !dbg !817, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %25, metadata !806, metadata !DIExpression()), !dbg !818
  %26 = tail call i64 @strtol(ptr nocapture noundef nonnull %25, ptr noundef null, i32 noundef 10) #19, !dbg !820
  %27 = trunc i64 %26 to i32, !dbg !821
  call void @llvm.dbg.value(metadata i32 %27, metadata !778, metadata !DIExpression()), !dbg !785
  br label %13, !dbg !822

28:                                               ; preds = %5
  %29 = load ptr, ptr @optarg, align 8, !dbg !823, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %29, metadata !806, metadata !DIExpression()), !dbg !824
  %30 = tail call i64 @strtol(ptr nocapture noundef nonnull %29, ptr noundef null, i32 noundef 10) #19, !dbg !826
  %31 = shl i64 %30, 32, !dbg !827
  %32 = ashr exact i64 %31, 32, !dbg !827
  call void @llvm.dbg.value(metadata i64 %32, metadata !779, metadata !DIExpression()), !dbg !785
  br label %13, !dbg !828

33:                                               ; preds = %5
  %34 = load ptr, ptr @optarg, align 8, !dbg !829, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %34, metadata !806, metadata !DIExpression()), !dbg !830
  %35 = tail call i64 @strtol(ptr nocapture noundef nonnull %34, ptr noundef null, i32 noundef 10) #19, !dbg !832
  %36 = trunc i64 %35 to i16, !dbg !833
  call void @llvm.dbg.value(metadata i16 %36, metadata !781, metadata !DIExpression()), !dbg !785
  br label %13, !dbg !834

37:                                               ; preds = %5
  %38 = load ptr, ptr @optarg, align 8, !dbg !835, !tbaa !788
  %39 = tail call noalias ptr @strdup(ptr noundef %38) #19, !dbg !836
  call void @llvm.dbg.value(metadata ptr %39, metadata !783, metadata !DIExpression()), !dbg !785
  br label %13, !dbg !837

40:                                               ; preds = %5
  %41 = load ptr, ptr @optarg, align 8, !dbg !838, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %41, metadata !806, metadata !DIExpression()), !dbg !839
  %42 = tail call i64 @strtol(ptr nocapture noundef nonnull %41, ptr noundef null, i32 noundef 10) #19, !dbg !841
  %43 = trunc i64 %42 to i16, !dbg !842
  call void @llvm.dbg.value(metadata i16 %43, metadata !782, metadata !DIExpression()), !dbg !785
  br label %13, !dbg !843

44:                                               ; preds = %5
  tail call void @ylog_set_prio(i32 noundef 0) #19, !dbg !844
  br label %13, !dbg !845

45:                                               ; preds = %5
  tail call fastcc void @usage(), !dbg !846
  tail call void @exit(i32 noundef 0) #20, !dbg !847
  unreachable, !dbg !847

46:                                               ; preds = %5
  %47 = zext i16 %7 to i32, !dbg !848
  %48 = zext i16 %8 to i32, !dbg !848
  %49 = zext i16 %9 to i32, !dbg !848
  %50 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 101, ptr noundef nonnull @__FUNCTION__.main, ptr noundef nonnull @.str.2, i32 noundef %47, i32 noundef %11, i64 noundef %6, i32 noundef %48, ptr noundef %10, i32 noundef %49) #19, !dbg !848
  %51 = tail call ptr @finedb_init(ptr noundef %10, i16 noundef zeroext %8, i16 noundef zeroext %7, i64 noundef %6, i32 noundef %11, i16 noundef zeroext %9) #19, !dbg !849
  call void @llvm.dbg.value(metadata ptr %51, metadata !784, metadata !DIExpression()), !dbg !785
  store ptr %51, ptr @finedb_g, align 8, !dbg !850, !tbaa !788
  tail call void @finedb_start(ptr noundef %51) #19, !dbg !851
  ret i32 0, !dbg !852
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @signal_handler(i32 noundef %0) #2 !dbg !853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !855, metadata !DIExpression()), !dbg !856
  %2 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 42, ptr noundef nonnull @__FUNCTION__.signal_handler, ptr noundef nonnull @.str.3) #19, !dbg !857
  %3 = tail call ptr @signal(i32 noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #19, !dbg !858
  %4 = load ptr, ptr @finedb_g, align 8, !dbg !859, !tbaa !788
  %5 = icmp eq ptr %4, null, !dbg !859
  br i1 %5, label %7, label %6, !dbg !861

6:                                                ; preds = %1
  tail call void @finedb_stop(ptr noundef nonnull %4) #19, !dbg !862
  br label %7, !dbg !862

7:                                                ; preds = %6, %1
  tail call void @exit(i32 noundef 0) #20, !dbg !863
  unreachable, !dbg !863
}

; Function Attrs: nounwind
declare !dbg !864 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !868 void @ylog_init(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !871 void @ylog_set_prio(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !875 i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !881 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !887 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @usage() unnamed_addr #7 !dbg !891 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !894
  ret void, !dbg !895
}

; Function Attrs: noreturn nounwind
declare !dbg !896 void @exit(i32 noundef) local_unnamed_addr #8

declare !dbg !897 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @command_del(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !900 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !933, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i32 %1, metadata !934, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i32 %2, metadata !935, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i32 %3, metadata !936, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr %4, metadata !937, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr null, metadata !942, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19, !dbg !963
  call void @llvm.dbg.value(metadata ptr null, metadata !943, metadata !DIExpression()), !dbg !962
  %7 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef 17, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.1.5) #19, !dbg !964
  %8 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef 2) #19, !dbg !965
  %9 = icmp eq i32 %8, 1, !dbg !967
  br i1 %9, label %10, label %69, !dbg !968

10:                                               ; preds = %5
  %11 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 2) #19, !dbg !969
  call void @llvm.dbg.value(metadata ptr %11, metadata !938, metadata !DIExpression()), !dbg !962
  %12 = load i16, ptr %11, align 2, !dbg !970, !tbaa !971
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  call void @llvm.dbg.value(metadata i16 %13, metadata !940, metadata !DIExpression()), !dbg !962
  %14 = zext i16 %13 to i64, !dbg !973
  %15 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef %14) #19, !dbg !975
  %16 = icmp eq i32 %15, 1, !dbg !976
  br i1 %16, label %17, label %69, !dbg !977

17:                                               ; preds = %10
  %18 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %14) #19, !dbg !978
  call void @llvm.dbg.value(metadata ptr %18, metadata !941, metadata !DIExpression()), !dbg !962
  %19 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %14) #21, !dbg !979
  call void @llvm.dbg.value(metadata ptr %19, metadata !942, metadata !DIExpression()), !dbg !962
  %20 = icmp eq ptr %19, null, !dbg !981
  br i1 %20, label %69, label %21, !dbg !982

21:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %18, i64 %14, i1 false), !dbg !983
  %22 = icmp eq i32 %1, 0, !dbg !984
  br i1 %22, label %23, label %25, !dbg !986

23:                                               ; preds = %21
  %24 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !987
  br label %25, !dbg !989

25:                                               ; preds = %23, %21
  %26 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #21, !dbg !990
  call void @llvm.dbg.value(metadata ptr %26, metadata !943, metadata !DIExpression()), !dbg !962
  store ptr %26, ptr %6, align 8, !dbg !992, !tbaa !788
  %27 = icmp eq ptr %26, null, !dbg !993
  br i1 %27, label %71, label %28, !dbg !994

28:                                               ; preds = %25
  store i32 1, ptr %26, align 8, !dbg !995, !tbaa !996
  call void @llvm.dbg.value(metadata ptr %26, metadata !943, metadata !DIExpression()), !dbg !962
  %29 = getelementptr inbounds %struct.writer_msg_s, ptr %26, i64 0, i32 2, !dbg !1000
  %30 = tail call ptr @ybin_set(ptr noundef nonnull %29, ptr noundef nonnull %19, i64 noundef %14) #19, !dbg !1001
  br i1 %22, label %31, label %46, !dbg !1002

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !1003
  %33 = load ptr, ptr %32, align 8, !dbg !1003, !tbaa !1006
  %34 = icmp eq ptr %33, null, !dbg !1009
  br i1 %34, label %37, label %35, !dbg !1009

35:                                               ; preds = %31
  %36 = tail call noalias ptr @strdup(ptr noundef nonnull %33) #19, !dbg !1010
  br label %37, !dbg !1009

37:                                               ; preds = %35, %31
  %38 = phi ptr [ %36, %35 ], [ null, %31 ], !dbg !1009
  call void @llvm.dbg.value(metadata ptr %26, metadata !943, metadata !DIExpression()), !dbg !962
  %39 = getelementptr inbounds %struct.writer_msg_s, ptr %26, i64 0, i32 1, !dbg !1011
  store ptr %38, ptr %39, align 8, !dbg !1012, !tbaa !1013
  %40 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 3, !dbg !1014
  %41 = load i32, ptr %40, align 4, !dbg !1014, !tbaa !1016
  call void @llvm.dbg.value(metadata ptr %6, metadata !943, metadata !DIExpression(DW_OP_deref)), !dbg !962
  %42 = call i32 @nn_send(i32 noundef %41, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0) #19, !dbg !1017
  %43 = icmp slt i32 %42, 0, !dbg !1018
  br i1 %43, label %44, label %78, !dbg !1019

44:                                               ; preds = %37
  %45 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.2.6) #19, !dbg !1020
  br label %71, !dbg !1022

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !1023
  %48 = load ptr, ptr %47, align 8, !dbg !1023, !tbaa !1025
  %49 = getelementptr inbounds %struct.finedb_s, ptr %48, i64 0, i32 1, !dbg !1026
  %50 = load ptr, ptr %49, align 8, !dbg !1026, !tbaa !1027
  %51 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !1029
  %52 = load ptr, ptr %51, align 8, !dbg !1029, !tbaa !1030
  %53 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !1031
  %54 = load ptr, ptr %53, align 8, !dbg !1031, !tbaa !1006
  call void @llvm.dbg.value(metadata ptr %26, metadata !943, metadata !DIExpression()), !dbg !962
  %55 = load ptr, ptr %29, align 8, !dbg !1032
  %56 = getelementptr inbounds %struct.writer_msg_s, ptr %26, i64 0, i32 2, i32 1, !dbg !1032
  %57 = load i64, ptr %56, align 8, !dbg !1032
  %58 = tail call i32 @database_del(ptr noundef %50, ptr noundef %52, ptr noundef %54, ptr %55, i64 %57) #19, !dbg !1032
  %59 = icmp eq i32 %58, 1, !dbg !1033
  br i1 %59, label %60, label %62, !dbg !1034

60:                                               ; preds = %46
  %61 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef 52, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.3.7) #19, !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !960, metadata !DIExpression()), !dbg !962
  br label %64, !dbg !1037

62:                                               ; preds = %46
  %63 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef 55, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.4.8) #19, !dbg !1038
  call void @llvm.dbg.value(metadata i8 0, metadata !960, metadata !DIExpression()), !dbg !962
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ 1, %60 ], [ 6, %62 ], !dbg !962
  %66 = phi ptr [ @.str.6, %60 ], [ @.str.7, %62 ], !dbg !962
  call void @llvm.dbg.value(metadata i8 poison, metadata !960, metadata !DIExpression()), !dbg !962
  tail call void @free(ptr noundef nonnull %19) #19, !dbg !1040
  call void @llvm.dbg.value(metadata ptr null, metadata !942, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr %26, metadata !943, metadata !DIExpression()), !dbg !962
  tail call void @free(ptr noundef nonnull %26) #19, !dbg !1041
  call void @llvm.dbg.value(metadata ptr null, metadata !943, metadata !DIExpression()), !dbg !962
  %67 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef 60, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.5, ptr noundef nonnull %66) #19, !dbg !1042
  %68 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %65, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !1043
  br label %78, !dbg !1044

69:                                               ; preds = %17, %10, %5
  call void @llvm.dbg.value(metadata ptr null, metadata !942, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.label(metadata !961), !dbg !1045
  %70 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef 66, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.8) #19, !dbg !1046
  call void @llvm.dbg.value(metadata ptr null, metadata !943, metadata !DIExpression()), !dbg !962
  br label %76, !dbg !1047

71:                                               ; preds = %44, %25
  call void @llvm.dbg.value(metadata ptr %19, metadata !942, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.label(metadata !961), !dbg !1045
  %72 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef 66, ptr noundef nonnull @__FUNCTION__.command_del, ptr noundef nonnull @.str.8) #19, !dbg !1046
  call void @free(ptr noundef nonnull %19) #19, !dbg !1048
  %73 = load ptr, ptr %6, align 8, !dbg !1047, !tbaa !788
  call void @llvm.dbg.value(metadata ptr null, metadata !942, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr %73, metadata !943, metadata !DIExpression()), !dbg !962
  %74 = icmp eq ptr %73, null, !dbg !1047
  br i1 %74, label %76, label %75, !dbg !1047

75:                                               ; preds = %71
  call void @free(ptr noundef nonnull %73) #19, !dbg !1047
  br label %76, !dbg !1047

76:                                               ; preds = %75, %71, %69
  call void @llvm.dbg.value(metadata ptr null, metadata !943, metadata !DIExpression()), !dbg !962
  store ptr null, ptr %6, align 8, !dbg !1047, !tbaa !788
  %77 = call i32 @connection_send_response(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !1049
  br label %78, !dbg !1050

78:                                               ; preds = %76, %64, %37
  %79 = phi i32 [ -5, %76 ], [ %68, %64 ], [ 1, %37 ], !dbg !962
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19, !dbg !1051
  ret i32 %79, !dbg !1051
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1052 ptr @ydynabin_forward(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !1055 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare !dbg !1058 ptr @ybin_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1062 i32 @nn_send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1068 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nounwind uwtable
define dso_local i32 @server_create_listening_socket(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 !dbg !1071 {
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1076, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i16 %1, metadata !1077, metadata !DIExpression()), !dbg !1095
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19, !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1078, metadata !DIExpression()), !dbg !1097
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19, !dbg !1098
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()), !dbg !1095
  store i32 1, ptr %4, align 4, !dbg !1099, !tbaa !1100
  %5 = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #19, !dbg !1101
  store i32 %5, ptr %0, align 4, !dbg !1103, !tbaa !1100
  %6 = icmp slt i32 %5, 0, !dbg !1104
  br i1 %6, label %7, label %9, !dbg !1105

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef 23, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.1.10) #19, !dbg !1106
  br label %35, !dbg !1108

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !1093, metadata !DIExpression(DW_OP_deref)), !dbg !1095
  %10 = call i32 @setsockopt(i32 noundef %5, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %4, i32 noundef 4) #19, !dbg !1109
  %11 = icmp slt i32 %10, 0, !dbg !1111
  br i1 %11, label %12, label %14, !dbg !1112

12:                                               ; preds = %9
  %13 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef 29, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.2.11) #19, !dbg !1113
  br label %14, !dbg !1113

14:                                               ; preds = %12, %9
  %15 = load i32, ptr %0, align 4, !dbg !1114, !tbaa !1100
  call void @llvm.dbg.value(metadata ptr %4, metadata !1093, metadata !DIExpression(DW_OP_deref)), !dbg !1095
  %16 = call i32 @setsockopt(i32 noundef %15, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %4, i32 noundef 4) #19, !dbg !1116
  %17 = icmp slt i32 %16, 0, !dbg !1117
  br i1 %17, label %18, label %20, !dbg !1118

18:                                               ; preds = %14
  %19 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef 32, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.3.12) #19, !dbg !1119
  br label %20, !dbg !1119

20:                                               ; preds = %18, %14
  call void @llvm.dbg.value(metadata i32 16, metadata !1092, metadata !DIExpression()), !dbg !1095
  %21 = getelementptr inbounds i8, ptr %3, i64 4, !dbg !1120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %21, i8 0, i64 12, i1 false), !dbg !1120
  store i16 2, ptr %3, align 4, !dbg !1121, !tbaa !1122
  %22 = call i16 @llvm.bswap.i16(i16 %1)
  %23 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i64 0, i32 1, !dbg !1125
  store i16 %22, ptr %23, align 2, !dbg !1126, !tbaa !1127
  %24 = load i32, ptr %0, align 4, !dbg !1128, !tbaa !1100
  %25 = call i32 @bind(i32 noundef %24, ptr nonnull %3, i32 noundef 16) #19, !dbg !1130
  %26 = icmp slt i32 %25, 0, !dbg !1131
  br i1 %26, label %27, label %29, !dbg !1132

27:                                               ; preds = %20
  %28 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef 40, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.4.13) #19, !dbg !1133
  br label %35, !dbg !1135

29:                                               ; preds = %20
  %30 = load i32, ptr %0, align 4, !dbg !1136, !tbaa !1100
  %31 = call i32 @listen(i32 noundef %30, i32 noundef 4096) #19, !dbg !1138
  %32 = icmp eq i32 %31, 0, !dbg !1138
  br i1 %32, label %35, label %33, !dbg !1139

33:                                               ; preds = %29
  %34 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef 44, ptr noundef nonnull @__FUNCTION__.server_create_listening_socket, ptr noundef nonnull @.str.5.14) #19, !dbg !1140
  br label %35, !dbg !1142

35:                                               ; preds = %33, %29, %27, %7
  %36 = phi i32 [ -5, %7 ], [ -9, %27 ], [ -9, %33 ], [ 1, %29 ], !dbg !1095
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19, !dbg !1143
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19, !dbg !1143
  ret i32 %36, !dbg !1143
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1144 i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1147 i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind
declare !dbg !1153 i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1243 i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @server_loop(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1246 {
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1251, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i32 %1, metadata !1252, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i32 %2, metadata !1253, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1255, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19, !dbg !1261
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19, !dbg !1262
  call void @llvm.dbg.value(metadata i32 1, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i32 1, ptr %6, align 4, !dbg !1263, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 16, metadata !1256, metadata !DIExpression()), !dbg !1258
  store i32 16, ptr %5, align 4, !dbg !1264, !tbaa !1100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !1265
  %7 = load i32, ptr %0, align 4, !dbg !1266, !tbaa !1267
  %8 = icmp eq i32 %7, 0, !dbg !1268
  br i1 %8, label %21, label %9, !dbg !1268

9:                                                ; preds = %18, %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1256, metadata !DIExpression(DW_OP_deref)), !dbg !1258
  %10 = call i32 @accept(i32 noundef %1, ptr nonnull %4, ptr noundef nonnull %5) #19, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %10, metadata !1254, metadata !DIExpression()), !dbg !1258
  %11 = icmp slt i32 %10, 0, !dbg !1272
  br i1 %11, label %18, label %12, !dbg !1273

12:                                               ; preds = %9
  call void @llvm.dbg.value(metadata ptr %6, metadata !1257, metadata !DIExpression(DW_OP_deref)), !dbg !1258
  %13 = call i32 @setsockopt(i32 noundef %10, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %6, i32 noundef 4) #19, !dbg !1274
  %14 = icmp slt i32 %13, 0, !dbg !1276
  br i1 %14, label %15, label %17, !dbg !1277

15:                                               ; preds = %12
  %16 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef 66, ptr noundef nonnull @__FUNCTION__.server_loop, ptr noundef nonnull @.str.6.15) #19, !dbg !1278
  br label %17, !dbg !1278

17:                                               ; preds = %15, %12
  call void @connection_thread_push_socket(i32 noundef %2, i32 noundef %10) #19, !dbg !1279
  br label %18, !dbg !1268

18:                                               ; preds = %17, %9
  %19 = load i32, ptr %0, align 4, !dbg !1266, !tbaa !1267
  %20 = icmp eq i32 %19, 0, !dbg !1268
  br i1 %20, label %21, label %9, !dbg !1268, !llvm.loop !1280

21:                                               ; preds = %18, %3
  %22 = call i32 @close(i32 noundef %1) #19, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19, !dbg !1283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19, !dbg !1283
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19, !dbg !1283
  ret void, !dbg !1283
}

declare !dbg !1284 i32 @accept(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

declare !dbg !1330 i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @command_ping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 !dbg !1333 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1366, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %1, metadata !1367, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %2, metadata !1368, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %3, metadata !1369, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %4, metadata !1370, metadata !DIExpression()), !dbg !1371
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.16, i32 noundef 13, ptr noundef nonnull @__FUNCTION__.command_ping, ptr noundef nonnull @.str.1.17) #19, !dbg !1372
  %7 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !1373
  ret i32 %7, !dbg !1374
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noalias nonnull ptr @writer_loop(ptr nocapture noundef readonly %0) #2 !dbg !1375 {
  %2 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1379, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata ptr %0, metadata !1380, metadata !DIExpression()), !dbg !1400
  %3 = tail call i32 @nn_socket(i32 noundef 1, i32 noundef 81) #19, !dbg !1401
  call void @llvm.dbg.value(metadata i32 %3, metadata !1381, metadata !DIExpression()), !dbg !1400
  %4 = icmp slt i32 %3, 0, !dbg !1403
  br i1 %4, label %10, label %5, !dbg !1404

5:                                                ; preds = %1
  %6 = tail call i32 @nn_bind(i32 noundef %3, ptr noundef nonnull @.str.18) #19, !dbg !1405
  %7 = icmp slt i32 %6, 0, !dbg !1406
  br i1 %7, label %10, label %8, !dbg !1407

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.finedb_s, ptr %0, i64 0, i32 1
  br label %12, !dbg !1408

10:                                               ; preds = %5, %1
  %11 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.1.19, i32 noundef 17, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.2.20) #19, !dbg !1409
  tail call void @exit(i32 noundef 6) #20, !dbg !1411
  unreachable, !dbg !1411

12:                                               ; preds = %86, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19, !dbg !1412
  call void @llvm.dbg.value(metadata ptr %2, metadata !1382, metadata !DIExpression(DW_OP_deref)), !dbg !1413
  %13 = call i32 @nn_recv(i32 noundef %3, ptr noundef nonnull %2, i64 noundef 8, i32 noundef 0) #19, !dbg !1414
  %14 = icmp slt i32 %13, 0, !dbg !1416
  br i1 %14, label %86, label %15, !dbg !1408, !llvm.loop !1417

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !1420, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %16, metadata !1382, metadata !DIExpression()), !dbg !1413
  %17 = load i32, ptr %16, align 8, !dbg !1422, !tbaa !996
  switch i32 %17, label %69 [
    i32 0, label %18
    i32 1, label %51
  ], !dbg !1423

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.writer_msg_s, ptr %16, i64 0, i32 2, !dbg !1424
  %20 = load ptr, ptr %19, align 8, !dbg !1424, !tbaa !1426
  %21 = getelementptr inbounds %struct.writer_msg_s, ptr %16, i64 0, i32 3, !dbg !1424
  %22 = load ptr, ptr %21, align 8, !dbg !1424, !tbaa !1427
  %23 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1.19, i32 noundef 29, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.3.21, ptr noundef %20, ptr noundef %22) #19, !dbg !1424
  %24 = load ptr, ptr %9, align 8, !dbg !1428, !tbaa !1027
  %25 = load ptr, ptr %2, align 8, !dbg !1430, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %25, metadata !1382, metadata !DIExpression()), !dbg !1413
  %26 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 4, !dbg !1431
  %27 = load i32, ptr %26, align 8, !dbg !1431, !tbaa !1432
  %28 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 1, !dbg !1433
  %29 = load ptr, ptr %28, align 8, !dbg !1433, !tbaa !1013
  %30 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 2, !dbg !1434
  %31 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 3, !dbg !1435
  %32 = load ptr, ptr %30, align 8, !dbg !1436
  %33 = getelementptr inbounds %struct.writer_msg_s, ptr %25, i64 0, i32 2, i32 1, !dbg !1436
  %34 = load i64, ptr %33, align 8, !dbg !1436
  %35 = call i32 @database_put(ptr noundef %24, ptr noundef null, i32 noundef %27, ptr noundef %29, ptr %32, i64 %34, ptr noundef nonnull byval(%struct.ybin_s) align 8 %31) #19, !dbg !1436
  %36 = icmp eq i32 %35, 1, !dbg !1437
  br i1 %36, label %37, label %39, !dbg !1438

37:                                               ; preds = %18
  %38 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1.19, i32 noundef 31, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.4.22) #19, !dbg !1439
  br label %41, !dbg !1439

39:                                               ; preds = %18
  %40 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.1.19, i32 noundef 33, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.5.23) #19, !dbg !1440
  br label %41

41:                                               ; preds = %39, %37
  %42 = load ptr, ptr %2, align 8, !dbg !1441, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %42, metadata !1382, metadata !DIExpression()), !dbg !1413
  %43 = getelementptr inbounds %struct.writer_msg_s, ptr %42, i64 0, i32 3, !dbg !1441
  %44 = load ptr, ptr %43, align 8, !dbg !1441, !tbaa !1427
  %45 = icmp eq ptr %44, null, !dbg !1441
  br i1 %45, label %48, label %46, !dbg !1441

46:                                               ; preds = %41
  call void @free(ptr noundef nonnull %44) #19, !dbg !1441
  %47 = load ptr, ptr %2, align 8, !dbg !1441, !tbaa !788
  br label %48, !dbg !1441

48:                                               ; preds = %46, %41
  %49 = phi ptr [ %42, %41 ], [ %47, %46 ], !dbg !1441
  call void @llvm.dbg.value(metadata ptr %49, metadata !1382, metadata !DIExpression()), !dbg !1413
  %50 = getelementptr inbounds %struct.writer_msg_s, ptr %49, i64 0, i32 3, !dbg !1441
  store ptr null, ptr %50, align 8, !dbg !1441, !tbaa !1427
  br label %69, !dbg !1442

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.writer_msg_s, ptr %16, i64 0, i32 2, !dbg !1443
  %53 = load ptr, ptr %52, align 8, !dbg !1443, !tbaa !1426
  %54 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1.19, i32 noundef 37, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.6.24, ptr noundef %53) #19, !dbg !1443
  %55 = load ptr, ptr %9, align 8, !dbg !1446, !tbaa !1027
  %56 = load ptr, ptr %2, align 8, !dbg !1448, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %56, metadata !1382, metadata !DIExpression()), !dbg !1413
  %57 = getelementptr inbounds %struct.writer_msg_s, ptr %56, i64 0, i32 1, !dbg !1449
  %58 = load ptr, ptr %57, align 8, !dbg !1449, !tbaa !1013
  %59 = getelementptr inbounds %struct.writer_msg_s, ptr %56, i64 0, i32 2, !dbg !1450
  %60 = load ptr, ptr %59, align 8, !dbg !1451
  %61 = getelementptr inbounds %struct.writer_msg_s, ptr %56, i64 0, i32 2, i32 1, !dbg !1451
  %62 = load i64, ptr %61, align 8, !dbg !1451
  %63 = call i32 @database_del(ptr noundef %55, ptr noundef null, ptr noundef %58, ptr %60, i64 %62) #19, !dbg !1451
  %64 = icmp eq i32 %63, 1, !dbg !1452
  br i1 %64, label %65, label %67, !dbg !1453

65:                                               ; preds = %51
  %66 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.1.19, i32 noundef 39, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.7.25) #19, !dbg !1454
  br label %69, !dbg !1454

67:                                               ; preds = %51
  %68 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.1.19, i32 noundef 41, ptr noundef nonnull @__FUNCTION__.writer_loop, ptr noundef nonnull @.str.8.26) #19, !dbg !1455
  br label %69

69:                                               ; preds = %67, %65, %48, %15
  %70 = load ptr, ptr %2, align 8, !dbg !1456, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %70, metadata !1382, metadata !DIExpression()), !dbg !1413
  %71 = getelementptr inbounds %struct.writer_msg_s, ptr %70, i64 0, i32 1, !dbg !1456
  %72 = load ptr, ptr %71, align 8, !dbg !1456, !tbaa !1013
  %73 = icmp eq ptr %72, null, !dbg !1456
  br i1 %73, label %76, label %74, !dbg !1456

74:                                               ; preds = %69
  call void @free(ptr noundef nonnull %72) #19, !dbg !1456
  %75 = load ptr, ptr %2, align 8, !dbg !1456, !tbaa !788
  br label %76, !dbg !1456

76:                                               ; preds = %74, %69
  %77 = phi ptr [ %70, %69 ], [ %75, %74 ], !dbg !1456
  call void @llvm.dbg.value(metadata ptr %77, metadata !1382, metadata !DIExpression()), !dbg !1413
  %78 = getelementptr inbounds %struct.writer_msg_s, ptr %77, i64 0, i32 1, !dbg !1456
  store ptr null, ptr %78, align 8, !dbg !1456, !tbaa !1013
  call void @llvm.dbg.value(metadata ptr %77, metadata !1382, metadata !DIExpression()), !dbg !1413
  %79 = getelementptr inbounds %struct.writer_msg_s, ptr %77, i64 0, i32 2, !dbg !1457
  %80 = load ptr, ptr %79, align 8, !dbg !1457, !tbaa !1426
  %81 = icmp eq ptr %80, null, !dbg !1457
  br i1 %81, label %84, label %82, !dbg !1457

82:                                               ; preds = %76
  call void @free(ptr noundef nonnull %80) #19, !dbg !1457
  %83 = load ptr, ptr %2, align 8, !dbg !1457, !tbaa !788
  br label %84, !dbg !1457

84:                                               ; preds = %82, %76
  %85 = phi ptr [ %77, %76 ], [ %83, %82 ], !dbg !1457
  call void @llvm.dbg.value(metadata ptr %85, metadata !1382, metadata !DIExpression()), !dbg !1413
  call void @free(ptr noundef %85) #19, !dbg !1458
  call void @llvm.dbg.value(metadata ptr null, metadata !1382, metadata !DIExpression()), !dbg !1413
  br label %86, !dbg !1459

86:                                               ; preds = %84, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19, !dbg !1459
  br label %12
}

declare !dbg !1460 i32 @nn_socket(i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !1461 i32 @nn_bind(i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1464 i32 @nn_recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @finedb_init(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i64 noundef %3, i32 noundef %4, i16 noundef zeroext %5) local_unnamed_addr #0 !dbg !1467 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1482, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i16 %1, metadata !1483, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i16 %2, metadata !1484, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i64 %3, metadata !1485, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %4, metadata !1486, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i16 %5, metadata !1487, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata ptr null, metadata !1488, metadata !DIExpression()), !dbg !1507
  %7 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #21, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %7, metadata !1488, metadata !DIExpression()), !dbg !1507
  store i32 1, ptr %7, align 8, !dbg !1509, !tbaa !1510
  %8 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 2, !dbg !1511
  store i32 -1, ptr %8, align 8, !dbg !1512, !tbaa !1513
  %9 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 3, !dbg !1514
  %10 = tail call ptr @yv_create(i32 noundef 256) #19, !dbg !1515
  %11 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 5, !dbg !1516
  store ptr %10, ptr %11, align 8, !dbg !1517, !tbaa !1518
  %12 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 6, !dbg !1519
  store i16 %5, ptr %12, align 8, !dbg !1520, !tbaa !1521
  %13 = icmp eq ptr %0, null, !dbg !1522
  br i1 %13, label %14, label %20, !dbg !1523

14:                                               ; preds = %6
  %15 = tail call ptr @get_self_path() #19, !dbg !1524
  call void @llvm.dbg.value(metadata ptr %15, metadata !1490, metadata !DIExpression()), !dbg !1525
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #22, !dbg !1526
  %17 = add i64 %16, 17, !dbg !1526
  %18 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %17) #21, !dbg !1526
  call void @llvm.dbg.value(metadata ptr %18, metadata !1482, metadata !DIExpression()), !dbg !1507
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %15, ptr noundef nonnull @.str.1.30) #19, !dbg !1527
  br label %20, !dbg !1528

20:                                               ; preds = %14, %6
  %21 = phi ptr [ %18, %14 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata ptr %21, metadata !1482, metadata !DIExpression()), !dbg !1507
  %22 = zext i16 %2 to i32, !dbg !1529
  %23 = tail call ptr @database_open(ptr noundef %21, i64 noundef %3, i32 noundef %22, i32 noundef %4) #19, !dbg !1530
  %24 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 1, !dbg !1531
  store ptr %23, ptr %24, align 8, !dbg !1532, !tbaa !1027
  %25 = icmp eq ptr %23, null, !dbg !1533
  br i1 %25, label %26, label %28, !dbg !1535

26:                                               ; preds = %20
  %27 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.2.31, i32 noundef 38, ptr noundef nonnull @__FUNCTION__.finedb_init, ptr noundef nonnull @.str.3.32) #19, !dbg !1536
  tail call void @exit(i32 noundef 1) #20, !dbg !1538
  unreachable, !dbg !1538

28:                                               ; preds = %20
  %29 = tail call i32 @nn_socket(i32 noundef 1, i32 noundef 80) #19, !dbg !1539
  store i32 %29, ptr %9, align 4, !dbg !1541, !tbaa !1542
  %30 = icmp slt i32 %29, 0, !dbg !1543
  br i1 %30, label %34, label %31, !dbg !1544

31:                                               ; preds = %28
  %32 = tail call i32 @nn_bind(i32 noundef %29, ptr noundef nonnull @.str.4.33) #19, !dbg !1545
  %33 = icmp slt i32 %32, 0, !dbg !1546
  br i1 %33, label %34, label %36, !dbg !1547

34:                                               ; preds = %31, %28
  %35 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.2.31, i32 noundef 44, ptr noundef nonnull @__FUNCTION__.finedb_init, ptr noundef nonnull @.str.5.34) #19, !dbg !1548
  tail call void @database_close(ptr noundef nonnull %23) #19, !dbg !1550
  tail call void @exit(i32 noundef 2) #20, !dbg !1551
  unreachable, !dbg !1551

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.finedb_s, ptr %7, i64 0, i32 4, !dbg !1552
  %38 = tail call i32 @pthread_create(ptr noundef nonnull %37, ptr noundef null, ptr noundef nonnull @writer_loop, ptr noundef nonnull %7) #19, !dbg !1554
  %39 = icmp eq i32 %38, 0, !dbg !1554
  br i1 %39, label %40, label %42, !dbg !1555

40:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i16 0, metadata !1489, metadata !DIExpression()), !dbg !1507
  %41 = icmp eq i16 %2, 0, !dbg !1556
  br i1 %41, label %54, label %45, !dbg !1557

42:                                               ; preds = %36
  %43 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str.2.31, i32 noundef 50, ptr noundef nonnull @__FUNCTION__.finedb_init, ptr noundef nonnull @.str.6.35) #19, !dbg !1558
  %44 = load ptr, ptr %24, align 8, !dbg !1560, !tbaa !1027
  tail call void @database_close(ptr noundef %44) #19, !dbg !1561
  tail call void @exit(i32 noundef 3) #20, !dbg !1562
  unreachable, !dbg !1562

45:                                               ; preds = %51, %40
  %46 = phi i16 [ %52, %51 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i16 %46, metadata !1489, metadata !DIExpression()), !dbg !1507
  %47 = tail call ptr @connection_thread_new(ptr noundef nonnull %7) #19, !dbg !1563
  call void @llvm.dbg.value(metadata ptr %47, metadata !1493, metadata !DIExpression()), !dbg !1565
  %48 = icmp eq ptr %47, null, !dbg !1566
  br i1 %48, label %51, label %49, !dbg !1567

49:                                               ; preds = %45
  %50 = tail call i32 @yv_add(ptr noundef nonnull %11, ptr noundef nonnull %47) #19, !dbg !1568
  br label %51, !dbg !1568

51:                                               ; preds = %49, %45
  %52 = add nuw i16 %46, 1, !dbg !1569
  call void @llvm.dbg.value(metadata i16 %52, metadata !1489, metadata !DIExpression()), !dbg !1507
  %53 = icmp eq i16 %52, %2, !dbg !1556
  br i1 %53, label %54, label %45, !dbg !1557, !llvm.loop !1570

54:                                               ; preds = %51, %40
  %55 = tail call i32 @server_create_listening_socket(ptr noundef nonnull %8, i16 noundef zeroext %1) #19, !dbg !1572
  %56 = icmp eq i32 %55, 1, !dbg !1574
  br i1 %56, label %59, label %57, !dbg !1575

57:                                               ; preds = %54
  %58 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef nonnull @.str.2.31, i32 noundef 63, ptr noundef nonnull @__FUNCTION__.finedb_init, ptr noundef nonnull @.str.7.36) #19, !dbg !1576
  tail call void @exit(i32 noundef 4) #20, !dbg !1578
  unreachable, !dbg !1578

59:                                               ; preds = %54
  ret ptr %7, !dbg !1579
}

declare !dbg !1580 ptr @yv_create(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1584 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare !dbg !1587 noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !1592 i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1611 i32 @yv_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @finedb_start(ptr noundef %0) local_unnamed_addr #0 !dbg !1615 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1619, metadata !DIExpression()), !dbg !1620
  %2 = getelementptr inbounds %struct.finedb_s, ptr %0, i64 0, i32 2, !dbg !1621
  %3 = load i32, ptr %2, align 8, !dbg !1621, !tbaa !1513
  %4 = getelementptr inbounds %struct.finedb_s, ptr %0, i64 0, i32 3, !dbg !1622
  %5 = load i32, ptr %4, align 4, !dbg !1622, !tbaa !1542
  tail call void @server_loop(ptr noundef %0, i32 noundef %3, i32 noundef %5) #19, !dbg !1623
  ret void, !dbg !1624
}

; Function Attrs: nounwind uwtable
define dso_local void @finedb_stop(ptr nocapture noundef %0) local_unnamed_addr #0 !dbg !1625 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i32 0, ptr %0, align 8, !dbg !1629, !tbaa !1510
  %2 = getelementptr inbounds %struct.finedb_s, ptr %0, i64 0, i32 1, !dbg !1630
  %3 = load ptr, ptr %2, align 8, !dbg !1630, !tbaa !1027
  tail call void @database_close(ptr noundef %3) #19, !dbg !1631
  ret void, !dbg !1632
}

; Function Attrs: nounwind uwtable
define dso_local i32 @command_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !1633 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snappy_env, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1666, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %1, metadata !1667, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %2, metadata !1668, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %3, metadata !1669, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %4, metadata !1670, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 0, metadata !1671, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 0, metadata !1672, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr null, metadata !1679, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr null, metadata !1680, metadata !DIExpression()), !dbg !1714
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19, !dbg !1715
  call void @llvm.dbg.value(metadata ptr null, metadata !1681, metadata !DIExpression()), !dbg !1714
  store ptr null, ptr %6, align 8, !dbg !1716, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19, !dbg !1717
  call void @llvm.dbg.value(metadata ptr null, metadata !1698, metadata !DIExpression()), !dbg !1714
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19, !dbg !1718
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1699, metadata !DIExpression()), !dbg !1719
  %9 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !1720
  %10 = load ptr, ptr %9, align 8, !dbg !1720, !tbaa !1030
  call void @llvm.dbg.value(metadata ptr %10, metadata !1707, metadata !DIExpression()), !dbg !1714
  %11 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef 25, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.1.42) #19, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %1, metadata !1667, metadata !DIExpression()), !dbg !1714
  %12 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef 2) #19, !dbg !1722
  %13 = icmp eq i32 %12, 1, !dbg !1724
  br i1 %13, label %14, label %124, !dbg !1725

14:                                               ; preds = %5
  %15 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 2) #19, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %15, metadata !1673, metadata !DIExpression()), !dbg !1714
  %16 = load i16, ptr %15, align 2, !dbg !1727, !tbaa !971
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  call void @llvm.dbg.value(metadata i16 %17, metadata !1674, metadata !DIExpression()), !dbg !1714
  %18 = zext i16 %17 to i64, !dbg !1728
  %19 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %18) #19, !dbg !1730
  %20 = icmp eq i32 %19, 1, !dbg !1731
  br i1 %20, label %21, label %124, !dbg !1732

21:                                               ; preds = %14
  %22 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %18) #19, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %22, metadata !1678, metadata !DIExpression()), !dbg !1714
  %23 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %18) #21, !dbg !1734
  call void @llvm.dbg.value(metadata ptr %23, metadata !1679, metadata !DIExpression()), !dbg !1714
  %24 = icmp eq ptr %23, null, !dbg !1736
  br i1 %24, label %124, label %25, !dbg !1737

25:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %22, i64 %18, i1 false), !dbg !1738
  %26 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef 40, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.2.43, ptr noundef nonnull %23) #19, !dbg !1739
  %27 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %4, i64 noundef 4) #19, !dbg !1740
  %28 = icmp eq i32 %27, 1, !dbg !1742
  br i1 %28, label %29, label %126, !dbg !1743

29:                                               ; preds = %25
  %30 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 4) #19, !dbg !1744
  call void @llvm.dbg.value(metadata ptr %30, metadata !1675, metadata !DIExpression()), !dbg !1714
  %31 = load i32, ptr %30, align 4, !dbg !1745, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %31, metadata !1746, metadata !DIExpression()), !dbg !1752
  %32 = tail call i32 @llvm.bswap.i32(i32 %31), !dbg !1754
  call void @llvm.dbg.value(metadata i32 %32, metadata !1677, metadata !DIExpression()), !dbg !1714
  %33 = icmp eq i32 %31, 0, !dbg !1755
  br i1 %33, label %44, label %34, !dbg !1757

34:                                               ; preds = %29
  %35 = zext i32 %32 to i64, !dbg !1758
  %36 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %35) #19, !dbg !1761
  %37 = icmp eq i32 %36, 1, !dbg !1762
  br i1 %37, label %38, label %126, !dbg !1763

38:                                               ; preds = %34
  %39 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %35) #19, !dbg !1764
  call void @llvm.dbg.value(metadata ptr %39, metadata !1678, metadata !DIExpression()), !dbg !1714
  %40 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %35) #21, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %40, metadata !1680, metadata !DIExpression()), !dbg !1714
  %41 = icmp eq ptr %40, null, !dbg !1767
  br i1 %41, label %126, label %42, !dbg !1768

42:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %39, i64 %35, i1 false), !dbg !1769
  %43 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef 54, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.3.44, ptr noundef nonnull %40) #19, !dbg !1770
  br label %44, !dbg !1771

44:                                               ; preds = %42, %29
  %45 = phi ptr [ %40, %42 ], [ null, %29 ], !dbg !1714
  call void @llvm.dbg.value(metadata ptr %45, metadata !1680, metadata !DIExpression()), !dbg !1714
  %46 = icmp eq i32 %1, 0, !dbg !1772
  br i1 %46, label %47, label %49, !dbg !1774

47:                                               ; preds = %44
  %48 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !1775
  br label %49, !dbg !1775

49:                                               ; preds = %47, %44
  %50 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #21, !dbg !1776
  call void @llvm.dbg.value(metadata ptr %50, metadata !1681, metadata !DIExpression()), !dbg !1714
  store ptr %50, ptr %6, align 8, !dbg !1778, !tbaa !788
  %51 = icmp eq ptr %50, null, !dbg !1779
  br i1 %51, label %126, label %52, !dbg !1780

52:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %50, metadata !1681, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %50, metadata !1681, metadata !DIExpression()), !dbg !1714
  %53 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 2, !dbg !1781
  %54 = tail call ptr @ybin_set(ptr noundef nonnull %53, ptr noundef nonnull %23, i64 noundef %18) #19, !dbg !1782
  %55 = icmp eq i32 %2, 0, !dbg !1783
  br i1 %55, label %60, label %56, !dbg !1785

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata ptr %50, metadata !1681, metadata !DIExpression()), !dbg !1714
  %57 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 3, !dbg !1786
  %58 = zext i32 %32 to i64, !dbg !1788
  %59 = tail call ptr @ybin_set(ptr noundef nonnull %57, ptr noundef %45, i64 noundef %58) #19, !dbg !1789
  br label %85, !dbg !1790

60:                                               ; preds = %52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !dbg !1791
  %61 = call i32 @snappy_init_env(ptr noundef nonnull %8) #19, !dbg !1793
  %62 = icmp eq i32 %61, 0, !dbg !1793
  br i1 %62, label %65, label %63, !dbg !1795

63:                                               ; preds = %60
  %64 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.41, i32 noundef 73, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.4.45) #19, !dbg !1796
  br label %126, !dbg !1798

65:                                               ; preds = %60
  %66 = zext i32 %32 to i64, !dbg !1799
  %67 = call i64 @snappy_max_compressed_length(i64 noundef %66) #19, !dbg !1799
  %68 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %67) #21, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %68, metadata !1698, metadata !DIExpression()), !dbg !1714
  %69 = icmp eq ptr %68, null, !dbg !1801
  br i1 %69, label %70, label %72, !dbg !1802

70:                                               ; preds = %65
  %71 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.41, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.5.46) #19, !dbg !1803
  br label %126, !dbg !1805

72:                                               ; preds = %65
  call void @llvm.dbg.value(metadata ptr %7, metadata !1697, metadata !DIExpression(DW_OP_deref)), !dbg !1714
  %73 = call i32 @snappy_compress(ptr noundef nonnull %8, ptr noundef %45, i64 noundef %66, ptr noundef nonnull %68, ptr noundef nonnull %7) #19, !dbg !1806
  %74 = icmp eq i32 %73, 0, !dbg !1806
  br i1 %74, label %77, label %75, !dbg !1808

75:                                               ; preds = %72
  call void @free(ptr noundef nonnull %68) #19, !dbg !1809
  call void @llvm.dbg.value(metadata ptr null, metadata !1698, metadata !DIExpression()), !dbg !1714
  %76 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.41, i32 noundef 82, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.6.47) #19, !dbg !1811
  br label %126, !dbg !1812

77:                                               ; preds = %72
  %78 = load i64, ptr %7, align 8, !dbg !1813, !tbaa !1814
  call void @llvm.dbg.value(metadata i64 %78, metadata !1697, metadata !DIExpression()), !dbg !1714
  %79 = getelementptr inbounds i8, ptr %68, i64 %78, !dbg !1815
  store i8 0, ptr %79, align 1, !dbg !1816, !tbaa !1267
  call void @snappy_free_env(ptr noundef nonnull %8) #19, !dbg !1817
  call void @llvm.dbg.value(metadata ptr %50, metadata !1681, metadata !DIExpression()), !dbg !1714
  %80 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 3, !dbg !1818
  %81 = load i64, ptr %7, align 8, !dbg !1819, !tbaa !1814
  call void @llvm.dbg.value(metadata i64 %81, metadata !1697, metadata !DIExpression()), !dbg !1714
  %82 = call ptr @ybin_set(ptr noundef nonnull %80, ptr noundef nonnull %68, i64 noundef %81) #19, !dbg !1820
  %83 = icmp eq ptr %45, null, !dbg !1821
  br i1 %83, label %85, label %84, !dbg !1821

84:                                               ; preds = %77
  call void @free(ptr noundef nonnull %45) #19, !dbg !1821
  br label %85, !dbg !1821

85:                                               ; preds = %84, %77, %56
  %86 = phi ptr [ %45, %56 ], [ null, %77 ], [ null, %84 ], !dbg !1714
  call void @llvm.dbg.value(metadata ptr %86, metadata !1680, metadata !DIExpression()), !dbg !1714
  br i1 %46, label %87, label %102, !dbg !1822

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !1824
  %89 = load ptr, ptr %88, align 8, !dbg !1824, !tbaa !1006
  %90 = icmp eq ptr %89, null, !dbg !1826
  br i1 %90, label %93, label %91, !dbg !1826

91:                                               ; preds = %87
  %92 = call noalias ptr @strdup(ptr noundef nonnull %89) #19, !dbg !1827
  br label %93, !dbg !1826

93:                                               ; preds = %91, %87
  %94 = phi ptr [ %92, %91 ], [ null, %87 ], !dbg !1826
  call void @llvm.dbg.value(metadata ptr %50, metadata !1681, metadata !DIExpression()), !dbg !1714
  %95 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 1, !dbg !1828
  store ptr %94, ptr %95, align 8, !dbg !1829, !tbaa !1013
  %96 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 3, !dbg !1830
  %97 = load i32, ptr %96, align 4, !dbg !1830, !tbaa !1016
  call void @llvm.dbg.value(metadata ptr %6, metadata !1681, metadata !DIExpression(DW_OP_deref)), !dbg !1714
  %98 = call i32 @nn_send(i32 noundef %97, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0) #19, !dbg !1832
  %99 = icmp slt i32 %98, 0, !dbg !1833
  br i1 %99, label %100, label %137, !dbg !1834

100:                                              ; preds = %93
  %101 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.41, i32 noundef 94, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.7.48) #19, !dbg !1835
  br label %126, !dbg !1837

102:                                              ; preds = %85
  call void @llvm.dbg.value(metadata ptr %10, metadata !1707, metadata !DIExpression()), !dbg !1714
  %103 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !1838
  %104 = load ptr, ptr %103, align 8, !dbg !1838, !tbaa !1025
  %105 = getelementptr inbounds %struct.finedb_s, ptr %104, i64 0, i32 1, !dbg !1840
  %106 = load ptr, ptr %105, align 8, !dbg !1840, !tbaa !1027
  %107 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !1841
  %108 = load ptr, ptr %107, align 8, !dbg !1841, !tbaa !1006
  call void @llvm.dbg.value(metadata ptr %50, metadata !1681, metadata !DIExpression()), !dbg !1714
  %109 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 3, !dbg !1842
  %110 = load ptr, ptr %53, align 8, !dbg !1843
  %111 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 2, i32 1, !dbg !1843
  %112 = load i64, ptr %111, align 8, !dbg !1843
  %113 = call i32 @database_put(ptr noundef %106, ptr noundef %10, i32 noundef 0, ptr noundef %108, ptr %110, i64 %112, ptr noundef nonnull byval(%struct.ybin_s) align 8 %109) #19, !dbg !1843
  %114 = icmp eq i32 %113, 1, !dbg !1844
  br i1 %114, label %115, label %117, !dbg !1845

115:                                              ; preds = %102
  %116 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef 125, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.12) #19, !dbg !1846
  call void @llvm.dbg.value(metadata i8 1, metadata !1696, metadata !DIExpression()), !dbg !1714
  br label %119, !dbg !1848

117:                                              ; preds = %102
  %118 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.41, i32 noundef 128, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.13) #19, !dbg !1849
  call void @llvm.dbg.value(metadata i8 0, metadata !1696, metadata !DIExpression()), !dbg !1714
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ 1, %115 ], [ 6, %117 ], !dbg !1714
  %121 = phi ptr [ @.str.16.49, %115 ], [ @.str.17, %117 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 poison, metadata !1696, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 poison, metadata !1696, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.label(metadata !1712), !dbg !1851
  %122 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef 138, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.15, ptr noundef nonnull %121) #19, !dbg !1852
  %123 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %120, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !1853
  br label %137, !dbg !1854

124:                                              ; preds = %21, %14, %5
  call void @llvm.dbg.value(metadata ptr poison, metadata !1680, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr null, metadata !1679, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.label(metadata !1713), !dbg !1855
  %125 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.41, i32 noundef 142, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.18.50) #19, !dbg !1856
  call void @llvm.dbg.value(metadata ptr null, metadata !1679, metadata !DIExpression()), !dbg !1714
  br label %131, !dbg !1857

126:                                              ; preds = %100, %75, %70, %63, %49, %38, %34, %25
  %127 = phi ptr [ %45, %75 ], [ %45, %70 ], [ %45, %63 ], [ %86, %100 ], [ %45, %49 ], [ null, %38 ], [ null, %34 ], [ null, %25 ]
  call void @llvm.dbg.value(metadata ptr %127, metadata !1680, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %23, metadata !1679, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.label(metadata !1713), !dbg !1855
  %128 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.41, i32 noundef 142, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.18.50) #19, !dbg !1856
  call void @free(ptr noundef nonnull %23) #19, !dbg !1858
  call void @llvm.dbg.value(metadata ptr null, metadata !1679, metadata !DIExpression()), !dbg !1714
  %129 = icmp eq ptr %127, null, !dbg !1857
  br i1 %129, label %131, label %130, !dbg !1857

130:                                              ; preds = %126
  call void @free(ptr noundef nonnull %127) #19, !dbg !1857
  br label %131, !dbg !1857

131:                                              ; preds = %130, %126, %124
  call void @llvm.dbg.value(metadata ptr null, metadata !1680, metadata !DIExpression()), !dbg !1714
  %132 = load ptr, ptr %6, align 8, !dbg !1859, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %132, metadata !1681, metadata !DIExpression()), !dbg !1714
  %133 = icmp eq ptr %132, null, !dbg !1859
  br i1 %133, label %135, label %134, !dbg !1859

134:                                              ; preds = %131
  call void @free(ptr noundef nonnull %132) #19, !dbg !1859
  br label %135, !dbg !1859

135:                                              ; preds = %134, %131
  call void @llvm.dbg.value(metadata ptr null, metadata !1681, metadata !DIExpression()), !dbg !1714
  store ptr null, ptr %6, align 8, !dbg !1859, !tbaa !788
  %136 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !1860
  br label %137, !dbg !1861

137:                                              ; preds = %135, %119, %93
  %138 = phi i32 [ -5, %135 ], [ %123, %119 ], [ 1, %93 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19, !dbg !1862
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19, !dbg !1862
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19, !dbg !1862
  ret i32 %138, !dbg !1862
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

declare !dbg !1863 i32 @snappy_init_env(ptr noundef) local_unnamed_addr #4

declare !dbg !1867 i64 @snappy_max_compressed_length(i64 noundef) local_unnamed_addr #4

declare !dbg !1870 i32 @snappy_compress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1874 void @snappy_free_env(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @command_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 !dbg !1877 {
  %6 = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1889, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %1, metadata !1890, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %2, metadata !1891, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %3, metadata !1892, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %4, metadata !1893, metadata !DIExpression()), !dbg !1897
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19, !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1894, metadata !DIExpression()), !dbg !1897
  store i8 0, ptr %6, align 1, !dbg !1899, !tbaa !1267
  %7 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef 20, ptr noundef nonnull @__FUNCTION__.command_list, ptr noundef nonnull @.str.1.52) #19, !dbg !1900
  %8 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %8, metadata !1895, metadata !DIExpression()), !dbg !1897
  %9 = icmp eq i32 %8, 1, !dbg !1902
  br i1 %9, label %10, label %28, !dbg !1904

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !1905
  %12 = load ptr, ptr %11, align 8, !dbg !1905, !tbaa !1025
  %13 = getelementptr inbounds %struct.finedb_s, ptr %12, i64 0, i32 1, !dbg !1907
  %14 = load ptr, ptr %13, align 8, !dbg !1907, !tbaa !1027
  %15 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !1908
  %16 = load ptr, ptr %15, align 8, !dbg !1908, !tbaa !1030
  %17 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !1909
  %18 = load ptr, ptr %17, align 8, !dbg !1909, !tbaa !1006
  %19 = tail call i32 @database_list(ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef nonnull @_command_list_loop, ptr noundef %0) #19, !dbg !1910
  %20 = icmp eq i32 %19, 1, !dbg !1911
  br i1 %20, label %21, label %28, !dbg !1912

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !1913
  %23 = load i32, ptr %22, align 8, !dbg !1913, !tbaa !1915
  call void @llvm.dbg.value(metadata ptr %6, metadata !1894, metadata !DIExpression(DW_OP_deref)), !dbg !1897
  %24 = call i64 @write(i32 noundef %23, ptr noundef nonnull %6, i64 noundef 1) #19, !dbg !1916
  %25 = icmp eq i64 %24, 1, !dbg !1917
  br i1 %25, label %26, label %28, !dbg !1918

26:                                               ; preds = %21
  %27 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef 31, ptr noundef nonnull @__FUNCTION__.command_list, ptr noundef nonnull @.str.2.53) #19, !dbg !1919
  br label %31, !dbg !1920

28:                                               ; preds = %21, %10, %5
  call void @llvm.dbg.label(metadata !1896), !dbg !1921
  %29 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.51, i32 noundef 34, ptr noundef nonnull @__FUNCTION__.command_list, ptr noundef nonnull @.str.3.54) #19, !dbg !1922
  %30 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !1923
  br label %31, !dbg !1924

31:                                               ; preds = %28, %26
  %32 = phi i32 [ -5, %28 ], [ 1, %26 ], !dbg !1897
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19, !dbg !1925
  ret i32 %32, !dbg !1925
}

; Function Attrs: nounwind uwtable
define internal i32 @_command_list_loop(ptr nocapture noundef readonly %0, ptr %1, i64 %2, ptr nocapture readnone %3, i64 %4) #0 !dbg !1926 {
  %6 = alloca i16, align 2
  %7 = alloca [2 x %struct.ybin_s], align 16
  %8 = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata ptr %1, metadata !1936, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %2, metadata !1936, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1965
  call void @llvm.dbg.value(metadata ptr poison, metadata !1937, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1965
  call void @llvm.dbg.value(metadata i64 poison, metadata !1937, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1965
  call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata ptr %0, metadata !1938, metadata !DIExpression()), !dbg !1965
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #19, !dbg !1966
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19, !dbg !1967
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1940, metadata !DIExpression()), !dbg !1968
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #19, !dbg !1969
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1949, metadata !DIExpression()), !dbg !1970
  %9 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef 47, ptr noundef nonnull @__FUNCTION__._command_list_loop, ptr noundef nonnull @.str.4.55, ptr noundef %1) #19, !dbg !1971
  store ptr null, ptr %8, align 8, !dbg !1972, !tbaa !1973
  %10 = getelementptr inbounds %struct.msghdr, ptr %8, i64 0, i32 1, !dbg !1975
  store i32 0, ptr %10, align 8, !dbg !1976, !tbaa !1977
  %11 = getelementptr inbounds %struct.msghdr, ptr %8, i64 0, i32 2, !dbg !1978
  store ptr %7, ptr %11, align 8, !dbg !1979, !tbaa !1980
  %12 = getelementptr inbounds %struct.msghdr, ptr %8, i64 0, i32 3, !dbg !1981
  store i64 2, ptr %12, align 8, !dbg !1982, !tbaa !1983
  %13 = getelementptr inbounds %struct.msghdr, ptr %8, i64 0, i32 4, !dbg !1984
  %14 = trunc i64 %2 to i16, !dbg !1985
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  call void @llvm.dbg.value(metadata i16 %15, metadata !1939, metadata !DIExpression()), !dbg !1965
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, i8 0, i64 20, i1 false), !dbg !1986
  store i16 %15, ptr %6, align 2, !dbg !1987, !tbaa !971
  store ptr %6, ptr %7, align 16, !dbg !1988, !tbaa !1989
  %16 = getelementptr inbounds %struct.ybin_s, ptr %7, i64 0, i32 1, !dbg !1991
  store i64 2, ptr %16, align 8, !dbg !1992, !tbaa !1993
  %17 = getelementptr inbounds [2 x %struct.ybin_s], ptr %7, i64 0, i64 1, !dbg !1994
  store ptr %1, ptr %17, align 16, !dbg !1995, !tbaa !1989
  %18 = getelementptr inbounds [2 x %struct.ybin_s], ptr %7, i64 0, i64 1, i32 1, !dbg !1996
  store i64 %2, ptr %18, align 8, !dbg !1997, !tbaa !1993
  %19 = add i64 %2, 2, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %19, metadata !1961, metadata !DIExpression()), !dbg !1965
  %20 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !1999
  %21 = load i32, ptr %20, align 8, !dbg !1999, !tbaa !1915
  %22 = call i64 @sendmsg(i32 noundef %21, ptr noundef nonnull %8, i32 noundef 0) #19, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %22, metadata !1964, metadata !DIExpression()), !dbg !1965
  %23 = icmp slt i64 %22, 0, !dbg !2001
  br i1 %23, label %24, label %26, !dbg !2003

24:                                               ; preds = %5
  %25 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.51, i32 noundef 63, ptr noundef nonnull @__FUNCTION__._command_list_loop, ptr noundef nonnull @.str.5.56) #19, !dbg !2004
  br label %30, !dbg !2006

26:                                               ; preds = %5
  %27 = icmp slt i64 %22, %19, !dbg !2007
  br i1 %27, label %28, label %30, !dbg !2009

28:                                               ; preds = %26
  %29 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.51, i32 noundef 66, ptr noundef nonnull @__FUNCTION__._command_list_loop, ptr noundef nonnull @.str.6.57, i64 noundef %22, i64 noundef %19) #19, !dbg !2010
  br label %30, !dbg !2012

30:                                               ; preds = %28, %26, %24
  %31 = phi i32 [ -5, %24 ], [ -5, %28 ], [ 1, %26 ], !dbg !1965
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #19, !dbg !2013
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19, !dbg !2013
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #19, !dbg !2013
  ret i32 %31, !dbg !2013
}

; Function Attrs: nofree
declare !dbg !2014 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #17

declare !dbg !2017 i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @database_open(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !2022 {
  %5 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2026, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i64 %1, metadata !2027, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %2, metadata !2028, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %3, metadata !2029, metadata !DIExpression()), !dbg !2032
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19, !dbg !2033
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.60, i32 noundef 8, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.1.61) #19, !dbg !2034
  call void @llvm.dbg.value(metadata ptr %5, metadata !2030, metadata !DIExpression(DW_OP_deref)), !dbg !2032
  %7 = call i32 @mdb_env_create(ptr noundef nonnull %5) #19, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %7, metadata !2031, metadata !DIExpression()), !dbg !2032
  %8 = icmp eq i32 %7, 0, !dbg !2036
  br i1 %8, label %12, label %9, !dbg !2038

9:                                                ; preds = %4
  %10 = call ptr @mdb_strerror(i32 noundef %7) #19, !dbg !2039
  %11 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef 12, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.2.62, ptr noundef %0, ptr noundef %10) #19, !dbg !2039
  br label %48, !dbg !2041

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !2042, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %13, metadata !2030, metadata !DIExpression()), !dbg !2032
  %14 = call i32 @mdb_env_set_mapsize(ptr noundef %13, i64 noundef %1) #19, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %14, metadata !2031, metadata !DIExpression()), !dbg !2032
  %15 = icmp eq i32 %14, 0, !dbg !2044
  br i1 %15, label %19, label %16, !dbg !2046

16:                                               ; preds = %12
  %17 = call ptr @mdb_strerror(i32 noundef %14) #19, !dbg !2047
  %18 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef 18, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.3.63, i64 noundef %1, ptr noundef %17) #19, !dbg !2047
  br label %48, !dbg !2049

19:                                               ; preds = %12
  %20 = icmp ugt i32 %2, 126, !dbg !2050
  br i1 %20, label %21, label %28, !dbg !2052

21:                                               ; preds = %19
  %22 = load ptr, ptr %5, align 8, !dbg !2053, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %22, metadata !2030, metadata !DIExpression()), !dbg !2032
  %23 = call i32 @mdb_env_set_maxreaders(ptr noundef %22, i32 noundef %2) #19, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %23, metadata !2031, metadata !DIExpression()), !dbg !2032
  %24 = icmp eq i32 %23, 0, !dbg !2056
  br i1 %24, label %28, label %25, !dbg !2058

25:                                               ; preds = %21
  %26 = call ptr @mdb_strerror(i32 noundef %23) #19, !dbg !2059
  %27 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef 25, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.4.64, ptr noundef %26) #19, !dbg !2059
  br label %48, !dbg !2061

28:                                               ; preds = %21, %19
  %29 = icmp ugt i32 %3, 1, !dbg !2062
  br i1 %29, label %30, label %37, !dbg !2064

30:                                               ; preds = %28
  %31 = load ptr, ptr %5, align 8, !dbg !2065, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %31, metadata !2030, metadata !DIExpression()), !dbg !2032
  %32 = call i32 @mdb_env_set_maxdbs(ptr noundef %31, i32 noundef %3) #19, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %32, metadata !2031, metadata !DIExpression()), !dbg !2032
  %33 = icmp eq i32 %32, 0, !dbg !2068
  br i1 %33, label %37, label %34, !dbg !2070

34:                                               ; preds = %30
  %35 = call ptr @mdb_strerror(i32 noundef %32) #19, !dbg !2071
  %36 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef 33, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.5.65, ptr noundef %35) #19, !dbg !2071
  br label %48, !dbg !2073

37:                                               ; preds = %30, %28
  %38 = load ptr, ptr %5, align 8, !dbg !2074, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %38, metadata !2030, metadata !DIExpression()), !dbg !2032
  %39 = call i32 @mdb_env_open(ptr noundef %38, ptr noundef %0, i32 noundef 2621440, i32 noundef 436) #19, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %39, metadata !2031, metadata !DIExpression()), !dbg !2032
  %40 = icmp eq i32 %39, 0, !dbg !2076
  br i1 %40, label %45, label %41, !dbg !2078

41:                                               ; preds = %37
  %42 = call ptr @mdb_strerror(i32 noundef %39) #19, !dbg !2079
  %43 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef 40, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.6.66, ptr noundef %42) #19, !dbg !2079
  %44 = load ptr, ptr %5, align 8, !dbg !2081, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %44, metadata !2030, metadata !DIExpression()), !dbg !2032
  call void @mdb_env_close(ptr noundef %44) #19, !dbg !2082
  br label %48, !dbg !2083

45:                                               ; preds = %37
  %46 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.60, i32 noundef 44, ptr noundef nonnull @__FUNCTION__.database_open, ptr noundef nonnull @.str.7.67) #19, !dbg !2084
  %47 = load ptr, ptr %5, align 8, !dbg !2085, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %47, metadata !2030, metadata !DIExpression()), !dbg !2032
  br label %48, !dbg !2086

48:                                               ; preds = %45, %41, %34, %25, %16, %9
  %49 = phi ptr [ null, %9 ], [ null, %16 ], [ null, %25 ], [ null, %34 ], [ null, %41 ], [ %47, %45 ], !dbg !2032
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19, !dbg !2087
  ret ptr %49, !dbg !2087
}

declare !dbg !2088 i32 @mdb_env_create(ptr noundef) local_unnamed_addr #4

declare !dbg !2092 ptr @mdb_strerror(i32 noundef) local_unnamed_addr #4

declare !dbg !2095 i32 @mdb_env_set_mapsize(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2098 i32 @mdb_env_set_maxreaders(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2101 i32 @mdb_env_set_maxdbs(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2105 i32 @mdb_env_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2111 void @mdb_env_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @database_close(ptr noundef %0) local_unnamed_addr #0 !dbg !2114 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2116, metadata !DIExpression()), !dbg !2117
  %2 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.60, i32 noundef 50, ptr noundef nonnull @__FUNCTION__.database_close, ptr noundef nonnull @.str.8.70) #19, !dbg !2118
  tail call void @mdb_env_close(ptr noundef %0) #19, !dbg !2119
  %3 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.60, i32 noundef 52, ptr noundef nonnull @__FUNCTION__.database_close, ptr noundef nonnull @.str.9.71) #19, !dbg !2120
  ret void, !dbg !2121
}

; Function Attrs: nounwind uwtable
define dso_local ptr @database_transaction_start(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2122 {
  %3 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i32 %1, metadata !2127, metadata !DIExpression()), !dbg !2131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19, !dbg !2132
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2131
  %4 = icmp eq i32 %1, 0, !dbg !2133
  %5 = select i1 %4, i32 0, i32 131072, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %5, metadata !2129, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr %3, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2131
  %6 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef %5, ptr noundef nonnull %3) #19, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %6, metadata !2130, metadata !DIExpression()), !dbg !2131
  %7 = icmp eq i32 %6, 0, !dbg !2137
  br i1 %7, label %11, label %8, !dbg !2139

8:                                                ; preds = %2
  %9 = call ptr @mdb_strerror(i32 noundef %6) #19, !dbg !2140
  %10 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %9) #19, !dbg !2140
  br label %13, !dbg !2142

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !2143, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %12, metadata !2128, metadata !DIExpression()), !dbg !2131
  br label %13, !dbg !2144

13:                                               ; preds = %11, %8
  %14 = phi ptr [ null, %8 ], [ %12, %11 ], !dbg !2131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19, !dbg !2145
  ret ptr %14, !dbg !2145
}

declare !dbg !2146 i32 @mdb_txn_begin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @database_transaction_commit(ptr noundef %0) local_unnamed_addr #0 !dbg !2150 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2154, metadata !DIExpression()), !dbg !2156
  %2 = tail call i32 @mdb_txn_commit(ptr noundef %0) #19, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %2, metadata !2155, metadata !DIExpression()), !dbg !2156
  %3 = icmp eq i32 %2, 0, !dbg !2158
  br i1 %3, label %7, label %4, !dbg !2160

4:                                                ; preds = %1
  %5 = tail call ptr @mdb_strerror(i32 noundef %2) #19, !dbg !2161
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.database_transaction_commit, ptr noundef nonnull @.str.11, ptr noundef %5) #19, !dbg !2161
  br label %7, !dbg !2163

7:                                                ; preds = %4, %1
  %8 = phi i32 [ -13, %4 ], [ 1, %1 ], !dbg !2156
  ret i32 %8, !dbg !2164
}

declare !dbg !2165 i32 @mdb_txn_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @database_transaction_rollback(ptr noundef %0) local_unnamed_addr #0 !dbg !2168 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2172, metadata !DIExpression()), !dbg !2173
  tail call void @mdb_txn_abort(ptr noundef %0) #19, !dbg !2174
  ret void, !dbg !2175
}

declare !dbg !2176 void @mdb_txn_abort(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @database_put(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr %4, i64 %5, ptr nocapture noundef readonly byval(%struct.ybin_s) align 8 %6) local_unnamed_addr #0 !dbg !2177 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.MDB_val, align 8
  %11 = alloca %struct.MDB_val, align 8
  call void @llvm.dbg.value(metadata ptr %4, metadata !2190, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2205
  call void @llvm.dbg.value(metadata i64 %5, metadata !2190, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %0, metadata !2186, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %1, metadata !2187, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %2, metadata !2188, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %3, metadata !2189, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2191, metadata !DIExpression()), !dbg !2206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19, !dbg !2207
  call void @llvm.dbg.value(metadata ptr %1, metadata !2193, metadata !DIExpression()), !dbg !2205
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19, !dbg !2208
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2194, metadata !DIExpression()), !dbg !2209
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #19, !dbg !2208
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2200, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !2202, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 1, metadata !2203, metadata !DIExpression()), !dbg !2205
  %12 = icmp eq i32 %2, 0, !dbg !2211
  %13 = select i1 %12, i32 0, i32 16, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %13, metadata !2202, metadata !DIExpression()), !dbg !2205
  %14 = icmp eq ptr %1, null, !dbg !2214
  br i1 %14, label %15, label %24, !dbg !2216

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19, !dbg !2219
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %8, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2217
  %16 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %8) #19, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %16, metadata !2130, metadata !DIExpression()), !dbg !2217
  %17 = icmp eq i32 %16, 0, !dbg !2221
  br i1 %17, label %21, label %18, !dbg !2222

18:                                               ; preds = %15
  %19 = call ptr @mdb_strerror(i32 noundef %16) #19, !dbg !2223
  %20 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %19) #19, !dbg !2223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19, !dbg !2224
  call void @llvm.dbg.value(metadata ptr null, metadata !2193, metadata !DIExpression()), !dbg !2205
  br label %55, !dbg !2225

21:                                               ; preds = %15
  %22 = load ptr, ptr %8, align 8, !dbg !2226, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %22, metadata !2128, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19, !dbg !2224
  call void @llvm.dbg.value(metadata ptr %22, metadata !2193, metadata !DIExpression()), !dbg !2205
  %23 = icmp eq ptr %22, null, !dbg !2227
  br i1 %23, label %55, label %24, !dbg !2225

24:                                               ; preds = %21, %7
  %25 = phi ptr [ %22, %21 ], [ %1, %7 ], !dbg !2205
  call void @llvm.dbg.value(metadata ptr %25, metadata !2193, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %9, metadata !2192, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  %26 = call i32 @mdb_dbi_open(ptr noundef nonnull %25, ptr noundef %3, i32 noundef 262144, ptr noundef nonnull %9) #19, !dbg !2228
  call void @llvm.dbg.value(metadata i32 %26, metadata !2201, metadata !DIExpression()), !dbg !2205
  %27 = icmp eq i32 %26, 0, !dbg !2229
  br i1 %27, label %31, label %28, !dbg !2231

28:                                               ; preds = %24
  %29 = call ptr @mdb_strerror(i32 noundef %26) #19, !dbg !2232
  %30 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 106, ptr noundef nonnull @__FUNCTION__.database_put, ptr noundef nonnull @.str.12.74, ptr noundef %29) #19, !dbg !2232
  call void @llvm.dbg.value(metadata i32 -13, metadata !2203, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.label(metadata !2204), !dbg !2234
  br label %53, !dbg !2235

31:                                               ; preds = %24
  store i64 %5, ptr %10, align 8, !dbg !2237, !tbaa !2238
  %32 = getelementptr inbounds %struct.MDB_val, ptr %10, i64 0, i32 1, !dbg !2240
  store ptr %4, ptr %32, align 8, !dbg !2241, !tbaa !2242
  %33 = getelementptr inbounds %struct.ybin_s, ptr %6, i64 0, i32 1, !dbg !2243
  %34 = load i64, ptr %33, align 8, !dbg !2243, !tbaa !2244
  store i64 %34, ptr %11, align 8, !dbg !2245, !tbaa !2238
  %35 = load ptr, ptr %6, align 8, !dbg !2246, !tbaa !2247
  %36 = getelementptr inbounds %struct.MDB_val, ptr %11, i64 0, i32 1, !dbg !2248
  store ptr %35, ptr %36, align 8, !dbg !2249, !tbaa !2242
  %37 = load i32, ptr %9, align 4, !dbg !2250, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %37, metadata !2192, metadata !DIExpression()), !dbg !2205
  %38 = call i32 @mdb_put(ptr noundef nonnull %25, i32 noundef %37, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %13) #19, !dbg !2251
  call void @llvm.dbg.value(metadata i32 %38, metadata !2201, metadata !DIExpression()), !dbg !2205
  %39 = icmp eq i32 %38, 0, !dbg !2252
  br i1 %39, label %44, label %40, !dbg !2254

40:                                               ; preds = %31
  %41 = call ptr @mdb_strerror(i32 noundef %38) #19, !dbg !2255
  %42 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 118, ptr noundef nonnull @__FUNCTION__.database_put, ptr noundef nonnull @.str.13.75, ptr noundef %41) #19, !dbg !2255
  call void @llvm.dbg.value(metadata i32 -13, metadata !2203, metadata !DIExpression()), !dbg !2205
  %43 = load i32, ptr %9, align 4, !dbg !2257, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %43, metadata !2192, metadata !DIExpression()), !dbg !2205
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %43) #19, !dbg !2258
  call void @llvm.dbg.label(metadata !2204), !dbg !2234
  br label %53, !dbg !2235

44:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i32 1, metadata !2203, metadata !DIExpression()), !dbg !2205
  %45 = load i32, ptr %9, align 4, !dbg !2257, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %45, metadata !2192, metadata !DIExpression()), !dbg !2205
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %45) #19, !dbg !2258
  call void @llvm.dbg.label(metadata !2204), !dbg !2234
  %46 = and i1 %14, %39, !dbg !2235
  br i1 %46, label %47, label %55, !dbg !2235

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata ptr %25, metadata !2154, metadata !DIExpression()), !dbg !2259
  %48 = call i32 @mdb_txn_commit(ptr noundef nonnull %25) #19, !dbg !2261
  call void @llvm.dbg.value(metadata i32 %48, metadata !2155, metadata !DIExpression()), !dbg !2259
  %49 = icmp eq i32 %48, 0, !dbg !2262
  br i1 %49, label %55, label %50, !dbg !2263

50:                                               ; preds = %47
  %51 = call ptr @mdb_strerror(i32 noundef %48) #19, !dbg !2264
  %52 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.database_transaction_commit, ptr noundef nonnull @.str.11, ptr noundef %51) #19, !dbg !2264
  br label %53, !dbg !2265

53:                                               ; preds = %50, %40, %28
  call void @llvm.dbg.value(metadata i32 -13, metadata !2203, metadata !DIExpression()), !dbg !2205
  br i1 %14, label %54, label %55, !dbg !2266

54:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr %25, metadata !2172, metadata !DIExpression()), !dbg !2268
  call void @mdb_txn_abort(ptr noundef nonnull %25) #19, !dbg !2270
  br label %55, !dbg !2271

55:                                               ; preds = %54, %53, %47, %44, %21, %18
  %56 = phi i32 [ -13, %21 ], [ -13, %54 ], [ -13, %53 ], [ -13, %18 ], [ 1, %47 ], [ 1, %44 ], !dbg !2205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19, !dbg !2272
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19, !dbg !2272
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19, !dbg !2272
  ret i32 %56, !dbg !2272
}

declare !dbg !2273 i32 @mdb_dbi_open(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2277 i32 @mdb_put(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2281 void @mdb_dbi_close(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @database_del(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 !dbg !2284 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.MDB_val, align 8
  call void @llvm.dbg.value(metadata ptr %3, metadata !2291, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %4, metadata !2291, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2298
  call void @llvm.dbg.value(metadata ptr %0, metadata !2288, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata ptr %1, metadata !2289, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata ptr %2, metadata !2290, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19, !dbg !2299
  call void @llvm.dbg.value(metadata ptr %1, metadata !2293, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19, !dbg !2300
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2294, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 1, metadata !2296, metadata !DIExpression()), !dbg !2298
  %9 = icmp eq ptr %1, null, !dbg !2302
  br i1 %9, label %10, label %19, !dbg !2304

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()), !dbg !2305
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19, !dbg !2307
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata ptr %6, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2305
  %11 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %6) #19, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %11, metadata !2130, metadata !DIExpression()), !dbg !2305
  %12 = icmp eq i32 %11, 0, !dbg !2309
  br i1 %12, label %16, label %13, !dbg !2310

13:                                               ; preds = %10
  %14 = call ptr @mdb_strerror(i32 noundef %11) #19, !dbg !2311
  %15 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %14) #19, !dbg !2311
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19, !dbg !2312
  call void @llvm.dbg.value(metadata ptr null, metadata !2293, metadata !DIExpression()), !dbg !2298
  br label %46, !dbg !2313

16:                                               ; preds = %10
  %17 = load ptr, ptr %6, align 8, !dbg !2314, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %17, metadata !2128, metadata !DIExpression()), !dbg !2305
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19, !dbg !2312
  call void @llvm.dbg.value(metadata ptr %17, metadata !2293, metadata !DIExpression()), !dbg !2298
  %18 = icmp eq ptr %17, null, !dbg !2315
  br i1 %18, label %46, label %19, !dbg !2313

19:                                               ; preds = %16, %5
  %20 = phi ptr [ %17, %16 ], [ %1, %5 ], !dbg !2298
  call void @llvm.dbg.value(metadata ptr %20, metadata !2293, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata ptr %7, metadata !2292, metadata !DIExpression(DW_OP_deref)), !dbg !2298
  %21 = call i32 @mdb_dbi_open(ptr noundef nonnull %20, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %7) #19, !dbg !2316
  call void @llvm.dbg.value(metadata i32 %21, metadata !2295, metadata !DIExpression()), !dbg !2298
  %22 = icmp eq i32 %21, 0, !dbg !2317
  br i1 %22, label %26, label %23, !dbg !2319

23:                                               ; preds = %19
  %24 = call ptr @mdb_strerror(i32 noundef %21) #19, !dbg !2320
  %25 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 147, ptr noundef nonnull @__FUNCTION__.database_del, ptr noundef nonnull @.str.12.74, ptr noundef %24) #19, !dbg !2320
  call void @llvm.dbg.value(metadata i32 -13, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.label(metadata !2297), !dbg !2322
  br label %44, !dbg !2323

26:                                               ; preds = %19
  store i64 %4, ptr %8, align 8, !dbg !2325, !tbaa !2238
  %27 = getelementptr inbounds %struct.MDB_val, ptr %8, i64 0, i32 1, !dbg !2326
  store ptr %3, ptr %27, align 8, !dbg !2327, !tbaa !2242
  %28 = load i32, ptr %7, align 4, !dbg !2328, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %28, metadata !2292, metadata !DIExpression()), !dbg !2298
  %29 = call i32 @mdb_del(ptr noundef nonnull %20, i32 noundef %28, ptr noundef nonnull %8, ptr noundef null) #19, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %29, metadata !2295, metadata !DIExpression()), !dbg !2298
  %30 = icmp eq i32 %29, 0, !dbg !2330
  br i1 %30, label %35, label %31, !dbg !2332

31:                                               ; preds = %26
  %32 = call ptr @mdb_strerror(i32 noundef %29) #19, !dbg !2333
  %33 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 157, ptr noundef nonnull @__FUNCTION__.database_del, ptr noundef nonnull @.str.13.75, ptr noundef %32) #19, !dbg !2333
  call void @llvm.dbg.value(metadata i32 -13, metadata !2296, metadata !DIExpression()), !dbg !2298
  %34 = load i32, ptr %7, align 4, !dbg !2335, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %34, metadata !2292, metadata !DIExpression()), !dbg !2298
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %34) #19, !dbg !2336
  call void @llvm.dbg.label(metadata !2297), !dbg !2322
  br label %44, !dbg !2323

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !2296, metadata !DIExpression()), !dbg !2298
  %36 = load i32, ptr %7, align 4, !dbg !2335, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %36, metadata !2292, metadata !DIExpression()), !dbg !2298
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %36) #19, !dbg !2336
  call void @llvm.dbg.label(metadata !2297), !dbg !2322
  %37 = and i1 %9, %30, !dbg !2323
  br i1 %37, label %38, label %46, !dbg !2323

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata ptr %20, metadata !2154, metadata !DIExpression()), !dbg !2337
  %39 = call i32 @mdb_txn_commit(ptr noundef nonnull %20) #19, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %39, metadata !2155, metadata !DIExpression()), !dbg !2337
  %40 = icmp eq i32 %39, 0, !dbg !2340
  br i1 %40, label %46, label %41, !dbg !2341

41:                                               ; preds = %38
  %42 = call ptr @mdb_strerror(i32 noundef %39) #19, !dbg !2342
  %43 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.database_transaction_commit, ptr noundef nonnull @.str.11, ptr noundef %42) #19, !dbg !2342
  br label %44, !dbg !2343

44:                                               ; preds = %41, %31, %23
  call void @llvm.dbg.value(metadata i32 -13, metadata !2296, metadata !DIExpression()), !dbg !2298
  br i1 %9, label %45, label %46, !dbg !2344

45:                                               ; preds = %44
  call void @llvm.dbg.value(metadata ptr %20, metadata !2172, metadata !DIExpression()), !dbg !2346
  call void @mdb_txn_abort(ptr noundef nonnull %20) #19, !dbg !2348
  br label %46, !dbg !2349

46:                                               ; preds = %45, %44, %38, %35, %16, %13
  %47 = phi i32 [ -13, %16 ], [ -13, %45 ], [ -13, %44 ], [ -13, %13 ], [ 1, %38 ], [ 1, %35 ], !dbg !2298
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19, !dbg !2350
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19, !dbg !2350
  ret i32 %47, !dbg !2350
}

declare !dbg !2351 i32 @mdb_del(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @database_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !2354 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.MDB_val, align 8
  %10 = alloca %struct.MDB_val, align 8
  call void @llvm.dbg.value(metadata ptr %3, metadata !2362, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %4, metadata !2362, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %0, metadata !2359, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %1, metadata !2360, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %2, metadata !2361, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %5, metadata !2363, metadata !DIExpression()), !dbg !2371
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19, !dbg !2372
  call void @llvm.dbg.value(metadata ptr %1, metadata !2365, metadata !DIExpression()), !dbg !2371
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19, !dbg !2373
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2366, metadata !DIExpression()), !dbg !2374
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19, !dbg !2373
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2367, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()), !dbg !2371
  %11 = icmp eq ptr %1, null, !dbg !2376
  br i1 %11, label %12, label %21, !dbg !2378

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 1, metadata !2127, metadata !DIExpression()), !dbg !2379
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19, !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 131072, metadata !2129, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata ptr %7, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2379
  %13 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 131072, ptr noundef nonnull %7) #19, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %13, metadata !2130, metadata !DIExpression()), !dbg !2379
  %14 = icmp eq i32 %13, 0, !dbg !2383
  br i1 %14, label %18, label %15, !dbg !2384

15:                                               ; preds = %12
  %16 = call ptr @mdb_strerror(i32 noundef %13) #19, !dbg !2385
  %17 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %16) #19, !dbg !2385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19, !dbg !2386
  call void @llvm.dbg.value(metadata ptr null, metadata !2365, metadata !DIExpression()), !dbg !2371
  br label %50, !dbg !2387

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !dbg !2388, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %19, metadata !2128, metadata !DIExpression()), !dbg !2379
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19, !dbg !2386
  call void @llvm.dbg.value(metadata ptr %19, metadata !2365, metadata !DIExpression()), !dbg !2371
  %20 = icmp eq ptr %19, null, !dbg !2389
  br i1 %20, label %50, label %21, !dbg !2387

21:                                               ; preds = %18, %6
  %22 = phi ptr [ %19, %18 ], [ %1, %6 ], !dbg !2371
  call void @llvm.dbg.value(metadata ptr %22, metadata !2365, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %8, metadata !2364, metadata !DIExpression(DW_OP_deref)), !dbg !2371
  %23 = call i32 @mdb_dbi_open(ptr noundef nonnull %22, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %8) #19, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %23, metadata !2368, metadata !DIExpression()), !dbg !2371
  %24 = icmp eq i32 %23, 0, !dbg !2391
  br i1 %24, label %25, label %38, !dbg !2393

25:                                               ; preds = %21
  store i64 %4, ptr %9, align 8, !dbg !2394, !tbaa !2238
  %26 = getelementptr inbounds %struct.MDB_val, ptr %9, i64 0, i32 1, !dbg !2395
  store ptr %3, ptr %26, align 8, !dbg !2396, !tbaa !2242
  %27 = load i32, ptr %8, align 4, !dbg !2397, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %27, metadata !2364, metadata !DIExpression()), !dbg !2371
  %28 = call i32 @mdb_get(ptr noundef nonnull %22, i32 noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %10) #19, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %28, metadata !2368, metadata !DIExpression()), !dbg !2371
  br i1 %11, label %29, label %30, !dbg !2399

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %22, metadata !2172, metadata !DIExpression()), !dbg !2400
  call void @mdb_txn_abort(ptr noundef nonnull %22) #19, !dbg !2403
  br label %30, !dbg !2404

30:                                               ; preds = %29, %25
  call void @llvm.dbg.value(metadata i32 poison, metadata !2369, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %28, metadata !2368, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.label(metadata !2370), !dbg !2405
  %31 = load i32, ptr %8, align 4, !dbg !2406, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %31, metadata !2364, metadata !DIExpression()), !dbg !2371
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %31) #19, !dbg !2407
  %32 = icmp eq i32 %28, 0, !dbg !2408
  br i1 %32, label %33, label %42, !dbg !2410

33:                                               ; preds = %30
  %34 = load i64, ptr %10, align 8, !dbg !2411, !tbaa !2238
  %35 = getelementptr inbounds %struct.ybin_s, ptr %5, i64 0, i32 1, !dbg !2413
  store i64 %34, ptr %35, align 8, !dbg !2414, !tbaa !2244
  %36 = getelementptr inbounds %struct.MDB_val, ptr %10, i64 0, i32 1, !dbg !2415
  %37 = load ptr, ptr %36, align 8, !dbg !2415, !tbaa !2242
  store ptr %37, ptr %5, align 8, !dbg !2416, !tbaa !2247
  br label %50, !dbg !2417

38:                                               ; preds = %21
  %39 = call ptr @mdb_strerror(i32 noundef %23) #19, !dbg !2418
  %40 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 186, ptr noundef nonnull @__FUNCTION__.database_get, ptr noundef nonnull @.str.12.74, ptr noundef %39) #19, !dbg !2418
  call void @llvm.dbg.value(metadata i32 -13, metadata !2369, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %23, metadata !2368, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.label(metadata !2370), !dbg !2405
  %41 = load i32, ptr %8, align 4, !dbg !2406, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %41, metadata !2364, metadata !DIExpression()), !dbg !2371
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %41) #19, !dbg !2407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !2420
  br label %50, !dbg !2421

42:                                               ; preds = %30
  %43 = icmp eq i32 %28, -30798, !dbg !2422
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !2420
  br i1 %43, label %44, label %47, !dbg !2424

44:                                               ; preds = %42
  %45 = call ptr @mdb_strerror(i32 noundef -30798) #19, !dbg !2425
  %46 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.60, i32 noundef 214, ptr noundef nonnull @__FUNCTION__.database_get, ptr noundef nonnull @.str.14, ptr noundef %45) #19, !dbg !2425
  br label %50, !dbg !2427

47:                                               ; preds = %42
  %48 = call ptr @mdb_strerror(i32 noundef %28) #19, !dbg !2428
  %49 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 217, ptr noundef nonnull @__FUNCTION__.database_get, ptr noundef nonnull @.str.15.78, ptr noundef %48) #19, !dbg !2428
  br label %50, !dbg !2429

50:                                               ; preds = %47, %44, %38, %33, %18, %15
  %51 = phi i32 [ -61, %44 ], [ -13, %47 ], [ 1, %33 ], [ -13, %18 ], [ -13, %38 ], [ -13, %15 ], !dbg !2371
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19, !dbg !2430
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19, !dbg !2430
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19, !dbg !2430
  ret i32 %51, !dbg !2430
}

declare !dbg !2431 i32 @mdb_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @database_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 !dbg !2432 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.MDB_val, align 8
  %10 = alloca %struct.MDB_val, align 8
  %11 = alloca %struct.ybin_s, align 8
  %12 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2441, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata ptr %1, metadata !2442, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata ptr %2, metadata !2443, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata ptr %3, metadata !2444, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata ptr %4, metadata !2445, metadata !DIExpression()), !dbg !2461
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19, !dbg !2462
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2461
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19, !dbg !2463
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2452, metadata !DIExpression()), !dbg !2465
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2453, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 1, metadata !2455, metadata !DIExpression()), !dbg !2461
  %13 = icmp eq ptr %1, null, !dbg !2467
  br i1 %13, label %14, label %23, !dbg !2469

14:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 1, metadata !2127, metadata !DIExpression()), !dbg !2470
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19, !dbg !2472
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 131072, metadata !2129, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata ptr %6, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2470
  %15 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 131072, ptr noundef nonnull %6) #19, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %15, metadata !2130, metadata !DIExpression()), !dbg !2470
  %16 = icmp eq i32 %15, 0, !dbg !2474
  br i1 %16, label %20, label %17, !dbg !2475

17:                                               ; preds = %14
  %18 = call ptr @mdb_strerror(i32 noundef %15) #19, !dbg !2476
  %19 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %18) #19, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19, !dbg !2477
  call void @llvm.dbg.value(metadata ptr null, metadata !2447, metadata !DIExpression()), !dbg !2461
  br label %67, !dbg !2478

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 8, !dbg !2479, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %21, metadata !2128, metadata !DIExpression()), !dbg !2470
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19, !dbg !2477
  call void @llvm.dbg.value(metadata ptr %21, metadata !2447, metadata !DIExpression()), !dbg !2461
  %22 = icmp eq ptr %21, null, !dbg !2480
  br i1 %22, label %67, label %23, !dbg !2478

23:                                               ; preds = %20, %5
  %24 = phi ptr [ %21, %20 ], [ %1, %5 ], !dbg !2461
  call void @llvm.dbg.value(metadata ptr %24, metadata !2447, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata ptr %7, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2461
  %25 = call i32 @mdb_dbi_open(ptr noundef nonnull %24, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %7) #19, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %25, metadata !2454, metadata !DIExpression()), !dbg !2461
  %26 = icmp eq i32 %25, 0, !dbg !2482
  br i1 %26, label %30, label %27, !dbg !2484

27:                                               ; preds = %23
  %28 = call ptr @mdb_strerror(i32 noundef %25) #19, !dbg !2485
  %29 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 236, ptr noundef nonnull @__FUNCTION__.database_list, ptr noundef nonnull @.str.12.74, ptr noundef %28) #19, !dbg !2485
  call void @llvm.dbg.value(metadata i32 -13, metadata !2455, metadata !DIExpression()), !dbg !2461
  br label %64, !dbg !2487

30:                                               ; preds = %23
  %31 = load i32, ptr %7, align 4, !dbg !2488, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %31, metadata !2446, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata ptr %8, metadata !2448, metadata !DIExpression(DW_OP_deref)), !dbg !2461
  %32 = call i32 @mdb_cursor_open(ptr noundef nonnull %24, i32 noundef %31, ptr noundef nonnull %8) #19, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %32, metadata !2454, metadata !DIExpression()), !dbg !2461
  %33 = icmp eq i32 %32, 0, !dbg !2490
  br i1 %33, label %34, label %39, !dbg !2492

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.MDB_val, ptr %9, i64 0, i32 1
  %36 = getelementptr inbounds %struct.MDB_val, ptr %10, i64 0, i32 1
  %37 = getelementptr inbounds { ptr, i64 }, ptr %11, i64 0, i32 1
  %38 = getelementptr inbounds { ptr, i64 }, ptr %12, i64 0, i32 1
  br label %42, !dbg !2493

39:                                               ; preds = %30
  %40 = call ptr @mdb_strerror(i32 noundef %32) #19, !dbg !2494
  %41 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 243, ptr noundef nonnull @__FUNCTION__.database_list, ptr noundef nonnull @.str.16.81, ptr noundef %40) #19, !dbg !2494
  call void @llvm.dbg.value(metadata i32 -13, metadata !2455, metadata !DIExpression()), !dbg !2461
  br label %61, !dbg !2496

42:                                               ; preds = %46, %34
  %43 = load ptr, ptr %8, align 8, !dbg !2497, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %43, metadata !2448, metadata !DIExpression()), !dbg !2461
  %44 = call i32 @mdb_cursor_get(ptr noundef %43, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 8) #19, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %44, metadata !2454, metadata !DIExpression()), !dbg !2461
  %45 = icmp eq i32 %44, 0, !dbg !2499
  br i1 %45, label %46, label %59, !dbg !2493

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #19, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2456, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #19, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2458, metadata !DIExpression()), !dbg !2502
  %47 = load ptr, ptr %35, align 8, !dbg !2503, !tbaa !2242
  %48 = load i64, ptr %9, align 8, !dbg !2504, !tbaa !2238
  %49 = call ptr @ybin_set(ptr noundef nonnull %11, ptr noundef %47, i64 noundef %48) #19, !dbg !2505
  %50 = load ptr, ptr %36, align 8, !dbg !2506, !tbaa !2242
  %51 = load i64, ptr %10, align 8, !dbg !2507, !tbaa !2238
  %52 = call ptr @ybin_set(ptr noundef nonnull %12, ptr noundef %50, i64 noundef %51) #19, !dbg !2508
  %53 = load ptr, ptr %11, align 8, !dbg !2509
  %54 = load i64, ptr %37, align 8, !dbg !2509
  %55 = load ptr, ptr %12, align 8, !dbg !2509
  %56 = load i64, ptr %38, align 8, !dbg !2509
  %57 = call i32 %3(ptr noundef %4, ptr %53, i64 %54, ptr %55, i64 %56) #19, !dbg !2509
  %58 = icmp eq i32 %57, 1, !dbg !2511
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #19, !dbg !2512
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19, !dbg !2512
  br i1 %58, label %42, label %59

59:                                               ; preds = %46, %42
  %60 = load ptr, ptr %8, align 8, !dbg !2513, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %60, metadata !2448, metadata !DIExpression()), !dbg !2461
  call void @mdb_cursor_close(ptr noundef %60) #19, !dbg !2514
  br label %61, !dbg !2514

61:                                               ; preds = %59, %39
  %62 = phi i32 [ -13, %39 ], [ 1, %59 ], !dbg !2461
  call void @llvm.dbg.value(metadata i32 %62, metadata !2455, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.label(metadata !2459), !dbg !2515
  %63 = load i32, ptr %7, align 4, !dbg !2516, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %63, metadata !2446, metadata !DIExpression()), !dbg !2461
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %63) #19, !dbg !2517
  br label %64, !dbg !2517

64:                                               ; preds = %61, %27
  %65 = phi i32 [ -13, %27 ], [ %62, %61 ], !dbg !2461
  call void @llvm.dbg.value(metadata i32 %65, metadata !2455, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.label(metadata !2460), !dbg !2518
  br i1 %13, label %66, label %67, !dbg !2519

66:                                               ; preds = %64
  call void @llvm.dbg.value(metadata ptr %24, metadata !2172, metadata !DIExpression()), !dbg !2520
  call void @mdb_txn_abort(ptr noundef %24) #19, !dbg !2523
  br label %67, !dbg !2524

67:                                               ; preds = %66, %64, %20, %17
  %68 = phi i32 [ -13, %20 ], [ %65, %66 ], [ %65, %64 ], [ -13, %17 ], !dbg !2461
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19, !dbg !2525
  ret i32 %68, !dbg !2525
}

declare !dbg !2526 i32 @mdb_cursor_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2530 i32 @mdb_cursor_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2534 void @mdb_cursor_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @database_drop(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !2537 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %1, metadata !2542, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %2, metadata !2543, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19, !dbg !2550
  call void @llvm.dbg.value(metadata ptr %1, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 1, metadata !2547, metadata !DIExpression()), !dbg !2549
  %6 = icmp eq ptr %1, null, !dbg !2551
  br i1 %6, label %7, label %16, !dbg !2553

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()), !dbg !2554
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19, !dbg !2556
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %4, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2554
  %8 = call i32 @mdb_txn_begin(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4) #19, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %8, metadata !2130, metadata !DIExpression()), !dbg !2554
  %9 = icmp eq i32 %8, 0, !dbg !2558
  br i1 %9, label %13, label %10, !dbg !2559

10:                                               ; preds = %7
  %11 = call ptr @mdb_strerror(i32 noundef %8) #19, !dbg !2560
  %12 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 65, ptr noundef nonnull @__FUNCTION__.database_transaction_start, ptr noundef nonnull @.str.10, ptr noundef %11) #19, !dbg !2560
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19, !dbg !2561
  call void @llvm.dbg.value(metadata ptr null, metadata !2545, metadata !DIExpression()), !dbg !2549
  br label %42, !dbg !2562

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8, !dbg !2563, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %14, metadata !2128, metadata !DIExpression()), !dbg !2554
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19, !dbg !2561
  call void @llvm.dbg.value(metadata ptr %14, metadata !2545, metadata !DIExpression()), !dbg !2549
  %15 = icmp eq ptr %14, null, !dbg !2564
  br i1 %15, label %42, label %16, !dbg !2562

16:                                               ; preds = %13, %3
  %17 = phi ptr [ %14, %13 ], [ %1, %3 ], !dbg !2549
  call void @llvm.dbg.value(metadata ptr %17, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %5, metadata !2544, metadata !DIExpression(DW_OP_deref)), !dbg !2549
  %18 = call i32 @mdb_dbi_open(ptr noundef nonnull %17, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #19, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %18, metadata !2546, metadata !DIExpression()), !dbg !2549
  %19 = icmp eq i32 %18, 0, !dbg !2566
  br i1 %19, label %23, label %20, !dbg !2568

20:                                               ; preds = %16
  %21 = call ptr @mdb_strerror(i32 noundef %18) #19, !dbg !2569
  %22 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 281, ptr noundef nonnull @__FUNCTION__.database_drop, ptr noundef nonnull @.str.12.74, ptr noundef %21) #19, !dbg !2569
  call void @llvm.dbg.value(metadata i32 -13, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.label(metadata !2548), !dbg !2571
  br label %40, !dbg !2572

23:                                               ; preds = %16
  %24 = load i32, ptr %5, align 4, !dbg !2574, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %24, metadata !2544, metadata !DIExpression()), !dbg !2549
  %25 = call i32 @mdb_drop(ptr noundef nonnull %17, i32 noundef %24, i32 noundef 1) #19, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %25, metadata !2546, metadata !DIExpression()), !dbg !2549
  %26 = icmp eq i32 %25, 0, !dbg !2576
  br i1 %26, label %31, label %27, !dbg !2578

27:                                               ; preds = %23
  %28 = call ptr @mdb_strerror(i32 noundef %25) #19, !dbg !2579
  %29 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 288, ptr noundef nonnull @__FUNCTION__.database_drop, ptr noundef nonnull @.str.17.82, ptr noundef %28) #19, !dbg !2579
  call void @llvm.dbg.value(metadata i32 -13, metadata !2547, metadata !DIExpression()), !dbg !2549
  %30 = load i32, ptr %5, align 4, !dbg !2581, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %30, metadata !2544, metadata !DIExpression()), !dbg !2549
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %30) #19, !dbg !2582
  call void @llvm.dbg.label(metadata !2548), !dbg !2571
  br label %40, !dbg !2572

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !2547, metadata !DIExpression()), !dbg !2549
  %32 = load i32, ptr %5, align 4, !dbg !2581, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %32, metadata !2544, metadata !DIExpression()), !dbg !2549
  call void @mdb_dbi_close(ptr noundef %0, i32 noundef %32) #19, !dbg !2582
  call void @llvm.dbg.label(metadata !2548), !dbg !2571
  %33 = and i1 %6, %26, !dbg !2572
  br i1 %33, label %34, label %42, !dbg !2572

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %17, metadata !2154, metadata !DIExpression()), !dbg !2583
  %35 = call i32 @mdb_txn_commit(ptr noundef nonnull %17) #19, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %35, metadata !2155, metadata !DIExpression()), !dbg !2583
  %36 = icmp eq i32 %35, 0, !dbg !2586
  br i1 %36, label %42, label %37, !dbg !2587

37:                                               ; preds = %34
  %38 = call ptr @mdb_strerror(i32 noundef %35) #19, !dbg !2588
  %39 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.database_transaction_commit, ptr noundef nonnull @.str.11, ptr noundef %38) #19, !dbg !2588
  br label %42, !dbg !2589

40:                                               ; preds = %27, %20
  br i1 %6, label %41, label %42, !dbg !2590

41:                                               ; preds = %40
  call void @llvm.dbg.value(metadata ptr %17, metadata !2172, metadata !DIExpression()), !dbg !2592
  call void @mdb_txn_abort(ptr noundef nonnull %17) #19, !dbg !2594
  br label %42, !dbg !2595

42:                                               ; preds = %41, %40, %37, %34, %31, %13, %10
  %43 = phi i32 [ -13, %13 ], [ -13, %37 ], [ -13, %41 ], [ -13, %40 ], [ -13, %10 ], [ 1, %34 ], [ 1, %31 ], !dbg !2549
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19, !dbg !2596
  ret i32 %43, !dbg !2596
}

declare !dbg !2597 i32 @mdb_drop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_self_path() local_unnamed_addr #7 !dbg !397 {
  %1 = tail call ptr @realpath(ptr noundef nonnull @.str.85, ptr noundef nonnull @get_self_path.path) #19, !dbg !2600
  %2 = icmp eq ptr %1, null, !dbg !2602
  br i1 %2, label %7, label %3, !dbg !2603

3:                                                ; preds = %0
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @get_self_path.path, i32 noundef 47) #22, !dbg !2604
  call void @llvm.dbg.value(metadata ptr %4, metadata !408, metadata !DIExpression()), !dbg !2606
  %5 = icmp eq ptr %4, null, !dbg !2607
  br i1 %5, label %7, label %6, !dbg !2608

6:                                                ; preds = %3
  store i8 0, ptr %4, align 1, !dbg !2609, !tbaa !1267
  br label %7, !dbg !2610

7:                                                ; preds = %6, %3, %0
  %8 = phi ptr [ null, %0 ], [ @get_self_path.path, %6 ], [ @get_self_path.path, %3 ], !dbg !2606
  ret ptr %8, !dbg !2611
}

; Function Attrs: nofree nounwind
declare !dbg !2612 noundef ptr @realpath(ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2615 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local i32 @command_get(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !2618 {
  %6 = alloca %struct.ybin_s, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2651, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %1, metadata !2652, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %2, metadata !2653, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %3, metadata !2654, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %4, metadata !2655, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr null, metadata !2659, metadata !DIExpression()), !dbg !2674
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19, !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2666, metadata !DIExpression()), !dbg !2676
  %8 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.86, i32 noundef 18, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.1.87) #19, !dbg !2677
  %9 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef 2) #19, !dbg !2678
  %10 = icmp eq i32 %9, 1, !dbg !2680
  br i1 %10, label %11, label %61, !dbg !2681

11:                                               ; preds = %5
  %12 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 2) #19, !dbg !2682
  call void @llvm.dbg.value(metadata ptr %12, metadata !2656, metadata !DIExpression()), !dbg !2674
  %13 = load i16, ptr %12, align 2, !dbg !2683, !tbaa !971
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  call void @llvm.dbg.value(metadata i16 %14, metadata !2657, metadata !DIExpression()), !dbg !2674
  %15 = zext i16 %14 to i64, !dbg !2684
  %16 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef %15) #19, !dbg !2686
  %17 = icmp eq i32 %16, 1, !dbg !2687
  br i1 %17, label %18, label %61, !dbg !2688

18:                                               ; preds = %11
  %19 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %15) #19, !dbg !2689
  call void @llvm.dbg.value(metadata ptr %19, metadata !2658, metadata !DIExpression()), !dbg !2674
  %20 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %15) #21, !dbg !2690
  call void @llvm.dbg.value(metadata ptr %20, metadata !2659, metadata !DIExpression()), !dbg !2674
  %21 = icmp eq ptr %20, null, !dbg !2692
  br i1 %21, label %61, label %22, !dbg !2693

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr align 1 %19, i64 %15, i1 false), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %15, metadata !2660, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %20, metadata !2660, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2674
  %23 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !2695
  %24 = load ptr, ptr %23, align 8, !dbg !2695, !tbaa !1025
  %25 = getelementptr inbounds %struct.finedb_s, ptr %24, i64 0, i32 1, !dbg !2696
  %26 = load ptr, ptr %25, align 8, !dbg !2696, !tbaa !1027
  %27 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !2697
  %28 = load ptr, ptr %27, align 8, !dbg !2697, !tbaa !1030
  %29 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !2698
  %30 = load ptr, ptr %29, align 8, !dbg !2698, !tbaa !1006
  %31 = call i32 @database_get(ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr nonnull %20, i64 %15, ptr noundef nonnull %6) #19, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %31, metadata !2667, metadata !DIExpression()), !dbg !2674
  switch i32 %31, label %63 [
    i32 -61, label %58
    i32 1, label %32
  ], !dbg !2700

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ybin_s, ptr %6, i64 0, i32 1, !dbg !2701
  %34 = load i64, ptr %33, align 8, !dbg !2701, !tbaa !2244
  %35 = icmp eq i64 %34, 0, !dbg !2702
  %36 = icmp ne i32 %2, 0
  %37 = or i1 %36, %35, !dbg !2703
  br i1 %37, label %53, label %38, !dbg !2703

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19, !dbg !2704
  %39 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.86, i32 noundef 45, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.2.88) #19, !dbg !2705
  %40 = load ptr, ptr %6, align 8, !dbg !2706, !tbaa !2247
  %41 = load i64, ptr %33, align 8, !dbg !2707, !tbaa !2244
  call void @llvm.dbg.value(metadata ptr %7, metadata !2668, metadata !DIExpression(DW_OP_deref)), !dbg !2708
  %42 = call zeroext i1 @snappy_uncompressed_length(ptr noundef %40, i64 noundef %41, ptr noundef nonnull %7) #19, !dbg !2709
  %43 = load i64, ptr %7, align 8, !dbg !2710, !tbaa !1814
  call void @llvm.dbg.value(metadata i64 %43, metadata !2668, metadata !DIExpression()), !dbg !2708
  %44 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %43) #21, !dbg !2710
  call void @llvm.dbg.value(metadata ptr %44, metadata !2671, metadata !DIExpression()), !dbg !2708
  %45 = load ptr, ptr %6, align 8, !dbg !2711, !tbaa !2247
  %46 = load i64, ptr %33, align 8, !dbg !2713, !tbaa !2244
  %47 = call i32 @snappy_uncompress(ptr noundef %45, i64 noundef %46, ptr noundef %44) #19, !dbg !2714
  %48 = icmp eq i32 %47, 0, !dbg !2714
  br i1 %48, label %49, label %51, !dbg !2715

49:                                               ; preds = %38
  store ptr %44, ptr %6, align 8, !dbg !2716, !tbaa !2247
  %50 = load i64, ptr %7, align 8, !dbg !2717, !tbaa !1814
  call void @llvm.dbg.value(metadata i64 %50, metadata !2668, metadata !DIExpression()), !dbg !2708
  store i64 %50, ptr %33, align 8, !dbg !2718, !tbaa !2244
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19, !dbg !2719
  br label %53

51:                                               ; preds = %38
  %52 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.86, i32 noundef 49, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.3.89) #19, !dbg !2720
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19, !dbg !2719
  br label %63

53:                                               ; preds = %49, %32
  %54 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.86, i32 noundef 56, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.4.90) #19, !dbg !2722
  call void @free(ptr noundef nonnull %20) #19, !dbg !2723
  call void @llvm.dbg.value(metadata ptr null, metadata !2659, metadata !DIExpression()), !dbg !2674
  %55 = load ptr, ptr %6, align 8, !dbg !2724, !tbaa !2247
  %56 = load i64, ptr %33, align 8, !dbg !2725, !tbaa !2244
  %57 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %3, i32 noundef %2, ptr noundef %55, i64 noundef %56) #19, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %57, metadata !2667, metadata !DIExpression()), !dbg !2674
  br label %67, !dbg !2727

58:                                               ; preds = %22
  call void @llvm.dbg.label(metadata !2672), !dbg !2728
  %59 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.86, i32 noundef 62, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.5.91) #19, !dbg !2729
  call void @free(ptr noundef nonnull %20) #19, !dbg !2730
  call void @llvm.dbg.value(metadata ptr null, metadata !2659, metadata !DIExpression()), !dbg !2674
  %60 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !2731
  br label %67, !dbg !2732

61:                                               ; preds = %18, %11, %5
  call void @llvm.dbg.value(metadata ptr null, metadata !2659, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.label(metadata !2673), !dbg !2733
  %62 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.86, i32 noundef 67, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.6.92) #19, !dbg !2734
  br label %65, !dbg !2735

63:                                               ; preds = %51, %22
  call void @llvm.dbg.value(metadata ptr %20, metadata !2659, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.label(metadata !2673), !dbg !2733
  %64 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.86, i32 noundef 67, ptr noundef nonnull @__FUNCTION__.command_get, ptr noundef nonnull @.str.6.92) #19, !dbg !2734
  call void @free(ptr noundef nonnull %20) #19, !dbg !2735
  br label %65, !dbg !2735

65:                                               ; preds = %63, %61
  call void @llvm.dbg.value(metadata ptr null, metadata !2659, metadata !DIExpression()), !dbg !2674
  %66 = call i32 @connection_send_response(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !2736
  br label %67, !dbg !2737

67:                                               ; preds = %65, %58, %53
  %68 = phi i32 [ -5, %65 ], [ 1, %58 ], [ %57, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19, !dbg !2738
  ret i32 %68, !dbg !2738
}

declare !dbg !2739 zeroext i1 @snappy_uncompressed_length(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2743 i32 @snappy_uncompress(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @command_setdb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !2746 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2779, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %1, metadata !2780, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %2, metadata !2781, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %3, metadata !2782, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %4, metadata !2783, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr null, metadata !2787, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 1, metadata !2789, metadata !DIExpression()), !dbg !2791
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.93, i32 noundef 18, ptr noundef nonnull @__FUNCTION__.command_setdb, ptr noundef nonnull @.str.1.94) #19, !dbg !2792
  %7 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef 1) #19, !dbg !2793
  %8 = icmp eq i32 %7, 1, !dbg !2795
  br i1 %8, label %9, label %31, !dbg !2796

9:                                                ; preds = %5
  %10 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 1) #19, !dbg !2797
  call void @llvm.dbg.value(metadata ptr %10, metadata !2784, metadata !DIExpression()), !dbg !2791
  %11 = load i8, ptr %10, align 1, !dbg !2798, !tbaa !1267
  call void @llvm.dbg.value(metadata i8 %11, metadata !2786, metadata !DIExpression()), !dbg !2791
  %12 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !2799
  %13 = load ptr, ptr %12, align 8, !dbg !2799, !tbaa !1006
  %14 = icmp eq ptr %13, null, !dbg !2799
  br i1 %14, label %16, label %15, !dbg !2799

15:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %13) #19, !dbg !2799
  br label %16, !dbg !2799

16:                                               ; preds = %15, %9
  store ptr null, ptr %12, align 8, !dbg !2799, !tbaa !1006
  %17 = icmp eq i8 %11, 0, !dbg !2800
  br i1 %17, label %28, label %18, !dbg !2802

18:                                               ; preds = %16
  %19 = zext i8 %11 to i64, !dbg !2803
  %20 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %19) #19, !dbg !2806
  %21 = icmp eq i32 %20, 1, !dbg !2807
  br i1 %21, label %22, label %31, !dbg !2808

22:                                               ; preds = %18
  %23 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %19) #19, !dbg !2809
  call void @llvm.dbg.value(metadata ptr %23, metadata !2788, metadata !DIExpression()), !dbg !2791
  %24 = add nuw nsw i64 %19, 1, !dbg !2810
  %25 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %24) #21, !dbg !2810
  call void @llvm.dbg.value(metadata ptr %25, metadata !2787, metadata !DIExpression()), !dbg !2791
  %26 = icmp eq ptr %25, null, !dbg !2812
  br i1 %26, label %31, label %27, !dbg !2813

27:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr align 1 %23, i64 %19, i1 false), !dbg !2814
  store ptr %25, ptr %12, align 8, !dbg !2815, !tbaa !1006
  br label %28, !dbg !2816

28:                                               ; preds = %27, %16
  %29 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.93, i32 noundef 36, ptr noundef nonnull @__FUNCTION__.command_setdb, ptr noundef nonnull @.str.2.95) #19, !dbg !2817
  %30 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !2818
  br label %34, !dbg !2819

31:                                               ; preds = %22, %18, %5
  call void @llvm.dbg.label(metadata !2790), !dbg !2820
  %32 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.93, i32 noundef 40, ptr noundef nonnull @__FUNCTION__.command_setdb, ptr noundef nonnull @.str.3.96) #19, !dbg !2821
  %33 = tail call i32 @connection_send_response(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !2822
  br label %34, !dbg !2823

34:                                               ; preds = %31, %28
  %35 = phi i32 [ -5, %31 ], [ 1, %28 ], !dbg !2791
  ret i32 %35, !dbg !2824
}

; Function Attrs: nounwind uwtable
define dso_local i32 @command_start(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 !dbg !2825 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2858, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 %1, metadata !2859, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 %2, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 %3, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %4, metadata !2862, metadata !DIExpression()), !dbg !2864
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.97, i32 noundef 8, ptr noundef nonnull @__FUNCTION__.command_start, ptr noundef nonnull @.str.1.98) #19, !dbg !2865
  %7 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !2866
  %8 = load ptr, ptr %7, align 8, !dbg !2866, !tbaa !1030
  %9 = icmp eq ptr %8, null, !dbg !2868
  br i1 %9, label %11, label %10, !dbg !2869

10:                                               ; preds = %5
  tail call void @database_transaction_rollback(ptr noundef nonnull %8) #19, !dbg !2870
  br label %11, !dbg !2870

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !2871
  %13 = load ptr, ptr %12, align 8, !dbg !2871, !tbaa !1025
  %14 = getelementptr inbounds %struct.finedb_s, ptr %13, i64 0, i32 1, !dbg !2872
  %15 = load ptr, ptr %14, align 8, !dbg !2872, !tbaa !1027
  %16 = tail call ptr @database_transaction_start(ptr noundef %15, i32 noundef 1) #19, !dbg !2873
  store ptr %16, ptr %7, align 8, !dbg !2874, !tbaa !1030
  %17 = icmp eq ptr %16, null, !dbg !2875
  br i1 %17, label %18, label %20, !dbg !2877

18:                                               ; preds = %11
  call void @llvm.dbg.label(metadata !2863), !dbg !2878
  %19 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.97, i32 noundef 19, ptr noundef nonnull @__FUNCTION__.command_start, ptr noundef nonnull @.str.2.99) #19, !dbg !2879
  br label %20, !dbg !2880

20:                                               ; preds = %18, %11
  %21 = phi i32 [ 7, %18 ], [ 1, %11 ]
  %22 = phi i32 [ -13, %18 ], [ 1, %11 ], !dbg !2864
  %23 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %21, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !2864
  ret i32 %22, !dbg !2881
}

; Function Attrs: nounwind uwtable
define dso_local i32 @command_stop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 !dbg !2882 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 %1, metadata !2885, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 %2, metadata !2886, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 %3, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %4, metadata !2888, metadata !DIExpression()), !dbg !2890
  %6 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.97, i32 noundef 26, ptr noundef nonnull @__FUNCTION__.command_stop, ptr noundef nonnull @.str.3.100) #19, !dbg !2891
  %7 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !2892
  %8 = load ptr, ptr %7, align 8, !dbg !2892, !tbaa !1030
  %9 = icmp eq ptr %8, null, !dbg !2894
  br i1 %9, label %11, label %10, !dbg !2895

10:                                               ; preds = %5
  tail call void @database_transaction_rollback(ptr noundef nonnull %8) #19, !dbg !2896
  store ptr null, ptr %7, align 8, !dbg !2897, !tbaa !1030
  br label %13, !dbg !2898

11:                                               ; preds = %5
  call void @llvm.dbg.label(metadata !2889), !dbg !2899
  %12 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.97, i32 noundef 36, ptr noundef nonnull @__FUNCTION__.command_stop, ptr noundef nonnull @.str.4.101) #19, !dbg !2900
  br label %13, !dbg !2901

13:                                               ; preds = %11, %10
  %14 = phi i32 [ 7, %11 ], [ 1, %10 ]
  %15 = phi i32 [ -13, %11 ], [ 1, %10 ], !dbg !2890
  %16 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %14, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !2890
  ret i32 %15, !dbg !2902
}

; Function Attrs: nounwind uwtable
define dso_local ptr @connection_thread_new(ptr noundef %0) local_unnamed_addr #0 !dbg !2903 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2907, metadata !DIExpression()), !dbg !2909
  %2 = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #21, !dbg !2910
  call void @llvm.dbg.value(metadata ptr %2, metadata !2908, metadata !DIExpression()), !dbg !2909
  %3 = getelementptr inbounds %struct.tcp_thread_s, ptr %2, i64 0, i32 2, !dbg !2911
  store i32 -1, ptr %3, align 8, !dbg !2912, !tbaa !1915
  %4 = getelementptr inbounds %struct.tcp_thread_s, ptr %2, i64 0, i32 1, !dbg !2913
  store ptr %0, ptr %4, align 8, !dbg !2914, !tbaa !1025
  %5 = tail call i32 @pthread_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @connection_thread_execution, ptr noundef %2) #19, !dbg !2915
  %6 = icmp eq i32 %5, 0, !dbg !2915
  br i1 %6, label %9, label %7, !dbg !2917

7:                                                ; preds = %1
  %8 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 45, ptr noundef nonnull @__FUNCTION__.connection_thread_new, ptr noundef nonnull @.str.1.105) #19, !dbg !2918
  tail call void @free(ptr noundef nonnull %2) #19, !dbg !2920
  br label %12, !dbg !2920

9:                                                ; preds = %1
  %10 = load i64, ptr %2, align 8, !dbg !2921, !tbaa !2922
  %11 = tail call i32 @pthread_detach(i64 noundef %10) #19, !dbg !2923
  br label %12, !dbg !2924

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %2, %9 ], [ null, %7 ], !dbg !2909
  ret ptr %13, !dbg !2925
}

; Function Attrs: noreturn nounwind uwtable
define dso_local ptr @connection_thread_execution(ptr noundef %0) #2 !dbg !2926 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2928, metadata !DIExpression()), !dbg !2945
  %2 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 78, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.2.106) #19, !dbg !2946
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !2945
  %3 = tail call i32 @nn_socket(i32 noundef 1, i32 noundef 80) #19, !dbg !2947
  %4 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 3, !dbg !2949
  store i32 %3, ptr %4, align 4, !dbg !2950, !tbaa !1016
  %5 = icmp slt i32 %3, 0, !dbg !2951
  br i1 %5, label %9, label %6, !dbg !2952

6:                                                ; preds = %1
  %7 = tail call i32 @nn_connect(i32 noundef %3, ptr noundef nonnull @.str.3.107) #19, !dbg !2953
  %8 = icmp slt i32 %7, 0, !dbg !2954
  br i1 %8, label %9, label %11, !dbg !2955

9:                                                ; preds = %6, %1
  %10 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 83, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.4.108) #19, !dbg !2956
  tail call void @pthread_exit(ptr noundef null) #20, !dbg !2958
  unreachable, !dbg !2958

11:                                               ; preds = %6
  %12 = tail call i32 @nn_socket(i32 noundef 1, i32 noundef 81) #19, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %12, metadata !2930, metadata !DIExpression()), !dbg !2945
  %13 = icmp slt i32 %12, 0, !dbg !2961
  br i1 %13, label %21, label %14, !dbg !2962

14:                                               ; preds = %11
  %15 = tail call i32 @nn_connect(i32 noundef %12, ptr noundef nonnull @.str.5.109) #19, !dbg !2963
  %16 = icmp slt i32 %15, 0, !dbg !2964
  br i1 %16, label %21, label %17, !dbg !2965

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4
  br label %23, !dbg !2966

21:                                               ; preds = %14, %11
  %22 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 89, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.6.110) #19, !dbg !2968
  tail call void @pthread_exit(ptr noundef null) #20, !dbg !2970
  unreachable, !dbg !2970

23:                                               ; preds = %26, %17
  call void @llvm.dbg.value(metadata ptr null, metadata !2931, metadata !DIExpression()), !dbg !2971
  %24 = tail call i32 @nn_recv(i32 noundef %12, ptr noundef nonnull %18, i64 noundef 4, i32 noundef 0) #19, !dbg !2972
  %25 = icmp slt i32 %24, 0, !dbg !2973
  br i1 %25, label %26, label %27, !dbg !2966

26:                                               ; preds = %84, %27, %23
  br label %23, !dbg !2971, !llvm.loop !2974

27:                                               ; preds = %23
  %28 = load i32, ptr %18, align 8, !dbg !2977, !tbaa !1915
  %29 = icmp slt i32 %28, 0, !dbg !2978
  br i1 %29, label %26, label %30, !dbg !2979

30:                                               ; preds = %27
  %31 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 100, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.7.111) #19, !dbg !2980
  %32 = tail call ptr @ydynabin_new(ptr noundef null, i64 noundef 0, i32 noundef 0) #19, !dbg !2981
  call void @llvm.dbg.value(metadata ptr %32, metadata !2931, metadata !DIExpression()), !dbg !2971
  br label %33, !dbg !2982

33:                                               ; preds = %62, %30
  %34 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 109, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.8.112) #19, !dbg !2983
  %35 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %32, i64 noundef 1), !dbg !2984
  %36 = icmp eq i32 %35, 1, !dbg !2986
  br i1 %36, label %39, label %37, !dbg !2987

37:                                               ; preds = %33
  %38 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 111, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.9.115) #19, !dbg !2988
  br label %68, !dbg !2990

39:                                               ; preds = %33
  %40 = tail call ptr @ydynabin_forward(ptr noundef %32, i64 noundef 1) #19, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %40, metadata !2935, metadata !DIExpression()), !dbg !2992
  %41 = load i8, ptr %40, align 1, !dbg !2993, !tbaa !1267
  %42 = and i8 %41, 15, !dbg !2993
  call void @llvm.dbg.value(metadata i8 %42, metadata !2939, metadata !DIExpression()), !dbg !2992
  %43 = load ptr, ptr %19, align 8, !dbg !2994, !tbaa !1030
  %44 = icmp ne ptr %43, null, !dbg !2995
  %45 = and i8 %41, 16, !dbg !2996
  %46 = icmp ne i8 %45, 0, !dbg !2996
  %47 = select i1 %44, i1 true, i1 %46, !dbg !2996
  %48 = zext i1 %47 to i32, !dbg !2997
  call void @llvm.dbg.value(metadata i32 %48, metadata !2940, metadata !DIExpression()), !dbg !2992
  %49 = zext i8 %41 to i32, !dbg !2998
  %50 = lshr i32 %49, 6, !dbg !2998
  %51 = and i32 %50, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %51, metadata !2941, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 poison, metadata !2942, metadata !DIExpression()), !dbg !2992
  %52 = zext i8 %42 to i32, !dbg !2999
  %53 = zext i1 %44 to i32, !dbg !2999
  %54 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 122, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.10.116, i32 noundef %52, i32 noundef %53, i32 noundef %48, i32 noundef %51) #19, !dbg !2999
  %55 = zext i8 %42 to i64, !dbg !3000
  %56 = getelementptr inbounds [16 x ptr], ptr @_commands, i64 0, i64 %55, !dbg !3000
  %57 = load ptr, ptr %56, align 8, !dbg !3000, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %57, metadata !2943, metadata !DIExpression()), !dbg !2992
  %58 = icmp eq ptr %57, null, !dbg !3002
  br i1 %58, label %59, label %62, !dbg !3003

59:                                               ; preds = %39
  %60 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 125, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.11.117, i32 noundef %52) #19, !dbg !3004
  %61 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0), !dbg !3006
  br label %68, !dbg !3007

62:                                               ; preds = %39
  %63 = lshr i32 %49, 5, !dbg !3008
  %64 = and i32 %63, 1, !dbg !3008
  call void @llvm.dbg.value(metadata i32 %64, metadata !2942, metadata !DIExpression()), !dbg !2992
  %65 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 129, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.12.120, i32 noundef %52) #19, !dbg !3009
  %66 = tail call i32 %57(ptr noundef nonnull %0, i32 noundef %48, i32 noundef %51, i32 noundef %64, ptr noundef %32) #19, !dbg !3010
  %67 = icmp eq i32 %66, 1, !dbg !3012
  br i1 %67, label %33, label %68, !dbg !3013

68:                                               ; preds = %62, %59, %37
  call void @llvm.dbg.label(metadata !2944), !dbg !3014
  %69 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 134, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.13.121) #19, !dbg !3015
  call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3021
  %70 = load i32, ptr %18, align 8, !dbg !3023, !tbaa !1915
  %71 = icmp eq i32 %70, -1, !dbg !3025
  br i1 %71, label %84, label %72, !dbg !3026

72:                                               ; preds = %68
  %73 = load ptr, ptr %19, align 8, !dbg !3027, !tbaa !1030
  %74 = icmp eq ptr %73, null, !dbg !3029
  br i1 %74, label %77, label %75, !dbg !3030

75:                                               ; preds = %72
  tail call void @database_transaction_rollback(ptr noundef nonnull %73) #19, !dbg !3031
  store ptr null, ptr %19, align 8, !dbg !3033, !tbaa !1030
  %76 = load i32, ptr %18, align 8, !dbg !3034, !tbaa !1915
  br label %77, !dbg !3035

77:                                               ; preds = %75, %72
  %78 = phi i32 [ %76, %75 ], [ %70, %72 ], !dbg !3034
  %79 = tail call i32 @shutdown(i32 noundef %78, i32 noundef 2) #19, !dbg !3036
  store i32 -1, ptr %18, align 8, !dbg !3037, !tbaa !1915
  %80 = load ptr, ptr %20, align 8, !dbg !3038, !tbaa !1006
  %81 = icmp eq ptr %80, null, !dbg !3038
  br i1 %81, label %83, label %82, !dbg !3038

82:                                               ; preds = %77
  tail call void @free(ptr noundef nonnull %80) #19, !dbg !3038
  br label %83, !dbg !3038

83:                                               ; preds = %82, %77
  store ptr null, ptr %20, align 8, !dbg !3038, !tbaa !1006
  br label %84, !dbg !3039

84:                                               ; preds = %83, %68
  tail call void @ydynabin_delete(ptr noundef %32) #19, !dbg !3040
  br label %26, !dbg !3041
}

; Function Attrs: nounwind
declare !dbg !3042 i32 @pthread_detach(i64 noundef) local_unnamed_addr #3

declare !dbg !3045 i32 @nn_connect(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare !dbg !3046 void @pthread_exit(ptr noundef) local_unnamed_addr #18

declare !dbg !3047 ptr @ydynabin_new(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @connection_read_data(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !dbg !3050 {
  %4 = alloca [8196 x i8], align 16
  %5 = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3054, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %1, metadata !3055, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %2, metadata !3056, metadata !DIExpression()), !dbg !3073
  call void @llvm.lifetime.start.p0(i64 8196, ptr nonnull %4) #19, !dbg !3074
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3057, metadata !DIExpression()), !dbg !3075
  %6 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !3076
  %7 = load i32, ptr %6, align 8, !dbg !3076, !tbaa !1915
  %8 = icmp slt i32 %7, 0, !dbg !3078
  br i1 %8, label %53, label %9, !dbg !3079

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ydynabin_s, ptr %1, i64 0, i32 1, !dbg !3080
  %11 = load i64, ptr %10, align 8, !dbg !3080, !tbaa !3082
  %12 = icmp ult i64 %11, %2, !dbg !3084
  br i1 %12, label %13, label %53, !dbg !3085

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.timeval, ptr %5, i64 0, i32 1
  br label %16, !dbg !3086

16:                                               ; preds = %50, %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19, !dbg !3087
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3064, metadata !DIExpression()), !dbg !3088
  %17 = load ptr, ptr %14, align 8, !dbg !3089, !tbaa !1025
  %18 = getelementptr inbounds %struct.finedb_s, ptr %17, i64 0, i32 6, !dbg !3090
  %19 = load i16, ptr %18, align 8, !dbg !3090, !tbaa !1521
  %20 = zext i16 %19 to i64, !dbg !3091
  store i64 %20, ptr %5, align 8, !dbg !3092, !tbaa !3093
  store i64 0, ptr %15, align 8, !dbg !3095, !tbaa !3096
  %21 = load i32, ptr %6, align 8, !dbg !3097, !tbaa !1915
  %22 = call i32 @setsockopt(i32 noundef %21, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %5, i32 noundef 16) #19, !dbg !3099
  %23 = icmp slt i32 %22, 0, !dbg !3100
  br i1 %23, label %24, label %26, !dbg !3101

24:                                               ; preds = %16
  %25 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 157, ptr noundef nonnull @__FUNCTION__.connection_read_data, ptr noundef nonnull @.str.14.123) #19, !dbg !3102
  br label %26, !dbg !3102

26:                                               ; preds = %24, %16
  %27 = load i32, ptr %6, align 8, !dbg !3103, !tbaa !1915
  %28 = call i64 @recv(i32 noundef %27, ptr noundef nonnull %4, i64 noundef 8196, i32 noundef 0) #19, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %28, metadata !3061, metadata !DIExpression()), !dbg !3073
  %29 = icmp slt i64 %28, 0, !dbg !3106
  br i1 %29, label %30, label %32, !dbg !3107

30:                                               ; preds = %26
  %31 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 160, ptr noundef nonnull @__FUNCTION__.connection_read_data, ptr noundef nonnull @.str.15.124) #19, !dbg !3108
  br label %48, !dbg !3110

32:                                               ; preds = %26
  %33 = icmp eq i64 %28, 0, !dbg !3111
  br i1 %33, label %34, label %39, !dbg !3113

34:                                               ; preds = %32
  %35 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 164, ptr noundef nonnull @__FUNCTION__.connection_read_data, ptr noundef nonnull @.str.16.125) #19, !dbg !3114
  %36 = load i64, ptr %10, align 8, !dbg !3116, !tbaa !3082
  %37 = icmp ult i64 %36, %2, !dbg !3118
  br i1 %37, label %48, label %38, !dbg !3119

38:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19, !dbg !3120
  br label %53

39:                                               ; preds = %32
  store i64 0, ptr %5, align 8, !dbg !3121, !tbaa !3093
  %40 = load i32, ptr %6, align 8, !dbg !3122, !tbaa !1915
  %41 = call i32 @setsockopt(i32 noundef %40, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %5, i32 noundef 16) #19, !dbg !3124
  %42 = icmp slt i32 %41, 0, !dbg !3125
  br i1 %42, label %43, label %45, !dbg !3126

43:                                               ; preds = %39
  %44 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 172, ptr noundef nonnull @__FUNCTION__.connection_read_data, ptr noundef nonnull @.str.17.126) #19, !dbg !3127
  br label %45, !dbg !3127

45:                                               ; preds = %43, %39
  %46 = call i32 @ydynabin_expand(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef %28) #19, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %46, metadata !3063, metadata !DIExpression()), !dbg !3073
  %47 = icmp eq i32 %46, 1, !dbg !3130
  br i1 %47, label %50, label %48, !dbg !3073

48:                                               ; preds = %45, %34, %30
  %49 = phi i32 [ -13, %30 ], [ -104, %34 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19, !dbg !3120
  br label %53

50:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19, !dbg !3120
  %51 = load i64, ptr %10, align 8, !dbg !3131, !tbaa !3082
  %52 = icmp ult i64 %51, %2, !dbg !3132
  br i1 %52, label %16, label %53, !dbg !3086

53:                                               ; preds = %50, %48, %38, %9, %3
  %54 = phi i32 [ -104, %3 ], [ 1, %9 ], [ %49, %48 ], [ 1, %38 ], [ 1, %50 ], !dbg !3073
  call void @llvm.lifetime.end.p0(i64 8196, ptr nonnull %4) #19, !dbg !3133
  ret i32 %54, !dbg !3133
}

; Function Attrs: nounwind uwtable
define dso_local i32 @connection_send_response(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 !dbg !3134 {
  %7 = alloca i8, align 1
  %8 = alloca [3 x %struct.ybin_s], align 16
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 %1, metadata !3140, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 %2, metadata !3141, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 %3, metadata !3142, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata ptr %4, metadata !3143, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %5, metadata !3144, metadata !DIExpression()), !dbg !3167
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19, !dbg !3168
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #19, !dbg !3169
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3146, metadata !DIExpression()), !dbg !3170
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #19, !dbg !3171
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3152, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 1, metadata !3163, metadata !DIExpression()), !dbg !3167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19, !dbg !3173
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #19, !dbg !3174
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3166, metadata !DIExpression()), !dbg !3175
  %12 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 191, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.18.122, i32 noundef %1) #19, !dbg !3176
  store ptr null, ptr %9, align 8, !dbg !3177, !tbaa !1973
  %13 = getelementptr inbounds %struct.msghdr, ptr %9, i64 0, i32 1, !dbg !3178
  store i32 0, ptr %13, align 8, !dbg !3179, !tbaa !1977
  %14 = getelementptr inbounds %struct.msghdr, ptr %9, i64 0, i32 2, !dbg !3180
  store ptr %8, ptr %14, align 8, !dbg !3181, !tbaa !1980
  %15 = getelementptr inbounds %struct.msghdr, ptr %9, i64 0, i32 3, !dbg !3182
  store i64 1, ptr %15, align 8, !dbg !3183, !tbaa !1983
  %16 = getelementptr inbounds %struct.msghdr, ptr %9, i64 0, i32 4, !dbg !3184
  %17 = trunc i32 %1 to i8, !dbg !3185
  call void @llvm.dbg.value(metadata i8 %17, metadata !3145, metadata !DIExpression()), !dbg !3167
  %18 = icmp eq i32 %2, 0, !dbg !3186
  %19 = or i8 %17, 32, !dbg !3188
  %20 = select i1 %18, i8 %17, i8 %19, !dbg !3188
  %21 = icmp eq i32 %3, 0, !dbg !3189
  %22 = or i8 %20, 64
  %23 = select i1 %21, i8 %20, i8 %22, !dbg !3191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %16, i8 0, i64 20, i1 false), !dbg !3192
  store i8 %23, ptr %7, align 1, !dbg !3167, !tbaa !1267
  store ptr %7, ptr %8, align 16, !dbg !3193, !tbaa !1989
  %24 = getelementptr inbounds %struct.ybin_s, ptr %8, i64 0, i32 1, !dbg !3194
  store i64 1, ptr %24, align 8, !dbg !3195, !tbaa !1993
  %25 = icmp eq ptr %4, null, !dbg !3196
  br i1 %25, label %34, label %26, !dbg !3198

26:                                               ; preds = %6
  %27 = trunc i64 %5 to i32, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %27, metadata !3201, metadata !DIExpression()), !dbg !3204
  %28 = call i32 @llvm.bswap.i32(i32 %27), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %28, metadata !3165, metadata !DIExpression()), !dbg !3167
  store i32 %28, ptr %10, align 4, !dbg !3207, !tbaa !1100
  %29 = getelementptr inbounds [3 x %struct.ybin_s], ptr %8, i64 0, i64 1, !dbg !3208
  store ptr %10, ptr %29, align 16, !dbg !3209, !tbaa !1989
  %30 = getelementptr inbounds [3 x %struct.ybin_s], ptr %8, i64 0, i64 1, i32 1, !dbg !3210
  store i64 4, ptr %30, align 8, !dbg !3211, !tbaa !1993
  %31 = getelementptr inbounds [3 x %struct.ybin_s], ptr %8, i64 0, i64 2, !dbg !3212
  store ptr %4, ptr %31, align 16, !dbg !3213, !tbaa !1989
  %32 = getelementptr inbounds [3 x %struct.ybin_s], ptr %8, i64 0, i64 2, i32 1, !dbg !3214
  store i64 %5, ptr %32, align 8, !dbg !3215, !tbaa !1993
  store i64 3, ptr %15, align 8, !dbg !3216, !tbaa !1983
  %33 = add i64 %5, 5, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %33, metadata !3163, metadata !DIExpression()), !dbg !3167
  br label %34, !dbg !3218

34:                                               ; preds = %26, %6
  %35 = phi i64 [ %33, %26 ], [ 1, %6 ], !dbg !3167
  call void @llvm.dbg.value(metadata i64 %35, metadata !3163, metadata !DIExpression()), !dbg !3167
  %36 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !3219
  %37 = load ptr, ptr %36, align 8, !dbg !3219, !tbaa !1025
  %38 = getelementptr inbounds %struct.finedb_s, ptr %37, i64 0, i32 6, !dbg !3220
  %39 = load i16, ptr %38, align 8, !dbg !3220, !tbaa !1521
  %40 = zext i16 %39 to i64, !dbg !3221
  store i64 %40, ptr %11, align 8, !dbg !3222, !tbaa !3093
  %41 = getelementptr inbounds %struct.timeval, ptr %11, i64 0, i32 1, !dbg !3223
  store i64 0, ptr %41, align 8, !dbg !3224, !tbaa !3096
  %42 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !3225
  %43 = load i32, ptr %42, align 8, !dbg !3225, !tbaa !1915
  %44 = call i32 @setsockopt(i32 noundef %43, i32 noundef 1, i32 noundef 21, ptr noundef nonnull %11, i32 noundef 16) #19, !dbg !3227
  %45 = icmp slt i32 %44, 0, !dbg !3228
  br i1 %45, label %46, label %48, !dbg !3229

46:                                               ; preds = %34
  %47 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 221, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.19) #19, !dbg !3230
  br label %48, !dbg !3230

48:                                               ; preds = %46, %34
  %49 = load i32, ptr %42, align 8, !dbg !3231, !tbaa !1915
  %50 = call i64 @sendmsg(i32 noundef %49, ptr noundef nonnull %9, i32 noundef 0) #19, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %50, metadata !3164, metadata !DIExpression()), !dbg !3167
  %51 = icmp slt i64 %50, 0, !dbg !3233
  br i1 %51, label %52, label %54, !dbg !3235

52:                                               ; preds = %48
  %53 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 225, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.20) #19, !dbg !3236
  br label %70, !dbg !3238

54:                                               ; preds = %48
  %55 = icmp slt i64 %50, %35, !dbg !3239
  br i1 %55, label %56, label %58, !dbg !3241

56:                                               ; preds = %54
  %57 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 228, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.21, i64 noundef %50, i64 noundef %35) #19, !dbg !3242
  br label %70, !dbg !3244

58:                                               ; preds = %54
  %59 = icmp sgt i64 %50, %35, !dbg !3245
  br i1 %59, label %60, label %62, !dbg !3247

60:                                               ; preds = %58
  %61 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 231, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.22, i64 noundef %50, i64 noundef %35) #19, !dbg !3248
  br label %70, !dbg !3250

62:                                               ; preds = %58
  store i64 0, ptr %11, align 8, !dbg !3251, !tbaa !3093
  %63 = load i32, ptr %42, align 8, !dbg !3252, !tbaa !1915
  %64 = call i32 @setsockopt(i32 noundef %63, i32 noundef 1, i32 noundef 21, ptr noundef nonnull %11, i32 noundef 16) #19, !dbg !3254
  %65 = icmp slt i32 %64, 0, !dbg !3255
  br i1 %65, label %66, label %68, !dbg !3256

66:                                               ; preds = %62
  %67 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.104, i32 noundef 237, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.23) #19, !dbg !3257
  br label %68, !dbg !3257

68:                                               ; preds = %66, %62
  %69 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.104, i32 noundef 239, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.24, i64 noundef %50, ptr noundef %4) #19, !dbg !3258
  br label %70, !dbg !3259

70:                                               ; preds = %68, %60, %56, %52
  %71 = phi i32 [ -5, %52 ], [ -5, %56 ], [ -5, %60 ], [ 1, %68 ], !dbg !3167
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19, !dbg !3260
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19, !dbg !3260
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #19, !dbg !3260
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #19, !dbg !3260
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19, !dbg !3260
  ret i32 %71, !dbg !3260
}

; Function Attrs: nounwind
declare !dbg !3261 i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3262 void @ydynabin_delete(ptr noundef) local_unnamed_addr #4

declare !dbg !3265 i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !3268 i32 @ydynabin_expand(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @connection_thread_disconnect(ptr nocapture noundef %0) local_unnamed_addr #0 !dbg !3017 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3271
  %2 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !3272
  %3 = load i32, ptr %2, align 8, !dbg !3272, !tbaa !1915
  %4 = icmp eq i32 %3, -1, !dbg !3273
  br i1 %4, label %19, label %5, !dbg !3274

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !3275
  %7 = load ptr, ptr %6, align 8, !dbg !3275, !tbaa !1030
  %8 = icmp eq ptr %7, null, !dbg !3276
  br i1 %8, label %11, label %9, !dbg !3277

9:                                                ; preds = %5
  tail call void @database_transaction_rollback(ptr noundef nonnull %7) #19, !dbg !3278
  store ptr null, ptr %6, align 8, !dbg !3279, !tbaa !1030
  %10 = load i32, ptr %2, align 8, !dbg !3280, !tbaa !1915
  br label %11, !dbg !3281

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %3, %5 ], !dbg !3280
  %13 = tail call i32 @shutdown(i32 noundef %12, i32 noundef 2) #19, !dbg !3282
  store i32 -1, ptr %2, align 8, !dbg !3283, !tbaa !1915
  %14 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !3284
  %15 = load ptr, ptr %14, align 8, !dbg !3284, !tbaa !1006
  %16 = icmp eq ptr %15, null, !dbg !3284
  br i1 %16, label %18, label %17, !dbg !3284

17:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %15) #19, !dbg !3284
  br label %18, !dbg !3284

18:                                               ; preds = %17, %11
  store ptr null, ptr %14, align 8, !dbg !3284, !tbaa !1006
  br label %19, !dbg !3285

19:                                               ; preds = %18, %1
  ret void, !dbg !3285
}

; Function Attrs: nounwind uwtable
define dso_local void @connection_thread_push_socket(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3286 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3290, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %1, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i32 %1, ptr %3, align 4, !tbaa !1100
  call void @llvm.dbg.value(metadata ptr %3, metadata !3291, metadata !DIExpression(DW_OP_deref)), !dbg !3292
  %4 = call i32 @nn_send(i32 noundef %0, ptr noundef nonnull %3, i64 noundef 4, i32 noundef 0) #19, !dbg !3293
  ret void, !dbg !3294
}

; Function Attrs: nounwind uwtable
define dso_local i32 @command_drop(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 !dbg !3295 {
  %6 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3328, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %2, metadata !3330, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %3, metadata !3331, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %4, metadata !3332, metadata !DIExpression()), !dbg !3350
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19, !dbg !3351
  call void @llvm.dbg.value(metadata ptr null, metadata !3333, metadata !DIExpression()), !dbg !3350
  store ptr null, ptr %6, align 8, !dbg !3352, !tbaa !788
  %7 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.129, i32 noundef 16, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.1.130) #19, !dbg !3353
  %8 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !3354
  %9 = load ptr, ptr %8, align 8, !dbg !3354, !tbaa !1006
  %10 = icmp eq ptr %9, null, !dbg !3356
  br i1 %10, label %52, label %11, !dbg !3357

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0, !dbg !3358
  br i1 %12, label %13, label %15, !dbg !3360

13:                                               ; preds = %11
  %14 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !3361
  br label %15, !dbg !3361

15:                                               ; preds = %13, %11
  %16 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #21, !dbg !3362
  call void @llvm.dbg.value(metadata ptr %16, metadata !3333, metadata !DIExpression()), !dbg !3350
  store ptr %16, ptr %6, align 8, !dbg !3364, !tbaa !788
  %17 = icmp eq ptr %16, null, !dbg !3365
  br i1 %17, label %52, label %18, !dbg !3366

18:                                               ; preds = %15
  store i32 2, ptr %16, align 8, !dbg !3367, !tbaa !996
  br i1 %12, label %19, label %33, !dbg !3368

19:                                               ; preds = %18
  %20 = load ptr, ptr %8, align 8, !dbg !3369, !tbaa !1006
  %21 = icmp eq ptr %20, null, !dbg !3372
  br i1 %21, label %24, label %22, !dbg !3372

22:                                               ; preds = %19
  %23 = tail call noalias ptr @strdup(ptr noundef nonnull %20) #19, !dbg !3373
  br label %24, !dbg !3372

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %23, %22 ], [ null, %19 ], !dbg !3372
  call void @llvm.dbg.value(metadata ptr %16, metadata !3333, metadata !DIExpression()), !dbg !3350
  %26 = getelementptr inbounds %struct.writer_msg_s, ptr %16, i64 0, i32 1, !dbg !3374
  store ptr %25, ptr %26, align 8, !dbg !3375, !tbaa !1013
  %27 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 3, !dbg !3376
  %28 = load i32, ptr %27, align 4, !dbg !3376, !tbaa !1016
  call void @llvm.dbg.value(metadata ptr %6, metadata !3333, metadata !DIExpression(DW_OP_deref)), !dbg !3350
  %29 = call i32 @nn_send(i32 noundef %28, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0) #19, !dbg !3378
  %30 = icmp slt i32 %29, 0, !dbg !3379
  br i1 %30, label %31, label %59, !dbg !3380

31:                                               ; preds = %24
  %32 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.129, i32 noundef 32, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.2.131) #19, !dbg !3381
  br label %52, !dbg !3383

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !3384
  %35 = load ptr, ptr %34, align 8, !dbg !3384, !tbaa !1025
  %36 = getelementptr inbounds %struct.finedb_s, ptr %35, i64 0, i32 1, !dbg !3386
  %37 = load ptr, ptr %36, align 8, !dbg !3386, !tbaa !1027
  %38 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !3387
  %39 = load ptr, ptr %38, align 8, !dbg !3387, !tbaa !1030
  %40 = load ptr, ptr %8, align 8, !dbg !3388, !tbaa !1006
  %41 = tail call i32 @database_drop(ptr noundef %37, ptr noundef %39, ptr noundef %40) #19, !dbg !3389
  %42 = icmp eq i32 %41, 1, !dbg !3390
  br i1 %42, label %43, label %45, !dbg !3391

43:                                               ; preds = %33
  %44 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.129, i32 noundef 39, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.3.132) #19, !dbg !3392
  call void @llvm.dbg.value(metadata i8 1, metadata !3348, metadata !DIExpression()), !dbg !3350
  br label %47, !dbg !3394

45:                                               ; preds = %33
  %46 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.129, i32 noundef 42, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.4.133) #19, !dbg !3395
  call void @llvm.dbg.value(metadata i8 0, metadata !3348, metadata !DIExpression()), !dbg !3350
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ 6, %45 ], [ 1, %43 ], !dbg !3350
  %49 = phi ptr [ @.str.7.134, %45 ], [ @.str.6.135, %43 ], !dbg !3350
  call void @llvm.dbg.value(metadata i8 poison, metadata !3348, metadata !DIExpression()), !dbg !3350
  %50 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str.129, i32 noundef 45, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.5.136, ptr noundef nonnull %49) #19, !dbg !3397
  %51 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %48, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !3398
  br label %59, !dbg !3399

52:                                               ; preds = %31, %15, %5
  call void @llvm.dbg.label(metadata !3349), !dbg !3400
  %53 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str.129, i32 noundef 49, ptr noundef nonnull @__FUNCTION__.command_drop, ptr noundef nonnull @.str.8.137) #19, !dbg !3401
  %54 = load ptr, ptr %6, align 8, !dbg !3402, !tbaa !788
  call void @llvm.dbg.value(metadata ptr %54, metadata !3333, metadata !DIExpression()), !dbg !3350
  %55 = icmp eq ptr %54, null, !dbg !3402
  br i1 %55, label %57, label %56, !dbg !3402

56:                                               ; preds = %52
  call void @free(ptr noundef nonnull %54) #19, !dbg !3402
  br label %57, !dbg !3402

57:                                               ; preds = %56, %52
  call void @llvm.dbg.value(metadata ptr null, metadata !3333, metadata !DIExpression()), !dbg !3350
  store ptr null, ptr %6, align 8, !dbg !3402, !tbaa !788
  %58 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #19, !dbg !3403
  br label %59, !dbg !3404

59:                                               ; preds = %57, %47, %24
  %60 = phi i32 [ -5, %57 ], [ %51, %47 ], [ 1, %24 ], !dbg !3350
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19, !dbg !3405
  ret i32 %60, !dbg !3405
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2, !628, !639, !665, !668, !683, !694, !706, !731, !402, !754, !756, !759, !527, !761}
!llvm.ident = !{!763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763, !763}
!llvm.module.flags = !{!764, !765, !766, !767, !768, !769}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "finedb_g", scope: !2, file: !3, line: 20, type: !76, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !41, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "main.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7c53ee4eb893ec28c6f0c99a4b65a1c8")
!4 = !{!5, !11, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !6, line: 45, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "YFALSE", value: 0)
!10 = !DIEnumerator(name: "YTRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_type_e", file: !12, line: 245, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "YLOG_STDERR", value: 1)
!15 = !DIEnumerator(name: "YLOG_FILE", value: 2)
!16 = !DIEnumerator(name: "YLOG_SYSLOG", value: 4)
!17 = !DIEnumerator(name: "YLOG_HANDLER", value: 8)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !12, line: 267, baseType: !7, size: 32, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!21 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!22 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!23 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!24 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!25 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!26 = !{!27, !7, !28, !31, !36, !37, !40}
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !32, line: 72, baseType: !33)
!32 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !{!0, !42, !47, !52, !58, !63, !66, !71}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 120, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 15)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 56, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 7)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 40, elements: !56)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!56 = !{!57}
!57 = !DISubrange(count: 5)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 832, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 104)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 120, elements: !45)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 232, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 29)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4248, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 531)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !79)
!78 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !80)
!80 = !{!81, !83, !88, !89, !90, !93, !97}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !79, file: !78, line: 42, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !6, line: 52, baseType: !5)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !79, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !86, line: 197, baseType: !87)
!86 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !86, line: 197, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !79, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !79, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !79, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !92, line: 27, baseType: !30)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !79, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !95, line: 56, baseType: !96)
!95 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !79, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !100, line: 17, type: !101, isLocal: true, isDefinition: true)
!100 = !DIFile(filename: "command_del.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "a89492865516366155a7a5f348975dd0")
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 112, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 14)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !100, line: 17, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 96, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 12)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !100, line: 17, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 96, elements: !107)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !100, line: 45, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 328, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 41)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !100, line: 52, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 216, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 27)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !100, line: 55, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 280, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 35)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !100, line: 60, type: !44, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !100, line: 60, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 3)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !100, line: 60, type: !49, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !100, line: 66, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 80, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 10)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !143, line: 23, type: !144, isLocal: true, isDefinition: true)
!143 = !DIFile(filename: "server.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4987e9b216923177d8f94ac3c2e98db1")
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 72, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 9)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !143, line: 23, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 248, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 31)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !143, line: 23, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 104, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 13)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !143, line: 29, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 32)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !143, line: 32, type: !159, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !143, line: 40, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 88, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 11)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !143, line: 44, type: !154, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !143, line: 66, type: !106, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !143, line: 66, type: !68, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !177, line: 13, type: !44, isLocal: true, isDefinition: true)
!177 = !DIFile(filename: "command_ping.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "b38166355381d93ac2785964c898e39b")
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !177, line: 13, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 104, elements: !155)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !177, line: 13, type: !154, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !185, line: 16, type: !186, isLocal: true, isDefinition: true)
!185 = !DIFile(filename: "writer_thread.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9fdba751c28a582e86262a953f23a9ae")
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 184, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 23)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !185, line: 17, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 16)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !185, line: 17, type: !106, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !185, line: 17, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 336, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 42)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !185, line: 29, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 152, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 19)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !185, line: 31, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 208, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 26)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !185, line: 33, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 288, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 36)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !185, line: 37, type: !111, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !185, line: 39, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 224, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 28)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !185, line: 41, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 296, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 37)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !230, line: 33, type: !231, isLocal: true, isDefinition: true)
!230 = !DIFile(filename: "finedb.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4e29fb71de217c956e2bf4cc5fc98b87")
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 6)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !230, line: 33, type: !191, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !230, line: 38, type: !144, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !230, line: 38, type: !106, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !230, line: 38, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 200, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 25)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !230, line: 43, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 24)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !230, line: 44, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 264, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 33)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !230, line: 50, type: !159, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !230, line: 63, type: !138, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !261, line: 25, type: !101, isLocal: true, isDefinition: true)
!261 = !DIFile(filename: "command_put.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9da0ac82fe52607193c75654eb3eec33")
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !261, line: 25, type: !106, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !261, line: 25, type: !111, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !261, line: 40, type: !154, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !261, line: 54, type: !154, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !261, line: 73, type: !225, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !261, line: 77, type: !119, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !261, line: 82, type: !242, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !261, line: 94, type: !114, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !261, line: 125, type: !208, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !261, line: 128, type: !213, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !261, line: 138, type: !44, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !261, line: 138, type: !131, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !261, line: 138, type: !49, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !261, line: 142, type: !138, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !292, line: 20, type: !44, isLocal: true, isDefinition: true)
!292 = !DIFile(filename: "command_list.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e4cbd883bcb9d23ee06819d9e0fdc7f3")
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !292, line: 20, type: !180, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !292, line: 20, type: !154, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !292, line: 31, type: !191, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !292, line: 34, type: !166, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !292, line: 47, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 152, elements: !204)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !292, line: 47, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 20)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !292, line: 63, type: !242, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !292, line: 66, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 384, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 48)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !318, line: 8, type: !166, isLocal: true, isDefinition: true)
!318 = !DIFile(filename: "database.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "00058a6d5c3cfab231afd3ed67f1b000")
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !318, line: 8, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 112, elements: !102)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !318, line: 8, type: !44, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !318, line: 12, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 304, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 38)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !318, line: 18, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 272, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 34)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !318, line: 25, type: !159, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !318, line: 33, type: !220, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !318, line: 40, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 344, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 43)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !318, line: 44, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 136, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 17)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !318, line: 50, type: !65, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !318, line: 50, type: !191, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !318, line: 52, type: !345, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !318, line: 65, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 216, elements: !120)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !318, line: 65, type: !124, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !318, line: 77, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 224, elements: !221)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !318, line: 77, type: !124, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !318, line: 106, type: !180, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !318, line: 106, type: !225, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !318, line: 118, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 312, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 39)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !318, line: 147, type: !180, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !318, line: 186, type: !180, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !318, line: 214, type: !101, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !318, line: 217, type: !326, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !318, line: 236, type: !321, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !318, line: 243, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 320, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 40)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !318, line: 281, type: !321, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !318, line: 288, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 240, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 30)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "path", scope: !397, file: !398, line: 11, type: !409, isLocal: true, isDefinition: true)
!397 = distinct !DISubprogram(name: "get_self_path", scope: !398, file: !398, line: 10, type: !399, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !407)
!398 = !DIFile(filename: "self_path.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "2bbc590e709ff14bd139f9008aac95cd")
!399 = !DISubroutineType(types: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !403, globals: !404, splitDebugInlining: false, nameTableKind: None)
!403 = !{!40}
!404 = !{!395, !405}
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !398, line: 14, type: !44, isLocal: true, isDefinition: true)
!407 = !{!408}
!408 = !DILocalVariable(name: "pt", scope: !397, file: !398, line: 12, type: !38)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32768, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 4096)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !414, line: 18, type: !101, isLocal: true, isDefinition: true)
!414 = !DIFile(filename: "command_get.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "97f84e4100e311456268f78cada1acf6")
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !414, line: 18, type: !106, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !414, line: 18, type: !111, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !414, line: 45, type: !345, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !414, line: 49, type: !119, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !414, line: 56, type: !44, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !414, line: 62, type: !111, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !414, line: 67, type: !138, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !431, line: 18, type: !191, isLocal: true, isDefinition: true)
!431 = !DIFile(filename: "command_setdb.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "79bf1a53ff4e683f73e5a870bf619e61")
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !431, line: 18, type: !321, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !431, line: 18, type: !101, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !431, line: 36, type: !345, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !431, line: 40, type: !111, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !442, line: 8, type: !443, isLocal: true, isDefinition: true)
!442 = !DIFile(filename: "command_start_stop.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "6742c9ae510390180624d8006d030220")
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 168, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 21)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !442, line: 8, type: !321, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !442, line: 8, type: !101, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !442, line: 19, type: !111, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !442, line: 26, type: !180, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !442, line: 26, type: !154, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !442, line: 36, type: !166, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !460, line: 45, type: !306, isLocal: true, isDefinition: true)
!460 = !DIFile(filename: "connection_thread.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d5b8816e925b284004cff38d62711b09")
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !460, line: 45, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 176, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 22)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !460, line: 45, type: !242, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !460, line: 78, type: !361, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !460, line: 78, type: !154, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !460, line: 82, type: !186, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !460, line: 83, type: !326, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !460, line: 88, type: !247, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !460, line: 89, type: !340, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !460, line: 100, type: !159, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !460, line: 109, type: !208, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !460, line: 111, type: !186, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !460, line: 120, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 368, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 46)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !460, line: 125, type: !345, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !460, line: 129, type: !166, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !460, line: 134, type: !203, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !460, line: 157, type: !499, isLocal: true, isDefinition: true)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 168, elements: !444)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !460, line: 157, type: !331, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !460, line: 160, type: !154, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !460, line: 164, type: !101, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !460, line: 172, type: !370, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !460, line: 191, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 200, elements: !243)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !460, line: 191, type: !306, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !460, line: 221, type: !331, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !460, line: 225, type: !242, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !460, line: 228, type: !313, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !460, line: 231, type: !124, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !460, line: 237, type: !370, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !460, line: 239, type: !306, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "_commands", scope: !527, file: !460, line: 15, type: !587, isLocal: true, isDefinition: true)
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !528, retainedTypes: !552, globals: !586, splitDebugInlining: false, nameTableKind: None)
!528 = !{!5, !18, !529, !535, !542}
!529 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !530, line: 41, baseType: !7, size: 32, elements: !531)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "619dab7fd722af1ca0fa7f4b6fd4f842")
!531 = !{!532, !533, !534}
!532 = !DIEnumerator(name: "SHUT_RD", value: 0)
!533 = !DIEnumerator(name: "SHUT_WR", value: 1)
!534 = !DIEnumerator(name: "SHUT_RDWR", value: 2)
!535 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_option_e", file: !536, line: 88, baseType: !7, size: 32, elements: !537)
!536 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!537 = !{!538, !539, !540, !541}
!538 = !DIEnumerator(name: "PROTO_OPT_SYNC", value: 16)
!539 = !DIEnumerator(name: "PROTO_OPT_SERIALIZED", value: 32)
!540 = !DIEnumerator(name: "PROTO_OPT_COMPRESSED", value: 64)
!541 = !DIEnumerator(name: "PROTO_OPT_SERVTOSERV", value: 128)
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !536, line: 108, baseType: !7, size: 32, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551}
!544 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!545 = !DIEnumerator(name: "RESP_OK", value: 1)
!546 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!547 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!548 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!549 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!550 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!551 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!552 = !{!40, !553, !28, !578, !579, !583}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !556)
!555 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !557)
!557 = !{!558, !559, !571, !572, !573, !574}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !556, file: !555, line: 24, baseType: !91, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !556, file: !555, line: 25, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !562, file: !78, line: 42, baseType: !82, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !562, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !562, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !562, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !562, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !562, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !562, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !556, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !556, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !556, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !556, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !86, line: 204, baseType: !577)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !86, line: 204, flags: DIFlagFwdDecl)
!578 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !580, line: 115, baseType: !581)
!580 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !582, line: 204, baseType: !38)
!582 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !584, line: 26, baseType: !585)
!584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !582, line: 42, baseType: !7)
!586 = !{!458, !461, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !491, !493, !495, !497, !500, !502, !504, !506, !508, !511, !513, !515, !517, !519, !521, !523, !525}
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 1024, elements: !192)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "command_handler_t", file: !589, line: 19, baseType: !590)
!589 = !DIFile(filename: "./command.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "87e91f1361a7d18a8e85eefadb7c868e")
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!593, !553, !82, !82, !82, !595}
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !594, line: 23, baseType: !36)
!594 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !598)
!597 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !598, file: !597, line: 38, baseType: !40, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !598, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !598, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !598, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !606, line: 16, type: !44, isLocal: true, isDefinition: true)
!606 = !DIFile(filename: "command_drop.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "05ba3cf55f911d82ca19e623753d952b")
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !606, line: 16, type: !180, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !606, line: 16, type: !111, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !606, line: 32, type: !114, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !606, line: 39, type: !615, isLocal: true, isDefinition: true)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 144, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 18)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !606, line: 42, type: !242, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !606, line: 45, type: !191, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !606, line: 45, type: !131, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !606, line: 45, type: !49, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !606, line: 49, type: !166, isLocal: true, isDefinition: true)
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !629, retainedTypes: !636, globals: !638, splitDebugInlining: false, nameTableKind: None)
!629 = !{!5, !630, !18, !542}
!630 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writer_action_e", file: !631, line: 13, baseType: !7, size: 32, elements: !632)
!631 = !DIFile(filename: "./writer_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "3a724ae2321376421ad42c1087f049ab")
!632 = !{!633, !634, !635}
!633 = !DIEnumerator(name: "WRITE_PUT", value: 0)
!634 = !DIEnumerator(name: "WRITE_DEL", value: 1)
!635 = !DIEnumerator(name: "WRITE_DROP", value: 2)
!636 = !{!40, !28, !637}
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !582, line: 40, baseType: !27)
!638 = !{!98, !104, !109, !112, !117, !122, !127, !129, !134, !136}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !640, retainedTypes: !653, globals: !664, splitDebugInlining: false, nameTableKind: None)
!640 = !{!641, !18, !5}
!641 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !642, line: 24, baseType: !7, size: 32, elements: !643)
!642 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652}
!644 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!645 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!646 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!647 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!648 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!649 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!650 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!651 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!652 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!653 = !{!40, !654, !656, !637}
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !655, line: 30, baseType: !583)
!655 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !658, line: 180, size: 128, elements: !659)
!658 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!659 = !{!660, !663}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !657, file: !658, line: 182, baseType: !661, size: 16)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !662, line: 28, baseType: !27)
!662 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !657, file: !658, line: 183, baseType: !101, size: 112, offset: 16)
!664 = !{!141, !147, !152, !157, !162, !164, !169, !171, !173}
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, globals: !667, splitDebugInlining: false, nameTableKind: None)
!666 = !{!5, !18, !542}
!667 = !{!175, !178, !181}
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !669, retainedTypes: !670, globals: !682, splitDebugInlining: false, nameTableKind: None)
!669 = !{!5, !18, !630}
!670 = !{!671, !40}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !673, file: !78, line: 42, baseType: !82, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !673, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !673, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !673, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !673, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !673, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !673, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!682 = !{!183, !189, !194, !196, !201, !206, !211, !216, !218, !223}
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !684, retainedTypes: !403, globals: !693, splitDebugInlining: false, nameTableKind: None)
!684 = !{!5, !685, !18}
!685 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yv_size_e", file: !95, line: 31, baseType: !7, size: 32, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692}
!687 = !DIEnumerator(name: "YVECT_SIZE_NANO", value: 4)
!688 = !DIEnumerator(name: "YVECT_SIZE_MINI", value: 32)
!689 = !DIEnumerator(name: "YVECT_SIZE_MEDIUM", value: 256)
!690 = !DIEnumerator(name: "YVECT_SIZE_DEFAULT", value: 4096)
!691 = !DIEnumerator(name: "YVECT_SIZE_BIG", value: 65536)
!692 = !DIEnumerator(name: "YVECT_SIZE_HUGE", value: 1048576)
!693 = !{!228, !234, !236, !238, !240, !245, !250, !255, !257}
!694 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !629, retainedTypes: !636, globals: !695, splitDebugInlining: false, nameTableKind: None)
!695 = !{!259, !262, !264, !266, !268, !270, !272, !274, !276, !696, !698, !700, !702, !278, !280, !704, !282, !284, !286, !288}
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !261, line: 105, type: !154, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !261, line: 107, type: !220, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !261, line: 115, type: !203, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !261, line: 119, type: !242, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !261, line: 134, type: !392, isLocal: true, isDefinition: true)
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !707, globals: !730, splitDebugInlining: false, nameTableKind: None)
!707 = !{!708, !38, !40, !729, !579, !637}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !711)
!711 = !{!712, !713, !725, !726, !727, !728}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !710, file: !555, line: 24, baseType: !91, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !710, file: !555, line: 25, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !716, file: !78, line: 42, baseType: !82, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !716, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !716, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !716, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !716, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !716, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !716, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !710, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !710, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !710, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !710, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !584, line: 25, baseType: !637)
!730 = !{!290, !293, !295, !297, !299, !301, !304, !309, !311}
!731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !732, retainedTypes: !403, globals: !753, splitDebugInlining: false, nameTableKind: None)
!732 = !{!18, !5, !733}
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MDB_cursor_op", file: !86, line: 321, baseType: !7, size: 32, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!735 = !DIEnumerator(name: "MDB_FIRST", value: 0)
!736 = !DIEnumerator(name: "MDB_FIRST_DUP", value: 1)
!737 = !DIEnumerator(name: "MDB_GET_BOTH", value: 2)
!738 = !DIEnumerator(name: "MDB_GET_BOTH_RANGE", value: 3)
!739 = !DIEnumerator(name: "MDB_GET_CURRENT", value: 4)
!740 = !DIEnumerator(name: "MDB_GET_MULTIPLE", value: 5)
!741 = !DIEnumerator(name: "MDB_LAST", value: 6)
!742 = !DIEnumerator(name: "MDB_LAST_DUP", value: 7)
!743 = !DIEnumerator(name: "MDB_NEXT", value: 8)
!744 = !DIEnumerator(name: "MDB_NEXT_DUP", value: 9)
!745 = !DIEnumerator(name: "MDB_NEXT_MULTIPLE", value: 10)
!746 = !DIEnumerator(name: "MDB_NEXT_NODUP", value: 11)
!747 = !DIEnumerator(name: "MDB_PREV", value: 12)
!748 = !DIEnumerator(name: "MDB_PREV_DUP", value: 13)
!749 = !DIEnumerator(name: "MDB_PREV_NODUP", value: 14)
!750 = !DIEnumerator(name: "MDB_SET", value: 15)
!751 = !DIEnumerator(name: "MDB_SET_KEY", value: 16)
!752 = !DIEnumerator(name: "MDB_SET_RANGE", value: 17)
!753 = !{!316, !319, !322, !324, !329, !334, !336, !338, !343, !348, !350, !352, !354, !357, !359, !362, !364, !366, !368, !373, !375, !377, !379, !381, !383, !388, !390}
!754 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !636, globals: !755, splitDebugInlining: false, nameTableKind: None)
!755 = !{!412, !415, !417, !419, !421, !423, !425, !427}
!756 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !757, globals: !758, splitDebugInlining: false, nameTableKind: None)
!757 = !{!40, !28}
!758 = !{!429, !432, !434, !436, !438}
!759 = distinct !DICompileUnit(language: DW_LANG_C99, file: !442, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !403, globals: !760, splitDebugInlining: false, nameTableKind: None)
!760 = !{!440, !446, !448, !450, !452, !454, !456}
!761 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !629, retainedTypes: !403, globals: !762, splitDebugInlining: false, nameTableKind: None)
!762 = !{!604, !607, !609, !611, !613, !618, !620, !622, !624, !626}
!763 = !{!"clang version 16.0.0"}
!764 = !{i32 7, !"Dwarf Version", i32 5}
!765 = !{i32 2, !"Debug Info Version", i32 3}
!766 = !{i32 1, !"wchar_size", i32 4}
!767 = !{i32 8, !"PIC Level", i32 2}
!768 = !{i32 7, !"PIE Level", i32 2}
!769 = !{i32 7, !"uwtable", i32 2}
!770 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 53, type: !771, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!36, !36, !37}
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784}
!774 = !DILocalVariable(name: "argc", arg: 1, scope: !770, file: !3, line: 53, type: !36)
!775 = !DILocalVariable(name: "argv", arg: 2, scope: !770, file: !3, line: 53, type: !37)
!776 = !DILocalVariable(name: "optstr", scope: !770, file: !3, line: 54, type: !38)
!777 = !DILocalVariable(name: "i", scope: !770, file: !3, line: 55, type: !36)
!778 = !DILocalVariable(name: "nbr_dbs", scope: !770, file: !3, line: 56, type: !7)
!779 = !DILocalVariable(name: "mapsize", scope: !770, file: !3, line: 57, type: !28)
!780 = !DILocalVariable(name: "nbr_threads", scope: !770, file: !3, line: 58, type: !27)
!781 = !DILocalVariable(name: "port", scope: !770, file: !3, line: 59, type: !27)
!782 = !DILocalVariable(name: "timeout", scope: !770, file: !3, line: 60, type: !27)
!783 = !DILocalVariable(name: "db_path", scope: !770, file: !3, line: 61, type: !38)
!784 = !DILocalVariable(name: "finedb", scope: !770, file: !3, line: 62, type: !76)
!785 = !DILocation(line: 0, scope: !770)
!786 = !DILocation(line: 65, column: 2, scope: !770)
!787 = !DILocation(line: 67, column: 2, scope: !770)
!788 = !{!789, !789, i64 0}
!789 = !{!"any pointer", !790, i64 0}
!790 = !{!"omnipotent char", !791, i64 0}
!791 = !{!"Simple C/C++ TBAA"}
!792 = !DILocation(line: 68, column: 2, scope: !770)
!793 = !DILocation(line: 70, column: 2, scope: !770)
!794 = !DILocation(line: 57, column: 9, scope: !770)
!795 = !DILocation(line: 58, column: 17, scope: !770)
!796 = !DILocation(line: 59, column: 17, scope: !770)
!797 = !DILocation(line: 60, column: 17, scope: !770)
!798 = !DILocation(line: 61, column: 8, scope: !770)
!799 = !DILocation(line: 56, column: 15, scope: !770)
!800 = !DILocation(line: 70, column: 14, scope: !770)
!801 = distinct !{!801, !793, !802}
!802 = !DILocation(line: 97, column: 2, scope: !770)
!803 = !DILocation(line: 73, column: 39, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 71, column: 14)
!805 = distinct !DILexicalBlock(scope: !770, file: !3, line: 70, column: 49)
!806 = !DILocalVariable(name: "__nptr", arg: 1, scope: !807, file: !808, line: 362, type: !401)
!807 = distinct !DISubprogram(name: "atoi", scope: !808, file: !808, line: 362, type: !809, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !811)
!808 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!809 = !DISubroutineType(types: !810)
!810 = !{!36, !401}
!811 = !{!806}
!812 = !DILocation(line: 0, scope: !807, inlinedAt: !813)
!813 = distinct !DILocation(line: 73, column: 34, scope: !804)
!814 = !DILocation(line: 364, column: 16, scope: !807, inlinedAt: !813)
!815 = !DILocation(line: 73, column: 18, scope: !804)
!816 = !DILocation(line: 74, column: 4, scope: !804)
!817 = !DILocation(line: 76, column: 33, scope: !804)
!818 = !DILocation(line: 0, scope: !807, inlinedAt: !819)
!819 = distinct !DILocation(line: 76, column: 28, scope: !804)
!820 = !DILocation(line: 364, column: 16, scope: !807, inlinedAt: !819)
!821 = !DILocation(line: 364, column: 10, scope: !807, inlinedAt: !819)
!822 = !DILocation(line: 77, column: 4, scope: !804)
!823 = !DILocation(line: 79, column: 27, scope: !804)
!824 = !DILocation(line: 0, scope: !807, inlinedAt: !825)
!825 = distinct !DILocation(line: 79, column: 22, scope: !804)
!826 = !DILocation(line: 364, column: 16, scope: !807, inlinedAt: !825)
!827 = !DILocation(line: 79, column: 14, scope: !804)
!828 = !DILocation(line: 80, column: 4, scope: !804)
!829 = !DILocation(line: 82, column: 32, scope: !804)
!830 = !DILocation(line: 0, scope: !807, inlinedAt: !831)
!831 = distinct !DILocation(line: 82, column: 27, scope: !804)
!832 = !DILocation(line: 364, column: 16, scope: !807, inlinedAt: !831)
!833 = !DILocation(line: 82, column: 11, scope: !804)
!834 = !DILocation(line: 83, column: 4, scope: !804)
!835 = !DILocation(line: 85, column: 21, scope: !804)
!836 = !DILocation(line: 85, column: 14, scope: !804)
!837 = !DILocation(line: 86, column: 4, scope: !804)
!838 = !DILocation(line: 88, column: 19, scope: !804)
!839 = !DILocation(line: 0, scope: !807, inlinedAt: !840)
!840 = distinct !DILocation(line: 88, column: 14, scope: !804)
!841 = !DILocation(line: 364, column: 16, scope: !807, inlinedAt: !840)
!842 = !DILocation(line: 88, column: 14, scope: !804)
!843 = !DILocation(line: 89, column: 4, scope: !804)
!844 = !DILocation(line: 91, column: 4, scope: !804)
!845 = !DILocation(line: 92, column: 4, scope: !804)
!846 = !DILocation(line: 94, column: 4, scope: !804)
!847 = !DILocation(line: 95, column: 4, scope: !804)
!848 = !DILocation(line: 98, column: 2, scope: !770)
!849 = !DILocation(line: 103, column: 11, scope: !770)
!850 = !DILocation(line: 104, column: 11, scope: !770)
!851 = !DILocation(line: 106, column: 2, scope: !770)
!852 = !DILocation(line: 108, column: 2, scope: !770)
!853 = distinct !DISubprogram(name: "signal_handler", scope: !3, file: !3, line: 41, type: !34, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !854)
!854 = !{!855}
!855 = !DILocalVariable(name: "sig", arg: 1, scope: !853, file: !3, line: 41, type: !36)
!856 = !DILocation(line: 0, scope: !853)
!857 = !DILocation(line: 42, column: 2, scope: !853)
!858 = !DILocation(line: 43, column: 2, scope: !853)
!859 = !DILocation(line: 44, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !3, line: 44, column: 6)
!861 = !DILocation(line: 44, column: 6, scope: !853)
!862 = !DILocation(line: 45, column: 3, scope: !860)
!863 = !DILocation(line: 47, column: 2, scope: !853)
!864 = !DISubprogram(name: "signal", scope: !32, file: !32, line: 88, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{!31, !36, !31}
!867 = !{}
!868 = !DISubprogram(name: "ylog_init", scope: !12, file: !12, line: 332, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !36, !38, !38, !7}
!871 = !DISubprogram(name: "ylog_set_prio", scope: !12, file: !12, line: 341, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !874}
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !12, line: 278, baseType: !18)
!875 = !DISubprogram(name: "getopt", scope: !876, file: !876, line: 91, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!876 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_core.h", directory: "", checksumkind: CSK_MD5, checksum: "81ab788980ce9d5be2ba931a6ae17301")
!877 = !DISubroutineType(types: !878)
!878 = !{!36, !36, !879, !401}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!881 = !DISubprogram(name: "strtol", scope: !808, file: !808, line: 177, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!882 = !DISubroutineType(types: !883)
!883 = !{!884, !885, !886, !36}
!884 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!885 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !401)
!886 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!887 = !DISubprogram(name: "strdup", scope: !888, file: !888, line: 187, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!888 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!889 = !DISubroutineType(types: !890)
!890 = !{!38, !401}
!891 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 27, type: !892, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!892 = !DISubroutineType(types: !893)
!893 = !{null}
!894 = !DILocation(line: 28, column: 2, scope: !891)
!895 = !DILocation(line: 38, column: 1, scope: !891)
!896 = !DISubprogram(name: "exit", scope: !808, file: !808, line: 624, type: !34, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !867)
!897 = !DISubprogram(name: "ylog_write", scope: !12, file: !12, line: 385, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!898 = !DISubroutineType(types: !899)
!899 = !{!82, !874, !401, !36, !401, !401, null}
!900 = distinct !DISubprogram(name: "command_del", scope: !100, file: !100, line: 11, type: !901, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !932)
!901 = !DISubroutineType(types: !902)
!902 = !{!593, !903, !82, !82, !82, !924}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !906)
!906 = !{!907, !908, !920, !921, !922, !923}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !905, file: !555, line: 24, baseType: !91, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !905, file: !555, line: 25, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !911, file: !78, line: 42, baseType: !82, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !911, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !911, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !911, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !911, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !911, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !911, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !905, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !905, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !905, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !905, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !927)
!927 = !{!928, !929, !930, !931}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !926, file: !597, line: 38, baseType: !40, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !926, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !926, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !926, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!932 = !{!933, !934, !935, !936, !937, !938, !940, !941, !942, !943, !960, !961}
!933 = !DILocalVariable(name: "thread", arg: 1, scope: !900, file: !100, line: 11, type: !903)
!934 = !DILocalVariable(name: "sync", arg: 2, scope: !900, file: !100, line: 11, type: !82)
!935 = !DILocalVariable(name: "compress", arg: 3, scope: !900, file: !100, line: 11, type: !82)
!936 = !DILocalVariable(name: "serialized", arg: 4, scope: !900, file: !100, line: 11, type: !82)
!937 = !DILocalVariable(name: "buff", arg: 5, scope: !900, file: !100, line: 11, type: !924)
!938 = !DILocalVariable(name: "pkey_len", scope: !900, file: !100, line: 12, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!940 = !DILocalVariable(name: "key_len", scope: !900, file: !100, line: 12, type: !729)
!941 = !DILocalVariable(name: "ptr", scope: !900, file: !100, line: 13, type: !40)
!942 = !DILocalVariable(name: "key", scope: !900, file: !100, line: 13, type: !40)
!943 = !DILocalVariable(name: "msg", scope: !900, file: !100, line: 14, type: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_msg_t", file: !631, line: 34, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer_msg_s", file: !631, line: 28, size: 448, elements: !947)
!947 = !{!948, !950, !951, !958, !959}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !946, file: !631, line: 29, baseType: !949, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_action_t", file: !631, line: 17, baseType: !630)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !946, file: !631, line: 30, baseType: !38, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !946, file: !631, line: 31, baseType: !952, size: 128, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !953, line: 33, baseType: !954)
!953 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !953, line: 27, size: 128, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !954, file: !953, line: 28, baseType: !40, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !954, file: !953, line: 29, baseType: !28, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !946, file: !631, line: 32, baseType: !952, size: 128, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "create_only", scope: !946, file: !631, line: 33, baseType: !82, size: 32, offset: 384)
!960 = !DILocalVariable(name: "answer", scope: !900, file: !100, line: 15, type: !39)
!961 = !DILabel(scope: !900, name: "error", file: !100, line: 65)
!962 = !DILocation(line: 0, scope: !900)
!963 = !DILocation(line: 14, column: 2, scope: !900)
!964 = !DILocation(line: 17, column: 2, scope: !900)
!965 = !DILocation(line: 19, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !900, file: !100, line: 19, column: 6)
!967 = !DILocation(line: 19, column: 58, scope: !966)
!968 = !DILocation(line: 19, column: 6, scope: !900)
!969 = !DILocation(line: 21, column: 13, scope: !900)
!970 = !DILocation(line: 22, column: 12, scope: !900)
!971 = !{!972, !972, i64 0}
!972 = !{!"short", !790, i64 0}
!973 = !DILocation(line: 24, column: 41, scope: !974)
!974 = distinct !DILexicalBlock(scope: !900, file: !100, line: 24, column: 6)
!975 = !DILocation(line: 24, column: 6, scope: !974)
!976 = !DILocation(line: 24, column: 58, scope: !974)
!977 = !DILocation(line: 24, column: 6, scope: !900)
!978 = !DILocation(line: 26, column: 8, scope: !900)
!979 = !DILocation(line: 27, column: 13, scope: !980)
!980 = distinct !DILexicalBlock(scope: !900, file: !100, line: 27, column: 6)
!981 = !DILocation(line: 27, column: 39, scope: !980)
!982 = !DILocation(line: 27, column: 6, scope: !900)
!983 = !DILocation(line: 29, column: 2, scope: !900)
!984 = !DILocation(line: 31, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !900, file: !100, line: 31, column: 6)
!986 = !DILocation(line: 31, column: 6, scope: !900)
!987 = !DILocation(line: 33, column: 3, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !100, line: 31, column: 13)
!989 = !DILocation(line: 34, column: 2, scope: !988)
!990 = !DILocation(line: 37, column: 13, scope: !991)
!991 = distinct !DILexicalBlock(scope: !900, file: !100, line: 37, column: 6)
!992 = !DILocation(line: 37, column: 11, scope: !991)
!993 = !DILocation(line: 37, column: 44, scope: !991)
!994 = !DILocation(line: 37, column: 6, scope: !900)
!995 = !DILocation(line: 39, column: 12, scope: !900)
!996 = !{!997, !790, i64 0}
!997 = !{!"writer_msg_s", !790, i64 0, !789, i64 8, !998, i64 16, !998, i64 32, !790, i64 48}
!998 = !{!"ybin_s", !789, i64 0, !999, i64 8}
!999 = !{!"long", !790, i64 0}
!1000 = !DILocation(line: 40, column: 17, scope: !900)
!1001 = !DILocation(line: 40, column: 2, scope: !900)
!1002 = !DILocation(line: 41, column: 6, scope: !900)
!1003 = !DILocation(line: 42, column: 25, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !100, line: 41, column: 13)
!1005 = distinct !DILexicalBlock(scope: !900, file: !100, line: 41, column: 6)
!1006 = !{!1007, !789, i64 24}
!1007 = !{!"tcp_thread_s", !999, i64 0, !789, i64 8, !1008, i64 16, !1008, i64 20, !789, i64 24, !789, i64 32}
!1008 = !{!"int", !790, i64 0}
!1009 = !DILocation(line: 42, column: 17, scope: !1004)
!1010 = !DILocation(line: 42, column: 34, scope: !1004)
!1011 = !DILocation(line: 42, column: 8, scope: !1004)
!1012 = !DILocation(line: 42, column: 15, scope: !1004)
!1013 = !{!997, !789, i64 8}
!1014 = !DILocation(line: 44, column: 23, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1004, file: !100, line: 44, column: 7)
!1016 = !{!1007, !1008, i64 20}
!1017 = !DILocation(line: 44, column: 7, scope: !1015)
!1018 = !DILocation(line: 44, column: 57, scope: !1015)
!1019 = !DILocation(line: 44, column: 7, scope: !1004)
!1020 = !DILocation(line: 45, column: 4, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !100, line: 44, column: 62)
!1022 = !DILocation(line: 46, column: 4, scope: !1021)
!1023 = !DILocation(line: 51, column: 27, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !900, file: !100, line: 51, column: 6)
!1025 = !{!1007, !789, i64 8}
!1026 = !DILocation(line: 51, column: 35, scope: !1024)
!1027 = !{!1028, !789, i64 8}
!1028 = !{!"finedb_s", !790, i64 0, !789, i64 8, !1008, i64 16, !1008, i64 20, !999, i64 24, !789, i64 32, !972, i64 40}
!1029 = !DILocation(line: 51, column: 53, scope: !1024)
!1030 = !{!1007, !789, i64 32}
!1031 = !DILocation(line: 51, column: 74, scope: !1024)
!1032 = !DILocation(line: 51, column: 6, scope: !1024)
!1033 = !DILocation(line: 51, column: 93, scope: !1024)
!1034 = !DILocation(line: 51, column: 6, scope: !900)
!1035 = !DILocation(line: 52, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 51, column: 105)
!1037 = !DILocation(line: 54, column: 2, scope: !1036)
!1038 = !DILocation(line: 55, column: 3, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 54, column: 9)
!1040 = !DILocation(line: 58, column: 2, scope: !900)
!1041 = !DILocation(line: 59, column: 2, scope: !900)
!1042 = !DILocation(line: 60, column: 2, scope: !900)
!1043 = !DILocation(line: 63, column: 10, scope: !900)
!1044 = !DILocation(line: 63, column: 2, scope: !900)
!1045 = !DILocation(line: 65, column: 1, scope: !900)
!1046 = !DILocation(line: 66, column: 2, scope: !900)
!1047 = !DILocation(line: 68, column: 2, scope: !900)
!1048 = !DILocation(line: 67, column: 2, scope: !900)
!1049 = !DILocation(line: 69, column: 2, scope: !900)
!1050 = !DILocation(line: 70, column: 2, scope: !900)
!1051 = !DILocation(line: 71, column: 1, scope: !900)
!1052 = !DISubprogram(name: "ydynabin_forward", scope: !597, file: !597, line: 82, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!40, !924, !28}
!1055 = !DISubprogram(name: "calloc", scope: !808, file: !808, line: 543, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!40, !28, !28}
!1058 = !DISubprogram(name: "ybin_set", scope: !953, file: !953, line: 46, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061, !1061, !40, !28}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!1062 = !DISubprogram(name: "nn_send", scope: !1063, file: !1063, line: 248, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1063 = !DIFile(filename: "../../include/nanomsg/nn.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!36, !36, !1066, !28, !36}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1068 = !DISubprogram(name: "free", scope: !808, file: !808, line: 555, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !40}
!1071 = distinct !DISubprogram(name: "server_create_listening_socket", scope: !143, file: !143, line: 16, type: !1072, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !639, retainedNodes: !1075)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!593, !1074, !27}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1075 = !{!1076, !1077, !1078, !1092, !1093}
!1076 = !DILocalVariable(name: "psock", arg: 1, scope: !1071, file: !143, line: 16, type: !1074)
!1077 = !DILocalVariable(name: "port", arg: 2, scope: !1071, file: !143, line: 16, type: !27)
!1078 = !DILocalVariable(name: "addr", scope: !1071, file: !143, line: 17, type: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !655, line: 245, size: 128, elements: !1080)
!1080 = !{!1081, !1082, !1084, !1088}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1079, file: !655, line: 247, baseType: !661, size: 16)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1079, file: !655, line: 248, baseType: !1083, size: 16, offset: 16)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !655, line: 123, baseType: !729)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1079, file: !655, line: 249, baseType: !1085, size: 32, offset: 32)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !655, line: 31, size: 32, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1085, file: !655, line: 33, baseType: !654, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1079, file: !655, line: 252, baseType: !1089, size: 64, offset: 64)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DISubrange(count: 8)
!1092 = !DILocalVariable(name: "addr_size", scope: !1071, file: !143, line: 18, type: !7)
!1093 = !DILocalVariable(name: "on", scope: !1071, file: !143, line: 19, type: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!1095 = !DILocation(line: 0, scope: !1071)
!1096 = !DILocation(line: 17, column: 2, scope: !1071)
!1097 = !DILocation(line: 17, column: 21, scope: !1071)
!1098 = !DILocation(line: 19, column: 2, scope: !1071)
!1099 = !DILocation(line: 19, column: 12, scope: !1071)
!1100 = !{!1008, !1008, i64 0}
!1101 = !DILocation(line: 22, column: 16, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1071, file: !143, line: 22, column: 6)
!1103 = !DILocation(line: 22, column: 14, scope: !1102)
!1104 = !DILocation(line: 22, column: 49, scope: !1102)
!1105 = !DILocation(line: 22, column: 6, scope: !1071)
!1106 = !DILocation(line: 23, column: 3, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !143, line: 22, column: 54)
!1108 = !DILocation(line: 24, column: 3, scope: !1107)
!1109 = !DILocation(line: 27, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1071, file: !143, line: 27, column: 6)
!1111 = !DILocation(line: 28, column: 29, scope: !1110)
!1112 = !DILocation(line: 27, column: 6, scope: !1071)
!1113 = !DILocation(line: 29, column: 3, scope: !1110)
!1114 = !DILocation(line: 30, column: 17, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1071, file: !143, line: 30, column: 6)
!1116 = !DILocation(line: 30, column: 6, scope: !1115)
!1117 = !DILocation(line: 31, column: 29, scope: !1115)
!1118 = !DILocation(line: 30, column: 6, scope: !1071)
!1119 = !DILocation(line: 32, column: 3, scope: !1115)
!1120 = !DILocation(line: 36, column: 23, scope: !1071)
!1121 = !DILocation(line: 37, column: 18, scope: !1071)
!1122 = !{!1123, !972, i64 0}
!1123 = !{!"sockaddr_in", !972, i64 0, !972, i64 2, !1124, i64 4, !790, i64 8}
!1124 = !{!"in_addr", !1008, i64 0}
!1125 = !DILocation(line: 38, column: 7, scope: !1071)
!1126 = !DILocation(line: 38, column: 16, scope: !1071)
!1127 = !{!1123, !972, i64 2}
!1128 = !DILocation(line: 39, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1071, file: !143, line: 39, column: 6)
!1130 = !DILocation(line: 39, column: 6, scope: !1129)
!1131 = !DILocation(line: 39, column: 55, scope: !1129)
!1132 = !DILocation(line: 39, column: 6, scope: !1071)
!1133 = !DILocation(line: 40, column: 3, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !143, line: 39, column: 60)
!1135 = !DILocation(line: 41, column: 3, scope: !1134)
!1136 = !DILocation(line: 43, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1071, file: !143, line: 43, column: 6)
!1138 = !DILocation(line: 43, column: 6, scope: !1137)
!1139 = !DILocation(line: 43, column: 6, scope: !1071)
!1140 = !DILocation(line: 44, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !143, line: 43, column: 33)
!1142 = !DILocation(line: 45, column: 3, scope: !1141)
!1143 = !DILocation(line: 48, column: 1, scope: !1071)
!1144 = !DISubprogram(name: "socket", scope: !530, file: !530, line: 102, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!36, !36, !36, !36}
!1147 = !DISubprogram(name: "setsockopt", scope: !530, file: !530, line: 277, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!36, !36, !36, !36, !1066, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !1151, line: 274, baseType: !1152)
!1151 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !582, line: 210, baseType: !7)
!1153 = !DISubprogram(name: "bind", scope: !530, file: !530, line: 112, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!36, !36, !1156, !1150}
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__CONST_SOCKADDR_ARG", file: !530, line: 84, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !530, line: 83, size: 64, elements: !1158)
!1158 = !{!1159, !1163, !1168, !1173, !1178, !1183, !1187, !1213, !1218, !1223, !1228, !1233, !1238}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr__", scope: !1157, file: !530, line: 83, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1161)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_at__", scope: !1157, file: !530, line: 83, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1167)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_at", file: !530, line: 79, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ax25__", scope: !1157, file: !530, line: 83, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ax25", file: !530, line: 79, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_dl__", scope: !1157, file: !530, line: 83, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_dl", file: !530, line: 79, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_eon__", scope: !1157, file: !530, line: 83, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_eon", file: !530, line: 79, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in__", scope: !1157, file: !530, line: 83, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in6__", scope: !1157, file: !530, line: 83, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !655, line: 260, size: 224, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1212}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !1191, file: !655, line: 262, baseType: !661, size: 16)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !1191, file: !655, line: 263, baseType: !1083, size: 16, offset: 16)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !1191, file: !655, line: 264, baseType: !583, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !1191, file: !655, line: 265, baseType: !1197, size: 128, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !655, line: 219, size: 128, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1197, file: !655, line: 226, baseType: !1200, size: 128)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !655, line: 221, size: 128, elements: !1201)
!1201 = !{!1202, !1206, !1208}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1200, file: !655, line: 223, baseType: !1203, size: 128)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1204, size: 128, elements: !192)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !584, line: 24, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !582, line: 38, baseType: !578)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1200, file: !655, line: 224, baseType: !1207, size: 128)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 128, elements: !1090)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1200, file: !655, line: 225, baseType: !1209, size: 128)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 128, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 4)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !1191, file: !655, line: 266, baseType: !583, size: 32, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_inarp__", scope: !1157, file: !530, line: 83, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_inarp", file: !530, line: 79, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ipx__", scope: !1157, file: !530, line: 83, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ipx", file: !530, line: 79, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_iso__", scope: !1157, file: !530, line: 83, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_iso", file: !530, line: 79, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ns__", scope: !1157, file: !530, line: 83, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ns", file: !530, line: 79, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_un__", scope: !1157, file: !530, line: 83, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !530, line: 79, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_x25__", scope: !1157, file: !530, line: 83, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_x25", file: !530, line: 79, flags: DIFlagFwdDecl)
!1243 = !DISubprogram(name: "listen", scope: !530, file: !530, line: 296, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!36, !36, !36}
!1246 = distinct !DISubprogram(name: "server_loop", scope: !143, file: !143, line: 51, type: !1247, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !639, retainedNodes: !1250)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1249, !36, !36}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1251 = !DILocalVariable(name: "run", arg: 1, scope: !1246, file: !143, line: 51, type: !1249)
!1252 = !DILocalVariable(name: "socket", arg: 2, scope: !1246, file: !143, line: 51, type: !36)
!1253 = !DILocalVariable(name: "threads_socket", arg: 3, scope: !1246, file: !143, line: 51, type: !36)
!1254 = !DILocalVariable(name: "fd", scope: !1246, file: !143, line: 52, type: !36)
!1255 = !DILocalVariable(name: "addr", scope: !1246, file: !143, line: 53, type: !1079)
!1256 = !DILocalVariable(name: "addr_size", scope: !1246, file: !143, line: 54, type: !7)
!1257 = !DILocalVariable(name: "on", scope: !1246, file: !143, line: 55, type: !1094)
!1258 = !DILocation(line: 0, scope: !1246)
!1259 = !DILocation(line: 53, column: 2, scope: !1246)
!1260 = !DILocation(line: 53, column: 21, scope: !1246)
!1261 = !DILocation(line: 54, column: 2, scope: !1246)
!1262 = !DILocation(line: 55, column: 2, scope: !1246)
!1263 = !DILocation(line: 55, column: 12, scope: !1246)
!1264 = !DILocation(line: 57, column: 12, scope: !1246)
!1265 = !DILocation(line: 58, column: 2, scope: !1246)
!1266 = !DILocation(line: 59, column: 9, scope: !1246)
!1267 = !{!790, !790, i64 0}
!1268 = !DILocation(line: 59, column: 2, scope: !1246)
!1269 = !DILocation(line: 61, column: 13, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !143, line: 61, column: 7)
!1271 = distinct !DILexicalBlock(scope: !1246, file: !143, line: 59, column: 15)
!1272 = !DILocation(line: 62, column: 33, scope: !1270)
!1273 = !DILocation(line: 61, column: 7, scope: !1271)
!1274 = !DILocation(line: 64, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !143, line: 64, column: 7)
!1276 = !DILocation(line: 65, column: 30, scope: !1275)
!1277 = !DILocation(line: 64, column: 7, scope: !1271)
!1278 = !DILocation(line: 66, column: 4, scope: !1275)
!1279 = !DILocation(line: 68, column: 3, scope: !1271)
!1280 = distinct !{!1280, !1268, !1281}
!1281 = !DILocation(line: 69, column: 2, scope: !1246)
!1282 = !DILocation(line: 70, column: 2, scope: !1246)
!1283 = !DILocation(line: 71, column: 1, scope: !1246)
!1284 = !DISubprogram(name: "accept", scope: !530, file: !530, line: 306, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!36, !36, !1287, !1328}
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__SOCKADDR_ARG", file: !530, line: 80, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !530, line: 79, size: 64, elements: !1289)
!1289 = !{!1290, !1292, !1295, !1298, !1301, !1304, !1307, !1310, !1313, !1316, !1319, !1322, !1325}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr__", scope: !1288, file: !530, line: 79, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !656)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_at__", scope: !1288, file: !530, line: 79, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ax25__", scope: !1288, file: !530, line: 79, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_dl__", scope: !1288, file: !530, line: 79, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_eon__", scope: !1288, file: !530, line: 79, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in__", scope: !1288, file: !530, line: 79, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in6__", scope: !1288, file: !530, line: 79, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_inarp__", scope: !1288, file: !530, line: 79, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ipx__", scope: !1288, file: !530, line: 79, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_iso__", scope: !1288, file: !530, line: 79, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ns__", scope: !1288, file: !530, line: 79, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_un__", scope: !1288, file: !530, line: 79, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_x25__", scope: !1288, file: !530, line: 79, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1330 = !DISubprogram(name: "close", scope: !1151, file: !1151, line: 358, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!36, !36}
!1333 = distinct !DISubprogram(name: "command_ping", scope: !177, file: !177, line: 12, type: !1334, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1365)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!593, !1336, !82, !82, !82, !1357}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !1339)
!1339 = !{!1340, !1341, !1353, !1354, !1355, !1356}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !1338, file: !555, line: 24, baseType: !91, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !1338, file: !555, line: 25, baseType: !1342, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1344, file: !78, line: 42, baseType: !82, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !1344, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !1344, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !1344, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !1344, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !1344, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1344, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1338, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !1338, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !1338, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !1338, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1359, file: !597, line: 38, baseType: !40, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1359, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1359, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1359, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!1365 = !{!1366, !1367, !1368, !1369, !1370}
!1366 = !DILocalVariable(name: "thread", arg: 1, scope: !1333, file: !177, line: 12, type: !1336)
!1367 = !DILocalVariable(name: "sync", arg: 2, scope: !1333, file: !177, line: 12, type: !82)
!1368 = !DILocalVariable(name: "compress", arg: 3, scope: !1333, file: !177, line: 12, type: !82)
!1369 = !DILocalVariable(name: "serialized", arg: 4, scope: !1333, file: !177, line: 12, type: !82)
!1370 = !DILocalVariable(name: "buff", arg: 5, scope: !1333, file: !177, line: 12, type: !1357)
!1371 = !DILocation(line: 0, scope: !1333)
!1372 = !DILocation(line: 13, column: 2, scope: !1333)
!1373 = !DILocation(line: 14, column: 10, scope: !1333)
!1374 = !DILocation(line: 14, column: 2, scope: !1333)
!1375 = distinct !DISubprogram(name: "writer_loop", scope: !185, file: !185, line: 10, type: !1376, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!40, !40}
!1378 = !{!1379, !1380, !1381, !1382}
!1379 = !DILocalVariable(name: "param", arg: 1, scope: !1375, file: !185, line: 10, type: !40)
!1380 = !DILocalVariable(name: "finedb", scope: !1375, file: !185, line: 11, type: !671)
!1381 = !DILocalVariable(name: "socket", scope: !1375, file: !185, line: 12, type: !36)
!1382 = !DILocalVariable(name: "msg", scope: !1383, file: !185, line: 22, type: !1386)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !185, line: 21, column: 13)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !185, line: 21, column: 2)
!1385 = distinct !DILexicalBlock(scope: !1375, file: !185, line: 21, column: 2)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_msg_t", file: !631, line: 34, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer_msg_s", file: !631, line: 28, size: 448, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1398, !1399}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1388, file: !631, line: 29, baseType: !949, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !1388, file: !631, line: 30, baseType: !38, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1388, file: !631, line: 31, baseType: !1393, size: 128, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !953, line: 33, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !953, line: 27, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1394, file: !953, line: 28, baseType: !40, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1394, file: !953, line: 29, baseType: !28, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1388, file: !631, line: 32, baseType: !1393, size: 128, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "create_only", scope: !1388, file: !631, line: 33, baseType: !82, size: 32, offset: 384)
!1400 = !DILocation(line: 0, scope: !1375)
!1401 = !DILocation(line: 15, column: 16, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1375, file: !185, line: 15, column: 6)
!1403 = !DILocation(line: 15, column: 43, scope: !1402)
!1404 = !DILocation(line: 15, column: 47, scope: !1402)
!1405 = !DILocation(line: 16, column: 6, scope: !1402)
!1406 = !DILocation(line: 16, column: 46, scope: !1402)
!1407 = !DILocation(line: 15, column: 6, scope: !1375)
!1408 = !DILocation(line: 25, column: 7, scope: !1383)
!1409 = !DILocation(line: 17, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1402, file: !185, line: 16, column: 51)
!1411 = !DILocation(line: 18, column: 3, scope: !1410)
!1412 = !DILocation(line: 22, column: 3, scope: !1383)
!1413 = !DILocation(line: 0, scope: !1383)
!1414 = !DILocation(line: 25, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1383, file: !185, line: 25, column: 7)
!1416 = !DILocation(line: 25, column: 55, scope: !1415)
!1417 = distinct !{!1417, !1418, !1419}
!1418 = !DILocation(line: 21, column: 2, scope: !1385)
!1419 = !DILocation(line: 47, column: 2, scope: !1385)
!1420 = !DILocation(line: 27, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1383, file: !185, line: 27, column: 7)
!1422 = !DILocation(line: 27, column: 12, scope: !1421)
!1423 = !DILocation(line: 27, column: 7, scope: !1383)
!1424 = !DILocation(line: 29, column: 4, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1421, file: !185, line: 27, column: 31)
!1426 = !{!997, !789, i64 16}
!1427 = !{!997, !789, i64 32}
!1428 = !DILocation(line: 30, column: 29, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !185, line: 30, column: 8)
!1430 = !DILocation(line: 30, column: 45, scope: !1429)
!1431 = !DILocation(line: 30, column: 50, scope: !1429)
!1432 = !{!997, !790, i64 48}
!1433 = !DILocation(line: 30, column: 68, scope: !1429)
!1434 = !DILocation(line: 30, column: 81, scope: !1429)
!1435 = !DILocation(line: 30, column: 92, scope: !1429)
!1436 = !DILocation(line: 30, column: 8, scope: !1429)
!1437 = !DILocation(line: 30, column: 98, scope: !1429)
!1438 = !DILocation(line: 30, column: 8, scope: !1425)
!1439 = !DILocation(line: 31, column: 5, scope: !1429)
!1440 = !DILocation(line: 33, column: 5, scope: !1429)
!1441 = !DILocation(line: 34, column: 4, scope: !1425)
!1442 = !DILocation(line: 35, column: 3, scope: !1425)
!1443 = !DILocation(line: 37, column: 4, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !185, line: 35, column: 38)
!1445 = distinct !DILexicalBlock(scope: !1421, file: !185, line: 35, column: 14)
!1446 = !DILocation(line: 38, column: 29, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !185, line: 38, column: 8)
!1448 = !DILocation(line: 38, column: 45, scope: !1447)
!1449 = !DILocation(line: 38, column: 50, scope: !1447)
!1450 = !DILocation(line: 38, column: 63, scope: !1447)
!1451 = !DILocation(line: 38, column: 8, scope: !1447)
!1452 = !DILocation(line: 38, column: 69, scope: !1447)
!1453 = !DILocation(line: 38, column: 8, scope: !1444)
!1454 = !DILocation(line: 39, column: 5, scope: !1447)
!1455 = !DILocation(line: 41, column: 5, scope: !1447)
!1456 = !DILocation(line: 44, column: 3, scope: !1383)
!1457 = !DILocation(line: 45, column: 3, scope: !1383)
!1458 = !DILocation(line: 46, column: 3, scope: !1383)
!1459 = !DILocation(line: 47, column: 2, scope: !1384)
!1460 = !DISubprogram(name: "nn_socket", scope: !1063, file: !1063, line: 239, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1461 = !DISubprogram(name: "nn_bind", scope: !1063, file: !1063, line: 245, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!36, !36, !401}
!1464 = !DISubprogram(name: "nn_recv", scope: !1063, file: !1063, line: 249, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!36, !36, !40, !28, !36}
!1467 = distinct !DISubprogram(name: "finedb_init", scope: !230, file: !230, line: 13, type: !1468, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1481)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1470, !38, !27, !27, !28, !7, !27}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1472, file: !78, line: 42, baseType: !82, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !1472, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !1472, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !1472, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !1472, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !1472, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1472, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1493}
!1482 = !DILocalVariable(name: "db_path", arg: 1, scope: !1467, file: !230, line: 13, type: !38)
!1483 = !DILocalVariable(name: "port", arg: 2, scope: !1467, file: !230, line: 13, type: !27)
!1484 = !DILocalVariable(name: "nbr_threads", arg: 3, scope: !1467, file: !230, line: 14, type: !27)
!1485 = !DILocalVariable(name: "mapsize", arg: 4, scope: !1467, file: !230, line: 14, type: !28)
!1486 = !DILocalVariable(name: "nbr_dbs", arg: 5, scope: !1467, file: !230, line: 15, type: !7)
!1487 = !DILocalVariable(name: "timeout", arg: 6, scope: !1467, file: !230, line: 15, type: !27)
!1488 = !DILocalVariable(name: "finedb", scope: !1467, file: !230, line: 16, type: !1470)
!1489 = !DILocalVariable(name: "i", scope: !1467, file: !230, line: 17, type: !27)
!1490 = !DILocalVariable(name: "base_path", scope: !1491, file: !230, line: 31, type: !401)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !230, line: 30, column: 23)
!1492 = distinct !DILexicalBlock(scope: !1467, file: !230, line: 30, column: 6)
!1493 = !DILocalVariable(name: "thread", scope: !1494, file: !230, line: 56, type: !1497)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !230, line: 55, column: 36)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !230, line: 55, column: 2)
!1496 = distinct !DILexicalBlock(scope: !1467, file: !230, line: 55, column: 2)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !1499, file: !555, line: 24, baseType: !91, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !1499, file: !555, line: 25, baseType: !1470, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1499, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !1499, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !1499, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !1499, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!1507 = !DILocation(line: 0, scope: !1467)
!1508 = !DILocation(line: 20, column: 11, scope: !1467)
!1509 = !DILocation(line: 21, column: 14, scope: !1467)
!1510 = !{!1028, !790, i64 0}
!1511 = !DILocation(line: 23, column: 10, scope: !1467)
!1512 = !DILocation(line: 23, column: 17, scope: !1467)
!1513 = !{!1028, !1008, i64 16}
!1514 = !DILocation(line: 24, column: 10, scope: !1467)
!1515 = !DILocation(line: 26, column: 24, scope: !1467)
!1516 = !DILocation(line: 26, column: 10, scope: !1467)
!1517 = !DILocation(line: 26, column: 22, scope: !1467)
!1518 = !{!1028, !789, i64 32}
!1519 = !DILocation(line: 27, column: 10, scope: !1467)
!1520 = !DILocation(line: 27, column: 18, scope: !1467)
!1521 = !{!1028, !972, i64 40}
!1522 = !DILocation(line: 30, column: 14, scope: !1492)
!1523 = !DILocation(line: 30, column: 6, scope: !1467)
!1524 = !DILocation(line: 31, column: 27, scope: !1491)
!1525 = !DILocation(line: 0, scope: !1491)
!1526 = !DILocation(line: 32, column: 13, scope: !1491)
!1527 = !DILocation(line: 33, column: 3, scope: !1491)
!1528 = !DILocation(line: 34, column: 2, scope: !1491)
!1529 = !DILocation(line: 36, column: 53, scope: !1467)
!1530 = !DILocation(line: 36, column: 21, scope: !1467)
!1531 = !DILocation(line: 36, column: 10, scope: !1467)
!1532 = !DILocation(line: 36, column: 19, scope: !1467)
!1533 = !DILocation(line: 37, column: 23, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1467, file: !230, line: 37, column: 6)
!1535 = !DILocation(line: 37, column: 6, scope: !1467)
!1536 = !DILocation(line: 38, column: 3, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !230, line: 37, column: 32)
!1538 = !DILocation(line: 39, column: 3, scope: !1537)
!1539 = !DILocation(line: 42, column: 32, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1467, file: !230, line: 42, column: 6)
!1541 = !DILocation(line: 42, column: 30, scope: !1540)
!1542 = !{!1028, !1008, i64 20}
!1543 = !DILocation(line: 42, column: 59, scope: !1540)
!1544 = !DILocation(line: 42, column: 63, scope: !1540)
!1545 = !DILocation(line: 43, column: 6, scope: !1540)
!1546 = !DILocation(line: 43, column: 63, scope: !1540)
!1547 = !DILocation(line: 42, column: 6, scope: !1467)
!1548 = !DILocation(line: 44, column: 3, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1540, file: !230, line: 43, column: 68)
!1550 = !DILocation(line: 45, column: 3, scope: !1549)
!1551 = !DILocation(line: 46, column: 3, scope: !1549)
!1552 = !DILocation(line: 49, column: 30, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1467, file: !230, line: 49, column: 6)
!1554 = !DILocation(line: 49, column: 6, scope: !1553)
!1555 = !DILocation(line: 49, column: 6, scope: !1467)
!1556 = !DILocation(line: 55, column: 16, scope: !1495)
!1557 = !DILocation(line: 55, column: 2, scope: !1496)
!1558 = !DILocation(line: 50, column: 3, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !230, line: 49, column: 70)
!1560 = !DILocation(line: 51, column: 26, scope: !1559)
!1561 = !DILocation(line: 51, column: 3, scope: !1559)
!1562 = !DILocation(line: 52, column: 3, scope: !1559)
!1563 = !DILocation(line: 58, column: 17, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1494, file: !230, line: 58, column: 7)
!1565 = !DILocation(line: 0, scope: !1494)
!1566 = !DILocation(line: 58, column: 48, scope: !1564)
!1567 = !DILocation(line: 58, column: 7, scope: !1494)
!1568 = !DILocation(line: 59, column: 4, scope: !1564)
!1569 = !DILocation(line: 55, column: 32, scope: !1495)
!1570 = distinct !{!1570, !1557, !1571}
!1571 = !DILocation(line: 60, column: 2, scope: !1496)
!1572 = !DILocation(line: 62, column: 6, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1467, file: !230, line: 62, column: 6)
!1574 = !DILocation(line: 62, column: 60, scope: !1573)
!1575 = !DILocation(line: 62, column: 6, scope: !1467)
!1576 = !DILocation(line: 63, column: 3, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !230, line: 62, column: 72)
!1578 = !DILocation(line: 64, column: 3, scope: !1577)
!1579 = !DILocation(line: 67, column: 2, scope: !1467)
!1580 = !DISubprogram(name: "yv_create", scope: !95, file: !95, line: 73, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!94, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "yv_size_t", file: !95, line: 38, baseType: !685)
!1584 = !DISubprogram(name: "strlen", scope: !888, file: !888, line: 407, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!30, !401}
!1587 = !DISubprogram(name: "sprintf", scope: !1588, file: !1588, line: 358, type: !1589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1588 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!36, !1591, !885, null}
!1591 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!1592 = !DISubprogram(name: "pthread_create", scope: !1593, file: !1593, line: 202, type: !1594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1593 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!36, !1596, !1598, !1609, !1610}
!1596 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1597)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !92, line: 62, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !92, line: 56, size: 448, elements: !1603)
!1603 = !{!1604, !1608}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1602, file: !92, line: 58, baseType: !1605, size: 448)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, elements: !1606)
!1606 = !{!1607}
!1607 = !DISubrange(count: 56)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1602, file: !92, line: 59, baseType: !884, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!1611 = !DISubprogram(name: "yv_add", scope: !95, file: !95, line: 170, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!36, !1614, !40}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!1615 = distinct !DISubprogram(name: "finedb_start", scope: !230, file: !230, line: 71, type: !1616, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !1470}
!1618 = !{!1619}
!1619 = !DILocalVariable(name: "finedb", arg: 1, scope: !1615, file: !230, line: 71, type: !1470)
!1620 = !DILocation(line: 0, scope: !1615)
!1621 = !DILocation(line: 73, column: 36, scope: !1615)
!1622 = !DILocation(line: 73, column: 52, scope: !1615)
!1623 = !DILocation(line: 73, column: 2, scope: !1615)
!1624 = !DILocation(line: 74, column: 1, scope: !1615)
!1625 = distinct !DISubprogram(name: "finedb_stop", scope: !230, file: !230, line: 77, type: !1616, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1626)
!1626 = !{!1627}
!1627 = !DILocalVariable(name: "finedb", arg: 1, scope: !1625, file: !230, line: 77, type: !1470)
!1628 = !DILocation(line: 0, scope: !1625)
!1629 = !DILocation(line: 78, column: 14, scope: !1625)
!1630 = !DILocation(line: 79, column: 25, scope: !1625)
!1631 = !DILocation(line: 79, column: 2, scope: !1625)
!1632 = !DILocation(line: 80, column: 1, scope: !1625)
!1633 = distinct !DISubprogram(name: "command_put", scope: !261, file: !261, line: 12, type: !1634, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !1665)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!593, !1636, !82, !82, !82, !1657}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !1639)
!1639 = !{!1640, !1641, !1653, !1654, !1655, !1656}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !1638, file: !555, line: 24, baseType: !91, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !1638, file: !555, line: 25, baseType: !1642, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1644, file: !78, line: 42, baseType: !82, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !1644, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !1644, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !1644, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !1644, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !1644, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1644, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1638, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !1638, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !1638, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !1638, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !1659)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1659, file: !597, line: 38, baseType: !40, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1659, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1659, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1659, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1677, !1678, !1679, !1680, !1681, !1696, !1697, !1698, !1699, !1707, !1708, !1711, !1712, !1713}
!1666 = !DILocalVariable(name: "thread", arg: 1, scope: !1633, file: !261, line: 12, type: !1636)
!1667 = !DILocalVariable(name: "sync", arg: 2, scope: !1633, file: !261, line: 12, type: !82)
!1668 = !DILocalVariable(name: "compress", arg: 3, scope: !1633, file: !261, line: 12, type: !82)
!1669 = !DILocalVariable(name: "serialized", arg: 4, scope: !1633, file: !261, line: 12, type: !82)
!1670 = !DILocalVariable(name: "buff", arg: 5, scope: !1633, file: !261, line: 12, type: !1657)
!1671 = !DILocalVariable(name: "create_only", scope: !1633, file: !261, line: 13, type: !82)
!1672 = !DILocalVariable(name: "update_only", scope: !1633, file: !261, line: 13, type: !82)
!1673 = !DILocalVariable(name: "pname_len", scope: !1633, file: !261, line: 15, type: !939)
!1674 = !DILocalVariable(name: "name_len", scope: !1633, file: !261, line: 15, type: !729)
!1675 = !DILocalVariable(name: "pdata_len", scope: !1633, file: !261, line: 16, type: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!1677 = !DILocalVariable(name: "data_len", scope: !1633, file: !261, line: 16, type: !583)
!1678 = !DILocalVariable(name: "ptr", scope: !1633, file: !261, line: 17, type: !40)
!1679 = !DILocalVariable(name: "name", scope: !1633, file: !261, line: 17, type: !40)
!1680 = !DILocalVariable(name: "data", scope: !1633, file: !261, line: 17, type: !40)
!1681 = !DILocalVariable(name: "msg", scope: !1633, file: !261, line: 18, type: !1682)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_msg_t", file: !631, line: 34, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer_msg_s", file: !631, line: 28, size: 448, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1694, !1695}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1684, file: !631, line: 29, baseType: !949, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !1684, file: !631, line: 30, baseType: !38, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1684, file: !631, line: 31, baseType: !1689, size: 128, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !953, line: 33, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !953, line: 27, size: 128, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1690, file: !953, line: 28, baseType: !40, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1690, file: !953, line: 29, baseType: !28, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1684, file: !631, line: 32, baseType: !1689, size: 128, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "create_only", scope: !1684, file: !631, line: 33, baseType: !82, size: 32, offset: 384)
!1696 = !DILocalVariable(name: "answer", scope: !1633, file: !261, line: 19, type: !39)
!1697 = !DILocalVariable(name: "zip_len", scope: !1633, file: !261, line: 20, type: !28)
!1698 = !DILocalVariable(name: "zip_data", scope: !1633, file: !261, line: 21, type: !38)
!1699 = !DILocalVariable(name: "zip_env", scope: !1633, file: !261, line: 22, type: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snappy_env", file: !1701, line: 8, size: 192, elements: !1702)
!1701 = !DIFile(filename: "../../lib/snappy-c/snappy.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "cfb9bcda4cc85171bf9848efd16b1ae4")
!1702 = !{!1703, !1705, !1706}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !1700, file: !1701, line: 9, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !1700, file: !1701, line: 10, baseType: !40, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_output", scope: !1700, file: !1701, line: 11, baseType: !40, size: 64, offset: 128)
!1707 = !DILocalVariable(name: "txn", scope: !1633, file: !261, line: 23, type: !575)
!1708 = !DILocalVariable(name: "data", scope: !1709, file: !261, line: 102, type: !1689)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !261, line: 100, column: 19)
!1710 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 100, column: 6)
!1711 = !DILocalVariable(name: "rc", scope: !1709, file: !261, line: 103, type: !36)
!1712 = !DILabel(scope: !1633, name: "end_of_process", file: !261, line: 137)
!1713 = !DILabel(scope: !1633, name: "error", file: !261, line: 141)
!1714 = !DILocation(line: 0, scope: !1633)
!1715 = !DILocation(line: 18, column: 2, scope: !1633)
!1716 = !DILocation(line: 18, column: 16, scope: !1633)
!1717 = !DILocation(line: 20, column: 2, scope: !1633)
!1718 = !DILocation(line: 22, column: 2, scope: !1633)
!1719 = !DILocation(line: 22, column: 20, scope: !1633)
!1720 = !DILocation(line: 23, column: 25, scope: !1633)
!1721 = !DILocation(line: 25, column: 2, scope: !1633)
!1722 = !DILocation(line: 29, column: 6, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 29, column: 6)
!1724 = !DILocation(line: 29, column: 59, scope: !1723)
!1725 = !DILocation(line: 29, column: 6, scope: !1633)
!1726 = !DILocation(line: 31, column: 14, scope: !1633)
!1727 = !DILocation(line: 32, column: 13, scope: !1633)
!1728 = !DILocation(line: 34, column: 41, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 34, column: 6)
!1730 = !DILocation(line: 34, column: 6, scope: !1729)
!1731 = !DILocation(line: 34, column: 59, scope: !1729)
!1732 = !DILocation(line: 34, column: 6, scope: !1633)
!1733 = !DILocation(line: 36, column: 8, scope: !1633)
!1734 = !DILocation(line: 37, column: 14, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 37, column: 6)
!1736 = !DILocation(line: 37, column: 41, scope: !1735)
!1737 = !DILocation(line: 37, column: 6, scope: !1633)
!1738 = !DILocation(line: 39, column: 2, scope: !1633)
!1739 = !DILocation(line: 40, column: 2, scope: !1633)
!1740 = !DILocation(line: 42, column: 6, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 42, column: 6)
!1742 = !DILocation(line: 42, column: 59, scope: !1741)
!1743 = !DILocation(line: 42, column: 6, scope: !1633)
!1744 = !DILocation(line: 44, column: 14, scope: !1633)
!1745 = !DILocation(line: 45, column: 13, scope: !1633)
!1746 = !DILocalVariable(name: "__bsx", arg: 1, scope: !1747, file: !1748, line: 49, type: !585)
!1747 = distinct !DISubprogram(name: "__bswap_32", scope: !1748, file: !1748, line: 49, type: !1749, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !1751)
!1748 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!585, !585}
!1751 = !{!1746}
!1752 = !DILocation(line: 0, scope: !1747, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 45, column: 13, scope: !1633)
!1754 = !DILocation(line: 54, column: 10, scope: !1747, inlinedAt: !1753)
!1755 = !DILocation(line: 47, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 47, column: 6)
!1757 = !DILocation(line: 47, column: 6, scope: !1633)
!1758 = !DILocation(line: 48, column: 42, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !261, line: 48, column: 7)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !261, line: 47, column: 20)
!1761 = !DILocation(line: 48, column: 7, scope: !1759)
!1762 = !DILocation(line: 48, column: 60, scope: !1759)
!1763 = !DILocation(line: 48, column: 7, scope: !1760)
!1764 = !DILocation(line: 50, column: 9, scope: !1760)
!1765 = !DILocation(line: 51, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1760, file: !261, line: 51, column: 7)
!1767 = !DILocation(line: 51, column: 42, scope: !1766)
!1768 = !DILocation(line: 51, column: 7, scope: !1760)
!1769 = !DILocation(line: 53, column: 3, scope: !1760)
!1770 = !DILocation(line: 54, column: 3, scope: !1760)
!1771 = !DILocation(line: 55, column: 2, scope: !1760)
!1772 = !DILocation(line: 58, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 58, column: 6)
!1774 = !DILocation(line: 58, column: 12, scope: !1773)
!1775 = !DILocation(line: 59, column: 3, scope: !1773)
!1776 = !DILocation(line: 62, column: 13, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 62, column: 6)
!1778 = !DILocation(line: 62, column: 11, scope: !1777)
!1779 = !DILocation(line: 62, column: 44, scope: !1777)
!1780 = !DILocation(line: 62, column: 6, scope: !1633)
!1781 = !DILocation(line: 66, column: 17, scope: !1633)
!1782 = !DILocation(line: 66, column: 2, scope: !1633)
!1783 = !DILocation(line: 67, column: 6, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 67, column: 6)
!1785 = !DILocation(line: 67, column: 6, scope: !1633)
!1786 = !DILocation(line: 68, column: 18, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !261, line: 67, column: 16)
!1788 = !DILocation(line: 68, column: 30, scope: !1787)
!1789 = !DILocation(line: 68, column: 3, scope: !1787)
!1790 = !DILocation(line: 69, column: 2, scope: !1787)
!1791 = !DILocation(line: 71, column: 3, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !261, line: 69, column: 9)
!1793 = !DILocation(line: 72, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1792, file: !261, line: 72, column: 7)
!1795 = !DILocation(line: 72, column: 7, scope: !1792)
!1796 = !DILocation(line: 73, column: 4, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !261, line: 72, column: 34)
!1798 = !DILocation(line: 74, column: 4, scope: !1797)
!1799 = !DILocation(line: 76, column: 19, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1792, file: !261, line: 76, column: 7)
!1801 = !DILocation(line: 76, column: 68, scope: !1800)
!1802 = !DILocation(line: 76, column: 7, scope: !1792)
!1803 = !DILocation(line: 77, column: 4, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !261, line: 76, column: 77)
!1805 = !DILocation(line: 78, column: 4, scope: !1804)
!1806 = !DILocation(line: 80, column: 7, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1792, file: !261, line: 80, column: 7)
!1808 = !DILocation(line: 80, column: 7, scope: !1792)
!1809 = !DILocation(line: 81, column: 4, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !261, line: 80, column: 70)
!1811 = !DILocation(line: 82, column: 4, scope: !1810)
!1812 = !DILocation(line: 83, column: 4, scope: !1810)
!1813 = !DILocation(line: 85, column: 12, scope: !1792)
!1814 = !{!999, !999, i64 0}
!1815 = !DILocation(line: 85, column: 3, scope: !1792)
!1816 = !DILocation(line: 85, column: 21, scope: !1792)
!1817 = !DILocation(line: 86, column: 3, scope: !1792)
!1818 = !DILocation(line: 87, column: 18, scope: !1792)
!1819 = !DILocation(line: 87, column: 34, scope: !1792)
!1820 = !DILocation(line: 87, column: 3, scope: !1792)
!1821 = !DILocation(line: 88, column: 3, scope: !1792)
!1822 = !DILocation(line: 90, column: 12, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 90, column: 6)
!1824 = !DILocation(line: 92, column: 25, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !261, line: 90, column: 29)
!1826 = !DILocation(line: 92, column: 17, scope: !1825)
!1827 = !DILocation(line: 92, column: 34, scope: !1825)
!1828 = !DILocation(line: 92, column: 8, scope: !1825)
!1829 = !DILocation(line: 92, column: 15, scope: !1825)
!1830 = !DILocation(line: 93, column: 23, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !261, line: 93, column: 7)
!1832 = !DILocation(line: 93, column: 7, scope: !1831)
!1833 = !DILocation(line: 93, column: 57, scope: !1831)
!1834 = !DILocation(line: 93, column: 7, scope: !1825)
!1835 = !DILocation(line: 94, column: 4, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !261, line: 93, column: 62)
!1837 = !DILocation(line: 95, column: 4, scope: !1836)
!1838 = !DILocation(line: 124, column: 27, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1633, file: !261, line: 124, column: 6)
!1840 = !DILocation(line: 124, column: 35, scope: !1839)
!1841 = !DILocation(line: 124, column: 71, scope: !1839)
!1842 = !DILocation(line: 124, column: 95, scope: !1839)
!1843 = !DILocation(line: 124, column: 6, scope: !1839)
!1844 = !DILocation(line: 124, column: 101, scope: !1839)
!1845 = !DILocation(line: 124, column: 6, scope: !1633)
!1846 = !DILocation(line: 125, column: 3, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1839, file: !261, line: 124, column: 113)
!1848 = !DILocation(line: 127, column: 2, scope: !1847)
!1849 = !DILocation(line: 128, column: 3, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1839, file: !261, line: 127, column: 9)
!1851 = !DILocation(line: 137, column: 1, scope: !1633)
!1852 = !DILocation(line: 138, column: 2, scope: !1633)
!1853 = !DILocation(line: 139, column: 10, scope: !1633)
!1854 = !DILocation(line: 139, column: 2, scope: !1633)
!1855 = !DILocation(line: 141, column: 1, scope: !1633)
!1856 = !DILocation(line: 142, column: 2, scope: !1633)
!1857 = !DILocation(line: 144, column: 2, scope: !1633)
!1858 = !DILocation(line: 143, column: 2, scope: !1633)
!1859 = !DILocation(line: 145, column: 2, scope: !1633)
!1860 = !DILocation(line: 146, column: 2, scope: !1633)
!1861 = !DILocation(line: 147, column: 2, scope: !1633)
!1862 = !DILocation(line: 148, column: 1, scope: !1633)
!1863 = !DISubprogram(name: "snappy_init_env", scope: !1701, file: !1701, line: 15, type: !1864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!36, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1867 = !DISubprogram(name: "snappy_max_compressed_length", scope: !1701, file: !1701, line: 34, type: !1868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!28, !28}
!1870 = !DISubprogram(name: "snappy_compress", scope: !1701, file: !1701, line: 21, type: !1871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!36, !1866, !401, !28, !38, !1873}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1874 = !DISubprogram(name: "snappy_free_env", scope: !1701, file: !1701, line: 17, type: !1875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1866}
!1877 = distinct !DISubprogram(name: "command_list", scope: !292, file: !292, line: 16, type: !1878, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !1888)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!593, !708, !82, !82, !82, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1887}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1882, file: !597, line: 38, baseType: !40, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1882, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1882, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1882, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1889 = !DILocalVariable(name: "thread", arg: 1, scope: !1877, file: !292, line: 16, type: !708)
!1890 = !DILocalVariable(name: "sync", arg: 2, scope: !1877, file: !292, line: 16, type: !82)
!1891 = !DILocalVariable(name: "compress", arg: 3, scope: !1877, file: !292, line: 16, type: !82)
!1892 = !DILocalVariable(name: "serialized", arg: 4, scope: !1877, file: !292, line: 16, type: !82)
!1893 = !DILocalVariable(name: "buff", arg: 5, scope: !1877, file: !292, line: 16, type: !1880)
!1894 = !DILocalVariable(name: "last_byte", scope: !1877, file: !292, line: 17, type: !39)
!1895 = !DILocalVariable(name: "result", scope: !1877, file: !292, line: 18, type: !593)
!1896 = !DILabel(scope: !1877, name: "error", file: !292, line: 33)
!1897 = !DILocation(line: 0, scope: !1877)
!1898 = !DILocation(line: 17, column: 2, scope: !1877)
!1899 = !DILocation(line: 17, column: 7, scope: !1877)
!1900 = !DILocation(line: 20, column: 2, scope: !1877)
!1901 = !DILocation(line: 22, column: 11, scope: !1877)
!1902 = !DILocation(line: 23, column: 13, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1877, file: !292, line: 23, column: 6)
!1904 = !DILocation(line: 23, column: 6, scope: !1877)
!1905 = !DILocation(line: 26, column: 28, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1877, file: !292, line: 26, column: 6)
!1907 = !DILocation(line: 26, column: 36, scope: !1906)
!1908 = !DILocation(line: 26, column: 54, scope: !1906)
!1909 = !DILocation(line: 26, column: 75, scope: !1906)
!1910 = !DILocation(line: 26, column: 6, scope: !1906)
!1911 = !DILocation(line: 26, column: 111, scope: !1906)
!1912 = !DILocation(line: 26, column: 6, scope: !1877)
!1913 = !DILocation(line: 29, column: 20, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1877, file: !292, line: 29, column: 6)
!1915 = !{!1007, !1008, i64 16}
!1916 = !DILocation(line: 29, column: 6, scope: !1914)
!1917 = !DILocation(line: 29, column: 39, scope: !1914)
!1918 = !DILocation(line: 29, column: 6, scope: !1877)
!1919 = !DILocation(line: 31, column: 2, scope: !1877)
!1920 = !DILocation(line: 32, column: 2, scope: !1877)
!1921 = !DILocation(line: 33, column: 1, scope: !1877)
!1922 = !DILocation(line: 34, column: 2, scope: !1877)
!1923 = !DILocation(line: 35, column: 2, scope: !1877)
!1924 = !DILocation(line: 36, column: 2, scope: !1877)
!1925 = !DILocation(line: 37, column: 1, scope: !1877)
!1926 = distinct !DISubprogram(name: "_command_list_loop", scope: !292, file: !292, line: 40, type: !1927, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !1934)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!593, !40, !1929, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !953, line: 33, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !953, line: 27, size: 128, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1930, file: !953, line: 28, baseType: !40, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1930, file: !953, line: 29, baseType: !28, size: 64, offset: 64)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1949, !1961, !1964}
!1935 = !DILocalVariable(name: "ptr", arg: 1, scope: !1926, file: !292, line: 40, type: !40)
!1936 = !DILocalVariable(name: "key", arg: 2, scope: !1926, file: !292, line: 40, type: !1929)
!1937 = !DILocalVariable(name: "data", arg: 3, scope: !1926, file: !292, line: 40, type: !1929)
!1938 = !DILocalVariable(name: "thread", scope: !1926, file: !292, line: 41, type: !708)
!1939 = !DILocalVariable(name: "length16", scope: !1926, file: !292, line: 42, type: !729)
!1940 = !DILocalVariable(name: "iov", scope: !1926, file: !292, line: 43, type: !1941)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1942, size: 256, elements: !1947)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1943, line: 26, size: 128, elements: !1944)
!1943 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1942, file: !1943, line: 28, baseType: !40, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1942, file: !1943, line: 29, baseType: !28, size: 64, offset: 64)
!1947 = !{!1948}
!1948 = !DISubrange(count: 2)
!1949 = !DILocalVariable(name: "mh", scope: !1926, file: !292, line: 44, type: !1950)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !658, line: 259, size: 448, elements: !1951)
!1951 = !{!1952, !1953, !1955, !1957, !1958, !1959, !1960}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !1950, file: !658, line: 261, baseType: !40, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !1950, file: !658, line: 262, baseType: !1954, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !658, line: 33, baseType: !1152)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !1950, file: !658, line: 264, baseType: !1956, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !1950, file: !658, line: 265, baseType: !28, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !1950, file: !658, line: 267, baseType: !40, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !1950, file: !658, line: 268, baseType: !28, size: 64, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !1950, file: !658, line: 273, baseType: !36, size: 32, offset: 384)
!1961 = !DILocalVariable(name: "expected", scope: !1926, file: !292, line: 45, type: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !580, line: 108, baseType: !1963)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !582, line: 194, baseType: !884)
!1964 = !DILocalVariable(name: "rc", scope: !1926, file: !292, line: 45, type: !1962)
!1965 = !DILocation(line: 0, scope: !1926)
!1966 = !DILocation(line: 42, column: 2, scope: !1926)
!1967 = !DILocation(line: 43, column: 2, scope: !1926)
!1968 = !DILocation(line: 43, column: 15, scope: !1926)
!1969 = !DILocation(line: 44, column: 2, scope: !1926)
!1970 = !DILocation(line: 44, column: 16, scope: !1926)
!1971 = !DILocation(line: 47, column: 2, scope: !1926)
!1972 = !DILocation(line: 48, column: 14, scope: !1926)
!1973 = !{!1974, !789, i64 0}
!1974 = !{!"msghdr", !789, i64 0, !1008, i64 8, !789, i64 16, !999, i64 24, !789, i64 32, !999, i64 40, !1008, i64 48}
!1975 = !DILocation(line: 49, column: 5, scope: !1926)
!1976 = !DILocation(line: 49, column: 17, scope: !1926)
!1977 = !{!1974, !1008, i64 8}
!1978 = !DILocation(line: 50, column: 5, scope: !1926)
!1979 = !DILocation(line: 50, column: 13, scope: !1926)
!1980 = !{!1974, !789, i64 16}
!1981 = !DILocation(line: 51, column: 5, scope: !1926)
!1982 = !DILocation(line: 51, column: 16, scope: !1926)
!1983 = !{!1974, !999, i64 24}
!1984 = !DILocation(line: 52, column: 5, scope: !1926)
!1985 = !DILocation(line: 55, column: 13, scope: !1926)
!1986 = !DILocation(line: 53, column: 20, scope: !1926)
!1987 = !DILocation(line: 55, column: 11, scope: !1926)
!1988 = !DILocation(line: 56, column: 18, scope: !1926)
!1989 = !{!1990, !789, i64 0}
!1990 = !{!"iovec", !789, i64 0, !999, i64 8}
!1991 = !DILocation(line: 57, column: 9, scope: !1926)
!1992 = !DILocation(line: 57, column: 17, scope: !1926)
!1993 = !{!1990, !999, i64 8}
!1994 = !DILocation(line: 58, column: 2, scope: !1926)
!1995 = !DILocation(line: 58, column: 18, scope: !1926)
!1996 = !DILocation(line: 59, column: 9, scope: !1926)
!1997 = !DILocation(line: 59, column: 17, scope: !1926)
!1998 = !DILocation(line: 60, column: 28, scope: !1926)
!1999 = !DILocation(line: 61, column: 23, scope: !1926)
!2000 = !DILocation(line: 61, column: 7, scope: !1926)
!2001 = !DILocation(line: 62, column: 9, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1926, file: !292, line: 62, column: 6)
!2003 = !DILocation(line: 62, column: 6, scope: !1926)
!2004 = !DILocation(line: 63, column: 3, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !292, line: 62, column: 14)
!2006 = !DILocation(line: 64, column: 3, scope: !2005)
!2007 = !DILocation(line: 65, column: 16, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2002, file: !292, line: 65, column: 13)
!2009 = !DILocation(line: 65, column: 13, scope: !2002)
!2010 = !DILocation(line: 66, column: 3, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !292, line: 65, column: 28)
!2012 = !DILocation(line: 67, column: 3, scope: !2011)
!2013 = !DILocation(line: 70, column: 1, scope: !1926)
!2014 = !DISubprogram(name: "write", scope: !1151, file: !1151, line: 378, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!1962, !36, !1066, !28}
!2017 = !DISubprogram(name: "sendmsg", scope: !530, file: !530, line: 174, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!1962, !36, !2020, !36}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1950)
!2022 = distinct !DISubprogram(name: "database_open", scope: !318, file: !318, line: 4, type: !2023, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!84, !401, !28, !7, !7}
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031}
!2026 = !DILocalVariable(name: "path", arg: 1, scope: !2022, file: !318, line: 4, type: !401)
!2027 = !DILocalVariable(name: "mapsize", arg: 2, scope: !2022, file: !318, line: 4, type: !28)
!2028 = !DILocalVariable(name: "nbr_readers", arg: 3, scope: !2022, file: !318, line: 4, type: !7)
!2029 = !DILocalVariable(name: "nbr_dbs", arg: 4, scope: !2022, file: !318, line: 4, type: !7)
!2030 = !DILocalVariable(name: "env", scope: !2022, file: !318, line: 5, type: !84)
!2031 = !DILocalVariable(name: "rc", scope: !2022, file: !318, line: 6, type: !36)
!2032 = !DILocation(line: 0, scope: !2022)
!2033 = !DILocation(line: 5, column: 2, scope: !2022)
!2034 = !DILocation(line: 8, column: 2, scope: !2022)
!2035 = !DILocation(line: 10, column: 7, scope: !2022)
!2036 = !DILocation(line: 11, column: 6, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2022, file: !318, line: 11, column: 6)
!2038 = !DILocation(line: 11, column: 6, scope: !2022)
!2039 = !DILocation(line: 12, column: 3, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2037, file: !318, line: 11, column: 10)
!2041 = !DILocation(line: 13, column: 3, scope: !2040)
!2042 = !DILocation(line: 16, column: 27, scope: !2022)
!2043 = !DILocation(line: 16, column: 7, scope: !2022)
!2044 = !DILocation(line: 17, column: 6, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2022, file: !318, line: 17, column: 6)
!2046 = !DILocation(line: 17, column: 6, scope: !2022)
!2047 = !DILocation(line: 18, column: 3, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !318, line: 17, column: 10)
!2049 = !DILocation(line: 19, column: 3, scope: !2048)
!2050 = !DILocation(line: 22, column: 18, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2022, file: !318, line: 22, column: 6)
!2052 = !DILocation(line: 22, column: 6, scope: !2022)
!2053 = !DILocation(line: 23, column: 31, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2051, file: !318, line: 22, column: 25)
!2055 = !DILocation(line: 23, column: 8, scope: !2054)
!2056 = !DILocation(line: 24, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !318, line: 24, column: 7)
!2058 = !DILocation(line: 24, column: 7, scope: !2054)
!2059 = !DILocation(line: 25, column: 4, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !318, line: 24, column: 11)
!2061 = !DILocation(line: 26, column: 4, scope: !2060)
!2062 = !DILocation(line: 30, column: 14, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2022, file: !318, line: 30, column: 6)
!2064 = !DILocation(line: 30, column: 6, scope: !2022)
!2065 = !DILocation(line: 31, column: 27, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !318, line: 30, column: 19)
!2067 = !DILocation(line: 31, column: 8, scope: !2066)
!2068 = !DILocation(line: 32, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2066, file: !318, line: 32, column: 7)
!2070 = !DILocation(line: 32, column: 7, scope: !2066)
!2071 = !DILocation(line: 33, column: 4, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !318, line: 32, column: 11)
!2073 = !DILocation(line: 34, column: 4, scope: !2072)
!2074 = !DILocation(line: 38, column: 20, scope: !2022)
!2075 = !DILocation(line: 38, column: 7, scope: !2022)
!2076 = !DILocation(line: 39, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2022, file: !318, line: 39, column: 6)
!2078 = !DILocation(line: 39, column: 6, scope: !2022)
!2079 = !DILocation(line: 40, column: 3, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !318, line: 39, column: 10)
!2081 = !DILocation(line: 41, column: 17, scope: !2080)
!2082 = !DILocation(line: 41, column: 3, scope: !2080)
!2083 = !DILocation(line: 42, column: 3, scope: !2080)
!2084 = !DILocation(line: 44, column: 2, scope: !2022)
!2085 = !DILocation(line: 45, column: 10, scope: !2022)
!2086 = !DILocation(line: 45, column: 2, scope: !2022)
!2087 = !DILocation(line: 46, column: 1, scope: !2022)
!2088 = !DISubprogram(name: "mdb_env_create", scope: !86, file: !86, line: 445, type: !2089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!36, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2092 = !DISubprogram(name: "mdb_strerror", scope: !86, file: !86, line: 432, type: !2093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!38, !36}
!2095 = !DISubprogram(name: "mdb_env_set_mapsize", scope: !86, file: !86, line: 661, type: !2096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!36, !84, !28}
!2098 = !DISubprogram(name: "mdb_env_set_maxreaders", scope: !86, file: !86, line: 680, type: !2099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!36, !84, !7}
!2101 = !DISubprogram(name: "mdb_env_set_maxdbs", scope: !86, file: !86, line: 708, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!36, !84, !2104}
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_dbi", file: !86, line: 207, baseType: !7)
!2105 = !DISubprogram(name: "mdb_env_open", scope: !86, file: !86, line: 532, type: !2106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!36, !84, !401, !7, !2108}
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "mdb_mode_t", file: !86, line: 144, baseType: !2109)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !580, line: 69, baseType: !2110)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !582, line: 150, baseType: !7)
!2111 = !DISubprogram(name: "mdb_env_close", scope: !86, file: !86, line: 600, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !84}
!2114 = distinct !DISubprogram(name: "database_close", scope: !318, file: !318, line: 49, type: !2112, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2115)
!2115 = !{!2116}
!2116 = !DILocalVariable(name: "env", arg: 1, scope: !2114, file: !318, line: 49, type: !84)
!2117 = !DILocation(line: 0, scope: !2114)
!2118 = !DILocation(line: 50, column: 2, scope: !2114)
!2119 = !DILocation(line: 51, column: 2, scope: !2114)
!2120 = !DILocation(line: 52, column: 2, scope: !2114)
!2121 = !DILocation(line: 53, column: 1, scope: !2114)
!2122 = distinct !DISubprogram(name: "database_transaction_start", scope: !318, file: !318, line: 56, type: !2123, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!575, !84, !82}
!2125 = !{!2126, !2127, !2128, !2129, !2130}
!2126 = !DILocalVariable(name: "env", arg: 1, scope: !2122, file: !318, line: 56, type: !84)
!2127 = !DILocalVariable(name: "readonly", arg: 2, scope: !2122, file: !318, line: 56, type: !82)
!2128 = !DILocalVariable(name: "txn", scope: !2122, file: !318, line: 57, type: !575)
!2129 = !DILocalVariable(name: "flags", scope: !2122, file: !318, line: 58, type: !7)
!2130 = !DILocalVariable(name: "rc", scope: !2122, file: !318, line: 59, type: !36)
!2131 = !DILocation(line: 0, scope: !2122)
!2132 = !DILocation(line: 57, column: 2, scope: !2122)
!2133 = !DILocation(line: 61, column: 6, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2122, file: !318, line: 61, column: 6)
!2135 = !DILocation(line: 61, column: 6, scope: !2122)
!2136 = !DILocation(line: 63, column: 7, scope: !2122)
!2137 = !DILocation(line: 64, column: 6, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2122, file: !318, line: 64, column: 6)
!2139 = !DILocation(line: 64, column: 6, scope: !2122)
!2140 = !DILocation(line: 65, column: 3, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !318, line: 64, column: 10)
!2142 = !DILocation(line: 66, column: 3, scope: !2141)
!2143 = !DILocation(line: 68, column: 10, scope: !2122)
!2144 = !DILocation(line: 68, column: 2, scope: !2122)
!2145 = !DILocation(line: 69, column: 1, scope: !2122)
!2146 = !DISubprogram(name: "mdb_txn_begin", scope: !86, file: !86, line: 743, type: !2147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!36, !84, !575, !7, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!2150 = distinct !DISubprogram(name: "database_transaction_commit", scope: !318, file: !318, line: 72, type: !2151, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!593, !575}
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "transaction", arg: 1, scope: !2150, file: !318, line: 72, type: !575)
!2155 = !DILocalVariable(name: "rc", scope: !2150, file: !318, line: 73, type: !36)
!2156 = !DILocation(line: 0, scope: !2150)
!2157 = !DILocation(line: 75, column: 7, scope: !2150)
!2158 = !DILocation(line: 76, column: 6, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2150, file: !318, line: 76, column: 6)
!2160 = !DILocation(line: 76, column: 6, scope: !2150)
!2161 = !DILocation(line: 77, column: 3, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !318, line: 76, column: 10)
!2163 = !DILocation(line: 78, column: 3, scope: !2162)
!2164 = !DILocation(line: 81, column: 1, scope: !2150)
!2165 = !DISubprogram(name: "mdb_txn_commit", scope: !86, file: !86, line: 761, type: !2166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!36, !575}
!2168 = distinct !DISubprogram(name: "database_transaction_rollback", scope: !318, file: !318, line: 84, type: !2169, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !575}
!2171 = !{!2172}
!2172 = !DILocalVariable(name: "transaction", arg: 1, scope: !2168, file: !318, line: 84, type: !575)
!2173 = !DILocation(line: 0, scope: !2168)
!2174 = !DILocation(line: 85, column: 2, scope: !2168)
!2175 = !DILocation(line: 86, column: 1, scope: !2168)
!2176 = !DISubprogram(name: "mdb_txn_abort", scope: !86, file: !86, line: 771, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2177 = distinct !DISubprogram(name: "database_put", scope: !318, file: !318, line: 89, type: !2178, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2185)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!593, !84, !575, !82, !401, !2180, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !953, line: 33, baseType: !2181)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !953, line: 27, size: 128, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2181, file: !953, line: 28, baseType: !40, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2181, file: !953, line: 29, baseType: !28, size: 64, offset: 64)
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2200, !2201, !2202, !2203, !2204}
!2186 = !DILocalVariable(name: "env", arg: 1, scope: !2177, file: !318, line: 89, type: !84)
!2187 = !DILocalVariable(name: "transaction", arg: 2, scope: !2177, file: !318, line: 89, type: !575)
!2188 = !DILocalVariable(name: "create_only", arg: 3, scope: !2177, file: !318, line: 89, type: !82)
!2189 = !DILocalVariable(name: "name", arg: 4, scope: !2177, file: !318, line: 89, type: !401)
!2190 = !DILocalVariable(name: "key", arg: 5, scope: !2177, file: !318, line: 89, type: !2180)
!2191 = !DILocalVariable(name: "data", arg: 6, scope: !2177, file: !318, line: 89, type: !2180)
!2192 = !DILocalVariable(name: "dbi", scope: !2177, file: !318, line: 90, type: !2104)
!2193 = !DILocalVariable(name: "txn", scope: !2177, file: !318, line: 91, type: !575)
!2194 = !DILocalVariable(name: "db_key", scope: !2177, file: !318, line: 92, type: !2195)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_val", file: !86, line: 226, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_val", file: !86, line: 223, size: 128, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mv_size", scope: !2196, file: !86, line: 224, baseType: !28, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mv_data", scope: !2196, file: !86, line: 225, baseType: !40, size: 64, offset: 64)
!2200 = !DILocalVariable(name: "db_data", scope: !2177, file: !318, line: 92, type: !2195)
!2201 = !DILocalVariable(name: "rc", scope: !2177, file: !318, line: 93, type: !36)
!2202 = !DILocalVariable(name: "flags", scope: !2177, file: !318, line: 94, type: !7)
!2203 = !DILocalVariable(name: "retval", scope: !2177, file: !318, line: 95, type: !593)
!2204 = !DILabel(scope: !2177, name: "end_of_process", file: !318, line: 123)
!2205 = !DILocation(line: 0, scope: !2177)
!2206 = !DILocation(line: 89, column: 115, scope: !2177)
!2207 = !DILocation(line: 90, column: 2, scope: !2177)
!2208 = !DILocation(line: 92, column: 2, scope: !2177)
!2209 = !DILocation(line: 92, column: 10, scope: !2177)
!2210 = !DILocation(line: 92, column: 18, scope: !2177)
!2211 = !DILocation(line: 98, column: 6, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2177, file: !318, line: 98, column: 6)
!2213 = !DILocation(line: 98, column: 6, scope: !2177)
!2214 = !DILocation(line: 101, column: 10, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2177, file: !318, line: 101, column: 6)
!2216 = !DILocation(line: 101, column: 18, scope: !2215)
!2217 = !DILocation(line: 0, scope: !2122, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 101, column: 28, scope: !2215)
!2219 = !DILocation(line: 57, column: 2, scope: !2122, inlinedAt: !2218)
!2220 = !DILocation(line: 63, column: 7, scope: !2122, inlinedAt: !2218)
!2221 = !DILocation(line: 64, column: 6, scope: !2138, inlinedAt: !2218)
!2222 = !DILocation(line: 64, column: 6, scope: !2122, inlinedAt: !2218)
!2223 = !DILocation(line: 65, column: 3, scope: !2141, inlinedAt: !2218)
!2224 = !DILocation(line: 69, column: 1, scope: !2122, inlinedAt: !2218)
!2225 = !DILocation(line: 101, column: 6, scope: !2177)
!2226 = !DILocation(line: 68, column: 10, scope: !2122, inlinedAt: !2218)
!2227 = !DILocation(line: 101, column: 69, scope: !2215)
!2228 = !DILocation(line: 104, column: 7, scope: !2177)
!2229 = !DILocation(line: 105, column: 6, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2177, file: !318, line: 105, column: 6)
!2231 = !DILocation(line: 105, column: 6, scope: !2177)
!2232 = !DILocation(line: 106, column: 3, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !318, line: 105, column: 10)
!2234 = !DILocation(line: 123, column: 1, scope: !2177)
!2235 = !DILocation(line: 125, column: 24, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2177, file: !318, line: 125, column: 6)
!2237 = !DILocation(line: 111, column: 17, scope: !2177)
!2238 = !{!2239, !999, i64 0}
!2239 = !{!"MDB_val", !999, i64 0, !789, i64 8}
!2240 = !DILocation(line: 112, column: 9, scope: !2177)
!2241 = !DILocation(line: 112, column: 17, scope: !2177)
!2242 = !{!2239, !789, i64 8}
!2243 = !DILocation(line: 113, column: 25, scope: !2177)
!2244 = !{!998, !999, i64 8}
!2245 = !DILocation(line: 113, column: 18, scope: !2177)
!2246 = !DILocation(line: 114, column: 25, scope: !2177)
!2247 = !{!998, !789, i64 0}
!2248 = !DILocation(line: 114, column: 10, scope: !2177)
!2249 = !DILocation(line: 114, column: 18, scope: !2177)
!2250 = !DILocation(line: 116, column: 20, scope: !2177)
!2251 = !DILocation(line: 116, column: 7, scope: !2177)
!2252 = !DILocation(line: 117, column: 6, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2177, file: !318, line: 117, column: 6)
!2254 = !DILocation(line: 117, column: 6, scope: !2177)
!2255 = !DILocation(line: 118, column: 3, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !318, line: 117, column: 10)
!2257 = !DILocation(line: 122, column: 21, scope: !2177)
!2258 = !DILocation(line: 122, column: 2, scope: !2177)
!2259 = !DILocation(line: 0, scope: !2150, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 126, column: 6, scope: !2236)
!2261 = !DILocation(line: 75, column: 7, scope: !2150, inlinedAt: !2260)
!2262 = !DILocation(line: 76, column: 6, scope: !2159, inlinedAt: !2260)
!2263 = !DILocation(line: 76, column: 6, scope: !2150, inlinedAt: !2260)
!2264 = !DILocation(line: 77, column: 3, scope: !2162, inlinedAt: !2260)
!2265 = !DILocation(line: 125, column: 6, scope: !2177)
!2266 = !DILocation(line: 128, column: 24, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2177, file: !318, line: 128, column: 6)
!2268 = !DILocation(line: 0, scope: !2168, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 129, column: 3, scope: !2267)
!2270 = !DILocation(line: 85, column: 2, scope: !2168, inlinedAt: !2269)
!2271 = !DILocation(line: 129, column: 3, scope: !2267)
!2272 = !DILocation(line: 131, column: 1, scope: !2177)
!2273 = !DISubprogram(name: "mdb_dbi_open", scope: !86, file: !86, line: 876, type: !2274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!36, !575, !401, !7, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2277 = !DISubprogram(name: "mdb_put", scope: !86, file: !86, line: 1068, type: !2278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!36, !575, !2104, !2280, !2280, !7}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2281 = !DISubprogram(name: "mdb_dbi_close", scope: !86, file: !86, line: 901, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !84, !2104}
!2284 = distinct !DISubprogram(name: "database_del", scope: !318, file: !318, line: 134, type: !2285, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!593, !84, !575, !401, !2180}
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297}
!2288 = !DILocalVariable(name: "env", arg: 1, scope: !2284, file: !318, line: 134, type: !84)
!2289 = !DILocalVariable(name: "transaction", arg: 2, scope: !2284, file: !318, line: 134, type: !575)
!2290 = !DILocalVariable(name: "name", arg: 3, scope: !2284, file: !318, line: 134, type: !401)
!2291 = !DILocalVariable(name: "key", arg: 4, scope: !2284, file: !318, line: 134, type: !2180)
!2292 = !DILocalVariable(name: "dbi", scope: !2284, file: !318, line: 135, type: !2104)
!2293 = !DILocalVariable(name: "txn", scope: !2284, file: !318, line: 136, type: !575)
!2294 = !DILocalVariable(name: "db_key", scope: !2284, file: !318, line: 137, type: !2195)
!2295 = !DILocalVariable(name: "rc", scope: !2284, file: !318, line: 138, type: !36)
!2296 = !DILocalVariable(name: "retval", scope: !2284, file: !318, line: 139, type: !593)
!2297 = !DILabel(scope: !2284, name: "end_of_process", file: !318, line: 162)
!2298 = !DILocation(line: 0, scope: !2284)
!2299 = !DILocation(line: 135, column: 2, scope: !2284)
!2300 = !DILocation(line: 137, column: 2, scope: !2284)
!2301 = !DILocation(line: 137, column: 10, scope: !2284)
!2302 = !DILocation(line: 142, column: 10, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2284, file: !318, line: 142, column: 6)
!2304 = !DILocation(line: 142, column: 18, scope: !2303)
!2305 = !DILocation(line: 0, scope: !2122, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 142, column: 28, scope: !2303)
!2307 = !DILocation(line: 57, column: 2, scope: !2122, inlinedAt: !2306)
!2308 = !DILocation(line: 63, column: 7, scope: !2122, inlinedAt: !2306)
!2309 = !DILocation(line: 64, column: 6, scope: !2138, inlinedAt: !2306)
!2310 = !DILocation(line: 64, column: 6, scope: !2122, inlinedAt: !2306)
!2311 = !DILocation(line: 65, column: 3, scope: !2141, inlinedAt: !2306)
!2312 = !DILocation(line: 69, column: 1, scope: !2122, inlinedAt: !2306)
!2313 = !DILocation(line: 142, column: 6, scope: !2284)
!2314 = !DILocation(line: 68, column: 10, scope: !2122, inlinedAt: !2306)
!2315 = !DILocation(line: 142, column: 69, scope: !2303)
!2316 = !DILocation(line: 145, column: 7, scope: !2284)
!2317 = !DILocation(line: 146, column: 6, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2284, file: !318, line: 146, column: 6)
!2319 = !DILocation(line: 146, column: 6, scope: !2284)
!2320 = !DILocation(line: 147, column: 3, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !318, line: 146, column: 10)
!2322 = !DILocation(line: 162, column: 1, scope: !2284)
!2323 = !DILocation(line: 164, column: 24, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2284, file: !318, line: 164, column: 6)
!2325 = !DILocation(line: 152, column: 17, scope: !2284)
!2326 = !DILocation(line: 153, column: 9, scope: !2284)
!2327 = !DILocation(line: 153, column: 17, scope: !2284)
!2328 = !DILocation(line: 155, column: 20, scope: !2284)
!2329 = !DILocation(line: 155, column: 7, scope: !2284)
!2330 = !DILocation(line: 156, column: 6, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2284, file: !318, line: 156, column: 6)
!2332 = !DILocation(line: 156, column: 6, scope: !2284)
!2333 = !DILocation(line: 157, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !318, line: 156, column: 10)
!2335 = !DILocation(line: 161, column: 21, scope: !2284)
!2336 = !DILocation(line: 161, column: 2, scope: !2284)
!2337 = !DILocation(line: 0, scope: !2150, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 165, column: 6, scope: !2324)
!2339 = !DILocation(line: 75, column: 7, scope: !2150, inlinedAt: !2338)
!2340 = !DILocation(line: 76, column: 6, scope: !2159, inlinedAt: !2338)
!2341 = !DILocation(line: 76, column: 6, scope: !2150, inlinedAt: !2338)
!2342 = !DILocation(line: 77, column: 3, scope: !2162, inlinedAt: !2338)
!2343 = !DILocation(line: 164, column: 6, scope: !2284)
!2344 = !DILocation(line: 167, column: 24, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2284, file: !318, line: 167, column: 6)
!2346 = !DILocation(line: 0, scope: !2168, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 168, column: 3, scope: !2345)
!2348 = !DILocation(line: 85, column: 2, scope: !2168, inlinedAt: !2347)
!2349 = !DILocation(line: 168, column: 3, scope: !2345)
!2350 = !DILocation(line: 170, column: 1, scope: !2284)
!2351 = !DISubprogram(name: "mdb_del", scope: !86, file: !86, line: 1093, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!36, !575, !2104, !2280, !2280}
!2354 = distinct !DISubprogram(name: "database_get", scope: !318, file: !318, line: 173, type: !2355, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2358)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!593, !84, !575, !401, !2180, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370}
!2359 = !DILocalVariable(name: "env", arg: 1, scope: !2354, file: !318, line: 173, type: !84)
!2360 = !DILocalVariable(name: "transaction", arg: 2, scope: !2354, file: !318, line: 173, type: !575)
!2361 = !DILocalVariable(name: "name", arg: 3, scope: !2354, file: !318, line: 173, type: !401)
!2362 = !DILocalVariable(name: "key", arg: 4, scope: !2354, file: !318, line: 173, type: !2180)
!2363 = !DILocalVariable(name: "data", arg: 5, scope: !2354, file: !318, line: 173, type: !2357)
!2364 = !DILocalVariable(name: "dbi", scope: !2354, file: !318, line: 174, type: !2104)
!2365 = !DILocalVariable(name: "txn", scope: !2354, file: !318, line: 175, type: !575)
!2366 = !DILocalVariable(name: "db_key", scope: !2354, file: !318, line: 176, type: !2195)
!2367 = !DILocalVariable(name: "db_data", scope: !2354, file: !318, line: 176, type: !2195)
!2368 = !DILocalVariable(name: "rc", scope: !2354, file: !318, line: 177, type: !36)
!2369 = !DILocalVariable(name: "retval", scope: !2354, file: !318, line: 178, type: !593)
!2370 = !DILabel(scope: !2354, name: "end_of_process", file: !318, line: 198)
!2371 = !DILocation(line: 0, scope: !2354)
!2372 = !DILocation(line: 174, column: 2, scope: !2354)
!2373 = !DILocation(line: 176, column: 2, scope: !2354)
!2374 = !DILocation(line: 176, column: 10, scope: !2354)
!2375 = !DILocation(line: 176, column: 18, scope: !2354)
!2376 = !DILocation(line: 181, column: 10, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2354, file: !318, line: 181, column: 6)
!2378 = !DILocation(line: 181, column: 18, scope: !2377)
!2379 = !DILocation(line: 0, scope: !2122, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 181, column: 28, scope: !2377)
!2381 = !DILocation(line: 57, column: 2, scope: !2122, inlinedAt: !2380)
!2382 = !DILocation(line: 63, column: 7, scope: !2122, inlinedAt: !2380)
!2383 = !DILocation(line: 64, column: 6, scope: !2138, inlinedAt: !2380)
!2384 = !DILocation(line: 64, column: 6, scope: !2122, inlinedAt: !2380)
!2385 = !DILocation(line: 65, column: 3, scope: !2141, inlinedAt: !2380)
!2386 = !DILocation(line: 69, column: 1, scope: !2122, inlinedAt: !2380)
!2387 = !DILocation(line: 181, column: 6, scope: !2354)
!2388 = !DILocation(line: 68, column: 10, scope: !2122, inlinedAt: !2380)
!2389 = !DILocation(line: 181, column: 68, scope: !2377)
!2390 = !DILocation(line: 184, column: 7, scope: !2354)
!2391 = !DILocation(line: 185, column: 6, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2354, file: !318, line: 185, column: 6)
!2393 = !DILocation(line: 185, column: 6, scope: !2354)
!2394 = !DILocation(line: 191, column: 17, scope: !2354)
!2395 = !DILocation(line: 192, column: 9, scope: !2354)
!2396 = !DILocation(line: 192, column: 17, scope: !2354)
!2397 = !DILocation(line: 194, column: 20, scope: !2354)
!2398 = !DILocation(line: 194, column: 7, scope: !2354)
!2399 = !DILocation(line: 196, column: 6, scope: !2354)
!2400 = !DILocation(line: 0, scope: !2168, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 197, column: 3, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2354, file: !318, line: 196, column: 6)
!2403 = !DILocation(line: 85, column: 2, scope: !2168, inlinedAt: !2401)
!2404 = !DILocation(line: 197, column: 3, scope: !2402)
!2405 = !DILocation(line: 198, column: 1, scope: !2354)
!2406 = !DILocation(line: 200, column: 21, scope: !2354)
!2407 = !DILocation(line: 200, column: 2, scope: !2354)
!2408 = !DILocation(line: 202, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2354, file: !318, line: 202, column: 6)
!2410 = !DILocation(line: 202, column: 6, scope: !2354)
!2411 = !DILocation(line: 204, column: 23, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !318, line: 202, column: 11)
!2413 = !DILocation(line: 204, column: 9, scope: !2412)
!2414 = !DILocation(line: 204, column: 13, scope: !2412)
!2415 = !DILocation(line: 205, column: 24, scope: !2412)
!2416 = !DILocation(line: 205, column: 14, scope: !2412)
!2417 = !DILocation(line: 206, column: 3, scope: !2412)
!2418 = !DILocation(line: 186, column: 3, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2392, file: !318, line: 185, column: 10)
!2420 = !DILocation(line: 210, column: 13, scope: !2354)
!2421 = !DILocation(line: 211, column: 6, scope: !2354)
!2422 = !DILocation(line: 213, column: 9, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2354, file: !318, line: 213, column: 6)
!2424 = !DILocation(line: 213, column: 6, scope: !2354)
!2425 = !DILocation(line: 214, column: 3, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !318, line: 213, column: 26)
!2427 = !DILocation(line: 215, column: 3, scope: !2426)
!2428 = !DILocation(line: 217, column: 2, scope: !2354)
!2429 = !DILocation(line: 218, column: 2, scope: !2354)
!2430 = !DILocation(line: 219, column: 1, scope: !2354)
!2431 = !DISubprogram(name: "mdb_get", scope: !86, file: !86, line: 1021, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2432 = distinct !DISubprogram(name: "database_list", scope: !318, file: !318, line: 222, type: !2433, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2440)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!593, !84, !575, !401, !2435, !40}
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "database_callback", file: !2436, line: 11, baseType: !2437)
!2436 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!593, !40, !2180, !2180}
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2452, !2453, !2454, !2455, !2456, !2458, !2459, !2460}
!2441 = !DILocalVariable(name: "env", arg: 1, scope: !2432, file: !318, line: 222, type: !84)
!2442 = !DILocalVariable(name: "transaction", arg: 2, scope: !2432, file: !318, line: 222, type: !575)
!2443 = !DILocalVariable(name: "name", arg: 3, scope: !2432, file: !318, line: 222, type: !401)
!2444 = !DILocalVariable(name: "cb", arg: 4, scope: !2432, file: !318, line: 222, type: !2435)
!2445 = !DILocalVariable(name: "cb_data", arg: 5, scope: !2432, file: !318, line: 222, type: !40)
!2446 = !DILocalVariable(name: "dbi", scope: !2432, file: !318, line: 223, type: !2104)
!2447 = !DILocalVariable(name: "txn", scope: !2432, file: !318, line: 224, type: !575)
!2448 = !DILocalVariable(name: "cursor", scope: !2432, file: !318, line: 225, type: !2449)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_cursor", file: !86, line: 210, baseType: !2451)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_cursor", file: !86, line: 210, flags: DIFlagFwdDecl)
!2452 = !DILocalVariable(name: "db_key", scope: !2432, file: !318, line: 226, type: !2195)
!2453 = !DILocalVariable(name: "db_data", scope: !2432, file: !318, line: 226, type: !2195)
!2454 = !DILocalVariable(name: "rc", scope: !2432, file: !318, line: 227, type: !36)
!2455 = !DILocalVariable(name: "retval", scope: !2432, file: !318, line: 228, type: !593)
!2456 = !DILocalVariable(name: "key", scope: !2457, file: !318, line: 249, type: !2180)
!2457 = distinct !DILexicalBlock(scope: !2432, file: !318, line: 248, column: 74)
!2458 = !DILocalVariable(name: "data", scope: !2457, file: !318, line: 249, type: !2180)
!2459 = !DILabel(scope: !2432, name: "end_of_process", file: !318, line: 258)
!2460 = !DILabel(scope: !2432, name: "failure", file: !318, line: 261)
!2461 = !DILocation(line: 0, scope: !2432)
!2462 = !DILocation(line: 223, column: 2, scope: !2432)
!2463 = !DILocation(line: 225, column: 2, scope: !2432)
!2464 = !DILocation(line: 226, column: 2, scope: !2432)
!2465 = !DILocation(line: 226, column: 10, scope: !2432)
!2466 = !DILocation(line: 226, column: 18, scope: !2432)
!2467 = !DILocation(line: 231, column: 10, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2432, file: !318, line: 231, column: 6)
!2469 = !DILocation(line: 231, column: 18, scope: !2468)
!2470 = !DILocation(line: 0, scope: !2122, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 231, column: 28, scope: !2468)
!2472 = !DILocation(line: 57, column: 2, scope: !2122, inlinedAt: !2471)
!2473 = !DILocation(line: 63, column: 7, scope: !2122, inlinedAt: !2471)
!2474 = !DILocation(line: 64, column: 6, scope: !2138, inlinedAt: !2471)
!2475 = !DILocation(line: 64, column: 6, scope: !2122, inlinedAt: !2471)
!2476 = !DILocation(line: 65, column: 3, scope: !2141, inlinedAt: !2471)
!2477 = !DILocation(line: 69, column: 1, scope: !2122, inlinedAt: !2471)
!2478 = !DILocation(line: 231, column: 6, scope: !2432)
!2479 = !DILocation(line: 68, column: 10, scope: !2122, inlinedAt: !2471)
!2480 = !DILocation(line: 231, column: 68, scope: !2468)
!2481 = !DILocation(line: 234, column: 7, scope: !2432)
!2482 = !DILocation(line: 235, column: 6, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2432, file: !318, line: 235, column: 6)
!2484 = !DILocation(line: 235, column: 6, scope: !2432)
!2485 = !DILocation(line: 236, column: 3, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !318, line: 235, column: 10)
!2487 = !DILocation(line: 238, column: 3, scope: !2486)
!2488 = !DILocation(line: 241, column: 28, scope: !2432)
!2489 = !DILocation(line: 241, column: 7, scope: !2432)
!2490 = !DILocation(line: 242, column: 6, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2432, file: !318, line: 242, column: 6)
!2492 = !DILocation(line: 242, column: 6, scope: !2432)
!2493 = !DILocation(line: 248, column: 2, scope: !2432)
!2494 = !DILocation(line: 243, column: 3, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !318, line: 242, column: 10)
!2496 = !DILocation(line: 245, column: 3, scope: !2495)
!2497 = !DILocation(line: 248, column: 30, scope: !2432)
!2498 = !DILocation(line: 248, column: 15, scope: !2432)
!2499 = !DILocation(line: 248, column: 68, scope: !2432)
!2500 = !DILocation(line: 249, column: 3, scope: !2457)
!2501 = !DILocation(line: 249, column: 10, scope: !2457)
!2502 = !DILocation(line: 249, column: 15, scope: !2457)
!2503 = !DILocation(line: 251, column: 25, scope: !2457)
!2504 = !DILocation(line: 251, column: 41, scope: !2457)
!2505 = !DILocation(line: 251, column: 3, scope: !2457)
!2506 = !DILocation(line: 252, column: 27, scope: !2457)
!2507 = !DILocation(line: 252, column: 44, scope: !2457)
!2508 = !DILocation(line: 252, column: 3, scope: !2457)
!2509 = !DILocation(line: 253, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2457, file: !318, line: 253, column: 7)
!2511 = !DILocation(line: 253, column: 30, scope: !2510)
!2512 = !DILocation(line: 255, column: 2, scope: !2432)
!2513 = !DILocation(line: 257, column: 19, scope: !2432)
!2514 = !DILocation(line: 257, column: 2, scope: !2432)
!2515 = !DILocation(line: 258, column: 1, scope: !2432)
!2516 = !DILocation(line: 260, column: 21, scope: !2432)
!2517 = !DILocation(line: 260, column: 2, scope: !2432)
!2518 = !DILocation(line: 261, column: 1, scope: !2432)
!2519 = !DILocation(line: 263, column: 6, scope: !2432)
!2520 = !DILocation(line: 0, scope: !2168, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 264, column: 3, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2432, file: !318, line: 263, column: 6)
!2523 = !DILocation(line: 85, column: 2, scope: !2168, inlinedAt: !2521)
!2524 = !DILocation(line: 264, column: 3, scope: !2522)
!2525 = !DILocation(line: 266, column: 1, scope: !2432)
!2526 = !DISubprogram(name: "mdb_cursor_open", scope: !86, file: !86, line: 1117, type: !2527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!36, !575, !2104, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2530 = !DISubprogram(name: "mdb_cursor_get", scope: !86, file: !86, line: 1176, type: !2531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!36, !2449, !2280, !2280, !2533}
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_cursor_op", file: !86, line: 346, baseType: !733)
!2534 = !DISubprogram(name: "mdb_cursor_close", scope: !86, file: !86, line: 1125, type: !2535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !2449}
!2537 = distinct !DISubprogram(name: "database_drop", scope: !318, file: !318, line: 269, type: !2538, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!593, !84, !575, !401}
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2541 = !DILocalVariable(name: "env", arg: 1, scope: !2537, file: !318, line: 269, type: !84)
!2542 = !DILocalVariable(name: "transaction", arg: 2, scope: !2537, file: !318, line: 269, type: !575)
!2543 = !DILocalVariable(name: "name", arg: 3, scope: !2537, file: !318, line: 269, type: !401)
!2544 = !DILocalVariable(name: "dbi", scope: !2537, file: !318, line: 270, type: !2104)
!2545 = !DILocalVariable(name: "txn", scope: !2537, file: !318, line: 271, type: !575)
!2546 = !DILocalVariable(name: "rc", scope: !2537, file: !318, line: 272, type: !36)
!2547 = !DILocalVariable(name: "retval", scope: !2537, file: !318, line: 273, type: !593)
!2548 = !DILabel(scope: !2537, name: "end_of_process", file: !318, line: 293)
!2549 = !DILocation(line: 0, scope: !2537)
!2550 = !DILocation(line: 270, column: 2, scope: !2537)
!2551 = !DILocation(line: 276, column: 10, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2537, file: !318, line: 276, column: 6)
!2553 = !DILocation(line: 276, column: 18, scope: !2552)
!2554 = !DILocation(line: 0, scope: !2122, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 276, column: 28, scope: !2552)
!2556 = !DILocation(line: 57, column: 2, scope: !2122, inlinedAt: !2555)
!2557 = !DILocation(line: 63, column: 7, scope: !2122, inlinedAt: !2555)
!2558 = !DILocation(line: 64, column: 6, scope: !2138, inlinedAt: !2555)
!2559 = !DILocation(line: 64, column: 6, scope: !2122, inlinedAt: !2555)
!2560 = !DILocation(line: 65, column: 3, scope: !2141, inlinedAt: !2555)
!2561 = !DILocation(line: 69, column: 1, scope: !2122, inlinedAt: !2555)
!2562 = !DILocation(line: 276, column: 6, scope: !2537)
!2563 = !DILocation(line: 68, column: 10, scope: !2122, inlinedAt: !2555)
!2564 = !DILocation(line: 276, column: 69, scope: !2552)
!2565 = !DILocation(line: 279, column: 7, scope: !2537)
!2566 = !DILocation(line: 280, column: 6, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2537, file: !318, line: 280, column: 6)
!2568 = !DILocation(line: 280, column: 6, scope: !2537)
!2569 = !DILocation(line: 281, column: 3, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !318, line: 280, column: 10)
!2571 = !DILocation(line: 293, column: 1, scope: !2537)
!2572 = !DILocation(line: 295, column: 24, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2537, file: !318, line: 295, column: 6)
!2574 = !DILocation(line: 286, column: 21, scope: !2537)
!2575 = !DILocation(line: 286, column: 7, scope: !2537)
!2576 = !DILocation(line: 287, column: 6, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2537, file: !318, line: 287, column: 6)
!2578 = !DILocation(line: 287, column: 6, scope: !2537)
!2579 = !DILocation(line: 288, column: 3, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2577, file: !318, line: 287, column: 10)
!2581 = !DILocation(line: 292, column: 21, scope: !2537)
!2582 = !DILocation(line: 292, column: 2, scope: !2537)
!2583 = !DILocation(line: 0, scope: !2150, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 296, column: 6, scope: !2573)
!2585 = !DILocation(line: 75, column: 7, scope: !2150, inlinedAt: !2584)
!2586 = !DILocation(line: 76, column: 6, scope: !2159, inlinedAt: !2584)
!2587 = !DILocation(line: 76, column: 6, scope: !2150, inlinedAt: !2584)
!2588 = !DILocation(line: 77, column: 3, scope: !2162, inlinedAt: !2584)
!2589 = !DILocation(line: 295, column: 6, scope: !2537)
!2590 = !DILocation(line: 298, column: 24, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2537, file: !318, line: 298, column: 6)
!2592 = !DILocation(line: 0, scope: !2168, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 299, column: 3, scope: !2591)
!2594 = !DILocation(line: 85, column: 2, scope: !2168, inlinedAt: !2593)
!2595 = !DILocation(line: 299, column: 3, scope: !2591)
!2596 = !DILocation(line: 301, column: 1, scope: !2537)
!2597 = !DISubprogram(name: "mdb_drop", scope: !86, file: !86, line: 913, type: !2598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!36, !575, !2104, !36}
!2600 = !DILocation(line: 14, column: 6, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !397, file: !398, line: 14, column: 6)
!2602 = !DILocation(line: 14, column: 39, scope: !2601)
!2603 = !DILocation(line: 14, column: 6, scope: !397)
!2604 = !DILocation(line: 16, column: 12, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !397, file: !398, line: 16, column: 6)
!2606 = !DILocation(line: 0, scope: !397)
!2607 = !DILocation(line: 16, column: 32, scope: !2605)
!2608 = !DILocation(line: 16, column: 6, scope: !397)
!2609 = !DILocation(line: 17, column: 7, scope: !2605)
!2610 = !DILocation(line: 17, column: 3, scope: !2605)
!2611 = !DILocation(line: 19, column: 1, scope: !397)
!2612 = !DISubprogram(name: "realpath", scope: !808, file: !808, line: 808, type: !2613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!38, !885, !1591}
!2615 = !DISubprogram(name: "strrchr", scope: !888, file: !888, line: 273, type: !2616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!38, !401, !36}
!2618 = distinct !DISubprogram(name: "command_get", scope: !414, file: !414, line: 12, type: !2619, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !2650)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!593, !2621, !82, !82, !82, !2642}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !2623)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !2624)
!2624 = !{!2625, !2626, !2638, !2639, !2640, !2641}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2623, file: !555, line: 24, baseType: !91, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !2623, file: !555, line: 25, baseType: !2627, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !2629)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2629, file: !78, line: 42, baseType: !82, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !2629, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !2629, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !2629, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !2629, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !2629, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2629, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2623, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !2623, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !2623, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !2623, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2644, file: !597, line: 38, baseType: !40, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2644, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2644, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2644, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2666, !2667, !2668, !2671, !2672, !2673}
!2651 = !DILocalVariable(name: "thread", arg: 1, scope: !2618, file: !414, line: 12, type: !2621)
!2652 = !DILocalVariable(name: "sync", arg: 2, scope: !2618, file: !414, line: 12, type: !82)
!2653 = !DILocalVariable(name: "compress", arg: 3, scope: !2618, file: !414, line: 12, type: !82)
!2654 = !DILocalVariable(name: "serialized", arg: 4, scope: !2618, file: !414, line: 12, type: !82)
!2655 = !DILocalVariable(name: "buff", arg: 5, scope: !2618, file: !414, line: 12, type: !2642)
!2656 = !DILocalVariable(name: "pname_len", scope: !2618, file: !414, line: 13, type: !939)
!2657 = !DILocalVariable(name: "name_len", scope: !2618, file: !414, line: 13, type: !729)
!2658 = !DILocalVariable(name: "ptr", scope: !2618, file: !414, line: 14, type: !40)
!2659 = !DILocalVariable(name: "name", scope: !2618, file: !414, line: 14, type: !40)
!2660 = !DILocalVariable(name: "bin_key", scope: !2618, file: !414, line: 15, type: !2661)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !953, line: 33, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !953, line: 27, size: 128, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2662, file: !953, line: 28, baseType: !40, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2662, file: !953, line: 29, baseType: !28, size: 64, offset: 64)
!2666 = !DILocalVariable(name: "bin_data", scope: !2618, file: !414, line: 15, type: !2661)
!2667 = !DILocalVariable(name: "result", scope: !2618, file: !414, line: 16, type: !593)
!2668 = !DILocalVariable(name: "unzip_len", scope: !2669, file: !414, line: 42, type: !28)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !414, line: 40, column: 33)
!2670 = distinct !DILexicalBlock(scope: !2618, file: !414, line: 40, column: 6)
!2671 = !DILocalVariable(name: "unzip_data", scope: !2669, file: !414, line: 43, type: !38)
!2672 = !DILabel(scope: !2618, name: "no_data", file: !414, line: 61)
!2673 = !DILabel(scope: !2618, name: "error", file: !414, line: 66)
!2674 = !DILocation(line: 0, scope: !2618)
!2675 = !DILocation(line: 15, column: 2, scope: !2618)
!2676 = !DILocation(line: 15, column: 18, scope: !2618)
!2677 = !DILocation(line: 18, column: 2, scope: !2618)
!2678 = !DILocation(line: 20, column: 6, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2618, file: !414, line: 20, column: 6)
!2680 = !DILocation(line: 20, column: 59, scope: !2679)
!2681 = !DILocation(line: 20, column: 6, scope: !2618)
!2682 = !DILocation(line: 22, column: 14, scope: !2618)
!2683 = !DILocation(line: 23, column: 13, scope: !2618)
!2684 = !DILocation(line: 25, column: 41, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2618, file: !414, line: 25, column: 6)
!2686 = !DILocation(line: 25, column: 6, scope: !2685)
!2687 = !DILocation(line: 25, column: 59, scope: !2685)
!2688 = !DILocation(line: 25, column: 6, scope: !2618)
!2689 = !DILocation(line: 27, column: 8, scope: !2618)
!2690 = !DILocation(line: 28, column: 14, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2618, file: !414, line: 28, column: 6)
!2692 = !DILocation(line: 28, column: 41, scope: !2691)
!2693 = !DILocation(line: 28, column: 6, scope: !2618)
!2694 = !DILocation(line: 30, column: 2, scope: !2618)
!2695 = !DILocation(line: 35, column: 32, scope: !2618)
!2696 = !DILocation(line: 35, column: 40, scope: !2618)
!2697 = !DILocation(line: 35, column: 58, scope: !2618)
!2698 = !DILocation(line: 35, column: 79, scope: !2618)
!2699 = !DILocation(line: 35, column: 11, scope: !2618)
!2700 = !DILocation(line: 36, column: 6, scope: !2618)
!2701 = !DILocation(line: 40, column: 15, scope: !2670)
!2702 = !DILocation(line: 40, column: 6, scope: !2670)
!2703 = !DILocation(line: 40, column: 19, scope: !2670)
!2704 = !DILocation(line: 42, column: 3, scope: !2669)
!2705 = !DILocation(line: 45, column: 3, scope: !2669)
!2706 = !DILocation(line: 46, column: 39, scope: !2669)
!2707 = !DILocation(line: 46, column: 54, scope: !2669)
!2708 = !DILocation(line: 0, scope: !2669)
!2709 = !DILocation(line: 46, column: 3, scope: !2669)
!2710 = !DILocation(line: 47, column: 16, scope: !2669)
!2711 = !DILocation(line: 48, column: 34, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2669, file: !414, line: 48, column: 7)
!2713 = !DILocation(line: 48, column: 49, scope: !2712)
!2714 = !DILocation(line: 48, column: 7, scope: !2712)
!2715 = !DILocation(line: 48, column: 7, scope: !2669)
!2716 = !DILocation(line: 52, column: 17, scope: !2669)
!2717 = !DILocation(line: 53, column: 18, scope: !2669)
!2718 = !DILocation(line: 53, column: 16, scope: !2669)
!2719 = !DILocation(line: 54, column: 2, scope: !2670)
!2720 = !DILocation(line: 49, column: 4, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2712, file: !414, line: 48, column: 67)
!2722 = !DILocation(line: 56, column: 2, scope: !2618)
!2723 = !DILocation(line: 57, column: 2, scope: !2618)
!2724 = !DILocation(line: 59, column: 45, scope: !2618)
!2725 = !DILocation(line: 59, column: 60, scope: !2618)
!2726 = !DILocation(line: 58, column: 11, scope: !2618)
!2727 = !DILocation(line: 60, column: 2, scope: !2618)
!2728 = !DILocation(line: 61, column: 1, scope: !2618)
!2729 = !DILocation(line: 62, column: 2, scope: !2618)
!2730 = !DILocation(line: 63, column: 2, scope: !2618)
!2731 = !DILocation(line: 64, column: 2, scope: !2618)
!2732 = !DILocation(line: 65, column: 2, scope: !2618)
!2733 = !DILocation(line: 66, column: 1, scope: !2618)
!2734 = !DILocation(line: 67, column: 2, scope: !2618)
!2735 = !DILocation(line: 68, column: 2, scope: !2618)
!2736 = !DILocation(line: 69, column: 2, scope: !2618)
!2737 = !DILocation(line: 70, column: 2, scope: !2618)
!2738 = !DILocation(line: 71, column: 1, scope: !2618)
!2739 = !DISubprogram(name: "snappy_uncompressed_length", scope: !1701, file: !1701, line: 33, type: !2740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!2742, !401, !28, !1873}
!2742 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2743 = !DISubprogram(name: "snappy_uncompress", scope: !1701, file: !1701, line: 20, type: !2744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!36, !401, !28, !38}
!2746 = distinct !DISubprogram(name: "command_setdb", scope: !431, file: !431, line: 12, type: !2747, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !2778)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!593, !2749, !82, !82, !82, !2770}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !2752)
!2752 = !{!2753, !2754, !2766, !2767, !2768, !2769}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2751, file: !555, line: 24, baseType: !91, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !2751, file: !555, line: 25, baseType: !2755, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !2757)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2757, file: !78, line: 42, baseType: !82, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !2757, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !2757, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !2757, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !2757, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !2757, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2757, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2751, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !2751, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !2751, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !2751, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2772, file: !597, line: 38, baseType: !40, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2772, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2772, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2772, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2786, !2787, !2788, !2789, !2790}
!2779 = !DILocalVariable(name: "thread", arg: 1, scope: !2746, file: !431, line: 12, type: !2749)
!2780 = !DILocalVariable(name: "sync", arg: 2, scope: !2746, file: !431, line: 12, type: !82)
!2781 = !DILocalVariable(name: "compress", arg: 3, scope: !2746, file: !431, line: 12, type: !82)
!2782 = !DILocalVariable(name: "serialized", arg: 4, scope: !2746, file: !431, line: 12, type: !82)
!2783 = !DILocalVariable(name: "buff", arg: 5, scope: !2746, file: !431, line: 12, type: !2770)
!2784 = !DILocalVariable(name: "pdbname_len", scope: !2746, file: !431, line: 13, type: !2785)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2786 = !DILocalVariable(name: "dbname_len", scope: !2746, file: !431, line: 13, type: !578)
!2787 = !DILocalVariable(name: "dbname", scope: !2746, file: !431, line: 14, type: !38)
!2788 = !DILocalVariable(name: "ptr", scope: !2746, file: !431, line: 15, type: !40)
!2789 = !DILocalVariable(name: "result", scope: !2746, file: !431, line: 16, type: !593)
!2790 = !DILabel(scope: !2746, name: "error", file: !431, line: 39)
!2791 = !DILocation(line: 0, scope: !2746)
!2792 = !DILocation(line: 18, column: 2, scope: !2746)
!2793 = !DILocation(line: 20, column: 6, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2746, file: !431, line: 20, column: 6)
!2795 = !DILocation(line: 20, column: 61, scope: !2794)
!2796 = !DILocation(line: 20, column: 6, scope: !2746)
!2797 = !DILocation(line: 22, column: 16, scope: !2746)
!2798 = !DILocation(line: 23, column: 15, scope: !2746)
!2799 = !DILocation(line: 24, column: 2, scope: !2746)
!2800 = !DILocation(line: 25, column: 17, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2746, file: !431, line: 25, column: 6)
!2802 = !DILocation(line: 25, column: 6, scope: !2746)
!2803 = !DILocation(line: 27, column: 42, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !431, line: 27, column: 7)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !431, line: 25, column: 22)
!2806 = !DILocation(line: 27, column: 7, scope: !2804)
!2807 = !DILocation(line: 27, column: 62, scope: !2804)
!2808 = !DILocation(line: 27, column: 7, scope: !2805)
!2809 = !DILocation(line: 29, column: 9, scope: !2805)
!2810 = !DILocation(line: 30, column: 17, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2805, file: !431, line: 30, column: 7)
!2812 = !DILocation(line: 30, column: 50, scope: !2811)
!2813 = !DILocation(line: 30, column: 7, scope: !2805)
!2814 = !DILocation(line: 32, column: 3, scope: !2805)
!2815 = !DILocation(line: 33, column: 18, scope: !2805)
!2816 = !DILocation(line: 34, column: 2, scope: !2805)
!2817 = !DILocation(line: 36, column: 2, scope: !2746)
!2818 = !DILocation(line: 37, column: 2, scope: !2746)
!2819 = !DILocation(line: 38, column: 2, scope: !2746)
!2820 = !DILocation(line: 39, column: 1, scope: !2746)
!2821 = !DILocation(line: 40, column: 2, scope: !2746)
!2822 = !DILocation(line: 41, column: 2, scope: !2746)
!2823 = !DILocation(line: 42, column: 2, scope: !2746)
!2824 = !DILocation(line: 43, column: 1, scope: !2746)
!2825 = distinct !DISubprogram(name: "command_start", scope: !442, file: !442, line: 7, type: !2826, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2857)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!593, !2828, !82, !82, !82, !2849}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !2830)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !2831)
!2831 = !{!2832, !2833, !2845, !2846, !2847, !2848}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2830, file: !555, line: 24, baseType: !91, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !2830, file: !555, line: 25, baseType: !2834, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !2836)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843, !2844}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2836, file: !78, line: 42, baseType: !82, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !2836, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !2836, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !2836, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !2836, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !2836, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2836, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2830, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !2830, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !2830, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !2830, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !2851)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2856}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2851, file: !597, line: 38, baseType: !40, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2851, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2851, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2851, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863}
!2858 = !DILocalVariable(name: "thread", arg: 1, scope: !2825, file: !442, line: 7, type: !2828)
!2859 = !DILocalVariable(name: "sync", arg: 2, scope: !2825, file: !442, line: 7, type: !82)
!2860 = !DILocalVariable(name: "compress", arg: 3, scope: !2825, file: !442, line: 7, type: !82)
!2861 = !DILocalVariable(name: "serialized", arg: 4, scope: !2825, file: !442, line: 7, type: !82)
!2862 = !DILocalVariable(name: "buff", arg: 5, scope: !2825, file: !442, line: 7, type: !2849)
!2863 = !DILabel(scope: !2825, name: "error", file: !442, line: 18)
!2864 = !DILocation(line: 0, scope: !2825)
!2865 = !DILocation(line: 8, column: 2, scope: !2825)
!2866 = !DILocation(line: 10, column: 14, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2825, file: !442, line: 10, column: 6)
!2868 = !DILocation(line: 10, column: 26, scope: !2867)
!2869 = !DILocation(line: 10, column: 6, scope: !2825)
!2870 = !DILocation(line: 11, column: 3, scope: !2867)
!2871 = !DILocation(line: 13, column: 59, scope: !2825)
!2872 = !DILocation(line: 13, column: 67, scope: !2825)
!2873 = !DILocation(line: 13, column: 24, scope: !2825)
!2874 = !DILocation(line: 13, column: 22, scope: !2825)
!2875 = !DILocation(line: 14, column: 26, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2825, file: !442, line: 14, column: 6)
!2877 = !DILocation(line: 14, column: 6, scope: !2825)
!2878 = !DILocation(line: 18, column: 1, scope: !2825)
!2879 = !DILocation(line: 19, column: 2, scope: !2825)
!2880 = !DILocation(line: 21, column: 2, scope: !2825)
!2881 = !DILocation(line: 22, column: 1, scope: !2825)
!2882 = distinct !DISubprogram(name: "command_stop", scope: !442, file: !442, line: 25, type: !2826, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !2883)
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889}
!2884 = !DILocalVariable(name: "thread", arg: 1, scope: !2882, file: !442, line: 25, type: !2828)
!2885 = !DILocalVariable(name: "sync", arg: 2, scope: !2882, file: !442, line: 25, type: !82)
!2886 = !DILocalVariable(name: "compress", arg: 3, scope: !2882, file: !442, line: 25, type: !82)
!2887 = !DILocalVariable(name: "serialized", arg: 4, scope: !2882, file: !442, line: 25, type: !82)
!2888 = !DILocalVariable(name: "buff", arg: 5, scope: !2882, file: !442, line: 25, type: !2849)
!2889 = !DILabel(scope: !2882, name: "error", file: !442, line: 35)
!2890 = !DILocation(line: 0, scope: !2882)
!2891 = !DILocation(line: 26, column: 2, scope: !2882)
!2892 = !DILocation(line: 28, column: 14, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2882, file: !442, line: 28, column: 6)
!2894 = !DILocation(line: 28, column: 26, scope: !2893)
!2895 = !DILocation(line: 28, column: 6, scope: !2882)
!2896 = !DILocation(line: 31, column: 2, scope: !2882)
!2897 = !DILocation(line: 32, column: 22, scope: !2882)
!2898 = !DILocation(line: 34, column: 2, scope: !2882)
!2899 = !DILocation(line: 35, column: 1, scope: !2882)
!2900 = !DILocation(line: 36, column: 2, scope: !2882)
!2901 = !DILocation(line: 38, column: 2, scope: !2882)
!2902 = !DILocation(line: 39, column: 1, scope: !2882)
!2903 = distinct !DISubprogram(name: "connection_thread_new", scope: !460, file: !460, line: 35, type: !2904, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!553, !560}
!2906 = !{!2907, !2908}
!2907 = !DILocalVariable(name: "finedb", arg: 1, scope: !2903, file: !460, line: 35, type: !560)
!2908 = !DILocalVariable(name: "thread", scope: !2903, file: !460, line: 36, type: !553)
!2909 = !DILocation(line: 0, scope: !2903)
!2910 = !DILocation(line: 39, column: 11, scope: !2903)
!2911 = !DILocation(line: 40, column: 10, scope: !2903)
!2912 = !DILocation(line: 40, column: 13, scope: !2903)
!2913 = !DILocation(line: 41, column: 10, scope: !2903)
!2914 = !DILocation(line: 41, column: 17, scope: !2903)
!2915 = !DILocation(line: 43, column: 6, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2903, file: !460, line: 43, column: 6)
!2917 = !DILocation(line: 43, column: 6, scope: !2903)
!2918 = !DILocation(line: 45, column: 3, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2916, file: !460, line: 44, column: 15)
!2920 = !DILocation(line: 46, column: 3, scope: !2919)
!2921 = !DILocation(line: 49, column: 25, scope: !2903)
!2922 = !{!1007, !999, i64 0}
!2923 = !DILocation(line: 49, column: 2, scope: !2903)
!2924 = !DILocation(line: 50, column: 2, scope: !2903)
!2925 = !DILocation(line: 51, column: 1, scope: !2903)
!2926 = distinct !DISubprogram(name: "connection_thread_execution", scope: !460, file: !460, line: 74, type: !1376, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2935, !2939, !2940, !2941, !2942, !2943, !2944}
!2928 = !DILocalVariable(name: "param", arg: 1, scope: !2926, file: !460, line: 74, type: !40)
!2929 = !DILocalVariable(name: "thread", scope: !2926, file: !460, line: 75, type: !553)
!2930 = !DILocalVariable(name: "incoming_socket", scope: !2926, file: !460, line: 76, type: !36)
!2931 = !DILocalVariable(name: "buff", scope: !2932, file: !460, line: 94, type: !595)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !460, line: 93, column: 13)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !460, line: 93, column: 2)
!2934 = distinct !DILexicalBlock(scope: !2926, file: !460, line: 93, column: 2)
!2935 = !DILocalVariable(name: "request", scope: !2936, file: !460, line: 105, type: !2785)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !460, line: 104, column: 14)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !460, line: 104, column: 3)
!2938 = distinct !DILexicalBlock(scope: !2932, file: !460, line: 104, column: 3)
!2939 = !DILocalVariable(name: "command", scope: !2936, file: !460, line: 105, type: !578)
!2940 = !DILocalVariable(name: "sync", scope: !2936, file: !460, line: 106, type: !82)
!2941 = !DILocalVariable(name: "compress", scope: !2936, file: !460, line: 106, type: !82)
!2942 = !DILocalVariable(name: "serialized", scope: !2936, file: !460, line: 106, type: !82)
!2943 = !DILocalVariable(name: "func", scope: !2936, file: !460, line: 107, type: !588)
!2944 = !DILabel(scope: !2932, name: "end_of_connection", file: !460, line: 133)
!2945 = !DILocation(line: 0, scope: !2926)
!2946 = !DILocation(line: 78, column: 2, scope: !2926)
!2947 = !DILocation(line: 81, column: 28, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2926, file: !460, line: 81, column: 6)
!2949 = !DILocation(line: 81, column: 15, scope: !2948)
!2950 = !DILocation(line: 81, column: 26, scope: !2948)
!2951 = !DILocation(line: 81, column: 55, scope: !2948)
!2952 = !DILocation(line: 81, column: 59, scope: !2948)
!2953 = !DILocation(line: 82, column: 6, scope: !2948)
!2954 = !DILocation(line: 82, column: 61, scope: !2948)
!2955 = !DILocation(line: 81, column: 6, scope: !2926)
!2956 = !DILocation(line: 83, column: 3, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2948, file: !460, line: 82, column: 66)
!2958 = !DILocation(line: 84, column: 3, scope: !2957)
!2959 = !DILocation(line: 87, column: 25, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2926, file: !460, line: 87, column: 6)
!2961 = !DILocation(line: 87, column: 52, scope: !2960)
!2962 = !DILocation(line: 87, column: 56, scope: !2960)
!2963 = !DILocation(line: 88, column: 6, scope: !2960)
!2964 = !DILocation(line: 88, column: 59, scope: !2960)
!2965 = !DILocation(line: 87, column: 6, scope: !2926)
!2966 = !DILocation(line: 97, column: 65, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2932, file: !460, line: 97, column: 7)
!2968 = !DILocation(line: 89, column: 3, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2960, file: !460, line: 88, column: 64)
!2970 = !DILocation(line: 90, column: 3, scope: !2969)
!2971 = !DILocation(line: 0, scope: !2932)
!2972 = !DILocation(line: 97, column: 7, scope: !2967)
!2973 = !DILocation(line: 97, column: 61, scope: !2967)
!2974 = distinct !{!2974, !2975, !2976}
!2975 = !DILocation(line: 93, column: 2, scope: !2934)
!2976 = !DILocation(line: 137, column: 2, scope: !2934)
!2977 = !DILocation(line: 98, column: 15, scope: !2967)
!2978 = !DILocation(line: 98, column: 18, scope: !2967)
!2979 = !DILocation(line: 97, column: 7, scope: !2932)
!2980 = !DILocation(line: 100, column: 3, scope: !2932)
!2981 = !DILocation(line: 102, column: 10, scope: !2932)
!2982 = !DILocation(line: 104, column: 3, scope: !2932)
!2983 = !DILocation(line: 109, column: 4, scope: !2936)
!2984 = !DILocation(line: 110, column: 8, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2936, file: !460, line: 110, column: 8)
!2986 = !DILocation(line: 110, column: 46, scope: !2985)
!2987 = !DILocation(line: 110, column: 8, scope: !2936)
!2988 = !DILocation(line: 111, column: 5, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !460, line: 110, column: 58)
!2990 = !DILocation(line: 112, column: 5, scope: !2989)
!2991 = !DILocation(line: 115, column: 14, scope: !2936)
!2992 = !DILocation(line: 0, scope: !2936)
!2993 = !DILocation(line: 116, column: 14, scope: !2936)
!2994 = !DILocation(line: 117, column: 20, scope: !2936)
!2995 = !DILocation(line: 117, column: 12, scope: !2936)
!2996 = !DILocation(line: 117, column: 32, scope: !2936)
!2997 = !DILocation(line: 117, column: 11, scope: !2936)
!2998 = !DILocation(line: 118, column: 15, scope: !2936)
!2999 = !DILocation(line: 120, column: 4, scope: !2936)
!3000 = !DILocation(line: 124, column: 17, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2936, file: !460, line: 124, column: 8)
!3002 = !DILocation(line: 124, column: 15, scope: !3001)
!3003 = !DILocation(line: 124, column: 8, scope: !2936)
!3004 = !DILocation(line: 125, column: 5, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3001, file: !460, line: 124, column: 38)
!3006 = !DILocation(line: 126, column: 5, scope: !3005)
!3007 = !DILocation(line: 127, column: 5, scope: !3005)
!3008 = !DILocation(line: 119, column: 17, scope: !2936)
!3009 = !DILocation(line: 129, column: 4, scope: !2936)
!3010 = !DILocation(line: 130, column: 8, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2936, file: !460, line: 130, column: 8)
!3012 = !DILocation(line: 130, column: 55, scope: !3011)
!3013 = !DILocation(line: 0, scope: !2937)
!3014 = !DILocation(line: 133, column: 1, scope: !2932)
!3015 = !DILocation(line: 134, column: 3, scope: !2932)
!3016 = !DILocalVariable(name: "thread", arg: 1, scope: !3017, file: !460, line: 54, type: !553)
!3017 = distinct !DISubprogram(name: "connection_thread_disconnect", scope: !460, file: !460, line: 54, type: !3018, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !553}
!3020 = !{!3016}
!3021 = !DILocation(line: 0, scope: !3017, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 135, column: 3, scope: !2932)
!3023 = !DILocation(line: 55, column: 14, scope: !3024, inlinedAt: !3022)
!3024 = distinct !DILexicalBlock(scope: !3017, file: !460, line: 55, column: 6)
!3025 = !DILocation(line: 55, column: 17, scope: !3024, inlinedAt: !3022)
!3026 = !DILocation(line: 55, column: 6, scope: !3017, inlinedAt: !3022)
!3027 = !DILocation(line: 57, column: 14, scope: !3028, inlinedAt: !3022)
!3028 = distinct !DILexicalBlock(scope: !3017, file: !460, line: 57, column: 6)
!3029 = !DILocation(line: 57, column: 6, scope: !3028, inlinedAt: !3022)
!3030 = !DILocation(line: 57, column: 6, scope: !3017, inlinedAt: !3022)
!3031 = !DILocation(line: 58, column: 3, scope: !3032, inlinedAt: !3022)
!3032 = distinct !DILexicalBlock(scope: !3028, file: !460, line: 57, column: 27)
!3033 = !DILocation(line: 59, column: 23, scope: !3032, inlinedAt: !3022)
!3034 = !DILocation(line: 61, column: 19, scope: !3017, inlinedAt: !3022)
!3035 = !DILocation(line: 60, column: 2, scope: !3032, inlinedAt: !3022)
!3036 = !DILocation(line: 61, column: 2, scope: !3017, inlinedAt: !3022)
!3037 = !DILocation(line: 62, column: 13, scope: !3017, inlinedAt: !3022)
!3038 = !DILocation(line: 63, column: 2, scope: !3017, inlinedAt: !3022)
!3039 = !DILocation(line: 64, column: 1, scope: !3017, inlinedAt: !3022)
!3040 = !DILocation(line: 136, column: 3, scope: !2932)
!3041 = !DILocation(line: 137, column: 2, scope: !2933)
!3042 = !DISubprogram(name: "pthread_detach", scope: !1593, file: !1593, line: 269, type: !3043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!36, !91}
!3045 = !DISubprogram(name: "nn_connect", scope: !1063, file: !1063, line: 246, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3046 = !DISubprogram(name: "pthread_exit", scope: !1593, file: !1593, line: 211, type: !1069, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3047 = !DISubprogram(name: "ydynabin_new", scope: !597, file: !597, line: 56, type: !3048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!595, !40, !28, !82}
!3050 = distinct !DISubprogram(name: "connection_read_data", scope: !460, file: !460, line: 142, type: !3051, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!593, !553, !595, !28}
!3053 = !{!3054, !3055, !3056, !3057, !3061, !3063, !3064}
!3054 = !DILocalVariable(name: "thread", arg: 1, scope: !3050, file: !460, line: 142, type: !553)
!3055 = !DILocalVariable(name: "container", arg: 2, scope: !3050, file: !460, line: 142, type: !595)
!3056 = !DILocalVariable(name: "size", arg: 3, scope: !3050, file: !460, line: 142, type: !28)
!3057 = !DILocalVariable(name: "buff", scope: !3050, file: !460, line: 143, type: !3058)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 65568, elements: !3059)
!3059 = !{!3060}
!3060 = !DISubrange(count: 8196)
!3061 = !DILocalVariable(name: "bufsz", scope: !3050, file: !460, line: 144, type: !3062)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1151, line: 220, baseType: !1963)
!3063 = !DILocalVariable(name: "dynaerr", scope: !3050, file: !460, line: 145, type: !593)
!3064 = !DILocalVariable(name: "tv", scope: !3065, file: !460, line: 153, type: !3066)
!3065 = distinct !DILexicalBlock(scope: !3050, file: !460, line: 151, column: 32)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !3067, line: 8, size: 128, elements: !3068)
!3067 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!3068 = !{!3069, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3066, file: !3067, line: 14, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !582, line: 160, baseType: !884)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !3066, file: !3067, line: 15, baseType: !3072, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !582, line: 162, baseType: !884)
!3073 = !DILocation(line: 0, scope: !3050)
!3074 = !DILocation(line: 143, column: 2, scope: !3050)
!3075 = !DILocation(line: 143, column: 7, scope: !3050)
!3076 = !DILocation(line: 147, column: 14, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3050, file: !460, line: 147, column: 6)
!3078 = !DILocation(line: 147, column: 17, scope: !3077)
!3079 = !DILocation(line: 147, column: 6, scope: !3050)
!3080 = !DILocation(line: 149, column: 17, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3050, file: !460, line: 149, column: 6)
!3082 = !{!3083, !999, i64 8}
!3083 = !{!"ydynabin_s", !789, i64 0, !999, i64 8, !999, i64 16, !999, i64 24}
!3084 = !DILocation(line: 149, column: 21, scope: !3081)
!3085 = !DILocation(line: 149, column: 6, scope: !3050)
!3086 = !DILocation(line: 151, column: 2, scope: !3050)
!3087 = !DILocation(line: 153, column: 3, scope: !3065)
!3088 = !DILocation(line: 153, column: 18, scope: !3065)
!3089 = !DILocation(line: 154, column: 23, scope: !3065)
!3090 = !DILocation(line: 154, column: 31, scope: !3065)
!3091 = !DILocation(line: 154, column: 15, scope: !3065)
!3092 = !DILocation(line: 154, column: 13, scope: !3065)
!3093 = !{!3094, !999, i64 0}
!3094 = !{!"timeval", !999, i64 0, !999, i64 8}
!3095 = !DILocation(line: 155, column: 14, scope: !3065)
!3096 = !{!3094, !999, i64 8}
!3097 = !DILocation(line: 156, column: 26, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3065, file: !460, line: 156, column: 7)
!3099 = !DILocation(line: 156, column: 7, scope: !3098)
!3100 = !DILocation(line: 156, column: 79, scope: !3098)
!3101 = !DILocation(line: 156, column: 7, scope: !3065)
!3102 = !DILocation(line: 157, column: 4, scope: !3098)
!3103 = !DILocation(line: 159, column: 29, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3065, file: !460, line: 159, column: 7)
!3105 = !DILocation(line: 159, column: 16, scope: !3104)
!3106 = !DILocation(line: 159, column: 49, scope: !3104)
!3107 = !DILocation(line: 159, column: 7, scope: !3065)
!3108 = !DILocation(line: 160, column: 4, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !460, line: 159, column: 54)
!3110 = !DILocation(line: 161, column: 4, scope: !3109)
!3111 = !DILocation(line: 163, column: 13, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3065, file: !460, line: 163, column: 7)
!3113 = !DILocation(line: 163, column: 7, scope: !3065)
!3114 = !DILocation(line: 164, column: 4, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3112, file: !460, line: 163, column: 19)
!3116 = !DILocation(line: 165, column: 19, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3115, file: !460, line: 165, column: 8)
!3118 = !DILocation(line: 165, column: 23, scope: !3117)
!3119 = !DILocation(line: 0, scope: !3115)
!3120 = !DILocation(line: 176, column: 2, scope: !3050)
!3121 = !DILocation(line: 170, column: 13, scope: !3065)
!3122 = !DILocation(line: 171, column: 26, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3065, file: !460, line: 171, column: 7)
!3124 = !DILocation(line: 171, column: 7, scope: !3123)
!3125 = !DILocation(line: 171, column: 79, scope: !3123)
!3126 = !DILocation(line: 171, column: 7, scope: !3065)
!3127 = !DILocation(line: 172, column: 4, scope: !3123)
!3128 = !DILocation(line: 174, column: 18, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3065, file: !460, line: 174, column: 7)
!3130 = !DILocation(line: 174, column: 67, scope: !3129)
!3131 = !DILocation(line: 151, column: 20, scope: !3050)
!3132 = !DILocation(line: 151, column: 24, scope: !3050)
!3133 = !DILocation(line: 178, column: 1, scope: !3050)
!3134 = distinct !DISubprogram(name: "connection_send_response", scope: !460, file: !460, line: 181, type: !3135, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !3138)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!593, !553, !3137, !82, !82, !1066, !28}
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !536, line: 117, baseType: !542)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3152, !3163, !3164, !3165, !3166}
!3139 = !DILocalVariable(name: "thread", arg: 1, scope: !3134, file: !460, line: 181, type: !553)
!3140 = !DILocalVariable(name: "code", arg: 2, scope: !3134, file: !460, line: 181, type: !3137)
!3141 = !DILocalVariable(name: "serialized", arg: 3, scope: !3134, file: !460, line: 182, type: !82)
!3142 = !DILocalVariable(name: "compressed", arg: 4, scope: !3134, file: !460, line: 182, type: !82)
!3143 = !DILocalVariable(name: "data", arg: 5, scope: !3134, file: !460, line: 183, type: !1066)
!3144 = !DILocalVariable(name: "data_len", arg: 6, scope: !3134, file: !460, line: 183, type: !28)
!3145 = !DILocalVariable(name: "code_byte", scope: !3134, file: !460, line: 184, type: !578)
!3146 = !DILocalVariable(name: "iov", scope: !3134, file: !460, line: 185, type: !3147)
!3147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3148, size: 384, elements: !132)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1943, line: 26, size: 128, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !3148, file: !1943, line: 28, baseType: !40, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !3148, file: !1943, line: 29, baseType: !28, size: 64, offset: 64)
!3152 = !DILocalVariable(name: "mh", scope: !3134, file: !460, line: 186, type: !3153)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !658, line: 259, size: 448, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3159, !3160, !3161, !3162}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !3153, file: !658, line: 261, baseType: !40, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !3153, file: !658, line: 262, baseType: !1150, size: 32, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !3153, file: !658, line: 264, baseType: !3158, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !3153, file: !658, line: 265, baseType: !28, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !3153, file: !658, line: 267, baseType: !40, size: 64, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !3153, file: !658, line: 268, baseType: !28, size: 64, offset: 320)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !3153, file: !658, line: 273, baseType: !36, size: 32, offset: 384)
!3163 = !DILocalVariable(name: "expected", scope: !3134, file: !460, line: 187, type: !3062)
!3164 = !DILocalVariable(name: "rc", scope: !3134, file: !460, line: 187, type: !3062)
!3165 = !DILocalVariable(name: "data_nlen", scope: !3134, file: !460, line: 188, type: !583)
!3166 = !DILocalVariable(name: "tv", scope: !3134, file: !460, line: 189, type: !3066)
!3167 = !DILocation(line: 0, scope: !3134)
!3168 = !DILocation(line: 184, column: 2, scope: !3134)
!3169 = !DILocation(line: 185, column: 2, scope: !3134)
!3170 = !DILocation(line: 185, column: 15, scope: !3134)
!3171 = !DILocation(line: 186, column: 2, scope: !3134)
!3172 = !DILocation(line: 186, column: 16, scope: !3134)
!3173 = !DILocation(line: 188, column: 2, scope: !3134)
!3174 = !DILocation(line: 189, column: 2, scope: !3134)
!3175 = !DILocation(line: 189, column: 17, scope: !3134)
!3176 = !DILocation(line: 191, column: 2, scope: !3134)
!3177 = !DILocation(line: 192, column: 14, scope: !3134)
!3178 = !DILocation(line: 193, column: 5, scope: !3134)
!3179 = !DILocation(line: 193, column: 17, scope: !3134)
!3180 = !DILocation(line: 194, column: 5, scope: !3134)
!3181 = !DILocation(line: 194, column: 13, scope: !3134)
!3182 = !DILocation(line: 195, column: 5, scope: !3134)
!3183 = !DILocation(line: 195, column: 16, scope: !3134)
!3184 = !DILocation(line: 196, column: 5, scope: !3134)
!3185 = !DILocation(line: 200, column: 14, scope: !3134)
!3186 = !DILocation(line: 201, column: 6, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3134, file: !460, line: 201, column: 6)
!3188 = !DILocation(line: 201, column: 6, scope: !3134)
!3189 = !DILocation(line: 203, column: 6, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3134, file: !460, line: 203, column: 6)
!3191 = !DILocation(line: 203, column: 6, scope: !3134)
!3192 = !DILocation(line: 197, column: 20, scope: !3134)
!3193 = !DILocation(line: 205, column: 18, scope: !3134)
!3194 = !DILocation(line: 206, column: 9, scope: !3134)
!3195 = !DILocation(line: 206, column: 17, scope: !3134)
!3196 = !DILocation(line: 208, column: 11, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3134, file: !460, line: 208, column: 6)
!3198 = !DILocation(line: 208, column: 6, scope: !3134)
!3199 = !DILocation(line: 209, column: 15, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3197, file: !460, line: 208, column: 20)
!3201 = !DILocalVariable(name: "__bsx", arg: 1, scope: !3202, file: !1748, line: 49, type: !585)
!3202 = distinct !DISubprogram(name: "__bswap_32", scope: !1748, file: !1748, line: 49, type: !1749, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !3203)
!3203 = !{!3201}
!3204 = !DILocation(line: 0, scope: !3202, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 209, column: 15, scope: !3200)
!3206 = !DILocation(line: 54, column: 10, scope: !3202, inlinedAt: !3205)
!3207 = !DILocation(line: 209, column: 13, scope: !3200)
!3208 = !DILocation(line: 210, column: 3, scope: !3200)
!3209 = !DILocation(line: 210, column: 19, scope: !3200)
!3210 = !DILocation(line: 211, column: 10, scope: !3200)
!3211 = !DILocation(line: 211, column: 18, scope: !3200)
!3212 = !DILocation(line: 212, column: 3, scope: !3200)
!3213 = !DILocation(line: 212, column: 19, scope: !3200)
!3214 = !DILocation(line: 213, column: 10, scope: !3200)
!3215 = !DILocation(line: 213, column: 18, scope: !3200)
!3216 = !DILocation(line: 214, column: 17, scope: !3200)
!3217 = !DILocation(line: 215, column: 12, scope: !3200)
!3218 = !DILocation(line: 216, column: 2, scope: !3200)
!3219 = !DILocation(line: 218, column: 22, scope: !3134)
!3220 = !DILocation(line: 218, column: 30, scope: !3134)
!3221 = !DILocation(line: 218, column: 14, scope: !3134)
!3222 = !DILocation(line: 218, column: 12, scope: !3134)
!3223 = !DILocation(line: 219, column: 5, scope: !3134)
!3224 = !DILocation(line: 219, column: 13, scope: !3134)
!3225 = !DILocation(line: 220, column: 25, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3134, file: !460, line: 220, column: 6)
!3227 = !DILocation(line: 220, column: 6, scope: !3226)
!3228 = !DILocation(line: 220, column: 78, scope: !3226)
!3229 = !DILocation(line: 220, column: 6, scope: !3134)
!3230 = !DILocation(line: 221, column: 3, scope: !3226)
!3231 = !DILocation(line: 223, column: 23, scope: !3134)
!3232 = !DILocation(line: 223, column: 7, scope: !3134)
!3233 = !DILocation(line: 224, column: 9, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3134, file: !460, line: 224, column: 6)
!3235 = !DILocation(line: 224, column: 6, scope: !3134)
!3236 = !DILocation(line: 225, column: 3, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3234, file: !460, line: 224, column: 14)
!3238 = !DILocation(line: 226, column: 3, scope: !3237)
!3239 = !DILocation(line: 227, column: 16, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3234, file: !460, line: 227, column: 13)
!3241 = !DILocation(line: 227, column: 13, scope: !3234)
!3242 = !DILocation(line: 228, column: 3, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !460, line: 227, column: 28)
!3244 = !DILocation(line: 229, column: 3, scope: !3243)
!3245 = !DILocation(line: 230, column: 16, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3240, file: !460, line: 230, column: 13)
!3247 = !DILocation(line: 230, column: 13, scope: !3240)
!3248 = !DILocation(line: 231, column: 3, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3246, file: !460, line: 230, column: 28)
!3250 = !DILocation(line: 232, column: 3, scope: !3249)
!3251 = !DILocation(line: 235, column: 12, scope: !3134)
!3252 = !DILocation(line: 236, column: 25, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3134, file: !460, line: 236, column: 6)
!3254 = !DILocation(line: 236, column: 6, scope: !3253)
!3255 = !DILocation(line: 236, column: 78, scope: !3253)
!3256 = !DILocation(line: 236, column: 6, scope: !3134)
!3257 = !DILocation(line: 237, column: 3, scope: !3253)
!3258 = !DILocation(line: 239, column: 2, scope: !3134)
!3259 = !DILocation(line: 240, column: 2, scope: !3134)
!3260 = !DILocation(line: 241, column: 1, scope: !3134)
!3261 = !DISubprogram(name: "shutdown", scope: !530, file: !530, line: 324, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3262 = !DISubprogram(name: "ydynabin_delete", scope: !597, file: !597, line: 63, type: !3263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !595}
!3265 = !DISubprogram(name: "recv", scope: !530, file: !530, line: 145, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!3062, !36, !40, !28, !36}
!3268 = !DISubprogram(name: "ydynabin_expand", scope: !597, file: !597, line: 73, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !867)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!593, !595, !40, !28}
!3271 = !DILocation(line: 0, scope: !3017)
!3272 = !DILocation(line: 55, column: 14, scope: !3024)
!3273 = !DILocation(line: 55, column: 17, scope: !3024)
!3274 = !DILocation(line: 55, column: 6, scope: !3017)
!3275 = !DILocation(line: 57, column: 14, scope: !3028)
!3276 = !DILocation(line: 57, column: 6, scope: !3028)
!3277 = !DILocation(line: 57, column: 6, scope: !3017)
!3278 = !DILocation(line: 58, column: 3, scope: !3032)
!3279 = !DILocation(line: 59, column: 23, scope: !3032)
!3280 = !DILocation(line: 61, column: 19, scope: !3017)
!3281 = !DILocation(line: 60, column: 2, scope: !3032)
!3282 = !DILocation(line: 61, column: 2, scope: !3017)
!3283 = !DILocation(line: 62, column: 13, scope: !3017)
!3284 = !DILocation(line: 63, column: 2, scope: !3017)
!3285 = !DILocation(line: 64, column: 1, scope: !3017)
!3286 = distinct !DISubprogram(name: "connection_thread_push_socket", scope: !460, file: !460, line: 67, type: !3287, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !36, !36}
!3289 = !{!3290, !3291}
!3290 = !DILocalVariable(name: "threads_socket", arg: 1, scope: !3286, file: !460, line: 67, type: !36)
!3291 = !DILocalVariable(name: "fd", arg: 2, scope: !3286, file: !460, line: 67, type: !36)
!3292 = !DILocation(line: 0, scope: !3286)
!3293 = !DILocation(line: 69, column: 2, scope: !3286)
!3294 = !DILocation(line: 70, column: 1, scope: !3286)
!3295 = distinct !DISubprogram(name: "command_drop", scope: !606, file: !606, line: 12, type: !3296, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3327)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!593, !3298, !82, !82, !82, !3319}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !555, line: 30, baseType: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !555, line: 23, size: 320, elements: !3301)
!3301 = !{!3302, !3303, !3315, !3316, !3317, !3318}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3300, file: !555, line: 24, baseType: !91, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !3300, file: !555, line: 25, baseType: !3304, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !78, line: 49, baseType: !3306)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !78, line: 41, size: 384, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !3306, file: !78, line: 42, baseType: !82, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !3306, file: !78, line: 43, baseType: !84, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !3306, file: !78, line: 44, baseType: !36, size: 32, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !3306, file: !78, line: 45, baseType: !36, size: 32, offset: 160)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !3306, file: !78, line: 46, baseType: !91, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !3306, file: !78, line: 47, baseType: !94, size: 64, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3306, file: !78, line: 48, baseType: !27, size: 16, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3300, file: !555, line: 26, baseType: !36, size: 32, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !3300, file: !555, line: 27, baseType: !36, size: 32, offset: 160)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !3300, file: !555, line: 28, baseType: !38, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !3300, file: !555, line: 29, baseType: !575, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !597, line: 45, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !597, line: 37, size: 256, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3321, file: !597, line: 38, baseType: !40, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3321, file: !597, line: 39, baseType: !28, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3321, file: !597, line: 40, baseType: !28, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3321, file: !597, line: 41, baseType: !28, size: 64, offset: 192)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3348, !3349}
!3328 = !DILocalVariable(name: "thread", arg: 1, scope: !3295, file: !606, line: 12, type: !3298)
!3329 = !DILocalVariable(name: "sync", arg: 2, scope: !3295, file: !606, line: 12, type: !82)
!3330 = !DILocalVariable(name: "compress", arg: 3, scope: !3295, file: !606, line: 12, type: !82)
!3331 = !DILocalVariable(name: "serialized", arg: 4, scope: !3295, file: !606, line: 12, type: !82)
!3332 = !DILocalVariable(name: "buff", arg: 5, scope: !3295, file: !606, line: 12, type: !3319)
!3333 = !DILocalVariable(name: "msg", scope: !3295, file: !606, line: 13, type: !3334)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_msg_t", file: !631, line: 34, baseType: !3336)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer_msg_s", file: !631, line: 28, size: 448, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3346, !3347}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3336, file: !631, line: 29, baseType: !949, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !3336, file: !631, line: 30, baseType: !38, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3336, file: !631, line: 31, baseType: !3341, size: 128, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !953, line: 33, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !953, line: 27, size: 128, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3342, file: !953, line: 28, baseType: !40, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3342, file: !953, line: 29, baseType: !28, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3336, file: !631, line: 32, baseType: !3341, size: 128, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "create_only", scope: !3336, file: !631, line: 33, baseType: !82, size: 32, offset: 384)
!3348 = !DILocalVariable(name: "answer", scope: !3295, file: !606, line: 14, type: !39)
!3349 = !DILabel(scope: !3295, name: "error", file: !606, line: 48)
!3350 = !DILocation(line: 0, scope: !3295)
!3351 = !DILocation(line: 13, column: 2, scope: !3295)
!3352 = !DILocation(line: 13, column: 16, scope: !3295)
!3353 = !DILocation(line: 16, column: 2, scope: !3295)
!3354 = !DILocation(line: 18, column: 14, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3295, file: !606, line: 18, column: 6)
!3356 = !DILocation(line: 18, column: 21, scope: !3355)
!3357 = !DILocation(line: 18, column: 6, scope: !3295)
!3358 = !DILocation(line: 21, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3295, file: !606, line: 21, column: 6)
!3360 = !DILocation(line: 21, column: 6, scope: !3295)
!3361 = !DILocation(line: 22, column: 3, scope: !3359)
!3362 = !DILocation(line: 25, column: 13, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3295, file: !606, line: 25, column: 6)
!3364 = !DILocation(line: 25, column: 11, scope: !3363)
!3365 = !DILocation(line: 25, column: 44, scope: !3363)
!3366 = !DILocation(line: 25, column: 6, scope: !3295)
!3367 = !DILocation(line: 27, column: 12, scope: !3295)
!3368 = !DILocation(line: 28, column: 6, scope: !3295)
!3369 = !DILocation(line: 30, column: 25, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !606, line: 28, column: 13)
!3371 = distinct !DILexicalBlock(scope: !3295, file: !606, line: 28, column: 6)
!3372 = !DILocation(line: 30, column: 17, scope: !3370)
!3373 = !DILocation(line: 30, column: 34, scope: !3370)
!3374 = !DILocation(line: 30, column: 8, scope: !3370)
!3375 = !DILocation(line: 30, column: 15, scope: !3370)
!3376 = !DILocation(line: 31, column: 23, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3370, file: !606, line: 31, column: 7)
!3378 = !DILocation(line: 31, column: 7, scope: !3377)
!3379 = !DILocation(line: 31, column: 57, scope: !3377)
!3380 = !DILocation(line: 31, column: 7, scope: !3370)
!3381 = !DILocation(line: 32, column: 4, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3377, file: !606, line: 31, column: 62)
!3383 = !DILocation(line: 33, column: 4, scope: !3382)
!3384 = !DILocation(line: 38, column: 28, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3295, file: !606, line: 38, column: 6)
!3386 = !DILocation(line: 38, column: 36, scope: !3385)
!3387 = !DILocation(line: 38, column: 54, scope: !3385)
!3388 = !DILocation(line: 38, column: 75, scope: !3385)
!3389 = !DILocation(line: 38, column: 6, scope: !3385)
!3390 = !DILocation(line: 38, column: 83, scope: !3385)
!3391 = !DILocation(line: 38, column: 6, scope: !3295)
!3392 = !DILocation(line: 39, column: 3, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3385, file: !606, line: 38, column: 95)
!3394 = !DILocation(line: 41, column: 2, scope: !3393)
!3395 = !DILocation(line: 42, column: 3, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3385, file: !606, line: 41, column: 9)
!3397 = !DILocation(line: 45, column: 2, scope: !3295)
!3398 = !DILocation(line: 46, column: 10, scope: !3295)
!3399 = !DILocation(line: 46, column: 2, scope: !3295)
!3400 = !DILocation(line: 48, column: 1, scope: !3295)
!3401 = !DILocation(line: 49, column: 2, scope: !3295)
!3402 = !DILocation(line: 50, column: 2, scope: !3295)
!3403 = !DILocation(line: 51, column: 2, scope: !3295)
!3404 = !DILocation(line: 52, column: 2, scope: !3295)
!3405 = !DILocation(line: 53, column: 1, scope: !3295)
