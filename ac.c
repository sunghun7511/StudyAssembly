#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define A "nasm -f elf ./"
#define B ".asm"

#define C "ld -m elf_i386 -o ./"
#define D " ./"
#define E ".o"


int main(int argc, char * argv[]){
	if(argc < 2){
		printf("Usage\n %s <filename(without .asm)>\n", argv[0]);
		exit(-1);
	}
	int status;
	int size = 0;
	char *command;

	size += sizeof(A) * sizeof(char);
	size += sizeof(B) * sizeof(char);

	size += sizeof(argv[1]) * sizeof(char);
	
	command = (char *)malloc(size);
	if(!command){
		printf("\n\n Error on nasm command malloc\n");
		exit(-1);
	}
	
	strcpy(command, A);
	strcat(command, argv[1]);
	strcat(command, B);
	
	printf("\n\n Assemble command is : %s \n\n", command);

	status = system(command);
	if(status != 0){
		printf("\n\nError on assemble!\nExit code is %d\n", status);
		exit(-1);
	}
	free(command);
	
	
	size = 0;
	size += sizeof(C) * sizeof(char);
	size += sizeof(D) * sizeof(char);
	size += sizeof(E) * sizeof(char);

	size += sizeof(argv[1]) * sizeof(char) * 2;
	
	command = (char *)malloc(size);
	if(!command){
		printf("\n\n Error on ld command malloc\n");
		exit(-1);
	}
	
	strcpy(command, C);
	strcat(command, argv[1]);
	strcat(command, D);
	strcat(command, argv[1]);
	strcat(command, E);

	printf("\n\n ld command is : %s \n\n", command);

	status = system(command);
	if(status != 0){
		printf("\n\nError on linking!\nExit code is %d\n", status);
		exit(-1);
	}

	puts("\n\nSuccess!\n");
	exit(0);
}
