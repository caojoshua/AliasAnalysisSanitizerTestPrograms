CC = clang++
CXX_FLAGS = -fsanitize=aasan -ltinfo
SRC = hello.cpp
BUILD = $(CC) $(CXX_FLAGS) $(SRC) $(shell llvm-config --ldflags) -lLLVMAliasAnalysisSanitizer -lLLVMSupport

all:
	$(BUILD)

bytecode:
	$(CC) $(CXX_FLAGS) -c -emit-llvm $(SRC) 
	llvm-dis hello.bc

offline detection:
	$(BUILD) -faasan-offline-detection

test:
	$(CC) $(CXX_FLAGS) $(SRC)
