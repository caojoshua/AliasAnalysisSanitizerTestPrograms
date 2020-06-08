CC = clang++
CXX_FLAGS = -fsanitize=aasan -ltinfo -v
SRC = hello.cpp

all:
	$(CC) $(CXX_FLAGS) $(SRC) $(shell llvm-config --ldflags) -lLLVMAliasAnalysisSanitizer -lLLVMSupport

bytecode:
	$(CC) $(CXX_FLAGS) -c -emit-llvm $(SRC) 
	llvm-dis hello.bc

test:
	$(CC) $(CXX_FLAGS) $(SRC)
