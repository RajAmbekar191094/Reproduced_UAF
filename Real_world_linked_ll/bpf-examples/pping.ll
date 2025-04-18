; ModuleID = 'pping.c'
source_filename = "pping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.pping_config = type { %struct.bpf_config, %struct.bpf_tc_opts, %struct.bpf_tc_opts, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [16 x i8], i32, i8, i8 }
%struct.bpf_config = type { i64, i64, i8, i8, i8, i8, i32 }
%struct.bpf_tc_opts = type { i64, i32, i32, i32, i32, i32 }
%struct.rlimit = type { i64, i64 }
%struct.rtt_event = type { i64, i64, %struct.network_tuple, i32, i64, i64, i64, i64, i64, i64, i8, [7 x i8] }
%struct.network_tuple = type { %struct.flow_address, %struct.flow_address, i16, i8, i8 }
%struct.flow_address = type { %struct.in6_addr, i16, i16 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.flow_event = type { i64, i64, %struct.network_tuple, i8, i8, i8, i8 }
%struct.map_cleanup_args = type { i64, i32, i32 }
%struct.bpf_tc_hook = type { i64, i32, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.flow_state = type { i64, i64, i64, i64, i64, i64, i64, i32, i8, i8, i16 }
%struct.map_full_event = type { i64, i64, %struct.network_tuple, i8, [3 x i8] }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @tracked_protocols_to_str(ptr noundef %0) #0 {
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
define dso_local ptr @output_format_to_str(i32 noundef %0) #0 {
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
define dso_local void @abort_program(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store volatile i32 0, ptr @keep_running, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
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
  %40 = call i32 @geteuid() #10
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

96:                                               ; preds = %90, %95, %94, %93
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
  %142 = call ptr @signal(i32 noundef 2, ptr noundef @abort_program) #10
  %143 = call ptr @signal(i32 noundef 15, ptr noundef @abort_program) #10
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
  br label %144, !llvm.loop !6

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
  %176 = call i32 @strcmp(ptr noundef %175, ptr noundef @.str.8) #11
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @geteuid() #3

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rlimit(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rlimit, align 8
  store i64 %0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rlimit, ptr %3, i32 0, i32 0
  %5 = load i64, ptr %2, align 8
  store i64 %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rlimit, ptr %3, i32 0, i32 1
  %7 = load i64, ptr %2, align 8
  store i64 %7, ptr %6, align 8
  %8 = call i32 @setrlimit(i32 noundef 8, ptr noundef %3) #10
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = call ptr @__errno_location() #12
  %13 = load i32, ptr %12, align 4
  %14 = sub nsw i32 0, %13
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ 0, %10 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_libbpf_strerror(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 @libbpf_strerror(i32 noundef %3, ptr noundef @get_libbpf_strerror.buf, i64 noundef 200)
  ret ptr @get_libbpf_strerror.buf
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_arguments(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
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
  %29 = call i32 @getopt_long(i32 noundef %27, ptr noundef %28, ptr noundef @.str.24, ptr noundef @long_options, ptr noundef null) #10
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
  %35 = call i64 @strlen(ptr noundef %34) #11
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
  %45 = call ptr @strncpy(ptr noundef %43, ptr noundef %44, i64 noundef 16) #10
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.pping_config, ptr %46, i32 0, i32 14
  %48 = getelementptr inbounds [16 x i8], ptr %47, i64 0, i64 0
  %49 = call i32 @if_nametoindex(ptr noundef %48) #10
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds %struct.pping_config, ptr %50, i32 0, i32 11
  store i32 %49, ptr %51, align 4
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds %struct.pping_config, ptr %52, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %40
  %57 = call ptr @__errno_location() #12
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
  %97 = call i32 @strcmp(ptr noundef %96, ptr noundef @.str.29) #11
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
  %105 = call i32 @strcmp(ptr noundef %104, ptr noundef @.str.30) #11
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
  %130 = call i32 @strcmp(ptr noundef %129, ptr noundef @.str.3) #11
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load ptr, ptr %7, align 8
  %134 = getelementptr inbounds %struct.pping_config, ptr %133, i32 0, i32 15
  store i32 0, ptr %134, align 8
  br label %154

135:                                              ; preds = %128
  %136 = load ptr, ptr @optarg, align 8
  %137 = call i32 @strcmp(ptr noundef %136, ptr noundef @.str.4) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load ptr, ptr %7, align 8
  %141 = getelementptr inbounds %struct.pping_config, ptr %140, i32 0, i32 15
  store i32 1, ptr %141, align 8
  br label %153

142:                                              ; preds = %135
  %143 = load ptr, ptr @optarg, align 8
  %144 = call i32 @strcmp(ptr noundef %143, ptr noundef @.str.5) #11
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
  %157 = call i32 @strcmp(ptr noundef %156, ptr noundef @.str.34) #11
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load ptr, ptr %7, align 8
  %161 = getelementptr inbounds %struct.pping_config, ptr %160, i32 0, i32 5
  store ptr @.str.8, ptr %161, align 8
  br label %173

162:                                              ; preds = %155
  %163 = load ptr, ptr @optarg, align 8
  %164 = call i32 @strcmp(ptr noundef %163, ptr noundef @.str.35) #11
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
  call void @exit(i32 noundef 0) #13
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
  br label %26, !llvm.loop !8

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
define internal void @print_usage(ptr noundef %0) #0 {
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
  br label %12, !llvm.loop !9

52:                                               ; preds = %12
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event_standard(ptr noundef %0) #0 {
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
define internal void @print_event_json(ptr noundef %0) #0 {
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
define internal void @print_event_ppviz(ptr noundef %0) #0 {
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
define internal i32 @load_attach_bpfprogs(ptr noundef %0, ptr noundef %1) #0 {
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
  %101 = call i32 @strcmp(ptr noundef %100, ptr noundef @.str.8) #11
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
  %151 = call i32 @strcmp(ptr noundef %150, ptr noundef @.str.8) #11
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
define internal i32 @setup_periodical_map_cleaning(ptr noundef %0, ptr noundef %1) #0 {
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
  %64 = call i32 @pthread_create(ptr noundef %6, ptr noundef null, ptr noundef @periodic_map_cleanup, ptr noundef %7) #10
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

declare ptr @perf_buffer__new(i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @bpf_object__find_map_fd_by_name(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_event(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
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

28:                                               ; preds = %14, %23, %20, %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_missed_events(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
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

declare i64 @libbpf_get_error(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #3

declare i32 @perf_buffer__poll(ptr noundef, i32 noundef) #4

declare void @jsonw_end_array(ptr noundef) #4

declare void @jsonw_destroy(ptr noundef) #4

declare void @perf_buffer__free(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_detach(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
define internal i32 @tc_detach(i32 noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
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

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

declare i32 @libbpf_strerror(i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @if_nametoindex(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bounded_double(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #0 {
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
  %14 = call double @strtod(ptr noundef %13, ptr noundef %12) #10
  %15 = load ptr, ptr %7, align 8
  store double %14, ptr %15, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = call i64 @strlen(ptr noundef %16) #11
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
declare void @exit(i32 noundef) #7

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ns_datetime(ptr noundef %0, i64 noundef %1) #0 {
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
  %13 = call ptr @localtime(ptr noundef %7) #10
  %14 = call i64 @strftime(ptr noundef %12, i64 noundef 9, ptr noundef @.str.63, ptr noundef %13) #10
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds [9 x i8], ptr %5, i64 0, i64 0
  %17 = load i64, ptr %6, align 8
  %18 = urem i64 %17, 1000000000
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.64, ptr noundef %16, i64 noundef %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @proto_to_str(i16 noundef zeroext %0) #0 {
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
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @proto_to_str.buf, i64 noundef 8, ptr noundef @.str.66, i32 noundef %11) #10
  store ptr @proto_to_str.buf, ptr %2, align 8
  br label %13

13:                                               ; preds = %9, %8, %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_flow_ppvizformat(ptr noundef %0, ptr noundef %1) #0 {
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
  %31 = call zeroext i16 @ntohs(i16 noundef zeroext %30) #12
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds [46 x i8], ptr %6, i64 0, i64 0
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.network_tuple, ptr %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.flow_address, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = call zeroext i16 @ntohs(i16 noundef zeroext %37) #12
  %39 = zext i16 %38 to i32
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.67, ptr noundef %26, i32 noundef %32, ptr noundef %33, i32 noundef %39)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @flowevent_to_str(i8 noundef zeroext %0) #0 {
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

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @eventreason_to_str(i8 noundef zeroext %0) #0 {
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
define internal ptr @eventsource_to_str(i8 noundef zeroext %0) #0 {
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_monotonic_to_realtime(i64 noundef %0) #0 {
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
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_time_ns(i32 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  store i32 %0, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  %6 = call i32 @clock_gettime(i32 noundef %5, ptr noundef %4) #10
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
declare i32 @clock_gettime(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_ip_address(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
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
  %20 = call ptr @inet_ntop(i32 noundef %13, ptr noundef %16, ptr noundef %17, i32 noundef %19) #10
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = call ptr @__errno_location() #12
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
  %38 = call ptr @inet_ntop(i32 noundef %33, ptr noundef %34, ptr noundef %35, i32 noundef %37) #10
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = call ptr @__errno_location() #12
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
declare zeroext i16 @ntohs(i16 noundef zeroext) #6

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @jsonw_new(ptr noundef) #4

declare void @jsonw_start_array(ptr noundef) #4

declare void @jsonw_start_object(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_common_fields_json(ptr noundef %0, ptr noundef %1) #0 {
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
  %40 = call zeroext i16 @ntohs(i16 noundef zeroext %39) #12
  call void @jsonw_hu_field(ptr noundef %35, ptr noundef @.str.83, i16 noundef zeroext %40)
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0
  call void @jsonw_string_field(ptr noundef %41, ptr noundef @.str.84, ptr noundef %42)
  %43 = load ptr, ptr %3, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.network_tuple, ptr %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.flow_address, ptr %45, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = call zeroext i16 @ntohs(i16 noundef zeroext %47) #12
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
define internal void @print_rttevent_fields_json(ptr noundef %0, ptr noundef %1) #0 {
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
define internal void @print_flowevent_fields_json(ptr noundef %0, ptr noundef %1) #0 {
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

declare void @jsonw_end_object(ptr noundef) #4

declare void @jsonw_u64_field(ptr noundef, ptr noundef, i64 noundef) #4

declare void @jsonw_string_field(ptr noundef, ptr noundef, ptr noundef) #4

declare void @jsonw_hu_field(ptr noundef, ptr noundef, i16 noundef zeroext) #4

declare void @jsonw_bool_field(ptr noundef, ptr noundef, i1 noundef zeroext) #4

declare ptr @bpf_object__open(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rodata(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
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
  %17 = call ptr @strstr(ptr noundef %16, ptr noundef @.str.104) #11
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
  br label %11, !llvm.loop !10

29:                                               ; preds = %11
  store i32 -22, ptr %4, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, ptr %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_programs_to_load(ptr noundef %0, ptr noundef %1) #0 {
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
  %11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.8) #11
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

declare i32 @bpf_object__load(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_attach(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
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
define internal i32 @xdp_attach(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
define internal void @print_xdp_error_hints(ptr noundef %0, i32 noundef %1) #0 {
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

21:                                               ; preds = %12, %18, %15
  ret void
}

declare ptr @bpf_object__next_map(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #5

declare ptr @bpf_map__name(ptr noundef) #4

declare i32 @bpf_map__set_initial_value(ptr noundef, ptr noundef, i64 noundef) #4

declare ptr @bpf_object__find_program_by_name(ptr noundef, ptr noundef) #4

declare i32 @bpf_program__set_autoload(ptr noundef, i1 noundef zeroext) #4

declare i32 @bpf_tc_hook_create(ptr noundef) #4

declare i32 @bpf_program__fd(ptr noundef) #4

declare i32 @bpf_tc_attach(ptr noundef, ptr noundef) #4

declare i32 @bpf_tc_hook_destroy(ptr noundef) #4

declare ptr @bpf_object__next_program(ptr noundef, ptr noundef) #4

declare i32 @bpf_set_link_xdp_fd(i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @bpf_get_link_xdp_id(i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @periodic_map_cleanup(ptr noundef %0) #0 {
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
  br label %16, !llvm.loop !11

29:                                               ; preds = %16
  call void @pthread_exit(ptr noundef null) #14
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_map(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #0 {
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
  %20 = call ptr @__errno_location() #12
  %21 = load i32, ptr %20, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, ptr %5, align 4
  br label %87

23:                                               ; preds = %4
  %24 = load i64, ptr %7, align 8
  %25 = call noalias ptr @malloc(i64 noundef %24) #15
  store ptr %25, ptr %11, align 8
  %26 = load i64, ptr %7, align 8
  %27 = call noalias ptr @malloc(i64 noundef %26) #15
  store ptr %27, ptr %12, align 8
  %28 = load i64, ptr %8, align 8
  %29 = call noalias ptr @malloc(i64 noundef %28) #15
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
  br label %40, !llvm.loop !12

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
  call void @free(ptr noundef %83) #10
  %84 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %84) #10
  %85 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %85) #10
  %86 = load i32, ptr %10, align 4
  store i32 %86, ptr %5, align 4
  br label %87

87:                                               ; preds = %82, %19
  %88 = load i32, ptr %5, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @packet_ts_timeout(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
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
define internal zeroext i1 @flow_timeout(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
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

declare i32 @nanosleep(ptr noundef, ptr noundef) #4

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #8

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #9

declare i32 @bpf_map_get_next_key(i32 noundef, ptr noundef, ptr noundef) #4

declare i32 @bpf_map_delete_elem(i32 noundef, ptr noundef) #4

declare i32 @bpf_map_lookup_elem(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse_flow(ptr noundef %0, ptr noundef %1) #0 {
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_map_full(ptr noundef %0) #0 {
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

declare i32 @bpf_tc_query(ptr noundef, ptr noundef) #4

declare i32 @bpf_tc_detach(ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind allocsize(0) }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
