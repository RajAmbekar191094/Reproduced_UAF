NAME	= finedb-cli
SRC	= finedb-cli.c

# ###################################################################

# Paths to header files
# IPATH   = -I. -I../../include -I../server
# IPATH = \
#     -I. \
#     -I../../include \
#     -I../../lib/ylib \
#     -I../../lib/nanomsg/src \
#     -I../../lib/lmdb/libraries/liblmdb \
#     -I../../lib/snappy-c \
#     -I../../lib/linenoise
# 	-I../lib
# 	-I../server
IPATH = \
    -I. \
    -I../../include \
    -I../server \
	-I../lib  \
	-I../../lib/ylib \
    -I../../lib/nanomsg/src \
    -I../../lib/lmdb \
    -I../../lib/snappy-c \
    -I../../lib/linenoise

# Path to libraries and lib's names
LDPATH  = -L. -L../../lib -lsnappy -ly -lfinedb -llinenoise -lrt -Wl,-rpath -Wl,'$$ORIGIN/../lib'
# Compiler options
EXEOPT  = -O2 # -g for debug

# ###################################################################

OBJS	= $(SRC:.c=.o)

# Objects compilation options
CFLAGS  = -ansi -std=c99 -pedantic-errors -Wall -Wextra -Wmissing-prototypes -Wno-strict-prototypes\
          -Wno-long-long -Wno-unused-parameter -D_GNU_SOURCE -D_THREAD_SAFE \
          $(IPATH) $(EXEOPT).
CFLAGS += -DNN_USE_POLL -DNN_USE_EVENTFD -DNN_HAVE_PIPE -DNN_HAVE_SEMAPHORE -DNN_HAVE_SOCKETPAIR -DNN_HAVE_POLL


# Link options
LDFLAGS = $(EXEOPT) $(LDPATH)

LLVM_CLANG := /home/raj/SVF/llvm-16.0.0.obj/bin/clang

# ###################################################################

.PHONY: all clean generate-ll

all: clean $(NAME)

clean:
	rm -f $(NAME) ../$(NAME) $(OBJS) ../../bin/$(NAME)
	rm -rf ll_output

$(NAME): $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) -o $(NAME)
	strip $(NAME)
	mv $(NAME) ../../bin/

.c.o:
	$(CC) $(CFLAGS) -c $<

generate-ll:
	mkdir -p ll_output
	@for f in $(SRC); do \
		out=ll_output/$$f.ll; \
		mkdir -p $$(dirname $$out); \
		$(LLVM_CLANG) -S -emit-llvm -O0 -g $(CFLAGS) $$f -o $$out || echo "Failed: $$f"; \
	done
