; ModuleID = 'af_xdp_user.c'
source_filename = "af_xdp_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_hints_rx_time = type { i32, ptr, %struct.xsk_btf_member, %struct.xsk_btf_member }
%struct.xsk_btf_member = type { i32, i32 }
%struct.xdp_hints_mark = type { i32, ptr, %struct.xsk_btf_member }
%struct.rlimit = type { i64, i64 }
%struct.ether_addr = type { [6 x i8] }
%struct.option_wrapper = type { %struct.option, ptr, ptr, i8 }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.xsk_umem_info = type { %struct.xsk_ring_prod, %struct.xsk_ring_cons, ptr, ptr, %struct.mem_frame_allocator }
%struct.xsk_ring_prod = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.xsk_ring_cons = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.mem_frame_allocator = type { i32, i32, ptr }
%struct.xsk_socket_info = type { %struct.xsk_ring_cons, %struct.xsk_ring_prod, ptr, ptr, %struct.xsk_ring_prod, %struct.xsk_ring_cons, i32, i32, %struct.stats_record, %struct.stats_record }
%struct.stats_record = type { i64, i64, i64, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.config = type { i32, i32, ptr, [16 x i8], i32, ptr, [16 x i8], i8, i8, [512 x i8], [512 x i8], [32 x i8], [18 x i8], [18 x i8], i16, i32, i8, i32, i32, i8, %struct.ether_addr, %struct.ether_addr, i64, i32, i32, i32 }
%struct.xsk_container = type { [64 x ptr], i32 }
%struct.sched_param = type { i32 }
%struct.xsk_umem_config = type { i32, i32, i32, i32, i32 }
%struct.xsk_socket_config = type { i32, i32, i32, i32, i16 }
%struct.xdp_desc = type { i64, i32, i32 }
%struct.wakeup_stat = type { i64, i64, i64, i64, double, i64 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%union.__CONST_SOCKADDR_ARG = type { ptr }
%union.__SOCKADDR_ARG = type { ptr }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.in6_addr, %struct.in6_addr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.5 }
%union.anon.5 = type { [1 x i32] }

@xdp_hints_rx_time = dso_local global %struct.xdp_hints_rx_time zeroinitializer, align 8
@xdp_hints_mark = dso_local global %struct.xdp_hints_mark zeroinitializer, align 8
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"WARN(%d): Cannot BTF find struct:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"btf_id\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"ERR: %s doesn't contain member btf_id\0A\00", align 1
@debug_meta = external global i32, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Setup BTF based XDP hints for struct: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"xdp_hints_rx_time\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rx_ktime\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"xdp_rx_cpu\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"xdp_hints_mark\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@debug = external global i32, align 4
@.str.9 = private unnamed_addr constant [59 x i8] c" - Addr-info: %s pkt_nr:%lu offset:%u (addr:0x%lX) ptr:%p\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"XXX %s() should not happen (%d vs %d)\0A\00", align 1
@__func__.restock_receive_fill_queue = private unnamed_addr constant [27 x i8] c"restock_receive_fill_queue\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"XXX stock_frame:%d free_frames:%d cost of xsk_prod_nb_free() %llu ns\0A\00", align 1
@__const.main.rlim = private unnamed_addr constant %struct.rlimit { i64 -1, i64 -1 }, align 8
@.str.12 = private unnamed_addr constant [512 x i8] c"af_xdp_kern.o\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"xdp_sock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@default_tx_smac = internal global %struct.ether_addr { [6 x i8] c"$^\BEW\F1d" }, align 1
@default_tx_dmac = internal global %struct.ether_addr { [6 x i8] c"\BC\EE{\DA\C2b" }, align 1
@long_options = internal constant [28 x %struct.option_wrapper] [%struct.option_wrapper { %struct.option { ptr @.str.30, i32 0, ptr null, i32 104 }, ptr @.str.31, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.32, i32 1, ptr null, i32 100 }, ptr @.str.33, ptr @.str.34, i8 1 }, %struct.option_wrapper { %struct.option { ptr @.str.35, i32 0, ptr null, i32 83 }, ptr @.str.36, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.37, i32 0, ptr null, i32 78 }, ptr @.str.38, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.39, i32 0, ptr null, i32 65 }, ptr @.str.40, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.41, i32 0, ptr null, i32 70 }, ptr @.str.42, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.43, i32 0, ptr null, i32 99 }, ptr @.str.44, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.45, i32 0, ptr null, i32 122 }, ptr @.str.46, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.47, i32 1, ptr null, i32 81 }, ptr @.str.48, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.49, i32 1, ptr null, i32 112 }, ptr @.str.50, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.51, i32 0, ptr null, i32 119 }, ptr @.str.52, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.53, i32 0, ptr null, i32 115 }, ptr @.str.54, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.55, i32 0, ptr null, i32 85 }, ptr @.str.56, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.57, i32 0, ptr null, i32 113 }, ptr @.str.58, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.59, i32 0, ptr null, i32 80 }, ptr @.str.60, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.61, i32 0, ptr null, i32 109 }, ptr @.str.62, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.63, i32 0, ptr null, i32 116 }, ptr @.str.64, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.65, i32 0, ptr null, i32 68 }, ptr @.str.66, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.67, i32 1, ptr null, i32 1 }, ptr @.str.68, ptr @.str.69, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.70, i32 1, ptr null, i32 2 }, ptr @.str.71, ptr @.str.72, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.73, i32 1, ptr null, i32 4 }, ptr @.str.74, ptr @.str.75, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.76, i32 1, ptr null, i32 5 }, ptr @.str.77, ptr @.str.75, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.78, i32 0, ptr null, i32 66 }, ptr @.str.79, ptr null, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.80, i32 1, ptr null, i32 71 }, ptr @.str.81, ptr @.str.82, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.83, i32 1, ptr null, i32 72 }, ptr @.str.84, ptr @.str.82, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.85, i32 1, ptr null, i32 105 }, ptr @.str.86, ptr @.str.87, i8 0 }, %struct.option_wrapper { %struct.option { ptr @.str.88, i32 1, ptr null, i32 98 }, ptr @.str.89, ptr @.str.90, i8 0 }, %struct.option_wrapper zeroinitializer], align 16
@__doc__ = internal global ptr @.str.91, align 8
@.str.14 = private unnamed_addr constant [39 x i8] c"ERROR: Required option --dev missing\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"ERROR: must load custom BPF-prog\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"xsks_map\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"ERROR: no xsks map found: %s\0A\00", align 1
@verbose = external global i32, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"Interface: %s - queues max:%d set:%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"For XSK queues:%d alloc total:%d frames (per-q:%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"ERROR(%d): Invalid BTF info: errno:%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"ERROR: setrlimit(RLIMIT_MEMLOCK) \22%s\22\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"ERROR: Can't allocate buffer memory \22%s\22\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"ERROR: Can't create umem \22%s\22\0A\00", align 1
@base_pkt_data = internal global [4096 x i8] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [43 x i8] c"ERROR(%d): Can't setup AF_XDP socket \22%s\22\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"ERROR: Can't populate fill ring\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"ERROR(%d): failed to set priority(%d): %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"Setup RT prio %d - policy SCHED_FIFO(%d)\0A \00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"WARN(%d): Failed to Tx pkt, will retry\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Error with clock_gettime! (%i)\0A\00", align 1
@global_exit = internal global i8 0, align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Show help\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Operate on device <ifname>\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"<ifname>\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"skb-mode\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"Install XDP program in SKB (AKA generic) mode\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"native-mode\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Install XDP program in native mode\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"auto-mode\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Auto-detect SKB or native mode\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"Force install, replacing existing program on interface\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"Force copy mode\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"zero-copy\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Force zero-copy mode\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"Configure single interface receive queue for AF_XDP\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"Setup real-time priority for process\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"wakeup-mode\00", align 1
@.str.52 = private unnamed_addr constant [68 x i8] c"Use poll() API waiting for packets to arrive via wakeup from kernel\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"spin-mode\00", align 1
@.str.54 = private unnamed_addr constant [72 x i8] c"Let userspace process spin checking for packets (disable --wakeup-mode)\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"Unload XDP program instead of loading\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"Quiet mode (no output)\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"pktinfo\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"Print packet info output mode (debug)\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"metainfo\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"Print XDP metadata info output mode (debug)\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"timedebug\00", align 1
@.str.64 = private unnamed_addr constant [50 x i8] c"Print timestamps info for wakeup accuracy (debug)\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"Debug info output mode (debug)\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"Load program from <file>\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"<file>\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"progsec\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"Load program in <section> of the ELF file\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"<section>\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"src-ip\00", align 1
@.str.74 = private unnamed_addr constant [53 x i8] c"Change IPv4 source      address in generated packets\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"<ip>\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"dst-ip\00", align 1
@.str.77 = private unnamed_addr constant [53 x i8] c"Change IPv4 destination address in generated packets\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"busy-poll\00", align 1
@.str.79 = private unnamed_addr constant [70 x i8] c"Enable socket prefer NAPI busy-poll mode (remember adjust sysctl too)\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"tx-dmac\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"Dest MAC addr of TX frame in aa:bb:cc:dd:ee:ff format\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"aa:bb:cc:dd:ee:ff\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"tx-smac\00", align 1
@.str.84 = private unnamed_addr constant [53 x i8] c"Src MAC addr of TX frame in aa:bb:cc:dd:ee:ff format\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.86 = private unnamed_addr constant [50 x i8] c"Periodic TX-cyclic interval wakeup period in usec\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"<usec>\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"batch-pkts\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"Periodic TX-cyclic batch send pkts\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"<pkts>\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"AF_XDP kernel bypass example\0A\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"ERROR: Cannot allocate umem_frame_addr array sz:%u\0A\00", align 1
@opt_ip_str_src = internal global ptr @.str.93, align 8
@opt_ip_str_dst = internal global ptr @.str.94, align 8
@opt_pkt_size = internal global i16 64, align 2
@.str.93 = private unnamed_addr constant [13 x i8] c"192.168.44.1\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"192.168.44.3\00", align 1
@opt_pkt_fill_pattern = internal global i32 1094861636, align 4
@.str.95 = private unnamed_addr constant [14 x i8] c"af_xdp_user.c\00", align 1
@__func__.apply_setsockopt = private unnamed_addr constant [17 x i8] c"apply_setsockopt\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"%s:%s:%i: errno: %d/\22%s\22\0A\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"ERROR: bpf_map_update_elem %d\0A\00", align 1
@.str.98 = private unnamed_addr constant [51 x i8] c"%s() enable redir for xsks_map_fd:%d Key:%d fd:%d\0A\00", align 1
@__func__.enter_xsks_into_map = private unnamed_addr constant [20 x i8] c"enter_xsks_into_map\00", align 1
@__func__.tx_pkt = private unnamed_addr constant [7 x i8] c"tx_pkt\00", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"ERR: %s() failed transmit, no slots\0A\00", align 1
@.str.100 = private unnamed_addr constant [43 x i8] c"mem->umem_frame_free < mem->umem_frame_max\00", align 1
@__PRETTY_FUNCTION__.mem_free_umem_frame = private unnamed_addr constant [65 x i8] c"void mem_free_umem_frame(struct mem_frame_allocator *, uint64_t)\00", align 1
@.str.101 = private unnamed_addr constant [86 x i8] c"WARN: %s() reset outstanding_tx(%d) as completed(%d)more than outstanding TX pakcets\0A\00", align 1
@__func__.complete_tx = private unnamed_addr constant [12 x i8] c"complete_tx\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"WARN: %s() sendto() failed with errno:%d\0A\00", align 1
@__func__.kick_tx = private unnamed_addr constant [8 x i8] c"kick_tx\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"clock_nanosleep failed. err:%d errno:%d\0A\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"clock_getttime() failed. err:%d errno:%d\0A\00", align 1
@.str.105 = private unnamed_addr constant [129 x i8] c"TX pkts:%d event:%lu inaccurate wakeup(nanosec) curr:%ld(min:%ld max:%ld avg:%ld avg2adj:%ld) variance(n-1):%ld interval-ns:%ld\0A\00", align 1
@debug_time = external global i32, align 4
@.str.106 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"next_adj\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"Time: %lu.%lu - %s\0A\00", align 1
@__func__.handle_receive_packets = private unnamed_addr constant [23 x i8] c"handle_receive_packets\00", align 1
@.str.110 = private unnamed_addr constant [34 x i8] c"%s(): RX batch %d packets (i:%d)\0A\00", align 1
@debug_pkt = external global i32, align 4
@.str.111 = private unnamed_addr constant [32 x i8] c"No meta BTF info (btf_id zero)\0A\00", align 1
@print_meta_info_time.first = internal global i8 1, align 1
@print_meta_info_time.max = internal global i32 0, align 4
@print_meta_info_time.min = internal global i32 -1, align 4
@print_meta_info_time.tot = internal global double 0.000000e+00, align 8
@print_meta_info_time.cnt = internal global i64 0, align 8
@.str.112 = private unnamed_addr constant [25 x i8] c"ERROR(%d) no rx_ktime?!\0A\00", align 1
@.str.113 = private unnamed_addr constant [104 x i8] c"Q[%u] CPU[rx:%d/run:%d]:%s meta-time rx_ktime:%llu time_now:%llu diff:%llu ns(avg:%.0f min:%u max:%u )\0A\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"Q[%u] meta-mark mark:%u\0A\00", align 1
@.str.117 = private unnamed_addr constant [55 x i8] c"DEBUG-pkt len=%04d Eth-proto:0x%X %s src:%s -> dst:%s\0A\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"ARP\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csum_tcpudp_nofold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i8 %3, ptr %9, align 1
  store i32 %4, ptr %10, align 4
  %12 = load i32, ptr %10, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, ptr %11, align 8
  %14 = load i32, ptr %6, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, ptr %11, align 8
  %17 = add i64 %16, %15
  store i64 %17, ptr %11, align 8
  %18 = load i32, ptr %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, ptr %11, align 8
  %21 = add i64 %20, %19
  store i64 %21, ptr %11, align 8
  %22 = load i8, ptr %9, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, ptr %8, align 4
  %25 = add i32 %23, %24
  %26 = shl i32 %25, 8
  %27 = zext i32 %26 to i64
  %28 = load i64, ptr %11, align 8
  %29 = add i64 %28, %27
  store i64 %29, ptr %11, align 8
  %30 = load i64, ptr %11, align 8
  %31 = call i32 @from64to32(i64 noundef %30)
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from64to32(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 4294967295
  %5 = load i64, ptr %2, align 8
  %6 = lshr i64 %5, 32
  %7 = add i64 %4, %6
  store i64 %7, ptr %2, align 8
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 4294967295
  %10 = load i64, ptr %2, align 8
  %11 = lshr i64 %10, 32
  %12 = add i64 %9, %11
  store i64 %12, ptr %2, align 8
  %13 = load i64, ptr %2, align 8
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @setup_btf_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr null, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @xsk_btf__init_xdp_hint(ptr noundef %8, ptr noundef %9, ptr noundef %6)
  store i32 %10, ptr %7, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr @stderr, align 8
  %15 = load i32, ptr %7, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str, i32 noundef %15, ptr noundef %16)
  store ptr null, ptr %3, align 8
  br label %34

18:                                               ; preds = %2
  %19 = load ptr, ptr %6, align 8
  %20 = call zeroext i1 @xsk_btf__has_field(ptr noundef @.str.1, ptr noundef %19)
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.2, ptr noundef %23)
  %25 = load ptr, ptr %6, align 8
  call void @xsk_btf__free_xdp_hint(ptr noundef %25)
  store ptr null, ptr %3, align 8
  br label %34

26:                                               ; preds = %18
  %27 = load i32, ptr @debug_meta, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 8
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load ptr, ptr %6, align 8
  store ptr %33, ptr %3, align 8
  br label %34

34:                                               ; preds = %32, %21, %13
  %35 = load ptr, ptr %3, align 8
  ret ptr %35
}

declare i32 @xsk_btf__init_xdp_hint(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare zeroext i1 @xsk_btf__has_field(ptr noundef, ptr noundef) #1

declare void @xsk_btf__free_xdp_hint(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_btf_info_via_bpf_object(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call ptr @bpf_object__btf(ptr noundef %6)
  store ptr %7, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call ptr @setup_btf_info(ptr noundef %8, ptr noundef @.str.4)
  store ptr %9, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load ptr, ptr %5, align 8
  %14 = call zeroext i1 @xsk_btf__field_member(ptr noundef @.str.5, ptr noundef %13, ptr noundef getelementptr inbounds (%struct.xdp_hints_rx_time, ptr @xdp_hints_rx_time, i32 0, i32 2))
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 -57, ptr %2, align 4
  br label %38

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8
  %18 = call zeroext i1 @xsk_btf__field_member(ptr noundef @.str.6, ptr noundef %17, ptr noundef getelementptr inbounds (%struct.xdp_hints_rx_time, ptr @xdp_hints_rx_time, i32 0, i32 3))
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 -57, ptr %2, align 4
  br label %38

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8
  %22 = call i32 @xsk_btf__btf_type_id(ptr noundef %21)
  store i32 %22, ptr @xdp_hints_rx_time, align 8
  %23 = load ptr, ptr %5, align 8
  store ptr %23, ptr getelementptr inbounds (%struct.xdp_hints_rx_time, ptr @xdp_hints_rx_time, i32 0, i32 1), align 8
  br label %24

24:                                               ; preds = %20, %1
  %25 = load ptr, ptr %4, align 8
  %26 = call ptr @setup_btf_info(ptr noundef %25, ptr noundef @.str.7)
  store ptr %26, ptr %5, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 8
  %31 = call zeroext i1 @xsk_btf__field_member(ptr noundef @.str.8, ptr noundef %30, ptr noundef getelementptr inbounds (%struct.xdp_hints_mark, ptr @xdp_hints_mark, i32 0, i32 2))
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 -57, ptr %2, align 4
  br label %38

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 8
  %35 = call i32 @xsk_btf__btf_type_id(ptr noundef %34)
  store i32 %35, ptr @xdp_hints_mark, align 8
  %36 = load ptr, ptr %5, align 8
  store ptr %36, ptr getelementptr inbounds (%struct.xdp_hints_mark, ptr @xdp_hints_mark, i32 0, i32 1), align 8
  br label %37

37:                                               ; preds = %33, %24
  store i32 0, ptr %2, align 4
  br label %38

38:                                               ; preds = %37, %32, %19, %15
  %39 = load i32, ptr %2, align 4
  ret i32 %39
}

declare ptr @bpf_object__btf(ptr noundef) #1

declare zeroext i1 @xsk_btf__field_member(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xsk_btf__btf_type_id(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pr_addr_info(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %10 = load i64, ptr %5, align 8
  %11 = udiv i64 %10, 4096
  store i64 %11, ptr %7, align 8
  %12 = load i64, ptr %5, align 8
  %13 = load i64, ptr %7, align 8
  %14 = mul i64 %13, 4096
  %15 = sub i64 %12, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %8, align 4
  store ptr null, ptr %9, align 8
  %17 = load i32, ptr @debug, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %36

20:                                               ; preds = %3
  %21 = load ptr, ptr %6, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.xsk_umem_info, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = load i64, ptr %5, align 8
  %28 = call ptr @xsk_umem__get_data(ptr noundef %26, i64 noundef %27)
  store ptr %28, ptr %9, align 8
  br label %29

29:                                               ; preds = %23, %20
  %30 = load ptr, ptr %4, align 8
  %31 = load i64, ptr %7, align 8
  %32 = load i32, ptr %8, align 4
  %33 = load i64, ptr %5, align 8
  %34 = load ptr, ptr %9, align 8
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %30, i64 noundef %31, i32 noundef %32, i64 noundef %33, ptr noundef %34)
  br label %36

36:                                               ; preds = %29, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_umem__get_data(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_libbpf_log(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load i32, ptr @debug, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %5, align 4
  %12 = icmp uge i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, ptr %4, align 4
  br label %19

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr @stderr, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  %18 = call i32 @vfprintf(ptr noundef %15, ptr noundef %16, ptr noundef %17)
  store i32 %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, ptr %4, align 4
  ret i32 %20
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restock_receive_fill_queue(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %5, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.xsk_socket_info, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.xsk_umem_info, ptr %13, i32 0, i32 4
  %15 = call i64 @mem_avail_umem_frames(ptr noundef %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %7, align 4
  %17 = load i32, ptr %7, align 4
  %18 = icmp sgt i32 %17, 128
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %22

20:                                               ; preds = %1
  %21 = load i32, ptr %7, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 128, %19 ], [ %21, %20 ]
  store i32 %23, ptr %8, align 4
  %24 = call i64 @gettime()
  store i64 %24, ptr %9, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.xsk_socket_info, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %8, align 4
  %28 = call i32 @xsk_prod_nb_free(ptr noundef %26, i32 noundef %27)
  store i32 %28, ptr %4, align 4
  %29 = load i32, ptr %4, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %22
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.xsk_socket_info, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %4, align 4
  %35 = call i32 @xsk_ring_prod__reserve(ptr noundef %33, i32 noundef %34, ptr noundef %5)
  store i32 %35, ptr %6, align 4
  %36 = load i32, ptr %6, align 4
  %37 = load i32, ptr %4, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, ptr %4, align 4
  %41 = load i32, ptr %6, align 4
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef @__func__.restock_receive_fill_queue, i32 noundef %40, i32 noundef %41)
  %43 = load i32, ptr %6, align 4
  store i32 %43, ptr %4, align 4
  br label %44

44:                                               ; preds = %39, %31
  store i32 0, ptr %3, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, ptr %3, align 4
  %47 = load i32, ptr %4, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.xsk_socket_info, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.xsk_umem_info, ptr %52, i32 0, i32 4
  %54 = call i64 @mem_alloc_umem_frame(ptr noundef %53)
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.xsk_socket_info, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %5, align 4
  %59 = call ptr @xsk_ring_prod__fill_addr(ptr noundef %56, i32 noundef %57)
  store i64 %54, ptr %59, align 8
  br label %60

60:                                               ; preds = %49
  %61 = load i32, ptr %3, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %3, align 4
  br label %45, !llvm.loop !6

63:                                               ; preds = %45
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.xsk_socket_info, ptr %64, i32 0, i32 4
  %66 = load i32, ptr %4, align 4
  call void @xsk_ring_prod__submit(ptr noundef %65, i32 noundef %66)
  br label %67

67:                                               ; preds = %63, %22
  %68 = call i64 @gettime()
  store i64 %68, ptr %10, align 8
  %69 = load i32, ptr @debug, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32, ptr %4, align 4
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, ptr %4, align 4
  %76 = load i32, ptr %7, align 4
  %77 = load i64, ptr %10, align 8
  %78 = load i64, ptr %9, align 8
  %79 = sub i64 %77, %78
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %75, i32 noundef %76, i64 noundef %79)
  br label %81

81:                                               ; preds = %74, %71, %67
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mem_avail_umem_frames(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mem_frame_allocator, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gettime() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %1) #8
  store i32 %3, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load ptr, ptr @stderr, align 8
  %8 = load i32, ptr %2, align 4
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.29, i32 noundef %8)
  call void @exit(i32 noundef 1) #9
  unreachable

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.timespec, ptr %1, i32 0, i32 0
  %12 = load i64, ptr %11, align 8
  %13 = mul i64 %12, 1000000000
  %14 = getelementptr inbounds %struct.timespec, ptr %1, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %13, %15
  ret i64 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_prod_nb_free(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.xsk_ring_prod, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.xsk_ring_prod, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = sub i32 %11, %14
  store i32 %15, ptr %6, align 4
  %16 = load i32, ptr %6, align 4
  %17 = load i32, ptr %5, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, ptr %6, align 4
  store i32 %20, ptr %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.xsk_ring_prod, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = load volatile i32, ptr %24, align 4
  store i32 %25, ptr %7, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !8
  %26 = load i32, ptr %7, align 4
  store i32 %26, ptr %8, align 4
  %27 = load i32, ptr %8, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.xsk_ring_prod, ptr %28, i32 0, i32 1
  store i32 %27, ptr %29, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.xsk_ring_prod, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.xsk_ring_prod, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %32
  store i32 %36, ptr %34, align 4
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.xsk_ring_prod, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.xsk_ring_prod, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8
  %43 = sub i32 %39, %42
  store i32 %43, ptr %3, align 4
  br label %44

44:                                               ; preds = %21, %19
  %45 = load i32, ptr %3, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_ring_prod__reserve(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  %10 = call i32 @xsk_prod_nb_free(ptr noundef %8, i32 noundef %9)
  %11 = load i32, ptr %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %25

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.xsk_ring_prod, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = load ptr, ptr %7, align 8
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %6, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.xsk_ring_prod, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, %19
  store i32 %23, ptr %21, align 8
  %24 = load i32, ptr %6, align 4
  store i32 %24, ptr %4, align 4
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i32, ptr %4, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mem_alloc_umem_frame(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.mem_frame_allocator, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 -1, ptr %2, align 8
  br label %30

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.mem_frame_allocator, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.mem_frame_allocator, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 8
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %13, i64 %18
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %4, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mem_frame_allocator, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.mem_frame_allocator, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, ptr %23, i64 %27
  store i64 -1, ptr %28, align 8
  %29 = load i64, ptr %4, align 8
  store i64 %29, ptr %2, align 8
  br label %30

30:                                               ; preds = %10, %9
  %31 = load i64, ptr %2, align 8
  ret i64 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_ring_prod__fill_addr(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.xsk_ring_prod, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.xsk_ring_prod, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %10, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, ptr %9, i64 %15
  ret ptr %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsk_ring_prod__submit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %5

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !9
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.xsk_ring_prod, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %9, %10
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.xsk_ring_prod, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  store volatile i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rlimit, align 8
  %12 = alloca %struct.config, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.xsk_container, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sched_param, align 4
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 @__const.main.rlim, i64 16, i1 false)
  %25 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 0
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 1
  store i32 -1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 2
  store ptr null, ptr %27, align 8
  %28 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 4
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 5
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 16, i1 false)
  %32 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 7
  store i8 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 8
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr align 2 %34, i8 0, i64 512, i1 false)
  %35 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %35, ptr align 1 @.str.12, i64 512, i1 false)
  %36 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %36, ptr align 1 @.str.13, i64 32, i1 false)
  %37 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr align 2 %37, i8 0, i64 18, i1 false)
  %38 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 13
  call void @llvm.memset.p0.i64(ptr align 4 %38, i8 0, i64 18, i1 false)
  %39 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 14
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 15
  store i32 -1, ptr %40, align 8
  %41 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 16
  store i8 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 17
  store i32 0, ptr %42, align 8
  %43 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 18
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 19
  store i8 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 @default_tx_smac, i64 6, i1 false)
  %46 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 @default_tx_dmac, i64 6, i1 false)
  %47 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 22
  store i64 1000000, ptr %47, align 8
  %48 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 23
  store i32 4, ptr %48, align 8
  %49 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 24
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 25
  store i32 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 14
  store i16 10, ptr %51, align 2
  store ptr null, ptr %22, align 8
  %52 = call ptr @signal(i32 noundef 2, ptr noundef @exit_application) #8
  %53 = load i32, ptr %4, align 4
  %54 = load ptr, ptr %5, align 8
  %55 = load ptr, ptr @__doc__, align 8
  call void @parse_cmdline_args(i32 noundef %53, ptr noundef %54, ptr noundef @long_options, ptr noundef %12, ptr noundef %55)
  %56 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %68

59:                                               ; preds = %2
  %60 = load ptr, ptr @stderr, align 8
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.14)
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds ptr, ptr %62, i64 0
  %64 = load ptr, ptr %63, align 8
  %65 = load ptr, ptr @__doc__, align 8
  %66 = load i32, ptr %4, align 4
  %67 = icmp eq i32 %66, 1
  call void @usage(ptr noundef %64, ptr noundef %65, ptr noundef @long_options, i1 noundef zeroext %67)
  store i32 2, ptr %3, align 4
  br label %310

68:                                               ; preds = %2
  %69 = call ptr @libbpf_set_print(ptr noundef @print_libbpf_log)
  %70 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 7
  %71 = load i8, ptr %70, align 8
  %72 = trunc i8 %71 to i1
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 0
  %77 = load i32, ptr %76, align 8
  %78 = call i32 @xdp_link_detach(i32 noundef %75, i32 noundef %77, i32 noundef 0)
  store i32 %78, ptr %3, align 4
  br label %310

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 10
  %81 = getelementptr inbounds [512 x i8], ptr %80, i64 0, i64 0
  %82 = load i8, ptr %81, align 2
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load ptr, ptr @stderr, align 8
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.15)
  call void @exit(i32 noundef 1) #9
  unreachable

88:                                               ; preds = %79
  %89 = call ptr @load_bpf_and_xdp_attach(ptr noundef %12)
  store ptr %89, ptr %22, align 8
  %90 = load ptr, ptr %22, align 8
  %91 = icmp ne ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @exit(i32 noundef 1) #9
  unreachable

93:                                               ; preds = %88
  %94 = load ptr, ptr %22, align 8
  %95 = call ptr @bpf_object__find_map_by_name(ptr noundef %94, ptr noundef @.str.16)
  store ptr %95, ptr %23, align 8
  %96 = load ptr, ptr %23, align 8
  %97 = call i32 @bpf_map__fd(ptr noundef %96)
  store i32 %97, ptr %8, align 4
  %98 = load i32, ptr %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load ptr, ptr @stderr, align 8
  %102 = load i32, ptr %8, align 4
  %103 = call ptr @strerror(i32 noundef %102) #8
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef @.str.17, ptr noundef %103)
  call void @exit(i32 noundef 1) #9
  unreachable

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = call i32 @ethtool_get_max_channels(ptr noundef %108)
  store i32 %109, ptr %16, align 4
  %110 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8
  %112 = call i32 @ethtool_get_channels(ptr noundef %111)
  store i32 %112, ptr %17, align 4
  %113 = load i32, ptr @verbose, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = load i32, ptr @debug_meta, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115, %106
  %119 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8
  %121 = load i32, ptr %16, align 4
  %122 = load i32, ptr %17, align 4
  %123 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef %120, i32 noundef %121, i32 noundef %122)
  br label %124

124:                                              ; preds = %118, %115
  %125 = load i32, ptr %17, align 4
  %126 = getelementptr inbounds %struct.xsk_container, ptr %15, i32 0, i32 1
  store i32 %125, ptr %126, align 8
  store i32 4096, ptr %19, align 4
  %127 = load i32, ptr %19, align 4
  %128 = getelementptr inbounds %struct.xsk_container, ptr %15, i32 0, i32 1
  %129 = load i32, ptr %128, align 8
  %130 = mul nsw i32 %127, %129
  store i32 %130, ptr %18, align 4
  %131 = load i32, ptr @verbose, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %124
  %134 = load i32, ptr @debug_meta, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133, %124
  %137 = getelementptr inbounds %struct.xsk_container, ptr %15, i32 0, i32 1
  %138 = load i32, ptr %137, align 8
  %139 = load i32, ptr %18, align 4
  %140 = load i32, ptr %19, align 4
  %141 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i32 noundef %138, i32 noundef %139, i32 noundef %140)
  br label %142

142:                                              ; preds = %136, %133
  %143 = load ptr, ptr %22, align 8
  %144 = call i32 @init_btf_info_via_bpf_object(ptr noundef %143)
  store i32 %144, ptr %7, align 4
  %145 = load i32, ptr %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load ptr, ptr @stderr, align 8
  %149 = load i32, ptr %7, align 4
  %150 = call ptr @__errno_location() #10
  %151 = load i32, ptr %150, align 4
  %152 = call ptr @strerror(i32 noundef %151) #8
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.20, i32 noundef %149, ptr noundef %152)
  store i32 1, ptr %3, align 4
  br label %310

154:                                              ; preds = %142
  %155 = call i32 @setrlimit(i32 noundef 8, ptr noundef %11) #8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load ptr, ptr @stderr, align 8
  %159 = call ptr @__errno_location() #10
  %160 = load i32, ptr %159, align 4
  %161 = call ptr @strerror(i32 noundef %160) #8
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef @.str.21, ptr noundef %161)
  call void @exit(i32 noundef 1) #9
  unreachable

163:                                              ; preds = %154
  %164 = load i32, ptr %18, align 4
  %165 = mul nsw i32 %164, 4096
  %166 = sext i32 %165 to i64
  store i64 %166, ptr %10, align 8
  %167 = call i32 @getpagesize() #10
  %168 = sext i32 %167 to i64
  %169 = load i64, ptr %10, align 8
  %170 = call i32 @posix_memalign(ptr noundef %9, i64 noundef %168, i64 noundef %169) #8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %163
  %173 = load ptr, ptr @stderr, align 8
  %174 = call ptr @__errno_location() #10
  %175 = load i32, ptr %174, align 4
  %176 = call ptr @strerror(i32 noundef %175) #8
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef @.str.22, ptr noundef %176)
  call void @exit(i32 noundef 1) #9
  unreachable

178:                                              ; preds = %163
  %179 = load ptr, ptr %9, align 8
  %180 = load i64, ptr %10, align 8
  %181 = load i32, ptr %18, align 4
  %182 = call ptr @configure_xsk_umem(ptr noundef %179, i64 noundef %180, i32 noundef 4096, i32 noundef %181)
  store ptr %182, ptr %14, align 8
  %183 = load ptr, ptr %14, align 8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load ptr, ptr @stderr, align 8
  %187 = call ptr @__errno_location() #10
  %188 = load i32, ptr %187, align 4
  %189 = call ptr @strerror(i32 noundef %188) #8
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.23, ptr noundef %189)
  call void @exit(i32 noundef 1) #9
  unreachable

191:                                              ; preds = %178
  call void @gen_base_pkt(ptr noundef %12, ptr noundef @base_pkt_data)
  store i32 0, ptr %21, align 4
  br label %192

192:                                              ; preds = %229, %191
  %193 = load i32, ptr %21, align 4
  %194 = getelementptr inbounds %struct.xsk_container, ptr %15, i32 0, i32 1
  %195 = load i32, ptr %194, align 8
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %232

197:                                              ; preds = %192
  %198 = load ptr, ptr %14, align 8
  %199 = load i32, ptr %21, align 4
  %200 = load i32, ptr %8, align 4
  %201 = call ptr @xsk_configure_socket(ptr noundef %12, ptr noundef %198, i32 noundef %199, i32 noundef %200)
  store ptr %201, ptr %24, align 8
  %202 = load ptr, ptr %24, align 8
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load ptr, ptr @stderr, align 8
  %206 = call ptr @__errno_location() #10
  %207 = load i32, ptr %206, align 4
  %208 = call ptr @__errno_location() #10
  %209 = load i32, ptr %208, align 4
  %210 = call ptr @strerror(i32 noundef %209) #8
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.24, i32 noundef %207, ptr noundef %210)
  call void @exit(i32 noundef 1) #9
  unreachable

212:                                              ; preds = %197
  %213 = load ptr, ptr %24, align 8
  %214 = getelementptr inbounds %struct.xsk_container, ptr %15, i32 0, i32 0
  %215 = load i32, ptr %21, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [64 x ptr], ptr %214, i64 0, i64 %216
  store ptr %213, ptr %217, align 8
  %218 = load ptr, ptr %24, align 8
  %219 = getelementptr inbounds %struct.xsk_socket_info, ptr %218, i32 0, i32 4
  %220 = load ptr, ptr %14, align 8
  %221 = load i32, ptr %19, align 4
  %222 = sdiv i32 %221, 2
  %223 = call i32 @xsk_populate_fill_ring(ptr noundef %219, ptr noundef %220, i32 noundef %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %212
  %226 = load ptr, ptr @stderr, align 8
  %227 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef @.str.25)
  call void @exit(i32 noundef 1) #9
  unreachable

228:                                              ; preds = %212
  br label %229

229:                                              ; preds = %228
  %230 = load i32, ptr %21, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %21, align 4
  br label %192, !llvm.loop !10

232:                                              ; preds = %192
  %233 = load i32, ptr %8, align 4
  call void @enter_xsks_into_map(i32 noundef %233, ptr noundef %15)
  %234 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 17
  %235 = load i32, ptr %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %271

237:                                              ; preds = %232
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 4, i1 false)
  %238 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 17
  %239 = load i32, ptr %238, align 8
  %240 = getelementptr inbounds %struct.sched_param, ptr %20, i32 0, i32 0
  store i32 %239, ptr %240, align 4
  %241 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 18
  %242 = load i32, ptr %241, align 4
  %243 = call i32 @sched_setscheduler(i32 noundef 0, i32 noundef %242, ptr noundef %20) #8
  store i32 %243, ptr %7, align 4
  %244 = load i32, ptr %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %237
  %247 = load ptr, ptr @stderr, align 8
  %248 = call ptr @__errno_location() #10
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 17
  %251 = load i32, ptr %250, align 8
  %252 = call ptr @__errno_location() #10
  %253 = load i32, ptr %252, align 4
  %254 = call ptr @strerror(i32 noundef %253) #8
  %255 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef @.str.26, i32 noundef %249, i32 noundef %251, ptr noundef %254)
  %256 = call ptr @__errno_location() #10
  %257 = load i32, ptr %256, align 4
  %258 = icmp ne i32 %257, 1
  br i1 %258, label %259, label %260

259:                                              ; preds = %246
  store i32 1, ptr %3, align 4
  br label %310

260:                                              ; preds = %246
  br label %261

261:                                              ; preds = %260, %237
  %262 = load i32, ptr @debug, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 17
  %266 = load i32, ptr %265, align 8
  %267 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 18
  %268 = load i32, ptr %267, align 4
  %269 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, i32 noundef %266, i32 noundef %268)
  br label %270

270:                                              ; preds = %264, %261
  br label %271

271:                                              ; preds = %270, %232
  br label %272

272:                                              ; preds = %278, %271
  %273 = getelementptr inbounds %struct.xsk_container, ptr %15, i32 0, i32 0
  %274 = getelementptr inbounds [64 x ptr], ptr %273, i64 0, i64 0
  %275 = load ptr, ptr %274, align 8
  %276 = call i32 @tx_pkt(ptr noundef %12, ptr noundef %275)
  store i32 %276, ptr %7, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %272
  %279 = load ptr, ptr @stderr, align 8
  %280 = load i32, ptr %7, align 4
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %279, ptr noundef @.str.28, i32 noundef %280)
  %282 = call i32 @sleep(i32 noundef 1)
  br label %272, !llvm.loop !11

283:                                              ; preds = %272
  call void @tx_cyclic_and_rx_process(ptr noundef %12, ptr noundef %15)
  store i32 0, ptr %21, align 4
  br label %284

284:                                              ; preds = %297, %283
  %285 = load i32, ptr %21, align 4
  %286 = getelementptr inbounds %struct.xsk_container, ptr %15, i32 0, i32 1
  %287 = load i32, ptr %286, align 8
  %288 = icmp slt i32 %285, %287
  br i1 %288, label %289, label %300

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.xsk_container, ptr %15, i32 0, i32 0
  %291 = load i32, ptr %21, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [64 x ptr], ptr %290, i64 0, i64 %292
  %294 = load ptr, ptr %293, align 8
  %295 = getelementptr inbounds %struct.xsk_socket_info, ptr %294, i32 0, i32 3
  %296 = load ptr, ptr %295, align 8
  call void @xsk_socket__delete(ptr noundef %296)
  br label %297

297:                                              ; preds = %289
  %298 = load i32, ptr %21, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, ptr %21, align 4
  br label %284, !llvm.loop !12

300:                                              ; preds = %284
  %301 = load ptr, ptr %14, align 8
  %302 = getelementptr inbounds %struct.xsk_umem_info, ptr %301, i32 0, i32 2
  %303 = load ptr, ptr %302, align 8
  %304 = call i32 @xsk_umem__delete(ptr noundef %303)
  %305 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 1
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 0
  %308 = load i32, ptr %307, align 8
  %309 = call i32 @xdp_link_detach(i32 noundef %306, i32 noundef %308, i32 noundef 0)
  store i32 0, ptr %3, align 4
  br label %310

310:                                              ; preds = %300, %259, %147, %73, %59
  %311 = load i32, ptr %3, align 4
  ret i32 %311
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_application(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %2, align 4
  store i8 1, ptr @global_exit, align 1
  ret void
}

declare void @parse_cmdline_args(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @usage(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @libbpf_set_print(ptr noundef) #1

declare i32 @xdp_link_detach(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

declare ptr @load_bpf_and_xdp_attach(ptr noundef) #1

declare ptr @bpf_object__find_map_by_name(ptr noundef, ptr noundef) #1

declare i32 @bpf_map__fd(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #4

declare i32 @ethtool_get_max_channels(ptr noundef) #1

declare i32 @ethtool_get_channels(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare i32 @getpagesize() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @configure_xsk_umem(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xsk_umem_config, align 4
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %13 = getelementptr inbounds %struct.xsk_umem_config, ptr %12, i32 0, i32 0
  store i32 2048, ptr %13, align 4
  %14 = getelementptr inbounds %struct.xsk_umem_config, ptr %12, i32 0, i32 1
  store i32 2048, ptr %14, align 4
  %15 = getelementptr inbounds %struct.xsk_umem_config, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %8, align 4
  store i32 %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.xsk_umem_config, ptr %12, i32 0, i32 3
  store i32 256, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xsk_umem_config, ptr %12, i32 0, i32 4
  store i32 0, ptr %18, align 4
  %19 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 128) #11
  store ptr %19, ptr %10, align 8
  %20 = load ptr, ptr %10, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store ptr null, ptr %5, align 8
  br label %47

23:                                               ; preds = %4
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr inbounds %struct.xsk_umem_info, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %6, align 8
  %27 = load i64, ptr %7, align 8
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds %struct.xsk_umem_info, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr inbounds %struct.xsk_umem_info, ptr %30, i32 0, i32 1
  %32 = call i32 @xsk_umem__create(ptr noundef %25, ptr noundef %26, i64 noundef %27, ptr noundef %29, ptr noundef %31, ptr noundef %12)
  store i32 %32, ptr %11, align 4
  %33 = load i32, ptr %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, ptr %11, align 4
  %37 = sub nsw i32 0, %36
  %38 = call ptr @__errno_location() #10
  store i32 %37, ptr %38, align 4
  store ptr null, ptr %5, align 8
  br label %47

39:                                               ; preds = %23
  %40 = load ptr, ptr %6, align 8
  %41 = load ptr, ptr %10, align 8
  %42 = getelementptr inbounds %struct.xsk_umem_info, ptr %41, i32 0, i32 3
  store ptr %40, ptr %42, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = getelementptr inbounds %struct.xsk_umem_info, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %9, align 4
  call void @mem_init_umem_frame_allocator(ptr noundef %44, i32 noundef %45)
  %46 = load ptr, ptr %10, align 8
  store ptr %46, ptr %5, align 8
  br label %47

47:                                               ; preds = %39, %35, %22
  %48 = load ptr, ptr %5, align 8
  ret ptr %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_base_pkt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 14
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 14
  %13 = getelementptr inbounds i8, ptr %12, i64 20
  store ptr %13, ptr %7, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %5, align 8
  call void @gen_eth_hdr(ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %3, align 8
  %17 = load ptr, ptr %6, align 8
  call void @gen_ip_hdr(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %6, align 8
  call void @gen_udp_hdr(ptr noundef %18, ptr noundef %19)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_configure_socket(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xsk_socket_config, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %15 = load i32, ptr %8, align 4
  store i32 %15, ptr %12, align 4
  store i32 0, ptr %13, align 4
  %16 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 296) #11
  store ptr %16, ptr %11, align 8
  %17 = load ptr, ptr %11, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store ptr null, ptr %5, align 8
  br label %90

20:                                               ; preds = %4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.config, ptr %21, i32 0, i32 15
  %23 = load i32, ptr %22, align 8
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.config, ptr %26, i32 0, i32 15
  %28 = load i32, ptr %27, align 8
  store i32 %28, ptr %12, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, ptr %12, align 4
  %31 = load ptr, ptr %11, align 8
  %32 = getelementptr inbounds %struct.xsk_socket_info, ptr %31, i32 0, i32 7
  store i32 %30, ptr %32, align 4
  %33 = load ptr, ptr %7, align 8
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr inbounds %struct.xsk_socket_info, ptr %34, i32 0, i32 2
  store ptr %33, ptr %35, align 8
  %36 = getelementptr inbounds %struct.xsk_socket_config, ptr %10, i32 0, i32 0
  store i32 2048, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xsk_socket_config, ptr %10, i32 0, i32 1
  store i32 2048, ptr %37, align 4
  %38 = getelementptr inbounds %struct.xsk_socket_config, ptr %10, i32 0, i32 2
  store i32 1, ptr %38, align 4
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds %struct.config, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.xsk_socket_config, ptr %10, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.config, ptr %43, i32 0, i32 14
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr inbounds %struct.xsk_socket_config, ptr %10, i32 0, i32 4
  store i16 %45, ptr %46, align 4
  %47 = load ptr, ptr %11, align 8
  %48 = getelementptr inbounds %struct.xsk_socket_info, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.config, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = load i32, ptr %12, align 4
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr inbounds %struct.xsk_umem_info, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = getelementptr inbounds %struct.xsk_socket_info, ptr %56, i32 0, i32 0
  %58 = load ptr, ptr %11, align 8
  %59 = getelementptr inbounds %struct.xsk_socket_info, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds %struct.xsk_socket_info, ptr %60, i32 0, i32 4
  %62 = load ptr, ptr %11, align 8
  %63 = getelementptr inbounds %struct.xsk_socket_info, ptr %62, i32 0, i32 5
  %64 = call i32 @xsk_socket__create_shared(ptr noundef %48, ptr noundef %51, i32 noundef %52, ptr noundef %55, ptr noundef %57, ptr noundef %59, ptr noundef %61, ptr noundef %63, ptr noundef %10)
  store i32 %64, ptr %14, align 4
  %65 = load i32, ptr %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %29
  br label %86

68:                                               ; preds = %29
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.config, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %6, align 8
  %73 = getelementptr inbounds %struct.config, ptr %72, i32 0, i32 0
  %74 = load i32, ptr %73, align 8
  %75 = call i32 @bpf_get_link_xdp_id(i32 noundef %71, ptr noundef %13, i32 noundef %74)
  store i32 %75, ptr %14, align 4
  %76 = load i32, ptr %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %86

79:                                               ; preds = %68
  %80 = load ptr, ptr %11, align 8
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr inbounds %struct.config, ptr %81, i32 0, i32 19
  %83 = load i8, ptr %82, align 8
  %84 = trunc i8 %83 to i1
  call void @apply_setsockopt(ptr noundef %80, i1 noundef zeroext %84, i32 noundef 64)
  %85 = load ptr, ptr %11, align 8
  store ptr %85, ptr %5, align 8
  br label %90

86:                                               ; preds = %78, %67
  %87 = load i32, ptr %14, align 4
  %88 = sub nsw i32 0, %87
  %89 = call ptr @__errno_location() #10
  store i32 %88, ptr %89, align 4
  store ptr null, ptr %5, align 8
  br label %90

90:                                               ; preds = %86, %79, %19
  %91 = load ptr, ptr %5, align 8
  ret ptr %91
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_populate_fill_ring(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %7, align 4
  %13 = call i32 @xsk_ring_prod__reserve(ptr noundef %11, i32 noundef %12, ptr noundef %8)
  store i32 %13, ptr %9, align 4
  %14 = load i32, ptr %9, align 4
  %15 = load i32, ptr %7, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %37

18:                                               ; preds = %3
  store i32 0, ptr %10, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, ptr %10, align 4
  %21 = load i32, ptr %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.xsk_umem_info, ptr %24, i32 0, i32 4
  %26 = call i64 @mem_alloc_umem_frame(ptr noundef %25)
  %27 = load ptr, ptr %5, align 8
  %28 = load i32, ptr %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %8, align 4
  %30 = call ptr @xsk_ring_prod__fill_addr(ptr noundef %27, i32 noundef %28)
  store i64 %26, ptr %30, align 8
  br label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %10, align 4
  br label %19, !llvm.loop !13

34:                                               ; preds = %19
  %35 = load ptr, ptr %5, align 8
  %36 = load i32, ptr %7, align 4
  call void @xsk_ring_prod__submit(ptr noundef %35, i32 noundef %36)
  store i32 0, ptr %4, align 4
  br label %38

37:                                               ; preds = %17
  store i32 -22, ptr %4, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, ptr %4, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_xsks_into_map(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8
  %13 = load i32, ptr %3, align 4
  %14 = call ptr @strerror(i32 noundef %13) #8
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.17, ptr noundef %14)
  call void @exit(i32 noundef 1) #9
  unreachable

16:                                               ; preds = %2
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i32, ptr %5, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.xsk_container, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.xsk_container, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [64 x ptr], ptr %25, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.xsk_socket_info, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @xsk_socket__fd(ptr noundef %31)
  store i32 %32, ptr %6, align 4
  %33 = load i32, ptr %5, align 4
  store i32 %33, ptr %7, align 4
  %34 = load i32, ptr %3, align 4
  %35 = call i32 @bpf_map_update_elem(i32 noundef %34, ptr noundef %7, ptr noundef %6, i64 noundef 0)
  store i32 %35, ptr %8, align 4
  %36 = load i32, ptr %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load ptr, ptr @stderr, align 8
  %40 = load i32, ptr %5, align 4
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.97, i32 noundef %40)
  call void @exit(i32 noundef 1) #9
  unreachable

42:                                               ; preds = %23
  %43 = load i32, ptr @debug, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, ptr %3, align 4
  %47 = load i32, ptr %7, align 4
  %48 = load i32, ptr %6, align 4
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str.98, ptr noundef @__func__.enter_xsks_into_map, i32 noundef %46, i32 noundef %47, i32 noundef %48)
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %5, align 4
  br label %17, !llvm.loop !14

54:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare i32 @sched_setscheduler(i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_pkt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.xsk_socket_info, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.xsk_umem_info, ptr %15, i32 0, i32 4
  %17 = call i64 @mem_alloc_umem_frame(ptr noundef %16)
  store i64 %17, ptr %7, align 8
  store ptr null, ptr %8, align 8
  store i32 0, ptr %9, align 4
  %18 = load i32, ptr %9, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, ptr %7, align 8
  %21 = add i64 %20, %19
  store i64 %21, ptr %7, align 8
  %22 = load i64, ptr %7, align 8
  %23 = load ptr, ptr %6, align 8
  call void @pr_addr_info(ptr noundef @__func__.tx_pkt, i64 noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.xsk_umem_info, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = call ptr @xsk_umem__get_data(ptr noundef %26, i64 noundef %27)
  store ptr %28, ptr %8, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %8, align 8
  call void @gen_base_pkt(ptr noundef %29, ptr noundef %30)
  store i32 0, ptr %10, align 4
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.xsk_socket_info, ptr %31, i32 0, i32 1
  %33 = call i32 @xsk_ring_prod__reserve(ptr noundef %32, i32 noundef 1, ptr noundef %10)
  store i32 %33, ptr %11, align 4
  %34 = load i32, ptr %11, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds %struct.xsk_umem_info, ptr %37, i32 0, i32 4
  %39 = load i64, ptr %7, align 8
  call void @mem_free_umem_frame(ptr noundef %38, i64 noundef %39)
  %40 = load ptr, ptr @stderr, align 8
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.99, ptr noundef @__func__.tx_pkt)
  store i32 28, ptr %3, align 4
  br label %62

42:                                               ; preds = %2
  %43 = load i64, ptr %7, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.xsk_socket_info, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %10, align 4
  %47 = call ptr @xsk_ring_prod__tx_desc(ptr noundef %45, i32 noundef %46)
  %48 = getelementptr inbounds %struct.xdp_desc, ptr %47, i32 0, i32 0
  store i64 %43, ptr %48, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.xsk_socket_info, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %10, align 4
  %52 = call ptr @xsk_ring_prod__tx_desc(ptr noundef %50, i32 noundef %51)
  %53 = getelementptr inbounds %struct.xdp_desc, ptr %52, i32 0, i32 1
  store i32 64, ptr %53, align 8
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds %struct.xsk_socket_info, ptr %54, i32 0, i32 1
  call void @xsk_ring_prod__submit(ptr noundef %55, i32 noundef 1)
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.xsk_socket_info, ptr %56, i32 0, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8
  %60 = load ptr, ptr %5, align 8
  %61 = call i32 @complete_tx(ptr noundef %60)
  store i32 %61, ptr %3, align 4
  br label %62

62:                                               ; preds = %42, %36
  %63 = load i32, ptr %3, align 4
  ret i32 %63
}

declare i32 @sleep(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_cyclic_and_rx_process(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.wakeup_stat, align 8
  %11 = alloca %struct.wakeup_stat, align 8
  %12 = alloca [64 x %struct.xdp_desc], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 48, i1 false)
  %29 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 0
  store i64 1000000, ptr %29, align 8
  %30 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 1
  store i64 -65535, ptr %30, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 48, i1 false)
  %31 = getelementptr inbounds %struct.wakeup_stat, ptr %11, i32 0, i32 0
  store i64 1000000, ptr %31, align 8
  %32 = getelementptr inbounds %struct.wakeup_stat, ptr %11, i32 0, i32 1
  store i64 -65535, ptr %32, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.config, ptr %33, i32 0, i32 23
  %35 = load i32, ptr %34, align 8
  store i32 %35, ptr %13, align 4
  store i8 1, ptr %15, align 1
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.config, ptr %36, i32 0, i32 22
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr %16, align 4
  store i32 1, ptr %17, align 4
  store i32 1, ptr %18, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.xsk_container, ptr %40, i32 0, i32 0
  %42 = getelementptr inbounds [64 x ptr], ptr %41, i64 0, i64 0
  %43 = load ptr, ptr %42, align 8
  store ptr %43, ptr %19, align 8
  %44 = load ptr, ptr %3, align 8
  %45 = load ptr, ptr %19, align 8
  %46 = getelementptr inbounds %struct.xsk_socket_info, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %13, align 4
  %49 = getelementptr inbounds [64 x %struct.xdp_desc], ptr %12, i64 0, i64 0
  %50 = call i32 @invent_tx_pkts(ptr noundef %44, ptr noundef %47, i32 noundef %48, ptr noundef %49)
  store i32 %50, ptr %14, align 4
  %51 = load i32, ptr %16, align 4
  %52 = sdiv i32 %51, 1000000
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.timespec, ptr %8, i32 0, i32 0
  store i64 %53, ptr %54, align 8
  %55 = load i32, ptr %16, align 4
  %56 = srem i32 %55, 1000000
  %57 = mul nsw i32 %56, 1000
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.timespec, ptr %8, i32 0, i32 1
  store i64 %58, ptr %59, align 8
  %60 = load i32, ptr %18, align 4
  %61 = call i32 @clock_gettime(i32 noundef %60, ptr noundef %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %5, i64 16, i1 false)
  %62 = getelementptr inbounds %struct.timespec, ptr %8, i32 0, i32 0
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0
  %65 = load i64, ptr %64, align 8
  %66 = add nsw i64 %65, %63
  store i64 %66, ptr %64, align 8
  %67 = getelementptr inbounds %struct.timespec, ptr %8, i32 0, i32 1
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1
  %70 = load i64, ptr %69, align 8
  %71 = add nsw i64 %70, %68
  store i64 %71, ptr %69, align 8
  call void @tsnorm(ptr noundef %6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %6, i64 16, i1 false)
  br label %72

72:                                               ; preds = %219, %2
  %73 = load i8, ptr @global_exit, align 1
  %74 = trunc i8 %73 to i1
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %243

76:                                               ; preds = %72
  %77 = load i32, ptr %18, align 4
  %78 = load i32, ptr %17, align 4
  %79 = call i32 @clock_nanosleep(i32 noundef %77, i32 noundef %78, ptr noundef %7, ptr noundef null)
  store i32 %79, ptr %25, align 4
  %80 = load i32, ptr %25, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i32, ptr %25, align 4
  %84 = icmp ne i32 %83, 4
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load ptr, ptr @stderr, align 8
  %87 = load i32, ptr %25, align 4
  %88 = call ptr @__errno_location() #10
  %89 = load i32, ptr %88, align 4
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.103, i32 noundef %87, i32 noundef %89)
  br label %91

91:                                               ; preds = %85, %82
  br label %244

92:                                               ; preds = %76
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  %93 = load i32, ptr %18, align 4
  %94 = call i32 @clock_gettime(i32 noundef %93, ptr noundef %5) #8
  store i32 %94, ptr %25, align 4
  %95 = load i32, ptr %25, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load i32, ptr %25, align 4
  %99 = icmp ne i32 %98, 4
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load ptr, ptr @stderr, align 8
  %102 = load i32, ptr %25, align 4
  %103 = call ptr @__errno_location() #10
  %104 = load i32, ptr %103, align 4
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef @.str.104, i32 noundef %102, i32 noundef %104)
  br label %106

106:                                              ; preds = %100, %97
  br label %244

107:                                              ; preds = %92
  %108 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  %109 = load i64, ptr %108, align 8
  %110 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  %111 = load i64, ptr %110, align 8
  %112 = getelementptr inbounds { i64, i64 }, ptr %6, i32 0, i32 0
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds { i64, i64 }, ptr %6, i32 0, i32 1
  %115 = load i64, ptr %114, align 8
  %116 = call i64 @calcdiff_ns(i64 %109, i64 %111, i64 %113, i64 %115)
  store i64 %116, ptr %20, align 8
  %117 = load i8, ptr %15, align 1
  %118 = trunc i8 %117 to i1
  br i1 %118, label %136, label %119

119:                                              ; preds = %107
  %120 = load i64, ptr %20, align 8
  %121 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 0
  %122 = load i64, ptr %121, align 8
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i64, ptr %20, align 8
  %126 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 0
  store i64 %125, ptr %126, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i64, ptr %20, align 8
  %129 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 1
  %130 = load i64, ptr %129, align 8
  %131 = icmp sgt i64 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i64, ptr %20, align 8
  %134 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 1
  store i64 %133, ptr %134, align 8
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135, %107
  store i8 0, ptr %15, align 1
  %137 = load i64, ptr %20, align 8
  %138 = sitofp i64 %137 to double
  %139 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 4
  %140 = load double, ptr %139, align 8
  %141 = fadd double %140, %138
  store double %141, ptr %139, align 8
  %142 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 2
  %143 = load i64, ptr %142, align 8
  %144 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 3
  store i64 %143, ptr %144, align 8
  %145 = load i64, ptr %20, align 8
  %146 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 2
  store i64 %145, ptr %146, align 8
  %147 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 5
  %148 = load i64, ptr %147, align 8
  %149 = add i64 %148, 1
  store i64 %149, ptr %147, align 8
  %150 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 4
  %151 = load double, ptr %150, align 8
  %152 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 5
  %153 = load i64, ptr %152, align 8
  %154 = uitofp i64 %153 to double
  %155 = fdiv double %151, %154
  %156 = fptosi double %155 to i64
  store i64 %156, ptr %23, align 8
  %157 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  %158 = load i64, ptr %157, align 8
  %159 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr inbounds { i64, i64 }, ptr %7, i32 0, i32 0
  %162 = load i64, ptr %161, align 8
  %163 = getelementptr inbounds { i64, i64 }, ptr %7, i32 0, i32 1
  %164 = load i64, ptr %163, align 8
  %165 = call i64 @calcdiff_ns(i64 %158, i64 %160, i64 %162, i64 %164)
  store i64 %165, ptr %21, align 8
  %166 = load i64, ptr %21, align 8
  %167 = sitofp i64 %166 to double
  %168 = getelementptr inbounds %struct.wakeup_stat, ptr %11, i32 0, i32 4
  %169 = load double, ptr %168, align 8
  %170 = fadd double %169, %167
  store double %170, ptr %168, align 8
  %171 = getelementptr inbounds %struct.wakeup_stat, ptr %11, i32 0, i32 5
  %172 = load i64, ptr %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, ptr %171, align 8
  %174 = getelementptr inbounds %struct.wakeup_stat, ptr %11, i32 0, i32 4
  %175 = load double, ptr %174, align 8
  %176 = getelementptr inbounds %struct.wakeup_stat, ptr %11, i32 0, i32 5
  %177 = load i64, ptr %176, align 8
  %178 = uitofp i64 %177 to double
  %179 = fdiv double %175, %178
  %180 = fptosi double %179 to i64
  store i64 %180, ptr %24, align 8
  %181 = load ptr, ptr %19, align 8
  %182 = load i32, ptr %14, align 4
  %183 = getelementptr inbounds [64 x %struct.xdp_desc], ptr %12, i64 0, i64 0
  %184 = call i32 @tx_batch_pkts(ptr noundef %181, i32 noundef %182, ptr noundef %183)
  store i32 %184, ptr %26, align 4
  %185 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  %186 = load i64, ptr %185, align 8
  %187 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  %188 = load i64, ptr %187, align 8
  %189 = getelementptr inbounds { i64, i64 }, ptr %9, i32 0, i32 0
  %190 = load i64, ptr %189, align 8
  %191 = getelementptr inbounds { i64, i64 }, ptr %9, i32 0, i32 1
  %192 = load i64, ptr %191, align 8
  %193 = call i64 @calcdiff_ns(i64 %186, i64 %188, i64 %190, i64 %192)
  store i64 %193, ptr %22, align 8
  %194 = load i32, ptr @verbose, align 4
  %195 = icmp sge i32 %194, 1
  br i1 %195, label %196, label %215

196:                                              ; preds = %136
  %197 = load i32, ptr %26, align 4
  %198 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 5
  %199 = load i64, ptr %198, align 8
  %200 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 2
  %201 = load i64, ptr %200, align 8
  %202 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 0
  %203 = load i64, ptr %202, align 8
  %204 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 1
  %205 = load i64, ptr %204, align 8
  %206 = load i64, ptr %23, align 8
  %207 = load i64, ptr %24, align 8
  %208 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 2
  %209 = load i64, ptr %208, align 8
  %210 = getelementptr inbounds %struct.wakeup_stat, ptr %10, i32 0, i32 3
  %211 = load i64, ptr %210, align 8
  %212 = sub nsw i64 %209, %211
  %213 = load i64, ptr %22, align 8
  %214 = call i32 (ptr, ...) @printf(ptr noundef @.str.105, i32 noundef %197, i64 noundef %199, i64 noundef %201, i64 noundef %203, i64 noundef %205, i64 noundef %206, i64 noundef %207, i64 noundef %212, i64 noundef %213)
  br label %215

215:                                              ; preds = %196, %136
  %216 = load i32, ptr @debug_time, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  call void @print_timespec(ptr noundef %5, ptr noundef @.str.106)
  call void @print_timespec(ptr noundef %7, ptr noundef @.str.107)
  call void @print_timespec(ptr noundef %6, ptr noundef @.str.108)
  br label %219

219:                                              ; preds = %218, %215
  %220 = getelementptr inbounds %struct.timespec, ptr %8, i32 0, i32 0
  %221 = load i64, ptr %220, align 8
  %222 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0
  %223 = load i64, ptr %222, align 8
  %224 = add nsw i64 %223, %221
  store i64 %224, ptr %222, align 8
  %225 = getelementptr inbounds %struct.timespec, ptr %8, i32 0, i32 1
  %226 = load i64, ptr %225, align 8
  %227 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1
  %228 = load i64, ptr %227, align 8
  %229 = add nsw i64 %228, %226
  store i64 %229, ptr %227, align 8
  call void @tsnorm(ptr noundef %6)
  %230 = call i64 @timespec2ns(ptr noundef %6)
  store i64 %230, ptr %27, align 8
  %231 = load i64, ptr %27, align 8
  %232 = load i64, ptr %24, align 8
  %233 = sub i64 %231, %232
  store i64 %233, ptr %27, align 8
  %234 = load i64, ptr %27, align 8
  call void @ns2timespec(i64 noundef %234, ptr noundef %7)
  call void @tsnorm(ptr noundef %7)
  %235 = load ptr, ptr %3, align 8
  %236 = load ptr, ptr %19, align 8
  %237 = getelementptr inbounds %struct.xsk_socket_info, ptr %236, i32 0, i32 2
  %238 = load ptr, ptr %237, align 8
  %239 = load i32, ptr %13, align 4
  %240 = getelementptr inbounds [64 x %struct.xdp_desc], ptr %12, i64 0, i64 0
  %241 = call i32 @invent_tx_pkts(ptr noundef %235, ptr noundef %238, i32 noundef %239, ptr noundef %240)
  store i32 %241, ptr %14, align 4
  %242 = load ptr, ptr %4, align 8
  call void @rx_avail_packets(ptr noundef %242)
  br label %72, !llvm.loop !15

243:                                              ; preds = %72
  br label %244

244:                                              ; preds = %243, %106, %91
  store i32 0, ptr %28, align 4
  br label %245

245:                                              ; preds = %259, %244
  %246 = load i32, ptr %28, align 4
  %247 = load i32, ptr %14, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %245
  %250 = load ptr, ptr %19, align 8
  %251 = getelementptr inbounds %struct.xsk_socket_info, ptr %250, i32 0, i32 2
  %252 = load ptr, ptr %251, align 8
  %253 = getelementptr inbounds %struct.xsk_umem_info, ptr %252, i32 0, i32 4
  %254 = load i32, ptr %28, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [64 x %struct.xdp_desc], ptr %12, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.xdp_desc, ptr %256, i32 0, i32 0
  %258 = load i64, ptr %257, align 16
  call void @mem_free_umem_frame(ptr noundef %253, i64 noundef %258)
  br label %259

259:                                              ; preds = %249
  %260 = load i32, ptr %28, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, ptr %28, align 4
  br label %245, !llvm.loop !16

262:                                              ; preds = %245
  ret void
}

declare void @xsk_socket__delete(ptr noundef) #1

declare i32 @xsk_umem__delete(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

declare i32 @xsk_umem__create(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_init_umem_frame_allocator(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %7 = load i32, ptr %4, align 4
  %8 = zext i32 %7 to i64
  %9 = call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #11
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.mem_frame_allocator, ptr %10, i32 0, i32 2
  store ptr %9, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.mem_frame_allocator, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr @stderr, align 8
  %18 = load i32, ptr %4, align 4
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.92, i32 noundef %18)
  call void @exit(i32 noundef 1) #9
  unreachable

20:                                               ; preds = %2
  %21 = load i32, ptr %4, align 4
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.mem_frame_allocator, ptr %22, i32 0, i32 1
  store i32 %21, ptr %23, align 4
  store i32 0, ptr %5, align 4
  br label %24

24:                                               ; preds = %39, %20
  %25 = load i32, ptr %5, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32, ptr %5, align 4
  %30 = mul nsw i32 %29, 4096
  %31 = sext i32 %30 to i64
  store i64 %31, ptr %6, align 8
  %32 = load i64, ptr %6, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.mem_frame_allocator, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, ptr %35, i64 %37
  store i64 %32, ptr %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, ptr %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %5, align 4
  br label %24, !llvm.loop !17

42:                                               ; preds = %24
  %43 = load i32, ptr %4, align 4
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.mem_frame_allocator, ptr %44, i32 0, i32 0
  store i32 %43, ptr %45, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_eth_hdr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethhdr, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds [6 x i8], ptr %6, i64 0, i64 0
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.config, ptr %8, i32 0, i32 21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %9, i64 6, i1 false)
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds [6 x i8], ptr %11, i64 0, i64 0
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.config, ptr %13, i32 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %14, i64 6, i1 false)
  %15 = call zeroext i16 @htons(i16 noundef zeroext 2048) #10
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.ethhdr, ptr %16, i32 0, i32 2
  store i16 %15, ptr %17, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_ip_hdr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.config, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr @opt_ip_str_src, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.config, ptr %11, i32 0, i32 24
  %13 = call zeroext i1 @get_ipv4_u32(ptr noundef %10, ptr noundef %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.config, ptr %15, i32 0, i32 25
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load ptr, ptr @opt_ip_str_dst, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.config, ptr %21, i32 0, i32 25
  %23 = call zeroext i1 @get_ipv4_u32(ptr noundef %20, ptr noundef %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load ptr, ptr %4, align 8
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 15
  %28 = or i8 %27, 64
  store i8 %28, ptr %25, align 4
  %29 = load ptr, ptr %4, align 8
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, -16
  %32 = or i8 %31, 5
  store i8 %32, ptr %29, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.iphdr, ptr %33, i32 0, i32 1
  store i8 0, ptr %34, align 1
  %35 = load i16, ptr @opt_pkt_size, align 2
  %36 = zext i16 %35 to i32
  %37 = sub nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 14
  %40 = trunc i64 %39 to i16
  %41 = call zeroext i16 @htons(i16 noundef zeroext %40) #10
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 2
  store i16 %41, ptr %43, align 2
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.iphdr, ptr %44, i32 0, i32 3
  store i16 0, ptr %45, align 4
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 4
  store i16 0, ptr %47, align 2
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.iphdr, ptr %48, i32 0, i32 5
  store i8 64, ptr %49, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 6
  store i8 17, ptr %51, align 1
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.config, ptr %52, i32 0, i32 24
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.iphdr, ptr %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.anon, ptr %56, i32 0, i32 0
  store i32 %54, ptr %57, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.config, ptr %58, i32 0, i32 25
  %60 = load i32, ptr %59, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.iphdr, ptr %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 1
  store i32 %60, ptr %63, align 4
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.iphdr, ptr %64, i32 0, i32 7
  store i16 0, ptr %65, align 2
  %66 = load ptr, ptr %4, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = load i8, ptr %67, align 4
  %69 = and i8 %68, 15
  %70 = zext i8 %69 to i32
  %71 = call zeroext i16 @ip_fast_csum(ptr noundef %66, i32 noundef %70)
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds %struct.iphdr, ptr %72, i32 0, i32 7
  store i16 %71, ptr %73, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_udp_hdr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call zeroext i16 @htons(i16 noundef zeroext 4096) #10
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.udphdr, ptr %6, i32 0, i32 0
  store i16 %5, ptr %7, align 2
  %8 = call zeroext i16 @htons(i16 noundef zeroext 4096) #10
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.udphdr, ptr %9, i32 0, i32 1
  store i16 %8, ptr %10, align 2
  %11 = load i16, ptr @opt_pkt_size, align 2
  %12 = zext i16 %11 to i32
  %13 = sub nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 14
  %16 = sub i64 %15, 20
  %17 = trunc i64 %16 to i16
  %18 = call zeroext i16 @htons(i16 noundef zeroext %17) #10
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.udphdr, ptr %19, i32 0, i32 2
  store i16 %18, ptr %20, align 2
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  %23 = load i32, ptr @opt_pkt_fill_pattern, align 4
  %24 = load i16, ptr @opt_pkt_size, align 2
  %25 = zext i16 %24 to i32
  %26 = sub nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 14
  %29 = sub i64 %28, 20
  %30 = sub i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call ptr @memset32_htonl(ptr noundef %22, i32 noundef %23, i32 noundef %31)
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.udphdr, ptr %33, i32 0, i32 3
  store i16 0, ptr %34, align 2
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.iphdr, ptr %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.iphdr, ptr %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = load i16, ptr @opt_pkt_size, align 2
  %44 = zext i16 %43 to i32
  %45 = sub nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %46, 14
  %48 = sub i64 %47, 20
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %3, align 8
  %51 = call zeroext i16 @udp_csum(i32 noundef %38, i32 noundef %42, i32 noundef %49, i8 noundef zeroext 17, ptr noundef %50)
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.udphdr, ptr %52, i32 0, i32 3
  store i16 %51, ptr %53, align 2
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #6

declare zeroext i1 @get_ipv4_u32(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @ip_fast_csum(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = mul i32 %6, 4
  %8 = call i32 @do_csum(ptr noundef %5, i32 noundef %7)
  %9 = xor i32 %8, -1
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_csum(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %10 = load i32, ptr %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %124

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 1, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %6, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 8
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i32, ptr %5, align 4
  %26 = add i32 %25, %24
  store i32 %26, ptr %5, align 4
  %27 = load i32, ptr %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %4, align 4
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %30, ptr %3, align 8
  br label %31

31:                                               ; preds = %20, %13
  %32 = load i32, ptr %4, align 4
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %99

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 8
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 2, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load ptr, ptr %3, align 8
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = load i32, ptr %5, align 4
  %44 = add i32 %43, %42
  store i32 %44, ptr %5, align 4
  %45 = load i32, ptr %4, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, ptr %4, align 4
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds i8, ptr %47, i64 2
  store ptr %48, ptr %3, align 8
  br label %49

49:                                               ; preds = %39, %34
  %50 = load i32, ptr %4, align 4
  %51 = icmp sge i32 %50, 4
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 8
  %54 = load i32, ptr %4, align 4
  %55 = and i32 %54, -4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  store ptr %57, ptr %7, align 8
  store i32 0, ptr %8, align 4
  br label %58

58:                                               ; preds = %73, %52
  %59 = load ptr, ptr %3, align 8
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %9, align 4
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds i8, ptr %61, i64 4
  store ptr %62, ptr %3, align 8
  %63 = load i32, ptr %8, align 4
  %64 = load i32, ptr %5, align 4
  %65 = add i32 %64, %63
  store i32 %65, ptr %5, align 4
  %66 = load i32, ptr %9, align 4
  %67 = load i32, ptr %5, align 4
  %68 = add i32 %67, %66
  store i32 %68, ptr %5, align 4
  %69 = load i32, ptr %9, align 4
  %70 = load i32, ptr %5, align 4
  %71 = icmp ugt i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, ptr %8, align 4
  br label %73

73:                                               ; preds = %58
  %74 = load ptr, ptr %3, align 8
  %75 = load ptr, ptr %7, align 8
  %76 = icmp ult ptr %74, %75
  br i1 %76, label %58, label %77, !llvm.loop !18

77:                                               ; preds = %73
  %78 = load i32, ptr %8, align 4
  %79 = load i32, ptr %5, align 4
  %80 = add i32 %79, %78
  store i32 %80, ptr %5, align 4
  %81 = load i32, ptr %5, align 4
  %82 = and i32 %81, 65535
  %83 = load i32, ptr %5, align 4
  %84 = lshr i32 %83, 16
  %85 = add i32 %82, %84
  store i32 %85, ptr %5, align 4
  br label %86

86:                                               ; preds = %77, %49
  %87 = load i32, ptr %4, align 4
  %88 = and i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load ptr, ptr %3, align 8
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = load i32, ptr %5, align 4
  %95 = add i32 %94, %93
  store i32 %95, ptr %5, align 4
  %96 = load ptr, ptr %3, align 8
  %97 = getelementptr inbounds i8, ptr %96, i64 2
  store ptr %97, ptr %3, align 8
  br label %98

98:                                               ; preds = %90, %86
  br label %99

99:                                               ; preds = %98, %31
  %100 = load i32, ptr %4, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load ptr, ptr %3, align 8
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load i32, ptr %5, align 4
  %108 = add i32 %107, %106
  store i32 %108, ptr %5, align 4
  br label %109

109:                                              ; preds = %103, %99
  %110 = load i32, ptr %5, align 4
  %111 = call zeroext i16 @from32to16(i32 noundef %110)
  %112 = zext i16 %111 to i32
  store i32 %112, ptr %5, align 4
  %113 = load i32, ptr %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load i32, ptr %5, align 4
  %117 = lshr i32 %116, 8
  %118 = and i32 %117, 255
  %119 = load i32, ptr %5, align 4
  %120 = and i32 %119, 255
  %121 = shl i32 %120, 8
  %122 = or i32 %118, %121
  store i32 %122, ptr %5, align 4
  br label %123

123:                                              ; preds = %115, %109
  br label %124

124:                                              ; preds = %123, %12
  %125 = load i32, ptr %5, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @from32to16(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 65535
  %5 = load i32, ptr %2, align 4
  %6 = lshr i32 %5, 16
  %7 = add i32 %4, %6
  store i32 %7, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 65535
  %10 = load i32, ptr %2, align 4
  %11 = lshr i32 %10, 16
  %12 = add i32 %9, %11
  store i32 %12, ptr %2, align 4
  %13 = load i32, ptr %2, align 4
  %14 = trunc i32 %13 to i16
  ret i16 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @memset32_htonl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %7, align 8
  %10 = load i32, ptr %5, align 4
  %11 = call i32 @htonl(i32 noundef %10) #10
  store i32 %11, ptr %5, align 4
  store i32 0, ptr %8, align 4
  br label %12

12:                                               ; preds = %24, %3
  %13 = load i32, ptr %8, align 4
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %14, -4
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, ptr %5, align 4
  %19 = load ptr, ptr %7, align 8
  %20 = load i32, ptr %8, align 4
  %21 = ashr i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %19, i64 %22
  store i32 %18, ptr %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %8, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, ptr %8, align 4
  br label %12, !llvm.loop !19

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, ptr %8, align 4
  %30 = load i32, ptr %6, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i32, ptr %8, align 4
  %34 = and i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %5, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = load ptr, ptr %4, align 8
  %39 = load i32, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  store i8 %37, ptr %41, align 1
  br label %42

42:                                               ; preds = %32
  %43 = load i32, ptr %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %8, align 4
  br label %28, !llvm.loop !20

45:                                               ; preds = %28
  %46 = load ptr, ptr %4, align 8
  ret ptr %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @udp_csum(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i8 %3, ptr %9, align 1
  store ptr %4, ptr %10, align 8
  store i32 0, ptr %11, align 4
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %27, %5
  %14 = load i32, ptr %12, align 4
  %15 = load i32, ptr %8, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load ptr, ptr %10, align 8
  %19 = load i32, ptr %12, align 4
  %20 = lshr i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = load i32, ptr %11, align 4
  %26 = add i32 %25, %24
  store i32 %26, ptr %11, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %12, align 4
  %29 = add i32 %28, 2
  store i32 %29, ptr %12, align 4
  br label %13, !llvm.loop !21

30:                                               ; preds = %13
  %31 = load i32, ptr %6, align 4
  %32 = load i32, ptr %7, align 4
  %33 = load i32, ptr %8, align 4
  %34 = load i8, ptr %9, align 1
  %35 = load i32, ptr %11, align 4
  %36 = call zeroext i16 @csum_tcpudp_magic(i32 noundef %31, i32 noundef %32, i32 noundef %33, i8 noundef zeroext %34, i32 noundef %35)
  ret i16 %36
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @csum_tcpudp_magic(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i8 %3, ptr %9, align 1
  store i32 %4, ptr %10, align 4
  %11 = load i32, ptr %6, align 4
  %12 = load i32, ptr %7, align 4
  %13 = load i32, ptr %8, align 4
  %14 = load i8, ptr %9, align 1
  %15 = load i32, ptr %10, align 4
  %16 = call i32 @csum_tcpudp_nofold(i32 noundef %11, i32 noundef %12, i32 noundef %13, i8 noundef zeroext %14, i32 noundef %15)
  %17 = call zeroext i16 @csum_fold(i32 noundef %16)
  ret i16 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @csum_fold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  store i32 %4, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 65535
  %7 = load i32, ptr %3, align 4
  %8 = lshr i32 %7, 16
  %9 = add i32 %6, %8
  store i32 %9, ptr %3, align 4
  %10 = load i32, ptr %3, align 4
  %11 = and i32 %10, 65535
  %12 = load i32, ptr %3, align 4
  %13 = lshr i32 %12, 16
  %14 = add i32 %11, %13
  store i32 %14, ptr %3, align 4
  %15 = load i32, ptr %3, align 4
  %16 = xor i32 %15, -1
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

declare i32 @xsk_socket__create_shared(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @bpf_get_link_xdp_id(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_setsockopt(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  %8 = zext i1 %1 to i8
  store i8 %8, ptr %5, align 1
  store i32 %2, ptr %6, align 4
  %9 = load i8, ptr %5, align 1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %43

12:                                               ; preds = %3
  store i32 1, ptr %7, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.xsk_socket_info, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @xsk_socket__fd(ptr noundef %15)
  %17 = call i32 @setsockopt(i32 noundef %16, i32 noundef 1, i32 noundef 69, ptr noundef %7, i32 noundef 4) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = call ptr @__errno_location() #10
  %21 = load i32, ptr %20, align 4
  call void @__exit_with_error(i32 noundef %21, ptr noundef @.str.95, ptr noundef @__func__.apply_setsockopt, i32 noundef 397)
  br label %22

22:                                               ; preds = %19, %12
  store i32 20, ptr %7, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.xsk_socket_info, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @xsk_socket__fd(ptr noundef %25)
  %27 = call i32 @setsockopt(i32 noundef %26, i32 noundef 1, i32 noundef 46, ptr noundef %7, i32 noundef 4) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = call ptr @__errno_location() #10
  %31 = load i32, ptr %30, align 4
  call void @__exit_with_error(i32 noundef %31, ptr noundef @.str.95, ptr noundef @__func__.apply_setsockopt, i32 noundef 402)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, ptr %6, align 4
  store i32 %33, ptr %7, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.xsk_socket_info, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = call i32 @xsk_socket__fd(ptr noundef %36)
  %38 = call i32 @setsockopt(i32 noundef %37, i32 noundef 1, i32 noundef 70, ptr noundef %7, i32 noundef 4) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = call ptr @__errno_location() #10
  %42 = load i32, ptr %41, align 4
  call void @__exit_with_error(i32 noundef %42, ptr noundef @.str.95, ptr noundef @__func__.apply_setsockopt, i32 noundef 407)
  br label %43

43:                                               ; preds = %11, %40, %32
  ret void
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

declare i32 @xsk_socket__fd(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__exit_with_error(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr @stderr, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i32, ptr %8, align 4
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %5, align 4
  %15 = call ptr @strerror(i32 noundef %14) #8
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.96, ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %15)
  call void @exit(i32 noundef 1) #9
  unreachable
}

declare i32 @bpf_map_update_elem(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_free_umem_frame(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.mem_frame_allocator, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.mem_frame_allocator, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.100, ptr noundef @.str.95, i32 noundef 344, ptr noundef @__PRETTY_FUNCTION__.mem_free_umem_frame) #9
  unreachable

14:                                               ; preds = %12
  %15 = load i64, ptr %4, align 8
  %16 = and i64 %15, -4096
  store i64 %16, ptr %4, align 8
  %17 = load i64, ptr %4, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.mem_frame_allocator, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.mem_frame_allocator, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i64, ptr %20, i64 %25
  store i64 %17, ptr %26, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_ring_prod__tx_desc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.xsk_ring_prod, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.xsk_ring_prod, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %10, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.xdp_desc, ptr %9, i64 %15
  ret ptr %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_tx(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.xsk_socket_info, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %78

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = call i32 @kick_tx(ptr noundef %15)
  store i32 %16, ptr %6, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.xsk_socket_info, ptr %17, i32 0, i32 5
  %19 = call i32 @xsk_ring_cons__peek(ptr noundef %18, i32 noundef 2048, ptr noundef %5)
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %14
  store i32 0, ptr %7, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %4, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.xsk_socket_info, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %5, align 4
  %32 = call ptr @xsk_ring_cons__comp_addr(ptr noundef %29, i32 noundef %30)
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %8, align 8
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.xsk_socket_info, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.xsk_umem_info, ptr %36, i32 0, i32 4
  %38 = load i64, ptr %8, align 8
  call void @mem_free_umem_frame(ptr noundef %37, i64 noundef %38)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, ptr %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %7, align 4
  br label %23, !llvm.loop !22

42:                                               ; preds = %23
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.xsk_socket_info, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %4, align 4
  call void @xsk_ring_cons__release(ptr noundef %44, i32 noundef %45)
  %46 = load i32, ptr %4, align 4
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.xsk_socket_info, ptr %47, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load ptr, ptr @stderr, align 8
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.xsk_socket_info, ptr %53, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = load i32, ptr %4, align 4
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.101, ptr noundef @__func__.complete_tx, i32 noundef %55, i32 noundef %56)
  br label %58

58:                                               ; preds = %51, %42
  %59 = load i32, ptr %4, align 4
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.xsk_socket_info, ptr %60, i32 0, i32 6
  %62 = load i32, ptr %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, ptr %4, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds %struct.xsk_socket_info, ptr %67, i32 0, i32 6
  %69 = load i32, ptr %68, align 8
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i32 [ %65, %64 ], [ %69, %66 ]
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct.xsk_socket_info, ptr %72, i32 0, i32 6
  %74 = load i32, ptr %73, align 8
  %75 = sub i32 %74, %71
  store i32 %75, ptr %73, align 8
  br label %76

76:                                               ; preds = %70, %14
  %77 = load i32, ptr %6, align 4
  store i32 %77, ptr %2, align 4
  br label %78

78:                                               ; preds = %76, %13
  %79 = load i32, ptr %2, align 4
  ret i32 %79
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kick_tx(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.xsk_socket_info, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @xsk_socket__fd(ptr noundef %8)
  store ptr null, ptr %5, align 8
  %10 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, ptr %5, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = call i64 @sendto(i32 noundef %9, ptr noundef null, i64 noundef 0, i32 noundef 64, ptr %11, i32 noundef 0)
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %4, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load ptr, ptr @stderr, align 8
  %18 = call ptr @__errno_location() #10
  %19 = load i32, ptr %18, align 4
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.102, ptr noundef @__func__.kick_tx, i32 noundef %19)
  %21 = call ptr @__errno_location() #10
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, ptr %3, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_ring_cons__peek(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @xsk_cons_nb_avail(ptr noundef %8, i32 noundef %9)
  store i32 %10, ptr %7, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.xsk_ring_cons, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %6, align 8
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %7, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.xsk_ring_cons, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %18
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %13, %3
  %24 = load i32, ptr %7, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_ring_cons__comp_addr(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.xsk_ring_cons, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.xsk_ring_cons, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %10, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, ptr %9, i64 %15
  ret ptr %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsk_ring_cons__release(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %5

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !23
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.xsk_ring_cons, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %9, %10
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.xsk_ring_cons, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  store volatile i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %5
  ret void
}

declare i64 @sendto(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_cons_nb_avail(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.xsk_ring_cons, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.xsk_ring_cons, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %10, %13
  store i32 %14, ptr %5, align 4
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.xsk_ring_cons, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = load volatile i32, ptr %20, align 4
  store i32 %21, ptr %6, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !24
  %22 = load i32, ptr %6, align 4
  store i32 %22, ptr %7, align 4
  %23 = load i32, ptr %7, align 4
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.xsk_ring_cons, ptr %24, i32 0, i32 0
  store i32 %23, ptr %25, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.xsk_ring_cons, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.xsk_ring_cons, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %28, %31
  store i32 %32, ptr %5, align 4
  br label %33

33:                                               ; preds = %17, %2
  %34 = load i32, ptr %5, align 4
  %35 = load i32, ptr %4, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, ptr %4, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, ptr %5, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invent_tx_pkts(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.xdp_desc, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %16 = load i32, ptr %8, align 4
  %17 = zext i32 %16 to i64
  %18 = load i16, ptr @opt_pkt_size, align 2
  %19 = zext i16 %18 to i32
  store i32 %19, ptr %10, align 4
  store i32 256, ptr %11, align 4
  store i32 0, ptr %12, align 4
  br label %20

20:                                               ; preds = %53, %4
  %21 = load i32, ptr %12, align 4
  %22 = load i32, ptr %8, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.xsk_umem_info, ptr %25, i32 0, i32 4
  %27 = call i64 @mem_alloc_umem_frame(ptr noundef %26)
  store i64 %27, ptr %13, align 8
  %28 = load i64, ptr %13, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, ptr %12, align 4
  store i32 %31, ptr %5, align 4
  br label %58

32:                                               ; preds = %24
  %33 = load i32, ptr %11, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, ptr %13, align 8
  %36 = add i64 %35, %34
  store i64 %36, ptr %13, align 8
  %37 = load i64, ptr %13, align 8
  %38 = getelementptr inbounds %struct.xdp_desc, ptr %14, i32 0, i32 0
  store i64 %37, ptr %38, align 8
  %39 = load i32, ptr %10, align 4
  %40 = getelementptr inbounds %struct.xdp_desc, ptr %14, i32 0, i32 1
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.xdp_desc, ptr %14, i32 0, i32 2
  store i32 0, ptr %41, align 4
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds %struct.xsk_umem_info, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = load i64, ptr %13, align 8
  %46 = call ptr @xsk_umem__get_data(ptr noundef %44, i64 noundef %45)
  store ptr %46, ptr %15, align 8
  %47 = load ptr, ptr %6, align 8
  %48 = load ptr, ptr %15, align 8
  call void @gen_base_pkt(ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %9, align 8
  %50 = load i32, ptr %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.xdp_desc, ptr %49, i64 %51
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr align 8 %14, i64 16, i1 false)
  br label %53

53:                                               ; preds = %32
  %54 = load i32, ptr %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %12, align 4
  br label %20, !llvm.loop !25

56:                                               ; preds = %20
  %57 = load i32, ptr %12, align 4
  store i32 %57, ptr %5, align 4
  br label %58

58:                                               ; preds = %56, %30
  %59 = load i32, ptr %5, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsnorm(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.timespec, ptr %4, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = icmp sge i64 %6, 1000000000
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.timespec, ptr %9, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = sub nsw i64 %11, 1000000000
  store i64 %12, ptr %10, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.timespec, ptr %13, i32 0, i32 0
  %15 = load i64, ptr %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, ptr %14, align 8
  br label %3, !llvm.loop !26

17:                                               ; preds = %3
  ret void
}

declare i32 @clock_nanosleep(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calcdiff_ns(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  store i64 %0, ptr %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %6, i32 0, i32 0
  store i64 %2, ptr %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, ptr %6, i32 0, i32 1
  store i64 %3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = sub nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 1000000000, %19
  store i64 %20, ptr %7, align 8
  %21 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, ptr %7, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, ptr %7, align 8
  %31 = load i64, ptr %7, align 8
  ret i64 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_batch_pkts(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %13 = load i32, ptr %6, align 4
  %14 = zext i32 %13 to i64
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.xsk_socket_info, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %8, align 8
  store i32 0, ptr %10, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.xsk_socket_info, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %6, align 4
  %21 = call i32 @xsk_ring_prod__reserve(ptr noundef %19, i32 noundef %20, ptr noundef %10)
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %9, align 4
  %23 = load i32, ptr %6, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  store i32 0, ptr %11, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, ptr %11, align 4
  %28 = load i32, ptr %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds %struct.xsk_umem_info, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.xdp_desc, ptr %33, i64 %35
  %37 = getelementptr inbounds %struct.xdp_desc, ptr %36, i32 0, i32 0
  %38 = load i64, ptr %37, align 8
  call void @mem_free_umem_frame(ptr noundef %32, i64 noundef %38)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, ptr %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %11, align 4
  br label %26, !llvm.loop !27

42:                                               ; preds = %26
  store i32 0, ptr %4, align 4
  br label %74

43:                                               ; preds = %3
  store i32 0, ptr %11, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, ptr %11, align 4
  %46 = load i32, ptr %6, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.xsk_socket_info, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %10, align 4
  %52 = load i32, ptr %11, align 4
  %53 = add i32 %51, %52
  %54 = call ptr @xsk_ring_prod__tx_desc(ptr noundef %50, i32 noundef %53)
  store ptr %54, ptr %12, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = load ptr, ptr %7, align 8
  %57 = load i32, ptr %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.xdp_desc, ptr %56, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %55, ptr align 8 %59, i64 16, i1 false)
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds %struct.xsk_socket_info, ptr %60, i32 0, i32 6
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %48
  %65 = load i32, ptr %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %11, align 4
  br label %44, !llvm.loop !28

67:                                               ; preds = %44
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds %struct.xsk_socket_info, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %6, align 4
  call void @xsk_ring_prod__submit(ptr noundef %69, i32 noundef %70)
  %71 = load ptr, ptr %5, align 8
  %72 = call i32 @complete_tx(ptr noundef %71)
  %73 = load i32, ptr %6, align 4
  store i32 %73, ptr %4, align 4
  br label %74

74:                                               ; preds = %67, %42
  %75 = load i32, ptr %4, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_timespec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.timespec, ptr %5, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.timespec, ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.109, i64 noundef %7, i64 noundef %10, ptr noundef %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @timespec2ns(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  %6 = mul i64 %5, 1000000000
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.timespec, ptr %7, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %6, %9
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns2timespec(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = udiv i64 %5, 1000000000
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.timespec, ptr %7, i32 0, i32 0
  store i64 %6, ptr %8, align 8
  %9 = load i64, ptr %3, align 8
  %10 = urem i64 %9, 1000000000
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.timespec, ptr %11, i32 0, i32 1
  store i64 %10, ptr %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_avail_packets(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, ptr %3, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.xsk_container, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.xsk_container, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [64 x ptr], ptr %13, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  call void @handle_receive_packets(ptr noundef %18)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %3, align 4
  br label %5, !llvm.loop !29

22:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_receive_packets(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.__SOCKADDR_ARG, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %5, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.xsk_socket_info, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @xsk_socket__fd(ptr noundef %11)
  store ptr null, ptr %6, align 8
  %13 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %6, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = call i64 @recvfrom(i32 noundef %12, ptr noundef null, i64 noundef 0, i32 noundef 64, ptr %14, ptr noundef null)
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.xsk_socket_info, ptr %16, i32 0, i32 0
  %18 = call i32 @xsk_ring_cons__peek(ptr noundef %17, i32 noundef 64, ptr noundef %5)
  store i32 %18, ptr %3, align 4
  %19 = load i32, ptr %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %89

22:                                               ; preds = %1
  store i32 0, ptr %4, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.xsk_socket_info, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %5, align 4
  %31 = call ptr @xsk_ring_cons__rx_desc(ptr noundef %29, i32 noundef %30)
  %32 = getelementptr inbounds %struct.xdp_desc, ptr %31, i32 0, i32 0
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %7, align 8
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.xsk_socket_info, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %5, align 4
  %38 = call ptr @xsk_ring_cons__rx_desc(ptr noundef %35, i32 noundef %36)
  %39 = getelementptr inbounds %struct.xdp_desc, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  store i32 %40, ptr %8, align 4
  %41 = load i64, ptr %7, align 8
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.xsk_socket_info, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  call void @pr_addr_info(ptr noundef @__func__.handle_receive_packets, i64 noundef %41, ptr noundef %44)
  %45 = load ptr, ptr %2, align 8
  %46 = load i64, ptr %7, align 8
  %47 = load i32, ptr %8, align 4
  %48 = call zeroext i1 @process_packet(ptr noundef %45, i64 noundef %46, i32 noundef %47)
  br i1 %48, label %55, label %49

49:                                               ; preds = %27
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.xsk_socket_info, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.xsk_umem_info, ptr %52, i32 0, i32 4
  %54 = load i64, ptr %7, align 8
  call void @mem_free_umem_frame(ptr noundef %53, i64 noundef %54)
  br label %55

55:                                               ; preds = %49, %27
  %56 = load i32, ptr %8, align 4
  %57 = zext i32 %56 to i64
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.xsk_socket_info, ptr %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.stats_record, ptr %59, i32 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %61, %57
  store i64 %62, ptr %60, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i32, ptr %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %4, align 4
  br label %23, !llvm.loop !30

66:                                               ; preds = %23
  %67 = load i32, ptr %3, align 4
  %68 = zext i32 %67 to i64
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds %struct.xsk_socket_info, ptr %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.stats_record, ptr %70, i32 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = add i64 %72, %68
  store i64 %73, ptr %71, align 8
  %74 = load ptr, ptr %2, align 8
  call void @restock_receive_fill_queue(ptr noundef %74)
  %75 = load ptr, ptr %2, align 8
  %76 = getelementptr inbounds %struct.xsk_socket_info, ptr %75, i32 0, i32 0
  %77 = load i32, ptr %3, align 4
  call void @xsk_ring_cons__release(ptr noundef %76, i32 noundef %77)
  %78 = load ptr, ptr %2, align 8
  %79 = call i32 @complete_tx(ptr noundef %78)
  %80 = load i32, ptr @verbose, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %66
  %83 = load i32, ptr %3, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, ptr %3, align 4
  %87 = load i32, ptr %4, align 4
  %88 = call i32 (ptr, ...) @printf(ptr noundef @.str.110, ptr noundef @__func__.handle_receive_packets, i32 noundef %86, i32 noundef %87)
  br label %89

89:                                               ; preds = %21, %85, %82, %66
  ret void
}

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_ring_cons__rx_desc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.xsk_ring_cons, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.xsk_ring_cons, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %10, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.xdp_desc, ptr %9, i64 %15
  ret ptr %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @process_packet(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca %struct.in6_addr, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.xsk_socket_info, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.xsk_umem_info, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = load i64, ptr %6, align 8
  %22 = call ptr @xsk_umem__get_data(ptr noundef %20, i64 noundef %21)
  store ptr %22, ptr %8, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %5, align 8
  call void @print_meta_info_via_btf(ptr noundef %23, ptr noundef %24)
  %25 = load i32, ptr @debug_pkt, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load ptr, ptr %8, align 8
  %29 = load i32, ptr %7, align 4
  call void @print_pkt_info(ptr noundef %28, i32 noundef %29)
  br label %30

30:                                               ; preds = %27, %3
  store i32 0, ptr %10, align 4
  %31 = load ptr, ptr %8, align 8
  store ptr %31, ptr %13, align 8
  %32 = load ptr, ptr %13, align 8
  %33 = getelementptr inbounds %struct.ethhdr, ptr %32, i64 1
  store ptr %33, ptr %14, align 8
  %34 = load ptr, ptr %14, align 8
  %35 = getelementptr inbounds %struct.ipv6hdr, ptr %34, i64 1
  store ptr %35, ptr %15, align 8
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr inbounds %struct.ethhdr, ptr %36, i32 0, i32 2
  %38 = load i16, ptr %37, align 1
  %39 = call zeroext i16 @ntohs(i16 noundef zeroext %38) #10
  %40 = zext i16 %39 to i32
  %41 = icmp ne i32 %40, 34525
  br i1 %41, label %58, label %42

42:                                               ; preds = %30
  %43 = load i32, ptr %7, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %44, 62
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %14, align 8
  %48 = getelementptr inbounds %struct.ipv6hdr, ptr %47, i32 0, i32 3
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 58
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %15, align 8
  %54 = getelementptr inbounds %struct.icmp6hdr, ptr %53, i32 0, i32 0
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 128
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46, %42, %30
  store i1 false, ptr %4, align 1
  br label %129

59:                                               ; preds = %52
  %60 = getelementptr inbounds [6 x i8], ptr %11, i64 0, i64 0
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds %struct.ethhdr, ptr %61, i32 0, i32 0
  %63 = getelementptr inbounds [6 x i8], ptr %62, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %63, i64 6, i1 false)
  %64 = load ptr, ptr %13, align 8
  %65 = getelementptr inbounds %struct.ethhdr, ptr %64, i32 0, i32 0
  %66 = getelementptr inbounds [6 x i8], ptr %65, i64 0, i64 0
  %67 = load ptr, ptr %13, align 8
  %68 = getelementptr inbounds %struct.ethhdr, ptr %67, i32 0, i32 1
  %69 = getelementptr inbounds [6 x i8], ptr %68, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %69, i64 6, i1 false)
  %70 = load ptr, ptr %13, align 8
  %71 = getelementptr inbounds %struct.ethhdr, ptr %70, i32 0, i32 1
  %72 = getelementptr inbounds [6 x i8], ptr %71, i64 0, i64 0
  %73 = getelementptr inbounds [6 x i8], ptr %11, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %73, i64 6, i1 false)
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds %struct.ipv6hdr, ptr %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.anon.3, ptr %75, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %76, i64 16, i1 false)
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds %struct.ipv6hdr, ptr %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.anon.3, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds %struct.ipv6hdr, ptr %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.anon.3, ptr %81, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %79, ptr align 4 %82, i64 16, i1 false)
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds %struct.ipv6hdr, ptr %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.anon.3, ptr %84, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %85, ptr align 4 %12, i64 16, i1 false)
  %86 = load ptr, ptr %15, align 8
  %87 = getelementptr inbounds %struct.icmp6hdr, ptr %86, i32 0, i32 0
  store i8 -127, ptr %87, align 4
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds %struct.icmp6hdr, ptr %88, i32 0, i32 2
  %90 = call zeroext i16 @htons(i16 noundef zeroext -32768) #10
  %91 = call zeroext i16 @htons(i16 noundef zeroext -32512) #10
  call void @csum_replace2(ptr noundef %89, i16 noundef zeroext %90, i16 noundef zeroext %91)
  %92 = load ptr, ptr %5, align 8
  %93 = getelementptr inbounds %struct.xsk_socket_info, ptr %92, i32 0, i32 1
  %94 = call i32 @xsk_ring_prod__reserve(ptr noundef %93, i32 noundef 1, ptr noundef %10)
  store i32 %94, ptr %9, align 4
  %95 = load i32, ptr %9, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %59
  store i1 false, ptr %4, align 1
  br label %129

98:                                               ; preds = %59
  %99 = load i64, ptr %6, align 8
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds %struct.xsk_socket_info, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %10, align 4
  %103 = call ptr @xsk_ring_prod__tx_desc(ptr noundef %101, i32 noundef %102)
  %104 = getelementptr inbounds %struct.xdp_desc, ptr %103, i32 0, i32 0
  store i64 %99, ptr %104, align 8
  %105 = load i32, ptr %7, align 4
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr inbounds %struct.xsk_socket_info, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %10, align 4
  %109 = call ptr @xsk_ring_prod__tx_desc(ptr noundef %107, i32 noundef %108)
  %110 = getelementptr inbounds %struct.xdp_desc, ptr %109, i32 0, i32 1
  store i32 %105, ptr %110, align 8
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds %struct.xsk_socket_info, ptr %111, i32 0, i32 1
  call void @xsk_ring_prod__submit(ptr noundef %112, i32 noundef 1)
  %113 = load ptr, ptr %5, align 8
  %114 = getelementptr inbounds %struct.xsk_socket_info, ptr %113, i32 0, i32 6
  %115 = load i32, ptr %114, align 8
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8
  %117 = load i32, ptr %7, align 4
  %118 = zext i32 %117 to i64
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr inbounds %struct.xsk_socket_info, ptr %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.stats_record, ptr %120, i32 0, i32 4
  %122 = load i64, ptr %121, align 8
  %123 = add i64 %122, %118
  store i64 %123, ptr %121, align 8
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds %struct.xsk_socket_info, ptr %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.stats_record, ptr %125, i32 0, i32 3
  %127 = load i64, ptr %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, ptr %126, align 8
  store i1 true, ptr %4, align 1
  br label %129

129:                                              ; preds = %98, %97, %58
  %130 = load i1, ptr %4, align 1
  ret i1 %130
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_meta_info_via_btf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = call i32 @xsk_umem__btf_id(ptr noundef %7)
  store i32 %8, ptr %5, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.xsk_socket_info, ptr %9, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %6, align 4
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, ptr @debug_meta, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.111)
  br label %19

19:                                               ; preds = %17, %14
  br label %36

20:                                               ; preds = %2
  %21 = load i32, ptr %5, align 4
  %22 = load i32, ptr @xdp_hints_rx_time, align 8
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 8
  %26 = load i32, ptr %6, align 4
  %27 = call i32 @print_meta_info_time(ptr noundef %25, ptr noundef @xdp_hints_rx_time, i32 noundef %26)
  br label %36

28:                                               ; preds = %20
  %29 = load i32, ptr %5, align 4
  %30 = load i32, ptr @xdp_hints_mark, align 8
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 8
  %34 = load i32, ptr %6, align 4
  call void @print_meta_info_mark(ptr noundef %33, ptr noundef @xdp_hints_mark, i32 noundef %34)
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %19, %35, %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pkt_info(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %12 = load ptr, ptr %3, align 8
  store ptr %12, ptr %5, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.ethhdr, ptr %13, i32 0, i32 2
  %15 = load i16, ptr %14, align 1
  %16 = call zeroext i16 @ntohs(i16 noundef zeroext %15) #10
  store i16 %16, ptr %6, align 2
  store ptr @.str.117, ptr %7, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 128, i1 false)
  %17 = load i16, ptr %6, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %18, 2048
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.ethhdr, ptr %21, i64 1
  store ptr %22, ptr %10, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = getelementptr inbounds %struct.iphdr, ptr %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0
  %27 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %25, ptr noundef %26, i32 noundef 128) #8
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds %struct.iphdr, ptr %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 1
  %31 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0
  %32 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %30, ptr noundef %31, i32 noundef 128) #8
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %4, align 4
  %35 = load i16, ptr %6, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0
  %38 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0
  %39 = call i32 (ptr, ...) @printf(ptr noundef %33, i32 noundef %34, i32 noundef %36, ptr noundef @.str.118, ptr noundef %37, ptr noundef %38)
  br label %82

40:                                               ; preds = %2
  %41 = load i16, ptr %6, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %42, 2054
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 8
  %46 = load i32, ptr %4, align 4
  %47 = load i16, ptr %6, align 2
  %48 = zext i16 %47 to i32
  %49 = call i32 (ptr, ...) @printf(ptr noundef %45, i32 noundef %46, i32 noundef %48, ptr noundef @.str.119, ptr noundef @.str.120, ptr noundef @.str.120)
  br label %81

50:                                               ; preds = %40
  %51 = load i16, ptr %6, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %52, 34525
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.ethhdr, ptr %55, i64 1
  store ptr %56, ptr %11, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, ptr %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.anon.3, ptr %58, i32 0, i32 0
  %60 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0
  %61 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %59, ptr noundef %60, i32 noundef 128) #8
  %62 = load ptr, ptr %11, align 8
  %63 = getelementptr inbounds %struct.ipv6hdr, ptr %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.anon.3, ptr %63, i32 0, i32 1
  %65 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0
  %66 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %64, ptr noundef %65, i32 noundef 128) #8
  %67 = load ptr, ptr %7, align 8
  %68 = load i32, ptr %4, align 4
  %69 = load i16, ptr %6, align 2
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0
  %72 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0
  %73 = call i32 (ptr, ...) @printf(ptr noundef %67, i32 noundef %68, i32 noundef %70, ptr noundef @.str.121, ptr noundef %71, ptr noundef %72)
  br label %80

74:                                               ; preds = %50
  %75 = load ptr, ptr %7, align 8
  %76 = load i32, ptr %4, align 4
  %77 = load i16, ptr %6, align 2
  %78 = zext i16 %77 to i32
  %79 = call i32 (ptr, ...) @printf(ptr noundef %75, i32 noundef %76, i32 noundef %78, ptr noundef @.str.122, ptr noundef @.str.120, ptr noundef @.str.120)
  br label %80

80:                                               ; preds = %74, %54
  br label %81

81:                                               ; preds = %80, %44
  br label %82

82:                                               ; preds = %81, %20
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @ntohs(i16 noundef zeroext) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csum_replace2(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  store i16 %1, ptr %5, align 2
  store i16 %2, ptr %6, align 2
  %7 = load ptr, ptr %4, align 8
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = xor i32 %9, -1
  %11 = trunc i32 %10 to i16
  %12 = load i16, ptr %5, align 2
  %13 = call zeroext i16 @csum16_sub(i16 noundef zeroext %11, i16 noundef zeroext %12)
  %14 = load i16, ptr %6, align 2
  %15 = call zeroext i16 @csum16_add(i16 noundef zeroext %13, i16 noundef zeroext %14)
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = trunc i32 %17 to i16
  %19 = load ptr, ptr %4, align 8
  store i16 %18, ptr %19, align 2
  ret void
}

declare i32 @xsk_umem__btf_id(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_meta_info_time(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 65535, ptr %9, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = call i32 @xsk_btf__read(ptr noundef %11, i64 noundef 8, ptr noundef %18, ptr noundef %21, ptr noundef %22)
  store i32 %23, ptr %14, align 4
  %24 = load i32, ptr %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load ptr, ptr @stderr, align 8
  %28 = load i32, ptr %14, align 4
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.112, i32 noundef %28)
  %30 = load i32, ptr %14, align 4
  store i32 %30, ptr %4, align 4
  br label %108

31:                                               ; preds = %3
  %32 = load ptr, ptr %11, align 8
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %12, align 8
  %34 = call i64 @gettime()
  store i64 %34, ptr %8, align 8
  %35 = load i64, ptr %8, align 8
  %36 = load i64, ptr %12, align 8
  %37 = sub i64 %35, %36
  store i64 %37, ptr %13, align 8
  %38 = load i8, ptr @print_meta_info_time.first, align 1
  %39 = trunc i8 %38 to i1
  br i1 %39, label %71, label %40

40:                                               ; preds = %31
  %41 = load i32, ptr @print_meta_info_time.min, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %13, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, ptr @print_meta_info_time.min, align 4
  %47 = zext i32 %46 to i64
  br label %50

48:                                               ; preds = %40
  %49 = load i64, ptr %13, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i64 [ %47, %45 ], [ %49, %48 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr @print_meta_info_time.min, align 4
  %53 = load i32, ptr @print_meta_info_time.max, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, ptr %13, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, ptr @print_meta_info_time.max, align 4
  %59 = zext i32 %58 to i64
  br label %62

60:                                               ; preds = %50
  %61 = load i64, ptr %13, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i64 [ %59, %57 ], [ %61, %60 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, ptr @print_meta_info_time.max, align 4
  %65 = load i64, ptr @print_meta_info_time.cnt, align 8
  %66 = add i64 %65, 1
  store i64 %66, ptr @print_meta_info_time.cnt, align 8
  %67 = load i64, ptr %13, align 8
  %68 = uitofp i64 %67 to double
  %69 = load double, ptr @print_meta_info_time.tot, align 8
  %70 = fadd double %69, %68
  store double %70, ptr @print_meta_info_time.tot, align 8
  br label %71

71:                                               ; preds = %62, %31
  store i8 0, ptr @print_meta_info_time.first, align 1
  %72 = call i32 @sched_getcpu() #8
  store i32 %72, ptr %10, align 4
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %5, align 8
  %79 = call i32 @xsk_btf__read(ptr noundef %15, i64 noundef 4, ptr noundef %74, ptr noundef %77, ptr noundef %78)
  store i32 %79, ptr %16, align 4
  %80 = load i32, ptr %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = load ptr, ptr %15, align 8
  %84 = load i32, ptr %83, align 4
  store i32 %84, ptr %9, align 4
  br label %85

85:                                               ; preds = %82, %71
  %86 = load i32, ptr @debug_meta, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i32, ptr %7, align 4
  %90 = load i32, ptr %9, align 4
  %91 = load i32, ptr %10, align 4
  %92 = load i32, ptr %9, align 4
  %93 = load i32, ptr %10, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, ptr @.str.114, ptr @.str.115
  %97 = load i64, ptr %12, align 8
  %98 = load i64, ptr %8, align 8
  %99 = load i64, ptr %13, align 8
  %100 = load double, ptr @print_meta_info_time.tot, align 8
  %101 = load i64, ptr @print_meta_info_time.cnt, align 8
  %102 = uitofp i64 %101 to double
  %103 = fdiv double %100, %102
  %104 = load i32, ptr @print_meta_info_time.min, align 4
  %105 = load i32, ptr @print_meta_info_time.max, align 4
  %106 = call i32 (ptr, ...) @printf(ptr noundef @.str.113, i32 noundef %89, i32 noundef %90, i32 noundef %91, ptr noundef %96, i64 noundef %97, i64 noundef %98, i64 noundef %99, double noundef %103, i32 noundef %104, i32 noundef %105)
  br label %107

107:                                              ; preds = %88, %85
  store i32 0, ptr %4, align 4
  br label %108

108:                                              ; preds = %107, %26
  %109 = load i32, ptr %4, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_meta_info_mark(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.xdp_hints_mark, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %7, align 8
  store i32 0, ptr %8, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.xdp_hints_mark, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %7, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = call i32 @xsk_btf__read(ptr noundef %9, i64 noundef 4, ptr noundef %15, ptr noundef %16, ptr noundef %17)
  store i32 %18, ptr %10, align 4
  %19 = load i32, ptr %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load ptr, ptr %9, align 8
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %8, align 4
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, ptr @debug_meta, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %8, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.116, i32 noundef %28, i32 noundef %29)
  br label %31

31:                                               ; preds = %27, %24
  ret void
}

declare i32 @xsk_btf__read(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @sched_getcpu() #4

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @csum16_add(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i16 %0, ptr %3, align 2
  store i16 %1, ptr %4, align 2
  %6 = load i16, ptr %3, align 2
  store i16 %6, ptr %5, align 2
  %7 = load i16, ptr %4, align 2
  %8 = zext i16 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, %8
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %5, align 2
  %13 = load i16, ptr %5, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %5, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, ptr %4, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = add nsw i32 %14, %20
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @csum16_sub(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, ptr %3, align 2
  store i16 %1, ptr %4, align 2
  %5 = load i16, ptr %3, align 2
  %6 = load i16, ptr %4, align 2
  %7 = zext i16 %6 to i32
  %8 = xor i32 %7, -1
  %9 = trunc i32 %8 to i16
  %10 = call zeroext i16 @csum16_add(i16 noundef zeroext %5, i16 noundef zeroext %9)
  ret i16 %10
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) }

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
!8 = !{i64 2148664702}
!9 = !{i64 2148665054}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = !{i64 2148665277}
!24 = !{i64 2148664900}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
