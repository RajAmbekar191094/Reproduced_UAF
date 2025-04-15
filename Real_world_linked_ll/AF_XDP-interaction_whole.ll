; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "bpf"

%struct.anon.3 = type { ptr, ptr, ptr, ptr }
%struct.xdp_hints_rx_time.0 = type { i32, ptr, %struct.xdp_hints_mark, %struct.xdp_hints_mark }
%struct.xdp_hints_mark = type { i32, i32 }
%struct.xdp_hints_mark.1 = type { i32, ptr, %struct.xdp_hints_mark }
%struct.timespec = type { i64, i64 }
%struct.ether_addr = type { [6 x i8] }
%struct.option_wrapper = type { %struct.option, ptr, ptr, i8 }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }
%struct.xdp_hints_rx_time = type { i64, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.2 }
%union.anon.2 = type { [1 x i32] }
%struct.xsk_umem_info = type { %struct.xsk_ring_prod, %struct.xsk_ring_prod, ptr, ptr, %struct.mem_frame_allocator }
%struct.xsk_ring_prod = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.mem_frame_allocator = type { i32, i32, ptr }
%struct.xsk_socket_info = type { %struct.xsk_ring_prod, %struct.xsk_ring_prod, ptr, ptr, %struct.xsk_ring_prod, %struct.xsk_ring_prod, i32, i32, %struct.stats_record, %struct.stats_record }
%struct.stats_record = type { i64, i64, i64, i64, i64 }
%struct.config = type { i32, i32, ptr, [16 x i8], i32, ptr, [16 x i8], i8, i8, [512 x i8], [512 x i8], [32 x i8], [18 x i8], [18 x i8], i16, i32, i8, i32, i32, i8, %struct.ether_addr, %struct.ether_addr, i64, i32, i32, i32 }
%struct.xsk_container = type { [64 x ptr], i32 }
%struct.sched_param = type { i32 }
%struct.xsk_umem_config = type { i32, i32, i32, i32, i32 }
%struct.xsk_socket_config = type { i32, i32, i32, i32, i16 }
%struct.wakeup_stat = type { i64, i64, i64, i64, double, i64 }
%union.__SOCKADDR_ARG = type { ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %union.anon.3 }
%union.anon.3 = type { %struct.xdp_hints_mark }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.hashmap = type { ptr, ptr, ptr, ptr, i64, i64, i64 }
%struct.hashmap_entry = type { ptr, ptr, ptr }
%struct.bpf_prog_load_attr = type { ptr, i32, i32, i32, i32, i32 }
%struct.bpf_object_open_attr = type { ptr, i32 }
%struct.bpf_map_info = type { i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i32, i32, i32, i64 }

@llvm.compiler.used = appending global [4 x ptr] [ptr @_license, ptr @xdp_sock_prog, ptr @xdp_stats_map, ptr @xsks_map], section "llvm.metadata"
@xdp_stats_map = dso_local global %struct.anon.3 zeroinitializer, section ".maps", align 8, !dbg !0
@xsks_map = dso_local global %struct.anon.3 zeroinitializer, section ".maps", align 8, !dbg !66
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !61
@"llvm.btf_type_id.0$6" = external global i64, !llvm.preserve.access.index !135 #0
@"llvm.btf_type_id.1$6" = external global i64, !llvm.preserve.access.index !140 #0
@xdp_hints_rx_time = dso_local global %struct.xdp_hints_rx_time.0 zeroinitializer, align 8
@xdp_hints_mark = dso_local global %struct.xdp_hints_mark.1 zeroinitializer, align 8
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
@__const.main.rlim = private unnamed_addr constant %struct.timespec { i64 -1, i64 -1 }, align 8
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
@stderr = external global ptr, align 8
@.str.123 = private unnamed_addr constant [50 x i8] c"ERR: ifindex(%d) link set xdp fd failed (%d): %s\0A\00", align 1
@.str.1.124 = private unnamed_addr constant [64 x i8] c"Hint: XDP already loaded on device use --force to swap/replace\0A\00", align 1
@.str.2.125 = private unnamed_addr constant [62 x i8] c"Hint: Native-XDP not supported use --skb-mode or --auto-mode\0A\00", align 1
@.str.3.128 = private unnamed_addr constant [42 x i8] c"ERR: get link xdp id failed (err=%d): %s\0A\00", align 1
@verbose = external global i32, align 4
@.str.4.129 = private unnamed_addr constant [43 x i8] c"INFO: %s() no curr XDP prog on ifindex:%d\0A\00", align 1
@__func__.xdp_link_detach = private unnamed_addr constant [16 x i8] c"xdp_link_detach\00", align 1
@.str.5.130 = private unnamed_addr constant [59 x i8] c"ERR: %s() expected prog ID(%d) no match(%d), not removing\0A\00", align 1
@.str.6.131 = private unnamed_addr constant [44 x i8] c"ERR: %s() link set xdp failed (err=%d): %s\0A\00", align 1
@.str.7.132 = private unnamed_addr constant [49 x i8] c"INFO: %s() removed XDP prog ID:%d on ifindex:%d\0A\00", align 1
@.str.8.133 = private unnamed_addr constant [40 x i8] c"ERR: loading BPF-OBJ file(%s) (%d): %s\0A\00", align 1
@.str.9.134 = private unnamed_addr constant [31 x i8] c"ERR: failed to open object %s\0A\00", align 1
@.str.10.135 = private unnamed_addr constant [53 x i8] c"ERR: failed to reuse maps for object %s, pin_dir=%s\0A\00", align 1
@.str.11.141 = private unnamed_addr constant [23 x i8] c"ERR: loading file: %s\0A\00", align 1
@.str.12.142 = private unnamed_addr constant [50 x i8] c"ERR: couldn't find a program in ELF section '%s'\0A\00", align 1
@.str.13.143 = private unnamed_addr constant [29 x i8] c"ERR: bpf_program__fd failed\0A\00", align 1
@xdp_action_names = internal global [6 x ptr] [ptr @.str.24.144, ptr @.str.25.145, ptr @.str.26.146, ptr @.str.27.147, ptr @.str.28.148, ptr @.str.29.149], align 16
@.str.14.150 = private unnamed_addr constant [55 x i8] c"ERR: %s() Map key size(%d) mismatch expected size(%d)\0A\00", align 1
@__func__.check_map_fd_info = private unnamed_addr constant [18 x i8] c"check_map_fd_info\00", align 1
@.str.15.151 = private unnamed_addr constant [57 x i8] c"ERR: %s() Map value size(%d) mismatch expected size(%d)\0A\00", align 1
@.str.16.152 = private unnamed_addr constant [58 x i8] c"ERR: %s() Map max_entries(%d) mismatch expected size(%d)\0A\00", align 1
@.str.17.153 = private unnamed_addr constant [51 x i8] c"ERR: %s() Map type(%d) mismatch expected type(%d)\0A\00", align 1
@.str.18.136 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.19.154 = private unnamed_addr constant [37 x i8] c"ERR: constructing full mapname path\0A\00", align 1
@.str.20.155 = private unnamed_addr constant [49 x i8] c"WARN: Failed to open bpf map file:%s err(%d):%s\0A\00", align 1
@.str.21.156 = private unnamed_addr constant [31 x i8] c"ERR: %s() can't get info - %s\0A\00", align 1
@__func__.open_bpf_map_file = private unnamed_addr constant [18 x i8] c"open_bpf_map_file\00", align 1
@.str.22.137 = private unnamed_addr constant [40 x i8] c"ERR: opening BPF-OBJ file(%s) (%d): %s\0A\00", align 1
@.str.23.138 = private unnamed_addr constant [35 x i8] c"ERR: file %s contains no programs\0A\00", align 1
@.str.24.144 = private unnamed_addr constant [12 x i8] c"XDP_ABORTED\00", align 1
@.str.25.145 = private unnamed_addr constant [9 x i8] c"XDP_DROP\00", align 1
@.str.26.146 = private unnamed_addr constant [9 x i8] c"XDP_PASS\00", align 1
@.str.27.147 = private unnamed_addr constant [7 x i8] c"XDP_TX\00", align 1
@.str.28.148 = private unnamed_addr constant [13 x i8] c"XDP_REDIRECT\00", align 1
@.str.29.149 = private unnamed_addr constant [12 x i8] c"XDP_UNKNOWN\00", align 1

; Function Attrs: nounwind
define dso_local i32 @xdp_sock_prog(ptr noundef %0) #1 section "xdp_sock" !dbg !152 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !156, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15, !dbg !163
  %3 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 4, !dbg !164
  %4 = load i32, ptr %3, align 4, !dbg !164, !tbaa !165
  call void @llvm.dbg.value(metadata i32 %4, metadata !157, metadata !DIExpression()), !dbg !162
  store i32 %4, ptr %2, align 4, !dbg !170, !tbaa !171
  call void @llvm.dbg.value(metadata ptr %2, metadata !157, metadata !DIExpression(DW_OP_deref)), !dbg !162
  %5 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @xdp_stats_map, ptr noundef nonnull %2) #15, !dbg !172
  call void @llvm.dbg.value(metadata ptr %5, metadata !158, metadata !DIExpression()), !dbg !162
  %6 = icmp eq ptr %5, null, !dbg !173
  br i1 %6, label %65, label %7, !dbg !175

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4, !dbg !176, !tbaa !171
  %9 = add i32 %8, 1, !dbg !176
  store i32 %9, ptr %5, align 4, !dbg !176, !tbaa !171
  call void @llvm.dbg.value(metadata i32 %8, metadata !161, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !162
  %10 = and i32 %8, 1, !dbg !177
  %11 = icmp eq i32 %10, 0, !dbg !179
  br i1 %11, label %12, label %34, !dbg !180

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !181, metadata !DIExpression()), !dbg !188
  %13 = call i64 inttoptr (i64 54 to ptr)(ptr noundef nonnull %0, i32 noundef -16) #15, !dbg !191
  call void @llvm.dbg.value(metadata i64 %13, metadata !187, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !188
  %14 = and i64 %13, 4294967295, !dbg !192
  %15 = icmp eq i64 %14, 0, !dbg !192
  br i1 %15, label %16, label %65, !dbg !194

16:                                               ; preds = %12
  %17 = load i32, ptr %0, align 4, !dbg !195, !tbaa !196
  %18 = zext i32 %17 to i64, !dbg !197
  %19 = inttoptr i64 %18 to ptr, !dbg !198
  call void @llvm.dbg.value(metadata ptr %19, metadata !186, metadata !DIExpression()), !dbg !188
  %20 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 2, !dbg !199
  %21 = load i32, ptr %20, align 4, !dbg !199, !tbaa !200
  %22 = zext i32 %21 to i64, !dbg !201
  %23 = inttoptr i64 %22 to ptr, !dbg !202
  call void @llvm.dbg.value(metadata ptr %23, metadata !184, metadata !DIExpression()), !dbg !188
  %24 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %23, i64 1, !dbg !203
  %25 = icmp ugt ptr %24, %19, !dbg !205
  br i1 %25, label %65, label %26, !dbg !206

26:                                               ; preds = %16
  %27 = call i64 inttoptr (i64 5 to ptr)() #15, !dbg !207
  store i64 %27, ptr %23, align 4, !dbg !208, !tbaa !209
  %28 = call i32 inttoptr (i64 8 to ptr)() #15, !dbg !212
  %29 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %23, i64 0, i32 1, !dbg !213
  store i32 %28, ptr %29, align 4, !dbg !214, !tbaa !215
  %30 = load i64, ptr @"llvm.btf_type_id.0$6", align 8
  %31 = call i64 @llvm.bpf.passthrough.i64.i64(i32 0, i64 %30)
  %32 = trunc i64 %31 to i32, !dbg !216
  %33 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %23, i64 0, i32 2, !dbg !217
  store i32 %32, ptr %33, align 4, !dbg !218, !tbaa !219
  call void @llvm.dbg.value(metadata i32 0, metadata !159, metadata !DIExpression()), !dbg !162
  br label %53, !dbg !220

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !221, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 42, metadata !226, metadata !DIExpression()), !dbg !231
  %35 = call i64 inttoptr (i64 54 to ptr)(ptr noundef nonnull %0, i32 noundef -8) #15, !dbg !234
  call void @llvm.dbg.value(metadata i64 %35, metadata !230, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !231
  %36 = and i64 %35, 4294967295, !dbg !235
  %37 = icmp eq i64 %36, 0, !dbg !235
  br i1 %37, label %38, label %65, !dbg !237

38:                                               ; preds = %34
  %39 = load i32, ptr %0, align 4, !dbg !238, !tbaa !196
  %40 = zext i32 %39 to i64, !dbg !239
  %41 = inttoptr i64 %40 to ptr, !dbg !240
  call void @llvm.dbg.value(metadata ptr %41, metadata !229, metadata !DIExpression()), !dbg !231
  %42 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 2, !dbg !241
  %43 = load i32, ptr %42, align 4, !dbg !241, !tbaa !200
  %44 = zext i32 %43 to i64, !dbg !242
  %45 = inttoptr i64 %44 to ptr, !dbg !243
  call void @llvm.dbg.value(metadata ptr %45, metadata !227, metadata !DIExpression()), !dbg !231
  %46 = getelementptr inbounds %struct.xdp_hints_mark, ptr %45, i64 1, !dbg !244
  %47 = icmp ugt ptr %46, %41, !dbg !246
  br i1 %47, label %65, label %48, !dbg !247

48:                                               ; preds = %38
  store i32 42, ptr %45, align 4, !dbg !248, !tbaa !249
  %49 = load i64, ptr @"llvm.btf_type_id.1$6", align 8
  %50 = call i64 @llvm.bpf.passthrough.i64.i64(i32 1, i64 %49)
  %51 = trunc i64 %50 to i32, !dbg !251
  %52 = getelementptr inbounds %struct.xdp_hints_mark, ptr %45, i64 0, i32 1, !dbg !252
  store i32 %51, ptr %52, align 4, !dbg !253, !tbaa !254
  call void @llvm.dbg.value(metadata i32 0, metadata !159, metadata !DIExpression()), !dbg !162
  br label %53, !dbg !255

53:                                               ; preds = %48, %26
  %54 = call i32 @parse_pkt__is_ARP_or_NDP(ptr noundef nonnull %0), !dbg !256
  call void @llvm.dbg.value(metadata i32 %54, metadata !160, metadata !DIExpression()), !dbg !162
  %55 = icmp slt i32 %54, 0, !dbg !257
  br i1 %55, label %65, label %56, !dbg !259

56:                                               ; preds = %53
  %57 = icmp eq i32 %54, 1, !dbg !260
  br i1 %57, label %65, label %58, !dbg !262

58:                                               ; preds = %56
  call void @llvm.dbg.value(metadata ptr %2, metadata !157, metadata !DIExpression(DW_OP_deref)), !dbg !162
  %59 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @xsks_map, ptr noundef nonnull %2) #15, !dbg !263
  %60 = icmp eq ptr %59, null, !dbg !263
  br i1 %60, label %65, label %61, !dbg !265

61:                                               ; preds = %58
  %62 = load i32, ptr %2, align 4, !dbg !266, !tbaa !171
  call void @llvm.dbg.value(metadata i32 %62, metadata !157, metadata !DIExpression()), !dbg !162
  %63 = call i64 inttoptr (i64 51 to ptr)(ptr noundef nonnull @xsks_map, i32 noundef %62, i64 noundef 0) #15, !dbg !267
  %64 = trunc i64 %63 to i32, !dbg !267
  br label %65, !dbg !268

65:                                               ; preds = %61, %58, %56, %53, %38, %34, %16, %12, %1
  %66 = phi i32 [ 0, %1 ], [ %64, %61 ], [ 0, %53 ], [ 2, %56 ], [ 2, %58 ], [ 0, %12 ], [ 0, %16 ], [ 1, %34 ], [ 1, %38 ], !dbg !162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15, !dbg !269
  ret i32 %66, !dbg !269
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.bpf.passthrough.i64.i64(i32, i64) #4

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none)
define dso_local i32 @parse_pkt__is_ARP_or_NDP(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !dbg !270 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !272, metadata !DIExpression()), !dbg !389
  %2 = load i32, ptr %0, align 4, !dbg !390, !tbaa !196
  %3 = zext i32 %2 to i64, !dbg !391
  %4 = inttoptr i64 %3 to ptr, !dbg !392
  call void @llvm.dbg.value(metadata ptr %4, metadata !273, metadata !DIExpression()), !dbg !389
  %5 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 1, !dbg !393
  %6 = load i32, ptr %5, align 4, !dbg !393, !tbaa !394
  %7 = zext i32 %6 to i64, !dbg !395
  %8 = inttoptr i64 %7 to ptr, !dbg !396
  call void @llvm.dbg.value(metadata ptr %8, metadata !274, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %4, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr undef, metadata !397, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata ptr %8, metadata !404, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata ptr undef, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata ptr undef, metadata !408, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr %8, metadata !418, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr undef, metadata !419, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr null, metadata !420, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr %4, metadata !421, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i32 14, metadata !422, metadata !DIExpression()), !dbg !431
  %9 = getelementptr i8, ptr %4, i64 14, !dbg !433
  %10 = icmp ugt ptr %9, %8, !dbg !435
  br i1 %10, label %138, label %11, !dbg !436

11:                                               ; preds = %1
  call void @llvm.dbg.value(metadata ptr %9, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %9, metadata !423, metadata !DIExpression()), !dbg !431
  %12 = getelementptr inbounds %struct.ethhdr, ptr %4, i64 0, i32 2, !dbg !437
  call void @llvm.dbg.value(metadata i16 poison, metadata !429, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i32 0, metadata !430, metadata !DIExpression()), !dbg !431
  %13 = load i16, ptr %12, align 1, !dbg !431, !tbaa !438
  call void @llvm.dbg.value(metadata i16 %13, metadata !429, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i16 %13, metadata !440, metadata !DIExpression()), !dbg !445
  %14 = icmp eq i16 %13, 129, !dbg !451
  %15 = icmp eq i16 %13, -22392, !dbg !452
  %16 = tail call i1 @llvm.bpf.passthrough.i1.i1(i32 2, i1 %14)
  %17 = or i1 %15, %16, !dbg !452
  %18 = getelementptr i8, ptr %4, i64 18
  %19 = icmp ule ptr %18, %8
  %20 = select i1 %17, i1 %19, i1 false, !dbg !453
  br i1 %20, label %21, label %34, !dbg !453

21:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i16 poison, metadata !429, metadata !DIExpression()), !dbg !431
  %22 = getelementptr i8, ptr %4, i64 16, !dbg !454
  call void @llvm.dbg.value(metadata ptr %18, metadata !423, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i32 1, metadata !430, metadata !DIExpression()), !dbg !431
  %23 = load i16, ptr %22, align 1, !dbg !431, !tbaa !438
  call void @llvm.dbg.value(metadata i16 %23, metadata !429, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i16 %23, metadata !440, metadata !DIExpression()), !dbg !445
  %24 = icmp eq i16 %23, 129, !dbg !451
  %25 = icmp eq i16 %23, -22392, !dbg !452
  %26 = tail call i1 @llvm.bpf.passthrough.i1.i1(i32 2, i1 %24)
  %27 = or i1 %25, %26, !dbg !452
  %28 = getelementptr i8, ptr %4, i64 22
  %29 = icmp ule ptr %28, %8
  %30 = select i1 %27, i1 %29, i1 false, !dbg !453
  br i1 %30, label %31, label %34, !dbg !453

31:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i16 poison, metadata !429, metadata !DIExpression()), !dbg !431
  %32 = getelementptr i8, ptr %4, i64 20, !dbg !454
  call void @llvm.dbg.value(metadata ptr %28, metadata !423, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i32 2, metadata !430, metadata !DIExpression()), !dbg !431
  %33 = load i16, ptr %32, align 1, !dbg !431, !tbaa !438
  call void @llvm.dbg.value(metadata i16 %33, metadata !429, metadata !DIExpression()), !dbg !431
  br label %34

34:                                               ; preds = %31, %21, %11
  %35 = phi ptr [ %9, %11 ], [ %18, %21 ], [ %28, %31 ], !dbg !431
  %36 = phi i16 [ %13, %11 ], [ %23, %21 ], [ %33, %31 ], !dbg !431
  call void @llvm.dbg.value(metadata ptr %35, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i16 %36, metadata !292, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !389
  switch i16 %36, label %137 [
    i16 1544, label %138
    i16 -8826, label %37
  ], !dbg !455

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr undef, metadata !456, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata ptr %8, metadata !462, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata ptr undef, metadata !463, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata ptr %35, metadata !464, metadata !DIExpression()), !dbg !465
  %38 = getelementptr inbounds %struct.ipv6hdr, ptr %35, i64 1, !dbg !467
  %39 = icmp ugt ptr %38, %8, !dbg !469
  br i1 %39, label %138, label %40, !dbg !470

40:                                               ; preds = %37
  %41 = load i8, ptr %35, align 4, !dbg !471
  %42 = and i8 %41, -16, !dbg !473
  %43 = icmp ne i8 %42, 96, !dbg !473
  %44 = getelementptr inbounds %struct.ipv6hdr, ptr %35, i64 1, i32 1, i64 1
  %45 = icmp ugt ptr %44, %8
  %46 = select i1 %43, i1 true, i1 %45, !dbg !474
  call void @llvm.dbg.value(metadata ptr %38, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr undef, metadata !475, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata ptr %8, metadata !480, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i32 0, metadata !482, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata ptr %38, metadata !484, metadata !DIExpression()), !dbg !495
  br i1 %46, label %138, label %47, !dbg !474

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ipv6hdr, ptr %35, i64 0, i32 3, !dbg !496
  %49 = load i8, ptr %48, align 2, !dbg !496, !tbaa !497
  call void @llvm.dbg.value(metadata i8 %49, metadata !481, metadata !DIExpression()), !dbg !492
  switch i8 %49, label %125 [
    i8 0, label %51
    i8 60, label %51
    i8 43, label %51
    i8 -121, label %51
    i8 51, label %50
    i8 44, label %58
  ], !dbg !499

50:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  br label %51, !dbg !500

51:                                               ; preds = %50, %47, %47, %47, %47
  %52 = phi i64 [ 2, %50 ], [ 3, %47 ], [ 3, %47 ], [ 3, %47 ], [ 3, %47 ]
  %53 = getelementptr inbounds %struct.ipv6hdr, ptr %35, i64 1, i32 1, !dbg !502
  %54 = load i8, ptr %53, align 1, !dbg !502, !tbaa !503
  %55 = zext i8 %54 to i64, !dbg !502
  %56 = shl nuw nsw i64 %55, %52, !dbg !502
  %57 = add nuw nsw i64 %56, 8, !dbg !502
  br label %58, !dbg !502

58:                                               ; preds = %51, %47
  %59 = phi i64 [ 8, %47 ], [ %57, %51 ]
  %60 = getelementptr inbounds i8, ptr %38, i64 %59, !dbg !502
  call void @llvm.dbg.value(metadata ptr %60, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 1, metadata !482, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata ptr %60, metadata !484, metadata !DIExpression()), !dbg !495
  %61 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %60, i64 1, !dbg !505
  %62 = icmp ugt ptr %61, %8, !dbg !507
  br i1 %62, label %138, label %63, !dbg !508

63:                                               ; preds = %58
  %64 = load i8, ptr %38, align 1, !dbg !502, !tbaa !509
  call void @llvm.dbg.value(metadata i8 %64, metadata !481, metadata !DIExpression()), !dbg !492
  switch i8 %64, label %125 [
    i8 0, label %65
    i8 60, label %65
    i8 43, label %65
    i8 -121, label %65
    i8 51, label %66
    i8 44, label %73
  ], !dbg !499

65:                                               ; preds = %63, %63, %63, %63
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  br label %66, !dbg !510

66:                                               ; preds = %65, %63
  %67 = phi i64 [ 3, %65 ], [ 2, %63 ]
  %68 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %60, i64 0, i32 1, !dbg !502
  %69 = load i8, ptr %68, align 1, !dbg !502, !tbaa !503
  %70 = zext i8 %69 to i64, !dbg !502
  %71 = shl nuw nsw i64 %70, %67, !dbg !502
  %72 = add nuw nsw i64 %71, 8, !dbg !502
  br label %73, !dbg !502

73:                                               ; preds = %66, %63
  %74 = phi i64 [ 8, %63 ], [ %72, %66 ]
  %75 = getelementptr inbounds i8, ptr %60, i64 %74, !dbg !502
  call void @llvm.dbg.value(metadata ptr %75, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 2, metadata !482, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata ptr %75, metadata !484, metadata !DIExpression()), !dbg !495
  %76 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %75, i64 1, !dbg !505
  %77 = icmp ugt ptr %76, %8, !dbg !507
  br i1 %77, label %138, label %78, !dbg !508

78:                                               ; preds = %73
  %79 = load i8, ptr %60, align 1, !dbg !502, !tbaa !509
  call void @llvm.dbg.value(metadata i8 %79, metadata !481, metadata !DIExpression()), !dbg !492
  switch i8 %79, label %125 [
    i8 0, label %80
    i8 60, label %80
    i8 43, label %80
    i8 -121, label %80
    i8 51, label %81
    i8 44, label %88
  ], !dbg !499

80:                                               ; preds = %78, %78, %78, %78
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  br label %81, !dbg !510

81:                                               ; preds = %80, %78
  %82 = phi i64 [ 3, %80 ], [ 2, %78 ]
  %83 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %75, i64 0, i32 1, !dbg !502
  %84 = load i8, ptr %83, align 1, !dbg !502, !tbaa !503
  %85 = zext i8 %84 to i64, !dbg !502
  %86 = shl nuw nsw i64 %85, %82, !dbg !502
  %87 = add nuw nsw i64 %86, 8, !dbg !502
  br label %88, !dbg !502

88:                                               ; preds = %81, %78
  %89 = phi i64 [ 8, %78 ], [ %87, %81 ]
  %90 = getelementptr inbounds i8, ptr %75, i64 %89, !dbg !502
  call void @llvm.dbg.value(metadata ptr %90, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 3, metadata !482, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata ptr %90, metadata !484, metadata !DIExpression()), !dbg !495
  %91 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %90, i64 1, !dbg !505
  %92 = icmp ugt ptr %91, %8, !dbg !507
  br i1 %92, label %138, label %93, !dbg !508

93:                                               ; preds = %88
  %94 = load i8, ptr %75, align 1, !dbg !502, !tbaa !509
  call void @llvm.dbg.value(metadata i8 %94, metadata !481, metadata !DIExpression()), !dbg !492
  switch i8 %94, label %125 [
    i8 0, label %95
    i8 60, label %95
    i8 43, label %95
    i8 -121, label %95
    i8 51, label %96
    i8 44, label %103
  ], !dbg !499

95:                                               ; preds = %93, %93, %93, %93
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  br label %96, !dbg !510

96:                                               ; preds = %95, %93
  %97 = phi i64 [ 3, %95 ], [ 2, %93 ]
  %98 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %90, i64 0, i32 1, !dbg !502
  %99 = load i8, ptr %98, align 1, !dbg !502, !tbaa !503
  %100 = zext i8 %99 to i64, !dbg !502
  %101 = shl nuw nsw i64 %100, %97, !dbg !502
  %102 = add nuw nsw i64 %101, 8, !dbg !502
  br label %103, !dbg !502

103:                                              ; preds = %96, %93
  %104 = phi i64 [ 8, %93 ], [ %102, %96 ]
  %105 = getelementptr inbounds i8, ptr %90, i64 %104, !dbg !502
  call void @llvm.dbg.value(metadata ptr %105, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 4, metadata !482, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata ptr %105, metadata !484, metadata !DIExpression()), !dbg !495
  %106 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %105, i64 1, !dbg !505
  %107 = icmp ugt ptr %106, %8, !dbg !507
  br i1 %107, label %138, label %108, !dbg !508

108:                                              ; preds = %103
  %109 = load i8, ptr %90, align 1, !dbg !502, !tbaa !509
  call void @llvm.dbg.value(metadata i8 %109, metadata !481, metadata !DIExpression()), !dbg !492
  switch i8 %109, label %125 [
    i8 0, label %110
    i8 60, label %110
    i8 43, label %110
    i8 -121, label %110
    i8 51, label %111
    i8 44, label %118
  ], !dbg !499

110:                                              ; preds = %108, %108, %108, %108
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  br label %111, !dbg !510

111:                                              ; preds = %110, %108
  %112 = phi i64 [ 3, %110 ], [ 2, %108 ]
  %113 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %105, i64 0, i32 1, !dbg !502
  %114 = load i8, ptr %113, align 1, !dbg !502, !tbaa !503
  %115 = zext i8 %114 to i64, !dbg !502
  %116 = shl nuw nsw i64 %115, %112, !dbg !502
  %117 = add nuw nsw i64 %116, 8, !dbg !502
  br label %118, !dbg !502

118:                                              ; preds = %111, %108
  %119 = phi i64 [ 8, %108 ], [ %117, %111 ]
  %120 = getelementptr inbounds i8, ptr %105, i64 %119, !dbg !502
  call void @llvm.dbg.value(metadata ptr %120, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 5, metadata !482, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8 poison, metadata !481, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata ptr %120, metadata !484, metadata !DIExpression()), !dbg !495
  %121 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %120, i64 1, !dbg !505
  %122 = icmp ugt ptr %121, %8, !dbg !507
  br i1 %122, label %138, label %123, !dbg !508

123:                                              ; preds = %118
  %124 = load i8, ptr %105, align 1, !dbg !502, !tbaa !509
  call void @llvm.dbg.value(metadata i8 %124, metadata !481, metadata !DIExpression()), !dbg !492
  switch i8 %124, label %125 [
    i8 0, label %138
    i8 60, label %138
    i8 43, label %138
    i8 -121, label %138
    i8 51, label %138
    i8 44, label %138
  ], !dbg !499

125:                                              ; preds = %123, %108, %93, %78, %63, %47
  %126 = phi ptr [ %38, %47 ], [ %60, %63 ], [ %75, %78 ], [ %90, %93 ], [ %105, %108 ], [ %120, %123 ], !dbg !465
  %127 = phi i8 [ %49, %47 ], [ %64, %63 ], [ %79, %78 ], [ %94, %93 ], [ %109, %108 ], [ %124, %123 ]
  call void @llvm.dbg.value(metadata ptr %126, metadata !275, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8 %127, metadata !340, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !511
  %128 = icmp eq i8 %127, 58, !dbg !512
  br i1 %128, label %129, label %137, !dbg !513

129:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr undef, metadata !514, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata ptr %8, metadata !520, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata ptr undef, metadata !521, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata ptr %126, metadata !522, metadata !DIExpression()), !dbg !523
  %130 = getelementptr inbounds %struct.icmp6hdr, ptr %126, i64 1, !dbg !525
  %131 = icmp ugt ptr %130, %8, !dbg !527
  br i1 %131, label %138, label %132, !dbg !528

132:                                              ; preds = %129
  call void @llvm.dbg.value(metadata ptr %130, metadata !275, metadata !DIExpression()), !dbg !389
  %133 = load i8, ptr %126, align 4, !dbg !529, !tbaa !530
  %134 = zext i8 %133 to i32, !dbg !532
  call void @llvm.dbg.value(metadata i32 %134, metadata !388, metadata !DIExpression()), !dbg !533
  %135 = add nsw i32 %134, -138, !dbg !534
  %136 = icmp ult i32 %135, -5, !dbg !534
  br i1 %136, label %137, label %138

137:                                              ; preds = %132, %125, %34
  br label %138, !dbg !536

138:                                              ; preds = %137, %132, %129, %123, %123, %123, %123, %123, %123, %118, %103, %88, %73, %58, %40, %37, %34, %1
  %139 = phi i32 [ 0, %137 ], [ 1, %34 ], [ -1, %1 ], [ 1, %132 ], [ -1, %37 ], [ -1, %40 ], [ -1, %118 ], [ -1, %103 ], [ -1, %88 ], [ -1, %73 ], [ -1, %58 ], [ -1, %123 ], [ -1, %123 ], [ -1, %123 ], [ -1, %123 ], [ -1, %123 ], [ -1, %123 ], [ -1, %129 ], !dbg !389
  ret i32 %139, !dbg !537
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind memory(none)
declare i1 @llvm.bpf.passthrough.i1.i1(i32, i1) #4

; Function Attrs: nounwind
define dso_local i32 @meta_add_rx_time(ptr noundef %0) local_unnamed_addr #1 !dbg !182 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !181, metadata !DIExpression()), !dbg !538
  %2 = tail call i64 inttoptr (i64 54 to ptr)(ptr noundef %0, i32 noundef -16) #15, !dbg !539
  call void @llvm.dbg.value(metadata i64 %2, metadata !187, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !538
  %3 = and i64 %2, 4294967295, !dbg !540
  %4 = icmp eq i64 %3, 0, !dbg !540
  br i1 %4, label %5, label %23, !dbg !541

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4, !dbg !542, !tbaa !196
  %7 = zext i32 %6 to i64, !dbg !543
  %8 = inttoptr i64 %7 to ptr, !dbg !544
  call void @llvm.dbg.value(metadata ptr %8, metadata !186, metadata !DIExpression()), !dbg !538
  %9 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 2, !dbg !545
  %10 = load i32, ptr %9, align 4, !dbg !545, !tbaa !200
  %11 = zext i32 %10 to i64, !dbg !546
  %12 = inttoptr i64 %11 to ptr, !dbg !547
  call void @llvm.dbg.value(metadata ptr %12, metadata !184, metadata !DIExpression()), !dbg !538
  %13 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %12, i64 1, !dbg !548
  %14 = icmp ugt ptr %13, %8, !dbg !549
  br i1 %14, label %23, label %15, !dbg !550

15:                                               ; preds = %5
  %16 = tail call i64 inttoptr (i64 5 to ptr)() #15, !dbg !551
  store i64 %16, ptr %12, align 4, !dbg !552, !tbaa !209
  %17 = tail call i32 inttoptr (i64 8 to ptr)() #15, !dbg !553
  %18 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %12, i64 0, i32 1, !dbg !554
  store i32 %17, ptr %18, align 4, !dbg !555, !tbaa !215
  %19 = load i64, ptr @"llvm.btf_type_id.0$6", align 8
  %20 = tail call i64 @llvm.bpf.passthrough.i64.i64(i32 0, i64 %19)
  %21 = trunc i64 %20 to i32, !dbg !556
  %22 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %12, i64 0, i32 2, !dbg !557
  store i32 %21, ptr %22, align 4, !dbg !558, !tbaa !219
  br label %23, !dbg !559

23:                                               ; preds = %15, %5, %1
  %24 = phi i32 [ 0, %15 ], [ -1, %1 ], [ -2, %5 ], !dbg !538
  ret i32 %24, !dbg !560
}

; Function Attrs: nounwind
define dso_local i32 @meta_add_mark(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !222 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !221, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i32 %1, metadata !226, metadata !DIExpression()), !dbg !561
  %3 = tail call i64 inttoptr (i64 54 to ptr)(ptr noundef %0, i32 noundef -8) #15, !dbg !562
  call void @llvm.dbg.value(metadata i64 %3, metadata !230, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !561
  %4 = and i64 %3, 4294967295, !dbg !563
  %5 = icmp eq i64 %4, 0, !dbg !563
  br i1 %5, label %6, label %21, !dbg !564

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 4, !dbg !565, !tbaa !196
  %8 = zext i32 %7 to i64, !dbg !566
  %9 = inttoptr i64 %8 to ptr, !dbg !567
  call void @llvm.dbg.value(metadata ptr %9, metadata !229, metadata !DIExpression()), !dbg !561
  %10 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 2, !dbg !568
  %11 = load i32, ptr %10, align 4, !dbg !568, !tbaa !200
  %12 = zext i32 %11 to i64, !dbg !569
  %13 = inttoptr i64 %12 to ptr, !dbg !570
  call void @llvm.dbg.value(metadata ptr %13, metadata !227, metadata !DIExpression()), !dbg !561
  %14 = getelementptr inbounds %struct.xdp_hints_mark, ptr %13, i64 1, !dbg !571
  %15 = icmp ugt ptr %14, %9, !dbg !572
  br i1 %15, label %21, label %16, !dbg !573

16:                                               ; preds = %6
  store i32 %1, ptr %13, align 4, !dbg !574, !tbaa !249
  %17 = load i64, ptr @"llvm.btf_type_id.1$6", align 8
  %18 = tail call i64 @llvm.bpf.passthrough.i64.i64(i32 1, i64 %17)
  %19 = trunc i64 %18 to i32, !dbg !575
  %20 = getelementptr inbounds %struct.xdp_hints_mark, ptr %13, i64 0, i32 1, !dbg !576
  store i32 %19, ptr %20, align 4, !dbg !577, !tbaa !254
  br label %21, !dbg !578

21:                                               ; preds = %16, %6, %2
  %22 = phi i32 [ 0, %16 ], [ -1, %2 ], [ -2, %6 ], !dbg !561
  ret i32 %22, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csum_tcpudp_nofold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #6 {
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
define internal i32 @from64to32(i64 noundef %0) #6 {
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
define dso_local ptr @setup_btf_info(ptr noundef %0, ptr noundef %1) #6 {
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

declare i32 @xsk_btf__init_xdp_hint(ptr noundef, ptr noundef, ptr noundef) #7

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #7

declare zeroext i1 @xsk_btf__has_field(ptr noundef, ptr noundef) #7

declare void @xsk_btf__free_xdp_hint(ptr noundef) #7

declare i32 @printf(ptr noundef, ...) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_btf_info_via_bpf_object(ptr noundef %0) #6 {
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
  %14 = call zeroext i1 @xsk_btf__field_member(ptr noundef @.str.5, ptr noundef %13, ptr noundef getelementptr inbounds (%struct.xdp_hints_rx_time.0, ptr @xdp_hints_rx_time, i32 0, i32 2))
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 -57, ptr %2, align 4
  br label %38

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8
  %18 = call zeroext i1 @xsk_btf__field_member(ptr noundef @.str.6, ptr noundef %17, ptr noundef getelementptr inbounds (%struct.xdp_hints_rx_time.0, ptr @xdp_hints_rx_time, i32 0, i32 3))
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 -57, ptr %2, align 4
  br label %38

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8
  %22 = call i32 @xsk_btf__btf_type_id(ptr noundef %21)
  store i32 %22, ptr @xdp_hints_rx_time, align 8
  %23 = load ptr, ptr %5, align 8
  store ptr %23, ptr getelementptr inbounds (%struct.xdp_hints_rx_time.0, ptr @xdp_hints_rx_time, i32 0, i32 1), align 8
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
  %31 = call zeroext i1 @xsk_btf__field_member(ptr noundef @.str.8, ptr noundef %30, ptr noundef getelementptr inbounds (%struct.xdp_hints_mark.1, ptr @xdp_hints_mark, i32 0, i32 2))
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 -57, ptr %2, align 4
  br label %38

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 8
  %35 = call i32 @xsk_btf__btf_type_id(ptr noundef %34)
  store i32 %35, ptr @xdp_hints_mark, align 8
  %36 = load ptr, ptr %5, align 8
  store ptr %36, ptr getelementptr inbounds (%struct.xdp_hints_mark.1, ptr @xdp_hints_mark, i32 0, i32 1), align 8
  br label %37

37:                                               ; preds = %33, %24
  store i32 0, ptr %2, align 4
  br label %38

38:                                               ; preds = %37, %32, %19, %15
  %39 = load i32, ptr %2, align 4
  ret i32 %39
}

declare ptr @bpf_object__btf(ptr noundef) #7

declare zeroext i1 @xsk_btf__field_member(ptr noundef, ptr noundef, ptr noundef) #7

declare i32 @xsk_btf__btf_type_id(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pr_addr_info(ptr noundef %0, i64 noundef %1, ptr noundef %2) #6 {
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
define internal ptr @xsk_umem__get_data(ptr noundef %0, i64 noundef %1) #6 {
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
define dso_local i32 @print_libbpf_log(i32 noundef %0, ptr noundef %1, ptr noundef %2) #6 {
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

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restock_receive_fill_queue(ptr noundef %0) #6 {
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
  br label %45, !llvm.loop !580

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
define internal i64 @mem_avail_umem_frames(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mem_frame_allocator, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gettime() #6 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %1) #15
  store i32 %3, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load ptr, ptr @stderr, align 8
  %8 = load i32, ptr %2, align 4
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.29, i32 noundef %8)
  call void @exit(i32 noundef 1) #16
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
define internal i32 @xsk_prod_nb_free(ptr noundef %0, i32 noundef %1) #6 {
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !582
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
define internal i32 @xsk_ring_prod__reserve(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6 {
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
define internal i64 @mem_alloc_umem_frame(ptr noundef %0) #6 {
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
define internal ptr @xsk_ring_prod__fill_addr(ptr noundef %0, i32 noundef %1) #6 {
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
define internal void @xsk_ring_prod__submit(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %5

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !583
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

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timespec, align 8
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
  %52 = call ptr @signal(i32 noundef 2, ptr noundef @exit_application) #15
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
  call void @exit(i32 noundef 1) #16
  unreachable

88:                                               ; preds = %79
  %89 = call ptr @load_bpf_and_xdp_attach(ptr noundef %12)
  store ptr %89, ptr %22, align 8
  %90 = load ptr, ptr %22, align 8
  %91 = icmp ne ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @exit(i32 noundef 1) #16
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
  %103 = call ptr @strerror(i32 noundef %102) #15
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef @.str.17, ptr noundef %103)
  call void @exit(i32 noundef 1) #16
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
  %150 = call ptr @__errno_location() #17
  %151 = load i32, ptr %150, align 4
  %152 = call ptr @strerror(i32 noundef %151) #15
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.20, i32 noundef %149, ptr noundef %152)
  store i32 1, ptr %3, align 4
  br label %310

154:                                              ; preds = %142
  %155 = call i32 @setrlimit(i32 noundef 8, ptr noundef %11) #15
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load ptr, ptr @stderr, align 8
  %159 = call ptr @__errno_location() #17
  %160 = load i32, ptr %159, align 4
  %161 = call ptr @strerror(i32 noundef %160) #15
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef @.str.21, ptr noundef %161)
  call void @exit(i32 noundef 1) #16
  unreachable

163:                                              ; preds = %154
  %164 = load i32, ptr %18, align 4
  %165 = mul nsw i32 %164, 4096
  %166 = sext i32 %165 to i64
  store i64 %166, ptr %10, align 8
  %167 = call i32 @getpagesize() #17
  %168 = sext i32 %167 to i64
  %169 = load i64, ptr %10, align 8
  %170 = call i32 @posix_memalign(ptr noundef %9, i64 noundef %168, i64 noundef %169) #15
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %163
  %173 = load ptr, ptr @stderr, align 8
  %174 = call ptr @__errno_location() #17
  %175 = load i32, ptr %174, align 4
  %176 = call ptr @strerror(i32 noundef %175) #15
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef @.str.22, ptr noundef %176)
  call void @exit(i32 noundef 1) #16
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
  %187 = call ptr @__errno_location() #17
  %188 = load i32, ptr %187, align 4
  %189 = call ptr @strerror(i32 noundef %188) #15
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.23, ptr noundef %189)
  call void @exit(i32 noundef 1) #16
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
  %206 = call ptr @__errno_location() #17
  %207 = load i32, ptr %206, align 4
  %208 = call ptr @__errno_location() #17
  %209 = load i32, ptr %208, align 4
  %210 = call ptr @strerror(i32 noundef %209) #15
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.24, i32 noundef %207, ptr noundef %210)
  call void @exit(i32 noundef 1) #16
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
  call void @exit(i32 noundef 1) #16
  unreachable

228:                                              ; preds = %212
  br label %229

229:                                              ; preds = %228
  %230 = load i32, ptr %21, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %21, align 4
  br label %192, !llvm.loop !584

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
  %243 = call i32 @sched_setscheduler(i32 noundef 0, i32 noundef %242, ptr noundef %20) #15
  store i32 %243, ptr %7, align 4
  %244 = load i32, ptr %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %237
  %247 = load ptr, ptr @stderr, align 8
  %248 = call ptr @__errno_location() #17
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr inbounds %struct.config, ptr %12, i32 0, i32 17
  %251 = load i32, ptr %250, align 8
  %252 = call ptr @__errno_location() #17
  %253 = load i32, ptr %252, align 4
  %254 = call ptr @strerror(i32 noundef %253) #15
  %255 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef @.str.26, i32 noundef %249, i32 noundef %251, ptr noundef %254)
  %256 = call ptr @__errno_location() #17
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
  br label %272, !llvm.loop !585

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
  br label %284, !llvm.loop !586

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_application(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %2, align 4
  store i8 1, ptr @global_exit, align 1
  ret void
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #8

declare void @parse_cmdline_args(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare void @usage(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #7

declare ptr @libbpf_set_print(ptr noundef) #7

declare ptr @bpf_object__find_map_by_name(ptr noundef, ptr noundef) #7

declare i32 @bpf_map__fd(ptr noundef) #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #8

declare i32 @ethtool_get_max_channels(ptr noundef) #7

declare i32 @ethtool_get_channels(ptr noundef) #7

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #12

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) #8

; Function Attrs: nounwind willreturn memory(none)
declare i32 @getpagesize() #12

; Function Attrs: nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @configure_xsk_umem(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #6 {
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
  %19 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 128) #18
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
  %38 = call ptr @__errno_location() #17
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
define internal void @gen_base_pkt(ptr noundef %0, ptr noundef %1) #6 {
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
define internal ptr @xsk_configure_socket(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6 {
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
  %16 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 296) #18
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
  %89 = call ptr @__errno_location() #17
  store i32 %88, ptr %89, align 4
  store ptr null, ptr %5, align 8
  br label %90

90:                                               ; preds = %86, %79, %19
  %91 = load ptr, ptr %5, align 8
  ret ptr %91
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_populate_fill_ring(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
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
  br label %19, !llvm.loop !587

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
define internal void @enter_xsks_into_map(i32 noundef %0, ptr noundef %1) #6 {
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
  %14 = call ptr @strerror(i32 noundef %13) #15
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.17, ptr noundef %14)
  call void @exit(i32 noundef 1) #16
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
  call void @exit(i32 noundef 1) #16
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
  br label %17, !llvm.loop !588

54:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare i32 @sched_setscheduler(i32 noundef, i32 noundef, ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_pkt(ptr noundef %0, ptr noundef %1) #6 {
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
  %48 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %47, i32 0, i32 0
  store i64 %43, ptr %48, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.xsk_socket_info, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %10, align 4
  %52 = call ptr @xsk_ring_prod__tx_desc(ptr noundef %50, i32 noundef %51)
  %53 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %52, i32 0, i32 1
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

declare i32 @sleep(i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_cyclic_and_rx_process(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.wakeup_stat, align 8
  %11 = alloca %struct.wakeup_stat, align 8
  %12 = alloca [64 x %struct.xdp_hints_rx_time], align 16
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
  %49 = getelementptr inbounds [64 x %struct.xdp_hints_rx_time], ptr %12, i64 0, i64 0
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
  %61 = call i32 @clock_gettime(i32 noundef %60, ptr noundef %5) #15
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
  %88 = call ptr @__errno_location() #17
  %89 = load i32, ptr %88, align 4
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.103, i32 noundef %87, i32 noundef %89)
  br label %91

91:                                               ; preds = %85, %82
  br label %244

92:                                               ; preds = %76
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  %93 = load i32, ptr %18, align 4
  %94 = call i32 @clock_gettime(i32 noundef %93, ptr noundef %5) #15
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
  %103 = call ptr @__errno_location() #17
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
  %183 = getelementptr inbounds [64 x %struct.xdp_hints_rx_time], ptr %12, i64 0, i64 0
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
  %240 = getelementptr inbounds [64 x %struct.xdp_hints_rx_time], ptr %12, i64 0, i64 0
  %241 = call i32 @invent_tx_pkts(ptr noundef %235, ptr noundef %238, i32 noundef %239, ptr noundef %240)
  store i32 %241, ptr %14, align 4
  %242 = load ptr, ptr %4, align 8
  call void @rx_avail_packets(ptr noundef %242)
  br label %72, !llvm.loop !589

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
  %256 = getelementptr inbounds [64 x %struct.xdp_hints_rx_time], ptr %12, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %256, i32 0, i32 0
  %258 = load i64, ptr %257, align 16
  call void @mem_free_umem_frame(ptr noundef %253, i64 noundef %258)
  br label %259

259:                                              ; preds = %249
  %260 = load i32, ptr %28, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, ptr %28, align 4
  br label %245, !llvm.loop !590

262:                                              ; preds = %245
  ret void
}

declare void @xsk_socket__delete(ptr noundef) #7

declare i32 @xsk_umem__delete(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invent_tx_pkts(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.xdp_hints_rx_time, align 8
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
  %38 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %14, i32 0, i32 0
  store i64 %37, ptr %38, align 8
  %39 = load i32, ptr %10, align 4
  %40 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %14, i32 0, i32 1
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %14, i32 0, i32 2
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
  %52 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %49, i64 %51
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr align 8 %14, i64 16, i1 false)
  br label %53

53:                                               ; preds = %32
  %54 = load i32, ptr %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %12, align 4
  br label %20, !llvm.loop !591

56:                                               ; preds = %20
  %57 = load i32, ptr %12, align 4
  store i32 %57, ptr %5, align 4
  br label %58

58:                                               ; preds = %56, %30
  %59 = load i32, ptr %5, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsnorm(ptr noundef %0) #6 {
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
  br label %3, !llvm.loop !592

17:                                               ; preds = %3
  ret void
}

declare i32 @clock_nanosleep(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calcdiff_ns(i64 %0, i64 %1, i64 %2, i64 %3) #6 {
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
define internal i32 @tx_batch_pkts(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6 {
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
  %36 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %33, i64 %35
  %37 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %36, i32 0, i32 0
  %38 = load i64, ptr %37, align 8
  call void @mem_free_umem_frame(ptr noundef %32, i64 noundef %38)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, ptr %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %11, align 4
  br label %26, !llvm.loop !593

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
  %59 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %56, i64 %58
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
  br label %44, !llvm.loop !594

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
define internal void @print_timespec(ptr noundef %0, ptr noundef %1) #6 {
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
define internal i64 @timespec2ns(ptr noundef %0) #6 {
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
define internal void @ns2timespec(i64 noundef %0, ptr noundef %1) #6 {
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
define internal void @rx_avail_packets(ptr noundef %0) #6 {
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
  br label %5, !llvm.loop !595

22:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_free_umem_frame(ptr noundef %0, i64 noundef %1) #6 {
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
  call void @__assert_fail(ptr noundef @.str.100, ptr noundef @.str.95, i32 noundef 344, ptr noundef @__PRETTY_FUNCTION__.mem_free_umem_frame) #16
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

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_receive_packets(ptr noundef %0) #6 {
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
  %32 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %31, i32 0, i32 0
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %7, align 8
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.xsk_socket_info, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %5, align 4
  %38 = call ptr @xsk_ring_cons__rx_desc(ptr noundef %35, i32 noundef %36)
  %39 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %38, i32 0, i32 1
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
  br label %23, !llvm.loop !596

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

89:                                               ; preds = %85, %82, %66, %21
  ret void
}

declare i32 @xsk_socket__fd(ptr noundef) #7

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_ring_cons__peek(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6 {
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
  %15 = getelementptr inbounds %struct.xsk_ring_prod, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %6, align 8
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr %7, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.xsk_ring_prod, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %18
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %13, %3
  %24 = load i32, ptr %7, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_ring_cons__rx_desc(ptr noundef %0, i32 noundef %1) #6 {
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
  %16 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %9, i64 %15
  ret ptr %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @process_packet(ptr noundef %0, i64 noundef %1, i32 noundef %2) #6 {
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
  %39 = call zeroext i16 @ntohs(i16 noundef zeroext %38) #17
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
  %76 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %76, i64 16, i1 false)
  %77 = load ptr, ptr %14, align 8
  %78 = getelementptr inbounds %struct.ipv6hdr, ptr %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.anon, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr inbounds %struct.ipv6hdr, ptr %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.anon, ptr %81, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %79, ptr align 4 %82, i64 16, i1 false)
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr inbounds %struct.ipv6hdr, ptr %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.anon, ptr %84, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %85, ptr align 4 %12, i64 16, i1 false)
  %86 = load ptr, ptr %15, align 8
  %87 = getelementptr inbounds %struct.icmp6hdr, ptr %86, i32 0, i32 0
  store i8 -127, ptr %87, align 4
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds %struct.icmp6hdr, ptr %88, i32 0, i32 2
  %90 = call zeroext i16 @htons(i16 noundef zeroext -32768) #17
  %91 = call zeroext i16 @htons(i16 noundef zeroext -32512) #17
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
  %104 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %103, i32 0, i32 0
  store i64 %99, ptr %104, align 8
  %105 = load i32, ptr %7, align 4
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr inbounds %struct.xsk_socket_info, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %10, align 4
  %109 = call ptr @xsk_ring_prod__tx_desc(ptr noundef %107, i32 noundef %108)
  %110 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %109, i32 0, i32 1
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
define internal void @xsk_ring_cons__release(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %5

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !597
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.xsk_ring_prod, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %9, %10
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.xsk_ring_prod, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  store volatile i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_tx(ptr noundef %0) #6 {
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
  br label %23, !llvm.loop !598

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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kick_tx(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.__SOCKADDR_ARG, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.xsk_socket_info, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @xsk_socket__fd(ptr noundef %8)
  store ptr null, ptr %5, align 8
  %10 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %5, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = call i64 @sendto(i32 noundef %9, ptr noundef null, i64 noundef 0, i32 noundef 64, ptr %11, i32 noundef 0)
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %4, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load ptr, ptr @stderr, align 8
  %18 = call ptr @__errno_location() #17
  %19 = load i32, ptr %18, align 4
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.102, ptr noundef @__func__.kick_tx, i32 noundef %19)
  %21 = call ptr @__errno_location() #17
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, ptr %3, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_ring_cons__comp_addr(ptr noundef %0, i32 noundef %1) #6 {
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

declare i64 @sendto(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_meta_info_via_btf(ptr noundef %0, ptr noundef %1) #6 {
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

36:                                               ; preds = %35, %24, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_pkt_info(ptr noundef %0, i32 noundef %1) #6 {
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
  %16 = call zeroext i16 @ntohs(i16 noundef zeroext %15) #17
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
  %25 = getelementptr inbounds %struct.xdp_hints_mark, ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0
  %27 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %25, ptr noundef %26, i32 noundef 128) #15
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr inbounds %struct.iphdr, ptr %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.xdp_hints_mark, ptr %29, i32 0, i32 1
  %31 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0
  %32 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %30, ptr noundef %31, i32 noundef 128) #15
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
  %59 = getelementptr inbounds %struct.anon, ptr %58, i32 0, i32 0
  %60 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0
  %61 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %59, ptr noundef %60, i32 noundef 128) #15
  %62 = load ptr, ptr %11, align 8
  %63 = getelementptr inbounds %struct.ipv6hdr, ptr %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.anon, ptr %63, i32 0, i32 1
  %65 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0
  %66 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %64, ptr noundef %65, i32 noundef 128) #15
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
declare zeroext i16 @ntohs(i16 noundef zeroext) #12

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #12

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csum_replace2(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #6 {
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

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @xsk_ring_prod__tx_desc(ptr noundef %0, i32 noundef %1) #6 {
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
  %16 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %9, i64 %15
  ret ptr %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @csum16_sub(i16 noundef zeroext %0, i16 noundef zeroext %1) #6 {
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

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @csum16_add(i16 noundef zeroext %0, i16 noundef zeroext %1) #6 {
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

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #8

declare i32 @xsk_umem__btf_id(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_meta_info_time(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
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
  %18 = getelementptr inbounds %struct.xdp_hints_rx_time.0, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.xdp_hints_rx_time.0, ptr %19, i32 0, i32 1
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
  %72 = call i32 @sched_getcpu() #15
  store i32 %72, ptr %10, align 4
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.xdp_hints_rx_time.0, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.xdp_hints_rx_time.0, ptr %75, i32 0, i32 1
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
define internal void @print_meta_info_mark(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
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
  %12 = getelementptr inbounds %struct.xdp_hints_mark.1, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %7, align 8
  store i32 0, ptr %8, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.xdp_hints_mark.1, ptr %14, i32 0, i32 2
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

declare i32 @xsk_btf__read(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: nounwind
declare i32 @sched_getcpu() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_cons_nb_avail(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.xsk_ring_prod, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.xsk_ring_prod, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %10, %13
  store i32 %14, ptr %5, align 4
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.xsk_ring_prod, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = load volatile i32, ptr %20, align 4
  store i32 %21, ptr %6, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !599
  %22 = load i32, ptr %6, align 4
  store i32 %22, ptr %7, align 4
  %23 = load i32, ptr %7, align 4
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.xsk_ring_prod, ptr %24, i32 0, i32 0
  store i32 %23, ptr %25, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.xsk_ring_prod, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.xsk_ring_prod, ptr %29, i32 0, i32 1
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

declare i32 @bpf_map_update_elem(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #13

declare i32 @xsk_socket__create_shared(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare i32 @bpf_get_link_xdp_id(i32 noundef, ptr noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_setsockopt(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #6 {
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
  %17 = call i32 @setsockopt(i32 noundef %16, i32 noundef 1, i32 noundef 69, ptr noundef %7, i32 noundef 4) #15
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = call ptr @__errno_location() #17
  %21 = load i32, ptr %20, align 4
  call void @__exit_with_error(i32 noundef %21, ptr noundef @.str.95, ptr noundef @__func__.apply_setsockopt, i32 noundef 397)
  br label %22

22:                                               ; preds = %19, %12
  store i32 20, ptr %7, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.xsk_socket_info, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @xsk_socket__fd(ptr noundef %25)
  %27 = call i32 @setsockopt(i32 noundef %26, i32 noundef 1, i32 noundef 46, ptr noundef %7, i32 noundef 4) #15
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = call ptr @__errno_location() #17
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
  %38 = call i32 @setsockopt(i32 noundef %37, i32 noundef 1, i32 noundef 70, ptr noundef %7, i32 noundef 4) #15
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = call ptr @__errno_location() #17
  %42 = load i32, ptr %41, align 4
  call void @__exit_with_error(i32 noundef %42, ptr noundef @.str.95, ptr noundef @__func__.apply_setsockopt, i32 noundef 407)
  br label %43

43:                                               ; preds = %40, %32, %11
  ret void
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__exit_with_error(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #6 {
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
  %15 = call ptr @strerror(i32 noundef %14) #15
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.96, ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %15)
  call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_eth_hdr(ptr noundef %0, ptr noundef %1) #6 {
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
  %15 = call zeroext i16 @htons(i16 noundef zeroext 2048) #17
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.ethhdr, ptr %16, i32 0, i32 2
  store i16 %15, ptr %17, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_ip_hdr(ptr noundef %0, ptr noundef %1) #6 {
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
  %41 = call zeroext i16 @htons(i16 noundef zeroext %40) #17
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
  %57 = getelementptr inbounds %struct.xdp_hints_mark, ptr %56, i32 0, i32 0
  store i32 %54, ptr %57, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.config, ptr %58, i32 0, i32 25
  %60 = load i32, ptr %59, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.iphdr, ptr %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.xdp_hints_mark, ptr %62, i32 0, i32 1
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
define internal void @gen_udp_hdr(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call zeroext i16 @htons(i16 noundef zeroext 4096) #17
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.udphdr, ptr %6, i32 0, i32 0
  store i16 %5, ptr %7, align 2
  %8 = call zeroext i16 @htons(i16 noundef zeroext 4096) #17
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
  %18 = call zeroext i16 @htons(i16 noundef zeroext %17) #17
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
  %37 = getelementptr inbounds %struct.xdp_hints_mark, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.iphdr, ptr %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.xdp_hints_mark, ptr %40, i32 0, i32 1
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

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @memset32_htonl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6 {
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
  %11 = call i32 @htonl(i32 noundef %10) #17
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
  br label %12, !llvm.loop !600

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
  br label %28, !llvm.loop !601

45:                                               ; preds = %28
  %46 = load ptr, ptr %4, align 8
  ret ptr %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @udp_csum(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) #6 {
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
  br label %13, !llvm.loop !602

30:                                               ; preds = %13
  %31 = load i32, ptr %6, align 4
  %32 = load i32, ptr %7, align 4
  %33 = load i32, ptr %8, align 4
  %34 = load i8, ptr %9, align 1
  %35 = load i32, ptr %11, align 4
  %36 = call zeroext i16 @csum_tcpudp_magic(i32 noundef %31, i32 noundef %32, i32 noundef %33, i8 noundef zeroext %34, i32 noundef %35)
  ret i16 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @csum_tcpudp_magic(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) #6 {
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
define internal zeroext i16 @csum_fold(i32 noundef %0) #6 {
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

; Function Attrs: nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) #12

declare zeroext i1 @get_ipv4_u32(ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @ip_fast_csum(ptr noundef %0, i32 noundef %1) #6 {
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
define internal i32 @do_csum(ptr noundef %0, i32 noundef %1) #6 {
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
  br i1 %76, label %58, label %77, !llvm.loop !603

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
define internal zeroext i16 @from32to16(i32 noundef %0) #6 {
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

declare i32 @xsk_umem__create(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_init_umem_frame_allocator(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %7 = load i32, ptr %4, align 4
  %8 = zext i32 %7 to i64
  %9 = call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #18
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
  call void @exit(i32 noundef 1) #16
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
  br label %24, !llvm.loop !604

42:                                               ; preds = %24
  %43 = load i32, ptr %4, align 4
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.mem_frame_allocator, ptr %44, i32 0, i32 0
  store i32 %43, ptr %45, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashmap__init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.hashmap, ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.hashmap, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.hashmap, ptr %16, i32 0, i32 2
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.hashmap, ptr %18, i32 0, i32 3
  store ptr null, ptr %19, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.hashmap, ptr %20, i32 0, i32 4
  store i64 0, ptr %21, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.hashmap, ptr %22, i32 0, i32 5
  store i64 0, ptr %23, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.hashmap, ptr %24, i32 0, i32 6
  store i64 0, ptr %25, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @hashmap__new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %9 = call noalias ptr @malloc(i64 noundef 56) #19
  store ptr %9, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call ptr @ERR_PTR(i64 noundef -12)
  store ptr %13, ptr %4, align 8
  br label %20

14:                                               ; preds = %3
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  call void @hashmap__init(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %8, align 8
  store ptr %19, ptr %4, align 8
  br label %20

20:                                               ; preds = %14, %12
  %21 = load ptr, ptr %4, align 8
  ret ptr %21
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #14

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @ERR_PTR(i64 noundef %0) #6 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashmap__clear(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i64 0, ptr %5, align 8
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i64, ptr %5, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.hashmap, ptr %9, i32 0, i32 4
  %11 = load i64, ptr %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.hashmap, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = load i64, ptr %5, align 8
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %3, align 8
  br label %20

20:                                               ; preds = %33, %13
  %21 = load ptr, ptr %3, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.hashmap_entry, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %4, align 8
  store i32 1, ptr %6, align 4
  %27 = load i32, ptr %6, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %32) #15
  br label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %4, align 8
  store ptr %34, ptr %3, align 8
  br label %20, !llvm.loop !605

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load i64, ptr %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, ptr %5, align 8
  br label %7, !llvm.loop !606

39:                                               ; preds = %7
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.hashmap, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  call void @free(ptr noundef %42) #15
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.hashmap, ptr %43, i32 0, i32 3
  store ptr null, ptr %44, align 8
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.hashmap, ptr %45, i32 0, i32 6
  store i64 0, ptr %46, align 8
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct.hashmap, ptr %47, i32 0, i32 5
  store i64 0, ptr %48, align 8
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.hashmap, ptr %49, i32 0, i32 4
  store i64 0, ptr %50, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashmap__free(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  call void @hashmap__clear(ptr noundef %7)
  %8 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %8) #15
  br label %9

9:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hashmap__size(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hashmap, ptr %3, i32 0, i32 6
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hashmap__capacity(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hashmap, ptr %3, i32 0, i32 4
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashmap__insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #6 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store i32 %3, ptr %11, align 4
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %17 = load ptr, ptr %12, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load ptr, ptr %12, align 8
  store ptr null, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %6
  %22 = load ptr, ptr %13, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 8
  store ptr null, ptr %25, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds %struct.hashmap, ptr %27, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds %struct.hashmap, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = call i64 %29(ptr noundef %30, ptr noundef %33)
  %35 = load ptr, ptr %8, align 8
  %36 = getelementptr inbounds %struct.hashmap, ptr %35, i32 0, i32 5
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @hash_bits(i64 noundef %34, i32 noundef %38)
  store i64 %39, ptr %15, align 8
  %40 = load i32, ptr %11, align 4
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %42, label %82

42:                                               ; preds = %26
  %43 = load ptr, ptr %8, align 8
  %44 = load ptr, ptr %9, align 8
  %45 = load i64, ptr %15, align 8
  %46 = call zeroext i1 @hashmap_find_entry(ptr noundef %43, ptr noundef %44, i64 noundef %45, ptr noundef null, ptr noundef %14)
  br i1 %46, label %47, label %82

47:                                               ; preds = %42
  %48 = load ptr, ptr %12, align 8
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load ptr, ptr %14, align 8
  %52 = getelementptr inbounds %struct.hashmap_entry, ptr %51, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %12, align 8
  store ptr %53, ptr %54, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load ptr, ptr %13, align 8
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load ptr, ptr %14, align 8
  %60 = getelementptr inbounds %struct.hashmap_entry, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %13, align 8
  store ptr %61, ptr %62, align 8
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, ptr %11, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %11, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %76

69:                                               ; preds = %66, %63
  %70 = load ptr, ptr %9, align 8
  %71 = load ptr, ptr %14, align 8
  %72 = getelementptr inbounds %struct.hashmap_entry, ptr %71, i32 0, i32 0
  store ptr %70, ptr %72, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds %struct.hashmap_entry, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 8
  store i32 0, ptr %7, align 4
  br label %132

76:                                               ; preds = %66
  %77 = load i32, ptr %11, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 -17, ptr %7, align 4
  br label %132

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %42, %26
  %83 = load i32, ptr %11, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 -2, ptr %7, align 4
  br label %132

86:                                               ; preds = %82
  %87 = load ptr, ptr %8, align 8
  %88 = call zeroext i1 @hashmap_needs_to_grow(ptr noundef %87)
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8
  %91 = call i32 @hashmap_grow(ptr noundef %90)
  store i32 %91, ptr %16, align 4
  %92 = load i32, ptr %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, ptr %16, align 4
  store i32 %95, ptr %7, align 4
  br label %132

96:                                               ; preds = %89
  %97 = load ptr, ptr %8, align 8
  %98 = getelementptr inbounds %struct.hashmap, ptr %97, i32 0, i32 0
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %9, align 8
  %101 = load ptr, ptr %8, align 8
  %102 = getelementptr inbounds %struct.hashmap, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = call i64 %99(ptr noundef %100, ptr noundef %103)
  %105 = load ptr, ptr %8, align 8
  %106 = getelementptr inbounds %struct.hashmap, ptr %105, i32 0, i32 5
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i64 @hash_bits(i64 noundef %104, i32 noundef %108)
  store i64 %109, ptr %15, align 8
  br label %110

110:                                              ; preds = %96, %86
  %111 = call noalias ptr @malloc(i64 noundef 24) #19
  store ptr %111, ptr %14, align 8
  %112 = load ptr, ptr %14, align 8
  %113 = icmp ne ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  store i32 -12, ptr %7, align 4
  br label %132

115:                                              ; preds = %110
  %116 = load ptr, ptr %9, align 8
  %117 = load ptr, ptr %14, align 8
  %118 = getelementptr inbounds %struct.hashmap_entry, ptr %117, i32 0, i32 0
  store ptr %116, ptr %118, align 8
  %119 = load ptr, ptr %10, align 8
  %120 = load ptr, ptr %14, align 8
  %121 = getelementptr inbounds %struct.hashmap_entry, ptr %120, i32 0, i32 1
  store ptr %119, ptr %121, align 8
  %122 = load ptr, ptr %8, align 8
  %123 = getelementptr inbounds %struct.hashmap, ptr %122, i32 0, i32 3
  %124 = load ptr, ptr %123, align 8
  %125 = load i64, ptr %15, align 8
  %126 = getelementptr inbounds ptr, ptr %124, i64 %125
  %127 = load ptr, ptr %14, align 8
  call void @hashmap_add_entry(ptr noundef %126, ptr noundef %127)
  %128 = load ptr, ptr %8, align 8
  %129 = getelementptr inbounds %struct.hashmap, ptr %128, i32 0, i32 6
  %130 = load i64, ptr %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, ptr %129, align 8
  store i32 0, ptr %7, align 4
  br label %132

132:                                              ; preds = %115, %114, %94, %85, %79, %69
  %133 = load i32, ptr %7, align 4
  ret i32 %133
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash_bits(i64 noundef %0, i32 noundef %1) #6 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i64 0, ptr %3, align 8
  br label %16

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8
  %11 = mul i64 %10, -7046029254386353131
  %12 = load i32, ptr %5, align 4
  %13 = sub nsw i32 64, %12
  %14 = zext i32 %13 to i64
  %15 = lshr i64 %11, %14
  store i64 %15, ptr %3, align 8
  br label %16

16:                                               ; preds = %9, %8
  %17 = load i64, ptr %3, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @hashmap_find_entry(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #6 {
  %6 = alloca i1, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.hashmap, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i1 false, ptr %6, align 1
  br label %59

19:                                               ; preds = %5
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds %struct.hashmap, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = load i64, ptr %9, align 8
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %24, ptr %13, align 8
  %25 = load ptr, ptr %13, align 8
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %12, align 8
  br label %27

27:                                               ; preds = %52, %19
  %28 = load ptr, ptr %12, align 8
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds %struct.hashmap, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %12, align 8
  %35 = getelementptr inbounds %struct.hashmap_entry, ptr %34, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %8, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds %struct.hashmap, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = call zeroext i1 %33(ptr noundef %36, ptr noundef %37, ptr noundef %40)
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = load ptr, ptr %10, align 8
  %44 = icmp ne ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr %13, align 8
  %47 = load ptr, ptr %10, align 8
  store ptr %46, ptr %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load ptr, ptr %12, align 8
  %50 = load ptr, ptr %11, align 8
  store ptr %49, ptr %50, align 8
  store i1 true, ptr %6, align 1
  br label %59

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %12, align 8
  %54 = getelementptr inbounds %struct.hashmap_entry, ptr %53, i32 0, i32 2
  store ptr %54, ptr %13, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds %struct.hashmap_entry, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  store ptr %57, ptr %12, align 8
  br label %27, !llvm.loop !607

58:                                               ; preds = %27
  store i1 false, ptr %6, align 1
  br label %59

59:                                               ; preds = %58, %48, %18
  %60 = load i1, ptr %6, align 1
  ret i1 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @hashmap_needs_to_grow(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hashmap, ptr %3, i32 0, i32 4
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.hashmap, ptr %8, i32 0, i32 6
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, 1
  %12 = mul i64 %11, 4
  %13 = udiv i64 %12, 3
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.hashmap, ptr %14, i32 0, i32 4
  %16 = load i64, ptr %15, align 8
  %17 = icmp ugt i64 %13, %16
  br label %18

18:                                               ; preds = %7, %1
  %19 = phi i1 [ true, %1 ], [ %17, %7 ]
  ret i1 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashmap_grow(ptr noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.hashmap, ptr %12, i32 0, i32 5
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, 1
  store i64 %15, ptr %7, align 8
  %16 = load i64, ptr %7, align 8
  %17 = icmp ult i64 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i64 2, ptr %7, align 8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i64, ptr %7, align 8
  %21 = shl i64 1, %20
  store i64 %21, ptr %8, align 8
  %22 = load i64, ptr %8, align 8
  %23 = call noalias ptr @calloc(i64 noundef %22, i64 noundef 8) #18
  store ptr %23, ptr %4, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = icmp ne ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 -12, ptr %2, align 4
  br label %89

27:                                               ; preds = %19
  store i64 0, ptr %10, align 8
  br label %28

28:                                               ; preds = %73, %27
  %29 = load i64, ptr %10, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.hashmap, ptr %30, i32 0, i32 4
  %32 = load i64, ptr %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %28
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.hashmap, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = load i64, ptr %10, align 8
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %5, align 8
  br label %41

41:                                               ; preds = %70, %34
  %42 = load ptr, ptr %5, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.hashmap_entry, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %6, align 8
  store i32 1, ptr %11, align 4
  %48 = load i32, ptr %11, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i1 [ false, %41 ], [ %49, %44 ]
  br i1 %51, label %52, label %72

52:                                               ; preds = %50
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.hashmap, ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.hashmap_entry, ptr %56, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct.hashmap, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = call i64 %55(ptr noundef %58, ptr noundef %61)
  %63 = load i64, ptr %7, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @hash_bits(i64 noundef %62, i32 noundef %64)
  store i64 %65, ptr %9, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = load i64, ptr %9, align 8
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %5, align 8
  call void @hashmap_add_entry(ptr noundef %68, ptr noundef %69)
  br label %70

70:                                               ; preds = %52
  %71 = load ptr, ptr %6, align 8
  store ptr %71, ptr %5, align 8
  br label %41, !llvm.loop !608

72:                                               ; preds = %50
  br label %73

73:                                               ; preds = %72
  %74 = load i64, ptr %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, ptr %10, align 8
  br label %28, !llvm.loop !609

76:                                               ; preds = %28
  %77 = load i64, ptr %8, align 8
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.hashmap, ptr %78, i32 0, i32 4
  store i64 %77, ptr %79, align 8
  %80 = load i64, ptr %7, align 8
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct.hashmap, ptr %81, i32 0, i32 5
  store i64 %80, ptr %82, align 8
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr inbounds %struct.hashmap, ptr %83, i32 0, i32 3
  %85 = load ptr, ptr %84, align 8
  call void @free(ptr noundef %85) #15
  %86 = load ptr, ptr %4, align 8
  %87 = load ptr, ptr %3, align 8
  %88 = getelementptr inbounds %struct.hashmap, ptr %87, i32 0, i32 3
  store ptr %86, ptr %88, align 8
  store i32 0, ptr %2, align 4
  br label %89

89:                                               ; preds = %76, %26
  %90 = load i32, ptr %2, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashmap_add_entry(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.hashmap_entry, ptr %7, i32 0, i32 2
  store ptr %6, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hashmap__find(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.hashmap, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.hashmap, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call i64 %12(ptr noundef %13, ptr noundef %16)
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.hashmap, ptr %18, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @hash_bits(i64 noundef %17, i32 noundef %21)
  store i64 %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load i64, ptr %9, align 8
  %26 = call zeroext i1 @hashmap_find_entry(ptr noundef %23, ptr noundef %24, i64 noundef %25, ptr noundef null, ptr noundef %8)
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i1 false, ptr %4, align 1
  br label %37

28:                                               ; preds = %3
  %29 = load ptr, ptr %7, align 8
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds %struct.hashmap_entry, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %7, align 8
  store ptr %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %31, %28
  store i1 true, ptr %4, align 1
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i1, ptr %4, align 1
  ret i1 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hashmap__delete(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.hashmap, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.hashmap, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call i64 %15(ptr noundef %16, ptr noundef %19)
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.hashmap, ptr %21, i32 0, i32 5
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i64 @hash_bits(i64 noundef %20, i32 noundef %24)
  store i64 %25, ptr %12, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load i64, ptr %12, align 8
  %29 = call zeroext i1 @hashmap_find_entry(ptr noundef %26, ptr noundef %27, i64 noundef %28, ptr noundef %10, ptr noundef %11)
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i1 false, ptr %5, align 1
  br label %55

31:                                               ; preds = %4
  %32 = load ptr, ptr %8, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load ptr, ptr %11, align 8
  %36 = getelementptr inbounds %struct.hashmap_entry, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %8, align 8
  store ptr %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load ptr, ptr %9, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr inbounds %struct.hashmap_entry, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %9, align 8
  store ptr %45, ptr %46, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load ptr, ptr %10, align 8
  %49 = load ptr, ptr %11, align 8
  call void @hashmap_del_entry(ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %50) #15
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds %struct.hashmap, ptr %51, i32 0, i32 6
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, -1
  store i64 %54, ptr %52, align 8
  store i1 true, ptr %5, align 1
  br label %55

55:                                               ; preds = %47, %30
  %56 = load i1, ptr %5, align 1
  ret i1 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashmap_del_entry(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hashmap_entry, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.hashmap_entry, ptr %9, i32 0, i32 2
  store ptr null, ptr %10, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_link_attach(i32 noundef %0, i32 noundef %1, i32 noundef %2) #6 {
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
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = call i32 @bpf_set_link_xdp_fd(i32 noundef %10, i32 noundef %11, i32 noundef %12)
  store i32 %13, ptr %8, align 4
  %14 = load i32, ptr %8, align 4
  %15 = icmp eq i32 %14, -17
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load i32, ptr %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %6, align 4
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %6, align 4
  %23 = and i32 %22, -15
  store i32 %23, ptr %6, align 4
  %24 = load i32, ptr %9, align 4
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 4, i32 2
  %29 = load i32, ptr %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, ptr %6, align 4
  %31 = load i32, ptr %5, align 4
  %32 = load i32, ptr %6, align 4
  %33 = call i32 @bpf_set_link_xdp_fd(i32 noundef %31, i32 noundef -1, i32 noundef %32)
  store i32 %33, ptr %8, align 4
  %34 = load i32, ptr %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %20
  %37 = load i32, ptr %5, align 4
  %38 = load i32, ptr %7, align 4
  %39 = load i32, ptr %9, align 4
  %40 = call i32 @bpf_set_link_xdp_fd(i32 noundef %37, i32 noundef %38, i32 noundef %39)
  store i32 %40, ptr %8, align 4
  br label %41

41:                                               ; preds = %36, %20
  br label %42

42:                                               ; preds = %41, %16, %3
  %43 = load i32, ptr %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8
  %47 = load i32, ptr %5, align 4
  %48 = load i32, ptr %8, align 4
  %49 = sub nsw i32 0, %48
  %50 = load i32, ptr %8, align 4
  %51 = sub nsw i32 0, %50
  %52 = call ptr @strerror(i32 noundef %51) #15
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.123, i32 noundef %47, i32 noundef %49, ptr noundef %52)
  %54 = load i32, ptr %8, align 4
  %55 = sub nsw i32 0, %54
  switch i32 %55, label %62 [
    i32 16, label %56
    i32 17, label %56
    i32 95, label %59
  ]

56:                                               ; preds = %45, %45
  %57 = load ptr, ptr @stderr, align 8
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.1.124)
  br label %63

59:                                               ; preds = %45
  %60 = load ptr, ptr @stderr, align 8
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.2.125)
  br label %63

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %59, %56
  store i32 30, ptr %4, align 4
  br label %65

64:                                               ; preds = %42
  store i32 0, ptr %4, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, ptr %4, align 4
  ret i32 %66
}

declare i32 @bpf_set_link_xdp_fd(i32 noundef, i32 noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_link_detach(i32 noundef %0, i32 noundef %1, i32 noundef %2) #6 {
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
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load ptr, ptr @stderr, align 8
  %17 = load i32, ptr %9, align 4
  %18 = sub nsw i32 0, %17
  %19 = load i32, ptr %9, align 4
  %20 = sub nsw i32 0, %19
  %21 = call ptr @strerror(i32 noundef %20) #15
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.3.128, i32 noundef %18, ptr noundef %21)
  store i32 30, ptr %4, align 4
  br label %65

23:                                               ; preds = %3
  %24 = load i32, ptr %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr @verbose, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, ptr %5, align 4
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.4.129, ptr noundef @__func__.xdp_link_detach, i32 noundef %30)
  br label %32

32:                                               ; preds = %29, %26
  store i32 0, ptr %4, align 4
  br label %65

33:                                               ; preds = %23
  %34 = load i32, ptr %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, ptr %8, align 4
  %38 = load i32, ptr %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load ptr, ptr @stderr, align 8
  %42 = load i32, ptr %7, align 4
  %43 = load i32, ptr %8, align 4
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.5.130, ptr noundef @__func__.xdp_link_detach, i32 noundef %42, i32 noundef %43)
  store i32 1, ptr %4, align 4
  br label %65

45:                                               ; preds = %36, %33
  %46 = load i32, ptr %5, align 4
  %47 = load i32, ptr %6, align 4
  %48 = call i32 @bpf_set_link_xdp_fd(i32 noundef %46, i32 noundef -1, i32 noundef %47)
  store i32 %48, ptr %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load ptr, ptr @stderr, align 8
  %52 = load i32, ptr %9, align 4
  %53 = load i32, ptr %9, align 4
  %54 = sub nsw i32 0, %53
  %55 = call ptr @strerror(i32 noundef %54) #15
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.6.131, ptr noundef @__func__.xdp_link_detach, i32 noundef %52, ptr noundef %55)
  store i32 30, ptr %4, align 4
  br label %65

57:                                               ; preds = %45
  %58 = load i32, ptr @verbose, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, ptr %8, align 4
  %62 = load i32, ptr %5, align 4
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.7.132, ptr noundef @__func__.xdp_link_detach, i32 noundef %61, i32 noundef %62)
  br label %64

64:                                               ; preds = %60, %57
  store i32 0, ptr %4, align 4
  br label %65

65:                                               ; preds = %64, %50, %40, %32, %15
  %66 = load i32, ptr %4, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @load_bpf_object_file(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_prog_load_attr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 -1, ptr %6, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 32, i1 false)
  %10 = getelementptr inbounds %struct.bpf_prog_load_attr, ptr %9, i32 0, i32 1
  store i32 6, ptr %10, align 8
  %11 = getelementptr inbounds %struct.bpf_prog_load_attr, ptr %9, i32 0, i32 3
  %12 = load i32, ptr %5, align 4
  store i32 %12, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.bpf_prog_load_attr, ptr %9, i32 0, i32 0
  store ptr %13, ptr %14, align 8
  %15 = call i32 @bpf_prog_load_xattr(ptr noundef %9, ptr noundef %7, ptr noundef %6)
  store i32 %15, ptr %8, align 4
  %16 = load i32, ptr %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load ptr, ptr @stderr, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %8, align 4
  %23 = sub nsw i32 0, %22
  %24 = call ptr @strerror(i32 noundef %23) #15
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.8.133, ptr noundef %20, i32 noundef %21, ptr noundef %24)
  store ptr null, ptr %3, align 8
  br label %28

26:                                               ; preds = %2
  %27 = load ptr, ptr %7, align 8
  store ptr %27, ptr %3, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = load ptr, ptr %3, align 8
  ret ptr %29
}

declare i32 @bpf_prog_load_xattr(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @load_bpf_object_file_reuse_maps(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load i32, ptr %6, align 4
  %12 = call ptr @open_bpf_object(ptr noundef %10, i32 noundef %11)
  store ptr %12, ptr %9, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load ptr, ptr @stderr, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.9.134, ptr noundef %17)
  store ptr null, ptr %4, align 8
  br label %45

19:                                               ; preds = %3
  %20 = load ptr, ptr %9, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = call i32 @reuse_maps(ptr noundef %20, ptr noundef %21)
  store i32 %22, ptr %8, align 4
  %23 = load i32, ptr %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load ptr, ptr @stderr, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.10.135, ptr noundef %27, ptr noundef %28)
  store ptr null, ptr %4, align 8
  br label %45

30:                                               ; preds = %19
  %31 = load ptr, ptr %9, align 8
  %32 = call i32 @bpf_object__load(ptr noundef %31)
  store i32 %32, ptr %8, align 4
  %33 = load i32, ptr %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load ptr, ptr @stderr, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = load i32, ptr %8, align 4
  %39 = load i32, ptr %8, align 4
  %40 = sub nsw i32 0, %39
  %41 = call ptr @strerror(i32 noundef %40) #15
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.8.133, ptr noundef %37, i32 noundef %38, ptr noundef %41)
  store ptr null, ptr %4, align 8
  br label %45

43:                                               ; preds = %30
  %44 = load ptr, ptr %9, align 8
  store ptr %44, ptr %4, align 8
  br label %45

45:                                               ; preds = %43, %35, %25, %15
  %46 = load ptr, ptr %4, align 8
  ret ptr %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @open_bpf_object(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.bpf_object_open_attr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr null, ptr %10, align 8
  %12 = getelementptr inbounds %struct.bpf_object_open_attr, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %4, align 8
  store ptr %13, ptr %12, align 8
  %14 = getelementptr inbounds %struct.bpf_object_open_attr, ptr %11, i32 0, i32 1
  store i32 6, ptr %14, align 8
  %15 = call ptr @bpf_object__open_xattr(ptr noundef %11)
  store ptr %15, ptr %7, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %16)
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load ptr, ptr %7, align 8
  %20 = call i64 @PTR_ERR(ptr noundef %19)
  %21 = sub nsw i64 0, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %6, align 4
  %23 = load ptr, ptr @stderr, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %6, align 4
  %27 = sub nsw i32 0, %26
  %28 = call ptr @strerror(i32 noundef %27) #15
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.22.137, ptr noundef %24, i32 noundef %25, ptr noundef %28)
  store ptr null, ptr %3, align 8
  br label %76

30:                                               ; preds = %2
  %31 = load ptr, ptr %7, align 8
  %32 = call ptr @bpf_object__next_program(ptr noundef %31, ptr noundef null)
  store ptr %32, ptr %9, align 8
  br label %33

33:                                               ; preds = %45, %30
  %34 = load ptr, ptr %9, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load ptr, ptr %9, align 8
  call void @bpf_program__set_type(ptr noundef %37, i32 noundef 6)
  %38 = load ptr, ptr %9, align 8
  %39 = load i32, ptr %5, align 4
  call void @bpf_program__set_ifindex(ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr %10, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %9, align 8
  store ptr %43, ptr %10, align 8
  br label %44

44:                                               ; preds = %42, %36
  br label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %7, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = call ptr @bpf_object__next_program(ptr noundef %46, ptr noundef %47)
  store ptr %48, ptr %9, align 8
  br label %33, !llvm.loop !610

49:                                               ; preds = %33
  %50 = load ptr, ptr %7, align 8
  %51 = call ptr @bpf_object__next_map(ptr noundef %50, ptr noundef null)
  store ptr %51, ptr %8, align 8
  br label %52

52:                                               ; preds = %63, %49
  %53 = load ptr, ptr %8, align 8
  %54 = icmp ne ptr %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load ptr, ptr %8, align 8
  %57 = call zeroext i1 @bpf_map__is_offload_neutral(ptr noundef %56)
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %5, align 4
  %61 = call i32 @bpf_map__set_ifindex(ptr noundef %59, i32 noundef %60)
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr %7, align 8
  %65 = load ptr, ptr %8, align 8
  %66 = call ptr @bpf_object__next_map(ptr noundef %64, ptr noundef %65)
  store ptr %66, ptr %8, align 8
  br label %52, !llvm.loop !611

67:                                               ; preds = %52
  %68 = load ptr, ptr %10, align 8
  %69 = icmp ne ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @stderr, align 8
  %72 = load ptr, ptr %4, align 8
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.23.138, ptr noundef %72)
  store ptr null, ptr %3, align 8
  br label %76

74:                                               ; preds = %67
  %75 = load ptr, ptr %7, align 8
  store ptr %75, ptr %3, align 8
  br label %76

76:                                               ; preds = %74, %70, %18
  %77 = load ptr, ptr %3, align 8
  ret ptr %77
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reuse_maps(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -2, ptr %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 -22, ptr %3, align 4
  br label %59

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8
  %20 = call ptr @bpf_object__next_map(ptr noundef %19, ptr noundef null)
  store ptr %20, ptr %6, align 8
  br label %21

21:                                               ; preds = %54, %18
  %22 = load ptr, ptr %6, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = call ptr @bpf_map__name(ptr noundef %27)
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %25, i64 noundef 4096, ptr noundef @.str.18.136, ptr noundef %26, ptr noundef %28) #15
  store i32 %29, ptr %7, align 4
  %30 = load i32, ptr %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -22, ptr %3, align 4
  br label %59

33:                                               ; preds = %24
  %34 = load i32, ptr %7, align 4
  %35 = icmp sge i32 %34, 4096
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -36, ptr %3, align 4
  br label %59

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0
  %40 = call i32 @bpf_obj_get(ptr noundef %39)
  store i32 %40, ptr %9, align 4
  %41 = load i32, ptr %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, ptr %9, align 4
  store i32 %44, ptr %3, align 4
  br label %59

45:                                               ; preds = %38
  %46 = load ptr, ptr %6, align 8
  %47 = load i32, ptr %9, align 4
  %48 = call i32 @bpf_map__reuse_fd(ptr noundef %46, i32 noundef %47)
  store i32 %48, ptr %8, align 4
  %49 = load i32, ptr %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, ptr %8, align 4
  store i32 %52, ptr %3, align 4
  br label %59

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %4, align 8
  %56 = load ptr, ptr %6, align 8
  %57 = call ptr @bpf_object__next_map(ptr noundef %55, ptr noundef %56)
  store ptr %57, ptr %6, align 8
  br label %21, !llvm.loop !612

58:                                               ; preds = %21
  store i32 0, ptr %3, align 4
  br label %59

59:                                               ; preds = %58, %51, %43, %36, %32, %17, %13
  %60 = load i32, ptr %3, align 4
  ret i32 %60
}

declare i32 @bpf_object__load(ptr noundef) #7

declare ptr @bpf_object__next_map(ptr noundef, ptr noundef) #7

declare ptr @bpf_map__name(ptr noundef) #7

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #8

declare i32 @bpf_obj_get(ptr noundef) #7

declare i32 @bpf_map__reuse_fd(ptr noundef, i32 noundef) #7

declare ptr @bpf_object__open_xattr(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = ptrtoint ptr %6 to i64
  %8 = icmp uge i64 %7, -4095
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ true, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PTR_ERR(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = ptrtoint ptr %3 to i64
  ret i64 %4
}

declare ptr @bpf_object__next_program(ptr noundef, ptr noundef) #7

declare void @bpf_program__set_type(ptr noundef, i32 noundef) #7

declare void @bpf_program__set_ifindex(ptr noundef, i32 noundef) #7

declare zeroext i1 @bpf_map__is_offload_neutral(ptr noundef) #7

declare i32 @bpf_map__set_ifindex(ptr noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @load_bpf_and_xdp_attach(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %5, align 4
  store i32 -1, ptr %6, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.config, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.config, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.config, ptr %19, i32 0, i32 8
  %21 = load i8, ptr %20, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.config, ptr %24, i32 0, i32 10
  %26 = getelementptr inbounds [512 x i8], ptr %25, i64 0, i64 0
  %27 = load i32, ptr %5, align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.config, ptr %28, i32 0, i32 9
  %30 = getelementptr inbounds [512 x i8], ptr %29, i64 0, i64 0
  %31 = call ptr @load_bpf_object_file_reuse_maps(ptr noundef %26, i32 noundef %27, ptr noundef %30)
  store ptr %31, ptr %4, align 8
  br label %38

32:                                               ; preds = %18
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.config, ptr %33, i32 0, i32 10
  %35 = getelementptr inbounds [512 x i8], ptr %34, i64 0, i64 0
  %36 = load i32, ptr %5, align 4
  %37 = call ptr @load_bpf_object_file(ptr noundef %35, i32 noundef %36)
  store ptr %37, ptr %4, align 8
  br label %38

38:                                               ; preds = %32, %23
  %39 = load ptr, ptr %4, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @stderr, align 8
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.config, ptr %43, i32 0, i32 10
  %45 = getelementptr inbounds [512 x i8], ptr %44, i64 0, i64 0
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.11.141, ptr noundef %45)
  call void @exit(i32 noundef 40) #16
  unreachable

47:                                               ; preds = %38
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.config, ptr %48, i32 0, i32 11
  %50 = getelementptr inbounds [32 x i8], ptr %49, i64 0, i64 0
  %51 = load i8, ptr %50, align 2
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.config, ptr %55, i32 0, i32 11
  %57 = getelementptr inbounds [32 x i8], ptr %56, i64 0, i64 0
  %58 = call ptr @bpf_object__find_program_by_title(ptr noundef %54, ptr noundef %57)
  store ptr %58, ptr %3, align 8
  br label %62

59:                                               ; preds = %47
  %60 = load ptr, ptr %4, align 8
  %61 = call ptr @bpf_program__next(ptr noundef null, ptr noundef %60)
  store ptr %61, ptr %3, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load ptr, ptr %3, align 8
  %64 = icmp ne ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @stderr, align 8
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds %struct.config, ptr %67, i32 0, i32 11
  %69 = getelementptr inbounds [32 x i8], ptr %68, i64 0, i64 0
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.12.142, ptr noundef %69)
  call void @exit(i32 noundef 40) #16
  unreachable

71:                                               ; preds = %62
  store i64 31, ptr %7, align 8
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct.config, ptr %72, i32 0, i32 11
  %74 = getelementptr inbounds [32 x i8], ptr %73, i64 0, i64 0
  %75 = load ptr, ptr %3, align 8
  %76 = call ptr @bpf_program__section_name(ptr noundef %75)
  %77 = load i64, ptr %7, align 8
  %78 = call ptr @strncpy(ptr noundef %74, ptr noundef %76, i64 noundef %77) #15
  %79 = load ptr, ptr %2, align 8
  %80 = getelementptr inbounds %struct.config, ptr %79, i32 0, i32 11
  %81 = load i64, ptr %7, align 8
  %82 = getelementptr inbounds [32 x i8], ptr %80, i64 0, i64 %81
  store i8 0, ptr %82, align 1
  %83 = load ptr, ptr %3, align 8
  %84 = call i32 @bpf_program__fd(ptr noundef %83)
  store i32 %84, ptr %6, align 4
  %85 = load i32, ptr %6, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %71
  %88 = load ptr, ptr @stderr, align 8
  %89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.13.143)
  call void @exit(i32 noundef 40) #16
  unreachable

90:                                               ; preds = %71
  %91 = load ptr, ptr %2, align 8
  %92 = getelementptr inbounds %struct.config, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %2, align 8
  %95 = getelementptr inbounds %struct.config, ptr %94, i32 0, i32 0
  %96 = load i32, ptr %95, align 8
  %97 = load i32, ptr %6, align 4
  %98 = call i32 @xdp_link_attach(i32 noundef %93, i32 noundef %96, i32 noundef %97)
  store i32 %98, ptr %8, align 4
  %99 = load i32, ptr %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32, ptr %8, align 4
  call void @exit(i32 noundef %102) #16
  unreachable

103:                                              ; preds = %90
  %104 = load ptr, ptr %4, align 8
  ret ptr %104
}

declare ptr @bpf_object__find_program_by_title(ptr noundef, ptr noundef) #7

declare ptr @bpf_program__next(ptr noundef, ptr noundef) #7

declare ptr @bpf_program__section_name(ptr noundef) #7

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #8

declare i32 @bpf_program__fd(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @action2str(i32 noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [6 x ptr], ptr @xdp_action_names, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  br label %12

11:                                               ; preds = %1
  store ptr null, ptr %2, align 8
  br label %12

12:                                               ; preds = %11, %6
  %13 = load ptr, ptr %2, align 8
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_map_fd_info(ptr noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bpf_map_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.bpf_map_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.bpf_map_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.bpf_map_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.bpf_map_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.14.150, ptr noundef @__func__.check_map_fd_info, i32 noundef %22, i32 noundef %25)
  store i32 1, ptr %3, align 4
  br label %94

27:                                               ; preds = %10, %2
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.bpf_map_info, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.bpf_map_info, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.bpf_map_info, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load ptr, ptr @stderr, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.bpf_map_info, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.bpf_map_info, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.15.151, ptr noundef @__func__.check_map_fd_info, i32 noundef %44, i32 noundef %47)
  store i32 1, ptr %3, align 4
  br label %94

49:                                               ; preds = %32, %27
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.bpf_map_info, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.bpf_map_info, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %56, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.bpf_map_info, ptr %58, i32 0, i32 4
  %60 = load i32, ptr %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load ptr, ptr @stderr, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.bpf_map_info, ptr %64, i32 0, i32 4
  %66 = load i32, ptr %65, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.bpf_map_info, ptr %67, i32 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.16.152, ptr noundef @__func__.check_map_fd_info, i32 noundef %66, i32 noundef %69)
  store i32 1, ptr %3, align 4
  br label %94

71:                                               ; preds = %54, %49
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.bpf_map_info, ptr %72, i32 0, i32 0
  %74 = load i32, ptr %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds %struct.bpf_map_info, ptr %77, i32 0, i32 0
  %79 = load i32, ptr %78, align 8
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds %struct.bpf_map_info, ptr %80, i32 0, i32 0
  %82 = load i32, ptr %81, align 8
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load ptr, ptr @stderr, align 8
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct.bpf_map_info, ptr %86, i32 0, i32 0
  %88 = load i32, ptr %87, align 8
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr inbounds %struct.bpf_map_info, ptr %89, i32 0, i32 0
  %91 = load i32, ptr %90, align 8
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.17.153, ptr noundef @__func__.check_map_fd_info, i32 noundef %88, i32 noundef %91)
  store i32 1, ptr %3, align 4
  br label %94

93:                                               ; preds = %76, %71
  store i32 0, ptr %3, align 4
  br label %94

94:                                               ; preds = %93, %84, %62, %40, %18
  %95 = load i32, ptr %3, align 4
  ret i32 %95
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_bpf_map_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 88, ptr %12, align 4
  %13 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 4096, ptr noundef @.str.18.136, ptr noundef %14, ptr noundef %15) #15
  store i32 %16, ptr %10, align 4
  %17 = load i32, ptr %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load ptr, ptr @stderr, align 8
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.19.154)
  store i32 -1, ptr %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %24 = call i32 @bpf_obj_get(ptr noundef %23)
  store i32 %24, ptr %11, align 4
  %25 = load i32, ptr %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load ptr, ptr @stderr, align 8
  %29 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %30 = call ptr @__errno_location() #17
  %31 = load i32, ptr %30, align 4
  %32 = call ptr @__errno_location() #17
  %33 = load i32, ptr %32, align 4
  %34 = call ptr @strerror(i32 noundef %33) #15
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.20.155, ptr noundef %29, i32 noundef %31, ptr noundef %34)
  %36 = load i32, ptr %11, align 4
  store i32 %36, ptr %4, align 4
  br label %55

37:                                               ; preds = %22
  %38 = load ptr, ptr %7, align 8
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, ptr %11, align 4
  %42 = load ptr, ptr %7, align 8
  %43 = call i32 @bpf_obj_get_info_by_fd(i32 noundef %41, ptr noundef %42, ptr noundef %12)
  store i32 %43, ptr %9, align 4
  %44 = load i32, ptr %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load ptr, ptr @stderr, align 8
  %48 = call ptr @__errno_location() #17
  %49 = load i32, ptr %48, align 4
  %50 = call ptr @strerror(i32 noundef %49) #15
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.21.156, ptr noundef @__func__.open_bpf_map_file, ptr noundef %50)
  store i32 40, ptr %4, align 4
  br label %55

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32, ptr %11, align 4
  store i32 %54, ptr %4, align 4
  br label %55

55:                                               ; preds = %53, %46, %27, %19
  %56 = load i32, ptr %4, align 4
  ret i32 %56
}

declare i32 @bpf_obj_get_info_by_fd(i32 noundef, ptr noundef, ptr noundef) #7

attributes #0 = { "btf_type_id" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind memory(none) }
attributes #5 = { nofree nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.ident = !{!144, !144, !144, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xdp_stats_map", scope: !2, file: !3, line: 24, type: !124, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !60, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "af_xdp_kern.c", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "52edcc469fa04893c3967929f48f5226")
!4 = !{!5, !11, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bpf_type_id_kind", file: !6, line: 23, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../lib/libbpf-install/usr/include/bpf/bpf_core_read.h", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "3f41fbd6626a5a6eb5da512ae52117e7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "BPF_TYPE_ID_LOCAL", value: 0)
!10 = !DIEnumerator(name: "BPF_TYPE_ID_TARGET", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !12, line: 4363, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "../lib/../headers/linux/bpf.h", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "686704d11802f5f210143bc29244c61a")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "XDP_ABORTED", value: 0)
!15 = !DIEnumerator(name: "XDP_DROP", value: 1)
!16 = !DIEnumerator(name: "XDP_PASS", value: 2)
!17 = !DIEnumerator(name: "XDP_TX", value: 3)
!18 = !DIEnumerator(name: "XDP_REDIRECT", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 28, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/linux/in.h", directory: "", checksumkind: CSK_MD5, checksum: "078a32220dc819f6a7e2ea3cecc4e133")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!22 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!23 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!24 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!25 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!26 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!27 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!28 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!29 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!30 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!31 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!32 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!33 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!34 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!35 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!36 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!37 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!38 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!39 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!40 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!41 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!42 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!43 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!44 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!45 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!46 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!47 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!48 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!49 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!50 = !{!51, !52, !53, !54, !55, !58}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !56, line: 24, baseType: !57)
!56 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !{!61, !66, !0, !84, !100, !107, !112, !119}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 193, type: !63, isLocal: false, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "xsks_map", scope: !2, file: !3, line: 17, type: !68, isLocal: false, isDefinition: true)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 12, size: 256, elements: !69)
!69 = !{!70, !75, !80, !83}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !3, line: 13, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 544, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 17)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !68, file: !3, line: 14, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !68, file: !3, line: 15, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !68, file: !3, line: 16, baseType: !81, size: 64, offset: 192)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "bpf_xdp_adjust_meta", scope: !2, file: !86, line: 1367, type: !87, isLocal: true, isDefinition: true)
!86 = !DIFile(filename: "../lib/libbpf-install/usr/include/bpf/bpf_helper_defs.h", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "52f02fca464a4053efa2721be82f1a3e")
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!54, !90, !51}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !12, line: 4374, size: 192, elements: !92)
!92 = !{!93, !95, !96, !97, !98, !99}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !91, file: !12, line: 4375, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !56, line: 27, baseType: !7)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !91, file: !12, line: 4376, baseType: !94, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !91, file: !12, line: 4377, baseType: !94, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !91, file: !12, line: 4379, baseType: !94, size: 32, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !91, file: !12, line: 4380, baseType: !94, size: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !91, file: !12, line: 4382, baseType: !94, size: 32, offset: 160)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "bpf_ktime_get_ns", scope: !2, file: !86, line: 109, type: !102, isLocal: true, isDefinition: true)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !56, line: 31, baseType: !106)
!106 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "bpf_get_smp_processor_id", scope: !2, file: !86, line: 201, type: !109, isLocal: true, isDefinition: true)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!94}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !86, line: 51, type: !114, isLocal: true, isDefinition: true)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!52, !52, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "bpf_redirect_map", scope: !2, file: !86, line: 1296, type: !121, isLocal: true, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!54, !52, !94, !105}
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 19, size: 256, elements: !125)
!125 = !{!126, !131, !133, !134}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !3, line: 20, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 6)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !124, file: !3, line: 21, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !124, file: !3, line: 22, baseType: !132, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !124, file: !3, line: 23, baseType: !76, size: 64, offset: 192)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_hints_rx_time", file: !3, line: 47, size: 128, align: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "rx_ktime", scope: !135, file: !3, line: 48, baseType: !105, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "xdp_rx_cpu", scope: !135, file: !3, line: 49, baseType: !94, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "btf_id", scope: !135, file: !3, line: 50, baseType: !94, size: 32, offset: 96)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_hints_mark", file: !3, line: 42, size: 64, align: 32, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !140, file: !3, line: 43, baseType: !94, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "btf_id", scope: !140, file: !3, line: 44, baseType: !94, size: 32, offset: 32)
!144 = !{!"clang version 16.0.0"}
!145 = !{i32 7, !"Dwarf Version", i32 5}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"wchar_size", i32 4}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{i32 8, !"PIC Level", i32 0}
!150 = !{i32 7, !"PIE Level", i32 2}
!151 = !{i32 7, !"uwtable", i32 2}
!152 = distinct !DISubprogram(name: "xdp_sock_prog", scope: !3, file: !3, line: 151, type: !153, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{!51, !90}
!155 = !{!156, !157, !158, !159, !160, !161}
!156 = !DILocalVariable(name: "ctx", arg: 1, scope: !152, file: !3, line: 151, type: !90)
!157 = !DILocalVariable(name: "index", scope: !152, file: !3, line: 153, type: !51)
!158 = !DILocalVariable(name: "pkt_count", scope: !152, file: !3, line: 154, type: !132)
!159 = !DILocalVariable(name: "err", scope: !152, file: !3, line: 155, type: !51)
!160 = !DILocalVariable(name: "ret", scope: !152, file: !3, line: 155, type: !51)
!161 = !DILocalVariable(name: "cnt", scope: !152, file: !3, line: 160, type: !105)
!162 = !DILocation(line: 0, scope: !152)
!163 = !DILocation(line: 153, column: 2, scope: !152)
!164 = !DILocation(line: 153, column: 19, scope: !152)
!165 = !{!166, !167, i64 16}
!166 = !{!"xdp_md", !167, i64 0, !167, i64 4, !167, i64 8, !167, i64 12, !167, i64 16, !167, i64 20}
!167 = !{!"int", !168, i64 0}
!168 = !{!"omnipotent char", !169, i64 0}
!169 = !{!"Simple C/C++ TBAA"}
!170 = !DILocation(line: 153, column: 6, scope: !152)
!171 = !{!167, !167, i64 0}
!172 = !DILocation(line: 157, column: 14, scope: !152)
!173 = !DILocation(line: 158, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !152, file: !3, line: 158, column: 6)
!175 = !DILocation(line: 158, column: 6, scope: !152)
!176 = !DILocation(line: 160, column: 26, scope: !152)
!177 = !DILocation(line: 168, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !152, file: !3, line: 168, column: 6)
!179 = !DILocation(line: 168, column: 16, scope: !178)
!180 = !DILocation(line: 168, column: 6, scope: !152)
!181 = !DILocalVariable(name: "ctx", arg: 1, scope: !182, file: !3, line: 53, type: !90)
!182 = distinct !DISubprogram(name: "meta_add_rx_time", scope: !3, file: !3, line: 53, type: !153, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!183 = !{!181, !184, !186, !187}
!184 = !DILocalVariable(name: "meta", scope: !182, file: !3, line: 55, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!186 = !DILocalVariable(name: "data", scope: !182, file: !3, line: 56, type: !52)
!187 = !DILocalVariable(name: "err", scope: !182, file: !3, line: 57, type: !51)
!188 = !DILocation(line: 0, scope: !182, inlinedAt: !189)
!189 = distinct !DILocation(line: 169, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !178, file: !3, line: 168, column: 22)
!191 = !DILocation(line: 62, column: 8, scope: !182, inlinedAt: !189)
!192 = !DILocation(line: 63, column: 6, scope: !193, inlinedAt: !189)
!193 = distinct !DILexicalBlock(scope: !182, file: !3, line: 63, column: 6)
!194 = !DILocation(line: 63, column: 6, scope: !182, inlinedAt: !189)
!195 = !DILocation(line: 71, column: 37, scope: !182, inlinedAt: !189)
!196 = !{!166, !167, i64 0}
!197 = !DILocation(line: 71, column: 17, scope: !182, inlinedAt: !189)
!198 = !DILocation(line: 71, column: 9, scope: !182, inlinedAt: !189)
!199 = !DILocation(line: 73, column: 37, scope: !182, inlinedAt: !189)
!200 = !{!166, !167, i64 8}
!201 = !DILocation(line: 73, column: 17, scope: !182, inlinedAt: !189)
!202 = !DILocation(line: 73, column: 9, scope: !182, inlinedAt: !189)
!203 = !DILocation(line: 74, column: 11, scope: !204, inlinedAt: !189)
!204 = distinct !DILexicalBlock(scope: !182, file: !3, line: 74, column: 6)
!205 = !DILocation(line: 74, column: 15, scope: !204, inlinedAt: !189)
!206 = !DILocation(line: 74, column: 6, scope: !182, inlinedAt: !189)
!207 = !DILocation(line: 77, column: 19, scope: !182, inlinedAt: !189)
!208 = !DILocation(line: 77, column: 17, scope: !182, inlinedAt: !189)
!209 = !{!210, !211, i64 0}
!210 = !{!"xdp_hints_rx_time", !211, i64 0, !167, i64 8, !167, i64 12}
!211 = !{!"long long", !168, i64 0}
!212 = !DILocation(line: 78, column: 21, scope: !182, inlinedAt: !189)
!213 = !DILocation(line: 78, column: 8, scope: !182, inlinedAt: !189)
!214 = !DILocation(line: 78, column: 19, scope: !182, inlinedAt: !189)
!215 = !{!210, !167, i64 8}
!216 = !DILocation(line: 80, column: 17, scope: !182, inlinedAt: !189)
!217 = !DILocation(line: 80, column: 8, scope: !182, inlinedAt: !189)
!218 = !DILocation(line: 80, column: 15, scope: !182, inlinedAt: !189)
!219 = !{!210, !167, i64 12}
!220 = !DILocation(line: 170, column: 7, scope: !190)
!221 = !DILocalVariable(name: "ctx", arg: 1, scope: !222, file: !3, line: 85, type: !90)
!222 = distinct !DISubprogram(name: "meta_add_mark", scope: !3, file: !3, line: 85, type: !223, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!51, !90, !94}
!225 = !{!221, !226, !227, !229, !230}
!226 = !DILocalVariable(name: "mark", arg: 2, scope: !222, file: !3, line: 85, type: !94)
!227 = !DILocalVariable(name: "meta", scope: !222, file: !3, line: 87, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!229 = !DILocalVariable(name: "data", scope: !222, file: !3, line: 88, type: !52)
!230 = !DILocalVariable(name: "err", scope: !222, file: !3, line: 89, type: !51)
!231 = !DILocation(line: 0, scope: !222, inlinedAt: !232)
!232 = distinct !DILocation(line: 173, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !178, file: !3, line: 172, column: 9)
!234 = !DILocation(line: 92, column: 8, scope: !222, inlinedAt: !232)
!235 = !DILocation(line: 93, column: 6, scope: !236, inlinedAt: !232)
!236 = distinct !DILexicalBlock(scope: !222, file: !3, line: 93, column: 6)
!237 = !DILocation(line: 93, column: 6, scope: !222, inlinedAt: !232)
!238 = !DILocation(line: 96, column: 37, scope: !222, inlinedAt: !232)
!239 = !DILocation(line: 96, column: 17, scope: !222, inlinedAt: !232)
!240 = !DILocation(line: 96, column: 9, scope: !222, inlinedAt: !232)
!241 = !DILocation(line: 97, column: 37, scope: !222, inlinedAt: !232)
!242 = !DILocation(line: 97, column: 17, scope: !222, inlinedAt: !232)
!243 = !DILocation(line: 97, column: 9, scope: !222, inlinedAt: !232)
!244 = !DILocation(line: 98, column: 11, scope: !245, inlinedAt: !232)
!245 = distinct !DILexicalBlock(scope: !222, file: !3, line: 98, column: 6)
!246 = !DILocation(line: 98, column: 15, scope: !245, inlinedAt: !232)
!247 = !DILocation(line: 98, column: 6, scope: !222, inlinedAt: !232)
!248 = !DILocation(line: 101, column: 13, scope: !222, inlinedAt: !232)
!249 = !{!250, !167, i64 0}
!250 = !{!"xdp_hints_mark", !167, i64 0, !167, i64 4}
!251 = !DILocation(line: 102, column: 17, scope: !222, inlinedAt: !232)
!252 = !DILocation(line: 102, column: 8, scope: !222, inlinedAt: !232)
!253 = !DILocation(line: 102, column: 15, scope: !222, inlinedAt: !232)
!254 = !{!250, !167, i64 4}
!255 = !DILocation(line: 174, column: 7, scope: !233)
!256 = !DILocation(line: 179, column: 8, scope: !152)
!257 = !DILocation(line: 180, column: 10, scope: !258)
!258 = distinct !DILexicalBlock(scope: !152, file: !3, line: 180, column: 6)
!259 = !DILocation(line: 180, column: 6, scope: !152)
!260 = !DILocation(line: 182, column: 10, scope: !261)
!261 = distinct !DILexicalBlock(scope: !152, file: !3, line: 182, column: 6)
!262 = !DILocation(line: 182, column: 6, scope: !152)
!263 = !DILocation(line: 187, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !152, file: !3, line: 187, column: 6)
!265 = !DILocation(line: 187, column: 6, scope: !152)
!266 = !DILocation(line: 188, column: 38, scope: !264)
!267 = !DILocation(line: 188, column: 10, scope: !264)
!268 = !DILocation(line: 188, column: 3, scope: !264)
!269 = !DILocation(line: 191, column: 1, scope: !152)
!270 = distinct !DISubprogram(name: "parse_pkt__is_ARP_or_NDP", scope: !3, file: !3, line: 114, type: !153, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !271)
!271 = !{!272, !273, !274, !275, !280, !292, !293, !340, !341, !388}
!272 = !DILocalVariable(name: "ctx", arg: 1, scope: !270, file: !3, line: 114, type: !90)
!273 = !DILocalVariable(name: "data", scope: !270, file: !3, line: 116, type: !52)
!274 = !DILocalVariable(name: "data_end", scope: !270, file: !3, line: 117, type: !52)
!275 = !DILocalVariable(name: "nh", scope: !270, file: !3, line: 118, type: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_cursor", file: !277, line: 35, size: 64, elements: !278)
!277 = !DIFile(filename: "../lib/../include/xdp/parsing_helpers.h", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "e41ee3c44bb7300a1b081f0ef073eeff")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !276, file: !277, line: 36, baseType: !52, size: 64)
!280 = !DILocalVariable(name: "eth", scope: !270, file: !3, line: 119, type: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethhdr", file: !283, line: 168, size: 112, elements: !284)
!283 = !DIFile(filename: "/usr/include/linux/if_ether.h", directory: "", checksumkind: CSK_MD5, checksum: "ab0320da726e75d904811ce344979934")
!284 = !{!285, !288, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "h_dest", scope: !282, file: !283, line: 169, baseType: !286, size: 48)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 48, elements: !129)
!287 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "h_source", scope: !282, file: !283, line: 170, baseType: !286, size: 48, offset: 48)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "h_proto", scope: !282, file: !283, line: 171, baseType: !290, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !291, line: 25, baseType: !55)
!291 = !DIFile(filename: "/usr/include/linux/types.h", directory: "", checksumkind: CSK_MD5, checksum: "52ec79a38e49ac7d1dc9e146ba88a7b1")
!292 = !DILocalVariable(name: "eth_type", scope: !270, file: !3, line: 120, type: !51)
!293 = !DILocalVariable(name: "ip6h", scope: !294, file: !3, line: 130, type: !296)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 129, column: 41)
!295 = distinct !DILexicalBlock(scope: !270, file: !3, line: 129, column: 6)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6hdr", file: !298, line: 118, size: 320, elements: !299)
!298 = !DIFile(filename: "/usr/include/linux/ipv6.h", directory: "", checksumkind: CSK_MD5, checksum: "9926d49458ea1e0cc4651362e733e03e")
!299 = !{!300, !302, !303, !307, !308, !309, !310}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !297, file: !298, line: 120, baseType: !301, size: 4, flags: DIFlagBitField, extraData: i64 0)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !56, line: 21, baseType: !287)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !297, file: !298, line: 121, baseType: !301, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lbl", scope: !297, file: !298, line: 128, baseType: !304, size: 24, offset: 8)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 24, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 3)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "payload_len", scope: !297, file: !298, line: 130, baseType: !290, size: 16, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !297, file: !298, line: 131, baseType: !301, size: 8, offset: 48)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !297, file: !298, line: 132, baseType: !301, size: 8, offset: 56)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !298, line: 134, baseType: !311, size: 256, offset: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !298, line: 134, size: 256, elements: !312)
!312 = !{!313, !335}
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !298, line: 134, baseType: !314, size: 256)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !311, file: !298, line: 134, size: 256, elements: !315)
!315 = !{!316, !334}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !314, file: !298, line: 134, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !318, line: 33, size: 128, elements: !319)
!318 = !DIFile(filename: "/usr/include/linux/in6.h", directory: "", checksumkind: CSK_MD5, checksum: "fca1889f0274df066e49cf4d8db8011e")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !317, file: !318, line: 40, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !318, line: 34, size: 128, elements: !322)
!322 = !{!323, !327, !331}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !321, file: !318, line: 35, baseType: !324, size: 128)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 128, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !321, file: !318, line: 37, baseType: !328, size: 128)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 128, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 8)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !321, file: !318, line: 38, baseType: !332, size: 128)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 128, elements: !64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !291, line: 27, baseType: !94)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !314, file: !298, line: 134, baseType: !317, size: 128, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !311, file: !298, line: 134, baseType: !336, size: 256)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !311, file: !298, line: 134, size: 256, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !336, file: !298, line: 134, baseType: !317, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !336, file: !298, line: 134, baseType: !317, size: 128, offset: 128)
!340 = !DILocalVariable(name: "ip_type", scope: !294, file: !3, line: 131, type: !51)
!341 = !DILocalVariable(name: "icmp6hdr", scope: !342, file: !3, line: 136, type: !344)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 135, column: 34)
!343 = distinct !DILexicalBlock(scope: !294, file: !3, line: 135, column: 7)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6hdr", file: !346, line: 8, size: 64, elements: !347)
!346 = !DIFile(filename: "/usr/include/linux/icmpv6.h", directory: "", checksumkind: CSK_MD5, checksum: "0310ca5584e6f44f6eea6cf040ee84b9")
!347 = !{!348, !349, !350, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_type", scope: !345, file: !346, line: 10, baseType: !301, size: 8)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_code", scope: !345, file: !346, line: 11, baseType: !301, size: 8, offset: 8)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_cksum", scope: !345, file: !346, line: 12, baseType: !351, size: 16, offset: 16)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !291, line: 31, baseType: !55)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_dataun", scope: !345, file: !346, line: 63, baseType: !353, size: 32, offset: 32)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !346, line: 15, size: 32, elements: !354)
!354 = !{!355, !359, !363, !365, !370, !378}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "un_data32", scope: !353, file: !346, line: 16, baseType: !356, size: 32)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 32, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 1)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "un_data16", scope: !353, file: !346, line: 17, baseType: !360, size: 32)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 32, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 2)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "un_data8", scope: !353, file: !346, line: 18, baseType: !364, size: 32)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 32, elements: !64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "u_echo", scope: !353, file: !346, line: 23, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_echo", file: !346, line: 20, size: 32, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !366, file: !346, line: 21, baseType: !290, size: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !366, file: !346, line: 22, baseType: !290, size: 16, offset: 16)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_advt", scope: !353, file: !346, line: 40, baseType: !371, size: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_advt", file: !346, line: 25, size: 32, elements: !372)
!372 = !{!373, !374, !375, !376, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !371, file: !346, line: 27, baseType: !94, size: 5, flags: DIFlagBitField, extraData: i64 0)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !371, file: !346, line: 28, baseType: !94, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "solicited", scope: !371, file: !346, line: 29, baseType: !94, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !371, file: !346, line: 30, baseType: !94, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !371, file: !346, line: 31, baseType: !94, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_ra", scope: !353, file: !346, line: 61, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_ra", file: !346, line: 42, size: 32, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !379, file: !346, line: 43, baseType: !301, size: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !379, file: !346, line: 45, baseType: !301, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "router_pref", scope: !379, file: !346, line: 46, baseType: !301, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "home_agent", scope: !379, file: !346, line: 47, baseType: !301, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !379, file: !346, line: 48, baseType: !301, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !379, file: !346, line: 49, baseType: !301, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rt_lifetime", scope: !379, file: !346, line: 60, baseType: !290, size: 16, offset: 16)
!388 = !DILocalVariable(name: "icmp6_type", scope: !342, file: !3, line: 137, type: !51)
!389 = !DILocation(line: 0, scope: !270)
!390 = !DILocation(line: 116, column: 38, scope: !270)
!391 = !DILocation(line: 116, column: 27, scope: !270)
!392 = !DILocation(line: 116, column: 19, scope: !270)
!393 = !DILocation(line: 117, column: 38, scope: !270)
!394 = !{!166, !167, i64 4}
!395 = !DILocation(line: 117, column: 27, scope: !270)
!396 = !DILocation(line: 117, column: 19, scope: !270)
!397 = !DILocalVariable(name: "nh", arg: 1, scope: !398, file: !277, line: 131, type: !401)
!398 = distinct !DISubprogram(name: "parse_ethhdr", scope: !277, file: !277, line: 131, type: !399, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !403)
!399 = !DISubroutineType(types: !400)
!400 = !{!51, !401, !52, !402}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!403 = !{!397, !404, !405}
!404 = !DILocalVariable(name: "data_end", arg: 2, scope: !398, file: !277, line: 132, type: !52)
!405 = !DILocalVariable(name: "ethhdr", arg: 3, scope: !398, file: !277, line: 133, type: !402)
!406 = !DILocation(line: 0, scope: !398, inlinedAt: !407)
!407 = distinct !DILocation(line: 122, column: 13, scope: !270)
!408 = !DILocalVariable(name: "nh", arg: 1, scope: !409, file: !277, line: 86, type: !401)
!409 = distinct !DISubprogram(name: "parse_ethhdr_vlan", scope: !277, file: !277, line: 86, type: !410, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !417)
!410 = !DISubroutineType(types: !411)
!411 = !{!51, !401, !52, !402, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "collect_vlans", file: !277, line: 71, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !413, file: !277, line: 72, baseType: !416, size: 32)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !361)
!417 = !{!408, !418, !419, !420, !421, !422, !423, !429, !430}
!418 = !DILocalVariable(name: "data_end", arg: 2, scope: !409, file: !277, line: 87, type: !52)
!419 = !DILocalVariable(name: "ethhdr", arg: 3, scope: !409, file: !277, line: 88, type: !402)
!420 = !DILocalVariable(name: "vlans", arg: 4, scope: !409, file: !277, line: 89, type: !412)
!421 = !DILocalVariable(name: "eth", scope: !409, file: !277, line: 91, type: !281)
!422 = !DILocalVariable(name: "hdrsize", scope: !409, file: !277, line: 92, type: !51)
!423 = !DILocalVariable(name: "vlh", scope: !409, file: !277, line: 93, type: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vlan_hdr", file: !277, line: 44, size: 32, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_TCI", scope: !425, file: !277, line: 45, baseType: !290, size: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_encapsulated_proto", scope: !425, file: !277, line: 46, baseType: !290, size: 16, offset: 16)
!429 = !DILocalVariable(name: "h_proto", scope: !409, file: !277, line: 94, type: !55)
!430 = !DILocalVariable(name: "i", scope: !409, file: !277, line: 95, type: !51)
!431 = !DILocation(line: 0, scope: !409, inlinedAt: !432)
!432 = distinct !DILocation(line: 136, column: 9, scope: !398, inlinedAt: !407)
!433 = !DILocation(line: 100, column: 14, scope: !434, inlinedAt: !432)
!434 = distinct !DILexicalBlock(scope: !409, file: !277, line: 100, column: 6)
!435 = !DILocation(line: 100, column: 24, scope: !434, inlinedAt: !432)
!436 = !DILocation(line: 100, column: 6, scope: !409, inlinedAt: !432)
!437 = !DILocation(line: 106, column: 17, scope: !409, inlinedAt: !432)
!438 = !{!439, !439, i64 0}
!439 = !{!"short", !168, i64 0}
!440 = !DILocalVariable(name: "h_proto", arg: 1, scope: !441, file: !277, line: 75, type: !55)
!441 = distinct !DISubprogram(name: "proto_is_vlan", scope: !277, file: !277, line: 75, type: !442, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!51, !55}
!444 = !{!440}
!445 = !DILocation(line: 0, scope: !441, inlinedAt: !446)
!446 = distinct !DILocation(line: 113, column: 8, scope: !447, inlinedAt: !432)
!447 = distinct !DILexicalBlock(scope: !448, file: !277, line: 113, column: 7)
!448 = distinct !DILexicalBlock(scope: !449, file: !277, line: 112, column: 39)
!449 = distinct !DILexicalBlock(scope: !450, file: !277, line: 112, column: 2)
!450 = distinct !DILexicalBlock(scope: !409, file: !277, line: 112, column: 2)
!451 = !DILocation(line: 77, column: 20, scope: !441, inlinedAt: !446)
!452 = !DILocation(line: 77, column: 46, scope: !441, inlinedAt: !446)
!453 = !DILocation(line: 113, column: 7, scope: !448, inlinedAt: !432)
!454 = !DILocation(line: 119, column: 18, scope: !448, inlinedAt: !432)
!455 = !DILocation(line: 126, column: 6, scope: !270)
!456 = !DILocalVariable(name: "nh", arg: 1, scope: !457, file: !277, line: 174, type: !401)
!457 = distinct !DISubprogram(name: "parse_ip6hdr", scope: !277, file: !277, line: 174, type: !458, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !461)
!458 = !DISubroutineType(types: !459)
!459 = !{!51, !401, !52, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!461 = !{!456, !462, !463, !464}
!462 = !DILocalVariable(name: "data_end", arg: 2, scope: !457, file: !277, line: 175, type: !52)
!463 = !DILocalVariable(name: "ip6hdr", arg: 3, scope: !457, file: !277, line: 176, type: !460)
!464 = !DILocalVariable(name: "ip6h", scope: !457, file: !277, line: 178, type: !296)
!465 = !DILocation(line: 0, scope: !457, inlinedAt: !466)
!466 = distinct !DILocation(line: 131, column: 17, scope: !294)
!467 = !DILocation(line: 184, column: 11, scope: !468, inlinedAt: !466)
!468 = distinct !DILexicalBlock(scope: !457, file: !277, line: 184, column: 6)
!469 = !DILocation(line: 184, column: 15, scope: !468, inlinedAt: !466)
!470 = !DILocation(line: 184, column: 6, scope: !457, inlinedAt: !466)
!471 = !DILocation(line: 187, column: 12, scope: !472, inlinedAt: !466)
!472 = distinct !DILexicalBlock(scope: !457, file: !277, line: 187, column: 6)
!473 = !DILocation(line: 187, column: 20, scope: !472, inlinedAt: !466)
!474 = !DILocation(line: 187, column: 6, scope: !457, inlinedAt: !466)
!475 = !DILocalVariable(name: "nh", arg: 1, scope: !476, file: !277, line: 139, type: !401)
!476 = distinct !DISubprogram(name: "skip_ip6hdrext", scope: !277, file: !277, line: 139, type: !477, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!51, !401, !52, !301}
!479 = !{!475, !480, !481, !482, !484}
!480 = !DILocalVariable(name: "data_end", arg: 2, scope: !476, file: !277, line: 140, type: !52)
!481 = !DILocalVariable(name: "next_hdr_type", arg: 3, scope: !476, file: !277, line: 141, type: !301)
!482 = !DILocalVariable(name: "i", scope: !483, file: !277, line: 143, type: !51)
!483 = distinct !DILexicalBlock(scope: !476, file: !277, line: 143, column: 2)
!484 = !DILocalVariable(name: "hdr", scope: !485, file: !277, line: 144, type: !487)
!485 = distinct !DILexicalBlock(scope: !486, file: !277, line: 143, column: 47)
!486 = distinct !DILexicalBlock(scope: !483, file: !277, line: 143, column: 2)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_opt_hdr", file: !298, line: 63, size: 16, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !488, file: !298, line: 64, baseType: !301, size: 8)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hdrlen", scope: !488, file: !298, line: 65, baseType: !301, size: 8, offset: 8)
!492 = !DILocation(line: 0, scope: !476, inlinedAt: !493)
!493 = distinct !DILocation(line: 193, column: 9, scope: !457, inlinedAt: !466)
!494 = !DILocation(line: 0, scope: !483, inlinedAt: !493)
!495 = !DILocation(line: 0, scope: !485, inlinedAt: !493)
!496 = !DILocation(line: 193, column: 44, scope: !457, inlinedAt: !466)
!497 = !{!498, !168, i64 6}
!498 = !{!"ipv6hdr", !168, i64 0, !168, i64 0, !168, i64 1, !439, i64 4, !168, i64 6, !168, i64 7, !168, i64 8}
!499 = !DILocation(line: 149, column: 3, scope: !485, inlinedAt: !493)
!500 = !DILocation(line: 160, column: 4, scope: !501, inlinedAt: !493)
!501 = distinct !DILexicalBlock(scope: !485, file: !277, line: 149, column: 26)
!502 = !DILocation(line: 0, scope: !501, inlinedAt: !493)
!503 = !{!504, !168, i64 1}
!504 = !{!"ipv6_opt_hdr", !168, i64 0, !168, i64 1}
!505 = !DILocation(line: 146, column: 11, scope: !506, inlinedAt: !493)
!506 = distinct !DILexicalBlock(scope: !485, file: !277, line: 146, column: 7)
!507 = !DILocation(line: 146, column: 15, scope: !506, inlinedAt: !493)
!508 = !DILocation(line: 146, column: 7, scope: !485, inlinedAt: !493)
!509 = !{!504, !168, i64 0}
!510 = !DILocation(line: 156, column: 4, scope: !501, inlinedAt: !493)
!511 = !DILocation(line: 0, scope: !294)
!512 = !DILocation(line: 135, column: 15, scope: !343)
!513 = !DILocation(line: 135, column: 7, scope: !294)
!514 = !DILocalVariable(name: "nh", arg: 1, scope: !515, file: !277, line: 224, type: !401)
!515 = distinct !DISubprogram(name: "parse_icmp6hdr", scope: !277, file: !277, line: 224, type: !516, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !519)
!516 = !DISubroutineType(types: !517)
!517 = !{!51, !401, !52, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!519 = !{!514, !520, !521, !522}
!520 = !DILocalVariable(name: "data_end", arg: 2, scope: !515, file: !277, line: 225, type: !52)
!521 = !DILocalVariable(name: "icmp6hdr", arg: 3, scope: !515, file: !277, line: 226, type: !518)
!522 = !DILocalVariable(name: "icmp6h", scope: !515, file: !277, line: 228, type: !344)
!523 = !DILocation(line: 0, scope: !515, inlinedAt: !524)
!524 = distinct !DILocation(line: 137, column: 21, scope: !342)
!525 = !DILocation(line: 230, column: 13, scope: !526, inlinedAt: !524)
!526 = distinct !DILexicalBlock(scope: !515, file: !277, line: 230, column: 6)
!527 = !DILocation(line: 230, column: 17, scope: !526, inlinedAt: !524)
!528 = !DILocation(line: 230, column: 6, scope: !515, inlinedAt: !524)
!529 = !DILocation(line: 236, column: 17, scope: !515, inlinedAt: !524)
!530 = !{!531, !168, i64 0}
!531 = !{!"icmp6hdr", !168, i64 0, !168, i64 1, !439, i64 2, !168, i64 4}
!532 = !DILocation(line: 236, column: 9, scope: !515, inlinedAt: !524)
!533 = !DILocation(line: 0, scope: !342)
!534 = !DILocation(line: 141, column: 32, scope: !535)
!535 = distinct !DILexicalBlock(scope: !342, file: !3, line: 141, column: 8)
!536 = !DILocation(line: 147, column: 2, scope: !270)
!537 = !DILocation(line: 148, column: 1, scope: !270)
!538 = !DILocation(line: 0, scope: !182)
!539 = !DILocation(line: 62, column: 8, scope: !182)
!540 = !DILocation(line: 63, column: 6, scope: !193)
!541 = !DILocation(line: 63, column: 6, scope: !182)
!542 = !DILocation(line: 71, column: 37, scope: !182)
!543 = !DILocation(line: 71, column: 17, scope: !182)
!544 = !DILocation(line: 71, column: 9, scope: !182)
!545 = !DILocation(line: 73, column: 37, scope: !182)
!546 = !DILocation(line: 73, column: 17, scope: !182)
!547 = !DILocation(line: 73, column: 9, scope: !182)
!548 = !DILocation(line: 74, column: 11, scope: !204)
!549 = !DILocation(line: 74, column: 15, scope: !204)
!550 = !DILocation(line: 74, column: 6, scope: !182)
!551 = !DILocation(line: 77, column: 19, scope: !182)
!552 = !DILocation(line: 77, column: 17, scope: !182)
!553 = !DILocation(line: 78, column: 21, scope: !182)
!554 = !DILocation(line: 78, column: 8, scope: !182)
!555 = !DILocation(line: 78, column: 19, scope: !182)
!556 = !DILocation(line: 80, column: 17, scope: !182)
!557 = !DILocation(line: 80, column: 8, scope: !182)
!558 = !DILocation(line: 80, column: 15, scope: !182)
!559 = !DILocation(line: 82, column: 2, scope: !182)
!560 = !DILocation(line: 83, column: 1, scope: !182)
!561 = !DILocation(line: 0, scope: !222)
!562 = !DILocation(line: 92, column: 8, scope: !222)
!563 = !DILocation(line: 93, column: 6, scope: !236)
!564 = !DILocation(line: 93, column: 6, scope: !222)
!565 = !DILocation(line: 96, column: 37, scope: !222)
!566 = !DILocation(line: 96, column: 17, scope: !222)
!567 = !DILocation(line: 96, column: 9, scope: !222)
!568 = !DILocation(line: 97, column: 37, scope: !222)
!569 = !DILocation(line: 97, column: 17, scope: !222)
!570 = !DILocation(line: 97, column: 9, scope: !222)
!571 = !DILocation(line: 98, column: 11, scope: !245)
!572 = !DILocation(line: 98, column: 15, scope: !245)
!573 = !DILocation(line: 98, column: 6, scope: !222)
!574 = !DILocation(line: 101, column: 13, scope: !222)
!575 = !DILocation(line: 102, column: 17, scope: !222)
!576 = !DILocation(line: 102, column: 8, scope: !222)
!577 = !DILocation(line: 102, column: 15, scope: !222)
!578 = !DILocation(line: 104, column: 2, scope: !222)
!579 = !DILocation(line: 105, column: 1, scope: !222)
!580 = distinct !{!580, !581}
!581 = !{!"llvm.loop.mustprogress"}
!582 = !{i64 2148664702}
!583 = !{i64 2148665054}
!584 = distinct !{!584, !581}
!585 = distinct !{!585, !581}
!586 = distinct !{!586, !581}
!587 = distinct !{!587, !581}
!588 = distinct !{!588, !581}
!589 = distinct !{!589, !581}
!590 = distinct !{!590, !581}
!591 = distinct !{!591, !581}
!592 = distinct !{!592, !581}
!593 = distinct !{!593, !581}
!594 = distinct !{!594, !581}
!595 = distinct !{!595, !581}
!596 = distinct !{!596, !581}
!597 = !{i64 2148665277}
!598 = distinct !{!598, !581}
!599 = !{i64 2148664900}
!600 = distinct !{!600, !581}
!601 = distinct !{!601, !581}
!602 = distinct !{!602, !581}
!603 = distinct !{!603, !581}
!604 = distinct !{!604, !581}
!605 = distinct !{!605, !581}
!606 = distinct !{!606, !581}
!607 = distinct !{!607, !581}
!608 = distinct !{!608, !581}
!609 = distinct !{!609, !581}
!610 = distinct !{!610, !581}
!611 = distinct !{!611, !581}
!612 = distinct !{!612, !581}
