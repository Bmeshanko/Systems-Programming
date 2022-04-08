#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include </home/ben/Systems/Macros/macro.h>

int main(int argc, const char **argv) {
	char * p1 = (char *) malloc(32); // Stored in the Heap
	char p2[32]; // Stored in the Stack;

	strcpy(p1, "Hello World!");
	strcpy(p2, "I am a Pointer!");

	printf("Address of Pointer: %p\n", p1);
	printf("Value of Pointer: %s\n\n", p1);

	printf("Address of Pointer: %p\n", p2);
	printf("Value of Pointer: %s\n\n", p2);

	fflush(stdout);

	FREE(p1);

	printf("Address of Pointer after FREE: %p\n", p1);
}
