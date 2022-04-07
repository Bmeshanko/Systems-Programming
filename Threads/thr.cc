#include <pthread.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

pthread_mutex_t lock;

void printC(const char * s) {
	pthread_mutex_lock(&lock);

	for (int i = 0; i < 10; i++) {
		printf("%s", s);
	}

	printf("\n");

	pthread_mutex_unlock(&lock);
}

int main (int argc, const char **argv) {
	pthread_t t1, t2;
	pthread_attr_t attr;
	
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_SYSTEM);

	pthread_mutex_init(&lock, 0);

	printC("A");

	pthread_create(&t1, &attr, (void * (*)(void *)) printC, (void *) "B" );
	pthread_create(&t2, &attr, (void * (*)(void *)) printC, (void *) "C" );
}
