SONAME		= libfinedb.so
SRC		= libfinedb.c
INCLUDES	= libfinedb.h

# ###################################################################

# Paths to header files
# IPATH   = -I. -I../../include -I../server
IPATH = \
    -I. \
    -I../../include \
	-I../server \
    -I../../lib/ylib \
    -I../../lib/nanomsg/src \
    -I../../lib/lmdb \
    -I../../lib/snappy-c \
    -I../../lib/linenoise

# Path to libraries and lib's names
LDPATH  = -L. -L../../lib -ly -lsnappy
# Compiler options
EXEOPT  = -O2 # -g for debug

# ###################################################################

OBJS	= $(SRC:.c=.o)

# Objects compilation options
CFLAGS  = -ansi -std=c99 -pedantic-errors -Wall -Wextra -Wmissing-prototypes \
          -Wno-long-long -Wno-unused-parameter -D_GNU_SOURCE -D_THREAD_SAFE \
          -fPIC $(IPATH) $(EXEOPT)
CFLAGS += -DNN_USE_POLL -DNN_USE_EVENTFD -DNN_HAVE_PIPE -DNN_HAVE_POLL


# Link options
LDFLAGS = $(EXEOPT) $(LDPATH) -shared -Wl,-soname,$(SONAME)

LLVM_CLANG := /home/raj/SVF/llvm-16.0.0.obj/bin/clang

# ###################################################################

.PHONY: all clean generate-ll

$(SONAME): $(OBJS) $(SRC)
	$(CC) $(OBJS) $(LDFLAGS) -o $(SONAME)
	mv $(SONAME) ../../lib/
	cp $(INCLUDES) ../../include/

all: clean $(SONAME)

clean:
	rm -f $(SONAME) ../../lib/$(SONAME) $(OBJS)
	rm -f ../../include/$(INCLUDES)
	rm -rf ll_output

.c.o:
	$(CC) $(CFLAGS) -c $<

generate-ll:
	mkdir -p ll_output
	@for f in $(SRC); do \
		out=ll_output/$$f.ll; \
		mkdir -p $$(dirname $$out); \
		$(LLVM_CLANG) -S -emit-llvm -O0 -g $(CFLAGS) $$f -o $$out || echo "Failed: $$f"; \
	done
