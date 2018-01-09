.PHONY : build fmt setup

BUILDER_IMAGE := clang-build-env
BUILDER_WORK_DIR := /cpp/competition
BUILDER_CMD := docker run --rm -v `pwd`:$(BUILDER_WORK_DIR) -w $(BUILDER_WORK_DIR) $(BUILDER_IMAGE)

run: clean
	$(BUILDER_CMD) make -f dev.mk run

build: clean
	$(BUILDER_CMD) make -f dev.mk clean build

clean:
	-rm CMakeCache.txt
	-rm cmake_install.cmake
	-rm Makefile
	-rm -r CMakeFiles

fmt:
	$(BUILDER_CMD) make -f dev.mk fmt

setup:
	docker build -f Dockerfile.builder -t $(BUILDER_IMAGE) .
