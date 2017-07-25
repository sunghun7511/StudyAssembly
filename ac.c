#include <stdio.h>
#include <stdlib.h>

int main(int argc, char * argv[]){
	if(argc < 2){
		printf("Usage : %s <filename(without .asm)>", argv[0]);
		exit(-1);
	}
	int status;
	
	puts("\n\n");
	
	status = system("nasm -f elf ./%s.asm", argv[1]);
	if(!status){
		printf("\n\nError on assemble!\nExit code is %d", status);
		exit(-1);
	}

	status = system("ld -m elf_i386 -o ./%s ./%s.o", argv[1], argv[1]);
	if(!status){
		printf("\n\nError on linking!\nExit code is %d", status);
		exit(-1);
	}

	puts("\n\nSuccess!");
	exit(0);
}
