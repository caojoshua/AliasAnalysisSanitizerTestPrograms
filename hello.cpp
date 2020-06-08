#include <stdio.h>
#include <stdlib.h>
#include <iostream>

struct S {
	S(int i) : x(i) {};
	int x;
};


int main() {
	S* s = new S(1);

	int* i = (int*) malloc(5*sizeof(int));
  *i = 10;
	free(i);

	delete s;
	return 0;
}
