# #####################################################################
#                              Makefile
# #####################################################################

LLVM_CLANG := /home/raj/SVF/llvm-16.0.0.obj/bin/clang
LLVM_CLANGXX := /home/raj/SVF/llvm-16.0.0.obj/bin/clang++

# Library's name
SONAME =	liby.so

# Name of source files
SRC =		yvect.c		\
		ystr.c		\
		ylog.c		\
		ybin.c		\
		ydynabin.c	\
		ylist.c

# Name of header files
INCLUDES =	ydefs.h		\
		yerror.h	\
		ystr.h		\
		ylog.h		\
		yvect.h		\
		ybin.h		\
		ydynabin.h	\
		ylist.h

# #####################################################################

# Paths to header files
IPATH   =       -I.
# Path to libraries and lib's names
LDPATH  =       -L.
# Compiler options
EXEOPT  =       -O2 # -g for debug

# #####################################################################

CC      =	gcc
RM      =	/bin/rm -f
OBJS    =	$(SRC:.c=.o)

# Objects compilation options
CFLAGS  =	-ansi -std=c99 -pedantic -Wall -Wextra -Wmissing-prototypes -Wno-strict-prototypes\
		  -Wno-long-long -Wno-pointer-arith $(IPATH) -D_GNU_SOURCE \
		  -D_LARGEFILE_SOURCE -D_THREAD_SAFE -fPIC
CFLAGS += -DNN_USE_POLL -DNN_USE_EVENTFD -DNN_HAVE_PIPE -DNN_HAVE_POLL

# Link options
LDFLAGS = -shared -Wl,-soname,$(SONAME)

# #####################################################################

.PHONY: clean all

$(SONAME): $(OBJS) $(SRC)
	$(CC) $(OBJS) $(LDFLAGS) -o $(SONAME)
	cp $(SONAME) ../
	cp $(INCLUDES) ../../include/

clean:
	$(RM) $(OBJS) $(SONAME) *~
	$(RM) ../$(SONAME)
	cd ../../include ; $(RM) $(INCLUDES)

all: clean $(NAME)

.c.o:
	$(CC) $(CFLAGS) -c $<

.PHONY: generate-ll

generate-ll:
	mkdir -p ll_output
	@find . -name '*.c' -o -name '*.cpp' | while read f; do \
		out=ll_output/$$f.ll; \
		mkdir -p $$(dirname $$out); \
		if echo $$f | grep -q '\.cpp$$'; then \
			$(LLVM_CLANGXX) -S -emit-llvm -O0 -g $(CFLAGS) $$f -o $$out || echo "Failed: $$f"; \
		else \
			$(LLVM_CLANG) -S -emit-llvm -O0 -g $(CFLAGS) $$f -o $$out || echo "Failed: $$f"; \
		fi \
	done
