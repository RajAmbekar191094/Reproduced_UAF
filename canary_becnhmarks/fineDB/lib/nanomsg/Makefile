LLVM_CLANG := /home/raj/SVF/llvm-16.0.0.obj/bin/clang
LLVM_CLANGXX := /home/raj/SVF/llvm-16.0.0.obj/bin/clang++
CFLAGS := -I. -Wno-strict-prototypes -Isrc -I../.. -I../../include
CFLAGS += -DNN_USE_POLL -DNN_USE_EVENTFD -DNN_HAVE_PIPE -DNN_HAVE_SEMAPHORE -DNN_HAVE_SOCKETPAIR -DNN_HAVE_POLL




HEADERS	=	src/nn.h \
		src/pair.h \
		src/reqrep.h \
		src/pubsub.h \
		src/survey.h \
		src/pipeline.h \
		src/bus.h \
		src/inproc.h \
		src/ipc.h \
		src/tcp.h

.PHONY: all clean lib

lib:
	cd build; cmake ..; make
	mv build/libnanomsg.so* ../
	if [ ! -d ../../include/nanomsg ]; then mkdir ../../include/nanomsg; fi
	cp ${HEADERS} ../../include/nanomsg

all: clean lib

clean:
	cd build; rm -rf *
	rm -f ../libnanomsg.so*
	rm -rf ../../include/nanomsg

.PHONY: generate-ll

generate-ll:
	mkdir -p ll_output
	@find . -name '*.c' -o -name '*.cpp' | while read f; do \
		out=ll_output/$$f.ll; \
		mkdir -p $$(dirname $$out); \
		DEFS="-Isrc -DNN_USE_POLL -DNN_USE_EVENTFD -DNN_HAVE_PIPE -DNN_HAVE_SEMAPHORE -DNN_HAVE_SOCKETPAIR"; \
		if echo $$f | grep -q '\.cpp$$'; then \
			$(LLVM_CLANGXX) -S -emit-llvm -O0 -g $$DEFS $(CFLAGS) $$f -o $$out || echo "Failed: $$f"; \
		else \
			$(LLVM_CLANG) -S -emit-llvm -O0 -g $$DEFS $(CFLAGS) $$f -o $$out || echo "Failed: $$f"; \
		fi \
	done
