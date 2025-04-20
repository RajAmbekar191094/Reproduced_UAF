# SRC	= test_lmdb.c

# IPATH   = -I. -I../include
# LDPATH  = -L. -L../lib -llmdb -lnanomsg -lsnappy -ly -lpthread -lrt -Wl,-rpath -Wl,'$$ORIGIN/../lib'

# CFLAGS	= -ansi -std=c99 -pedantic-errors -Wall -Wextra -Wmissing-prototypes \
# 	  -Wno-long-long -Wno-unused-parameter -D_GNU_SOURCE -D_THREAD_SAFE \
# 	  $(IPATH) $(EXEOPT)

# LDFLAGS = $(EXEOPT) $(LDPATH)

# OBJS    = $(SRC:.c=.o)

# .PHONY: all clean test_put test_get

# all: clean test_lmdb

# clean:
# 	rm -f test_lmdb $(OBJS)

# test_lmdb: $(OBJS)
# 	gcc $(OBJS) $(LDFLAGS) -o test_lmdb

# .c.o:
# 	gcc $(CFLAGS) -c $<

SRC	= test_lmdb.c

# IPATH   = -I. -I../include
IPATH = \
    -I. \
    -I../lib \
    -I../lib/lmdb \
    -I../lib/nanomsg/src \
    -I../lib/snappy-c \
    -I../lib/ylib \
    -I../lib/linenoise


LDPATH  = -L. -L../lib -llmdb -lnanomsg -lsnappy -ly -lpthread -lrt -Wl,-rpath -Wl,'$$ORIGIN/../lib'

CFLAGS	= -ansi -std=c99 -pedantic-errors -Wall -Wextra -Wmissing-prototypes -Wno-strict-prototypes\
	  -Wno-long-long -Wno-unused-parameter -D_GNU_SOURCE -D_THREAD_SAFE \
	  $(IPATH) $(EXEOPT)
CFLAGS += -DNN_USE_POLL -DNN_USE_EVENTFD -DNN_HAVE_PIPE -DNN_HAVE_POLL


LDFLAGS = $(EXEOPT) $(LDPATH)

OBJS    = $(SRC:.c=.o)

LLVM_CLANG := /home/raj/SVF/llvm-16.0.0.obj/bin/clang

.PHONY: all clean test_lmdb generate-ll

all: clean test_lmdb

clean:
	rm -f test_lmdb $(OBJS)
	rm -rf ll_output

test_lmdb: $(OBJS)
	gcc $(OBJS) $(LDFLAGS) -o test_lmdb

.c.o:
	gcc $(CFLAGS) -c $<

generate-ll:
	mkdir -p ll_output
	@for f in $(SRC); do \
		out=ll_output/$$f.ll; \
		mkdir -p $$(dirname $$out); \
		$(LLVM_CLANG) -S -emit-llvm -O0 -g $(CFLAGS) $$f -o $$out || echo "Failed to compile $$f to .ll"; \
	done


