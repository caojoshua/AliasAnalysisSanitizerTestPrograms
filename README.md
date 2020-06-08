# AliasAnalysisSanitizerTestPrograms
Separate repository to test the AliasAnalysisSanitizer(Aasan)

This repository contains everything needed to build a program with Aasan without worrying about providing flags and linking. Ideally, the build would be automated in the Clang driver, but that is a work in progress.
[AliasAnalysisSanitizer can be found here](https://github.com/caojoshua/llvm-project/tree/aasan)

### Prerequisites
The makefile assumes that the default clang/llvm is clang-8 and llvm-8. The Makefile is currently simple enough to make changes according to your own system if necessary.

### Usage
To compile to test program with Aasan instrumentation:
```
make
```
Running the executable will produce YAML log output representing pointer definition and memory allocaiton data
```
./a.out
```
To view what the bytecode to see what the instrumentation looks like
```
make bytecode
```
You can view the bytecode in `hello.ll`
