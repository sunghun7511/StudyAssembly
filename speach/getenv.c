#include <stdio.h>
#include <stdlib.h>

int main(int argc, char * argv[]){
	printf("%s is on %p\n", argv[1], getenv(argv[1]));
	return 0;
}
