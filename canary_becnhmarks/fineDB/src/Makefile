.PHONY: all clean src generate-ll

src:
	cd server; make
	cd lib; make
	cd cli; make

all:
	cd server; make all
	cd lib; make all
	cd cli; make all

clean:
	cd server; make clean
	cd lib; make clean
	cd cli; make clean

generate-ll:
	cd server && make generate-ll
	cd lib && make generate-ll
	cd cli && make generate-ll
