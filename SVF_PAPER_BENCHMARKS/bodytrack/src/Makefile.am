@SET_MAKE@

SUBDIRS = FlexImageLib TrackingBenchmark
AM_CPPFLAGS = -DHAVE_LIBPTHREAD

LLVM_OUTPUT_DIR = $(builddir)/ll_output

generate-ll:
	mkdir -p $(LLVM_OUTPUT_DIR)
	@echo "Generating LLVM IR (.ll) files into $(LLVM_OUTPUT_DIR)"

	@for src in \
		FlexImageLib/FlexImage.cpp \
		FlexImageLib/FlexIO.cpp \
		TrackingBenchmark/AnnealingFactor.cpp \
		TrackingBenchmark/BodyGeometry.cpp \
		TrackingBenchmark/BodyPose.cpp \
		TrackingBenchmark/CameraModel.cpp \
		TrackingBenchmark/CovarianceMatrix.cpp \
		TrackingBenchmark/ImageMeasurements.cpp \
		TrackingBenchmark/ImageProjection.cpp \
		TrackingBenchmark/RandomGenerator.cpp \
		TrackingBenchmark/TrackingModel.cpp \
		TrackingBenchmark/main.cpp \
		TrackingBenchmark/TrackingModelOMP.cpp \
		TrackingBenchmark/TrackingModelPthread.cpp \
		TrackingBenchmark/AsyncIO.cpp \
		TrackingBenchmark/threads/Barrier.cpp \
		TrackingBenchmark/threads/Condition.cpp \
		TrackingBenchmark/threads/Mutex.cpp \
		TrackingBenchmark/threads/RWLock.cpp \
		TrackingBenchmark/threads/Thread.cpp \
		TrackingBenchmark/threads/WorkerGroup.cpp ; do \
		base=`basename $$src`; \
		dir=`dirname $$src`; \
		outfile="$(LLVM_OUTPUT_DIR)/$${base%.*}.ll"; \
		echo "Generating $$outfile"; \
		$(CXX) -S -emit-llvm -g -O0 -std=c++11 -DHAVE_LIBPTHREAD \
			-I$(srcdir)/FlexImageLib \
			-I$(srcdir)/TrackingBenchmark \
			-I$(srcdir)/TrackingBenchmark/threads \
			-c $(srcdir)/$$src -o $$outfile || exit 1; \
	done
