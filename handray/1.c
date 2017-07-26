#include <stdio.h>

void kkkk_CAL(int *bl, int *ax){
	*bl -= 1;
	PROC_kkkk(bl, ax);
	*bl += 1;
	*ax = (*ax) * (*bl);
}

void PROC_kkkk(int *bl, int *ax){
	if(*bl >= 1){
		kkkk_CAL(bl, ax);
		return;
	}
	*ax = 1;
}

int decompress(int temp){
	if(temp >= 1){
		return decompress(temp - 1) * temp;
	}else{
		return 1;
	}
}

int main(void){
	int kkkk = 1;
	int bl = 3, ax = 1;
	
	/*
	while(bl >= 1){
		ax = ax * bl;
		bl -= 1;
	}
	*/
	// PROC_kkkk(&bl, &ax);
	ax = decompress(bl);
	ax += 0x30;
	kkkk = ax;

	printf("%c", kkkk);
	return 0;
}
