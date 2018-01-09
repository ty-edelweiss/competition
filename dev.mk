.PHONY : run build clean fmt

CC := clang
CXX := clang++

TARGET := bin/test.exe
BUILD_TYPE := Debug

run: build
	$(TARGET)

build: clean
	CC=$(CC) CXX=$(CXX) cmake -G "Unix Makefiles" . -DCMAKE_BUILD_TYPE=$(BUILD_TYPE)
	make

clean:
	-rm $(TARGET)

fmt: 
	clang-format -i `find . -type f -regex '.*[c|h]pp'`
