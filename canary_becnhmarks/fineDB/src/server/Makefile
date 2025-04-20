# ###################################
# #            MAKEFILE             #
# ###################################

# Executable's name
NAME	=	finedb-server
# Source files
SRC	=	main.c			\
		self_path.c		\
		finedb.c		\
		database.c		\
		server.c		\
		writer_thread.c		\
		connection_thread.c	\
		command_setdb.c		\
		command_get.c		\
		command_del.c		\
		command_put.c		\
		command_list.c		\
		command_drop.c		\
		command_start_stop.c	\
		command_ping.c

# ###################################################################

# Paths to header files
# IPATH	= -I. -I../../include
IPATH = \
    -I. \
    -I../../include \
    -I../../lib/ylib \
    -I../../lib/nanomsg/src \
    -I../../lib/lmdb \
    -I../../lib/snappy-c \
    -I../../lib/linenoise

# Path to libraries and lib's names
LDPATH	= -L. -L../../lib -llmdb -lnanomsg -lsnappy -ly -lpthread -lrt -Wl,-rpath -Wl,'$$ORIGIN/../lib'
# Compiler options
EXEOPT	= -O3 # -g for debug

# ###################################################################

CC	= gcc
OBJS	= $(SRC:.c=.o)

# Objects compilation options
CFLAGS	= -ansi -std=c99 -pedantic-errors -Wall -Wextra -Wmissing-prototypes -Wno-strict-prototypes\
	  -Wno-long-long -Wno-unused-parameter -D_GNU_SOURCE -D_THREAD_SAFE \
	  $(IPATH) $(EXEOPT)
CFLAGS += -DNN_USE_POLL -DNN_USE_EVENTFD -DNN_HAVE_PIPE -DNN_HAVE_POLL




# Link options
LDFLAGS	= $(EXEOPT) $(LDPATH)

# LLVM Clang for IR generation
LLVM_CLANG := /home/raj/SVF/llvm-16.0.0.obj/bin/clang

# ###################################################################

.PHONY: clean all generate-ll

$(NAME): $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) -o $(NAME)
	strip $(NAME)
	mv $(NAME) ../../bin/

clean:
	rm -f $(NAME) $(OBJS) *~ ../../bin/$(NAME)
	rm -rf ll_output

all: clean $(NAME)

.c.o:
	$(CC) $(CFLAGS) -c $<

generate-ll:
	mkdir -p ll_output
	@for f in $(SRC); do \
		out=ll_output/$$f.ll; \
		mkdir -p $$(dirname $$out); \
		$(LLVM_CLANG) -S -emit-llvm -O0 -g $(CFLAGS) $$f -o $$out || echo "Failed: $$f"; \
	done
