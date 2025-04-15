; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "bpf"

%struct.anon.3 = type { ptr, ptr, ptr, ptr }
%struct.anon.6 = type { ptr, ptr, ptr }
%struct.bpf_config = type { i64, i64, i8, i8, i8, i8, i32 }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.parsing_context = type { ptr, ptr, %struct.hdr_cursor, i32, i32, i8 }
%struct.hdr_cursor = type { ptr }
%struct.__sk_buff = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, %struct.hdr_cursor, i64, i32, i32, %struct.hdr_cursor, i32 }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }
%struct.flow_event = type { i64, i64, %struct.network_tuple, i8, i8, i8, i8 }
%struct.network_tuple = type { %struct.flow_address, %struct.flow_address, i16, i8, i8 }
%struct.flow_address = type { %struct.in6_addr, i16, i16 }
%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct.rtt_event = type { i64, i64, %struct.network_tuple, i32, i64, i64, i64, i64, i64, i64, i8, [7 x i8] }
%struct.map_full_event = type { i64, i64, %struct.network_tuple, i8, [3 x i8] }
%struct.bpf_fib_lookup = type { i8, i8, i16, i16, i16, i32, %union.anon.19, %union.anon.4, %union.anon.4, i16, i16, [6 x i8], [6 x i8] }
%union.anon.19 = type { i32 }
%struct.flow_state = type { i64, i64, i64, i64, i64, i64, i64, i32, i8, i8, i16 }
%struct.packet_info = type { %struct.hdr_cursor, %struct.hdr_cursor, i64, i32, %struct.packet_id, %struct.packet_id, i8, i8, i8, i8 }
%struct.packet_id = type { %struct.network_tuple, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.18 }
%union.anon.18 = type { [1 x i32] }
%struct.icmphdr = type { i8, i8, i16, %union.anon.19 }
%struct.pping_config = type { %struct.bpf_config, %struct.bpf_tc_opts, %struct.bpf_tc_opts, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [16 x i8], i32, i8, i8 }
%struct.bpf_tc_opts = type { i64, i32, i32, i32, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.map_cleanup_args = type { i64, i32, i32 }
%struct.bpf_tc_hook = type { i64, i32, i32, i32 }

@llvm.compiler.used = appending global [7 x ptr] [ptr @_license, ptr @events, ptr @flow_state, ptr @packet_ts, ptr @pping_tc_egress, ptr @pping_tc_ingress, ptr @pping_xdp_ingress], section "llvm.metadata"
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !0
@packet_ts = dso_local global %struct.anon.3 zeroinitializer, section ".maps", align 8, !dbg !129
@flow_state = dso_local global %struct.anon.3 zeroinitializer, section ".maps", align 8, !dbg !166
@events = dso_local global %struct.anon.6 zeroinitializer, section ".maps", align 8, !dbg !190
@config = internal constant %struct.bpf_config zeroinitializer, align 8, !dbg !205
@last_warn_time = internal global [2 x i64] zeroinitializer, align 8, !dbg !231
@.str = private unnamed_addr constant [10 x i8] c"TCP, ICMP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ICMP\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ppviz\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"unkown format\00", align 1
@keep_running = internal global i32 1, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"pping_kern.o\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"pping_xdp_ingress\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"pping_tc_egress\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"packet_ts\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"flow_state\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"This program must be run as root.\0A\00", align 1
@stderr = external global ptr, align 8
@.str.14 = private unnamed_addr constant [38 x i8] c"Could not set rlimit to infinity: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Failed parsing arguments:  %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [97 x i8] c"Warning: ppviz format mainly intended for TCP traffic, but may now include ICMP traffic as well\0A\00", align 1
@print_event_func = internal global ptr null, align 8
@.str.17 = private unnamed_addr constant [46 x i8] c"Starting ePPing in %s mode tracking %s on %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"Failed loading and attaching BPF programs in %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Failed setting up map cleaning: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Failed to open perf buffer %s: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Error polling perf buffer: %s\0A\00", align 1
@json_ctx = internal global ptr null, align 8
@.str.22 = private unnamed_addr constant [55 x i8] c"Failed removing ingress program from interface %s: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"Failed removing egress program from interface %s: %s\0A\00", align 1
@get_libbpf_strerror.buf = internal global [200 x i8] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"hflTCi:r:R:t:c:F:I:\00", align 1
@long_options = internal constant [13 x %struct.option] [%struct.option { ptr @.str.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.27, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.28, i32 1, ptr null, i32 82 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.44, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 99 }, %struct.option { ptr @.str.45, i32 1, ptr null, i32 70 }, %struct.option { ptr @.str.46, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 84 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 67 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 108 }, %struct.option zeroinitializer], align 16
@optarg = external global ptr, align 8
@.str.25 = private unnamed_addr constant [25 x i8] c"interface name too long\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Could not get index of interface %s: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"rate-limit\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"rtt-rate\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"smoothed\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"rtt-type must be \22min\22 or \22smoothed\22\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"cleanup-interval\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"format must be \22standard\22, \22json\22 or \22ppviz\22\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"xdp\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"pping_tc_ingress\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"ingress-hook must be \22xdp\22 or \22tc\22\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"HELP:\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Unknown option %s\0A\00", align 1
@optind = external global i32, align 4
@.str.40 = private unnamed_addr constant [51 x i8] c"An interface (-i or --interface) must be provided\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"rtt-type\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ingress-hook\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"include-local\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"%s %s is not a valid number\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"%s must in range [%g, %g]\0A\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"\0ADOCUMENTATION:\0A%s\0A\00", align 1
@__doc__ = internal global ptr @.str.59, align 8
@.str.53 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c" Usage: %s (options-see-below)\0A\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c" Listing options:\0A\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c" --%-12s\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c" flag (internal value:%d)\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c" short-option: -%c\00", align 1
@.str.59 = private unnamed_addr constant [59 x i8] c"Passive Ping - monitor flow RTT based on header inspection\00", align 1
@stdout = external global ptr, align 8
@.str.60 = private unnamed_addr constant [35 x i8] c" %llu.%06llu ms %llu.%06llu ms %s \00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c" %s due to %s from %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"%s.%09llu\00", align 1
@convert_monotonic_to_realtime.offset = internal global i64 0, align 8
@convert_monotonic_to_realtime.offset_updated = internal global i64 0, align 8
@proto_to_str.buf = internal global [8 x i8] zeroinitializer, align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"ICMPv6\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"%s:%d+%s:%d\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"opening\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"closing\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"SYN-ACK\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"first observed packet\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"FIN\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"flow timeout\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"userspace-cleanup\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"src_ip\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"src_port\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"dest_ip\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"dest_port\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"rtt\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"min_rtt\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"sent_packets\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"sent_bytes\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"rec_packets\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"rec_bytes\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"match_on_egress\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"flow_event\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"triggered_by\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"%llu.%09llu %llu.%09llu %llu.%09llu \00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"Failed opening object file %s: %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"Failed pushing user-configration to %s: %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"Failed loading bpf programs in %s: %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [57 x i8] c"Failed attaching egress BPF program on interface %s: %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [58 x i8] c"Failed attaching ingress BPF program on interface %s: %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"Failed detaching tc program from %s: %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c".rodata\00", align 1
@.str.105 = private unnamed_addr constant [64 x i8] c"Hint: XDP already loaded on device use --force to swap/replace\0A\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"Hint: Native-XDP not supported\0A\00", align 1
@.str.107 = private unnamed_addr constant [31 x i8] c"Periodic map cleanup disabled\0A\00", align 1
@.str.108 = private unnamed_addr constant [45 x i8] c"Could not get file descriptor of map %s: %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [60 x i8] c"Failed starting thread to perform periodic map cleanup: %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [34 x i8] c"Warning: Unknown event type %llu\0A\00", align 1
@.str.111 = private unnamed_addr constant [46 x i8] c" Warning: Unable to create %s entry for flow \00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"flow\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"Lost %llu events on CPU %d\0A\00", align 1

; Function Attrs: nounwind
define dso_local i32 @pping_tc_egress(ptr noundef %0) #0 section "tc" !dbg !294 {
  %2 = alloca %struct.parsing_context, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !388, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %2, metadata !389, metadata !DIExpression()), !dbg !404
  %3 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 15, !dbg !405
  %4 = load i32, ptr %3, align 4, !dbg !405, !tbaa !406
  %5 = zext i32 %4 to i64, !dbg !412
  %6 = inttoptr i64 %5 to ptr, !dbg !413
  store ptr %6, ptr %2, align 8, !dbg !414, !tbaa !415
  %7 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 1, !dbg !414
  %8 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 16, !dbg !420
  %9 = load i32, ptr %8, align 8, !dbg !420, !tbaa !421
  %10 = zext i32 %9 to i64, !dbg !422
  %11 = inttoptr i64 %10 to ptr, !dbg !423
  store ptr %11, ptr %7, align 8, !dbg !414, !tbaa !424
  %12 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 2, !dbg !414
  store ptr %6, ptr %12, align 8, !dbg !425, !tbaa !426
  %13 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 3, !dbg !414
  %14 = load i32, ptr %0, align 8, !dbg !427, !tbaa !428
  store i32 %14, ptr %13, align 8, !dbg !414, !tbaa !429
  %15 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 4, !dbg !414
  store i32 0, ptr %15, align 4, !dbg !414, !tbaa !430
  %16 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 5, !dbg !414
  store i8 1, ptr %16, align 8, !dbg !414, !tbaa !431
  call fastcc void @pping(ptr noundef nonnull %0, ptr noundef nonnull %2), !dbg !432
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14, !dbg !433
  ret i32 -1, !dbg !434
}

; Function Attrs: nounwind
define dso_local i32 @pping_tc_ingress(ptr noundef %0) #0 section "tc" !dbg !435 {
  %2 = alloca %struct.parsing_context, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !437, metadata !DIExpression()), !dbg !439
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14, !dbg !440
  call void @llvm.dbg.declare(metadata ptr %2, metadata !438, metadata !DIExpression()), !dbg !441
  %3 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 15, !dbg !442
  %4 = load i32, ptr %3, align 4, !dbg !442, !tbaa !406
  %5 = zext i32 %4 to i64, !dbg !443
  %6 = inttoptr i64 %5 to ptr, !dbg !444
  store ptr %6, ptr %2, align 8, !dbg !445, !tbaa !415
  %7 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 1, !dbg !445
  %8 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 16, !dbg !446
  %9 = load i32, ptr %8, align 8, !dbg !446, !tbaa !421
  %10 = zext i32 %9 to i64, !dbg !447
  %11 = inttoptr i64 %10 to ptr, !dbg !448
  store ptr %11, ptr %7, align 8, !dbg !445, !tbaa !424
  %12 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 2, !dbg !445
  store ptr %6, ptr %12, align 8, !dbg !449, !tbaa !426
  %13 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 3, !dbg !445
  %14 = load i32, ptr %0, align 8, !dbg !450, !tbaa !428
  store i32 %14, ptr %13, align 8, !dbg !445, !tbaa !429
  %15 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 4, !dbg !445
  %16 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 9, !dbg !451
  %17 = load i32, ptr %16, align 4, !dbg !451, !tbaa !452
  store i32 %17, ptr %15, align 4, !dbg !445, !tbaa !430
  %18 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 5, !dbg !445
  store i8 0, ptr %18, align 8, !dbg !445, !tbaa !431
  call fastcc void @pping(ptr noundef nonnull %0, ptr noundef nonnull %2), !dbg !453
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14, !dbg !454
  ret i32 -1, !dbg !455
}

; Function Attrs: nounwind
define dso_local i32 @pping_xdp_ingress(ptr noundef %0) #0 section "xdp" !dbg !456 {
  %2 = alloca %struct.parsing_context, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !469, metadata !DIExpression()), !dbg !471
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14, !dbg !472
  call void @llvm.dbg.declare(metadata ptr %2, metadata !470, metadata !DIExpression()), !dbg !473
  %3 = load i32, ptr %0, align 4, !dbg !474, !tbaa !475
  %4 = zext i32 %3 to i64, !dbg !477
  %5 = inttoptr i64 %4 to ptr, !dbg !478
  store ptr %5, ptr %2, align 8, !dbg !479, !tbaa !415
  %6 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 1, !dbg !479
  %7 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 1, !dbg !480
  %8 = load i32, ptr %7, align 4, !dbg !480, !tbaa !481
  %9 = zext i32 %8 to i64, !dbg !482
  %10 = inttoptr i64 %9 to ptr, !dbg !483
  store ptr %10, ptr %6, align 8, !dbg !479, !tbaa !424
  %11 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 2, !dbg !479
  store ptr %5, ptr %11, align 8, !dbg !484, !tbaa !426
  %12 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 3, !dbg !479
  %13 = sub i32 %8, %3, !dbg !485
  store i32 %13, ptr %12, align 8, !dbg !479, !tbaa !429
  %14 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 4, !dbg !479
  %15 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 3, !dbg !486
  %16 = load i32, ptr %15, align 4, !dbg !486, !tbaa !487
  store i32 %16, ptr %14, align 4, !dbg !479, !tbaa !430
  %17 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 5, !dbg !479
  store i8 0, ptr %17, align 8, !dbg !479, !tbaa !431
  call fastcc void @pping(ptr noundef nonnull %0, ptr noundef nonnull %2), !dbg !488
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14, !dbg !489
  ret i32 2, !dbg !490
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define internal fastcc void @pping(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !dbg !491 {
  %3 = alloca %struct.flow_event, align 8
  %4 = alloca %struct.flow_event, align 8
  %5 = alloca %struct.rtt_event, align 8
  %6 = alloca %struct.flow_event, align 8
  %7 = alloca %struct.map_full_event, align 8
  %8 = alloca %struct.bpf_fib_lookup, align 4
  %9 = alloca %struct.map_full_event, align 8
  %10 = alloca %struct.flow_state, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.packet_info, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !496, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata ptr %1, metadata !497, metadata !DIExpression()), !dbg !658
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #14, !dbg !659
  call void @llvm.dbg.declare(metadata ptr %12, metadata !498, metadata !DIExpression()), !dbg !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i64 128, i1 false), !dbg !660
  call void @llvm.dbg.value(metadata ptr %1, metadata !661, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata ptr %12, metadata !667, metadata !DIExpression()), !dbg !679
  %13 = tail call i64 inttoptr (i64 5 to ptr)() #14, !dbg !682
  %14 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 2, !dbg !683
  store i64 %13, ptr %14, align 8, !dbg !684, !tbaa !685
  %15 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 2, !dbg !692
  %16 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 1, !dbg !693
  %17 = load ptr, ptr %16, align 8, !dbg !693, !tbaa !424
  call void @llvm.dbg.value(metadata ptr %15, metadata !694, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata ptr %17, metadata !701, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata ptr undef, metadata !702, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata ptr %15, metadata !705, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata ptr %17, metadata !715, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata ptr undef, metadata !716, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata ptr null, metadata !717, metadata !DIExpression()), !dbg !728
  %18 = load ptr, ptr %15, align 8, !dbg !730, !tbaa !426
  call void @llvm.dbg.value(metadata ptr %18, metadata !718, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 14, metadata !719, metadata !DIExpression()), !dbg !728
  %19 = getelementptr i8, ptr %18, i64 14, !dbg !731
  %20 = icmp ugt ptr %19, %17, !dbg !733
  br i1 %20, label %886, label %21, !dbg !734

21:                                               ; preds = %2
  call void @llvm.dbg.value(metadata ptr %19, metadata !720, metadata !DIExpression()), !dbg !728
  %22 = getelementptr inbounds %struct.ethhdr, ptr %18, i64 0, i32 2, !dbg !735
  call void @llvm.dbg.value(metadata i16 poison, metadata !726, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 0, metadata !727, metadata !DIExpression()), !dbg !728
  %23 = load i16, ptr %22, align 1, !dbg !728, !tbaa !736
  call void @llvm.dbg.value(metadata i16 %23, metadata !726, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i16 %23, metadata !737, metadata !DIExpression()), !dbg !742
  %24 = icmp eq i16 %23, 129, !dbg !748
  %25 = icmp eq i16 %23, -22392, !dbg !749
  %26 = tail call i1 @llvm.bpf.passthrough.i1.i1(i32 0, i1 %24)
  %27 = or i1 %25, %26, !dbg !749
  %28 = getelementptr i8, ptr %18, i64 18
  %29 = icmp ule ptr %28, %17
  %30 = select i1 %27, i1 %29, i1 false, !dbg !750
  br i1 %30, label %31, label %44, !dbg !750

31:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i16 poison, metadata !726, metadata !DIExpression()), !dbg !728
  %32 = getelementptr i8, ptr %18, i64 16, !dbg !751
  call void @llvm.dbg.value(metadata ptr %28, metadata !720, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 1, metadata !727, metadata !DIExpression()), !dbg !728
  %33 = load i16, ptr %32, align 1, !dbg !728, !tbaa !736
  call void @llvm.dbg.value(metadata i16 %33, metadata !726, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i16 %33, metadata !737, metadata !DIExpression()), !dbg !742
  %34 = icmp eq i16 %33, 129, !dbg !748
  %35 = icmp eq i16 %33, -22392, !dbg !749
  %36 = tail call i1 @llvm.bpf.passthrough.i1.i1(i32 0, i1 %34)
  %37 = or i1 %35, %36, !dbg !749
  %38 = getelementptr i8, ptr %18, i64 22
  %39 = icmp ule ptr %38, %17
  %40 = select i1 %37, i1 %39, i1 false, !dbg !750
  br i1 %40, label %41, label %44, !dbg !750

41:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i16 poison, metadata !726, metadata !DIExpression()), !dbg !728
  %42 = getelementptr i8, ptr %18, i64 20, !dbg !751
  call void @llvm.dbg.value(metadata ptr %38, metadata !720, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 2, metadata !727, metadata !DIExpression()), !dbg !728
  %43 = load i16, ptr %42, align 1, !dbg !728, !tbaa !736
  call void @llvm.dbg.value(metadata i16 %43, metadata !726, metadata !DIExpression()), !dbg !728
  br label %44

44:                                               ; preds = %41, %31, %21
  %45 = phi ptr [ %19, %21 ], [ %28, %31 ], [ %38, %41 ], !dbg !728
  %46 = phi i16 [ %23, %21 ], [ %33, %31 ], [ %43, %41 ], !dbg !728
  store ptr %45, ptr %15, align 8, !dbg !752, !tbaa !426
  call void @llvm.dbg.value(metadata i16 %46, metadata !668, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !679
  switch i16 %46, label %886 [
    i16 8, label %47
    i16 -8826, label %66
  ], !dbg !753

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 3, !dbg !754
  store i8 2, ptr %48, align 2, !dbg !757, !tbaa !758
  call void @llvm.dbg.value(metadata ptr %15, metadata !759, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata ptr %17, metadata !765, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata ptr %12, metadata !766, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata ptr %45, metadata !767, metadata !DIExpression()), !dbg !769
  %49 = getelementptr inbounds %struct.iphdr, ptr %45, i64 1, !dbg !771
  %50 = icmp ugt ptr %49, %17, !dbg !773
  br i1 %50, label %121, label %51, !dbg !774

51:                                               ; preds = %47
  %52 = load i8, ptr %45, align 4, !dbg !775
  %53 = and i8 %52, -16, !dbg !777
  %54 = icmp eq i8 %53, 64, !dbg !777
  br i1 %54, label %55, label %121, !dbg !778

55:                                               ; preds = %51
  %56 = shl i8 %52, 2, !dbg !779
  %57 = and i8 %56, 60, !dbg !779
  call void @llvm.dbg.value(metadata i8 %57, metadata !768, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !769
  %58 = icmp ult i8 %57, 20, !dbg !780
  br i1 %58, label %121, label %59, !dbg !782

59:                                               ; preds = %55
  %60 = zext i8 %57 to i64
  call void @llvm.dbg.value(metadata i64 %60, metadata !768, metadata !DIExpression()), !dbg !769
  %61 = getelementptr i8, ptr %45, i64 %60, !dbg !783
  %62 = icmp ugt ptr %61, %17, !dbg !785
  br i1 %62, label %121, label %63, !dbg !786

63:                                               ; preds = %59
  store ptr %61, ptr %15, align 8, !dbg !787, !tbaa !426
  store ptr %45, ptr %12, align 8, !dbg !788, !tbaa !789
  %64 = getelementptr inbounds %struct.iphdr, ptr %45, i64 0, i32 6, !dbg !790
  %65 = load i8, ptr %64, align 1, !dbg !790, !tbaa !791
  br label %125, !dbg !793

66:                                               ; preds = %44
  %67 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 3, !dbg !794
  store i8 10, ptr %67, align 2, !dbg !797, !tbaa !758
  call void @llvm.dbg.value(metadata ptr %15, metadata !798, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %17, metadata !804, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %12, metadata !805, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %45, metadata !806, metadata !DIExpression()), !dbg !807
  %68 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 1, !dbg !809
  %69 = icmp ugt ptr %68, %17, !dbg !811
  br i1 %69, label %121, label %70, !dbg !812

70:                                               ; preds = %66
  %71 = load i8, ptr %45, align 4, !dbg !813
  %72 = and i8 %71, -16, !dbg !815
  %73 = icmp eq i8 %72, 96, !dbg !815
  br i1 %73, label %74, label %121, !dbg !816

74:                                               ; preds = %70
  store ptr %68, ptr %15, align 8, !dbg !817, !tbaa !426
  store ptr %45, ptr %12, align 8, !dbg !818, !tbaa !789
  call void @llvm.dbg.value(metadata ptr %15, metadata !819, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr %17, metadata !824, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 poison, metadata !825, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i32 0, metadata !826, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr %68, metadata !828, metadata !DIExpression()), !dbg !839
  %75 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 1, i32 1, i64 1, !dbg !840
  %76 = icmp ugt ptr %75, %17, !dbg !842
  br i1 %76, label %121, label %77, !dbg !843

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 0, i32 3, !dbg !844
  %79 = load i8, ptr %78, align 2, !dbg !844, !tbaa !845
  call void @llvm.dbg.value(metadata i8 %79, metadata !825, metadata !DIExpression()), !dbg !836
  switch i8 %79, label %125 [
    i8 0, label %81
    i8 60, label %81
    i8 43, label %81
    i8 -121, label %81
    i8 51, label %80
    i8 44, label %88
  ], !dbg !847

80:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i8 poison, metadata !825, metadata !DIExpression()), !dbg !836
  br label %81, !dbg !848

81:                                               ; preds = %80, %77, %77, %77, %77
  %82 = phi i64 [ 2, %80 ], [ 3, %77 ], [ 3, %77 ], [ 3, %77 ], [ 3, %77 ]
  %83 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 1, i32 1, !dbg !850
  %84 = load i8, ptr %83, align 1, !dbg !850, !tbaa !851
  %85 = zext i8 %84 to i64, !dbg !850
  %86 = shl nuw nsw i64 %85, %82, !dbg !850
  %87 = add nuw nsw i64 %86, 8, !dbg !850
  br label %88, !dbg !850

88:                                               ; preds = %81, %77
  %89 = phi i64 [ 8, %77 ], [ %87, %81 ]
  %90 = getelementptr inbounds i8, ptr %68, i64 %89, !dbg !850
  store ptr %90, ptr %15, align 8, !dbg !850, !tbaa !426
  call void @llvm.dbg.value(metadata i32 1, metadata !826, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 poison, metadata !825, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr %90, metadata !828, metadata !DIExpression()), !dbg !839
  %91 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %90, i64 1, !dbg !840
  %92 = icmp ugt ptr %91, %17, !dbg !842
  br i1 %92, label %121, label %93, !dbg !843

93:                                               ; preds = %88
  %94 = load i8, ptr %68, align 1, !dbg !850, !tbaa !853
  call void @llvm.dbg.value(metadata i8 %94, metadata !825, metadata !DIExpression()), !dbg !836
  switch i8 %94, label %125 [
    i8 0, label %95
    i8 60, label %95
    i8 43, label %95
    i8 -121, label %95
    i8 51, label %96
    i8 44, label %103
  ], !dbg !847

95:                                               ; preds = %93, %93, %93, %93
  call void @llvm.dbg.value(metadata i8 poison, metadata !825, metadata !DIExpression()), !dbg !836
  br label %96, !dbg !854

96:                                               ; preds = %95, %93
  %97 = phi i64 [ 3, %95 ], [ 2, %93 ]
  %98 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %90, i64 0, i32 1, !dbg !850
  %99 = load i8, ptr %98, align 1, !dbg !850, !tbaa !851
  %100 = zext i8 %99 to i64, !dbg !850
  %101 = shl nuw nsw i64 %100, %97, !dbg !850
  %102 = add nuw nsw i64 %101, 8, !dbg !850
  br label %103, !dbg !850

103:                                              ; preds = %96, %93
  %104 = phi i64 [ 8, %93 ], [ %102, %96 ]
  %105 = getelementptr inbounds i8, ptr %90, i64 %104, !dbg !850
  store ptr %105, ptr %15, align 8, !dbg !850, !tbaa !426
  call void @llvm.dbg.value(metadata i32 2, metadata !826, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i8 poison, metadata !825, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr %105, metadata !828, metadata !DIExpression()), !dbg !839
  %106 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %105, i64 1, !dbg !840
  %107 = icmp ugt ptr %106, %17, !dbg !842
  br i1 %107, label %121, label %108, !dbg !843

108:                                              ; preds = %103
  %109 = load i8, ptr %90, align 1, !dbg !850, !tbaa !853
  call void @llvm.dbg.value(metadata i8 %109, metadata !825, metadata !DIExpression()), !dbg !836
  switch i8 %109, label %125 [
    i8 0, label %110
    i8 60, label %110
    i8 43, label %110
    i8 -121, label %110
    i8 51, label %111
    i8 44, label %118
  ], !dbg !847

110:                                              ; preds = %108, %108, %108, %108
  call void @llvm.dbg.value(metadata i8 poison, metadata !825, metadata !DIExpression()), !dbg !836
  br label %111, !dbg !854

111:                                              ; preds = %110, %108
  %112 = phi i64 [ 3, %110 ], [ 2, %108 ]
  %113 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %105, i64 0, i32 1, !dbg !850
  %114 = load i8, ptr %113, align 1, !dbg !850, !tbaa !851
  %115 = zext i8 %114 to i64, !dbg !850
  %116 = shl nuw nsw i64 %115, %112, !dbg !850
  %117 = add nuw nsw i64 %116, 8, !dbg !850
  br label %118, !dbg !850

118:                                              ; preds = %111, %108
  %119 = phi i64 [ 8, %108 ], [ %117, %111 ]
  %120 = getelementptr inbounds i8, ptr %105, i64 %119, !dbg !850
  store ptr %120, ptr %15, align 8, !dbg !850, !tbaa !426
  br label %121, !dbg !855

121:                                              ; preds = %118, %103, %88, %74, %70, %66, %59, %55, %51, %47
  %122 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 3), align 1, !dbg !855, !tbaa !857, !range !859, !noundef !860
  %123 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 4), align 2, !dbg !861, !tbaa !863, !range !859, !noundef !860
  %124 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 4), align 2, !dbg !864, !tbaa !863, !range !859, !noundef !860
  br label %886, !dbg !866

125:                                              ; preds = %108, %93, %77, %63
  %126 = phi ptr [ %61, %63 ], [ %68, %77 ], [ %90, %93 ], [ %105, %108 ]
  %127 = phi i8 [ %65, %63 ], [ %79, %77 ], [ %94, %93 ], [ %109, %108 ]
  %128 = phi i1 [ true, %63 ], [ false, %77 ], [ false, %93 ], [ false, %108 ]
  %129 = phi i8 [ 2, %63 ], [ 10, %77 ], [ 10, %93 ], [ 10, %108 ]
  %130 = zext i8 %127 to i16, !dbg !867
  %131 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 2, !dbg !867
  store i16 %130, ptr %131, align 4, !dbg !867, !tbaa !868
  %132 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 3), align 1, !dbg !855, !tbaa !857, !range !859, !noundef !860
  %133 = icmp ne i8 %132, 0, !dbg !855
  %134 = icmp eq i8 %127, 6
  %135 = select i1 %133, i1 %134, i1 false, !dbg !869
  br i1 %135, label %136, label %478, !dbg !869

136:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr %1, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata ptr %12, metadata !873, metadata !DIExpression()), !dbg !874
  %137 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %15, metadata !878, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr %17, metadata !884, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr %137, metadata !885, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr %126, metadata !887, metadata !DIExpression()), !dbg !888
  %138 = getelementptr inbounds %struct.tcphdr, ptr %126, i64 1, !dbg !890
  %139 = icmp ugt ptr %138, %17, !dbg !892
  br i1 %139, label %886, label %140, !dbg !893

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.tcphdr, ptr %126, i64 0, i32 4, !dbg !894
  %142 = load i16, ptr %141, align 4, !dbg !894
  %143 = lshr i16 %142, 2, !dbg !895
  %144 = and i16 %143, 60, !dbg !895
  call void @llvm.dbg.value(metadata i16 %144, metadata !886, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !888
  %145 = icmp ult i16 %144, 20, !dbg !896
  br i1 %145, label %886, label %146, !dbg !898

146:                                              ; preds = %140
  %147 = zext i16 %144 to i64
  %148 = getelementptr i8, ptr %126, i64 %147, !dbg !899
  %149 = icmp ugt ptr %148, %17, !dbg !901
  br i1 %149, label %886, label %150, !dbg !902

150:                                              ; preds = %146
  store ptr %148, ptr %15, align 8, !dbg !903, !tbaa !426
  store ptr %126, ptr %137, align 8, !dbg !904, !tbaa !789
  %151 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !905
  %152 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 1, !dbg !907
  call void @llvm.dbg.value(metadata ptr %126, metadata !908, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %17, metadata !913, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %151, metadata !914, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %152, metadata !915, metadata !DIExpression()), !dbg !923
  %153 = load i16, ptr %141, align 4, !dbg !925
  %154 = lshr i16 %153, 2, !dbg !926
  %155 = and i16 %154, 60, !dbg !926
  %156 = zext i16 %155 to i64
  call void @llvm.dbg.value(metadata i64 %156, metadata !916, metadata !DIExpression()), !dbg !923
  %157 = getelementptr i8, ptr %126, i64 %156, !dbg !927
  call void @llvm.dbg.value(metadata ptr %157, metadata !917, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %138, metadata !918, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11), !dbg !928
  call void @llvm.dbg.declare(metadata ptr %11, metadata !921, metadata !DIExpression()), !dbg !929
  %158 = icmp ult i16 %155, 21
  br i1 %158, label %424, label %159, !dbg !930

159:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i8 0, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %138, metadata !918, metadata !DIExpression()), !dbg !923
  %160 = getelementptr inbounds i8, ptr %126, i64 21, !dbg !932
  %161 = icmp ugt ptr %160, %157, !dbg !937
  %162 = icmp ugt ptr %160, %17
  %163 = or i1 %162, %161, !dbg !938
  br i1 %163, label %424, label %164, !dbg !938

164:                                              ; preds = %159
  %165 = load i8, ptr %138, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %165, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %165, label %166 [
    i8 0, label %424
    i8 1, label %191
  ], !dbg !941

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.tcphdr, ptr %126, i64 1, i32 1, !dbg !942
  %168 = icmp ugt ptr %167, %157, !dbg !944
  %169 = icmp ugt ptr %167, %17
  %170 = or i1 %169, %168, !dbg !945
  br i1 %170, label %424, label %171, !dbg !945

171:                                              ; preds = %166
  %172 = load i8, ptr %160, align 1, !dbg !946, !tbaa !940
  store volatile i8 %172, ptr %11, align 1, !dbg !947, !tbaa !940
  %173 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %174 = icmp ult i8 %173, 2, !dbg !950
  br i1 %174, label %424, label %175, !dbg !951

175:                                              ; preds = %171
  %176 = icmp eq i8 %165, 8, !dbg !952
  br i1 %176, label %177, label %187, !dbg !954

177:                                              ; preds = %175
  %178 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %179 = icmp eq i8 %178, 10, !dbg !956
  br i1 %179, label %180, label %187, !dbg !957

180:                                              ; preds = %419, %392, %366, %340, %314, %288, %262, %236, %210, %177
  %181 = phi ptr [ %138, %177 ], [ %192, %210 ], [ %218, %236 ], [ %244, %262 ], [ %270, %288 ], [ %296, %314 ], [ %322, %340 ], [ %348, %366 ], [ %374, %392 ], [ %400, %419 ]
  %182 = phi ptr [ %167, %177 ], [ %200, %210 ], [ %226, %236 ], [ %252, %262 ], [ %278, %288 ], [ %304, %314 ], [ %330, %340 ], [ %356, %366 ], [ %382, %392 ], [ %409, %419 ], !dbg !942
  %183 = getelementptr inbounds i8, ptr %181, i64 10, !dbg !958
  %184 = icmp ugt ptr %183, %157, !dbg !961
  %185 = icmp ugt ptr %183, %17
  %186 = or i1 %184, %185, !dbg !962
  br i1 %186, label %424, label %425, !dbg !962

187:                                              ; preds = %177, %175
  %188 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %189 = zext i8 %188 to i64
  %190 = getelementptr inbounds i8, ptr %138, i64 %189, !dbg !964
  call void @llvm.dbg.value(metadata ptr %190, metadata !918, metadata !DIExpression()), !dbg !923
  br label %191, !dbg !965

191:                                              ; preds = %187, %164
  %192 = phi ptr [ %190, %187 ], [ %160, %164 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 1, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %192, metadata !918, metadata !DIExpression()), !dbg !923
  %193 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !932
  %194 = icmp ugt ptr %193, %157, !dbg !937
  %195 = icmp ugt ptr %193, %17
  %196 = or i1 %194, %195, !dbg !938
  br i1 %196, label %424, label %197, !dbg !938

197:                                              ; preds = %191
  %198 = load i8, ptr %192, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %198, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %198, label %199 [
    i8 0, label %424
    i8 1, label %217
  ], !dbg !941

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, ptr %192, i64 2, !dbg !942
  %201 = icmp ugt ptr %200, %157, !dbg !944
  %202 = icmp ugt ptr %200, %17
  %203 = or i1 %201, %202, !dbg !945
  br i1 %203, label %424, label %204, !dbg !945

204:                                              ; preds = %199
  %205 = load i8, ptr %193, align 1, !dbg !946, !tbaa !940
  store volatile i8 %205, ptr %11, align 1, !dbg !947, !tbaa !940
  %206 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %207 = icmp ult i8 %206, 2, !dbg !950
  br i1 %207, label %424, label %208, !dbg !951

208:                                              ; preds = %204
  %209 = icmp eq i8 %198, 8, !dbg !952
  br i1 %209, label %210, label %213, !dbg !954

210:                                              ; preds = %208
  %211 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %212 = icmp eq i8 %211, 10, !dbg !956
  br i1 %212, label %180, label %213, !dbg !957

213:                                              ; preds = %210, %208
  %214 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %215 = zext i8 %214 to i64
  %216 = getelementptr inbounds i8, ptr %192, i64 %215, !dbg !964
  call void @llvm.dbg.value(metadata ptr %216, metadata !918, metadata !DIExpression()), !dbg !923
  br label %217, !dbg !965

217:                                              ; preds = %213, %197
  %218 = phi ptr [ %216, %213 ], [ %193, %197 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 2, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %218, metadata !918, metadata !DIExpression()), !dbg !923
  %219 = getelementptr inbounds i8, ptr %218, i64 1, !dbg !932
  %220 = icmp ugt ptr %219, %157, !dbg !937
  %221 = icmp ugt ptr %219, %17
  %222 = or i1 %220, %221, !dbg !938
  br i1 %222, label %424, label %223, !dbg !938

223:                                              ; preds = %217
  %224 = load i8, ptr %218, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %224, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %224, label %225 [
    i8 0, label %424
    i8 1, label %243
  ], !dbg !941

225:                                              ; preds = %223
  %226 = getelementptr inbounds i8, ptr %218, i64 2, !dbg !942
  %227 = icmp ugt ptr %226, %157, !dbg !944
  %228 = icmp ugt ptr %226, %17
  %229 = or i1 %227, %228, !dbg !945
  br i1 %229, label %424, label %230, !dbg !945

230:                                              ; preds = %225
  %231 = load i8, ptr %219, align 1, !dbg !946, !tbaa !940
  store volatile i8 %231, ptr %11, align 1, !dbg !947, !tbaa !940
  %232 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %233 = icmp ult i8 %232, 2, !dbg !950
  br i1 %233, label %424, label %234, !dbg !951

234:                                              ; preds = %230
  %235 = icmp eq i8 %224, 8, !dbg !952
  br i1 %235, label %236, label %239, !dbg !954

236:                                              ; preds = %234
  %237 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %238 = icmp eq i8 %237, 10, !dbg !956
  br i1 %238, label %180, label %239, !dbg !957

239:                                              ; preds = %236, %234
  %240 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %241 = zext i8 %240 to i64
  %242 = getelementptr inbounds i8, ptr %218, i64 %241, !dbg !964
  call void @llvm.dbg.value(metadata ptr %242, metadata !918, metadata !DIExpression()), !dbg !923
  br label %243, !dbg !965

243:                                              ; preds = %239, %223
  %244 = phi ptr [ %242, %239 ], [ %219, %223 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 3, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %244, metadata !918, metadata !DIExpression()), !dbg !923
  %245 = getelementptr inbounds i8, ptr %244, i64 1, !dbg !932
  %246 = icmp ugt ptr %245, %157, !dbg !937
  %247 = icmp ugt ptr %245, %17
  %248 = or i1 %246, %247, !dbg !938
  br i1 %248, label %424, label %249, !dbg !938

249:                                              ; preds = %243
  %250 = load i8, ptr %244, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %250, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %250, label %251 [
    i8 0, label %424
    i8 1, label %269
  ], !dbg !941

251:                                              ; preds = %249
  %252 = getelementptr inbounds i8, ptr %244, i64 2, !dbg !942
  %253 = icmp ugt ptr %252, %157, !dbg !944
  %254 = icmp ugt ptr %252, %17
  %255 = or i1 %253, %254, !dbg !945
  br i1 %255, label %424, label %256, !dbg !945

256:                                              ; preds = %251
  %257 = load i8, ptr %245, align 1, !dbg !946, !tbaa !940
  store volatile i8 %257, ptr %11, align 1, !dbg !947, !tbaa !940
  %258 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %259 = icmp ult i8 %258, 2, !dbg !950
  br i1 %259, label %424, label %260, !dbg !951

260:                                              ; preds = %256
  %261 = icmp eq i8 %250, 8, !dbg !952
  br i1 %261, label %262, label %265, !dbg !954

262:                                              ; preds = %260
  %263 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %264 = icmp eq i8 %263, 10, !dbg !956
  br i1 %264, label %180, label %265, !dbg !957

265:                                              ; preds = %262, %260
  %266 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds i8, ptr %244, i64 %267, !dbg !964
  call void @llvm.dbg.value(metadata ptr %268, metadata !918, metadata !DIExpression()), !dbg !923
  br label %269, !dbg !965

269:                                              ; preds = %265, %249
  %270 = phi ptr [ %268, %265 ], [ %245, %249 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 4, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %270, metadata !918, metadata !DIExpression()), !dbg !923
  %271 = getelementptr inbounds i8, ptr %270, i64 1, !dbg !932
  %272 = icmp ugt ptr %271, %157, !dbg !937
  %273 = icmp ugt ptr %271, %17
  %274 = or i1 %272, %273, !dbg !938
  br i1 %274, label %424, label %275, !dbg !938

275:                                              ; preds = %269
  %276 = load i8, ptr %270, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %276, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %276, label %277 [
    i8 0, label %424
    i8 1, label %295
  ], !dbg !941

277:                                              ; preds = %275
  %278 = getelementptr inbounds i8, ptr %270, i64 2, !dbg !942
  %279 = icmp ugt ptr %278, %157, !dbg !944
  %280 = icmp ugt ptr %278, %17
  %281 = or i1 %279, %280, !dbg !945
  br i1 %281, label %424, label %282, !dbg !945

282:                                              ; preds = %277
  %283 = load i8, ptr %271, align 1, !dbg !946, !tbaa !940
  store volatile i8 %283, ptr %11, align 1, !dbg !947, !tbaa !940
  %284 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %285 = icmp ult i8 %284, 2, !dbg !950
  br i1 %285, label %424, label %286, !dbg !951

286:                                              ; preds = %282
  %287 = icmp eq i8 %276, 8, !dbg !952
  br i1 %287, label %288, label %291, !dbg !954

288:                                              ; preds = %286
  %289 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %290 = icmp eq i8 %289, 10, !dbg !956
  br i1 %290, label %180, label %291, !dbg !957

291:                                              ; preds = %288, %286
  %292 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %293 = zext i8 %292 to i64
  %294 = getelementptr inbounds i8, ptr %270, i64 %293, !dbg !964
  call void @llvm.dbg.value(metadata ptr %294, metadata !918, metadata !DIExpression()), !dbg !923
  br label %295, !dbg !965

295:                                              ; preds = %291, %275
  %296 = phi ptr [ %294, %291 ], [ %271, %275 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 5, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %296, metadata !918, metadata !DIExpression()), !dbg !923
  %297 = getelementptr inbounds i8, ptr %296, i64 1, !dbg !932
  %298 = icmp ugt ptr %297, %157, !dbg !937
  %299 = icmp ugt ptr %297, %17
  %300 = or i1 %298, %299, !dbg !938
  br i1 %300, label %424, label %301, !dbg !938

301:                                              ; preds = %295
  %302 = load i8, ptr %296, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %302, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %302, label %303 [
    i8 0, label %424
    i8 1, label %321
  ], !dbg !941

303:                                              ; preds = %301
  %304 = getelementptr inbounds i8, ptr %296, i64 2, !dbg !942
  %305 = icmp ugt ptr %304, %157, !dbg !944
  %306 = icmp ugt ptr %304, %17
  %307 = or i1 %305, %306, !dbg !945
  br i1 %307, label %424, label %308, !dbg !945

308:                                              ; preds = %303
  %309 = load i8, ptr %297, align 1, !dbg !946, !tbaa !940
  store volatile i8 %309, ptr %11, align 1, !dbg !947, !tbaa !940
  %310 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %311 = icmp ult i8 %310, 2, !dbg !950
  br i1 %311, label %424, label %312, !dbg !951

312:                                              ; preds = %308
  %313 = icmp eq i8 %302, 8, !dbg !952
  br i1 %313, label %314, label %317, !dbg !954

314:                                              ; preds = %312
  %315 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %316 = icmp eq i8 %315, 10, !dbg !956
  br i1 %316, label %180, label %317, !dbg !957

317:                                              ; preds = %314, %312
  %318 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds i8, ptr %296, i64 %319, !dbg !964
  call void @llvm.dbg.value(metadata ptr %320, metadata !918, metadata !DIExpression()), !dbg !923
  br label %321, !dbg !965

321:                                              ; preds = %317, %301
  %322 = phi ptr [ %320, %317 ], [ %297, %301 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 6, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %322, metadata !918, metadata !DIExpression()), !dbg !923
  %323 = getelementptr inbounds i8, ptr %322, i64 1, !dbg !932
  %324 = icmp ugt ptr %323, %157, !dbg !937
  %325 = icmp ugt ptr %323, %17
  %326 = or i1 %324, %325, !dbg !938
  br i1 %326, label %424, label %327, !dbg !938

327:                                              ; preds = %321
  %328 = load i8, ptr %322, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %328, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %328, label %329 [
    i8 0, label %424
    i8 1, label %347
  ], !dbg !941

329:                                              ; preds = %327
  %330 = getelementptr inbounds i8, ptr %322, i64 2, !dbg !942
  %331 = icmp ugt ptr %330, %157, !dbg !944
  %332 = icmp ugt ptr %330, %17
  %333 = or i1 %331, %332, !dbg !945
  br i1 %333, label %424, label %334, !dbg !945

334:                                              ; preds = %329
  %335 = load i8, ptr %323, align 1, !dbg !946, !tbaa !940
  store volatile i8 %335, ptr %11, align 1, !dbg !947, !tbaa !940
  %336 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %337 = icmp ult i8 %336, 2, !dbg !950
  br i1 %337, label %424, label %338, !dbg !951

338:                                              ; preds = %334
  %339 = icmp eq i8 %328, 8, !dbg !952
  br i1 %339, label %340, label %343, !dbg !954

340:                                              ; preds = %338
  %341 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %342 = icmp eq i8 %341, 10, !dbg !956
  br i1 %342, label %180, label %343, !dbg !957

343:                                              ; preds = %340, %338
  %344 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %345 = zext i8 %344 to i64
  %346 = getelementptr inbounds i8, ptr %322, i64 %345, !dbg !964
  call void @llvm.dbg.value(metadata ptr %346, metadata !918, metadata !DIExpression()), !dbg !923
  br label %347, !dbg !965

347:                                              ; preds = %343, %327
  %348 = phi ptr [ %346, %343 ], [ %323, %327 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 7, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %348, metadata !918, metadata !DIExpression()), !dbg !923
  %349 = getelementptr inbounds i8, ptr %348, i64 1, !dbg !932
  %350 = icmp ugt ptr %349, %157, !dbg !937
  %351 = icmp ugt ptr %349, %17
  %352 = or i1 %350, %351, !dbg !938
  br i1 %352, label %424, label %353, !dbg !938

353:                                              ; preds = %347
  %354 = load i8, ptr %348, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %354, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %354, label %355 [
    i8 0, label %424
    i8 1, label %373
  ], !dbg !941

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %348, i64 2, !dbg !942
  %357 = icmp ugt ptr %356, %157, !dbg !944
  %358 = icmp ugt ptr %356, %17
  %359 = or i1 %357, %358, !dbg !945
  br i1 %359, label %424, label %360, !dbg !945

360:                                              ; preds = %355
  %361 = load i8, ptr %349, align 1, !dbg !946, !tbaa !940
  store volatile i8 %361, ptr %11, align 1, !dbg !947, !tbaa !940
  %362 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %363 = icmp ult i8 %362, 2, !dbg !950
  br i1 %363, label %424, label %364, !dbg !951

364:                                              ; preds = %360
  %365 = icmp eq i8 %354, 8, !dbg !952
  br i1 %365, label %366, label %369, !dbg !954

366:                                              ; preds = %364
  %367 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %368 = icmp eq i8 %367, 10, !dbg !956
  br i1 %368, label %180, label %369, !dbg !957

369:                                              ; preds = %366, %364
  %370 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %371 = zext i8 %370 to i64
  %372 = getelementptr inbounds i8, ptr %348, i64 %371, !dbg !964
  call void @llvm.dbg.value(metadata ptr %372, metadata !918, metadata !DIExpression()), !dbg !923
  br label %373, !dbg !965

373:                                              ; preds = %369, %353
  %374 = phi ptr [ %372, %369 ], [ %349, %353 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 8, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %374, metadata !918, metadata !DIExpression()), !dbg !923
  %375 = getelementptr inbounds i8, ptr %374, i64 1, !dbg !932
  %376 = icmp ugt ptr %375, %157, !dbg !937
  %377 = icmp ugt ptr %375, %17
  %378 = or i1 %376, %377, !dbg !938
  br i1 %378, label %424, label %379, !dbg !938

379:                                              ; preds = %373
  %380 = load i8, ptr %374, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %380, metadata !920, metadata !DIExpression()), !dbg !923
  switch i8 %380, label %381 [
    i8 0, label %424
    i8 1, label %399
  ], !dbg !941

381:                                              ; preds = %379
  %382 = getelementptr inbounds i8, ptr %374, i64 2, !dbg !942
  %383 = icmp ugt ptr %382, %157, !dbg !944
  %384 = icmp ugt ptr %382, %17
  %385 = or i1 %383, %384, !dbg !945
  br i1 %385, label %424, label %386, !dbg !945

386:                                              ; preds = %381
  %387 = load i8, ptr %375, align 1, !dbg !946, !tbaa !940
  store volatile i8 %387, ptr %11, align 1, !dbg !947, !tbaa !940
  %388 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %389 = icmp ult i8 %388, 2, !dbg !950
  br i1 %389, label %424, label %390, !dbg !951

390:                                              ; preds = %386
  %391 = icmp eq i8 %380, 8, !dbg !952
  br i1 %391, label %392, label %395, !dbg !954

392:                                              ; preds = %390
  %393 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %394 = icmp eq i8 %393, 10, !dbg !956
  br i1 %394, label %180, label %395, !dbg !957

395:                                              ; preds = %392, %390
  %396 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds i8, ptr %374, i64 %397, !dbg !964
  call void @llvm.dbg.value(metadata ptr %398, metadata !918, metadata !DIExpression()), !dbg !923
  br label %399, !dbg !965

399:                                              ; preds = %395, %379
  %400 = phi ptr [ %398, %395 ], [ %375, %379 ], !dbg !966
  call void @llvm.dbg.value(metadata i8 9, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %400, metadata !918, metadata !DIExpression()), !dbg !923
  %401 = getelementptr inbounds i8, ptr %400, i64 1, !dbg !932
  %402 = icmp ugt ptr %401, %157, !dbg !937
  %403 = icmp ugt ptr %401, %17
  %404 = or i1 %402, %403, !dbg !938
  br i1 %404, label %424, label %405, !dbg !938

405:                                              ; preds = %399
  %406 = load i8, ptr %400, align 1, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata i8 %406, metadata !920, metadata !DIExpression()), !dbg !923
  %407 = icmp ult i8 %406, 2, !dbg !941
  br i1 %407, label %424, label %408, !dbg !941

408:                                              ; preds = %405
  %409 = getelementptr inbounds i8, ptr %400, i64 2, !dbg !942
  %410 = icmp ugt ptr %409, %157, !dbg !944
  %411 = icmp ugt ptr %409, %17
  %412 = or i1 %410, %411, !dbg !945
  br i1 %412, label %424, label %413, !dbg !945

413:                                              ; preds = %408
  %414 = load i8, ptr %401, align 1, !dbg !946, !tbaa !940
  store volatile i8 %414, ptr %11, align 1, !dbg !947, !tbaa !940
  %415 = load volatile i8, ptr %11, align 1, !dbg !948, !tbaa !940
  %416 = icmp ult i8 %415, 2, !dbg !950
  br i1 %416, label %424, label %417, !dbg !951

417:                                              ; preds = %413
  %418 = icmp eq i8 %406, 8, !dbg !952
  br i1 %418, label %419, label %422, !dbg !954

419:                                              ; preds = %417
  %420 = load volatile i8, ptr %11, align 1, !dbg !955, !tbaa !940
  %421 = icmp eq i8 %420, 10, !dbg !956
  br i1 %421, label %180, label %422, !dbg !957

422:                                              ; preds = %419, %417
  %423 = load volatile i8, ptr %11, align 1, !dbg !963, !tbaa !940
  call void @llvm.dbg.value(metadata !DIArgList(ptr %400, i8 %423), metadata !918, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !923
  br label %424, !dbg !965

424:                                              ; preds = %422, %413, %408, %405, %399, %386, %381, %379, %373, %360, %355, %353, %347, %334, %329, %327, %321, %308, %303, %301, %295, %282, %277, %275, %269, %256, %251, %249, %243, %230, %225, %223, %217, %204, %199, %197, %191, %180, %171, %166, %164, %159, %150
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11), !dbg !967
  br label %886, !dbg !968

425:                                              ; preds = %180
  %426 = load i32, ptr %182, align 4, !dbg !969, !tbaa !970
  store i32 %426, ptr %151, align 8, !dbg !971, !tbaa !970
  %427 = getelementptr inbounds i8, ptr %181, i64 6, !dbg !972
  %428 = load i32, ptr %427, align 4, !dbg !973, !tbaa !970
  store i32 %428, ptr %152, align 8, !dbg !974, !tbaa !970
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11), !dbg !967
  %429 = load i16, ptr %126, align 4, !dbg !975, !tbaa !976
  %430 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 0, i32 1, !dbg !978
  store i16 %429, ptr %430, align 4, !dbg !979, !tbaa !980
  %431 = getelementptr inbounds %struct.tcphdr, ptr %126, i64 0, i32 1, !dbg !981
  %432 = load i16, ptr %431, align 2, !dbg !981, !tbaa !982
  %433 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, i32 1, !dbg !983
  store i16 %432, ptr %433, align 8, !dbg !984, !tbaa !985
  %434 = load ptr, ptr %1, align 8, !dbg !986, !tbaa !415
  %435 = ptrtoint ptr %148 to i64, !dbg !987
  %436 = ptrtoint ptr %434 to i64, !dbg !987
  %437 = sub i64 %435, %436, !dbg !987
  %438 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 3, !dbg !988
  %439 = load i32, ptr %438, align 8, !dbg !988, !tbaa !429
  %440 = zext i32 %439 to i64, !dbg !989
  %441 = icmp slt i64 %437, %440, !dbg !990
  br i1 %441, label %446, label %442, !dbg !991

442:                                              ; preds = %425
  %443 = load i16, ptr %141, align 4, !dbg !992
  %444 = and i16 %443, 512, !dbg !991
  %445 = icmp ne i16 %444, 0, !dbg !991
  br label %446, !dbg !991

446:                                              ; preds = %442, %425
  %447 = phi i1 [ true, %425 ], [ %445, %442 ]
  %448 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !993
  %449 = zext i1 %447 to i8, !dbg !994
  store i8 %449, ptr %448, align 4, !dbg !994, !tbaa !995
  %450 = load i16, ptr %141, align 4, !dbg !996
  %451 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !997
  %452 = lshr i16 %450, 12, !dbg !998
  %453 = trunc i16 %452 to i8, !dbg !998
  %454 = and i8 %453, 1, !dbg !998
  store i8 %454, ptr %451, align 1, !dbg !998, !tbaa !999
  %455 = load i16, ptr %141, align 4, !dbg !1000
  %456 = and i16 %455, 1024, !dbg !1002
  %457 = icmp eq i16 %456, 0, !dbg !1002
  br i1 %457, label %458, label %553, !dbg !1003

458:                                              ; preds = %446
  %459 = and i16 %455, 256, !dbg !1004
  %460 = icmp eq i16 %459, 0, !dbg !1004
  br i1 %460, label %465, label %461, !dbg !1006

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1007
  store i8 2, ptr %462, align 2, !dbg !1009, !tbaa !1010
  %463 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1011
  store i8 3, ptr %463, align 1, !dbg !1012, !tbaa !1013
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !679
  %464 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !1014
  br i1 %128, label %557, label %570, !dbg !1016

465:                                              ; preds = %458
  %466 = and i16 %455, 512, !dbg !1017
  %467 = icmp eq i16 %466, 0, !dbg !1017
  %468 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1019
  br i1 %467, label %476, label %469, !dbg !1020

469:                                              ; preds = %465
  store i8 1, ptr %468, align 2, !dbg !1021, !tbaa !1010
  %470 = load i16, ptr %141, align 4, !dbg !1023
  %471 = lshr i16 %470, 12, !dbg !1024
  %472 = trunc i16 %471 to i8, !dbg !1024
  %473 = and i8 %472, 1, !dbg !1024
  %474 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1025
  store i8 %473, ptr %474, align 1, !dbg !1026, !tbaa !1013
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !679
  %475 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !1014
  br i1 %128, label %557, label %570, !dbg !1016

476:                                              ; preds = %465
  store i8 0, ptr %468, align 2, !dbg !1027, !tbaa !1010
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !679
  %477 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !1014
  br i1 %128, label %557, label %570, !dbg !1016

478:                                              ; preds = %125
  %479 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 4), align 2, !dbg !861, !tbaa !863, !range !859, !noundef !860
  %480 = icmp eq i8 %479, 0, !dbg !861
  %481 = icmp ne i8 %127, 58
  %482 = select i1 %480, i1 true, i1 %481, !dbg !1029
  %483 = or i1 %128, %482, !dbg !1029
  br i1 %483, label %515, label %484, !dbg !1029

484:                                              ; preds = %478
  call void @llvm.dbg.value(metadata ptr %1, metadata !1030, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata ptr %12, metadata !1033, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata ptr %15, metadata !1036, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr %17, metadata !1042, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr %12, metadata !1043, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1045
  call void @llvm.dbg.value(metadata ptr %126, metadata !1044, metadata !DIExpression()), !dbg !1045
  %485 = getelementptr inbounds %struct.icmp6hdr, ptr %126, i64 1, !dbg !1048
  %486 = icmp ugt ptr %485, %17, !dbg !1050
  br i1 %486, label %886, label %487, !dbg !1051

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 1, !dbg !1052
  call void @llvm.dbg.value(metadata ptr %488, metadata !1043, metadata !DIExpression()), !dbg !1045
  store ptr %485, ptr %15, align 8, !dbg !1053, !tbaa !426
  store ptr %126, ptr %488, align 8, !dbg !1054, !tbaa !789
  %489 = getelementptr inbounds %struct.icmp6hdr, ptr %126, i64 0, i32 1, !dbg !1055
  %490 = load i8, ptr %489, align 1, !dbg !1055, !tbaa !1057
  %491 = icmp eq i8 %490, 0, !dbg !1059
  br i1 %491, label %492, label %886, !dbg !1060

492:                                              ; preds = %487
  %493 = load i8, ptr %126, align 4, !dbg !1061, !tbaa !1063
  switch i8 %493, label %886 [
    i8 -128, label %494
    i8 -127, label %501
  ], !dbg !1064

494:                                              ; preds = %492
  %495 = getelementptr inbounds i8, ptr %126, i64 6, !dbg !1065
  %496 = load i16, ptr %495, align 2, !dbg !1065, !tbaa !940
  %497 = zext i16 %496 to i32, !dbg !1067
  %498 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !1068
  store i32 %497, ptr %498, align 8, !dbg !1069, !tbaa !1070
  %499 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1071
  store i8 1, ptr %499, align 4, !dbg !1072, !tbaa !995
  %500 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1073
  store i8 0, ptr %500, align 1, !dbg !1074, !tbaa !999
  br label %508, !dbg !1075

501:                                              ; preds = %492
  %502 = getelementptr inbounds i8, ptr %126, i64 6, !dbg !1076
  %503 = load i16, ptr %502, align 2, !dbg !1076, !tbaa !940
  %504 = zext i16 %503 to i32, !dbg !1079
  %505 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 1, !dbg !1080
  store i32 %504, ptr %505, align 8, !dbg !1081, !tbaa !1082
  %506 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1083
  store i8 1, ptr %506, align 1, !dbg !1084, !tbaa !999
  %507 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1085
  store i8 0, ptr %507, align 4, !dbg !1086, !tbaa !995
  br label %508

508:                                              ; preds = %501, %494
  %509 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1087
  store i8 0, ptr %509, align 2, !dbg !1088, !tbaa !1010
  %510 = getelementptr inbounds %struct.icmp6hdr, ptr %126, i64 0, i32 3, !dbg !1089
  %511 = load i16, ptr %510, align 4, !dbg !1089, !tbaa !940
  %512 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 0, i32 1, !dbg !1090
  store i16 %511, ptr %512, align 4, !dbg !1091, !tbaa !980
  %513 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, i32 1, !dbg !1092
  store i16 %511, ptr %513, align 8, !dbg !1093, !tbaa !985
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !679
  %514 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !1014
  br label %570

515:                                              ; preds = %478
  %516 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 4), align 2, !dbg !864, !tbaa !863, !range !859, !noundef !860
  %517 = icmp eq i8 %516, 0, !dbg !864
  %518 = icmp ne i8 %127, 1
  %519 = select i1 %517, i1 true, i1 %518, !dbg !866
  %520 = xor i1 %128, true, !dbg !866
  %521 = or i1 %519, %520, !dbg !866
  br i1 %521, label %886, label %522, !dbg !866

522:                                              ; preds = %515
  call void @llvm.dbg.value(metadata ptr %1, metadata !1094, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %12, metadata !1097, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %15, metadata !1100, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %17, metadata !1106, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %12, metadata !1107, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %126, metadata !1108, metadata !DIExpression()), !dbg !1109
  %523 = getelementptr inbounds %struct.icmphdr, ptr %126, i64 1, !dbg !1112
  %524 = icmp ugt ptr %523, %17, !dbg !1114
  br i1 %524, label %886, label %525, !dbg !1115

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 1, !dbg !1116
  call void @llvm.dbg.value(metadata ptr %526, metadata !1107, metadata !DIExpression()), !dbg !1109
  store ptr %523, ptr %15, align 8, !dbg !1117, !tbaa !426
  store ptr %126, ptr %526, align 8, !dbg !1118, !tbaa !789
  %527 = getelementptr inbounds %struct.icmphdr, ptr %126, i64 0, i32 1, !dbg !1119
  %528 = load i8, ptr %527, align 1, !dbg !1119, !tbaa !1121
  %529 = icmp eq i8 %528, 0, !dbg !1123
  br i1 %529, label %530, label %886, !dbg !1124

530:                                              ; preds = %525
  %531 = load i8, ptr %126, align 4, !dbg !1125, !tbaa !1127
  switch i8 %531, label %886 [
    i8 8, label %532
    i8 0, label %539
  ], !dbg !1128

532:                                              ; preds = %530
  %533 = getelementptr inbounds i8, ptr %126, i64 6, !dbg !1129
  %534 = load i16, ptr %533, align 2, !dbg !1129, !tbaa !940
  %535 = zext i16 %534 to i32, !dbg !1131
  %536 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !1132
  store i32 %535, ptr %536, align 8, !dbg !1133, !tbaa !1070
  %537 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1134
  store i8 1, ptr %537, align 4, !dbg !1135, !tbaa !995
  %538 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1136
  store i8 0, ptr %538, align 1, !dbg !1137, !tbaa !999
  br label %546, !dbg !1138

539:                                              ; preds = %530
  %540 = getelementptr inbounds i8, ptr %126, i64 6, !dbg !1139
  %541 = load i16, ptr %540, align 2, !dbg !1139, !tbaa !940
  %542 = zext i16 %541 to i32, !dbg !1142
  %543 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 1, !dbg !1143
  store i32 %542, ptr %543, align 8, !dbg !1144, !tbaa !1082
  %544 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1145
  store i8 1, ptr %544, align 1, !dbg !1146, !tbaa !999
  %545 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1147
  store i8 0, ptr %545, align 4, !dbg !1148, !tbaa !995
  br label %546

546:                                              ; preds = %539, %532
  %547 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1149
  store i8 0, ptr %547, align 2, !dbg !1150, !tbaa !1010
  %548 = getelementptr inbounds %struct.icmphdr, ptr %126, i64 0, i32 3, !dbg !1151
  %549 = load i16, ptr %548, align 4, !dbg !1152, !tbaa !940
  %550 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 0, i32 1, !dbg !1153
  store i16 %549, ptr %550, align 4, !dbg !1154, !tbaa !980
  %551 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, i32 1, !dbg !1155
  store i16 %549, ptr %551, align 8, !dbg !1156, !tbaa !985
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !679
  %552 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !1014
  br i1 %128, label %557, label %570, !dbg !1016

553:                                              ; preds = %446
  %554 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1157
  store i8 3, ptr %554, align 2, !dbg !1159, !tbaa !1010
  %555 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1160
  store i8 4, ptr %555, align 1, !dbg !1161, !tbaa !1013
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()), !dbg !679
  %556 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !1014
  br i1 %128, label %557, label %570, !dbg !1016

557:                                              ; preds = %553, %546, %476, %469, %461
  %558 = phi ptr [ %523, %546 ], [ %148, %553 ], [ %148, %476 ], [ %148, %469 ], [ %148, %461 ]
  %559 = phi ptr [ %552, %546 ], [ %556, %553 ], [ %477, %476 ], [ %475, %469 ], [ %464, %461 ]
  %560 = phi i16 [ 1, %546 ], [ 6, %553 ], [ 6, %476 ], [ 6, %469 ], [ 6, %461 ]
  %561 = getelementptr inbounds %struct.iphdr, ptr %45, i64 0, i32 8, !dbg !1162
  %562 = load i32, ptr %561, align 4, !dbg !1162, !tbaa !940
  call void @llvm.dbg.value(metadata ptr %556, metadata !1164, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %562, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %559, i8 0, i64 10, i1 false), !dbg !1172
  %563 = getelementptr inbounds i8, ptr %12, i64 38, !dbg !1173
  store i16 -1, ptr %563, align 2, !dbg !1174
  %564 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1175
  store i32 %562, ptr %564, align 8, !dbg !1176, !tbaa !940
  %565 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, !dbg !1177
  %566 = getelementptr inbounds %struct.iphdr, ptr %45, i64 0, i32 8, i32 0, i32 1, !dbg !1178
  %567 = load i32, ptr %566, align 4, !dbg !1178, !tbaa !940
  call void @llvm.dbg.value(metadata ptr %565, metadata !1164, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i32 %567, metadata !1169, metadata !DIExpression()), !dbg !1179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %565, i8 0, i64 10, i1 false), !dbg !1181
  %568 = getelementptr inbounds i8, ptr %12, i64 58, !dbg !1182
  store i16 -1, ptr %568, align 2, !dbg !1183
  %569 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1184
  store i32 %567, ptr %569, align 4, !dbg !1185, !tbaa !940
  br label %577, !dbg !1186

570:                                              ; preds = %553, %546, %508, %476, %469, %461
  %571 = phi ptr [ %523, %546 ], [ %148, %553 ], [ %485, %508 ], [ %148, %476 ], [ %148, %469 ], [ %148, %461 ]
  %572 = phi ptr [ %552, %546 ], [ %556, %553 ], [ %514, %508 ], [ %477, %476 ], [ %475, %469 ], [ %464, %461 ]
  %573 = phi i16 [ 1, %546 ], [ 6, %553 ], [ 58, %508 ], [ 6, %476 ], [ 6, %469 ], [ 6, %461 ]
  %574 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 0, i32 5, !dbg !1187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %572, ptr noundef nonnull align 4 dereferenceable(16) %574, i64 16, i1 false), !dbg !1187, !tbaa.struct !1189
  %575 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, !dbg !1190
  %576 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 0, i32 5, i32 0, i32 1, !dbg !1191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %575, ptr noundef nonnull align 4 dereferenceable(16) %576, i64 16, i1 false), !dbg !1191, !tbaa.struct !1189
  br label %577

577:                                              ; preds = %570, %557
  %578 = phi ptr [ %571, %570 ], [ %558, %557 ], !dbg !1192
  %579 = phi ptr [ %572, %570 ], [ %559, %557 ]
  %580 = phi i16 [ %573, %570 ], [ %560, %557 ]
  %581 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %581, metadata !1201, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata ptr %556, metadata !1206, metadata !DIExpression()), !dbg !1207
  %582 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 0, i32 3, !dbg !1209
  store i8 %129, ptr %582, align 2, !dbg !1210, !tbaa !1211
  %583 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 0, i32 2, !dbg !1212
  store i16 %580, ptr %583, align 4, !dbg !1213, !tbaa !1214
  %584 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, !dbg !1215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %581, ptr noundef nonnull align 8 dereferenceable(20) %584, i64 20, i1 false), !dbg !1215, !tbaa.struct !1216
  %585 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 0, i32 1, !dbg !1217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %585, ptr noundef nonnull align 4 dereferenceable(20) %579, i64 20, i1 false), !dbg !1218, !tbaa.struct !1216
  %586 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 0, i32 4, !dbg !1219
  store i8 0, ptr %586, align 1, !dbg !1220, !tbaa !1221
  call void @llvm.dbg.value(metadata ptr %1, metadata !1197, metadata !DIExpression()), !dbg !1222
  %587 = load ptr, ptr %1, align 8, !dbg !1223, !tbaa !415
  %588 = ptrtoint ptr %578 to i64, !dbg !1224
  %589 = ptrtoint ptr %587 to i64, !dbg !1224
  %590 = sub i64 %588, %589, !dbg !1224
  %591 = trunc i64 %590 to i32, !dbg !1225
  call void @llvm.dbg.value(metadata i32 %591, metadata !1198, metadata !DIExpression()), !dbg !1222
  %592 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 3, !dbg !1226
  %593 = load i32, ptr %592, align 8, !dbg !1226, !tbaa !429
  %594 = tail call i32 @llvm.usub.sat.i32(i32 %593, i32 %591), !dbg !1227
  %595 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 3, !dbg !1228
  store i32 %594, ptr %595, align 8, !dbg !1229, !tbaa !1230
  call void @llvm.dbg.value(metadata ptr %0, metadata !1231, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr %12, metadata !1237, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr undef, metadata !1238, metadata !DIExpression()), !dbg !1240
  %596 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !1242
  %597 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %596) #14, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %597, metadata !1239, metadata !DIExpression()), !dbg !1240
  %598 = icmp eq ptr %597, null, !dbg !1244
  br i1 %598, label %599, label %635, !dbg !1246

599:                                              ; preds = %577
  %600 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1247
  %601 = load i8, ptr %600, align 4, !dbg !1247, !tbaa !995, !range !859, !noundef !860
  %602 = icmp eq i8 %601, 0, !dbg !1247
  br i1 %602, label %754, label %603, !dbg !1248

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1249
  %605 = load i8, ptr %604, align 2, !dbg !1249, !tbaa !1010
  %606 = and i8 %605, -2, !dbg !1250
  %607 = icmp eq i8 %606, 2, !dbg !1250
  br i1 %607, label %754, label %608, !dbg !1250

608:                                              ; preds = %603
  call void @llvm.dbg.value(metadata ptr %0, metadata !1251, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata ptr %12, metadata !1256, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #14, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1257, metadata !DIExpression()), !dbg !1262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false), !dbg !1262
  %609 = load i64, ptr %14, align 8, !dbg !1263, !tbaa !685
  %610 = getelementptr inbounds %struct.flow_state, ptr %10, i64 0, i32 2, !dbg !1264
  store i64 %609, ptr %610, align 8, !dbg !1265, !tbaa !1266
  %611 = icmp eq i8 %605, 1, !dbg !1268
  %612 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1269
  %613 = load i8, ptr %612, align 1, !dbg !1269
  %614 = select i1 %611, i8 %613, i8 2, !dbg !1269
  %615 = getelementptr inbounds %struct.flow_state, ptr %10, i64 0, i32 9, !dbg !1270
  store i8 %614, ptr %615, align 1, !dbg !1271, !tbaa !1272
  %616 = call i64 inttoptr (i64 2 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %596, ptr noundef nonnull %10, i64 noundef 1) #14, !dbg !1273
  %617 = icmp eq i64 %616, 0, !dbg !1275
  br i1 %617, label %632, label %618, !dbg !1276

618:                                              ; preds = %608
  call void @llvm.dbg.value(metadata ptr %0, metadata !1277, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata ptr %12, metadata !1282, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 0, metadata !1283, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14, !dbg !1295
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1284, metadata !DIExpression()), !dbg !1296
  %619 = load i64, ptr %14, align 8, !dbg !1297, !tbaa !685
  %620 = load volatile i64, ptr @last_warn_time, align 8, !dbg !1299, !tbaa !1300
  %621 = icmp ult i64 %619, %620, !dbg !1301
  br i1 %621, label %631, label %622, !dbg !1302

622:                                              ; preds = %618
  %623 = load volatile i64, ptr @last_warn_time, align 8, !dbg !1303, !tbaa !1300
  %624 = sub i64 %619, %623, !dbg !1304
  %625 = icmp ult i64 %624, 1000000000, !dbg !1305
  br i1 %625, label %631, label %626, !dbg !1306

626:                                              ; preds = %622
  store volatile i64 %619, ptr @last_warn_time, align 8, !dbg !1307, !tbaa !1300
  %627 = getelementptr inbounds i8, ptr %9, i64 56, !dbg !1308
  store i64 0, ptr %627, align 8, !dbg !1308
  store i64 3, ptr %9, align 8, !dbg !1309, !tbaa !1310
  %628 = getelementptr inbounds %struct.map_full_event, ptr %9, i64 0, i32 1, !dbg !1312
  store i64 %619, ptr %628, align 8, !dbg !1313, !tbaa !1314
  %629 = getelementptr inbounds %struct.map_full_event, ptr %9, i64 0, i32 2, !dbg !1315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %629, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1316, !tbaa.struct !1317
  %630 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %9, i64 noundef 64) #14, !dbg !1318
  br label %631, !dbg !1319

631:                                              ; preds = %626, %622, %618
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #14, !dbg !1320
  call void @llvm.dbg.value(metadata ptr null, metadata !1239, metadata !DIExpression()), !dbg !1240
  br label %754, !dbg !1321

632:                                              ; preds = %608
  %633 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %596) #14, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #14, !dbg !1320
  call void @llvm.dbg.value(metadata ptr %633, metadata !1239, metadata !DIExpression()), !dbg !1240
  %634 = icmp eq ptr %633, null, !dbg !1323
  br i1 %634, label %754, label %635, !dbg !1321

635:                                              ; preds = %632, %577
  %636 = phi ptr [ %633, %632 ], [ %597, %577 ]
  %637 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 3, !dbg !1325
  %638 = load i64, ptr %637, align 8, !dbg !1326, !tbaa !1327
  %639 = add i64 %638, 1, !dbg !1326
  store i64 %639, ptr %637, align 8, !dbg !1326, !tbaa !1327
  %640 = load i32, ptr %595, align 8, !dbg !1328, !tbaa !1230
  %641 = zext i32 %640 to i64, !dbg !1329
  %642 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 4, !dbg !1330
  %643 = load i64, ptr %642, align 8, !dbg !1331, !tbaa !1332
  %644 = add i64 %643, %641, !dbg !1331
  store i64 %644, ptr %642, align 8, !dbg !1331, !tbaa !1332
  call void @llvm.dbg.value(metadata ptr %636, metadata !655, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i8 poison, metadata !657, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata ptr %636, metadata !1333, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %0, metadata !1338, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %1, metadata !1339, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %12, metadata !1340, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i1 %598, metadata !1341, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1342
  %645 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1344
  %646 = load i8, ptr %645, align 4, !dbg !1344, !tbaa !995, !range !859, !noundef !860
  %647 = icmp eq i8 %646, 0, !dbg !1344
  br i1 %647, label %754, label %648, !dbg !1346

648:                                              ; preds = %635
  %649 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 5), align 1, !dbg !1347, !tbaa !1349, !range !859, !noundef !860
  %650 = icmp eq i8 %649, 0, !dbg !1347
  br i1 %650, label %699, label %651, !dbg !1350

651:                                              ; preds = %648
  %652 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 5, !dbg !1351
  %653 = load i8, ptr %652, align 8, !dbg !1351, !tbaa !431, !range !859, !noundef !860
  %654 = icmp eq i8 %653, 0, !dbg !1351
  br i1 %654, label %655, label %699, !dbg !1352

655:                                              ; preds = %651
  call void @llvm.dbg.value(metadata ptr %12, metadata !1353, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata ptr %0, metadata !1358, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata ptr %1, metadata !1359, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1361, metadata !DIExpression()), !dbg !1370
  %656 = getelementptr inbounds i8, ptr %8, i64 4, !dbg !1371
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %656, i8 0, i64 60, i1 false), !dbg !1371
  %657 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 4, !dbg !1372
  %658 = load i32, ptr %657, align 4, !dbg !1372, !tbaa !430
  %659 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 5, !dbg !1373
  store i32 %658, ptr %659, align 4, !dbg !1374, !tbaa !1375
  %660 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 3, !dbg !1377
  %661 = load i8, ptr %660, align 2, !dbg !1377, !tbaa !758
  store i8 %661, ptr %8, align 4, !dbg !1378, !tbaa !1379
  switch i8 %661, label %688 [
    i8 2, label %662
    i8 10, label %677
  ], !dbg !1380

662:                                              ; preds = %655
  %663 = load ptr, ptr %12, align 8, !dbg !1381, !tbaa !940
  %664 = getelementptr inbounds %struct.iphdr, ptr %663, i64 0, i32 1, !dbg !1383
  %665 = load i8, ptr %664, align 1, !dbg !1383, !tbaa !1384
  %666 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 6, !dbg !1385
  store i8 %665, ptr %666, align 4, !dbg !1386, !tbaa !940
  %667 = getelementptr inbounds %struct.iphdr, ptr %663, i64 0, i32 2, !dbg !1387
  %668 = load i16, ptr %667, align 2, !dbg !1387, !tbaa !1388
  %669 = call i16 @llvm.bswap.i16(i16 %668), !dbg !1387
  %670 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 4, !dbg !1389
  store i16 %669, ptr %670, align 2, !dbg !1390, !tbaa !1391
  %671 = getelementptr inbounds %struct.iphdr, ptr %663, i64 0, i32 8, !dbg !1392
  %672 = load i32, ptr %671, align 4, !dbg !1392, !tbaa !940
  %673 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 7, !dbg !1393
  store i32 %672, ptr %673, align 4, !dbg !1394, !tbaa !940
  %674 = getelementptr inbounds %struct.iphdr, ptr %663, i64 0, i32 8, i32 0, i32 1, !dbg !1395
  %675 = load i32, ptr %674, align 4, !dbg !1395, !tbaa !940
  %676 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 8, !dbg !1396
  store i32 %675, ptr %676, align 4, !dbg !1397, !tbaa !940
  br label %688, !dbg !1398

677:                                              ; preds = %655
  %678 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 7, !dbg !1399
  call void @llvm.dbg.value(metadata ptr %678, metadata !1362, metadata !DIExpression()), !dbg !1400
  %679 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 8, !dbg !1401
  call void @llvm.dbg.value(metadata ptr %679, metadata !1366, metadata !DIExpression()), !dbg !1400
  %680 = load ptr, ptr %12, align 8, !dbg !1402, !tbaa !940
  %681 = load i32, ptr %680, align 4, !dbg !1403, !tbaa !970
  %682 = and i32 %681, -241, !dbg !1404
  %683 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 6, !dbg !1405
  store i32 %682, ptr %683, align 4, !dbg !1406, !tbaa !940
  %684 = getelementptr inbounds %struct.ipv6hdr, ptr %680, i64 0, i32 2, !dbg !1407
  %685 = load i16, ptr %684, align 4, !dbg !1407, !tbaa !1408
  %686 = call i16 @llvm.bswap.i16(i16 %685), !dbg !1407
  %687 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 4, !dbg !1409
  store i16 %686, ptr %687, align 2, !dbg !1410, !tbaa !1391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %678, ptr noundef nonnull align 4 dereferenceable(16) %596, i64 16, i1 false), !dbg !1411, !tbaa.struct !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %679, ptr noundef nonnull align 8 dereferenceable(16) %584, i64 16, i1 false), !dbg !1412, !tbaa.struct !1189
  br label %688, !dbg !1413

688:                                              ; preds = %677, %662, %655
  %689 = load i16, ptr %131, align 4, !dbg !1414, !tbaa !868
  %690 = trunc i16 %689 to i8, !dbg !1415
  %691 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 1, !dbg !1416
  store i8 %690, ptr %691, align 1, !dbg !1417, !tbaa !1418
  %692 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 2, !dbg !1419
  store i16 0, ptr %692, align 2, !dbg !1420, !tbaa !1421
  store i16 0, ptr %656, align 4, !dbg !1422, !tbaa !1423
  %693 = call i64 inttoptr (i64 69 to ptr)(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 64, i32 noundef 0) #14, !dbg !1424
  %694 = trunc i64 %693 to i32, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %694, metadata !1360, metadata !DIExpression()), !dbg !1367
  %695 = icmp eq i32 %694, 4, !dbg !1425
  %696 = icmp eq i32 %694, 5, !dbg !1426
  %697 = call i1 @llvm.bpf.passthrough.i1.i1(i32 1, i1 %695)
  %698 = select i1 %697, i1 true, i1 %696, !dbg !1426
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14, !dbg !1427
  br i1 %698, label %754, label %699, !dbg !1428

699:                                              ; preds = %688, %651, %648
  br i1 %598, label %700, label %705, !dbg !1429

700:                                              ; preds = %699
  %701 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !1431
  %702 = load i32, ptr %701, align 8, !dbg !1431, !tbaa !1070
  %703 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 7, !dbg !1432
  store i32 %702, ptr %703, align 8, !dbg !1433, !tbaa !1434
  %704 = load i64, ptr %14, align 8, !dbg !1435, !tbaa !685
  br label %735, !dbg !1436

705:                                              ; preds = %699
  %706 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 7, !dbg !1438
  %707 = load i32, ptr %706, align 8, !dbg !1438, !tbaa !1434
  %708 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !1439
  %709 = load i32, ptr %708, align 8, !dbg !1439, !tbaa !1070
  %710 = icmp eq i32 %707, %709, !dbg !1440
  br i1 %710, label %754, label %711, !dbg !1441

711:                                              ; preds = %705
  store i32 %709, ptr %706, align 8, !dbg !1433, !tbaa !1434
  %712 = load i64, ptr %14, align 8, !dbg !1442, !tbaa !685
  %713 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 2, !dbg !1443
  %714 = load i64, ptr %713, align 8, !dbg !1443, !tbaa !1266
  %715 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 2), align 8, !dbg !1444, !tbaa !1445, !range !859, !noundef !860
  %716 = icmp eq i8 %715, 0, !dbg !1444
  %717 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 1, !dbg !1446
  %718 = select i1 %716, ptr %636, ptr %717, !dbg !1446
  %719 = load i64, ptr %718, align 8, !dbg !1446, !tbaa !1300
  call void @llvm.dbg.value(metadata i64 %712, metadata !1447, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %714, metadata !1452, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 %719, metadata !1453, metadata !DIExpression()), !dbg !1454
  %720 = icmp ult i64 %712, %714, !dbg !1456
  br i1 %720, label %754, label %721, !dbg !1458

721:                                              ; preds = %711
  %722 = load volatile i64, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 1), align 8, !dbg !1459, !tbaa !1461
  %723 = icmp ne i64 %722, 0, !dbg !1462
  %724 = icmp ne i64 %719, 0
  %725 = and i1 %724, %723, !dbg !1463
  %726 = sub i64 %712, %714, !dbg !1454
  br i1 %725, label %727, label %732, !dbg !1463

727:                                              ; preds = %721
  %728 = load volatile i64, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 1), align 8, !dbg !1464, !tbaa !1461
  %729 = mul i64 %728, %719, !dbg !1464
  %730 = lshr i64 %729, 16, !dbg !1464
  %731 = icmp ult i64 %726, %730, !dbg !1465
  br i1 %731, label %754, label %735, !dbg !1466

732:                                              ; preds = %721
  %733 = load volatile i64, ptr @config, align 8, !dbg !1467, !tbaa !1468
  %734 = icmp ult i64 %726, %733, !dbg !1469
  br i1 %734, label %754, label %735, !dbg !1466

735:                                              ; preds = %732, %727, %700
  %736 = phi i64 [ %712, %727 ], [ %704, %700 ], [ %712, %732 ], !dbg !1435
  %737 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 2, !dbg !1470
  store i64 %736, ptr %737, align 8, !dbg !1471, !tbaa !1266
  %738 = call i64 inttoptr (i64 2 to ptr)(ptr noundef nonnull @packet_ts, ptr noundef nonnull %596, ptr noundef nonnull %14, i64 noundef 1) #14, !dbg !1472
  %739 = icmp eq i64 %738, 0, !dbg !1474
  br i1 %739, label %754, label %740, !dbg !1475

740:                                              ; preds = %735
  call void @llvm.dbg.value(metadata ptr %0, metadata !1277, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata ptr %12, metadata !1282, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8 1, metadata !1283, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14, !dbg !1478
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1284, metadata !DIExpression()), !dbg !1479
  %741 = load i64, ptr %14, align 8, !dbg !1480, !tbaa !685
  %742 = load volatile i64, ptr getelementptr inbounds ([2 x i64], ptr @last_warn_time, i64 0, i64 1), align 8, !dbg !1481, !tbaa !1300
  %743 = icmp ult i64 %741, %742, !dbg !1482
  br i1 %743, label %753, label %744, !dbg !1483

744:                                              ; preds = %740
  %745 = load volatile i64, ptr getelementptr inbounds ([2 x i64], ptr @last_warn_time, i64 0, i64 1), align 8, !dbg !1484, !tbaa !1300
  %746 = sub i64 %741, %745, !dbg !1485
  %747 = icmp ult i64 %746, 1000000000, !dbg !1486
  br i1 %747, label %753, label %748, !dbg !1487

748:                                              ; preds = %744
  store volatile i64 %741, ptr getelementptr inbounds ([2 x i64], ptr @last_warn_time, i64 0, i64 1), align 8, !dbg !1488, !tbaa !1300
  %749 = getelementptr inbounds i8, ptr %7, i64 56, !dbg !1489
  store i64 4294967296, ptr %749, align 8, !dbg !1489
  store i64 3, ptr %7, align 8, !dbg !1490, !tbaa !1310
  %750 = getelementptr inbounds %struct.map_full_event, ptr %7, i64 0, i32 1, !dbg !1491
  store i64 %741, ptr %750, align 8, !dbg !1492, !tbaa !1314
  %751 = getelementptr inbounds %struct.map_full_event, ptr %7, i64 0, i32 2, !dbg !1493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %751, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1494, !tbaa.struct !1317
  %752 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %7, i64 noundef 64) #14, !dbg !1495
  br label %753, !dbg !1496

753:                                              ; preds = %748, %744, %740
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14, !dbg !1496
  br label %754, !dbg !1497

754:                                              ; preds = %753, %735, %732, %727, %711, %705, %688, %635, %632, %631, %603, %599
  %755 = phi i1 [ false, %635 ], [ false, %688 ], [ false, %705 ], [ false, %711 ], [ false, %727 ], [ false, %732 ], [ false, %735 ], [ false, %753 ], [ true, %632 ], [ true, %631 ], [ true, %599 ], [ true, %603 ]
  %756 = phi ptr [ %636, %635 ], [ %636, %688 ], [ %636, %705 ], [ %636, %711 ], [ %636, %727 ], [ %636, %732 ], [ %636, %735 ], [ %636, %753 ], [ null, %632 ], [ null, %631 ], [ null, %599 ], [ null, %603 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !1498, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata ptr %12, metadata !1501, metadata !DIExpression()), !dbg !1503
  %757 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %581) #14, !dbg !1505
  call void @llvm.dbg.value(metadata ptr %757, metadata !1502, metadata !DIExpression()), !dbg !1503
  %758 = icmp eq ptr %757, null, !dbg !1506
  br i1 %758, label %759, label %760, !dbg !1508

759:                                              ; preds = %754
  call void @llvm.dbg.value(metadata ptr %757, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata ptr %757, metadata !1509, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %0, metadata !1514, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %1, metadata !1515, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %12, metadata !1516, metadata !DIExpression()), !dbg !1536
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #14, !dbg !1538
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1517, metadata !DIExpression()), !dbg !1539
  br label %837, !dbg !1540

760:                                              ; preds = %754
  %761 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 8, !dbg !1542
  %762 = load i8, ptr %761, align 4, !dbg !1542, !tbaa !1544, !range !859, !noundef !860
  %763 = icmp ne i8 %762, 0, !dbg !1542
  %764 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8
  %765 = load i8, ptr %764, align 2
  %766 = icmp eq i8 %765, 3
  %767 = select i1 %763, i1 true, i1 %766, !dbg !1545
  br i1 %767, label %780, label %768, !dbg !1545

768:                                              ; preds = %760
  store i8 1, ptr %761, align 4, !dbg !1546, !tbaa !1544
  call void @llvm.dbg.value(metadata ptr %0, metadata !1548, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr %12, metadata !1553, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr %757, metadata !1554, metadata !DIExpression()), !dbg !1565
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1555, metadata !DIExpression()), !dbg !1568
  store i64 1, ptr %6, align 8, !dbg !1569, !tbaa !1570
  %769 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 1, !dbg !1569
  %770 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 2, !dbg !1572
  %771 = load i64, ptr %770, align 8, !dbg !1572, !tbaa !1266
  store i64 %771, ptr %769, align 8, !dbg !1569, !tbaa !1573
  %772 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 2, !dbg !1569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %772, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1574, !tbaa.struct !1317
  %773 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 3, !dbg !1569
  store i8 1, ptr %773, align 4, !dbg !1569, !tbaa !1575
  %774 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 4, !dbg !1569
  %775 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 9, !dbg !1576
  %776 = load i8, ptr %775, align 1, !dbg !1576, !tbaa !1272
  store i8 %776, ptr %774, align 1, !dbg !1569, !tbaa !1577
  %777 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 5, !dbg !1569
  store i8 1, ptr %777, align 2, !dbg !1569, !tbaa !1578
  %778 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 6, !dbg !1569
  store i8 0, ptr %778, align 1, !dbg !1569, !tbaa !1579
  %779 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %6, i64 noundef 64) #14, !dbg !1580
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14, !dbg !1581
  br label %780, !dbg !1582

780:                                              ; preds = %768, %760
  %781 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 5, !dbg !1583
  %782 = load i64, ptr %781, align 8, !dbg !1584, !tbaa !1585
  %783 = add i64 %782, 1, !dbg !1584
  store i64 %783, ptr %781, align 8, !dbg !1584, !tbaa !1585
  %784 = load i32, ptr %595, align 8, !dbg !1586, !tbaa !1230
  %785 = zext i32 %784 to i64, !dbg !1587
  %786 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 6, !dbg !1588
  %787 = load i64, ptr %786, align 8, !dbg !1589, !tbaa !1590
  %788 = add i64 %787, %785, !dbg !1589
  store i64 %788, ptr %786, align 8, !dbg !1589, !tbaa !1590
  call void @llvm.dbg.value(metadata ptr %757, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata ptr %757, metadata !1509, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %0, metadata !1514, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %1, metadata !1515, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %12, metadata !1516, metadata !DIExpression()), !dbg !1536
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #14, !dbg !1538
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1517, metadata !DIExpression()), !dbg !1539
  %789 = getelementptr inbounds i8, ptr %5, i64 56, !dbg !1539
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %789, i8 0, i64 64, i1 false), !dbg !1539
  %790 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1591
  %791 = load i8, ptr %790, align 1, !dbg !1591, !tbaa !999, !range !859, !noundef !860
  %792 = icmp eq i8 %791, 0, !dbg !1591
  br i1 %792, label %837, label %793, !dbg !1592

793:                                              ; preds = %780
  %794 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @packet_ts, ptr noundef nonnull %581) #14, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %794, metadata !1535, metadata !DIExpression()), !dbg !1536
  %795 = icmp eq ptr %794, null, !dbg !1594
  br i1 %795, label %837, label %796, !dbg !1596

796:                                              ; preds = %793
  %797 = load i64, ptr %14, align 8, !dbg !1597, !tbaa !685
  %798 = load i64, ptr %794, align 8, !dbg !1598, !tbaa !1300
  %799 = icmp ult i64 %797, %798, !dbg !1599
  br i1 %799, label %837, label %800, !dbg !1600

800:                                              ; preds = %796
  %801 = sub i64 %797, %798, !dbg !1601
  %802 = freeze i64 %801, !dbg !1602
  %803 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 4, !dbg !1604
  store i64 %802, ptr %803, align 8, !dbg !1605, !tbaa !1606
  %804 = call i64 inttoptr (i64 3 to ptr)(ptr noundef nonnull @packet_ts, ptr noundef nonnull %581) #14, !dbg !1608
  %805 = load i64, ptr %757, align 8, !dbg !1609, !tbaa !1610
  %806 = add i64 %805, -1, !dbg !1602
  %807 = icmp ult i64 %806, %802, !dbg !1602
  br i1 %807, label %809, label %808, !dbg !1602

808:                                              ; preds = %800
  store i64 %802, ptr %757, align 8, !dbg !1611, !tbaa !1610
  br label %809, !dbg !1612

809:                                              ; preds = %808, %800
  %810 = phi i64 [ %805, %800 ], [ %802, %808 ], !dbg !1613
  %811 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 1, !dbg !1614
  %812 = load i64, ptr %811, align 8, !dbg !1614, !tbaa !1615
  call void @llvm.dbg.value(metadata i64 %812, metadata !1616, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %801, metadata !1621, metadata !DIExpression()), !dbg !1622
  %813 = icmp eq i64 %812, 0, !dbg !1624
  %814 = lshr i64 %812, 3, !dbg !1626
  %815 = lshr i64 %802, 3, !dbg !1626
  %816 = add i64 %812, %815, !dbg !1626
  %817 = sub i64 %816, %814, !dbg !1626
  %818 = select i1 %813, i64 %802, i64 %817, !dbg !1626
  store i64 %818, ptr %811, align 8, !dbg !1627, !tbaa !1615
  store i64 2, ptr %5, align 8, !dbg !1628, !tbaa !1629
  %819 = load i64, ptr %14, align 8, !dbg !1630, !tbaa !685
  %820 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 1, !dbg !1631
  store i64 %819, ptr %820, align 8, !dbg !1632, !tbaa !1633
  %821 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 5, !dbg !1634
  store i64 %810, ptr %821, align 8, !dbg !1635, !tbaa !1636
  %822 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 3, !dbg !1637
  %823 = load i64, ptr %822, align 8, !dbg !1637, !tbaa !1327
  %824 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 6, !dbg !1638
  store i64 %823, ptr %824, align 8, !dbg !1639, !tbaa !1640
  %825 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 4, !dbg !1641
  %826 = load i64, ptr %825, align 8, !dbg !1641, !tbaa !1332
  %827 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 7, !dbg !1642
  store i64 %826, ptr %827, align 8, !dbg !1643, !tbaa !1644
  %828 = load i64, ptr %781, align 8, !dbg !1645, !tbaa !1585
  %829 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 8, !dbg !1646
  store i64 %828, ptr %829, align 8, !dbg !1647, !tbaa !1648
  %830 = load i64, ptr %786, align 8, !dbg !1649, !tbaa !1590
  %831 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 9, !dbg !1650
  store i64 %830, ptr %831, align 8, !dbg !1651, !tbaa !1652
  %832 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 2, !dbg !1653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %832, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1654, !tbaa.struct !1317
  %833 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 5, !dbg !1655
  %834 = load i8, ptr %833, align 8, !dbg !1655, !tbaa !431, !range !859, !noundef !860
  %835 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 10, !dbg !1656
  store i8 %834, ptr %835, align 8, !dbg !1657, !tbaa !1658
  %836 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %5, i64 noundef 120) #14, !dbg !1659
  br label %837, !dbg !1660

837:                                              ; preds = %809, %796, %793, %780, %759
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #14, !dbg !1660
  call void @llvm.dbg.value(metadata ptr %0, metadata !1661, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %12, metadata !1666, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %636, metadata !1667, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %757, metadata !1668, metadata !DIExpression()), !dbg !1670
  br i1 %755, label %862, label %838, !dbg !1672

838:                                              ; preds = %837
  %839 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1674
  %840 = load i8, ptr %839, align 2, !dbg !1674, !tbaa !1010
  %841 = and i8 %840, -2, !dbg !1675
  %842 = icmp eq i8 %841, 2, !dbg !1675
  br i1 %842, label %843, label %862, !dbg !1675

843:                                              ; preds = %838
  %844 = getelementptr inbounds %struct.flow_state, ptr %756, i64 0, i32 8, !dbg !1676
  %845 = load i8, ptr %844, align 4, !dbg !1676, !tbaa !1544, !range !859, !noundef !860
  call void @llvm.dbg.value(metadata i8 %845, metadata !1669, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  %846 = call i64 inttoptr (i64 3 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %596) #14, !dbg !1678
  %847 = icmp ne i64 %846, 0, !dbg !1678
  %848 = icmp eq i8 %845, 0
  %849 = or i1 %848, %847, !dbg !1680
  call void @llvm.dbg.value(metadata i1 %848, metadata !1669, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  br i1 %849, label %862, label %850, !dbg !1680

850:                                              ; preds = %843
  call void @llvm.dbg.value(metadata ptr %0, metadata !1681, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata ptr %12, metadata !1686, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i1 false, metadata !1687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1689
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1688, metadata !DIExpression()), !dbg !1692
  store i64 1, ptr %4, align 8, !dbg !1693, !tbaa !1570
  %851 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 1, !dbg !1693
  %852 = load i64, ptr %14, align 8, !dbg !1694, !tbaa !685
  store i64 %852, ptr %851, align 8, !dbg !1693, !tbaa !1573
  %853 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 2, !dbg !1693
  %854 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 3, !dbg !1693
  %855 = load i8, ptr %839, align 2, !dbg !1695, !tbaa !1010
  store i8 %855, ptr %854, align 4, !dbg !1693, !tbaa !1575
  %856 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 4, !dbg !1693
  %857 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1696
  %858 = load i8, ptr %857, align 1, !dbg !1696, !tbaa !1013
  store i8 %858, ptr %856, align 1, !dbg !1693, !tbaa !1577
  %859 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 5, !dbg !1693
  %860 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 6, !dbg !1693
  store i8 0, ptr %860, align 1, !dbg !1693, !tbaa !1579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %853, ptr noundef nonnull align 4 dereferenceable(44) %581, i64 44, i1 false), !dbg !1697
  store i8 1, ptr %859, align 2, !dbg !1697, !tbaa !1578
  %861 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %4, i64 noundef 64) #14, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14, !dbg !1700
  br label %862, !dbg !1701

862:                                              ; preds = %850, %843, %838, %837
  br i1 %758, label %886, label %863, !dbg !1702

863:                                              ; preds = %862
  %864 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1704
  %865 = load i8, ptr %864, align 2, !dbg !1704, !tbaa !1010
  %866 = icmp eq i8 %865, 3, !dbg !1705
  br i1 %866, label %867, label %886, !dbg !1706

867:                                              ; preds = %863
  %868 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 8, !dbg !1707
  %869 = load i8, ptr %868, align 4, !dbg !1707, !tbaa !1544, !range !859, !noundef !860
  call void @llvm.dbg.value(metadata i8 %869, metadata !1669, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  %870 = call i64 inttoptr (i64 3 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %581) #14, !dbg !1709
  %871 = icmp ne i64 %870, 0, !dbg !1709
  %872 = icmp eq i8 %869, 0
  %873 = or i1 %872, %871, !dbg !1711
  call void @llvm.dbg.value(metadata i1 %872, metadata !1669, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1670
  br i1 %873, label %886, label %874, !dbg !1711

874:                                              ; preds = %867
  call void @llvm.dbg.value(metadata ptr %0, metadata !1681, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata ptr %12, metadata !1686, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i1 true, metadata !1687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1712
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14, !dbg !1714
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1688, metadata !DIExpression()), !dbg !1715
  store i64 1, ptr %3, align 8, !dbg !1716, !tbaa !1570
  %875 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 1, !dbg !1716
  %876 = load i64, ptr %14, align 8, !dbg !1717, !tbaa !685
  store i64 %876, ptr %875, align 8, !dbg !1716, !tbaa !1573
  %877 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 2, !dbg !1716
  %878 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 3, !dbg !1716
  %879 = load i8, ptr %864, align 2, !dbg !1718, !tbaa !1010
  store i8 %879, ptr %878, align 4, !dbg !1716, !tbaa !1575
  %880 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 4, !dbg !1716
  %881 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1719
  %882 = load i8, ptr %881, align 1, !dbg !1719, !tbaa !1013
  store i8 %882, ptr %880, align 1, !dbg !1716, !tbaa !1577
  %883 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 5, !dbg !1716
  %884 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 6, !dbg !1716
  store i8 0, ptr %884, align 1, !dbg !1716, !tbaa !1579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %877, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1720
  store i8 0, ptr %883, align 2, !dbg !1720, !tbaa !1578
  %885 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %3, i64 noundef 64) #14, !dbg !1721
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14, !dbg !1722
  br label %886, !dbg !1723

886:                                              ; preds = %874, %867, %863, %862, %530, %525, %522, %515, %492, %487, %484, %424, %146, %140, %136, %121, %44, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #14, !dbg !1724
  ret void, !dbg !1724
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind memory(none)
declare i1 @llvm.bpf.passthrough.i1.i1(i32, i1) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @tracked_protocols_to_str(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.pping_config, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.bpf_config, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = trunc i8 %8 to i1
  %10 = zext i1 %9 to i8
  store i8 %10, ptr %3, align 1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.pping_config, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.bpf_config, ptr %12, i32 0, i32 4
  %14 = load i8, ptr %13, align 2
  %15 = trunc i8 %14 to i1
  %16 = zext i1 %15 to i8
  store i8 %16, ptr %4, align 1
  %17 = load i8, ptr %3, align 1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i8, ptr %4, align 1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %28

23:                                               ; preds = %19, %1
  %24 = load i8, ptr %3, align 1
  %25 = trunc i8 %24 to i1
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, ptr @.str.1, ptr @.str.2
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi ptr [ @.str, %22 ], [ %27, %23 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @output_format_to_str(i32 noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %8 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
  ]

5:                                                ; preds = %1
  store ptr @.str.3, ptr %2, align 8
  br label %9

6:                                                ; preds = %1
  store ptr @.str.4, ptr %2, align 8
  br label %9

7:                                                ; preds = %1
  store ptr @.str.5, ptr %2, align 8
  br label %9

8:                                                ; preds = %1
  store ptr @.str.6, ptr %2, align 8
  br label %9

9:                                                ; preds = %8, %7, %6, %5
  %10 = load ptr, ptr %2, align 8
  ret ptr %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abort_program(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store volatile i32 0, ptr @keep_running, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.bpf_tc_opts, align 8
  %11 = alloca %struct.bpf_tc_opts, align 8
  %12 = alloca %struct.pping_config, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 0, ptr %6, align 4
  store ptr null, ptr %8, align 8
  store ptr null, ptr %9, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.bpf_tc_opts, ptr %10, i32 0, i32 0
  store i64 32, ptr %13, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 32, i1 false)
  %14 = getelementptr inbounds %struct.bpf_tc_opts, ptr %11, i32 0, i32 0
  store i64 32, ptr %14, align 8
  %15 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 0
  %16 = getelementptr inbounds %struct.bpf_config, ptr %15, i32 0, i32 0
  store i64 100000000, ptr %16, align 8
  %17 = getelementptr inbounds %struct.bpf_config, ptr %15, i32 0, i32 1
  store i64 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.bpf_config, ptr %15, i32 0, i32 2
  store i8 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.bpf_config, ptr %15, i32 0, i32 3
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.bpf_config, ptr %15, i32 0, i32 4
  store i8 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.bpf_config, ptr %15, i32 0, i32 5
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.bpf_config, ptr %15, i32 0, i32 6
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %10, i64 32, i1 false)
  %24 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %11, i64 32, i1 false)
  %25 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 3
  store i64 1000000000, ptr %25, align 8
  %26 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 4
  store ptr @.str.7, ptr %26, align 8
  %27 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 5
  store ptr @.str.8, ptr %27, align 8
  %28 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 6
  store ptr @.str.9, ptr %28, align 8
  %29 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 7
  store ptr @.str.10, ptr %29, align 8
  %30 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 8
  store ptr @.str.11, ptr %30, align 8
  %31 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 9
  store ptr @.str.12, ptr %31, align 8
  %32 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 10
  store i32 1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 11
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 12
  store i32 0, ptr %34, align 8
  %35 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 13
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 14
  call void @llvm.memset.p0.i64(ptr align 8 %36, i8 0, i64 16, i1 false)
  %37 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 15
  store i32 0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 16
  store i8 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 17
  store i8 0, ptr %39, align 1
  %40 = call i32 @geteuid() #14
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  store i32 1, ptr %3, align 4
  br label %236

44:                                               ; preds = %2
  %45 = call i32 @set_rlimit(i64 noundef -1)
  store i32 %45, ptr %6, align 4
  %46 = load i32, ptr %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load ptr, ptr @stderr, align 8
  %50 = load i32, ptr %6, align 4
  %51 = call ptr @get_libbpf_strerror(i32 noundef %50)
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.14, ptr noundef %51)
  store i32 1, ptr %3, align 4
  br label %236

53:                                               ; preds = %44
  %54 = load i32, ptr %4, align 4
  %55 = load ptr, ptr %5, align 8
  %56 = call i32 @parse_arguments(i32 noundef %54, ptr noundef %55, ptr noundef %12)
  store i32 %56, ptr %6, align 4
  %57 = load i32, ptr %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load ptr, ptr @stderr, align 8
  %61 = load i32, ptr %6, align 4
  %62 = call ptr @get_libbpf_strerror(i32 noundef %61)
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.15, ptr noundef %62)
  %64 = load ptr, ptr %5, align 8
  call void @print_usage(ptr noundef %64)
  store i32 1, ptr %3, align 4
  br label %236

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 0
  %67 = getelementptr inbounds %struct.bpf_config, ptr %66, i32 0, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = trunc i8 %68 to i1
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 0
  %72 = getelementptr inbounds %struct.bpf_config, ptr %71, i32 0, i32 4
  %73 = load i8, ptr %72, align 2
  %74 = trunc i8 %73 to i1
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 0
  %77 = getelementptr inbounds %struct.bpf_config, ptr %76, i32 0, i32 3
  store i8 1, ptr %77, align 1
  br label %78

78:                                               ; preds = %75, %70, %65
  %79 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 0
  %80 = getelementptr inbounds %struct.bpf_config, ptr %79, i32 0, i32 4
  %81 = load i8, ptr %80, align 2
  %82 = trunc i8 %81 to i1
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 15
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load ptr, ptr @stderr, align 8
  %89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.16)
  br label %90

90:                                               ; preds = %87, %83, %78
  %91 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 15
  %92 = load i32, ptr %91, align 8
  switch i32 %92, label %96 [
    i32 0, label %93
    i32 1, label %94
    i32 2, label %95
  ]

93:                                               ; preds = %90
  store ptr @print_event_standard, ptr @print_event_func, align 8
  br label %96

94:                                               ; preds = %90
  store ptr @print_event_json, ptr @print_event_func, align 8
  br label %96

95:                                               ; preds = %90
  store ptr @print_event_ppviz, ptr @print_event_func, align 8
  br label %96

96:                                               ; preds = %95, %94, %93, %90
  %97 = load ptr, ptr @stderr, align 8
  %98 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 15
  %99 = load i32, ptr %98, align 8
  %100 = call ptr @output_format_to_str(i32 noundef %99)
  %101 = call ptr @tracked_protocols_to_str(ptr noundef %12)
  %102 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 14
  %103 = getelementptr inbounds [16 x i8], ptr %102, i64 0, i64 0
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.17, ptr noundef %100, ptr noundef %101, ptr noundef %103)
  %105 = call i32 @load_attach_bpfprogs(ptr noundef %8, ptr noundef %12)
  store i32 %105, ptr %6, align 4
  %106 = load i32, ptr %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %96
  %109 = load ptr, ptr @stderr, align 8
  %110 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 4
  %111 = load ptr, ptr %110, align 8
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.18, ptr noundef %111)
  store i32 1, ptr %3, align 4
  br label %236

113:                                              ; preds = %96
  %114 = load ptr, ptr %8, align 8
  %115 = call i32 @setup_periodical_map_cleaning(ptr noundef %114, ptr noundef %12)
  store i32 %115, ptr %6, align 4
  %116 = load i32, ptr %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load ptr, ptr @stderr, align 8
  %120 = load i32, ptr %6, align 4
  %121 = call ptr @get_libbpf_strerror(i32 noundef %120)
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef @.str.19, ptr noundef %121)
  br label %173

123:                                              ; preds = %113
  %124 = load ptr, ptr %8, align 8
  %125 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 9
  %126 = load ptr, ptr %125, align 8
  %127 = call i32 @bpf_object__find_map_fd_by_name(ptr noundef %124, ptr noundef %126)
  %128 = call ptr @perf_buffer__new(i32 noundef %127, i64 noundef 64, ptr noundef @handle_event, ptr noundef @handle_missed_events, ptr noundef null, ptr noundef null)
  store ptr %128, ptr %9, align 8
  %129 = load ptr, ptr %9, align 8
  %130 = call i64 @libbpf_get_error(ptr noundef %129)
  %131 = trunc i64 %130 to i32
  store i32 %131, ptr %6, align 4
  %132 = load i32, ptr %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %123
  %135 = load ptr, ptr @stderr, align 8
  %136 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 9
  %137 = load ptr, ptr %136, align 8
  %138 = load i32, ptr %6, align 4
  %139 = call ptr @get_libbpf_strerror(i32 noundef %138)
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.20, ptr noundef %137, ptr noundef %139)
  br label %173

141:                                              ; preds = %123
  %142 = call ptr @signal(i32 noundef 2, ptr noundef @abort_program) #14
  %143 = call ptr @signal(i32 noundef 15, ptr noundef @abort_program) #14
  br label %144

144:                                              ; preds = %161, %141
  %145 = load volatile i32, ptr @keep_running, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load ptr, ptr %9, align 8
  %149 = call i32 @perf_buffer__poll(ptr noundef %148, i32 noundef 100)
  store i32 %149, ptr %6, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load volatile i32, ptr @keep_running, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load ptr, ptr @stderr, align 8
  %156 = load i32, ptr %6, align 4
  %157 = sub nsw i32 0, %156
  %158 = call ptr @get_libbpf_strerror(i32 noundef %157)
  %159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.21, ptr noundef %158)
  br label %160

160:                                              ; preds = %154, %151
  br label %162

161:                                              ; preds = %147
  br label %144, !llvm.loop !1725

162:                                              ; preds = %160, %144
  %163 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 15
  %164 = load i32, ptr %163, align 8
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load ptr, ptr @json_ctx, align 8
  %168 = icmp ne ptr %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load ptr, ptr @json_ctx, align 8
  call void @jsonw_end_array(ptr noundef %170)
  call void @jsonw_destroy(ptr noundef @json_ctx)
  br label %171

171:                                              ; preds = %169, %166, %162
  %172 = load ptr, ptr %9, align 8
  call void @perf_buffer__free(ptr noundef %172)
  br label %173

173:                                              ; preds = %171, %134, %118
  %174 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 5
  %175 = load ptr, ptr %174, align 8
  %176 = call i32 @strcmp(ptr noundef %175, ptr noundef @.str.8) #15
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 11
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 10
  %182 = load i32, ptr %181, align 8
  %183 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 12
  %184 = load i32, ptr %183, align 8
  %185 = call i32 @xdp_detach(i32 noundef %180, i32 noundef %182, i32 noundef %184)
  store i32 %185, ptr %7, align 4
  br label %191

186:                                              ; preds = %173
  %187 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 11
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 1
  %190 = call i32 @tc_detach(i32 noundef %188, i32 noundef 1, ptr noundef %189, i1 noundef zeroext false)
  store i32 %190, ptr %7, align 4
  br label %191

191:                                              ; preds = %186, %178
  %192 = load i32, ptr %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load ptr, ptr @stderr, align 8
  %196 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 14
  %197 = getelementptr inbounds [16 x i8], ptr %196, i64 0, i64 0
  %198 = load i32, ptr %7, align 4
  %199 = call ptr @get_libbpf_strerror(i32 noundef %198)
  %200 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef @.str.22, ptr noundef %197, ptr noundef %199)
  br label %201

201:                                              ; preds = %194, %191
  %202 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 11
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 2
  %205 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 16
  %206 = load i8, ptr %205, align 4
  %207 = trunc i8 %206 to i1
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 17
  %210 = load i8, ptr %209, align 1
  %211 = trunc i8 %210 to i1
  br label %212

212:                                              ; preds = %208, %201
  %213 = phi i1 [ false, %201 ], [ %211, %208 ]
  %214 = call i32 @tc_detach(i32 noundef %203, i32 noundef 2, ptr noundef %204, i1 noundef zeroext %213)
  store i32 %214, ptr %7, align 4
  %215 = load i32, ptr %7, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load ptr, ptr @stderr, align 8
  %219 = getelementptr inbounds %struct.pping_config, ptr %12, i32 0, i32 14
  %220 = getelementptr inbounds [16 x i8], ptr %219, i64 0, i64 0
  %221 = load i32, ptr %7, align 4
  %222 = call ptr @get_libbpf_strerror(i32 noundef %221)
  %223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef @.str.23, ptr noundef %220, ptr noundef %222)
  br label %224

224:                                              ; preds = %217, %212
  %225 = load i32, ptr %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load volatile i32, ptr @keep_running, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %227, %224
  %231 = load i32, ptr %7, align 4
  %232 = icmp ne i32 %231, 0
  br label %233

233:                                              ; preds = %230, %227
  %234 = phi i1 [ true, %227 ], [ %232, %230 ]
  %235 = zext i1 %234 to i32
  store i32 %235, ptr %3, align 4
  br label %236

236:                                              ; preds = %233, %108, %59, %48, %42
  %237 = load i32, ptr %3, align 4
  ret i32 %237
}

; Function Attrs: nounwind
declare i32 @geteuid() #7

declare i32 @printf(ptr noundef, ...) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rlimit(i64 noundef %0) #6 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec, align 8
  store i64 %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 0
  %5 = load i64, ptr %2, align 8
  store i64 %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 1
  %7 = load i64, ptr %2, align 8
  store i64 %7, ptr %6, align 8
  %8 = call i32 @setrlimit(i32 noundef 8, ptr noundef %3) #14
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = call ptr @__errno_location() #16
  %13 = load i32, ptr %12, align 4
  %14 = sub nsw i32 0, %13
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ 0, %10 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_libbpf_strerror(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 @libbpf_strerror(i32 noundef %3, ptr noundef @get_libbpf_strerror.buf, i64 noundef 200)
  ret ptr @get_libbpf_strerror.buf
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_arguments(i32 noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr inbounds %struct.pping_config, ptr %13, i32 0, i32 11
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds %struct.pping_config, ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.bpf_config, ptr %16, i32 0, i32 5
  store i8 1, ptr %17, align 1
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.pping_config, ptr %18, i32 0, i32 16
  store i8 0, ptr %19, align 4
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds %struct.pping_config, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.bpf_config, ptr %21, i32 0, i32 3
  store i8 0, ptr %22, align 1
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds %struct.pping_config, ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.bpf_config, ptr %24, i32 0, i32 4
  store i8 0, ptr %25, align 2
  br label %26

26:                                               ; preds = %204, %3
  %27 = load i32, ptr %5, align 4
  %28 = load ptr, ptr %6, align 8
  %29 = call i32 @getopt_long(i32 noundef %27, ptr noundef %28, ptr noundef @.str.24, ptr noundef @long_options, ptr noundef null) #14
  store i32 %29, ptr %9, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %205

31:                                               ; preds = %26
  %32 = load i32, ptr %9, align 4
  switch i32 %32, label %196 [
    i32 105, label %33
    i32 114, label %69
    i32 82, label %82
    i32 116, label %95
    i32 99, label %116
    i32 70, label %128
    i32 73, label %155
    i32 108, label %174
    i32 102, label %178
    i32 84, label %185
    i32 67, label %189
    i32 104, label %193
  ]

33:                                               ; preds = %31
  %34 = load ptr, ptr @optarg, align 8
  %35 = call i64 @strlen(ptr noundef %34) #15
  %36 = icmp ugt i64 %35, 16
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load ptr, ptr @stderr, align 8
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.25)
  store i32 -22, ptr %4, align 4
  br label %214

40:                                               ; preds = %33
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds %struct.pping_config, ptr %41, i32 0, i32 14
  %43 = getelementptr inbounds [16 x i8], ptr %42, i64 0, i64 0
  %44 = load ptr, ptr @optarg, align 8
  %45 = call ptr @strncpy(ptr noundef %43, ptr noundef %44, i64 noundef 16) #14
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.pping_config, ptr %46, i32 0, i32 14
  %48 = getelementptr inbounds [16 x i8], ptr %47, i64 0, i64 0
  %49 = call i32 @if_nametoindex(ptr noundef %48) #14
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds %struct.pping_config, ptr %50, i32 0, i32 11
  store i32 %49, ptr %51, align 4
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds %struct.pping_config, ptr %52, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %40
  %57 = call ptr @__errno_location() #16
  %58 = load i32, ptr %57, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, ptr %8, align 4
  %60 = load ptr, ptr @stderr, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = getelementptr inbounds %struct.pping_config, ptr %61, i32 0, i32 14
  %63 = getelementptr inbounds [16 x i8], ptr %62, i64 0, i64 0
  %64 = load i32, ptr %8, align 4
  %65 = call ptr @get_libbpf_strerror(i32 noundef %64)
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.26, ptr noundef %63, ptr noundef %65)
  %67 = load i32, ptr %8, align 4
  store i32 %67, ptr %4, align 4
  br label %214

68:                                               ; preds = %40
  br label %204

69:                                               ; preds = %31
  %70 = load ptr, ptr @optarg, align 8
  %71 = call i32 @parse_bounded_double(ptr noundef %10, ptr noundef %70, double noundef 0.000000e+00, double noundef 6.048000e+08, ptr noundef @.str.27)
  store i32 %71, ptr %8, align 4
  %72 = load i32, ptr %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -22, ptr %4, align 4
  br label %214

75:                                               ; preds = %69
  %76 = load double, ptr %10, align 8
  %77 = fmul double %76, 1.000000e+06
  %78 = fptoui double %77 to i64
  %79 = load ptr, ptr %7, align 8
  %80 = getelementptr inbounds %struct.pping_config, ptr %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.bpf_config, ptr %80, i32 0, i32 0
  store i64 %78, ptr %81, align 8
  br label %204

82:                                               ; preds = %31
  %83 = load ptr, ptr @optarg, align 8
  %84 = call i32 @parse_bounded_double(ptr noundef %12, ptr noundef %83, double noundef 0.000000e+00, double noundef 1.000000e+04, ptr noundef @.str.28)
  store i32 %84, ptr %8, align 4
  %85 = load i32, ptr %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -22, ptr %4, align 4
  br label %214

88:                                               ; preds = %82
  %89 = load double, ptr %12, align 8
  %90 = fmul double %89, 6.553600e+04
  %91 = fptoui double %90 to i64
  %92 = load ptr, ptr %7, align 8
  %93 = getelementptr inbounds %struct.pping_config, ptr %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.bpf_config, ptr %93, i32 0, i32 1
  store i64 %91, ptr %94, align 8
  br label %204

95:                                               ; preds = %31
  %96 = load ptr, ptr @optarg, align 8
  %97 = call i32 @strcmp(ptr noundef %96, ptr noundef @.str.29) #15
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load ptr, ptr %7, align 8
  %101 = getelementptr inbounds %struct.pping_config, ptr %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.bpf_config, ptr %101, i32 0, i32 2
  store i8 0, ptr %102, align 8
  br label %115

103:                                              ; preds = %95
  %104 = load ptr, ptr @optarg, align 8
  %105 = call i32 @strcmp(ptr noundef %104, ptr noundef @.str.30) #15
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load ptr, ptr %7, align 8
  %109 = getelementptr inbounds %struct.pping_config, ptr %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.bpf_config, ptr %109, i32 0, i32 2
  store i8 1, ptr %110, align 8
  br label %114

111:                                              ; preds = %103
  %112 = load ptr, ptr @stderr, align 8
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.31)
  store i32 -22, ptr %4, align 4
  br label %214

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %99
  br label %204

116:                                              ; preds = %31
  %117 = load ptr, ptr @optarg, align 8
  %118 = call i32 @parse_bounded_double(ptr noundef %11, ptr noundef %117, double noundef 0.000000e+00, double noundef 6.048000e+05, ptr noundef @.str.32)
  store i32 %118, ptr %8, align 4
  %119 = load i32, ptr %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 -22, ptr %4, align 4
  br label %214

122:                                              ; preds = %116
  %123 = load double, ptr %11, align 8
  %124 = fmul double %123, 1.000000e+09
  %125 = fptoui double %124 to i64
  %126 = load ptr, ptr %7, align 8
  %127 = getelementptr inbounds %struct.pping_config, ptr %126, i32 0, i32 3
  store i64 %125, ptr %127, align 8
  br label %204

128:                                              ; preds = %31
  %129 = load ptr, ptr @optarg, align 8
  %130 = call i32 @strcmp(ptr noundef %129, ptr noundef @.str.3) #15
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load ptr, ptr %7, align 8
  %134 = getelementptr inbounds %struct.pping_config, ptr %133, i32 0, i32 15
  store i32 0, ptr %134, align 8
  br label %154

135:                                              ; preds = %128
  %136 = load ptr, ptr @optarg, align 8
  %137 = call i32 @strcmp(ptr noundef %136, ptr noundef @.str.4) #15
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load ptr, ptr %7, align 8
  %141 = getelementptr inbounds %struct.pping_config, ptr %140, i32 0, i32 15
  store i32 1, ptr %141, align 8
  br label %153

142:                                              ; preds = %135
  %143 = load ptr, ptr @optarg, align 8
  %144 = call i32 @strcmp(ptr noundef %143, ptr noundef @.str.5) #15
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load ptr, ptr %7, align 8
  %148 = getelementptr inbounds %struct.pping_config, ptr %147, i32 0, i32 15
  store i32 2, ptr %148, align 8
  br label %152

149:                                              ; preds = %142
  %150 = load ptr, ptr @stderr, align 8
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.33)
  store i32 -22, ptr %4, align 4
  br label %214

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %139
  br label %154

154:                                              ; preds = %153, %132
  br label %204

155:                                              ; preds = %31
  %156 = load ptr, ptr @optarg, align 8
  %157 = call i32 @strcmp(ptr noundef %156, ptr noundef @.str.34) #15
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load ptr, ptr %7, align 8
  %161 = getelementptr inbounds %struct.pping_config, ptr %160, i32 0, i32 5
  store ptr @.str.8, ptr %161, align 8
  br label %173

162:                                              ; preds = %155
  %163 = load ptr, ptr @optarg, align 8
  %164 = call i32 @strcmp(ptr noundef %163, ptr noundef @.str.35) #15
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load ptr, ptr %7, align 8
  %168 = getelementptr inbounds %struct.pping_config, ptr %167, i32 0, i32 5
  store ptr @.str.36, ptr %168, align 8
  br label %172

169:                                              ; preds = %162
  %170 = load ptr, ptr @stderr, align 8
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef @.str.37)
  store i32 -22, ptr %4, align 4
  br label %214

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %159
  br label %204

174:                                              ; preds = %31
  %175 = load ptr, ptr %7, align 8
  %176 = getelementptr inbounds %struct.pping_config, ptr %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.bpf_config, ptr %176, i32 0, i32 5
  store i8 0, ptr %177, align 1
  br label %204

178:                                              ; preds = %31
  %179 = load ptr, ptr %7, align 8
  %180 = getelementptr inbounds %struct.pping_config, ptr %179, i32 0, i32 16
  store i8 1, ptr %180, align 4
  %181 = load ptr, ptr %7, align 8
  %182 = getelementptr inbounds %struct.pping_config, ptr %181, i32 0, i32 10
  %183 = load i32, ptr %182, align 8
  %184 = and i32 %183, -2
  store i32 %184, ptr %182, align 8
  br label %204

185:                                              ; preds = %31
  %186 = load ptr, ptr %7, align 8
  %187 = getelementptr inbounds %struct.pping_config, ptr %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.bpf_config, ptr %187, i32 0, i32 3
  store i8 1, ptr %188, align 1
  br label %204

189:                                              ; preds = %31
  %190 = load ptr, ptr %7, align 8
  %191 = getelementptr inbounds %struct.pping_config, ptr %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.bpf_config, ptr %191, i32 0, i32 4
  store i8 1, ptr %192, align 2
  br label %204

193:                                              ; preds = %31
  %194 = call i32 (ptr, ...) @printf(ptr noundef @.str.38)
  %195 = load ptr, ptr %6, align 8
  call void @print_usage(ptr noundef %195)
  call void @exit(i32 noundef 0) #17
  unreachable

196:                                              ; preds = %31
  %197 = load ptr, ptr @stderr, align 8
  %198 = load ptr, ptr %6, align 8
  %199 = load i32, ptr @optind, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds ptr, ptr %198, i64 %200
  %202 = load ptr, ptr %201, align 8
  %203 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef @.str.39, ptr noundef %202)
  store i32 -22, ptr %4, align 4
  br label %214

204:                                              ; preds = %189, %185, %178, %174, %173, %154, %122, %115, %88, %75, %68
  br label %26, !llvm.loop !1727

205:                                              ; preds = %26
  %206 = load ptr, ptr %7, align 8
  %207 = getelementptr inbounds %struct.pping_config, ptr %206, i32 0, i32 11
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load ptr, ptr @stderr, align 8
  %212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef @.str.40)
  store i32 -22, ptr %4, align 4
  br label %214

213:                                              ; preds = %205
  store i32 0, ptr %4, align 4
  br label %214

214:                                              ; preds = %213, %210, %196, %169, %149, %121, %111, %87, %74, %56, %37
  %215 = load i32, ptr %4, align 4
  ret i32 %215
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_usage(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr @__doc__, align 8
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.52, ptr noundef %4)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds ptr, ptr %7, i64 0
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.54, ptr noundef %9)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.55)
  store i32 0, ptr %3, align 4
  br label %12

12:                                               ; preds = %49, %1
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [13 x %struct.option], ptr @long_options, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.option, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 16
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = load i32, ptr %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [13 x %struct.option], ptr @long_options, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.option, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 16
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.56, ptr noundef %24)
  %26 = load i32, ptr %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [13 x %struct.option], ptr @long_options, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.option, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 16
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load i32, ptr %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [13 x %struct.option], ptr @long_options, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.option, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 16
  %38 = load i32, ptr %37, align 4
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, i32 noundef %38)
  br label %47

40:                                               ; preds = %19
  %41 = load i32, ptr %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [13 x %struct.option], ptr @long_options, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.option, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.58, i32 noundef %45)
  br label %47

47:                                               ; preds = %40, %32
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %3, align 4
  br label %12, !llvm.loop !1728

52:                                               ; preds = %12
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event_standard(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, 2
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = load ptr, ptr @stdout, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.rtt_event, ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  call void @print_ns_datetime(ptr noundef %7, i64 noundef %10)
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.rtt_event, ptr %11, i32 0, i32 4
  %13 = load i64, ptr %12, align 8
  %14 = udiv i64 %13, 1000000
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.rtt_event, ptr %15, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = urem i64 %17, 1000000
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.rtt_event, ptr %19, i32 0, i32 5
  %21 = load i64, ptr %20, align 8
  %22 = udiv i64 %21, 1000000
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.rtt_event, ptr %23, i32 0, i32 5
  %25 = load i64, ptr %24, align 8
  %26 = urem i64 %25, 1000000
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.rtt_event, ptr %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.network_tuple, ptr %28, i32 0, i32 2
  %30 = load i16, ptr %29, align 8
  %31 = call ptr @proto_to_str(i16 noundef zeroext %30)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.60, i64 noundef %14, i64 noundef %18, i64 noundef %22, i64 noundef %26, ptr noundef %31)
  %33 = load ptr, ptr @stdout, align 8
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.rtt_event, ptr %34, i32 0, i32 2
  call void @print_flow_ppvizformat(ptr noundef %33, ptr noundef %35)
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  br label %69

37:                                               ; preds = %1
  %38 = load ptr, ptr %2, align 8
  %39 = load i64, ptr %38, align 8
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load ptr, ptr @stdout, align 8
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.flow_event, ptr %43, i32 0, i32 1
  %45 = load i64, ptr %44, align 8
  call void @print_ns_datetime(ptr noundef %42, i64 noundef %45)
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.rtt_event, ptr %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.network_tuple, ptr %47, i32 0, i32 2
  %49 = load i16, ptr %48, align 8
  %50 = call ptr @proto_to_str(i16 noundef zeroext %49)
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.61, ptr noundef %50)
  %52 = load ptr, ptr @stdout, align 8
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.flow_event, ptr %53, i32 0, i32 2
  call void @print_flow_ppvizformat(ptr noundef %52, ptr noundef %54)
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.flow_event, ptr %55, i32 0, i32 3
  %57 = load i8, ptr %56, align 4
  %58 = call ptr @flowevent_to_str(i8 noundef zeroext %57)
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr inbounds %struct.flow_event, ptr %59, i32 0, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = call ptr @eventreason_to_str(i8 noundef zeroext %61)
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds %struct.flow_event, ptr %63, i32 0, i32 5
  %65 = load i8, ptr %64, align 2
  %66 = call ptr @eventsource_to_str(i8 noundef zeroext %65)
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.62, ptr noundef %58, ptr noundef %62, ptr noundef %66)
  br label %68

68:                                               ; preds = %41, %37
  br label %69

69:                                               ; preds = %68, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event_json(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %3, align 8
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %33

11:                                               ; preds = %6, %1
  %12 = load ptr, ptr @json_ctx, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @stdout, align 8
  %16 = call ptr @jsonw_new(ptr noundef %15)
  store ptr %16, ptr @json_ctx, align 8
  %17 = load ptr, ptr @json_ctx, align 8
  call void @jsonw_start_array(ptr noundef %17)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load ptr, ptr @json_ctx, align 8
  call void @jsonw_start_object(ptr noundef %19)
  %20 = load ptr, ptr @json_ctx, align 8
  %21 = load ptr, ptr %2, align 8
  call void @print_common_fields_json(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %2, align 8
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load ptr, ptr @json_ctx, align 8
  %27 = load ptr, ptr %2, align 8
  call void @print_rttevent_fields_json(ptr noundef %26, ptr noundef %27)
  br label %31

28:                                               ; preds = %18
  %29 = load ptr, ptr @json_ctx, align 8
  %30 = load ptr, ptr %2, align 8
  call void @print_flowevent_fields_json(ptr noundef %29, ptr noundef %30)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load ptr, ptr @json_ctx, align 8
  call void @jsonw_end_object(ptr noundef %32)
  br label %33

33:                                               ; preds = %31, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event_ppviz(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = load i64, ptr %5, align 8
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  store ptr %10, ptr %3, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.rtt_event, ptr %11, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = call i64 @convert_monotonic_to_realtime(i64 noundef %13)
  store i64 %14, ptr %4, align 8
  %15 = load i64, ptr %4, align 8
  %16 = udiv i64 %15, 1000000000
  %17 = load i64, ptr %4, align 8
  %18 = urem i64 %17, 1000000000
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.rtt_event, ptr %19, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = udiv i64 %21, 1000000000
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.rtt_event, ptr %23, i32 0, i32 4
  %25 = load i64, ptr %24, align 8
  %26 = urem i64 %25, 1000000000
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.rtt_event, ptr %27, i32 0, i32 5
  %29 = load i64, ptr %28, align 8
  %30 = udiv i64 %29, 1000000000
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.rtt_event, ptr %31, i32 0, i32 5
  %33 = load i64, ptr %32, align 8
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.97, i64 noundef %16, i64 noundef %18, i64 noundef %22, i64 noundef %26, i64 noundef %30, i64 noundef %33)
  %35 = load ptr, ptr @stdout, align 8
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.rtt_event, ptr %36, i32 0, i32 2
  call void @print_flow_ppvizformat(ptr noundef %35, ptr noundef %37)
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  br label %39

39:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_attach_bpfprogs(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.pping_config, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = call ptr @bpf_object__open(ptr noundef %10)
  %12 = load ptr, ptr %4, align 8
  store ptr %11, ptr %12, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i64 @libbpf_get_error(ptr noundef %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load ptr, ptr @stderr, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.pping_config, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %6, align 4
  %25 = call ptr @get_libbpf_strerror(i32 noundef %24)
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.98, ptr noundef %23, ptr noundef %25)
  %27 = load i32, ptr %6, align 4
  store i32 %27, ptr %3, align 4
  br label %181

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.pping_config, ptr %31, i32 0, i32 0
  %33 = call i32 @init_rodata(ptr noundef %30, ptr noundef %32, i64 noundef 24)
  store i32 %33, ptr %6, align 4
  %34 = load i32, ptr %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load ptr, ptr @stderr, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.pping_config, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = load i32, ptr %6, align 4
  %42 = call ptr @get_libbpf_strerror(i32 noundef %41)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.99, ptr noundef %40, ptr noundef %42)
  %44 = load i32, ptr %6, align 4
  store i32 %44, ptr %3, align 4
  br label %181

45:                                               ; preds = %28
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = call i32 @set_programs_to_load(ptr noundef %47, ptr noundef %48)
  %50 = load ptr, ptr %4, align 8
  %51 = load ptr, ptr %50, align 8
  %52 = call i32 @bpf_object__load(ptr noundef %51)
  store i32 %52, ptr %6, align 4
  %53 = load i32, ptr %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load ptr, ptr @stderr, align 8
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds %struct.pping_config, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 8
  %60 = load i32, ptr %6, align 4
  %61 = call ptr @get_libbpf_strerror(i32 noundef %60)
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.100, ptr noundef %59, ptr noundef %61)
  %63 = load i32, ptr %6, align 4
  store i32 %63, ptr %3, align 4
  br label %181

64:                                               ; preds = %45
  %65 = load ptr, ptr %4, align 8
  %66 = load ptr, ptr %65, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.pping_config, ptr %67, i32 0, i32 11
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.pping_config, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds %struct.pping_config, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %5, align 8
  %76 = getelementptr inbounds %struct.pping_config, ptr %75, i32 0, i32 17
  %77 = call i32 @tc_attach(ptr noundef %66, i32 noundef %69, i32 noundef 2, ptr noundef %72, ptr noundef %74, ptr noundef %76)
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds %struct.pping_config, ptr %78, i32 0, i32 13
  store i32 %77, ptr %79, align 4
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.pping_config, ptr %80, i32 0, i32 13
  %82 = load i32, ptr %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %64
  %85 = load ptr, ptr @stderr, align 8
  %86 = load ptr, ptr %5, align 8
  %87 = getelementptr inbounds %struct.pping_config, ptr %86, i32 0, i32 14
  %88 = getelementptr inbounds [16 x i8], ptr %87, i64 0, i64 0
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr inbounds %struct.pping_config, ptr %89, i32 0, i32 13
  %91 = load i32, ptr %90, align 4
  %92 = call ptr @get_libbpf_strerror(i32 noundef %91)
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.101, ptr noundef %88, ptr noundef %92)
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds %struct.pping_config, ptr %94, i32 0, i32 13
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %3, align 4
  br label %181

97:                                               ; preds = %64
  %98 = load ptr, ptr %5, align 8
  %99 = getelementptr inbounds %struct.pping_config, ptr %98, i32 0, i32 5
  %100 = load ptr, ptr %99, align 8
  %101 = call i32 @strcmp(ptr noundef %100, ptr noundef @.str.8) #15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load ptr, ptr %4, align 8
  %105 = load ptr, ptr %104, align 8
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr inbounds %struct.pping_config, ptr %106, i32 0, i32 5
  %108 = load ptr, ptr %107, align 8
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds %struct.pping_config, ptr %109, i32 0, i32 11
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds %struct.pping_config, ptr %112, i32 0, i32 10
  %114 = load i32, ptr %113, align 8
  %115 = call i32 @xdp_attach(ptr noundef %105, ptr noundef %108, i32 noundef %111, i32 noundef %114)
  %116 = load ptr, ptr %5, align 8
  %117 = getelementptr inbounds %struct.pping_config, ptr %116, i32 0, i32 12
  store i32 %115, ptr %117, align 8
  br label %132

118:                                              ; preds = %97
  %119 = load ptr, ptr %4, align 8
  %120 = load ptr, ptr %119, align 8
  %121 = load ptr, ptr %5, align 8
  %122 = getelementptr inbounds %struct.pping_config, ptr %121, i32 0, i32 11
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds %struct.pping_config, ptr %124, i32 0, i32 5
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr inbounds %struct.pping_config, ptr %127, i32 0, i32 1
  %129 = call i32 @tc_attach(ptr noundef %120, i32 noundef %123, i32 noundef 1, ptr noundef %126, ptr noundef %128, ptr noundef null)
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds %struct.pping_config, ptr %130, i32 0, i32 12
  store i32 %129, ptr %131, align 8
  br label %132

132:                                              ; preds = %118, %103
  %133 = load ptr, ptr %5, align 8
  %134 = getelementptr inbounds %struct.pping_config, ptr %133, i32 0, i32 12
  %135 = load i32, ptr %134, align 8
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %132
  %138 = load ptr, ptr @stderr, align 8
  %139 = load ptr, ptr %5, align 8
  %140 = getelementptr inbounds %struct.pping_config, ptr %139, i32 0, i32 14
  %141 = getelementptr inbounds [16 x i8], ptr %140, i64 0, i64 0
  %142 = load i32, ptr %6, align 4
  %143 = call ptr @get_libbpf_strerror(i32 noundef %142)
  %144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef @.str.102, ptr noundef %141, ptr noundef %143)
  %145 = load ptr, ptr %5, align 8
  %146 = getelementptr inbounds %struct.pping_config, ptr %145, i32 0, i32 12
  %147 = load i32, ptr %146, align 8
  store i32 %147, ptr %6, align 4
  %148 = load ptr, ptr %5, align 8
  %149 = getelementptr inbounds %struct.pping_config, ptr %148, i32 0, i32 5
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 @strcmp(ptr noundef %150, ptr noundef @.str.8) #15
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %137
  %154 = load ptr, ptr @stderr, align 8
  %155 = load i32, ptr %6, align 4
  call void @print_xdp_error_hints(ptr noundef %154, i32 noundef %155)
  br label %156

156:                                              ; preds = %153, %137
  br label %158

157:                                              ; preds = %132
  store i32 0, ptr %3, align 4
  br label %181

158:                                              ; preds = %156
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr inbounds %struct.pping_config, ptr %159, i32 0, i32 11
  %161 = load i32, ptr %160, align 4
  %162 = load ptr, ptr %5, align 8
  %163 = getelementptr inbounds %struct.pping_config, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %5, align 8
  %165 = getelementptr inbounds %struct.pping_config, ptr %164, i32 0, i32 17
  %166 = load i8, ptr %165, align 1
  %167 = trunc i8 %166 to i1
  %168 = call i32 @tc_detach(i32 noundef %161, i32 noundef 2, ptr noundef %163, i1 noundef zeroext %167)
  store i32 %168, ptr %7, align 4
  %169 = load i32, ptr %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %158
  %172 = load ptr, ptr @stderr, align 8
  %173 = load ptr, ptr %5, align 8
  %174 = getelementptr inbounds %struct.pping_config, ptr %173, i32 0, i32 14
  %175 = getelementptr inbounds [16 x i8], ptr %174, i64 0, i64 0
  %176 = load i32, ptr %7, align 4
  %177 = call ptr @get_libbpf_strerror(i32 noundef %176)
  %178 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef @.str.103, ptr noundef %175, ptr noundef %177)
  br label %179

179:                                              ; preds = %171, %158
  %180 = load i32, ptr %6, align 4
  store i32 %180, ptr %3, align 4
  br label %181

181:                                              ; preds = %179, %157, %84, %55, %36, %19
  %182 = load i32, ptr %3, align 4
  ret i32 %182
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_periodical_map_cleaning(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.map_cleanup_args, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 0
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.pping_config, ptr %10, i32 0, i32 3
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %9, align 8
  %13 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 1
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr @stderr, align 8
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.107)
  store i32 0, ptr %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.pping_config, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @bpf_object__find_map_fd_by_name(ptr noundef %22, ptr noundef %25)
  %27 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 1
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load ptr, ptr @stderr, align 8
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.pping_config, ptr %33, i32 0, i32 7
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = call ptr @get_libbpf_strerror(i32 noundef %37)
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.108, ptr noundef %35, ptr noundef %38)
  %40 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 1
  %41 = load i32, ptr %40, align 8
  store i32 %41, ptr %3, align 4
  br label %74

42:                                               ; preds = %21
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.pping_config, ptr %44, i32 0, i32 8
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @bpf_object__find_map_fd_by_name(ptr noundef %43, ptr noundef %46)
  %48 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load ptr, ptr @stderr, align 8
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds %struct.pping_config, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = call ptr @get_libbpf_strerror(i32 noundef %58)
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.108, ptr noundef %56, ptr noundef %59)
  %61 = getelementptr inbounds %struct.map_cleanup_args, ptr %7, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %3, align 4
  br label %74

63:                                               ; preds = %42
  %64 = call i32 @pthread_create(ptr noundef %6, ptr noundef null, ptr noundef @periodic_map_cleanup, ptr noundef %7) #14
  store i32 %64, ptr %8, align 4
  %65 = load i32, ptr %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load ptr, ptr @stderr, align 8
  %69 = load i32, ptr %8, align 4
  %70 = call ptr @get_libbpf_strerror(i32 noundef %69)
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.109, ptr noundef %70)
  %72 = load i32, ptr %8, align 4
  store i32 %72, ptr %3, align 4
  br label %74

73:                                               ; preds = %63
  store i32 0, ptr %3, align 4
  br label %74

74:                                               ; preds = %73, %67, %52, %31, %18
  %75 = load i32, ptr %3, align 4
  ret i32 %75
}

declare i32 @bpf_object__find_map_fd_by_name(ptr noundef, ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_event(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #6 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %10 = load ptr, ptr %7, align 8
  store ptr %10, ptr %9, align 8
  %11 = load i32, ptr %8, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %28

15:                                               ; preds = %4
  %16 = load ptr, ptr %9, align 8
  %17 = load i64, ptr %16, align 8
  switch i64 %17, label %23 [
    i64 3, label %18
    i64 2, label %20
    i64 1, label %20
  ]

18:                                               ; preds = %15
  %19 = load ptr, ptr %9, align 8
  call void @warn_map_full(ptr noundef %19)
  br label %28

20:                                               ; preds = %15, %15
  %21 = load ptr, ptr @print_event_func, align 8
  %22 = load ptr, ptr %9, align 8
  call void %21(ptr noundef %22)
  br label %28

23:                                               ; preds = %15
  %24 = load ptr, ptr @stderr, align 8
  %25 = load ptr, ptr %9, align 8
  %26 = load i64, ptr %25, align 8
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.110, i64 noundef %26)
  br label %28

28:                                               ; preds = %23, %20, %18, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_missed_events(ptr noundef %0, i32 noundef %1, i64 noundef %2) #6 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr @stderr, align 8
  %8 = load i64, ptr %6, align 8
  %9 = load i32, ptr %5, align 4
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.113, i64 noundef %8, i32 noundef %9)
  ret void
}

declare ptr @perf_buffer__new(i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #8

declare i64 @libbpf_get_error(ptr noundef) #8

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #7

declare i32 @perf_buffer__poll(ptr noundef, i32 noundef) #8

declare void @jsonw_end_array(ptr noundef) #8

declare void @jsonw_destroy(ptr noundef) #8

declare void @perf_buffer__free(ptr noundef) #8

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_detach(i32 noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %10 = load i32, ptr %5, align 4
  %11 = load i32, ptr %6, align 4
  %12 = call i32 @bpf_get_link_xdp_id(i32 noundef %10, ptr noundef %8, i32 noundef %11)
  store i32 %12, ptr %9, align 4
  %13 = load i32, ptr %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, ptr %9, align 4
  store i32 %16, ptr %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load i32, ptr %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, ptr %4, align 4
  br label %33

21:                                               ; preds = %17
  %22 = load i32, ptr %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, ptr %8, align 4
  %26 = load i32, ptr %7, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -2, ptr %4, align 4
  br label %33

29:                                               ; preds = %24, %21
  %30 = load i32, ptr %5, align 4
  %31 = load i32, ptr %6, align 4
  %32 = call i32 @bpf_set_link_xdp_fd(i32 noundef %30, i32 noundef -1, i32 noundef %31)
  store i32 %32, ptr %4, align 4
  br label %33

33:                                               ; preds = %29, %28, %20, %15
  %34 = load i32, ptr %4, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_detach(i32 noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #6 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_tc_hook, align 8
  %13 = alloca %struct.bpf_tc_opts, align 8
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  %14 = zext i1 %3 to i8
  store i8 %14, ptr %9, align 1
  store i32 0, ptr %11, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 24, i1 false)
  %15 = getelementptr inbounds %struct.bpf_tc_hook, ptr %12, i32 0, i32 0
  store i64 24, ptr %15, align 8
  %16 = getelementptr inbounds %struct.bpf_tc_hook, ptr %12, i32 0, i32 1
  %17 = load i32, ptr %6, align 4
  store i32 %17, ptr %16, align 8
  %18 = getelementptr inbounds %struct.bpf_tc_hook, ptr %12, i32 0, i32 2
  %19 = load i32, ptr %7, align 4
  store i32 %19, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bpf_tc_hook, ptr %12, i32 0, i32 3
  store i32 0, ptr %20, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 32, i1 false)
  %21 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 0
  store i64 32, ptr %21, align 8
  %22 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 1
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 2
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 3
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 4
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.bpf_tc_opts, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %25, align 4
  %29 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 5
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds %struct.bpf_tc_opts, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  store i32 %32, ptr %29, align 8
  %33 = call i32 @bpf_tc_query(ptr noundef %12, ptr noundef %13)
  store i32 %33, ptr %10, align 4
  %34 = load i32, ptr %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, ptr %10, align 4
  store i32 %37, ptr %5, align 4
  br label %66

38:                                               ; preds = %4
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds %struct.bpf_tc_opts, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -2, ptr %5, align 4
  br label %66

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 1
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 3
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.bpf_tc_opts, ptr %13, i32 0, i32 2
  store i32 0, ptr %49, align 4
  %50 = call i32 @bpf_tc_detach(ptr noundef %12, ptr noundef %13)
  store i32 %50, ptr %10, align 4
  %51 = load i8, ptr %9, align 1
  %52 = trunc i8 %51 to i1
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.bpf_tc_hook, ptr %12, i32 0, i32 2
  store i32 3, ptr %54, align 4
  %55 = call i32 @bpf_tc_hook_destroy(ptr noundef %12)
  store i32 %55, ptr %11, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i8, ptr %9, align 1
  %58 = trunc i8 %57 to i1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, ptr %11, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, ptr %10, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, ptr %10, align 4
  %65 = load i32, ptr %10, align 4
  store i32 %65, ptr %5, align 4
  br label %66

66:                                               ; preds = %63, %45, %36
  %67 = load i32, ptr %5, align 4
  ret i32 %67
}

declare i32 @bpf_tc_query(ptr noundef, ptr noundef) #8

declare i32 @bpf_tc_detach(ptr noundef, ptr noundef) #8

declare i32 @bpf_tc_hook_destroy(ptr noundef) #8

declare i32 @bpf_get_link_xdp_id(i32 noundef, ptr noundef, i32 noundef) #8

declare i32 @bpf_set_link_xdp_fd(i32 noundef, i32 noundef, i32 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_map_full(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @stderr, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.map_full_event, ptr %4, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  call void @print_ns_datetime(ptr noundef %3, i64 noundef %6)
  %7 = load ptr, ptr @stderr, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.map_full_event, ptr %8, i32 0, i32 3
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, ptr @.str.112, ptr @.str.81
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.111, ptr noundef %14)
  %16 = load ptr, ptr @stderr, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.map_full_event, ptr %17, i32 0, i32 2
  call void @print_flow_ppvizformat(ptr noundef %16, ptr noundef %18)
  %19 = load ptr, ptr @stderr, align 8
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.53)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ns_datetime(ptr noundef %0, i64 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca [9 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %8 = load i64, ptr %4, align 8
  %9 = call i64 @convert_monotonic_to_realtime(i64 noundef %8)
  store i64 %9, ptr %6, align 8
  %10 = load i64, ptr %6, align 8
  %11 = udiv i64 %10, 1000000000
  store i64 %11, ptr %7, align 8
  %12 = getelementptr inbounds [9 x i8], ptr %5, i64 0, i64 0
  %13 = call ptr @localtime(ptr noundef %7) #14
  %14 = call i64 @strftime(ptr noundef %12, i64 noundef 9, ptr noundef @.str.63, ptr noundef %13) #14
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds [9 x i8], ptr %5, i64 0, i64 0
  %17 = load i64, ptr %6, align 8
  %18 = urem i64 %17, 1000000000
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.64, ptr noundef %16, i64 noundef %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_flow_ppvizformat(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [46 x i8], align 16
  %6 = alloca [46 x i8], align 16
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = getelementptr inbounds [46 x i8], ptr %5, i64 0, i64 0
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.network_tuple, ptr %8, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.network_tuple, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.flow_address, ptr %13, i32 0, i32 0
  %15 = call i32 @format_ip_address(ptr noundef %7, i64 noundef 46, i32 noundef %11, ptr noundef %14)
  %16 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.network_tuple, ptr %17, i32 0, i32 3
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.network_tuple, ptr %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.flow_address, ptr %22, i32 0, i32 0
  %24 = call i32 @format_ip_address(ptr noundef %16, i64 noundef 46, i32 noundef %20, ptr noundef %23)
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds [46 x i8], ptr %5, i64 0, i64 0
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.network_tuple, ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.flow_address, ptr %28, i32 0, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = call zeroext i16 @ntohs(i16 noundef zeroext %30) #16
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.network_tuple, ptr %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.flow_address, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = call zeroext i16 @ntohs(i16 noundef zeroext %37) #16
  %39 = zext i16 %38 to i32
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.67, ptr noundef %26, i32 noundef %32, ptr noundef %33, i32 noundef %39)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_ip_address(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #6 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %10 = load i32, ptr %8, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %29

12:                                               ; preds = %4
  %13 = load i32, ptr %8, align 4
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %struct.in6_addr, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds [16 x i8], ptr %15, i64 0, i64 12
  %17 = load ptr, ptr %6, align 8
  %18 = load i64, ptr %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = call ptr @inet_ntop(i32 noundef %13, ptr noundef %16, ptr noundef %17, i32 noundef %19) #14
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = call ptr @__errno_location() #16
  %24 = load i32, ptr %23, align 4
  %25 = sub nsw i32 0, %24
  br label %27

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 0, %26 ]
  store i32 %28, ptr %5, align 4
  br label %49

29:                                               ; preds = %4
  %30 = load i32, ptr %8, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32, ptr %8, align 4
  %34 = load ptr, ptr %9, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i64, ptr %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = call ptr @inet_ntop(i32 noundef %33, ptr noundef %34, ptr noundef %35, i32 noundef %37) #14
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = call ptr @__errno_location() #16
  %42 = load i32, ptr %41, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 0, %44 ]
  store i32 %46, ptr %5, align 4
  br label %49

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  store i32 -22, ptr %5, align 4
  br label %49

49:                                               ; preds = %48, %45, %27
  %50 = load i32, ptr %5, align 4
  ret i32 %50
}

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @ntohs(i16 noundef zeroext) #10

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #10

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_monotonic_to_realtime(i64 noundef %0) #6 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  %6 = call i64 @get_time_ns(i32 noundef 1)
  store i64 %6, ptr %4, align 8
  %7 = load i64, ptr @convert_monotonic_to_realtime.offset, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load i64, ptr %4, align 8
  %11 = load i64, ptr @convert_monotonic_to_realtime.offset_updated, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load i64, ptr %4, align 8
  %15 = load i64, ptr @convert_monotonic_to_realtime.offset_updated, align 8
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %16, 1000000000
  br i1 %17, label %18, label %30

18:                                               ; preds = %13, %1
  %19 = call i64 @get_time_ns(i32 noundef 1)
  store i64 %19, ptr %4, align 8
  %20 = call i64 @get_time_ns(i32 noundef 0)
  store i64 %20, ptr %5, align 8
  %21 = load i64, ptr %5, align 8
  %22 = load i64, ptr %4, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 0, ptr %2, align 8
  br label %34

25:                                               ; preds = %18
  %26 = load i64, ptr %5, align 8
  %27 = load i64, ptr %4, align 8
  %28 = sub i64 %26, %27
  store i64 %28, ptr @convert_monotonic_to_realtime.offset, align 8
  %29 = load i64, ptr %4, align 8
  store i64 %29, ptr @convert_monotonic_to_realtime.offset_updated, align 8
  br label %30

30:                                               ; preds = %25, %13, %9
  %31 = load i64, ptr %3, align 8
  %32 = load i64, ptr @convert_monotonic_to_realtime.offset, align 8
  %33 = add i64 %31, %32
  store i64 %33, ptr %2, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i64, ptr %2, align 8
  ret i64 %35
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #7

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_time_ns(i32 noundef %0) #6 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  store i32 %0, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  %6 = call i32 @clock_gettime(i32 noundef %5, ptr noundef %4) #14
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, ptr %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 0
  %11 = load i64, ptr %10, align 8
  %12 = mul i64 %11, 1000000000
  %13 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %12, %14
  store i64 %15, ptr %2, align 8
  br label %16

16:                                               ; preds = %9, %8
  %17 = load i64, ptr %2, align 8
  ret i64 %17
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @periodic_map_cleanup(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.timespec, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.map_cleanup_args, ptr %6, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = udiv i64 %8, 1000000000
  %10 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 0
  store i64 %9, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.map_cleanup_args, ptr %11, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = urem i64 %13, 1000000000
  %15 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 1
  store i64 %14, ptr %15, align 8
  br label %16

16:                                               ; preds = %19, %1
  %17 = load volatile i32, ptr @keep_running, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.map_cleanup_args, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = call i32 @clean_map(i32 noundef %22, i64 noundef 48, i64 noundef 8, ptr noundef @packet_ts_timeout)
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.map_cleanup_args, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @clean_map(i32 noundef %26, i64 noundef 44, i64 noundef 64, ptr noundef @flow_timeout)
  %28 = call i32 @nanosleep(ptr noundef %4, ptr noundef null)
  br label %16, !llvm.loop !1729

29:                                               ; preds = %16
  call void @pthread_exit(ptr noundef null) #18
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @packet_ts_timeout(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %8, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load i64, ptr %8, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, ptr %7, align 8
  %16 = load i64, ptr %8, align 8
  %17 = sub i64 %15, %16
  %18 = icmp ugt i64 %17, 10000000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i1 true, ptr %4, align 1
  br label %21

20:                                               ; preds = %14, %3
  store i1 false, ptr %4, align 1
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i1, ptr %4, align 1
  ret i1 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_map(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #6 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  store i32 %0, ptr %6, align 4
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i32 0, ptr %10, align 4
  store i8 0, ptr %14, align 1
  %16 = call i64 @get_time_ns(i32 noundef 1)
  store i64 %16, ptr %15, align 8
  %17 = load i64, ptr %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = call ptr @__errno_location() #16
  %21 = load i32, ptr %20, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, ptr %5, align 4
  br label %87

23:                                               ; preds = %4
  %24 = load i64, ptr %7, align 8
  %25 = call noalias ptr @malloc(i64 noundef %24) #19
  store ptr %25, ptr %11, align 8
  %26 = load i64, ptr %7, align 8
  %27 = call noalias ptr @malloc(i64 noundef %26) #19
  store ptr %27, ptr %12, align 8
  %28 = load i64, ptr %8, align 8
  %29 = call noalias ptr @malloc(i64 noundef %28) #19
  store ptr %29, ptr %13, align 8
  %30 = load ptr, ptr %11, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load ptr, ptr %12, align 8
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load ptr, ptr %13, align 8
  %37 = icmp ne ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %32, %23
  store i32 -12, ptr %10, align 4
  br label %82

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %68, %39
  %41 = load i32, ptr %6, align 4
  %42 = load ptr, ptr %12, align 8
  %43 = load ptr, ptr %11, align 8
  %44 = call i32 @bpf_map_get_next_key(i32 noundef %41, ptr noundef %42, ptr noundef %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load i8, ptr %14, align 1
  %48 = trunc i8 %47 to i1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, ptr %6, align 4
  %51 = load ptr, ptr %12, align 8
  %52 = call i32 @bpf_map_delete_elem(i32 noundef %50, ptr noundef %51)
  %53 = load i32, ptr %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %10, align 4
  store i8 0, ptr %14, align 1
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, ptr %6, align 4
  %57 = load ptr, ptr %11, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = call i32 @bpf_map_lookup_elem(i32 noundef %56, ptr noundef %57, ptr noundef %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load ptr, ptr %9, align 8
  %63 = load ptr, ptr %11, align 8
  %64 = load ptr, ptr %13, align 8
  %65 = load i64, ptr %15, align 8
  %66 = call zeroext i1 %62(ptr noundef %63, ptr noundef %64, i64 noundef %65)
  %67 = zext i1 %66 to i8
  store i8 %67, ptr %14, align 1
  br label %68

68:                                               ; preds = %61, %55
  %69 = load ptr, ptr %12, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = load i64, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %70, i64 %71, i1 false)
  br label %40, !llvm.loop !1730

72:                                               ; preds = %40
  %73 = load i8, ptr %14, align 1
  %74 = trunc i8 %73 to i1
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, ptr %6, align 4
  %77 = load ptr, ptr %12, align 8
  %78 = call i32 @bpf_map_delete_elem(i32 noundef %76, ptr noundef %77)
  %79 = load i32, ptr %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %10, align 4
  br label %81

81:                                               ; preds = %75, %72
  br label %82

82:                                               ; preds = %81, %38
  %83 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %83) #14
  %84 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %84) #14
  %85 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %85) #14
  %86 = load i32, ptr %10, align 4
  store i32 %86, ptr %5, align 4
  br label %87

87:                                               ; preds = %82, %19
  %88 = load i32, ptr %5, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @flow_timeout(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.flow_event, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  store ptr %10, ptr %9, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds %struct.flow_state, ptr %12, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load i64, ptr %7, align 8
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr inbounds %struct.flow_state, ptr %18, i32 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = sub i64 %17, %20
  %22 = icmp ugt i64 %21, 300000000000
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load ptr, ptr @print_event_func, align 8
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds %struct.flow_state, ptr %27, i32 0, i32 8
  %29 = load i8, ptr %28, align 4
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.flow_event, ptr %8, i32 0, i32 0
  store i64 1, ptr %32, align 8
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds %struct.flow_event, ptr %8, i32 0, i32 1
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.flow_event, ptr %8, i32 0, i32 2
  %36 = load ptr, ptr %5, align 8
  call void @reverse_flow(ptr noundef %35, ptr noundef %36)
  %37 = getelementptr inbounds %struct.flow_event, ptr %8, i32 0, i32 3
  store i8 2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.flow_event, ptr %8, i32 0, i32 4
  store i8 5, ptr %38, align 1
  %39 = getelementptr inbounds %struct.flow_event, ptr %8, i32 0, i32 5
  store i8 2, ptr %39, align 2
  %40 = load ptr, ptr @print_event_func, align 8
  call void %40(ptr noundef %8)
  br label %41

41:                                               ; preds = %31, %26, %23
  store i1 true, ptr %4, align 1
  br label %43

42:                                               ; preds = %16, %3
  store i1 false, ptr %4, align 1
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i1, ptr %4, align 1
  ret i1 %44
}

declare i32 @nanosleep(ptr noundef, ptr noundef) #8

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #11

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse_flow(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.network_tuple, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.network_tuple, ptr %8, i32 0, i32 3
  store i8 %7, ptr %9, align 2
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.network_tuple, ptr %10, i32 0, i32 2
  %12 = load i16, ptr %11, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.network_tuple, ptr %13, i32 0, i32 2
  store i16 %12, ptr %14, align 4
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.network_tuple, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.network_tuple, ptr %17, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 20, i1 false)
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.network_tuple, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.network_tuple, ptr %21, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %22, i64 20, i1 false)
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.network_tuple, ptr %23, i32 0, i32 4
  store i8 0, ptr %24, align 1
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #12

declare i32 @bpf_map_get_next_key(i32 noundef, ptr noundef, ptr noundef) #8

declare i32 @bpf_map_delete_elem(i32 noundef, ptr noundef) #8

declare i32 @bpf_map_lookup_elem(i32 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: nounwind
declare void @free(ptr noundef) #7

declare ptr @bpf_object__open(ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rodata(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr null, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @bpf_object__next_map(ptr noundef %9, ptr noundef null)
  store ptr %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %25, %3
  %12 = load ptr, ptr %8, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8
  %16 = call ptr @bpf_map__name(ptr noundef %15)
  %17 = call ptr @strstr(ptr noundef %16, ptr noundef @.str.104) #15
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = load i64, ptr %7, align 8
  %23 = call i32 @bpf_map__set_initial_value(ptr noundef %20, ptr noundef %21, i64 noundef %22)
  store i32 %23, ptr %4, align 4
  br label %30

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = call ptr @bpf_object__next_map(ptr noundef %26, ptr noundef %27)
  store ptr %28, ptr %8, align 8
  br label %11, !llvm.loop !1731

29:                                               ; preds = %11
  store i32 -22, ptr %4, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, ptr %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_programs_to_load(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.pping_config, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.8) #15
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, ptr @.str.8, ptr @.str.36
  store ptr %14, ptr %7, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = call ptr @bpf_object__find_program_by_name(ptr noundef %15, ptr noundef %16)
  store ptr %17, ptr %6, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = call i64 @libbpf_get_error(ptr noundef %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load ptr, ptr %6, align 8
  %23 = call i64 @libbpf_get_error(ptr noundef %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, ptr %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load ptr, ptr %6, align 8
  %27 = call i32 @bpf_program__set_autoload(ptr noundef %26, i1 noundef zeroext false)
  store i32 %27, ptr %3, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, ptr %3, align 4
  ret i32 %29
}

declare i32 @bpf_object__load(ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_attach(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #6 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca %struct.bpf_tc_hook, align 8
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store i8 1, ptr %16, align 1
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.bpf_tc_hook, ptr %17, i32 0, i32 0
  store i64 24, ptr %18, align 8
  %19 = getelementptr inbounds %struct.bpf_tc_hook, ptr %17, i32 0, i32 1
  %20 = load i32, ptr %9, align 4
  store i32 %20, ptr %19, align 8
  %21 = getelementptr inbounds %struct.bpf_tc_hook, ptr %17, i32 0, i32 2
  %22 = load i32, ptr %10, align 4
  store i32 %22, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bpf_tc_hook, ptr %17, i32 0, i32 3
  store i32 0, ptr %23, align 8
  %24 = call i32 @bpf_tc_hook_create(ptr noundef %17)
  store i32 %24, ptr %14, align 4
  %25 = load i32, ptr %14, align 4
  %26 = icmp eq i32 %25, -17
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i8 0, ptr %16, align 1
  br label %34

28:                                               ; preds = %6
  %29 = load i32, ptr %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, ptr %14, align 4
  store i32 %32, ptr %7, align 4
  br label %74

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %27
  %35 = load ptr, ptr %8, align 8
  %36 = load ptr, ptr %11, align 8
  %37 = call ptr @bpf_object__find_program_by_name(ptr noundef %35, ptr noundef %36)
  %38 = call i32 @bpf_program__fd(ptr noundef %37)
  store i32 %38, ptr %15, align 4
  %39 = load i32, ptr %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, ptr %15, align 4
  store i32 %42, ptr %14, align 4
  br label %66

43:                                               ; preds = %34
  %44 = load i32, ptr %15, align 4
  %45 = load ptr, ptr %12, align 8
  %46 = getelementptr inbounds %struct.bpf_tc_opts, ptr %45, i32 0, i32 1
  store i32 %44, ptr %46, align 8
  %47 = load ptr, ptr %12, align 8
  %48 = getelementptr inbounds %struct.bpf_tc_opts, ptr %47, i32 0, i32 3
  store i32 0, ptr %48, align 8
  %49 = load ptr, ptr %12, align 8
  %50 = call i32 @bpf_tc_attach(ptr noundef %17, ptr noundef %49)
  store i32 %50, ptr %14, align 4
  %51 = load i32, ptr %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %66

54:                                               ; preds = %43
  %55 = load ptr, ptr %13, align 8
  %56 = icmp ne ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8, ptr %16, align 1
  %59 = trunc i8 %58 to i1
  %60 = load ptr, ptr %13, align 8
  %61 = zext i1 %59 to i8
  store i8 %61, ptr %60, align 1
  br label %62

62:                                               ; preds = %57, %54
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds %struct.bpf_tc_opts, ptr %63, i32 0, i32 3
  %65 = load i32, ptr %64, align 8
  store i32 %65, ptr %7, align 4
  br label %74

66:                                               ; preds = %53, %41
  %67 = load i8, ptr %16, align 1
  %68 = trunc i8 %67 to i1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bpf_tc_hook, ptr %17, i32 0, i32 2
  store i32 3, ptr %70, align 4
  %71 = call i32 @bpf_tc_hook_destroy(ptr noundef %17)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, ptr %14, align 4
  store i32 %73, ptr %7, align 4
  br label %74

74:                                               ; preds = %72, %62, %31
  %75 = load i32, ptr %7, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_attach(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %14 = load ptr, ptr %7, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = call ptr @bpf_object__find_program_by_name(ptr noundef %17, ptr noundef %18)
  store ptr %19, ptr %10, align 8
  br label %23

20:                                               ; preds = %4
  %21 = load ptr, ptr %6, align 8
  %22 = call ptr @bpf_object__next_program(ptr noundef %21, ptr noundef null)
  store ptr %22, ptr %10, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load ptr, ptr %10, align 8
  %25 = call i32 @bpf_program__fd(ptr noundef %24)
  store i32 %25, ptr %11, align 4
  %26 = load i32, ptr %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, ptr %11, align 4
  store i32 %29, ptr %5, align 4
  br label %52

30:                                               ; preds = %23
  %31 = load i32, ptr %8, align 4
  %32 = load i32, ptr %11, align 4
  %33 = load i32, ptr %9, align 4
  %34 = call i32 @bpf_set_link_xdp_fd(i32 noundef %31, i32 noundef %32, i32 noundef %33)
  store i32 %34, ptr %12, align 4
  %35 = load i32, ptr %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, ptr %12, align 4
  store i32 %38, ptr %5, align 4
  br label %52

39:                                               ; preds = %30
  %40 = load i32, ptr %8, align 4
  %41 = load i32, ptr %9, align 4
  %42 = call i32 @bpf_get_link_xdp_id(i32 noundef %40, ptr noundef %13, i32 noundef %41)
  store i32 %42, ptr %12, align 4
  %43 = load i32, ptr %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, ptr %8, align 4
  %47 = load i32, ptr %9, align 4
  %48 = call i32 @bpf_set_link_xdp_fd(i32 noundef %46, i32 noundef -1, i32 noundef %47)
  %49 = load i32, ptr %12, align 4
  store i32 %49, ptr %5, align 4
  br label %52

50:                                               ; preds = %39
  %51 = load i32, ptr %13, align 4
  store i32 %51, ptr %5, align 4
  br label %52

52:                                               ; preds = %50, %45, %37, %28
  %53 = load i32, ptr %5, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_xdp_error_hints(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  br label %12

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = sub nsw i32 0, %10
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ]
  store i32 %13, ptr %4, align 4
  %14 = load i32, ptr %4, align 4
  switch i32 %14, label %21 [
    i32 16, label %15
    i32 17, label %15
    i32 95, label %18
  ]

15:                                               ; preds = %12, %12
  %16 = load ptr, ptr %3, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.105)
  br label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.106)
  br label %21

21:                                               ; preds = %18, %15, %12
  ret void
}

declare ptr @bpf_object__find_program_by_name(ptr noundef, ptr noundef) #8

declare ptr @bpf_object__next_program(ptr noundef, ptr noundef) #8

declare i32 @bpf_program__fd(ptr noundef) #8

declare i32 @bpf_tc_hook_create(ptr noundef) #8

declare i32 @bpf_tc_attach(ptr noundef, ptr noundef) #8

declare i32 @bpf_program__set_autoload(ptr noundef, i1 noundef zeroext) #8

declare ptr @bpf_object__next_map(ptr noundef, ptr noundef) #8

declare ptr @bpf_map__name(ptr noundef) #8

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #9

declare i32 @bpf_map__set_initial_value(ptr noundef, ptr noundef, i64 noundef) #8

declare ptr @jsonw_new(ptr noundef) #8

declare void @jsonw_start_array(ptr noundef) #8

declare void @jsonw_start_object(ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_common_fields_json(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [46 x i8], align 16
  %7 = alloca [46 x i8], align 16
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.rtt_event, ptr %8, i32 0, i32 2
  store ptr %9, ptr %5, align 8
  %10 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.network_tuple, ptr %11, i32 0, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.network_tuple, ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.flow_address, ptr %16, i32 0, i32 0
  %18 = call i32 @format_ip_address(ptr noundef %10, i64 noundef 46, i32 noundef %14, ptr noundef %17)
  %19 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.network_tuple, ptr %20, i32 0, i32 3
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.network_tuple, ptr %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.flow_address, ptr %25, i32 0, i32 0
  %27 = call i32 @format_ip_address(ptr noundef %19, i64 noundef 46, i32 noundef %23, ptr noundef %26)
  %28 = load ptr, ptr %3, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.rtt_event, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = call i64 @convert_monotonic_to_realtime(i64 noundef %31)
  call void @jsonw_u64_field(ptr noundef %28, ptr noundef @.str.81, i64 noundef %32)
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0
  call void @jsonw_string_field(ptr noundef %33, ptr noundef @.str.82, ptr noundef %34)
  %35 = load ptr, ptr %3, align 8
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds %struct.network_tuple, ptr %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.flow_address, ptr %37, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = call zeroext i16 @ntohs(i16 noundef zeroext %39) #16
  call void @jsonw_hu_field(ptr noundef %35, ptr noundef @.str.83, i16 noundef zeroext %40)
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0
  call void @jsonw_string_field(ptr noundef %41, ptr noundef @.str.84, ptr noundef %42)
  %43 = load ptr, ptr %3, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.network_tuple, ptr %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.flow_address, ptr %45, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = call zeroext i16 @ntohs(i16 noundef zeroext %47) #16
  call void @jsonw_hu_field(ptr noundef %43, ptr noundef @.str.85, i16 noundef zeroext %48)
  %49 = load ptr, ptr %3, align 8
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.network_tuple, ptr %50, i32 0, i32 2
  %52 = load i16, ptr %51, align 4
  %53 = call ptr @proto_to_str(i16 noundef zeroext %52)
  call void @jsonw_string_field(ptr noundef %49, ptr noundef @.str.86, ptr noundef %53)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_rttevent_fields_json(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.rtt_event, ptr %6, i32 0, i32 4
  %8 = load i64, ptr %7, align 8
  call void @jsonw_u64_field(ptr noundef %5, ptr noundef @.str.87, i64 noundef %8)
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.rtt_event, ptr %10, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  call void @jsonw_u64_field(ptr noundef %9, ptr noundef @.str.88, i64 noundef %12)
  %13 = load ptr, ptr %3, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.rtt_event, ptr %14, i32 0, i32 6
  %16 = load i64, ptr %15, align 8
  call void @jsonw_u64_field(ptr noundef %13, ptr noundef @.str.89, i64 noundef %16)
  %17 = load ptr, ptr %3, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.rtt_event, ptr %18, i32 0, i32 7
  %20 = load i64, ptr %19, align 8
  call void @jsonw_u64_field(ptr noundef %17, ptr noundef @.str.90, i64 noundef %20)
  %21 = load ptr, ptr %3, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.rtt_event, ptr %22, i32 0, i32 8
  %24 = load i64, ptr %23, align 8
  call void @jsonw_u64_field(ptr noundef %21, ptr noundef @.str.91, i64 noundef %24)
  %25 = load ptr, ptr %3, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.rtt_event, ptr %26, i32 0, i32 9
  %28 = load i64, ptr %27, align 8
  call void @jsonw_u64_field(ptr noundef %25, ptr noundef @.str.92, i64 noundef %28)
  %29 = load ptr, ptr %3, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.rtt_event, ptr %30, i32 0, i32 10
  %32 = load i8, ptr %31, align 8
  %33 = trunc i8 %32 to i1
  call void @jsonw_bool_field(ptr noundef %29, ptr noundef @.str.93, i1 noundef zeroext %33)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_flowevent_fields_json(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.flow_event, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = call ptr @flowevent_to_str(i8 noundef zeroext %8)
  call void @jsonw_string_field(ptr noundef %5, ptr noundef @.str.94, ptr noundef %9)
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.flow_event, ptr %11, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = call ptr @eventreason_to_str(i8 noundef zeroext %13)
  call void @jsonw_string_field(ptr noundef %10, ptr noundef @.str.95, ptr noundef %14)
  %15 = load ptr, ptr %3, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.flow_event, ptr %16, i32 0, i32 5
  %18 = load i8, ptr %17, align 2
  %19 = call ptr @eventsource_to_str(i8 noundef zeroext %18)
  call void @jsonw_string_field(ptr noundef %15, ptr noundef @.str.96, ptr noundef %19)
  ret void
}

declare void @jsonw_end_object(ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @flowevent_to_str(i8 noundef zeroext %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %9 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %8
  ]

6:                                                ; preds = %1
  store ptr @.str.68, ptr %2, align 8
  br label %10

7:                                                ; preds = %1
  store ptr @.str.69, ptr %2, align 8
  br label %10

8:                                                ; preds = %1, %1
  store ptr @.str.70, ptr %2, align 8
  br label %10

9:                                                ; preds = %1
  store ptr @.str.71, ptr %2, align 8
  br label %10

10:                                               ; preds = %9, %8, %7, %6
  %11 = load ptr, ptr %2, align 8
  ret ptr %11
}

declare void @jsonw_string_field(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @eventreason_to_str(i8 noundef zeroext %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %12 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 5, label %11
  ]

6:                                                ; preds = %1
  store ptr @.str.72, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  store ptr @.str.73, ptr %2, align 8
  br label %13

8:                                                ; preds = %1
  store ptr @.str.74, ptr %2, align 8
  br label %13

9:                                                ; preds = %1
  store ptr @.str.75, ptr %2, align 8
  br label %13

10:                                               ; preds = %1
  store ptr @.str.76, ptr %2, align 8
  br label %13

11:                                               ; preds = %1
  store ptr @.str.77, ptr %2, align 8
  br label %13

12:                                               ; preds = %1
  store ptr @.str.71, ptr %2, align 8
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @eventsource_to_str(i8 noundef zeroext %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %9 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
  ]

6:                                                ; preds = %1
  store ptr @.str.78, ptr %2, align 8
  br label %10

7:                                                ; preds = %1
  store ptr @.str.79, ptr %2, align 8
  br label %10

8:                                                ; preds = %1
  store ptr @.str.80, ptr %2, align 8
  br label %10

9:                                                ; preds = %1
  store ptr @.str.71, ptr %2, align 8
  br label %10

10:                                               ; preds = %9, %8, %7, %6
  %11 = load ptr, ptr %2, align 8
  ret ptr %11
}

declare void @jsonw_u64_field(ptr noundef, ptr noundef, i64 noundef) #8

declare void @jsonw_bool_field(ptr noundef, ptr noundef, i1 noundef zeroext) #8

declare void @jsonw_hu_field(ptr noundef, ptr noundef, i16 noundef zeroext) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @proto_to_str(i16 noundef zeroext %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i16, align 2
  store i16 %0, ptr %3, align 2
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  switch i32 %5, label %9 [
    i32 6, label %6
    i32 1, label %7
    i32 58, label %8
  ]

6:                                                ; preds = %1
  store ptr @.str.1, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  store ptr @.str.2, ptr %2, align 8
  br label %13

8:                                                ; preds = %1
  store ptr @.str.65, ptr %2, align 8
  br label %13

9:                                                ; preds = %1
  %10 = load i16, ptr %3, align 2
  %11 = zext i16 %10 to i32
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @proto_to_str.buf, i64 noundef 8, ptr noundef @.str.66, i32 noundef %11) #14
  store ptr @proto_to_str.buf, ptr %2, align 8
  br label %13

13:                                               ; preds = %9, %8, %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #7

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #9

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind
declare i32 @if_nametoindex(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bounded_double(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #6 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store double %2, ptr %9, align 8
  store double %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = call double @strtod(ptr noundef %13, ptr noundef %12) #14
  %15 = load ptr, ptr %7, align 8
  store double %14, ptr %15, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = call i64 @strlen(ptr noundef %16) #15
  %18 = load ptr, ptr %12, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load ptr, ptr @stderr, align 8
  %26 = load ptr, ptr %11, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.50, ptr noundef %26, ptr noundef %27)
  store i32 -22, ptr %6, align 4
  br label %46

29:                                               ; preds = %5
  %30 = load ptr, ptr %7, align 8
  %31 = load double, ptr %30, align 8
  %32 = load double, ptr %9, align 8
  %33 = fcmp olt double %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %7, align 8
  %36 = load double, ptr %35, align 8
  %37 = load double, ptr %10, align 8
  %38 = fcmp ogt double %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %29
  %40 = load ptr, ptr @stderr, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = load double, ptr %9, align 8
  %43 = load double, ptr %10, align 8
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.51, ptr noundef %41, double noundef %42, double noundef %43)
  store i32 -22, ptr %6, align 4
  br label %46

45:                                               ; preds = %34
  store i32 0, ptr %6, align 4
  br label %46

46:                                               ; preds = %45, %39, %24
  %47 = load i32, ptr %6, align 4
  ret i32 %47
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #13

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #7

declare i32 @libbpf_strerror(i32 noundef, ptr noundef, i64 noundef) #8

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) #7

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.ident = !{!286, !286}
!llvm.module.flags = !{!287, !288, !289, !290, !291, !292, !293}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 81, type: !285, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !128, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pping_kern.c", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "3274b677c241d4ed592dbba8d60e88e2")
!4 = !{!5, !14, !24, !30, !61, !67, !71, !77, !88}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !6, line: 4363, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../lib/../headers/linux/bpf.h", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "686704d11802f5f210143bc29244c61a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "XDP_ABORTED", value: 0)
!10 = !DIEnumerator(name: "XDP_DROP", value: 1)
!11 = !DIEnumerator(name: "XDP_PASS", value: 2)
!12 = !DIEnumerator(name: "XDP_TX", value: 3)
!13 = !DIEnumerator(name: "XDP_REDIRECT", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "flow_event_reason", file: !15, line: 26, baseType: !16, size: 8, elements: !17)
!15 = !DIFile(filename: "./pping.h", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "6a861e6a346893fa17ab178d912b413e")
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "EVENT_REASON_SYN", value: 0)
!19 = !DIEnumerator(name: "EVENT_REASON_SYN_ACK", value: 1)
!20 = !DIEnumerator(name: "EVENT_REASON_FIRST_OBS_PCKT", value: 2)
!21 = !DIEnumerator(name: "EVENT_REASON_FIN", value: 3)
!22 = !DIEnumerator(name: "EVENT_REASON_RST", value: 4)
!23 = !DIEnumerator(name: "EVENT_REASON_FLOW_TIMEOUT", value: 5)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "flow_event_type", file: !15, line: 19, baseType: !16, size: 8, elements: !25)
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "FLOW_EVENT_NONE", value: 0)
!27 = !DIEnumerator(name: "FLOW_EVENT_OPENING", value: 1)
!28 = !DIEnumerator(name: "FLOW_EVENT_CLOSING", value: 2)
!29 = !DIEnumerator(name: "FLOW_EVENT_CLOSING_BOTH", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 28, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/linux/in.h", directory: "", checksumkind: CSK_MD5, checksum: "078a32220dc819f6a7e2ea3cecc4e133")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!33 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!34 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!35 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!36 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!37 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!38 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!39 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!40 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!41 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!42 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!43 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!44 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!45 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!46 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!47 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!48 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!49 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!50 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!51 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!52 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!53 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!54 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!55 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!56 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!57 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!58 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!59 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!60 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 397, baseType: !7, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "BPF_ANY", value: 0)
!64 = !DIEnumerator(name: "BPF_NOEXIST", value: 1)
!65 = !DIEnumerator(name: "BPF_EXIST", value: 2)
!66 = !DIEnumerator(name: "BPF_F_LOCK", value: 4)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pping_map", file: !15, line: 41, baseType: !16, size: 8, elements: !68)
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "PPING_MAP_FLOWSTATE", value: 0)
!70 = !DIEnumerator(name: "PPING_MAP_PACKETTS", value: 1)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 4063, baseType: !72, size: 64, elements: !73)
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "BPF_F_INDEX_MASK", value: 4294967295, isUnsigned: true)
!75 = !DIEnumerator(name: "BPF_F_CURRENT_CPU", value: 4294967295, isUnsigned: true)
!76 = !DIEnumerator(name: "BPF_F_CTXLEN_MASK", value: 4503595332403200, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 4955, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87}
!79 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_SUCCESS", value: 0)
!80 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_BLACKHOLE", value: 1)
!81 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_UNREACHABLE", value: 2)
!82 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_PROHIBIT", value: 3)
!83 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_NOT_FWDED", value: 4)
!84 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_FWD_DISABLED", value: 5)
!85 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_UNSUPP_LWT", value: 6)
!86 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_NO_NEIGH", value: 7)
!87 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_FRAG_NEEDED", value: 8)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "flow_event_source", file: !15, line: 35, baseType: !16, size: 8, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "EVENT_SOURCE_PKT_SRC", value: 0)
!91 = !DIEnumerator(name: "EVENT_SOURCE_PKT_DEST", value: 1)
!92 = !DIEnumerator(name: "EVENT_SOURCE_USERSPACE", value: 2)
!93 = !{!94, !95, !96, !99, !101, !103, !105, !127, !124, !104}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !97, line: 24, baseType: !98)
!97 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !97, line: 21, baseType: !16)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !97, line: 27, baseType: !7)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !107, line: 33, size: 128, elements: !108)
!107 = !DIFile(filename: "/usr/include/linux/in6.h", directory: "", checksumkind: CSK_MD5, checksum: "fca1889f0274df066e49cf4d8db8011e")
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !106, file: !107, line: 40, baseType: !110, size: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !107, line: 34, size: 128, elements: !111)
!111 = !{!112, !116, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !110, file: !107, line: 35, baseType: !113, size: 128)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !110, file: !107, line: 37, baseType: !117, size: 128)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !120)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !119, line: 25, baseType: !96)
!119 = !DIFile(filename: "/usr/include/linux/types.h", directory: "", checksumkind: CSK_MD5, checksum: "52ec79a38e49ac7d1dc9e146ba88a7b1")
!120 = !{!121}
!121 = !DISubrange(count: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !110, file: !107, line: 38, baseType: !123, size: 128)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !125)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !119, line: 27, baseType: !104)
!125 = !{!126}
!126 = !DISubrange(count: 4)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!128 = !{!0, !129, !166, !190, !199, !205, !219, !226, !231, !237, !242, !280}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "packet_ts", scope: !2, file: !3, line: 93, type: !131, isLocal: false, isDefinition: true)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 88, size: 256, elements: !132)
!132 = !{!133, !139, !157, !161}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !3, line: 89, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !137)
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !{!138}
!138 = !DISubrange(count: 1)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !131, file: !3, line: 90, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packet_id", file: !15, line: 96, size: 384, elements: !142)
!142 = !{!143, !156}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !141, file: !15, line: 97, baseType: !144, size: 352)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network_tuple", file: !15, line: 74, size: 352, elements: !145)
!145 = !{!146, !152, !153, !154, !155}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !144, file: !15, line: 75, baseType: !147, size: 160)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flow_address", file: !15, line: 61, size: 160, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !147, file: !15, line: 62, baseType: !106, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !147, file: !15, line: 63, baseType: !96, size: 16, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !147, file: !15, line: 64, baseType: !96, size: 16, offset: 144)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !144, file: !15, line: 76, baseType: !147, size: 160, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !144, file: !15, line: 77, baseType: !96, size: 16, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ipv", scope: !144, file: !15, line: 78, baseType: !102, size: 8, offset: 336)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !144, file: !15, line: 79, baseType: !102, size: 8, offset: 344)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !141, file: !15, line: 98, baseType: !104, size: 32, offset: 352)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !131, file: !3, line: 91, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !97, line: 31, baseType: !160)
!160 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !131, file: !3, line: 92, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 524288, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 16384)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "flow_state", scope: !2, file: !3, line: 100, type: !168, isLocal: false, isDefinition: true)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 95, size: 256, elements: !169)
!169 = !{!170, !171, !173, !189}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !3, line: 96, baseType: !134, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !168, file: !3, line: 97, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !168, file: !3, line: 98, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flow_state", file: !15, line: 82, size: 512, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !187, !188}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "min_rtt", scope: !175, file: !15, line: 83, baseType: !159, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "srtt", scope: !175, file: !15, line: 84, baseType: !159, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !175, file: !15, line: 85, baseType: !159, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sent_pkts", scope: !175, file: !15, line: 86, baseType: !159, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !175, file: !15, line: 87, baseType: !159, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rec_pkts", scope: !175, file: !15, line: 88, baseType: !159, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rec_bytes", scope: !175, file: !15, line: 89, baseType: !159, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !175, file: !15, line: 90, baseType: !104, size: 32, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "has_opened", scope: !175, file: !15, line: 91, baseType: !186, size: 8, offset: 480)
!186 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "opening_reason", scope: !175, file: !15, line: 92, baseType: !14, size: 8, offset: 488)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !175, file: !15, line: 93, baseType: !96, size: 16, offset: 496)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !168, file: !3, line: 99, baseType: !162, size: 64, offset: 192)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "events", scope: !2, file: !3, line: 106, type: !192, isLocal: false, isDefinition: true)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 102, size: 192, elements: !193)
!193 = !{!194, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !192, file: !3, line: 103, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !125)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !192, file: !3, line: 104, baseType: !195, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !192, file: !3, line: 105, baseType: !195, size: 64, offset: 128)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "bpf_ktime_get_ns", scope: !2, file: !201, line: 109, type: !202, isLocal: true, isDefinition: true)
!201 = !DIFile(filename: "../lib/libbpf-install/usr/include/bpf/bpf_helper_defs.h", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "52f02fca464a4053efa2721be82f1a3e")
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!159}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "config", scope: !2, file: !3, line: 83, type: !207, isLocal: true, isDefinition: true)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_config", file: !15, line: 46, size: 192, elements: !210)
!210 = !{!211, !212, !214, !215, !216, !217, !218}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rate_limit", scope: !209, file: !15, line: 47, baseType: !159, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_rate", scope: !209, file: !15, line: 48, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "fixpoint64", file: !15, line: 9, baseType: !159)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "use_srtt", scope: !209, file: !15, line: 49, baseType: !186, size: 8, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "track_tcp", scope: !209, file: !15, line: 50, baseType: !186, size: 8, offset: 136)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "track_icmp", scope: !209, file: !15, line: 51, baseType: !186, size: 8, offset: 144)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "localfilt", scope: !209, file: !15, line: 52, baseType: !186, size: 8, offset: 152)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !209, file: !15, line: 53, baseType: !104, size: 32, offset: 160)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !201, line: 51, type: !221, isLocal: true, isDefinition: true)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!94, !94, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "bpf_map_update_elem", scope: !2, file: !201, line: 73, type: !228, isLocal: true, isDefinition: true)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!95, !94, !224, !224, !159}
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "last_warn_time", scope: !2, file: !3, line: 84, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 128, elements: !235)
!234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !159)
!235 = !{!236}
!236 = !DISubrange(count: 2)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "bpf_perf_event_output", scope: !2, file: !201, line: 686, type: !239, isLocal: true, isDefinition: true)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!95, !94, !94, !159, !94, !159}
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "bpf_fib_lookup", scope: !2, file: !201, line: 1816, type: !244, isLocal: true, isDefinition: true)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!95, !94, !247, !136, !104}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_fib_lookup", file: !6, line: 4967, size: 512, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !262, !268, !273, !274, !275, !279}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !248, file: !6, line: 4971, baseType: !102, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "l4_protocol", scope: !248, file: !6, line: 4974, baseType: !102, size: 8, offset: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !248, file: !6, line: 4975, baseType: !118, size: 16, offset: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !248, file: !6, line: 4976, baseType: !118, size: 16, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !248, file: !6, line: 4979, baseType: !96, size: 16, offset: 48)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !248, file: !6, line: 4984, baseType: !104, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !6, line: 4986, baseType: !257, size: 32, offset: 96)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !6, line: 4986, size: 32, elements: !258)
!258 = !{!259, !260, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !257, file: !6, line: 4988, baseType: !102, size: 8)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flowinfo", scope: !257, file: !6, line: 4989, baseType: !124, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rt_metric", scope: !257, file: !6, line: 4992, baseType: !104, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !6, line: 4995, baseType: !263, size: 128, offset: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !6, line: 4995, size: 128, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_src", scope: !263, file: !6, line: 4996, baseType: !124, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_src", scope: !263, file: !6, line: 4997, baseType: !267, size: 128)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !125)
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !6, line: 5004, baseType: !269, size: 128, offset: 256)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !6, line: 5004, size: 128, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_dst", scope: !269, file: !6, line: 5005, baseType: !124, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_dst", scope: !269, file: !6, line: 5006, baseType: !267, size: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_proto", scope: !248, file: !6, line: 5010, baseType: !118, size: 16, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_TCI", scope: !248, file: !6, line: 5011, baseType: !118, size: 16, offset: 400)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "smac", scope: !248, file: !6, line: 5012, baseType: !276, size: 48, offset: 416)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 48, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 6)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dmac", scope: !248, file: !6, line: 5013, baseType: !276, size: 48, offset: 464)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "bpf_map_delete_elem", scope: !2, file: !201, line: 83, type: !282, isLocal: true, isDefinition: true)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!95, !94, !224}
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32, elements: !125)
!286 = !{!"clang version 16.0.0"}
!287 = !{i32 7, !"Dwarf Version", i32 5}
!288 = !{i32 2, !"Debug Info Version", i32 3}
!289 = !{i32 1, !"wchar_size", i32 4}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{i32 8, !"PIC Level", i32 0}
!292 = !{i32 7, !"PIE Level", i32 2}
!293 = !{i32 7, !"uwtable", i32 2}
!294 = distinct !DISubprogram(name: "pping_tc_egress", scope: !3, file: !3, line: 714, type: !295, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !387)
!295 = !DISubroutineType(types: !296)
!296 = !{!136, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sk_buff", file: !6, line: 4183, size: 1472, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !361, !362, !363, !364, !386}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !298, file: !6, line: 4184, baseType: !104, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !298, file: !6, line: 4185, baseType: !104, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !298, file: !6, line: 4186, baseType: !104, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !298, file: !6, line: 4187, baseType: !104, size: 32, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !298, file: !6, line: 4188, baseType: !104, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_present", scope: !298, file: !6, line: 4189, baseType: !104, size: 32, offset: 160)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !298, file: !6, line: 4190, baseType: !104, size: 32, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !298, file: !6, line: 4191, baseType: !104, size: 32, offset: 224)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !298, file: !6, line: 4192, baseType: !104, size: 32, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !298, file: !6, line: 4193, baseType: !104, size: 32, offset: 288)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !298, file: !6, line: 4194, baseType: !104, size: 32, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !298, file: !6, line: 4195, baseType: !104, size: 32, offset: 352)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !298, file: !6, line: 4196, baseType: !313, size: 160, offset: 384)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 160, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 5)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !298, file: !6, line: 4197, baseType: !104, size: 32, offset: 544)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tc_classid", scope: !298, file: !6, line: 4198, baseType: !104, size: 32, offset: 576)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !298, file: !6, line: 4199, baseType: !104, size: 32, offset: 608)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !298, file: !6, line: 4200, baseType: !104, size: 32, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !298, file: !6, line: 4201, baseType: !104, size: 32, offset: 672)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !298, file: !6, line: 4204, baseType: !104, size: 32, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip4", scope: !298, file: !6, line: 4205, baseType: !104, size: 32, offset: 736)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip4", scope: !298, file: !6, line: 4206, baseType: !104, size: 32, offset: 768)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip6", scope: !298, file: !6, line: 4207, baseType: !267, size: 128, offset: 800)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip6", scope: !298, file: !6, line: 4208, baseType: !267, size: 128, offset: 928)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !298, file: !6, line: 4209, baseType: !104, size: 32, offset: 1056)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !298, file: !6, line: 4210, baseType: !104, size: 32, offset: 1088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !298, file: !6, line: 4213, baseType: !104, size: 32, offset: 1120)
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !6, line: 4214, baseType: !330, size: 64, align: 64, offset: 1152)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !6, line: 4214, size: 64, align: 64, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flow_keys", scope: !330, file: !6, line: 4214, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_flow_keys", file: !6, line: 5041, size: 448, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !359, !360}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "nhoff", scope: !334, file: !6, line: 5042, baseType: !96, size: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "thoff", scope: !334, file: !6, line: 5043, baseType: !96, size: 16, offset: 16)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "addr_proto", scope: !334, file: !6, line: 5044, baseType: !96, size: 16, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "is_frag", scope: !334, file: !6, line: 5045, baseType: !102, size: 8, offset: 48)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_first_frag", scope: !334, file: !6, line: 5046, baseType: !102, size: 8, offset: 56)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "is_encap", scope: !334, file: !6, line: 5047, baseType: !102, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ip_proto", scope: !334, file: !6, line: 5048, baseType: !102, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "n_proto", scope: !334, file: !6, line: 5049, baseType: !118, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !334, file: !6, line: 5050, baseType: !118, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !334, file: !6, line: 5051, baseType: !118, size: 16, offset: 112)
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !6, line: 5052, baseType: !347, size: 256, offset: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !6, line: 5052, size: 256, elements: !348)
!348 = !{!349, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !6, line: 5053, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !6, line: 5053, size: 64, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_src", scope: !350, file: !6, line: 5054, baseType: !124, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_dst", scope: !350, file: !6, line: 5055, baseType: !124, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !6, line: 5057, baseType: !355, size: 256)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !6, line: 5057, size: 256, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_src", scope: !355, file: !6, line: 5058, baseType: !267, size: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_dst", scope: !355, file: !6, line: 5059, baseType: !267, size: 128, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !6, line: 5062, baseType: !104, size: 32, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flow_label", scope: !334, file: !6, line: 5063, baseType: !124, size: 32, offset: 416)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !298, file: !6, line: 4215, baseType: !159, size: 64, offset: 1216)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wire_len", scope: !298, file: !6, line: 4216, baseType: !104, size: 32, offset: 1280)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "gso_segs", scope: !298, file: !6, line: 4217, baseType: !104, size: 32, offset: 1312)
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !6, line: 4218, baseType: !365, size: 64, align: 64, offset: 1344)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !6, line: 4218, size: 64, align: 64, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !365, file: !6, line: 4218, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_sock", file: !6, line: 4272, size: 640, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bound_dev_if", scope: !369, file: !6, line: 4273, baseType: !104, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !369, file: !6, line: 4274, baseType: !104, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !6, line: 4275, baseType: !104, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !369, file: !6, line: 4276, baseType: !104, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !369, file: !6, line: 4277, baseType: !104, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !369, file: !6, line: 4278, baseType: !104, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "src_ip4", scope: !369, file: !6, line: 4280, baseType: !104, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "src_ip6", scope: !369, file: !6, line: 4281, baseType: !267, size: 128, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "src_port", scope: !369, file: !6, line: 4282, baseType: !104, size: 32, offset: 352)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port", scope: !369, file: !6, line: 4283, baseType: !104, size: 32, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ip4", scope: !369, file: !6, line: 4284, baseType: !104, size: 32, offset: 416)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ip6", scope: !369, file: !6, line: 4285, baseType: !267, size: 128, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !6, line: 4286, baseType: !104, size: 32, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_mapping", scope: !369, file: !6, line: 4287, baseType: !385, size: 32, offset: 608)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !97, line: 26, baseType: !136)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "gso_size", scope: !298, file: !6, line: 4219, baseType: !104, size: 32, offset: 1408)
!387 = !{!388, !389}
!388 = !DILocalVariable(name: "skb", arg: 1, scope: !294, file: !3, line: 714, type: !297)
!389 = !DILocalVariable(name: "pctx", scope: !294, file: !3, line: 716, type: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsing_context", file: !3, line: 41, size: 320, elements: !391)
!391 = !{!392, !393, !394, !399, !400, !401}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !390, file: !3, line: 42, baseType: !94, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !390, file: !3, line: 43, baseType: !94, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nh", scope: !390, file: !3, line: 44, baseType: !395, size: 64, offset: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_cursor", file: !396, line: 35, size: 64, elements: !397)
!396 = !DIFile(filename: "../lib/../include/xdp/parsing_helpers.h", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "e41ee3c44bb7300a1b081f0ef073eeff")
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !395, file: !396, line: 36, baseType: !94, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_len", scope: !390, file: !3, line: 45, baseType: !104, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !390, file: !3, line: 46, baseType: !104, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "is_egress", scope: !390, file: !3, line: 47, baseType: !186, size: 8, offset: 256)
!402 = !DILocation(line: 0, scope: !294)
!403 = !DILocation(line: 716, column: 2, scope: !294)
!404 = !DILocation(line: 716, column: 25, scope: !294)
!405 = !DILocation(line: 717, column: 30, scope: !294)
!406 = !{!407, !408, i64 76}
!407 = !{!"__sk_buff", !408, i64 0, !408, i64 4, !408, i64 8, !408, i64 12, !408, i64 16, !408, i64 20, !408, i64 24, !408, i64 28, !408, i64 32, !408, i64 36, !408, i64 40, !408, i64 44, !409, i64 48, !408, i64 68, !408, i64 72, !408, i64 76, !408, i64 80, !408, i64 84, !408, i64 88, !408, i64 92, !408, i64 96, !409, i64 100, !409, i64 116, !408, i64 132, !408, i64 136, !408, i64 140, !409, i64 144, !411, i64 152, !408, i64 160, !408, i64 164, !409, i64 168, !408, i64 176}
!408 = !{!"int", !409, i64 0}
!409 = !{!"omnipotent char", !410, i64 0}
!410 = !{!"Simple C/C++ TBAA"}
!411 = !{!"long long", !409, i64 0}
!412 = !DILocation(line: 717, column: 19, scope: !294)
!413 = !DILocation(line: 717, column: 11, scope: !294)
!414 = !DILocation(line: 716, column: 32, scope: !294)
!415 = !{!416, !417, i64 0}
!416 = !{!"parsing_context", !417, i64 0, !417, i64 8, !418, i64 16, !408, i64 24, !408, i64 28, !419, i64 32}
!417 = !{!"any pointer", !409, i64 0}
!418 = !{!"hdr_cursor", !417, i64 0}
!419 = !{!"_Bool", !409, i64 0}
!420 = !DILocation(line: 718, column: 34, scope: !294)
!421 = !{!407, !408, i64 80}
!422 = !DILocation(line: 718, column: 23, scope: !294)
!423 = !DILocation(line: 718, column: 15, scope: !294)
!424 = !{!416, !417, i64 8}
!425 = !DILocation(line: 720, column: 9, scope: !294)
!426 = !{!418, !417, i64 0}
!427 = !DILocation(line: 719, column: 19, scope: !294)
!428 = !{!407, !408, i64 0}
!429 = !{!416, !408, i64 24}
!430 = !{!416, !408, i64 28}
!431 = !{!416, !419, i64 32}
!432 = !DILocation(line: 724, column: 2, scope: !294)
!433 = !DILocation(line: 727, column: 1, scope: !294)
!434 = !DILocation(line: 726, column: 2, scope: !294)
!435 = distinct !DISubprogram(name: "pping_tc_ingress", scope: !3, file: !3, line: 731, type: !295, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !436)
!436 = !{!437, !438}
!437 = !DILocalVariable(name: "skb", arg: 1, scope: !435, file: !3, line: 731, type: !297)
!438 = !DILocalVariable(name: "pctx", scope: !435, file: !3, line: 733, type: !390)
!439 = !DILocation(line: 0, scope: !435)
!440 = !DILocation(line: 733, column: 2, scope: !435)
!441 = !DILocation(line: 733, column: 25, scope: !435)
!442 = !DILocation(line: 734, column: 30, scope: !435)
!443 = !DILocation(line: 734, column: 19, scope: !435)
!444 = !DILocation(line: 734, column: 11, scope: !435)
!445 = !DILocation(line: 733, column: 32, scope: !435)
!446 = !DILocation(line: 735, column: 34, scope: !435)
!447 = !DILocation(line: 735, column: 23, scope: !435)
!448 = !DILocation(line: 735, column: 15, scope: !435)
!449 = !DILocation(line: 737, column: 9, scope: !435)
!450 = !DILocation(line: 736, column: 19, scope: !435)
!451 = !DILocation(line: 738, column: 27, scope: !435)
!452 = !{!407, !408, i64 36}
!453 = !DILocation(line: 742, column: 2, scope: !435)
!454 = !DILocation(line: 745, column: 1, scope: !435)
!455 = !DILocation(line: 744, column: 2, scope: !435)
!456 = distinct !DISubprogram(name: "pping_xdp_ingress", scope: !3, file: !3, line: 749, type: !457, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!457 = !DISubroutineType(types: !458)
!458 = !{!136, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 4374, size: 192, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !460, file: !6, line: 4375, baseType: !104, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !460, file: !6, line: 4376, baseType: !104, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !460, file: !6, line: 4377, baseType: !104, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !460, file: !6, line: 4379, baseType: !104, size: 32, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !460, file: !6, line: 4380, baseType: !104, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !460, file: !6, line: 4382, baseType: !104, size: 32, offset: 160)
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "ctx", arg: 1, scope: !456, file: !3, line: 749, type: !459)
!470 = !DILocalVariable(name: "pctx", scope: !456, file: !3, line: 751, type: !390)
!471 = !DILocation(line: 0, scope: !456)
!472 = !DILocation(line: 751, column: 2, scope: !456)
!473 = !DILocation(line: 751, column: 25, scope: !456)
!474 = !DILocation(line: 752, column: 30, scope: !456)
!475 = !{!476, !408, i64 0}
!476 = !{!"xdp_md", !408, i64 0, !408, i64 4, !408, i64 8, !408, i64 12, !408, i64 16, !408, i64 20}
!477 = !DILocation(line: 752, column: 19, scope: !456)
!478 = !DILocation(line: 752, column: 11, scope: !456)
!479 = !DILocation(line: 751, column: 32, scope: !456)
!480 = !DILocation(line: 753, column: 34, scope: !456)
!481 = !{!476, !408, i64 4}
!482 = !DILocation(line: 753, column: 23, scope: !456)
!483 = !DILocation(line: 753, column: 15, scope: !456)
!484 = !DILocation(line: 755, column: 9, scope: !456)
!485 = !DILocation(line: 754, column: 14, scope: !456)
!486 = !DILocation(line: 756, column: 27, scope: !456)
!487 = !{!476, !408, i64 12}
!488 = !DILocation(line: 760, column: 2, scope: !456)
!489 = !DILocation(line: 763, column: 1, scope: !456)
!490 = !DILocation(line: 762, column: 2, scope: !456)
!491 = distinct !DISubprogram(name: "pping", scope: !3, file: !3, line: 691, type: !492, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !94, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!495 = !{!496, !497, !498, !655, !656, !657}
!496 = !DILocalVariable(name: "ctx", arg: 1, scope: !491, file: !3, line: 691, type: !94)
!497 = !DILocalVariable(name: "pctx", arg: 2, scope: !491, file: !3, line: 691, type: !494)
!498 = !DILocalVariable(name: "p_info", scope: !491, file: !3, line: 693, type: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packet_info", file: !3, line: 61, size: 1024, elements: !500)
!500 = !{!501, !559, !647, !648, !649, !650, !651, !652, !653, !654}
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !3, line: 62, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !3, line: 62, size: 64, elements: !503)
!503 = !{!504, !532}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "iph", scope: !502, file: !3, line: 63, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iphdr", file: !507, line: 87, size: 160, elements: !508)
!507 = !DIFile(filename: "/usr/include/linux/ip.h", directory: "", checksumkind: CSK_MD5, checksum: "042b09a58768855e3578a0a8eba49be7")
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517, !519}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ihl", scope: !506, file: !507, line: 89, baseType: !102, size: 4, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !506, file: !507, line: 90, baseType: !102, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !506, file: !507, line: 97, baseType: !102, size: 8, offset: 8)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !506, file: !507, line: 98, baseType: !118, size: 16, offset: 16)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !506, file: !507, line: 99, baseType: !118, size: 16, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !506, file: !507, line: 100, baseType: !118, size: 16, offset: 48)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !506, file: !507, line: 101, baseType: !102, size: 8, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !506, file: !507, line: 102, baseType: !102, size: 8, offset: 72)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !506, file: !507, line: 103, baseType: !518, size: 16, offset: 80)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !119, line: 31, baseType: !96)
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !507, line: 104, baseType: !520, size: 64, offset: 96)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !506, file: !507, line: 104, size: 64, elements: !521)
!521 = !{!522, !527}
!522 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !507, line: 104, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !507, line: 104, size: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !523, file: !507, line: 104, baseType: !124, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !523, file: !507, line: 104, baseType: !124, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !520, file: !507, line: 104, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !507, line: 104, size: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !528, file: !507, line: 104, baseType: !124, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !528, file: !507, line: 104, baseType: !124, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ip6h", scope: !502, file: !3, line: 64, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6hdr", file: !535, line: 118, size: 320, elements: !536)
!535 = !DIFile(filename: "/usr/include/linux/ipv6.h", directory: "", checksumkind: CSK_MD5, checksum: "9926d49458ea1e0cc4651362e733e03e")
!536 = !{!537, !538, !539, !543, !544, !545, !546}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !534, file: !535, line: 120, baseType: !102, size: 4, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !534, file: !535, line: 121, baseType: !102, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lbl", scope: !534, file: !535, line: 128, baseType: !540, size: 24, offset: 8)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 24, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 3)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "payload_len", scope: !534, file: !535, line: 130, baseType: !118, size: 16, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !534, file: !535, line: 131, baseType: !102, size: 8, offset: 48)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !534, file: !535, line: 132, baseType: !102, size: 8, offset: 56)
!546 = !DIDerivedType(tag: DW_TAG_member, scope: !534, file: !535, line: 134, baseType: !547, size: 256, offset: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !534, file: !535, line: 134, size: 256, elements: !548)
!548 = !{!549, !554}
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !535, line: 134, baseType: !550, size: 256)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !547, file: !535, line: 134, size: 256, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !550, file: !535, line: 134, baseType: !106, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !550, file: !535, line: 134, baseType: !106, size: 128, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !547, file: !535, line: 134, baseType: !555, size: 256)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !547, file: !535, line: 134, size: 256, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !555, file: !535, line: 134, baseType: !106, size: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !555, file: !535, line: 134, baseType: !106, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !3, line: 66, baseType: !560, size: 64, offset: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !3, line: 66, size: 64, elements: !561)
!561 = !{!562, !586, !625}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "icmph", scope: !560, file: !3, line: 67, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmphdr", file: !565, line: 89, size: 64, elements: !566)
!565 = !DIFile(filename: "/usr/include/linux/icmp.h", directory: "", checksumkind: CSK_MD5, checksum: "a505632898dce546638b3344627d334b")
!566 = !{!567, !568, !569, !570}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !564, file: !565, line: 90, baseType: !102, size: 8)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !564, file: !565, line: 91, baseType: !102, size: 8, offset: 8)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !564, file: !565, line: 92, baseType: !518, size: 16, offset: 16)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !564, file: !565, line: 104, baseType: !571, size: 32, offset: 32)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !565, line: 93, size: 32, elements: !572)
!572 = !{!573, !578, !579, !584}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !571, file: !565, line: 97, baseType: !574, size: 32)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !565, line: 94, size: 32, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !574, file: !565, line: 95, baseType: !118, size: 16)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !574, file: !565, line: 96, baseType: !118, size: 16, offset: 16)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "gateway", scope: !571, file: !565, line: 98, baseType: !124, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !571, file: !565, line: 102, baseType: !580, size: 32)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !565, line: 99, size: 32, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !580, file: !565, line: 100, baseType: !118, size: 16)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !580, file: !565, line: 101, baseType: !118, size: 16, offset: 16)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !571, file: !565, line: 103, baseType: !585, size: 32)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 32, elements: !125)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6h", scope: !560, file: !3, line: 68, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6hdr", file: !589, line: 8, size: 64, elements: !590)
!589 = !DIFile(filename: "/usr/include/linux/icmpv6.h", directory: "", checksumkind: CSK_MD5, checksum: "0310ca5584e6f44f6eea6cf040ee84b9")
!590 = !{!591, !592, !593, !594}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_type", scope: !588, file: !589, line: 10, baseType: !102, size: 8)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_code", scope: !588, file: !589, line: 11, baseType: !102, size: 8, offset: 8)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_cksum", scope: !588, file: !589, line: 12, baseType: !518, size: 16, offset: 16)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_dataun", scope: !588, file: !589, line: 63, baseType: !595, size: 32, offset: 32)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !589, line: 15, size: 32, elements: !596)
!596 = !{!597, !599, !601, !602, !607, !615}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "un_data32", scope: !595, file: !589, line: 16, baseType: !598, size: 32)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 32, elements: !137)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "un_data16", scope: !595, file: !589, line: 17, baseType: !600, size: 32)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 32, elements: !235)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "un_data8", scope: !595, file: !589, line: 18, baseType: !585, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "u_echo", scope: !595, file: !589, line: 23, baseType: !603, size: 32)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_echo", file: !589, line: 20, size: 32, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !603, file: !589, line: 21, baseType: !118, size: 16)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !603, file: !589, line: 22, baseType: !118, size: 16, offset: 16)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_advt", scope: !595, file: !589, line: 40, baseType: !608, size: 32)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_advt", file: !589, line: 25, size: 32, elements: !609)
!609 = !{!610, !611, !612, !613, !614}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !608, file: !589, line: 27, baseType: !104, size: 5, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !608, file: !589, line: 28, baseType: !104, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "solicited", scope: !608, file: !589, line: 29, baseType: !104, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !608, file: !589, line: 30, baseType: !104, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !608, file: !589, line: 31, baseType: !104, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_ra", scope: !595, file: !589, line: 61, baseType: !616, size: 32)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_ra", file: !589, line: 42, size: 32, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !616, file: !589, line: 43, baseType: !102, size: 8)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !616, file: !589, line: 45, baseType: !102, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "router_pref", scope: !616, file: !589, line: 46, baseType: !102, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "home_agent", scope: !616, file: !589, line: 47, baseType: !102, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !616, file: !589, line: 48, baseType: !102, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 8)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !616, file: !589, line: 49, baseType: !102, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rt_lifetime", scope: !616, file: !589, line: 60, baseType: !118, size: 16, offset: 16)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tcph", scope: !560, file: !3, line: 69, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcphdr", file: !628, line: 25, size: 160, elements: !629)
!628 = !DIFile(filename: "/usr/include/linux/tcp.h", directory: "", checksumkind: CSK_MD5, checksum: "8d74bf2133e7b3dab885994b9916aa13")
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !627, file: !628, line: 26, baseType: !118, size: 16)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !627, file: !628, line: 27, baseType: !118, size: 16, offset: 16)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !627, file: !628, line: 28, baseType: !124, size: 32, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ack_seq", scope: !627, file: !628, line: 29, baseType: !124, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !627, file: !628, line: 31, baseType: !96, size: 4, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "doff", scope: !627, file: !628, line: 32, baseType: !96, size: 4, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fin", scope: !627, file: !628, line: 33, baseType: !96, size: 1, offset: 104, flags: DIFlagBitField, extraData: i64 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "syn", scope: !627, file: !628, line: 34, baseType: !96, size: 1, offset: 105, flags: DIFlagBitField, extraData: i64 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rst", scope: !627, file: !628, line: 35, baseType: !96, size: 1, offset: 106, flags: DIFlagBitField, extraData: i64 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "psh", scope: !627, file: !628, line: 36, baseType: !96, size: 1, offset: 107, flags: DIFlagBitField, extraData: i64 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !627, file: !628, line: 37, baseType: !96, size: 1, offset: 108, flags: DIFlagBitField, extraData: i64 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "urg", scope: !627, file: !628, line: 38, baseType: !96, size: 1, offset: 109, flags: DIFlagBitField, extraData: i64 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ece", scope: !627, file: !628, line: 39, baseType: !96, size: 1, offset: 110, flags: DIFlagBitField, extraData: i64 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "cwr", scope: !627, file: !628, line: 40, baseType: !96, size: 1, offset: 111, flags: DIFlagBitField, extraData: i64 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !627, file: !628, line: 55, baseType: !118, size: 16, offset: 112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !627, file: !628, line: 56, baseType: !518, size: 16, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "urg_ptr", scope: !627, file: !628, line: 57, baseType: !118, size: 16, offset: 144)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !499, file: !3, line: 71, baseType: !159, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !499, file: !3, line: 72, baseType: !104, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !499, file: !3, line: 73, baseType: !141, size: 384, offset: 224)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reply_pid", scope: !499, file: !3, line: 74, baseType: !141, size: 384, offset: 608)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pid_valid", scope: !499, file: !3, line: 75, baseType: !186, size: 8, offset: 992)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reply_pid_valid", scope: !499, file: !3, line: 76, baseType: !186, size: 8, offset: 1000)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !499, file: !3, line: 77, baseType: !24, size: 8, offset: 1008)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "event_reason", scope: !499, file: !3, line: 78, baseType: !14, size: 8, offset: 1016)
!655 = !DILocalVariable(name: "flow", scope: !491, file: !3, line: 694, type: !174)
!656 = !DILocalVariable(name: "rev_flow", scope: !491, file: !3, line: 694, type: !174)
!657 = !DILocalVariable(name: "new_flow", scope: !491, file: !3, line: 695, type: !186)
!658 = !DILocation(line: 0, scope: !491)
!659 = !DILocation(line: 693, column: 2, scope: !491)
!660 = !DILocation(line: 693, column: 21, scope: !491)
!661 = !DILocalVariable(name: "pctx", arg: 1, scope: !662, file: !3, line: 317, type: !494)
!662 = distinct !DISubprogram(name: "parse_packet_identifier", scope: !3, file: !3, line: 317, type: !663, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!663 = !DISubroutineType(types: !664)
!664 = !{!136, !494, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!666 = !{!661, !667, !668, !669, !670}
!667 = !DILocalVariable(name: "p_info", arg: 2, scope: !662, file: !3, line: 318, type: !665)
!668 = !DILocalVariable(name: "proto", scope: !662, file: !3, line: 320, type: !136)
!669 = !DILocalVariable(name: "err", scope: !662, file: !3, line: 320, type: !136)
!670 = !DILocalVariable(name: "eth", scope: !662, file: !3, line: 321, type: !671)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethhdr", file: !673, line: 168, size: 112, elements: !674)
!673 = !DIFile(filename: "/usr/include/linux/if_ether.h", directory: "", checksumkind: CSK_MD5, checksum: "ab0320da726e75d904811ce344979934")
!674 = !{!675, !677, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "h_dest", scope: !672, file: !673, line: 169, baseType: !676, size: 48)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 48, elements: !277)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "h_source", scope: !672, file: !673, line: 170, baseType: !676, size: 48, offset: 48)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "h_proto", scope: !672, file: !673, line: 171, baseType: !118, size: 16, offset: 96)
!679 = !DILocation(line: 0, scope: !662, inlinedAt: !680)
!680 = distinct !DILocation(line: 697, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !491, file: !3, line: 697, column: 7)
!682 = !DILocation(line: 323, column: 17, scope: !662, inlinedAt: !680)
!683 = !DILocation(line: 323, column: 10, scope: !662, inlinedAt: !680)
!684 = !DILocation(line: 323, column: 15, scope: !662, inlinedAt: !680)
!685 = !{!686, !411, i64 16}
!686 = !{!"packet_info", !409, i64 0, !409, i64 8, !411, i64 16, !408, i64 24, !687, i64 28, !687, i64 76, !419, i64 124, !419, i64 125, !409, i64 126, !409, i64 127}
!687 = !{!"packet_id", !688, i64 0, !408, i64 44}
!688 = !{!"network_tuple", !689, i64 0, !689, i64 20, !691, i64 40, !409, i64 42, !409, i64 43}
!689 = !{!"flow_address", !690, i64 0, !691, i64 16, !691, i64 18}
!690 = !{!"in6_addr", !409, i64 0}
!691 = !{!"short", !409, i64 0}
!692 = !DILocation(line: 324, column: 30, scope: !662, inlinedAt: !680)
!693 = !DILocation(line: 324, column: 40, scope: !662, inlinedAt: !680)
!694 = !DILocalVariable(name: "nh", arg: 1, scope: !695, file: !396, line: 131, type: !698)
!695 = distinct !DISubprogram(name: "parse_ethhdr", scope: !396, file: !396, line: 131, type: !696, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!696 = !DISubroutineType(types: !697)
!697 = !{!136, !698, !94, !699}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!700 = !{!694, !701, !702}
!701 = !DILocalVariable(name: "data_end", arg: 2, scope: !695, file: !396, line: 132, type: !94)
!702 = !DILocalVariable(name: "ethhdr", arg: 3, scope: !695, file: !396, line: 133, type: !699)
!703 = !DILocation(line: 0, scope: !695, inlinedAt: !704)
!704 = distinct !DILocation(line: 324, column: 10, scope: !662, inlinedAt: !680)
!705 = !DILocalVariable(name: "nh", arg: 1, scope: !706, file: !396, line: 86, type: !698)
!706 = distinct !DISubprogram(name: "parse_ethhdr_vlan", scope: !396, file: !396, line: 86, type: !707, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!707 = !DISubroutineType(types: !708)
!708 = !{!136, !698, !94, !699, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "collect_vlans", file: !396, line: 71, size: 32, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !710, file: !396, line: 72, baseType: !713, size: 32)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32, elements: !235)
!714 = !{!705, !715, !716, !717, !718, !719, !720, !726, !727}
!715 = !DILocalVariable(name: "data_end", arg: 2, scope: !706, file: !396, line: 87, type: !94)
!716 = !DILocalVariable(name: "ethhdr", arg: 3, scope: !706, file: !396, line: 88, type: !699)
!717 = !DILocalVariable(name: "vlans", arg: 4, scope: !706, file: !396, line: 89, type: !709)
!718 = !DILocalVariable(name: "eth", scope: !706, file: !396, line: 91, type: !671)
!719 = !DILocalVariable(name: "hdrsize", scope: !706, file: !396, line: 92, type: !136)
!720 = !DILocalVariable(name: "vlh", scope: !706, file: !396, line: 93, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vlan_hdr", file: !396, line: 44, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_TCI", scope: !722, file: !396, line: 45, baseType: !118, size: 16)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_encapsulated_proto", scope: !722, file: !396, line: 46, baseType: !118, size: 16, offset: 16)
!726 = !DILocalVariable(name: "h_proto", scope: !706, file: !396, line: 94, type: !96)
!727 = !DILocalVariable(name: "i", scope: !706, file: !396, line: 95, type: !136)
!728 = !DILocation(line: 0, scope: !706, inlinedAt: !729)
!729 = distinct !DILocation(line: 136, column: 9, scope: !695, inlinedAt: !704)
!730 = !DILocation(line: 91, column: 27, scope: !706, inlinedAt: !729)
!731 = !DILocation(line: 100, column: 14, scope: !732, inlinedAt: !729)
!732 = distinct !DILexicalBlock(scope: !706, file: !396, line: 100, column: 6)
!733 = !DILocation(line: 100, column: 24, scope: !732, inlinedAt: !729)
!734 = !DILocation(line: 100, column: 6, scope: !706, inlinedAt: !729)
!735 = !DILocation(line: 106, column: 17, scope: !706, inlinedAt: !729)
!736 = !{!691, !691, i64 0}
!737 = !DILocalVariable(name: "h_proto", arg: 1, scope: !738, file: !396, line: 75, type: !96)
!738 = distinct !DISubprogram(name: "proto_is_vlan", scope: !396, file: !396, line: 75, type: !739, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!136, !96}
!741 = !{!737}
!742 = !DILocation(line: 0, scope: !738, inlinedAt: !743)
!743 = distinct !DILocation(line: 113, column: 8, scope: !744, inlinedAt: !729)
!744 = distinct !DILexicalBlock(scope: !745, file: !396, line: 113, column: 7)
!745 = distinct !DILexicalBlock(scope: !746, file: !396, line: 112, column: 39)
!746 = distinct !DILexicalBlock(scope: !747, file: !396, line: 112, column: 2)
!747 = distinct !DILexicalBlock(scope: !706, file: !396, line: 112, column: 2)
!748 = !DILocation(line: 77, column: 20, scope: !738, inlinedAt: !743)
!749 = !DILocation(line: 77, column: 46, scope: !738, inlinedAt: !743)
!750 = !DILocation(line: 113, column: 7, scope: !745, inlinedAt: !729)
!751 = !DILocation(line: 119, column: 18, scope: !745, inlinedAt: !729)
!752 = !DILocation(line: 127, column: 10, scope: !706, inlinedAt: !729)
!753 = !DILocation(line: 327, column: 6, scope: !662, inlinedAt: !680)
!754 = !DILocation(line: 328, column: 20, scope: !755, inlinedAt: !680)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 327, column: 36)
!756 = distinct !DILexicalBlock(scope: !662, file: !3, line: 327, column: 6)
!757 = !DILocation(line: 328, column: 24, scope: !755, inlinedAt: !680)
!758 = !{!686, !409, i64 70}
!759 = !DILocalVariable(name: "nh", arg: 1, scope: !760, file: !396, line: 196, type: !698)
!760 = distinct !DISubprogram(name: "parse_iphdr", scope: !396, file: !396, line: 196, type: !761, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!761 = !DISubroutineType(types: !762)
!762 = !{!136, !698, !94, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!764 = !{!759, !765, !766, !767, !768}
!765 = !DILocalVariable(name: "data_end", arg: 2, scope: !760, file: !396, line: 197, type: !94)
!766 = !DILocalVariable(name: "iphdr", arg: 3, scope: !760, file: !396, line: 198, type: !763)
!767 = !DILocalVariable(name: "iph", scope: !760, file: !396, line: 200, type: !505)
!768 = !DILocalVariable(name: "hdrsize", scope: !760, file: !396, line: 201, type: !136)
!769 = !DILocation(line: 0, scope: !760, inlinedAt: !770)
!770 = distinct !DILocation(line: 330, column: 4, scope: !755, inlinedAt: !680)
!771 = !DILocation(line: 203, column: 10, scope: !772, inlinedAt: !770)
!772 = distinct !DILexicalBlock(scope: !760, file: !396, line: 203, column: 6)
!773 = !DILocation(line: 203, column: 14, scope: !772, inlinedAt: !770)
!774 = !DILocation(line: 203, column: 6, scope: !760, inlinedAt: !770)
!775 = !DILocation(line: 206, column: 11, scope: !776, inlinedAt: !770)
!776 = distinct !DILexicalBlock(scope: !760, file: !396, line: 206, column: 6)
!777 = !DILocation(line: 206, column: 19, scope: !776, inlinedAt: !770)
!778 = !DILocation(line: 206, column: 6, scope: !760, inlinedAt: !770)
!779 = !DILocation(line: 209, column: 21, scope: !760, inlinedAt: !770)
!780 = !DILocation(line: 211, column: 13, scope: !781, inlinedAt: !770)
!781 = distinct !DILexicalBlock(scope: !760, file: !396, line: 211, column: 5)
!782 = !DILocation(line: 211, column: 5, scope: !760, inlinedAt: !770)
!783 = !DILocation(line: 215, column: 14, scope: !784, inlinedAt: !770)
!784 = distinct !DILexicalBlock(scope: !760, file: !396, line: 215, column: 6)
!785 = !DILocation(line: 215, column: 24, scope: !784, inlinedAt: !770)
!786 = !DILocation(line: 215, column: 6, scope: !760, inlinedAt: !770)
!787 = !DILocation(line: 218, column: 10, scope: !760, inlinedAt: !770)
!788 = !DILocation(line: 219, column: 9, scope: !760, inlinedAt: !770)
!789 = !{!417, !417, i64 0}
!790 = !DILocation(line: 221, column: 14, scope: !760, inlinedAt: !770)
!791 = !{!792, !409, i64 9}
!792 = !{!"iphdr", !409, i64 0, !409, i64 0, !409, i64 1, !691, i64 2, !691, i64 4, !691, i64 6, !409, i64 8, !409, i64 9, !691, i64 10, !409, i64 12}
!793 = !DILocation(line: 221, column: 2, scope: !760, inlinedAt: !770)
!794 = !DILocation(line: 332, column: 20, scope: !795, inlinedAt: !680)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 331, column: 45)
!796 = distinct !DILexicalBlock(scope: !756, file: !3, line: 331, column: 13)
!797 = !DILocation(line: 332, column: 24, scope: !795, inlinedAt: !680)
!798 = !DILocalVariable(name: "nh", arg: 1, scope: !799, file: !396, line: 174, type: !698)
!799 = distinct !DISubprogram(name: "parse_ip6hdr", scope: !396, file: !396, line: 174, type: !800, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!800 = !DISubroutineType(types: !801)
!801 = !{!136, !698, !94, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!803 = !{!798, !804, !805, !806}
!804 = !DILocalVariable(name: "data_end", arg: 2, scope: !799, file: !396, line: 175, type: !94)
!805 = !DILocalVariable(name: "ip6hdr", arg: 3, scope: !799, file: !396, line: 176, type: !802)
!806 = !DILocalVariable(name: "ip6h", scope: !799, file: !396, line: 178, type: !533)
!807 = !DILocation(line: 0, scope: !799, inlinedAt: !808)
!808 = distinct !DILocation(line: 334, column: 4, scope: !795, inlinedAt: !680)
!809 = !DILocation(line: 184, column: 11, scope: !810, inlinedAt: !808)
!810 = distinct !DILexicalBlock(scope: !799, file: !396, line: 184, column: 6)
!811 = !DILocation(line: 184, column: 15, scope: !810, inlinedAt: !808)
!812 = !DILocation(line: 184, column: 6, scope: !799, inlinedAt: !808)
!813 = !DILocation(line: 187, column: 12, scope: !814, inlinedAt: !808)
!814 = distinct !DILexicalBlock(scope: !799, file: !396, line: 187, column: 6)
!815 = !DILocation(line: 187, column: 20, scope: !814, inlinedAt: !808)
!816 = !DILocation(line: 187, column: 6, scope: !799, inlinedAt: !808)
!817 = !DILocation(line: 190, column: 10, scope: !799, inlinedAt: !808)
!818 = !DILocation(line: 191, column: 10, scope: !799, inlinedAt: !808)
!819 = !DILocalVariable(name: "nh", arg: 1, scope: !820, file: !396, line: 139, type: !698)
!820 = distinct !DISubprogram(name: "skip_ip6hdrext", scope: !396, file: !396, line: 139, type: !821, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{!136, !698, !94, !102}
!823 = !{!819, !824, !825, !826, !828}
!824 = !DILocalVariable(name: "data_end", arg: 2, scope: !820, file: !396, line: 140, type: !94)
!825 = !DILocalVariable(name: "next_hdr_type", arg: 3, scope: !820, file: !396, line: 141, type: !102)
!826 = !DILocalVariable(name: "i", scope: !827, file: !396, line: 143, type: !136)
!827 = distinct !DILexicalBlock(scope: !820, file: !396, line: 143, column: 2)
!828 = !DILocalVariable(name: "hdr", scope: !829, file: !396, line: 144, type: !831)
!829 = distinct !DILexicalBlock(scope: !830, file: !396, line: 143, column: 47)
!830 = distinct !DILexicalBlock(scope: !827, file: !396, line: 143, column: 2)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_opt_hdr", file: !535, line: 63, size: 16, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !832, file: !535, line: 64, baseType: !102, size: 8)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "hdrlen", scope: !832, file: !535, line: 65, baseType: !102, size: 8, offset: 8)
!836 = !DILocation(line: 0, scope: !820, inlinedAt: !837)
!837 = distinct !DILocation(line: 193, column: 9, scope: !799, inlinedAt: !808)
!838 = !DILocation(line: 0, scope: !827, inlinedAt: !837)
!839 = !DILocation(line: 0, scope: !829, inlinedAt: !837)
!840 = !DILocation(line: 146, column: 11, scope: !841, inlinedAt: !837)
!841 = distinct !DILexicalBlock(scope: !829, file: !396, line: 146, column: 7)
!842 = !DILocation(line: 146, column: 15, scope: !841, inlinedAt: !837)
!843 = !DILocation(line: 146, column: 7, scope: !829, inlinedAt: !837)
!844 = !DILocation(line: 193, column: 44, scope: !799, inlinedAt: !808)
!845 = !{!846, !409, i64 6}
!846 = !{!"ipv6hdr", !409, i64 0, !409, i64 0, !409, i64 1, !691, i64 4, !409, i64 6, !409, i64 7, !409, i64 8}
!847 = !DILocation(line: 149, column: 3, scope: !829, inlinedAt: !837)
!848 = !DILocation(line: 160, column: 4, scope: !849, inlinedAt: !837)
!849 = distinct !DILexicalBlock(scope: !829, file: !396, line: 149, column: 26)
!850 = !DILocation(line: 0, scope: !849, inlinedAt: !837)
!851 = !{!852, !409, i64 1}
!852 = !{!"ipv6_opt_hdr", !409, i64 0, !409, i64 1}
!853 = !{!852, !409, i64 0}
!854 = !DILocation(line: 156, column: 4, scope: !849, inlinedAt: !837)
!855 = !DILocation(line: 340, column: 13, scope: !856, inlinedAt: !680)
!856 = distinct !DILexicalBlock(scope: !662, file: !3, line: 340, column: 6)
!857 = !{!858, !419, i64 17}
!858 = !{!"bpf_config", !411, i64 0, !411, i64 8, !419, i64 16, !419, i64 17, !419, i64 18, !419, i64 19, !408, i64 20}
!859 = !{i8 0, i8 2}
!860 = !{}
!861 = !DILocation(line: 342, column: 18, scope: !862, inlinedAt: !680)
!862 = distinct !DILexicalBlock(scope: !856, file: !3, line: 342, column: 11)
!863 = !{!858, !419, i64 18}
!864 = !DILocation(line: 346, column: 18, scope: !865, inlinedAt: !680)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 346, column: 11)
!866 = !DILocation(line: 346, column: 29, scope: !865, inlinedAt: !680)
!867 = !DILocation(line: 0, scope: !756, inlinedAt: !680)
!868 = !{!686, !691, i64 68}
!869 = !DILocation(line: 340, column: 23, scope: !856, inlinedAt: !680)
!870 = !DILocalVariable(name: "pctx", arg: 1, scope: !871, file: !3, line: 197, type: !494)
!871 = distinct !DISubprogram(name: "parse_tcp_identifier", scope: !3, file: !3, line: 197, type: !663, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!872 = !{!870, !873}
!873 = !DILocalVariable(name: "p_info", arg: 2, scope: !871, file: !3, line: 198, type: !665)
!874 = !DILocation(line: 0, scope: !871, inlinedAt: !875)
!875 = distinct !DILocation(line: 341, column: 9, scope: !856, inlinedAt: !680)
!876 = !DILocation(line: 200, column: 55, scope: !877, inlinedAt: !875)
!877 = distinct !DILexicalBlock(scope: !871, file: !3, line: 200, column: 6)
!878 = !DILocalVariable(name: "nh", arg: 1, scope: !879, file: !396, line: 295, type: !698)
!879 = distinct !DISubprogram(name: "parse_tcphdr", scope: !396, file: !396, line: 295, type: !880, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!880 = !DISubroutineType(types: !881)
!881 = !{!136, !698, !94, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!883 = !{!878, !884, !885, !886, !887}
!884 = !DILocalVariable(name: "data_end", arg: 2, scope: !879, file: !396, line: 296, type: !94)
!885 = !DILocalVariable(name: "tcphdr", arg: 3, scope: !879, file: !396, line: 297, type: !882)
!886 = !DILocalVariable(name: "len", scope: !879, file: !396, line: 299, type: !136)
!887 = !DILocalVariable(name: "h", scope: !879, file: !396, line: 300, type: !626)
!888 = !DILocation(line: 0, scope: !879, inlinedAt: !889)
!889 = distinct !DILocation(line: 200, column: 6, scope: !877, inlinedAt: !875)
!890 = !DILocation(line: 302, column: 8, scope: !891, inlinedAt: !889)
!891 = distinct !DILexicalBlock(scope: !879, file: !396, line: 302, column: 6)
!892 = !DILocation(line: 302, column: 12, scope: !891, inlinedAt: !889)
!893 = !DILocation(line: 302, column: 6, scope: !879, inlinedAt: !889)
!894 = !DILocation(line: 305, column: 11, scope: !879, inlinedAt: !889)
!895 = !DILocation(line: 305, column: 16, scope: !879, inlinedAt: !889)
!896 = !DILocation(line: 307, column: 9, scope: !897, inlinedAt: !889)
!897 = distinct !DILexicalBlock(scope: !879, file: !396, line: 307, column: 5)
!898 = !DILocation(line: 307, column: 5, scope: !879, inlinedAt: !889)
!899 = !DILocation(line: 311, column: 14, scope: !900, inlinedAt: !889)
!900 = distinct !DILexicalBlock(scope: !879, file: !396, line: 311, column: 6)
!901 = !DILocation(line: 311, column: 20, scope: !900, inlinedAt: !889)
!902 = !DILocation(line: 311, column: 6, scope: !879, inlinedAt: !889)
!903 = !DILocation(line: 314, column: 10, scope: !879, inlinedAt: !889)
!904 = !DILocation(line: 315, column: 10, scope: !879, inlinedAt: !889)
!905 = !DILocation(line: 203, column: 62, scope: !906, inlinedAt: !875)
!906 = distinct !DILexicalBlock(scope: !871, file: !3, line: 203, column: 6)
!907 = !DILocation(line: 204, column: 24, scope: !906, inlinedAt: !875)
!908 = !DILocalVariable(name: "tcph", arg: 1, scope: !909, file: !3, line: 137, type: !626)
!909 = distinct !DISubprogram(name: "parse_tcp_ts", scope: !3, file: !3, line: 137, type: !910, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{!136, !626, !94, !103, !103}
!912 = !{!908, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!913 = !DILocalVariable(name: "data_end", arg: 2, scope: !909, file: !3, line: 137, type: !94)
!914 = !DILocalVariable(name: "tsval", arg: 3, scope: !909, file: !3, line: 137, type: !103)
!915 = !DILocalVariable(name: "tsecr", arg: 4, scope: !909, file: !3, line: 138, type: !103)
!916 = !DILocalVariable(name: "len", scope: !909, file: !3, line: 140, type: !136)
!917 = !DILocalVariable(name: "opt_end", scope: !909, file: !3, line: 141, type: !94)
!918 = !DILocalVariable(name: "pos", scope: !909, file: !3, line: 142, type: !101)
!919 = !DILocalVariable(name: "i", scope: !909, file: !3, line: 143, type: !102)
!920 = !DILocalVariable(name: "opt", scope: !909, file: !3, line: 143, type: !102)
!921 = !DILocalVariable(name: "opt_size", scope: !909, file: !3, line: 145, type: !922)
!922 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!923 = !DILocation(line: 0, scope: !909, inlinedAt: !924)
!924 = distinct !DILocation(line: 203, column: 6, scope: !906, inlinedAt: !875)
!925 = !DILocation(line: 140, column: 18, scope: !909, inlinedAt: !924)
!926 = !DILocation(line: 140, column: 23, scope: !909, inlinedAt: !924)
!927 = !DILocation(line: 141, column: 31, scope: !909, inlinedAt: !924)
!928 = !DILocation(line: 144, column: 2, scope: !909, inlinedAt: !924)
!929 = !DILocation(line: 145, column: 3, scope: !909, inlinedAt: !924)
!930 = !DILocation(line: 147, column: 26, scope: !931, inlinedAt: !924)
!931 = distinct !DILexicalBlock(scope: !909, file: !3, line: 147, column: 6)
!932 = !DILocation(line: 151, column: 11, scope: !933, inlinedAt: !924)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 151, column: 7)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 150, column: 40)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 150, column: 2)
!936 = distinct !DILexicalBlock(scope: !909, file: !3, line: 150, column: 2)
!937 = !DILocation(line: 151, column: 15, scope: !933, inlinedAt: !924)
!938 = !DILocation(line: 151, column: 25, scope: !933, inlinedAt: !924)
!939 = !DILocation(line: 154, column: 9, scope: !934, inlinedAt: !924)
!940 = !{!409, !409, i64 0}
!941 = !DILocation(line: 155, column: 7, scope: !934, inlinedAt: !924)
!942 = !DILocation(line: 164, column: 11, scope: !943, inlinedAt: !924)
!943 = distinct !DILexicalBlock(scope: !934, file: !3, line: 164, column: 7)
!944 = !DILocation(line: 164, column: 15, scope: !943, inlinedAt: !924)
!945 = !DILocation(line: 164, column: 25, scope: !943, inlinedAt: !924)
!946 = !DILocation(line: 166, column: 14, scope: !934, inlinedAt: !924)
!947 = !DILocation(line: 166, column: 12, scope: !934, inlinedAt: !924)
!948 = !DILocation(line: 167, column: 7, scope: !949, inlinedAt: !924)
!949 = distinct !DILexicalBlock(scope: !934, file: !3, line: 167, column: 7)
!950 = !DILocation(line: 167, column: 16, scope: !949, inlinedAt: !924)
!951 = !DILocation(line: 167, column: 7, scope: !934, inlinedAt: !924)
!952 = !DILocation(line: 171, column: 11, scope: !953, inlinedAt: !924)
!953 = distinct !DILexicalBlock(scope: !934, file: !3, line: 171, column: 7)
!954 = !DILocation(line: 171, column: 16, scope: !953, inlinedAt: !924)
!955 = !DILocation(line: 171, column: 19, scope: !953, inlinedAt: !924)
!956 = !DILocation(line: 171, column: 28, scope: !953, inlinedAt: !924)
!957 = !DILocation(line: 171, column: 7, scope: !934, inlinedAt: !924)
!958 = !DILocation(line: 172, column: 12, scope: !959, inlinedAt: !924)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 172, column: 8)
!960 = distinct !DILexicalBlock(scope: !953, file: !3, line: 171, column: 35)
!961 = !DILocation(line: 172, column: 17, scope: !959, inlinedAt: !924)
!962 = !DILocation(line: 172, column: 27, scope: !959, inlinedAt: !924)
!963 = !DILocation(line: 180, column: 10, scope: !934, inlinedAt: !924)
!964 = !DILocation(line: 180, column: 7, scope: !934, inlinedAt: !924)
!965 = !DILocation(line: 181, column: 2, scope: !934, inlinedAt: !924)
!966 = !DILocation(line: 0, scope: !934, inlinedAt: !924)
!967 = !DILocation(line: 183, column: 1, scope: !909, inlinedAt: !924)
!968 = !DILocation(line: 203, column: 6, scope: !871, inlinedAt: !875)
!969 = !DILocation(line: 174, column: 13, scope: !960, inlinedAt: !924)
!970 = !{!408, !408, i64 0}
!971 = !DILocation(line: 174, column: 11, scope: !960, inlinedAt: !924)
!972 = !DILocation(line: 175, column: 28, scope: !960, inlinedAt: !924)
!973 = !DILocation(line: 175, column: 13, scope: !960, inlinedAt: !924)
!974 = !DILocation(line: 175, column: 11, scope: !960, inlinedAt: !924)
!975 = !DILocation(line: 207, column: 46, scope: !871, inlinedAt: !875)
!976 = !{!977, !691, i64 0}
!977 = !{!"tcphdr", !691, i64 0, !691, i64 2, !408, i64 4, !408, i64 8, !691, i64 12, !691, i64 12, !691, i64 13, !691, i64 13, !691, i64 13, !691, i64 13, !691, i64 13, !691, i64 13, !691, i64 13, !691, i64 13, !691, i64 14, !691, i64 16, !691, i64 18}
!978 = !DILocation(line: 207, column: 25, scope: !871, inlinedAt: !875)
!979 = !DILocation(line: 207, column: 30, scope: !871, inlinedAt: !875)
!980 = !{!686, !691, i64 44}
!981 = !DILocation(line: 208, column: 46, scope: !871, inlinedAt: !875)
!982 = !{!977, !691, i64 2}
!983 = !DILocation(line: 208, column: 25, scope: !871, inlinedAt: !875)
!984 = !DILocation(line: 208, column: 30, scope: !871, inlinedAt: !875)
!985 = !{!686, !691, i64 64}
!986 = !DILocation(line: 212, column: 24, scope: !871, inlinedAt: !875)
!987 = !DILocation(line: 212, column: 16, scope: !871, inlinedAt: !875)
!988 = !DILocation(line: 212, column: 37, scope: !871, inlinedAt: !875)
!989 = !DILocation(line: 212, column: 31, scope: !871, inlinedAt: !875)
!990 = !DILocation(line: 212, column: 29, scope: !871, inlinedAt: !875)
!991 = !DILocation(line: 212, column: 45, scope: !871, inlinedAt: !875)
!992 = !DILocation(line: 212, column: 62, scope: !871, inlinedAt: !875)
!993 = !DILocation(line: 211, column: 10, scope: !871, inlinedAt: !875)
!994 = !DILocation(line: 211, column: 20, scope: !871, inlinedAt: !875)
!995 = !{!686, !419, i64 124}
!996 = !DILocation(line: 215, column: 42, scope: !871, inlinedAt: !875)
!997 = !DILocation(line: 215, column: 10, scope: !871, inlinedAt: !875)
!998 = !DILocation(line: 215, column: 26, scope: !871, inlinedAt: !875)
!999 = !{!686, !419, i64 125}
!1000 = !DILocation(line: 218, column: 20, scope: !1001, inlinedAt: !875)
!1001 = distinct !DILexicalBlock(scope: !871, file: !3, line: 218, column: 6)
!1002 = !DILocation(line: 218, column: 6, scope: !1001, inlinedAt: !875)
!1003 = !DILocation(line: 218, column: 6, scope: !871, inlinedAt: !875)
!1004 = !DILocation(line: 221, column: 13, scope: !1005, inlinedAt: !875)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 221, column: 13)
!1006 = !DILocation(line: 221, column: 13, scope: !1001, inlinedAt: !875)
!1007 = !DILocation(line: 222, column: 11, scope: !1008, inlinedAt: !875)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 221, column: 32)
!1009 = !DILocation(line: 222, column: 22, scope: !1008, inlinedAt: !875)
!1010 = !{!686, !409, i64 126}
!1011 = !DILocation(line: 223, column: 11, scope: !1008, inlinedAt: !875)
!1012 = !DILocation(line: 223, column: 24, scope: !1008, inlinedAt: !875)
!1013 = !{!686, !409, i64 127}
!1014 = !DILocation(line: 355, column: 14, scope: !1015, inlinedAt: !680)
!1015 = distinct !DILexicalBlock(scope: !662, file: !3, line: 355, column: 6)
!1016 = !DILocation(line: 355, column: 6, scope: !662, inlinedAt: !680)
!1017 = !DILocation(line: 224, column: 13, scope: !1018, inlinedAt: !875)
!1018 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 224, column: 13)
!1019 = !DILocation(line: 0, scope: !1018, inlinedAt: !875)
!1020 = !DILocation(line: 224, column: 13, scope: !1005, inlinedAt: !875)
!1021 = !DILocation(line: 225, column: 22, scope: !1022, inlinedAt: !875)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 224, column: 32)
!1023 = !DILocation(line: 226, column: 40, scope: !1022, inlinedAt: !875)
!1024 = !DILocation(line: 226, column: 26, scope: !1022, inlinedAt: !875)
!1025 = !DILocation(line: 226, column: 11, scope: !1022, inlinedAt: !875)
!1026 = !DILocation(line: 226, column: 24, scope: !1022, inlinedAt: !875)
!1027 = !DILocation(line: 230, column: 22, scope: !1028, inlinedAt: !875)
!1028 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 229, column: 9)
!1029 = !DILocation(line: 342, column: 29, scope: !862, inlinedAt: !680)
!1030 = !DILocalVariable(name: "pctx", arg: 1, scope: !1031, file: !3, line: 252, type: !494)
!1031 = distinct !DISubprogram(name: "parse_icmp6_identifier", scope: !3, file: !3, line: 252, type: !663, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1032 = !{!1030, !1033}
!1033 = !DILocalVariable(name: "p_info", arg: 2, scope: !1031, file: !3, line: 253, type: !665)
!1034 = !DILocation(line: 0, scope: !1031, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 345, column: 9, scope: !862, inlinedAt: !680)
!1036 = !DILocalVariable(name: "nh", arg: 1, scope: !1037, file: !396, line: 224, type: !698)
!1037 = distinct !DISubprogram(name: "parse_icmp6hdr", scope: !396, file: !396, line: 224, type: !1038, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1041)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!136, !698, !94, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!1041 = !{!1036, !1042, !1043, !1044}
!1042 = !DILocalVariable(name: "data_end", arg: 2, scope: !1037, file: !396, line: 225, type: !94)
!1043 = !DILocalVariable(name: "icmp6hdr", arg: 3, scope: !1037, file: !396, line: 226, type: !1040)
!1044 = !DILocalVariable(name: "icmp6h", scope: !1037, file: !396, line: 228, type: !587)
!1045 = !DILocation(line: 0, scope: !1037, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 255, column: 6, scope: !1047, inlinedAt: !1035)
!1047 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 255, column: 6)
!1048 = !DILocation(line: 230, column: 13, scope: !1049, inlinedAt: !1046)
!1049 = distinct !DILexicalBlock(scope: !1037, file: !396, line: 230, column: 6)
!1050 = !DILocation(line: 230, column: 17, scope: !1049, inlinedAt: !1046)
!1051 = !DILocation(line: 230, column: 6, scope: !1037, inlinedAt: !1046)
!1052 = !DILocation(line: 255, column: 57, scope: !1047, inlinedAt: !1035)
!1053 = !DILocation(line: 233, column: 12, scope: !1037, inlinedAt: !1046)
!1054 = !DILocation(line: 234, column: 12, scope: !1037, inlinedAt: !1046)
!1055 = !DILocation(line: 258, column: 22, scope: !1056, inlinedAt: !1035)
!1056 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 258, column: 6)
!1057 = !{!1058, !409, i64 1}
!1058 = !{!"icmp6hdr", !409, i64 0, !409, i64 1, !691, i64 2, !409, i64 4}
!1059 = !DILocation(line: 258, column: 33, scope: !1056, inlinedAt: !1035)
!1060 = !DILocation(line: 258, column: 6, scope: !1031, inlinedAt: !1035)
!1061 = !DILocation(line: 261, column: 22, scope: !1062, inlinedAt: !1035)
!1062 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 261, column: 6)
!1063 = !{!1058, !409, i64 0}
!1064 = !DILocation(line: 261, column: 6, scope: !1031, inlinedAt: !1035)
!1065 = !DILocation(line: 262, column: 44, scope: !1066, inlinedAt: !1035)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 261, column: 57)
!1067 = !DILocation(line: 262, column: 28, scope: !1066, inlinedAt: !1035)
!1068 = !DILocation(line: 262, column: 15, scope: !1066, inlinedAt: !1035)
!1069 = !DILocation(line: 262, column: 26, scope: !1066, inlinedAt: !1035)
!1070 = !{!686, !408, i64 72}
!1071 = !DILocation(line: 263, column: 11, scope: !1066, inlinedAt: !1035)
!1072 = !DILocation(line: 263, column: 21, scope: !1066, inlinedAt: !1035)
!1073 = !DILocation(line: 264, column: 11, scope: !1066, inlinedAt: !1035)
!1074 = !DILocation(line: 264, column: 27, scope: !1066, inlinedAt: !1035)
!1075 = !DILocation(line: 265, column: 2, scope: !1066, inlinedAt: !1035)
!1076 = !DILocation(line: 266, column: 50, scope: !1077, inlinedAt: !1035)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 265, column: 62)
!1078 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 265, column: 13)
!1079 = !DILocation(line: 266, column: 34, scope: !1077, inlinedAt: !1035)
!1080 = !DILocation(line: 266, column: 21, scope: !1077, inlinedAt: !1035)
!1081 = !DILocation(line: 266, column: 32, scope: !1077, inlinedAt: !1035)
!1082 = !{!686, !408, i64 120}
!1083 = !DILocation(line: 267, column: 11, scope: !1077, inlinedAt: !1035)
!1084 = !DILocation(line: 267, column: 27, scope: !1077, inlinedAt: !1035)
!1085 = !DILocation(line: 268, column: 11, scope: !1077, inlinedAt: !1035)
!1086 = !DILocation(line: 268, column: 21, scope: !1077, inlinedAt: !1035)
!1087 = !DILocation(line: 273, column: 10, scope: !1031, inlinedAt: !1035)
!1088 = !DILocation(line: 273, column: 21, scope: !1031, inlinedAt: !1035)
!1089 = !DILocation(line: 274, column: 48, scope: !1031, inlinedAt: !1035)
!1090 = !DILocation(line: 274, column: 25, scope: !1031, inlinedAt: !1035)
!1091 = !DILocation(line: 274, column: 30, scope: !1031, inlinedAt: !1035)
!1092 = !DILocation(line: 275, column: 25, scope: !1031, inlinedAt: !1035)
!1093 = !DILocation(line: 275, column: 30, scope: !1031, inlinedAt: !1035)
!1094 = !DILocalVariable(name: "pctx", arg: 1, scope: !1095, file: !3, line: 282, type: !494)
!1095 = distinct !DISubprogram(name: "parse_icmp_identifier", scope: !3, file: !3, line: 282, type: !663, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1096 = !{!1094, !1097}
!1097 = !DILocalVariable(name: "p_info", arg: 2, scope: !1095, file: !3, line: 283, type: !665)
!1098 = !DILocation(line: 0, scope: !1095, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 348, column: 9, scope: !865, inlinedAt: !680)
!1100 = !DILocalVariable(name: "nh", arg: 1, scope: !1101, file: !396, line: 239, type: !698)
!1101 = distinct !DISubprogram(name: "parse_icmphdr", scope: !396, file: !396, line: 239, type: !1102, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1105)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!136, !698, !94, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!1105 = !{!1100, !1106, !1107, !1108}
!1106 = !DILocalVariable(name: "data_end", arg: 2, scope: !1101, file: !396, line: 240, type: !94)
!1107 = !DILocalVariable(name: "icmphdr", arg: 3, scope: !1101, file: !396, line: 241, type: !1104)
!1108 = !DILocalVariable(name: "icmph", scope: !1101, file: !396, line: 243, type: !563)
!1109 = !DILocation(line: 0, scope: !1101, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 285, column: 6, scope: !1111, inlinedAt: !1099)
!1111 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 285, column: 6)
!1112 = !DILocation(line: 245, column: 12, scope: !1113, inlinedAt: !1110)
!1113 = distinct !DILexicalBlock(scope: !1101, file: !396, line: 245, column: 6)
!1114 = !DILocation(line: 245, column: 16, scope: !1113, inlinedAt: !1110)
!1115 = !DILocation(line: 245, column: 6, scope: !1101, inlinedAt: !1110)
!1116 = !DILocation(line: 285, column: 56, scope: !1111, inlinedAt: !1099)
!1117 = !DILocation(line: 248, column: 11, scope: !1101, inlinedAt: !1110)
!1118 = !DILocation(line: 249, column: 11, scope: !1101, inlinedAt: !1110)
!1119 = !DILocation(line: 288, column: 21, scope: !1120, inlinedAt: !1099)
!1120 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 288, column: 6)
!1121 = !{!1122, !409, i64 1}
!1122 = !{!"icmphdr", !409, i64 0, !409, i64 1, !691, i64 2, !409, i64 4}
!1123 = !DILocation(line: 288, column: 26, scope: !1120, inlinedAt: !1099)
!1124 = !DILocation(line: 288, column: 6, scope: !1095, inlinedAt: !1099)
!1125 = !DILocation(line: 291, column: 21, scope: !1126, inlinedAt: !1099)
!1126 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 291, column: 6)
!1127 = !{!1122, !409, i64 0}
!1128 = !DILocation(line: 291, column: 6, scope: !1095, inlinedAt: !1099)
!1129 = !DILocation(line: 292, column: 51, scope: !1130, inlinedAt: !1099)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 291, column: 40)
!1131 = !DILocation(line: 292, column: 28, scope: !1130, inlinedAt: !1099)
!1132 = !DILocation(line: 292, column: 15, scope: !1130, inlinedAt: !1099)
!1133 = !DILocation(line: 292, column: 26, scope: !1130, inlinedAt: !1099)
!1134 = !DILocation(line: 293, column: 11, scope: !1130, inlinedAt: !1099)
!1135 = !DILocation(line: 293, column: 21, scope: !1130, inlinedAt: !1099)
!1136 = !DILocation(line: 294, column: 11, scope: !1130, inlinedAt: !1099)
!1137 = !DILocation(line: 294, column: 27, scope: !1130, inlinedAt: !1099)
!1138 = !DILocation(line: 295, column: 2, scope: !1130, inlinedAt: !1099)
!1139 = !DILocation(line: 296, column: 57, scope: !1140, inlinedAt: !1099)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 295, column: 52)
!1141 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 295, column: 13)
!1142 = !DILocation(line: 296, column: 34, scope: !1140, inlinedAt: !1099)
!1143 = !DILocation(line: 296, column: 21, scope: !1140, inlinedAt: !1099)
!1144 = !DILocation(line: 296, column: 32, scope: !1140, inlinedAt: !1099)
!1145 = !DILocation(line: 297, column: 11, scope: !1140, inlinedAt: !1099)
!1146 = !DILocation(line: 297, column: 27, scope: !1140, inlinedAt: !1099)
!1147 = !DILocation(line: 298, column: 11, scope: !1140, inlinedAt: !1099)
!1148 = !DILocation(line: 298, column: 21, scope: !1140, inlinedAt: !1099)
!1149 = !DILocation(line: 303, column: 10, scope: !1095, inlinedAt: !1099)
!1150 = !DILocation(line: 303, column: 21, scope: !1095, inlinedAt: !1099)
!1151 = !DILocation(line: 304, column: 47, scope: !1095, inlinedAt: !1099)
!1152 = !DILocation(line: 304, column: 55, scope: !1095, inlinedAt: !1099)
!1153 = !DILocation(line: 304, column: 25, scope: !1095, inlinedAt: !1099)
!1154 = !DILocation(line: 304, column: 30, scope: !1095, inlinedAt: !1099)
!1155 = !DILocation(line: 305, column: 25, scope: !1095, inlinedAt: !1099)
!1156 = !DILocation(line: 305, column: 30, scope: !1095, inlinedAt: !1099)
!1157 = !DILocation(line: 219, column: 11, scope: !1158, inlinedAt: !875)
!1158 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 218, column: 25)
!1159 = !DILocation(line: 219, column: 22, scope: !1158, inlinedAt: !875)
!1160 = !DILocation(line: 220, column: 11, scope: !1158, inlinedAt: !875)
!1161 = !DILocation(line: 220, column: 24, scope: !1158, inlinedAt: !875)
!1162 = !DILocation(line: 357, column: 19, scope: !1163, inlinedAt: !680)
!1163 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 355, column: 39)
!1164 = !DILocalVariable(name: "ipv6", arg: 1, scope: !1165, file: !3, line: 113, type: !105)
!1165 = distinct !DISubprogram(name: "map_ipv4_to_ipv6", scope: !3, file: !3, line: 113, type: !1166, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !105, !124}
!1168 = !{!1164, !1169}
!1169 = !DILocalVariable(name: "ipv4", arg: 2, scope: !1165, file: !3, line: 113, type: !124)
!1170 = !DILocation(line: 0, scope: !1165, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 356, column: 3, scope: !1163, inlinedAt: !680)
!1172 = !DILocation(line: 115, column: 2, scope: !1165, inlinedAt: !1171)
!1173 = !DILocation(line: 116, column: 20, scope: !1165, inlinedAt: !1171)
!1174 = !DILocation(line: 116, column: 2, scope: !1165, inlinedAt: !1171)
!1175 = !DILocation(line: 117, column: 2, scope: !1165, inlinedAt: !1171)
!1176 = !DILocation(line: 117, column: 27, scope: !1165, inlinedAt: !1171)
!1177 = !DILocation(line: 358, column: 38, scope: !1163, inlinedAt: !680)
!1178 = !DILocation(line: 359, column: 19, scope: !1163, inlinedAt: !680)
!1179 = !DILocation(line: 0, scope: !1165, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 358, column: 3, scope: !1163, inlinedAt: !680)
!1181 = !DILocation(line: 115, column: 2, scope: !1165, inlinedAt: !1180)
!1182 = !DILocation(line: 116, column: 20, scope: !1165, inlinedAt: !1180)
!1183 = !DILocation(line: 116, column: 2, scope: !1165, inlinedAt: !1180)
!1184 = !DILocation(line: 117, column: 2, scope: !1165, inlinedAt: !1180)
!1185 = !DILocation(line: 117, column: 27, scope: !1165, inlinedAt: !1180)
!1186 = !DILocation(line: 360, column: 2, scope: !1163, inlinedAt: !680)
!1187 = !DILocation(line: 361, column: 45, scope: !1188, inlinedAt: !680)
!1188 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 360, column: 9)
!1189 = !{i64 0, i64 16, !940, i64 0, i64 16, !940, i64 0, i64 16, !940}
!1190 = !DILocation(line: 362, column: 20, scope: !1188, inlinedAt: !680)
!1191 = !DILocation(line: 362, column: 45, scope: !1188, inlinedAt: !680)
!1192 = !DILocation(line: 127, column: 31, scope: !1193, inlinedAt: !1199)
!1193 = distinct !DISubprogram(name: "remaining_pkt_payload", scope: !3, file: !3, line: 123, type: !1194, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!104, !494}
!1196 = !{!1197, !1198}
!1197 = !DILocalVariable(name: "ctx", arg: 1, scope: !1193, file: !3, line: 123, type: !494)
!1198 = !DILocalVariable(name: "parsed_bytes", scope: !1193, file: !3, line: 127, type: !104)
!1199 = distinct !DILocation(line: 366, column: 20, scope: !662, inlinedAt: !680)
!1200 = !DILocation(line: 365, column: 24, scope: !662, inlinedAt: !680)
!1201 = !DILocalVariable(name: "dest", arg: 1, scope: !1202, file: !15, line: 167, type: !172)
!1202 = distinct !DISubprogram(name: "reverse_flow", scope: !15, file: !15, line: 167, type: !1203, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !172, !172}
!1205 = !{!1201, !1206}
!1206 = !DILocalVariable(name: "src", arg: 2, scope: !1202, file: !15, line: 167, type: !172)
!1207 = !DILocation(line: 0, scope: !1202, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 365, column: 2, scope: !662, inlinedAt: !680)
!1209 = !DILocation(line: 169, column: 8, scope: !1202, inlinedAt: !1208)
!1210 = !DILocation(line: 169, column: 12, scope: !1202, inlinedAt: !1208)
!1211 = !{!688, !409, i64 42}
!1212 = !DILocation(line: 170, column: 8, scope: !1202, inlinedAt: !1208)
!1213 = !DILocation(line: 170, column: 14, scope: !1202, inlinedAt: !1208)
!1214 = !{!688, !691, i64 40}
!1215 = !DILocation(line: 171, column: 21, scope: !1202, inlinedAt: !1208)
!1216 = !{i64 0, i64 16, !940, i64 0, i64 16, !940, i64 0, i64 16, !940, i64 16, i64 2, !736, i64 18, i64 2, !736}
!1217 = !DILocation(line: 172, column: 8, scope: !1202, inlinedAt: !1208)
!1218 = !DILocation(line: 172, column: 21, scope: !1202, inlinedAt: !1208)
!1219 = !DILocation(line: 173, column: 8, scope: !1202, inlinedAt: !1208)
!1220 = !DILocation(line: 173, column: 17, scope: !1202, inlinedAt: !1208)
!1221 = !{!688, !409, i64 43}
!1222 = !DILocation(line: 0, scope: !1193, inlinedAt: !1199)
!1223 = !DILocation(line: 127, column: 42, scope: !1193, inlinedAt: !1199)
!1224 = !DILocation(line: 127, column: 35, scope: !1193, inlinedAt: !1199)
!1225 = !DILocation(line: 127, column: 23, scope: !1193, inlinedAt: !1199)
!1226 = !DILocation(line: 128, column: 29, scope: !1193, inlinedAt: !1199)
!1227 = !DILocation(line: 128, column: 9, scope: !1193, inlinedAt: !1199)
!1228 = !DILocation(line: 366, column: 10, scope: !662, inlinedAt: !680)
!1229 = !DILocation(line: 366, column: 18, scope: !662, inlinedAt: !680)
!1230 = !{!686, !408, i64 24}
!1231 = !DILocalVariable(name: "ctx", arg: 1, scope: !1232, file: !3, line: 495, type: !94)
!1232 = distinct !DISubprogram(name: "update_flow", scope: !3, file: !3, line: 495, type: !1233, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1236)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!174, !94, !665, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!1236 = !{!1231, !1237, !1238, !1239}
!1237 = !DILocalVariable(name: "p_info", arg: 2, scope: !1232, file: !3, line: 495, type: !665)
!1238 = !DILocalVariable(name: "new_flow", arg: 3, scope: !1232, file: !3, line: 496, type: !1235)
!1239 = !DILocalVariable(name: "f_state", scope: !1232, file: !3, line: 498, type: !174)
!1240 = !DILocation(line: 0, scope: !1232, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 700, column: 9, scope: !491)
!1242 = !DILocation(line: 501, column: 54, scope: !1232, inlinedAt: !1241)
!1243 = !DILocation(line: 501, column: 12, scope: !1232, inlinedAt: !1241)
!1244 = !DILocation(line: 504, column: 7, scope: !1245, inlinedAt: !1241)
!1245 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 504, column: 6)
!1246 = !DILocation(line: 504, column: 15, scope: !1245, inlinedAt: !1241)
!1247 = !DILocation(line: 504, column: 26, scope: !1245, inlinedAt: !1241)
!1248 = !DILocation(line: 504, column: 36, scope: !1245, inlinedAt: !1241)
!1249 = !DILocation(line: 505, column: 16, scope: !1245, inlinedAt: !1241)
!1250 = !DILocation(line: 505, column: 49, scope: !1245, inlinedAt: !1241)
!1251 = !DILocalVariable(name: "ctx", arg: 1, scope: !1252, file: !3, line: 477, type: !94)
!1252 = distinct !DISubprogram(name: "create_flow", scope: !3, file: !3, line: 477, type: !1253, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!174, !94, !665}
!1255 = !{!1251, !1256, !1257}
!1256 = !DILocalVariable(name: "p_info", arg: 2, scope: !1252, file: !3, line: 477, type: !665)
!1257 = !DILocalVariable(name: "new_state", scope: !1252, file: !3, line: 479, type: !175)
!1258 = !DILocation(line: 0, scope: !1252, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 508, column: 13, scope: !1260, inlinedAt: !1241)
!1260 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 506, column: 56)
!1261 = !DILocation(line: 479, column: 2, scope: !1252, inlinedAt: !1259)
!1262 = !DILocation(line: 479, column: 20, scope: !1252, inlinedAt: !1259)
!1263 = !DILocation(line: 481, column: 37, scope: !1252, inlinedAt: !1259)
!1264 = !DILocation(line: 481, column: 12, scope: !1252, inlinedAt: !1259)
!1265 = !DILocation(line: 481, column: 27, scope: !1252, inlinedAt: !1259)
!1266 = !{!1267, !411, i64 16}
!1267 = !{!"flow_state", !411, i64 0, !411, i64 8, !411, i64 16, !411, i64 24, !411, i64 32, !411, i64 40, !411, i64 48, !408, i64 56, !419, i64 60, !409, i64 61, !691, i64 62}
!1268 = !DILocation(line: 482, column: 48, scope: !1252, inlinedAt: !1259)
!1269 = !DILocation(line: 482, column: 29, scope: !1252, inlinedAt: !1259)
!1270 = !DILocation(line: 482, column: 12, scope: !1252, inlinedAt: !1259)
!1271 = !DILocation(line: 482, column: 27, scope: !1252, inlinedAt: !1259)
!1272 = !{!1267, !409, i64 61}
!1273 = !DILocation(line: 486, column: 6, scope: !1274, inlinedAt: !1259)
!1274 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 486, column: 6)
!1275 = !DILocation(line: 487, column: 18, scope: !1274, inlinedAt: !1259)
!1276 = !DILocation(line: 486, column: 6, scope: !1252, inlinedAt: !1259)
!1277 = !DILocalVariable(name: "ctx", arg: 1, scope: !1278, file: !3, line: 453, type: !94)
!1278 = distinct !DISubprogram(name: "send_map_full_event", scope: !3, file: !3, line: 453, type: !1279, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !94, !665, !67}
!1281 = !{!1277, !1282, !1283, !1284}
!1282 = !DILocalVariable(name: "p_info", arg: 2, scope: !1278, file: !3, line: 453, type: !665)
!1283 = !DILocalVariable(name: "map", arg: 3, scope: !1278, file: !3, line: 454, type: !67)
!1284 = !DILocalVariable(name: "me", scope: !1278, file: !3, line: 456, type: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_full_event", file: !15, line: 146, size: 512, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !1285, file: !15, line: 147, baseType: !159, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1285, file: !15, line: 148, baseType: !159, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !1285, file: !15, line: 149, baseType: !144, size: 352, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1285, file: !15, line: 150, baseType: !67, size: 8, offset: 480)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1285, file: !15, line: 151, baseType: !540, size: 24, offset: 488)
!1292 = !DILocation(line: 0, scope: !1278, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 488, column: 3, scope: !1294, inlinedAt: !1259)
!1294 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 487, column: 24)
!1295 = !DILocation(line: 456, column: 2, scope: !1278, inlinedAt: !1293)
!1296 = !DILocation(line: 456, column: 24, scope: !1278, inlinedAt: !1293)
!1297 = !DILocation(line: 458, column: 14, scope: !1298, inlinedAt: !1293)
!1298 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 458, column: 6)
!1299 = !DILocation(line: 458, column: 21, scope: !1298, inlinedAt: !1293)
!1300 = !{!411, !411, i64 0}
!1301 = !DILocation(line: 458, column: 19, scope: !1298, inlinedAt: !1293)
!1302 = !DILocation(line: 458, column: 41, scope: !1298, inlinedAt: !1293)
!1303 = !DILocation(line: 459, column: 21, scope: !1298, inlinedAt: !1293)
!1304 = !DILocation(line: 459, column: 19, scope: !1298, inlinedAt: !1293)
!1305 = !DILocation(line: 459, column: 41, scope: !1298, inlinedAt: !1293)
!1306 = !DILocation(line: 458, column: 6, scope: !1278, inlinedAt: !1293)
!1307 = !DILocation(line: 462, column: 22, scope: !1278, inlinedAt: !1293)
!1308 = !DILocation(line: 464, column: 2, scope: !1278, inlinedAt: !1293)
!1309 = !DILocation(line: 465, column: 16, scope: !1278, inlinedAt: !1293)
!1310 = !{!1311, !411, i64 0}
!1311 = !{!"map_full_event", !411, i64 0, !411, i64 8, !688, i64 16, !409, i64 60, !409, i64 61}
!1312 = !DILocation(line: 466, column: 5, scope: !1278, inlinedAt: !1293)
!1313 = !DILocation(line: 466, column: 15, scope: !1278, inlinedAt: !1293)
!1314 = !{!1311, !411, i64 8}
!1315 = !DILocation(line: 467, column: 5, scope: !1278, inlinedAt: !1293)
!1316 = !DILocation(line: 467, column: 24, scope: !1278, inlinedAt: !1293)
!1317 = !{i64 0, i64 16, !940, i64 0, i64 16, !940, i64 0, i64 16, !940, i64 16, i64 2, !736, i64 18, i64 2, !736, i64 20, i64 16, !940, i64 20, i64 16, !940, i64 20, i64 16, !940, i64 36, i64 2, !736, i64 38, i64 2, !736, i64 40, i64 2, !736, i64 42, i64 1, !940, i64 43, i64 1, !940}
!1318 = !DILocation(line: 470, column: 2, scope: !1278, inlinedAt: !1293)
!1319 = !DILocation(line: 471, column: 1, scope: !1278, inlinedAt: !1293)
!1320 = !DILocation(line: 493, column: 1, scope: !1252, inlinedAt: !1259)
!1321 = !DILocation(line: 511, column: 6, scope: !1232, inlinedAt: !1241)
!1322 = !DILocation(line: 492, column: 9, scope: !1252, inlinedAt: !1259)
!1323 = !DILocation(line: 511, column: 7, scope: !1324, inlinedAt: !1241)
!1324 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 511, column: 6)
!1325 = !DILocation(line: 515, column: 11, scope: !1232, inlinedAt: !1241)
!1326 = !DILocation(line: 515, column: 20, scope: !1232, inlinedAt: !1241)
!1327 = !{!1267, !411, i64 24}
!1328 = !DILocation(line: 516, column: 33, scope: !1232, inlinedAt: !1241)
!1329 = !DILocation(line: 516, column: 25, scope: !1232, inlinedAt: !1241)
!1330 = !DILocation(line: 516, column: 11, scope: !1232, inlinedAt: !1241)
!1331 = !DILocation(line: 516, column: 22, scope: !1232, inlinedAt: !1241)
!1332 = !{!1267, !411, i64 32}
!1333 = !DILocalVariable(name: "f_state", arg: 1, scope: !1334, file: !3, line: 614, type: !174)
!1334 = distinct !DISubprogram(name: "pping_timestamp_packet", scope: !3, file: !3, line: 614, type: !1335, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !174, !94, !494, !665, !186}
!1337 = !{!1333, !1338, !1339, !1340, !1341}
!1338 = !DILocalVariable(name: "ctx", arg: 2, scope: !1334, file: !3, line: 614, type: !94)
!1339 = !DILocalVariable(name: "pctx", arg: 3, scope: !1334, file: !3, line: 615, type: !494)
!1340 = !DILocalVariable(name: "p_info", arg: 4, scope: !1334, file: !3, line: 616, type: !665)
!1341 = !DILocalVariable(name: "new_flow", arg: 5, scope: !1334, file: !3, line: 616, type: !186)
!1342 = !DILocation(line: 0, scope: !1334, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 701, column: 2, scope: !491)
!1344 = !DILocation(line: 618, column: 27, scope: !1345, inlinedAt: !1343)
!1345 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 618, column: 6)
!1346 = !DILocation(line: 618, column: 6, scope: !1334, inlinedAt: !1343)
!1347 = !DILocation(line: 621, column: 13, scope: !1348, inlinedAt: !1343)
!1348 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 621, column: 6)
!1349 = !{!858, !419, i64 19}
!1350 = !DILocation(line: 621, column: 23, scope: !1348, inlinedAt: !1343)
!1351 = !DILocation(line: 621, column: 33, scope: !1348, inlinedAt: !1343)
!1352 = !DILocation(line: 621, column: 43, scope: !1348, inlinedAt: !1343)
!1353 = !DILocalVariable(name: "p_info", arg: 1, scope: !1354, file: !3, line: 576, type: !665)
!1354 = distinct !DISubprogram(name: "is_local_address", scope: !3, file: !3, line: 576, type: !1355, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!186, !665, !94, !494}
!1357 = !{!1353, !1358, !1359, !1360, !1361, !1362, !1366}
!1358 = !DILocalVariable(name: "ctx", arg: 2, scope: !1354, file: !3, line: 576, type: !94)
!1359 = !DILocalVariable(name: "pctx", arg: 3, scope: !1354, file: !3, line: 577, type: !494)
!1360 = !DILocalVariable(name: "ret", scope: !1354, file: !3, line: 579, type: !136)
!1361 = !DILocalVariable(name: "lookup", scope: !1354, file: !3, line: 580, type: !248)
!1362 = !DILocalVariable(name: "src", scope: !1363, file: !3, line: 592, type: !105)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 591, column: 40)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 591, column: 13)
!1365 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 586, column: 6)
!1366 = !DILocalVariable(name: "dst", scope: !1363, file: !3, line: 593, type: !105)
!1367 = !DILocation(line: 0, scope: !1354, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 622, column: 6, scope: !1348, inlinedAt: !1343)
!1369 = !DILocation(line: 580, column: 2, scope: !1354, inlinedAt: !1368)
!1370 = !DILocation(line: 580, column: 24, scope: !1354, inlinedAt: !1368)
!1371 = !DILocation(line: 581, column: 2, scope: !1354, inlinedAt: !1368)
!1372 = !DILocation(line: 583, column: 25, scope: !1354, inlinedAt: !1368)
!1373 = !DILocation(line: 583, column: 9, scope: !1354, inlinedAt: !1368)
!1374 = !DILocation(line: 583, column: 17, scope: !1354, inlinedAt: !1368)
!1375 = !{!1376, !408, i64 8}
!1376 = !{!"bpf_fib_lookup", !409, i64 0, !409, i64 1, !691, i64 2, !691, i64 4, !691, i64 6, !408, i64 8, !409, i64 12, !409, i64 16, !409, i64 32, !691, i64 48, !691, i64 50, !409, i64 52, !409, i64 58}
!1377 = !DILocation(line: 584, column: 35, scope: !1354, inlinedAt: !1368)
!1378 = !DILocation(line: 584, column: 16, scope: !1354, inlinedAt: !1368)
!1379 = !{!1376, !409, i64 0}
!1380 = !DILocation(line: 586, column: 6, scope: !1354, inlinedAt: !1368)
!1381 = !DILocation(line: 587, column: 24, scope: !1382, inlinedAt: !1368)
!1382 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 586, column: 32)
!1383 = !DILocation(line: 587, column: 29, scope: !1382, inlinedAt: !1368)
!1384 = !{!792, !409, i64 1}
!1385 = !DILocation(line: 587, column: 10, scope: !1382, inlinedAt: !1368)
!1386 = !DILocation(line: 587, column: 14, scope: !1382, inlinedAt: !1368)
!1387 = !DILocation(line: 588, column: 20, scope: !1382, inlinedAt: !1368)
!1388 = !{!792, !691, i64 2}
!1389 = !DILocation(line: 588, column: 10, scope: !1382, inlinedAt: !1368)
!1390 = !DILocation(line: 588, column: 18, scope: !1382, inlinedAt: !1368)
!1391 = !{!1376, !691, i64 6}
!1392 = !DILocation(line: 589, column: 34, scope: !1382, inlinedAt: !1368)
!1393 = !DILocation(line: 589, column: 10, scope: !1382, inlinedAt: !1368)
!1394 = !DILocation(line: 589, column: 19, scope: !1382, inlinedAt: !1368)
!1395 = !DILocation(line: 590, column: 34, scope: !1382, inlinedAt: !1368)
!1396 = !DILocation(line: 590, column: 10, scope: !1382, inlinedAt: !1368)
!1397 = !DILocation(line: 590, column: 19, scope: !1382, inlinedAt: !1368)
!1398 = !DILocation(line: 591, column: 2, scope: !1382, inlinedAt: !1368)
!1399 = !DILocation(line: 592, column: 52, scope: !1363, inlinedAt: !1368)
!1400 = !DILocation(line: 0, scope: !1363, inlinedAt: !1368)
!1401 = !DILocation(line: 593, column: 52, scope: !1363, inlinedAt: !1368)
!1402 = !DILocation(line: 595, column: 40, scope: !1363, inlinedAt: !1368)
!1403 = !DILocation(line: 595, column: 21, scope: !1363, inlinedAt: !1368)
!1404 = !DILocation(line: 595, column: 45, scope: !1363, inlinedAt: !1368)
!1405 = !DILocation(line: 595, column: 10, scope: !1363, inlinedAt: !1368)
!1406 = !DILocation(line: 595, column: 19, scope: !1363, inlinedAt: !1368)
!1407 = !DILocation(line: 596, column: 20, scope: !1363, inlinedAt: !1368)
!1408 = !{!846, !691, i64 4}
!1409 = !DILocation(line: 596, column: 10, scope: !1363, inlinedAt: !1368)
!1410 = !DILocation(line: 596, column: 18, scope: !1363, inlinedAt: !1368)
!1411 = !DILocation(line: 597, column: 33, scope: !1363, inlinedAt: !1368)
!1412 = !DILocation(line: 598, column: 33, scope: !1363, inlinedAt: !1368)
!1413 = !DILocation(line: 599, column: 2, scope: !1363, inlinedAt: !1368)
!1414 = !DILocation(line: 601, column: 40, scope: !1354, inlinedAt: !1368)
!1415 = !DILocation(line: 601, column: 23, scope: !1354, inlinedAt: !1368)
!1416 = !DILocation(line: 601, column: 9, scope: !1354, inlinedAt: !1368)
!1417 = !DILocation(line: 601, column: 21, scope: !1354, inlinedAt: !1368)
!1418 = !{!1376, !409, i64 1}
!1419 = !DILocation(line: 602, column: 9, scope: !1354, inlinedAt: !1368)
!1420 = !DILocation(line: 602, column: 15, scope: !1354, inlinedAt: !1368)
!1421 = !{!1376, !691, i64 2}
!1422 = !DILocation(line: 603, column: 15, scope: !1354, inlinedAt: !1368)
!1423 = !{!1376, !691, i64 4}
!1424 = !DILocation(line: 605, column: 8, scope: !1354, inlinedAt: !1368)
!1425 = !DILocation(line: 607, column: 13, scope: !1354, inlinedAt: !1368)
!1426 = !DILocation(line: 607, column: 43, scope: !1354, inlinedAt: !1368)
!1427 = !DILocation(line: 609, column: 1, scope: !1354, inlinedAt: !1368)
!1428 = !DILocation(line: 621, column: 6, scope: !1334, inlinedAt: !1343)
!1429 = !DILocation(line: 626, column: 16, scope: !1430, inlinedAt: !1343)
!1430 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 626, column: 6)
!1431 = !DILocation(line: 628, column: 33, scope: !1334, inlinedAt: !1343)
!1432 = !DILocation(line: 628, column: 11, scope: !1334, inlinedAt: !1343)
!1433 = !DILocation(line: 628, column: 19, scope: !1334, inlinedAt: !1343)
!1434 = !{!1267, !408, i64 56}
!1435 = !DILocation(line: 642, column: 36, scope: !1334, inlinedAt: !1343)
!1436 = !DILocation(line: 631, column: 16, scope: !1437, inlinedAt: !1343)
!1437 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 631, column: 6)
!1438 = !DILocation(line: 626, column: 28, scope: !1430, inlinedAt: !1343)
!1439 = !DILocation(line: 626, column: 51, scope: !1430, inlinedAt: !1343)
!1440 = !DILocation(line: 626, column: 36, scope: !1430, inlinedAt: !1343)
!1441 = !DILocation(line: 626, column: 6, scope: !1334, inlinedAt: !1343)
!1442 = !DILocation(line: 632, column: 30, scope: !1437, inlinedAt: !1343)
!1443 = !DILocation(line: 632, column: 45, scope: !1437, inlinedAt: !1343)
!1444 = !DILocation(line: 633, column: 15, scope: !1437, inlinedAt: !1343)
!1445 = !{!858, !419, i64 16}
!1446 = !DILocation(line: 633, column: 8, scope: !1437, inlinedAt: !1343)
!1447 = !DILocalVariable(name: "now", arg: 1, scope: !1448, file: !3, line: 385, type: !159)
!1448 = distinct !DISubprogram(name: "is_rate_limited", scope: !3, file: !3, line: 385, type: !1449, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!186, !159, !159, !159}
!1451 = !{!1447, !1452, !1453}
!1452 = !DILocalVariable(name: "last_ts", arg: 2, scope: !1448, file: !3, line: 385, type: !159)
!1453 = !DILocalVariable(name: "rtt", arg: 3, scope: !1448, file: !3, line: 385, type: !159)
!1454 = !DILocation(line: 0, scope: !1448, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 632, column: 6, scope: !1437, inlinedAt: !1343)
!1456 = !DILocation(line: 387, column: 10, scope: !1457, inlinedAt: !1455)
!1457 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 387, column: 6)
!1458 = !DILocation(line: 387, column: 6, scope: !1448, inlinedAt: !1455)
!1459 = !DILocation(line: 391, column: 13, scope: !1460, inlinedAt: !1455)
!1460 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 391, column: 6)
!1461 = !{!858, !411, i64 8}
!1462 = !DILocation(line: 391, column: 6, scope: !1460, inlinedAt: !1455)
!1463 = !DILocation(line: 391, column: 22, scope: !1460, inlinedAt: !1455)
!1464 = !DILocation(line: 392, column: 26, scope: !1460, inlinedAt: !1455)
!1465 = !DILocation(line: 392, column: 24, scope: !1460, inlinedAt: !1455)
!1466 = !DILocation(line: 631, column: 6, scope: !1334, inlinedAt: !1343)
!1467 = !DILocation(line: 395, column: 32, scope: !1448, inlinedAt: !1455)
!1468 = !{!858, !411, i64 0}
!1469 = !DILocation(line: 395, column: 23, scope: !1448, inlinedAt: !1455)
!1470 = !DILocation(line: 642, column: 11, scope: !1334, inlinedAt: !1343)
!1471 = !DILocation(line: 642, column: 26, scope: !1334, inlinedAt: !1343)
!1472 = !DILocation(line: 644, column: 6, scope: !1473, inlinedAt: !1343)
!1473 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 644, column: 6)
!1474 = !DILocation(line: 645, column: 18, scope: !1473, inlinedAt: !1343)
!1475 = !DILocation(line: 644, column: 6, scope: !1334, inlinedAt: !1343)
!1476 = !DILocation(line: 0, scope: !1278, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 646, column: 3, scope: !1473, inlinedAt: !1343)
!1478 = !DILocation(line: 456, column: 2, scope: !1278, inlinedAt: !1477)
!1479 = !DILocation(line: 456, column: 24, scope: !1278, inlinedAt: !1477)
!1480 = !DILocation(line: 458, column: 14, scope: !1298, inlinedAt: !1477)
!1481 = !DILocation(line: 458, column: 21, scope: !1298, inlinedAt: !1477)
!1482 = !DILocation(line: 458, column: 19, scope: !1298, inlinedAt: !1477)
!1483 = !DILocation(line: 458, column: 41, scope: !1298, inlinedAt: !1477)
!1484 = !DILocation(line: 459, column: 21, scope: !1298, inlinedAt: !1477)
!1485 = !DILocation(line: 459, column: 19, scope: !1298, inlinedAt: !1477)
!1486 = !DILocation(line: 459, column: 41, scope: !1298, inlinedAt: !1477)
!1487 = !DILocation(line: 458, column: 6, scope: !1278, inlinedAt: !1477)
!1488 = !DILocation(line: 462, column: 22, scope: !1278, inlinedAt: !1477)
!1489 = !DILocation(line: 464, column: 2, scope: !1278, inlinedAt: !1477)
!1490 = !DILocation(line: 465, column: 16, scope: !1278, inlinedAt: !1477)
!1491 = !DILocation(line: 466, column: 5, scope: !1278, inlinedAt: !1477)
!1492 = !DILocation(line: 466, column: 15, scope: !1278, inlinedAt: !1477)
!1493 = !DILocation(line: 467, column: 5, scope: !1278, inlinedAt: !1477)
!1494 = !DILocation(line: 467, column: 24, scope: !1278, inlinedAt: !1477)
!1495 = !DILocation(line: 470, column: 2, scope: !1278, inlinedAt: !1477)
!1496 = !DILocation(line: 471, column: 1, scope: !1278, inlinedAt: !1477)
!1497 = !DILocation(line: 646, column: 3, scope: !1473, inlinedAt: !1343)
!1498 = !DILocalVariable(name: "ctx", arg: 1, scope: !1499, file: !3, line: 521, type: !94)
!1499 = distinct !DISubprogram(name: "update_rev_flow", scope: !3, file: !3, line: 521, type: !1253, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1500)
!1500 = !{!1498, !1501, !1502}
!1501 = !DILocalVariable(name: "p_info", arg: 2, scope: !1499, file: !3, line: 521, type: !665)
!1502 = !DILocalVariable(name: "f_state", scope: !1499, file: !3, line: 523, type: !174)
!1503 = !DILocation(line: 0, scope: !1499, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 703, column: 13, scope: !491)
!1505 = !DILocation(line: 525, column: 12, scope: !1499, inlinedAt: !1504)
!1506 = !DILocation(line: 526, column: 7, scope: !1507, inlinedAt: !1504)
!1507 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 526, column: 6)
!1508 = !DILocation(line: 526, column: 6, scope: !1499, inlinedAt: !1504)
!1509 = !DILocalVariable(name: "f_state", arg: 1, scope: !1510, file: !3, line: 652, type: !174)
!1510 = distinct !DISubprogram(name: "pping_match_packet", scope: !3, file: !3, line: 652, type: !1511, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !174, !94, !494, !665}
!1513 = !{!1509, !1514, !1515, !1516, !1517, !1535}
!1514 = !DILocalVariable(name: "ctx", arg: 2, scope: !1510, file: !3, line: 652, type: !94)
!1515 = !DILocalVariable(name: "pctx", arg: 3, scope: !1510, file: !3, line: 653, type: !494)
!1516 = !DILocalVariable(name: "p_info", arg: 4, scope: !1510, file: !3, line: 654, type: !665)
!1517 = !DILocalVariable(name: "re", scope: !1510, file: !3, line: 656, type: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtt_event", file: !15, line: 114, size: 960, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !1518, file: !15, line: 115, baseType: !159, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1518, file: !15, line: 116, baseType: !159, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !1518, file: !15, line: 117, baseType: !144, size: 352, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1518, file: !15, line: 118, baseType: !104, size: 32, offset: 480)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rtt", scope: !1518, file: !15, line: 119, baseType: !159, size: 64, offset: 512)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "min_rtt", scope: !1518, file: !15, line: 120, baseType: !159, size: 64, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sent_pkts", scope: !1518, file: !15, line: 121, baseType: !159, size: 64, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !1518, file: !15, line: 122, baseType: !159, size: 64, offset: 704)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rec_pkts", scope: !1518, file: !15, line: 123, baseType: !159, size: 64, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rec_bytes", scope: !1518, file: !15, line: 124, baseType: !159, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "match_on_egress", scope: !1518, file: !15, line: 125, baseType: !186, size: 8, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1518, file: !15, line: 126, baseType: !1532, size: 56, offset: 904)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 56, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 7)
!1535 = !DILocalVariable(name: "p_ts", scope: !1510, file: !3, line: 657, type: !158)
!1536 = !DILocation(line: 0, scope: !1510, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 704, column: 2, scope: !491)
!1538 = !DILocation(line: 656, column: 2, scope: !1510, inlinedAt: !1537)
!1539 = !DILocation(line: 656, column: 19, scope: !1510, inlinedAt: !1537)
!1540 = !DILocation(line: 659, column: 15, scope: !1541, inlinedAt: !1537)
!1541 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 659, column: 6)
!1542 = !DILocation(line: 530, column: 16, scope: !1543, inlinedAt: !1504)
!1543 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 530, column: 6)
!1544 = !{!1267, !419, i64 60}
!1545 = !DILocation(line: 530, column: 27, scope: !1543, inlinedAt: !1504)
!1546 = !DILocation(line: 532, column: 23, scope: !1547, inlinedAt: !1504)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 531, column: 53)
!1548 = !DILocalVariable(name: "ctx", arg: 1, scope: !1549, file: !3, line: 404, type: !94)
!1549 = distinct !DISubprogram(name: "send_flow_open_event", scope: !3, file: !3, line: 404, type: !1550, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1552)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !94, !665, !174}
!1552 = !{!1548, !1553, !1554, !1555}
!1553 = !DILocalVariable(name: "p_info", arg: 2, scope: !1549, file: !3, line: 404, type: !665)
!1554 = !DILocalVariable(name: "rev_flow", arg: 3, scope: !1549, file: !3, line: 405, type: !174)
!1555 = !DILocalVariable(name: "fe", scope: !1549, file: !3, line: 407, type: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flow_event", file: !15, line: 132, size: 512, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !1556, file: !15, line: 133, baseType: !159, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1556, file: !15, line: 134, baseType: !159, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !1556, file: !15, line: 135, baseType: !144, size: 352, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flow_event_type", scope: !1556, file: !15, line: 136, baseType: !24, size: 8, offset: 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1556, file: !15, line: 137, baseType: !14, size: 8, offset: 488)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1556, file: !15, line: 138, baseType: !88, size: 8, offset: 496)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1556, file: !15, line: 139, baseType: !102, size: 8, offset: 504)
!1565 = !DILocation(line: 0, scope: !1549, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 533, column: 3, scope: !1547, inlinedAt: !1504)
!1567 = !DILocation(line: 407, column: 2, scope: !1549, inlinedAt: !1566)
!1568 = !DILocation(line: 407, column: 20, scope: !1549, inlinedAt: !1566)
!1569 = !DILocation(line: 407, column: 25, scope: !1549, inlinedAt: !1566)
!1570 = !{!1571, !411, i64 0}
!1571 = !{!"flow_event", !411, i64 0, !411, i64 8, !688, i64 16, !409, i64 60, !409, i64 61, !409, i64 62, !409, i64 63}
!1572 = !DILocation(line: 413, column: 26, scope: !1549, inlinedAt: !1566)
!1573 = !{!1571, !411, i64 8}
!1574 = !DILocation(line: 411, column: 23, scope: !1549, inlinedAt: !1566)
!1575 = !{!1571, !409, i64 60}
!1576 = !DILocation(line: 412, column: 23, scope: !1549, inlinedAt: !1566)
!1577 = !{!1571, !409, i64 61}
!1578 = !{!1571, !409, i64 62}
!1579 = !{!1571, !409, i64 63}
!1580 = !DILocation(line: 417, column: 2, scope: !1549, inlinedAt: !1566)
!1581 = !DILocation(line: 418, column: 1, scope: !1549, inlinedAt: !1566)
!1582 = !DILocation(line: 534, column: 2, scope: !1547, inlinedAt: !1504)
!1583 = !DILocation(line: 537, column: 11, scope: !1499, inlinedAt: !1504)
!1584 = !DILocation(line: 537, column: 19, scope: !1499, inlinedAt: !1504)
!1585 = !{!1267, !411, i64 40}
!1586 = !DILocation(line: 538, column: 32, scope: !1499, inlinedAt: !1504)
!1587 = !DILocation(line: 538, column: 24, scope: !1499, inlinedAt: !1504)
!1588 = !DILocation(line: 538, column: 11, scope: !1499, inlinedAt: !1504)
!1589 = !DILocation(line: 538, column: 21, scope: !1499, inlinedAt: !1504)
!1590 = !{!1267, !411, i64 48}
!1591 = !DILocation(line: 659, column: 27, scope: !1541, inlinedAt: !1537)
!1592 = !DILocation(line: 659, column: 6, scope: !1510, inlinedAt: !1537)
!1593 = !DILocation(line: 662, column: 9, scope: !1510, inlinedAt: !1537)
!1594 = !DILocation(line: 663, column: 7, scope: !1595, inlinedAt: !1537)
!1595 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 663, column: 6)
!1596 = !DILocation(line: 663, column: 12, scope: !1595, inlinedAt: !1537)
!1597 = !DILocation(line: 663, column: 23, scope: !1595, inlinedAt: !1537)
!1598 = !DILocation(line: 663, column: 30, scope: !1595, inlinedAt: !1537)
!1599 = !DILocation(line: 663, column: 28, scope: !1595, inlinedAt: !1537)
!1600 = !DILocation(line: 663, column: 6, scope: !1510, inlinedAt: !1537)
!1601 = !DILocation(line: 666, column: 24, scope: !1510, inlinedAt: !1537)
!1602 = !DILocation(line: 670, column: 28, scope: !1603, inlinedAt: !1537)
!1603 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 670, column: 6)
!1604 = !DILocation(line: 666, column: 5, scope: !1510, inlinedAt: !1537)
!1605 = !DILocation(line: 666, column: 9, scope: !1510, inlinedAt: !1537)
!1606 = !{!1607, !411, i64 64}
!1607 = !{!"rtt_event", !411, i64 0, !411, i64 8, !688, i64 16, !408, i64 60, !411, i64 64, !411, i64 72, !411, i64 80, !411, i64 88, !411, i64 96, !411, i64 104, !419, i64 112, !409, i64 113}
!1608 = !DILocation(line: 668, column: 2, scope: !1510, inlinedAt: !1537)
!1609 = !DILocation(line: 670, column: 15, scope: !1603, inlinedAt: !1537)
!1610 = !{!1267, !411, i64 0}
!1611 = !DILocation(line: 671, column: 20, scope: !1603, inlinedAt: !1537)
!1612 = !DILocation(line: 671, column: 3, scope: !1603, inlinedAt: !1537)
!1613 = !DILocation(line: 677, column: 24, scope: !1510, inlinedAt: !1537)
!1614 = !DILocation(line: 672, column: 42, scope: !1510, inlinedAt: !1537)
!1615 = !{!1267, !411, i64 8}
!1616 = !DILocalVariable(name: "prev_srtt", arg: 1, scope: !1617, file: !3, line: 377, type: !159)
!1617 = distinct !DISubprogram(name: "calculate_srtt", scope: !3, file: !3, line: 377, type: !1618, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!159, !159, !159}
!1620 = !{!1616, !1621}
!1621 = !DILocalVariable(name: "rtt", arg: 2, scope: !1617, file: !3, line: 377, type: !159)
!1622 = !DILocation(line: 0, scope: !1617, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 672, column: 18, scope: !1510, inlinedAt: !1537)
!1624 = !DILocation(line: 379, column: 7, scope: !1625, inlinedAt: !1623)
!1625 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 379, column: 6)
!1626 = !DILocation(line: 379, column: 6, scope: !1617, inlinedAt: !1623)
!1627 = !DILocation(line: 672, column: 16, scope: !1510, inlinedAt: !1537)
!1628 = !DILocation(line: 675, column: 16, scope: !1510, inlinedAt: !1537)
!1629 = !{!1607, !411, i64 0}
!1630 = !DILocation(line: 676, column: 25, scope: !1510, inlinedAt: !1537)
!1631 = !DILocation(line: 676, column: 5, scope: !1510, inlinedAt: !1537)
!1632 = !DILocation(line: 676, column: 15, scope: !1510, inlinedAt: !1537)
!1633 = !{!1607, !411, i64 8}
!1634 = !DILocation(line: 677, column: 5, scope: !1510, inlinedAt: !1537)
!1635 = !DILocation(line: 677, column: 13, scope: !1510, inlinedAt: !1537)
!1636 = !{!1607, !411, i64 72}
!1637 = !DILocation(line: 678, column: 26, scope: !1510, inlinedAt: !1537)
!1638 = !DILocation(line: 678, column: 5, scope: !1510, inlinedAt: !1537)
!1639 = !DILocation(line: 678, column: 15, scope: !1510, inlinedAt: !1537)
!1640 = !{!1607, !411, i64 80}
!1641 = !DILocation(line: 679, column: 27, scope: !1510, inlinedAt: !1537)
!1642 = !DILocation(line: 679, column: 5, scope: !1510, inlinedAt: !1537)
!1643 = !DILocation(line: 679, column: 16, scope: !1510, inlinedAt: !1537)
!1644 = !{!1607, !411, i64 88}
!1645 = !DILocation(line: 680, column: 25, scope: !1510, inlinedAt: !1537)
!1646 = !DILocation(line: 680, column: 5, scope: !1510, inlinedAt: !1537)
!1647 = !DILocation(line: 680, column: 14, scope: !1510, inlinedAt: !1537)
!1648 = !{!1607, !411, i64 96}
!1649 = !DILocation(line: 681, column: 26, scope: !1510, inlinedAt: !1537)
!1650 = !DILocation(line: 681, column: 5, scope: !1510, inlinedAt: !1537)
!1651 = !DILocation(line: 681, column: 15, scope: !1510, inlinedAt: !1537)
!1652 = !{!1607, !411, i64 104}
!1653 = !DILocation(line: 682, column: 5, scope: !1510, inlinedAt: !1537)
!1654 = !DILocation(line: 682, column: 24, scope: !1510, inlinedAt: !1537)
!1655 = !DILocation(line: 683, column: 29, scope: !1510, inlinedAt: !1537)
!1656 = !DILocation(line: 683, column: 5, scope: !1510, inlinedAt: !1537)
!1657 = !DILocation(line: 683, column: 21, scope: !1510, inlinedAt: !1537)
!1658 = !{!1607, !419, i64 112}
!1659 = !DILocation(line: 684, column: 2, scope: !1510, inlinedAt: !1537)
!1660 = !DILocation(line: 685, column: 1, scope: !1510, inlinedAt: !1537)
!1661 = !DILocalVariable(name: "ctx", arg: 1, scope: !1662, file: !3, line: 543, type: !94)
!1662 = distinct !DISubprogram(name: "delete_closed_flows", scope: !3, file: !3, line: 543, type: !1663, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !94, !665, !174, !174}
!1665 = !{!1661, !1666, !1667, !1668, !1669}
!1666 = !DILocalVariable(name: "p_info", arg: 2, scope: !1662, file: !3, line: 543, type: !665)
!1667 = !DILocalVariable(name: "flow", arg: 3, scope: !1662, file: !3, line: 544, type: !174)
!1668 = !DILocalVariable(name: "rev_flow", arg: 4, scope: !1662, file: !3, line: 545, type: !174)
!1669 = !DILocalVariable(name: "has_opened", scope: !1662, file: !3, line: 547, type: !186)
!1670 = !DILocation(line: 0, scope: !1662, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 706, column: 2, scope: !491)
!1672 = !DILocation(line: 550, column: 11, scope: !1673, inlinedAt: !1671)
!1673 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 550, column: 6)
!1674 = !DILocation(line: 550, column: 23, scope: !1673, inlinedAt: !1671)
!1675 = !DILocation(line: 550, column: 56, scope: !1673, inlinedAt: !1671)
!1676 = !DILocation(line: 552, column: 22, scope: !1677, inlinedAt: !1671)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 551, column: 56)
!1678 = !DILocation(line: 553, column: 8, scope: !1679, inlinedAt: !1671)
!1679 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 553, column: 7)
!1680 = !DILocation(line: 553, column: 60, scope: !1679, inlinedAt: !1671)
!1681 = !DILocalVariable(name: "ctx", arg: 1, scope: !1682, file: !3, line: 427, type: !94)
!1682 = distinct !DISubprogram(name: "send_flow_event", scope: !3, file: !3, line: 427, type: !1683, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !94, !665, !186}
!1685 = !{!1681, !1686, !1687, !1688}
!1686 = !DILocalVariable(name: "p_info", arg: 2, scope: !1682, file: !3, line: 427, type: !665)
!1687 = !DILocalVariable(name: "rev_flow", arg: 3, scope: !1682, file: !3, line: 428, type: !186)
!1688 = !DILocalVariable(name: "fe", scope: !1682, file: !3, line: 430, type: !1556)
!1689 = !DILocation(line: 0, scope: !1682, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 555, column: 4, scope: !1679, inlinedAt: !1671)
!1691 = !DILocation(line: 430, column: 2, scope: !1682, inlinedAt: !1690)
!1692 = !DILocation(line: 430, column: 20, scope: !1682, inlinedAt: !1690)
!1693 = !DILocation(line: 430, column: 25, scope: !1682, inlinedAt: !1690)
!1694 = !DILocation(line: 434, column: 24, scope: !1682, inlinedAt: !1690)
!1695 = !DILocation(line: 432, column: 30, scope: !1682, inlinedAt: !1690)
!1696 = !DILocation(line: 433, column: 21, scope: !1682, inlinedAt: !1690)
!1697 = !DILocation(line: 0, scope: !1698, inlinedAt: !1690)
!1698 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 438, column: 6)
!1699 = !DILocation(line: 446, column: 2, scope: !1682, inlinedAt: !1690)
!1700 = !DILocation(line: 447, column: 1, scope: !1682, inlinedAt: !1690)
!1701 = !DILocation(line: 555, column: 4, scope: !1679, inlinedAt: !1671)
!1702 = !DILocation(line: 559, column: 15, scope: !1703, inlinedAt: !1671)
!1703 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 559, column: 6)
!1704 = !DILocation(line: 559, column: 26, scope: !1703, inlinedAt: !1671)
!1705 = !DILocation(line: 559, column: 37, scope: !1703, inlinedAt: !1671)
!1706 = !DILocation(line: 559, column: 6, scope: !1662, inlinedAt: !1671)
!1707 = !DILocation(line: 560, column: 26, scope: !1708, inlinedAt: !1671)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 559, column: 65)
!1709 = !DILocation(line: 561, column: 8, scope: !1710, inlinedAt: !1671)
!1710 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 561, column: 7)
!1711 = !DILocation(line: 562, column: 32, scope: !1710, inlinedAt: !1671)
!1712 = !DILocation(line: 0, scope: !1682, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 564, column: 4, scope: !1710, inlinedAt: !1671)
!1714 = !DILocation(line: 430, column: 2, scope: !1682, inlinedAt: !1713)
!1715 = !DILocation(line: 430, column: 20, scope: !1682, inlinedAt: !1713)
!1716 = !DILocation(line: 430, column: 25, scope: !1682, inlinedAt: !1713)
!1717 = !DILocation(line: 434, column: 24, scope: !1682, inlinedAt: !1713)
!1718 = !DILocation(line: 432, column: 30, scope: !1682, inlinedAt: !1713)
!1719 = !DILocation(line: 433, column: 21, scope: !1682, inlinedAt: !1713)
!1720 = !DILocation(line: 0, scope: !1698, inlinedAt: !1713)
!1721 = !DILocation(line: 446, column: 2, scope: !1682, inlinedAt: !1713)
!1722 = !DILocation(line: 447, column: 1, scope: !1682, inlinedAt: !1713)
!1723 = !DILocation(line: 564, column: 4, scope: !1710, inlinedAt: !1671)
!1724 = !DILocation(line: 708, column: 1, scope: !491)
!1725 = distinct !{!1725, !1726}
!1726 = !{!"llvm.loop.mustprogress"}
!1727 = distinct !{!1727, !1726}
!1728 = distinct !{!1728, !1726}
!1729 = distinct !{!1729, !1726}
!1730 = distinct !{!1730, !1726}
!1731 = distinct !{!1731, !1726}
