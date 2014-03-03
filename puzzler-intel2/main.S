
main.o:     file format elf64-x86-64


Disassembly of section .text.startup:

0000000000000000 <main>:
#include "puzzler.h"

int main(int argc, char *argv[]) {
   0:	55                   	push   rbp
   1:	53                   	push   rbx
   2:	48 89 f3             	mov    rbx,rsi
   5:	48 83 ec 18          	sub    rsp,0x18
	matrix_t * m;
	int succ = 0, ix;

	if(argc < 3) {
   9:	83 ff 02             	cmp    edi,0x2
#include "puzzler.h"

int main(int argc, char *argv[]) {
	matrix_t * m;
	int succ = 0, ix;
   c:	c7 04 24 00 00 00 00 	mov    DWORD PTR [rsp],0x0

	if(argc < 3) {
  13:	7e 7f                	jle    94 <main+0x94>
  return strtod (__nptr, (char **) NULL);
}
__extern_inline int
__NTH (atoi (__const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);
  15:	48 8b 7e 08          	mov    rdi,QWORD PTR [rsi+0x8]
  19:	ba 0a 00 00 00       	mov    edx,0xa
  1e:	31 f6                	xor    esi,esi
  20:	e8 00 00 00 00       	call   25 <main+0x25>
		err(1, "./puzzler {0..} <EDGES>");
	}

	ix = atoi(argv[1]);

	m = edges2Matrix(argv);
  25:	48 89 df             	mov    rdi,rbx
  28:	48 89 c5             	mov    rbp,rax
  2b:	e8 00 00 00 00       	call   30 <main+0x30>
	if(!m) {
  30:	48 85 c0             	test   rax,rax
  33:	74 50                	je     85 <main+0x85>
		err(1, "edges error");
	}

	switch(ix) {
  35:	83 fd 03             	cmp    ebp,0x3
  38:	74 16                	je     50 <main+0x50>
  3a:	83 fd 04             	cmp    ebp,0x4
  3d:	74 39                	je     78 <main+0x78>
		case 4: {
			solve4(m, &succ);
			break;
		}
		default : {
			err(1, "index doesn't exist");
  3f:	be 00 00 00 00       	mov    esi,0x0
  44:	bf 01 00 00 00       	mov    edi,0x1
  49:	31 c0                	xor    eax,eax
  4b:	e8 00 00 00 00       	call   50 <main+0x50>
		err(1, "edges error");
	}

	switch(ix) {
		case 3: {
			solve3(m, &succ);
  50:	48 89 e6             	mov    rsi,rsp
  53:	48 89 c7             	mov    rdi,rax
  56:	e8 00 00 00 00       	call   5b <main+0x5b>
}

__extern_always_inline int
printf (__const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  5b:	8b 14 24             	mov    edx,DWORD PTR [rsp]
  5e:	be 00 00 00 00       	mov    esi,0x0
  63:	bf 01 00 00 00       	mov    edi,0x1
  68:	31 c0                	xor    eax,eax
  6a:	e8 00 00 00 00       	call   6f <main+0x6f>
	}

	printf("successes: %i\n", succ);

	return 0;
}
  6f:	48 83 c4 18          	add    rsp,0x18
  73:	31 c0                	xor    eax,eax
  75:	5b                   	pop    rbx
  76:	5d                   	pop    rbp
  77:	c3                   	ret    
		case 3: {
			solve3(m, &succ);
			break;
		}
		case 4: {
			solve4(m, &succ);
  78:	48 89 e6             	mov    rsi,rsp
  7b:	48 89 c7             	mov    rdi,rax
  7e:	e8 00 00 00 00       	call   83 <main+0x83>
			break;
  83:	eb d6                	jmp    5b <main+0x5b>

	ix = atoi(argv[1]);

	m = edges2Matrix(argv);
	if(!m) {
		err(1, "edges error");
  85:	be 00 00 00 00       	mov    esi,0x0
  8a:	bf 01 00 00 00       	mov    edi,0x1
  8f:	e8 00 00 00 00       	call   94 <main+0x94>
int main(int argc, char *argv[]) {
	matrix_t * m;
	int succ = 0, ix;

	if(argc < 3) {
		err(1, "./puzzler {0..} <EDGES>");
  94:	be 00 00 00 00       	mov    esi,0x0
  99:	bf 01 00 00 00       	mov    edi,0x1
  9e:	31 c0                	xor    eax,eax
  a0:	e8 00 00 00 00       	call   a5 <main+0xa5>
