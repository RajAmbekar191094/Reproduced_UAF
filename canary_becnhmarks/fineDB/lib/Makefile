SUBDIRS =	lmdb		\
		nanomsg		\
		snappy-c	\
		ylib		\
		linenoise

.PHONY: default clean all

default:
	for i in $(SUBDIRS); do cd $$i; make; cd ..; done

clean:
	for i in $(SUBDIRS); do cd $$i; make clean; cd ..; done
	rm -f *.a *~

all: clean default

generate-ll:
	for i in $(SUBDIRS); do \
		if [ -f $$i/Makefile ]; then \
			cd $$i && make generate-ll && cd ..; \
		fi \
	done

