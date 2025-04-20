SONAME		= liblmdb.so
SRC		= mdb.c \
		  midl.c
INCLUDES	= lmdb.h

LLVM_CLANG := /home/raj/SVF/llvm-16.0.0.obj/bin/clang
LLVM_CLANGXX := /home/raj/SVF/llvm-16.0.0.obj/bin/clang++
# CFLAGS := -I. -I../..


CC	= gcc
W	= -W -Wall -Wno-unused-parameter -Wno-strict-prototypes -Wbad-function-cast
OPT	= -O2 -g
CFLAGS	= -pthread $(OPT) $(W) $(XCFLAGS) -fPIC
CFLAGS += -DNN_USE_POLL -DNN_USE_EVENTFD -DNN_HAVE_PIPE -DNN_HAVE_POLL

# link options
LDFLAGS	= -shared -Wl,-soname,$(SONAME)

OBJS	= $(SRC:.c=.o)

.PHONY: all clean lib

lib: $(OBJS) $(SRC)
	$(CC) $(OBJS) $(LDFLAGS) -o $(SONAME)
	cp $(SONAME) ../
	cp $(INCLUDES) ../../include/

all: clean lib

clean:
	rm -f $(OBJS) $(SONAME) *~
	rm -f ../$(SONAME)
	cd ../../include ; rm -f $(INCLUDES)

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