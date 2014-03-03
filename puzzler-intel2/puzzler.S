
puzzler.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <solveV3.part.1>:
		}
	}
}


void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {
   0:	41 57                	push   r15
	if(m->len == 0) {
		(*suc)++;
		return;
	}

	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
   2:	44 0f b6 fa          	movzx  r15d,dl
		}
	}
}


void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {
   6:	49 89 f2             	mov    r10,rsi
   9:	41 56                	push   r14
   b:	41 55                	push   r13
   d:	41 54                	push   r12
   f:	55                   	push   rbp
  10:	48 89 fd             	mov    rbp,rdi
  13:	53                   	push   rbx
  14:	48 83 ec 48          	sub    rsp,0x48
	if(m->len == 0) {
		(*suc)++;
		return;
	}

	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
  18:	4a 8b 74 fe 08       	mov    rsi,QWORD PTR [rsi+r15*8+0x8]
		}
	}
}


void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {
  1d:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  22:	4c 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],r9
	if(m->len == 0) {
		(*suc)++;
		return;
	}

	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
  27:	48 85 f6             	test   rsi,rsi
  2a:	0f 84 38 01 00 00    	je     168 <solveV3.part.1+0x168>
  30:	0f b6 0e             	movzx  ecx,BYTE PTR [rsi]
  33:	84 c9                	test   cl,cl
  35:	0f 84 2d 01 00 00    	je     168 <solveV3.part.1+0x168>
		k = cm->v[i][j];
		a = m->e[i][k];
  3b:	4b 8d 3c bf          	lea    rdi,[r15+r15*4]
				d = m->len;
				m->e[k][i] = c;
				if(b > 0) m->len -= 2;
				else m->len -= 1;

				solveV3(m, cm, k, vs, l+1, suc);
  3f:	41 83 c0 01          	add    r8d,0x1
	if(m->len == 0) {
		(*suc)++;
		return;
	}

	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
  43:	41 bd 01 00 00 00    	mov    r13d,0x1
void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;
  49:	49 63 d8             	movsxd rbx,r8d
				d = m->len;
				m->e[k][i] = c;
				if(b > 0) m->len -= 2;
				else m->len -= 1;

				solveV3(m, cm, k, vs, l+1, suc);
  4c:	44 89 44 24 3c       	mov    DWORD PTR [rsp+0x3c],r8d
void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;
  51:	4d 89 d3             	mov    r11,r10
		return;
	}

	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
		k = cm->v[i][j];
		a = m->e[i][k];
  54:	49 8d 04 bf          	lea    rax,[r15+rdi*4]
void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;
  58:	48 89 5c 24 30       	mov    QWORD PTR [rsp+0x30],rbx
  5d:	48 89 c2             	mov    rdx,rax
  60:	4c 89 f8             	mov    rax,r15
  63:	49 89 d7             	mov    r15,rdx
  66:	e9 99 00 00 00       	jmp    104 <solveV3.part.1+0x104>
  6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
		if(a > 0) {

			m->e[i][k] = a - 1;
			b = m->e[k][i];

			c = (b > 0 ? b - 1 : 0);
  70:	45 8d 4e ff          	lea    r9d,[r14-0x1]

			if(c >= 0) {
				d = m->len;
				m->e[k][i] = c;
				if(b > 0) m->len -= 2;
  74:	83 ef 02             	sub    edi,0x2
  77:	89 7d 00             	mov    DWORD PTR [rbp+0x0],edi
		if(a > 0) {

			m->e[i][k] = a - 1;
			b = m->e[k][i];

			c = (b > 0 ? b - 1 : 0);
  7a:	44 88 4e 04          	mov    BYTE PTR [rsi+0x4],r9b
void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;
  7e:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
  83:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  88:	88 0c 37             	mov    BYTE PTR [rdi+rsi*1],cl

	if(m->len == 0) {
  8b:	8b 4d 00             	mov    ecx,DWORD PTR [rbp+0x0]
  8e:	85 c9                	test   ecx,ecx
  90:	0f 84 c2 00 00 00    	je     158 <solveV3.part.1+0x158>
		(*suc)++;
  96:	4c 8b 4c 24 28       	mov    r9,QWORD PTR [rsp+0x28]
  9b:	44 8b 44 24 3c       	mov    r8d,DWORD PTR [rsp+0x3c]
  a0:	48 89 f9             	mov    rcx,rdi
  a3:	4c 89 de             	mov    rsi,r11
  a6:	48 89 ef             	mov    rdi,rbp
  a9:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  ae:	44 88 54 24 18       	mov    BYTE PTR [rsp+0x18],r10b
  b3:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  b8:	e8 43 ff ff ff       	call   0 <solveV3.part.1>
  bd:	44 0f b6 54 24 18    	movzx  r10d,BYTE PTR [rsp+0x18]
  c3:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
  c8:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
				m->e[k][i] = c;
				if(b > 0) m->len -= 2;
				else m->len -= 1;

				solveV3(m, cm, k, vs, l+1, suc);
				m->e[k][i] = b;
  cd:	4c 8d 04 9b          	lea    r8,[rbx+rbx*4]
				m->len = d;
  d1:	45 0f b6 d2          	movzx  r10d,r10b
  d5:	44 89 55 00          	mov    DWORD PTR [rbp+0x0],r10d
				m->e[k][i] = c;
				if(b > 0) m->len -= 2;
				else m->len -= 1;

				solveV3(m, cm, k, vs, l+1, suc);
				m->e[k][i] = b;
  d9:	4a 8d 3c 83          	lea    rdi,[rbx+r8*4]
				m->len = d;
			}
			m->e[i][k] = a;
  dd:	4c 01 fb             	add    rbx,r15
				m->e[k][i] = c;
				if(b > 0) m->len -= 2;
				else m->len -= 1;

				solveV3(m, cm, k, vs, l+1, suc);
				m->e[k][i] = b;
  e0:	48 01 c7             	add    rdi,rax
  e3:	44 88 74 3d 04       	mov    BYTE PTR [rbp+rdi*1+0x4],r14b
				m->len = d;
			}
			m->e[i][k] = a;
  e8:	44 88 64 1d 04       	mov    BYTE PTR [rbp+rbx*1+0x4],r12b
  ed:	49 8b 74 c3 08       	mov    rsi,QWORD PTR [r11+rax*8+0x8]
	if(m->len == 0) {
		(*suc)++;
		return;
	}

	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
  f2:	48 85 f6             	test   rsi,rsi
  f5:	74 71                	je     168 <solveV3.part.1+0x168>
  f7:	42 0f b6 0c 2e       	movzx  ecx,BYTE PTR [rsi+r13*1]
  fc:	49 83 c5 01          	add    r13,0x1
 100:	84 c9                	test   cl,cl
 102:	74 64                	je     168 <solveV3.part.1+0x168>
		k = cm->v[i][j];
		a = m->e[i][k];
 104:	0f b6 d1             	movzx  edx,cl
 107:	48 63 da             	movsxd rbx,edx
 10a:	49 8d 3c 1f          	lea    rdi,[r15+rbx*1]
 10e:	48 01 ef             	add    rdi,rbp
 111:	44 0f b6 67 04       	movzx  r12d,BYTE PTR [rdi+0x4]
		if(a > 0) {
 116:	45 84 e4             	test   r12b,r12b
 119:	74 d7                	je     f2 <solveV3.part.1+0xf2>

			m->e[i][k] = a - 1;
			b = m->e[k][i];
 11b:	48 8d 34 9b          	lea    rsi,[rbx+rbx*4]
	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
		k = cm->v[i][j];
		a = m->e[i][k];
		if(a > 0) {

			m->e[i][k] = a - 1;
 11f:	45 8d 44 24 ff       	lea    r8d,[r12-0x1]
			b = m->e[k][i];
 124:	48 8d 34 b3          	lea    rsi,[rbx+rsi*4]
	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
		k = cm->v[i][j];
		a = m->e[i][k];
		if(a > 0) {

			m->e[i][k] = a - 1;
 128:	44 88 47 04          	mov    BYTE PTR [rdi+0x4],r8b
			b = m->e[k][i];

			c = (b > 0 ? b - 1 : 0);

			if(c >= 0) {
				d = m->len;
 12c:	8b 7d 00             	mov    edi,DWORD PTR [rbp+0x0]
		k = cm->v[i][j];
		a = m->e[i][k];
		if(a > 0) {

			m->e[i][k] = a - 1;
			b = m->e[k][i];
 12f:	48 01 c6             	add    rsi,rax
 132:	48 01 ee             	add    rsi,rbp

			c = (b > 0 ? b - 1 : 0);

			if(c >= 0) {
				d = m->len;
 135:	41 89 fa             	mov    r10d,edi
		k = cm->v[i][j];
		a = m->e[i][k];
		if(a > 0) {

			m->e[i][k] = a - 1;
			b = m->e[k][i];
 138:	44 0f b6 76 04       	movzx  r14d,BYTE PTR [rsi+0x4]

			c = (b > 0 ? b - 1 : 0);
 13d:	45 84 f6             	test   r14b,r14b
 140:	0f 85 2a ff ff ff    	jne    70 <solveV3.part.1+0x70>

			if(c >= 0) {
				d = m->len;
				m->e[k][i] = c;
				if(b > 0) m->len -= 2;
				else m->len -= 1;
 146:	83 ef 01             	sub    edi,0x1

			c = (b > 0 ? b - 1 : 0);

			if(c >= 0) {
				d = m->len;
				m->e[k][i] = c;
 149:	c6 46 04 00          	mov    BYTE PTR [rsi+0x4],0x0
				if(b > 0) m->len -= 2;
				else m->len -= 1;
 14d:	89 7d 00             	mov    DWORD PTR [rbp+0x0],edi
 150:	e9 29 ff ff ff       	jmp    7e <solveV3.part.1+0x7e>
 155:	0f 1f 00             	nop    DWORD PTR [rax]
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 158:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
 15d:	83 02 01             	add    DWORD PTR [rdx],0x1
 160:	e9 68 ff ff ff       	jmp    cd <solveV3.part.1+0xcd>
 165:	0f 1f 00             	nop    DWORD PTR [rax]
			m->e[i][k] = a;
		}
	}

	return;
}
 168:	48 83 c4 48          	add    rsp,0x48
 16c:	5b                   	pop    rbx
 16d:	5d                   	pop    rbp
 16e:	41 5c                	pop    r12
 170:	41 5d                	pop    r13
 172:	41 5e                	pop    r14
 174:	41 5f                	pop    r15
 176:	c3                   	ret    
 177:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 17e:	00 00 

0000000000000180 <solve4._omp_fn.0>:
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
//#pragma omp parallel for private(i) schedule(static,1)
#pragma omp parallel for private(i) schedule(dynamic)
 180:	41 57                	push   r15
 182:	41 56                	push   r14
 184:	41 55                	push   r13
 186:	41 54                	push   r12
 188:	55                   	push   rbp
 189:	53                   	push   rbx
 18a:	48 89 fb             	mov    rbx,rdi
 18d:	48 81 ec 28 02 00 00 	sub    rsp,0x228
 194:	48 8d b4 24 d0 01 00 	lea    rsi,[rsp+0x1d0]
 19b:	00 
 19c:	48 8d bc 24 c0 01 00 	lea    rdi,[rsp+0x1c0]
 1a3:	00 
 1a4:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 1ab:	00 00 
 1ad:	48 89 84 24 18 02 00 	mov    QWORD PTR [rsp+0x218],rax
 1b4:	00 
 1b5:	31 c0                	xor    eax,eax
 1b7:	e8 00 00 00 00       	call   1bc <solve4._omp_fn.0+0x3c>
 1bc:	84 c0                	test   al,al
 1be:	0f 84 bd 02 00 00    	je     481 <solve4._omp_fn.0+0x301>
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
			memcpy(&mp,m,sizeof(matrix_t));
 1c4:	49 89 e6             	mov    r14,rsp
 1c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 1ce:	00 00 
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
//#pragma omp parallel for private(i) schedule(static,1)
#pragma omp parallel for private(i) schedule(dynamic)
 1d0:	8b ac 24 c0 01 00 00 	mov    ebp,DWORD PTR [rsp+0x1c0]
 1d7:	44 8b bc 24 d0 01 00 	mov    r15d,DWORD PTR [rsp+0x1d0]
 1de:	00 
 1df:	89 e8                	mov    eax,ebp
 1e1:	4c 63 e5             	movsxd r12,ebp
 1e4:	f7 d0                	not    eax
 1e6:	4d 89 e5             	mov    r13,r12
 1e9:	44 01 f8             	add    eax,r15d
 1ec:	a8 01                	test   al,0x1
 1ee:	0f 84 c5 01 00 00    	je     3b9 <solve4._omp_fn.0+0x239>
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
 1f4:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
 1f8:	4c 8b 43 18          	mov    r8,QWORD PTR [rbx+0x18]
		if(cm->v[i] != NULL) {
 1fc:	4a 83 7c e0 08 00    	cmp    QWORD PTR [rax+r12*8+0x8],0x0
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
 202:	43 c7 04 a0 00 00 00 	mov    DWORD PTR [r8+r12*4],0x0
 209:	00 
		if(cm->v[i] != NULL) {
 20a:	0f 84 9a 00 00 00    	je     2aa <solve4._omp_fn.0+0x12a>

__extern_always_inline void *
__NTH (memcpy (void *__restrict __dest, __const void *__restrict __src,
	       size_t __len))
{
  return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
 210:	48 8b 33             	mov    rsi,QWORD PTR [rbx]
 213:	4c 89 f7             	mov    rdi,r14
 216:	b9 38 00 00 00       	mov    ecx,0x38
 21b:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
 21e:	4c 8b 5b 10          	mov    r11,QWORD PTR [rbx+0x10]
 222:	4d 8b 2b             	mov    r13,QWORD PTR [r11]
 225:	4c 89 ac 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],r13
 22c:	00 
 22d:	49 8b 7b 08          	mov    rdi,QWORD PTR [r11+0x8]
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 231:	44 8b 2c 24          	mov    r13d,DWORD PTR [rsp]
 235:	48 89 bc 24 e8 01 00 	mov    QWORD PTR [rsp+0x1e8],rdi
 23c:	00 
 23d:	49 8b 73 10          	mov    rsi,QWORD PTR [r11+0x10]
 241:	45 85 ed             	test   r13d,r13d
 244:	48 89 b4 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rsi
 24b:	00 
 24c:	49 8b 4b 18          	mov    rcx,QWORD PTR [r11+0x18]
 250:	48 89 8c 24 f8 01 00 	mov    QWORD PTR [rsp+0x1f8],rcx
 257:	00 
 258:	4d 8b 4b 20          	mov    r9,QWORD PTR [r11+0x20]
 25c:	4c 89 8c 24 00 02 00 	mov    QWORD PTR [rsp+0x200],r9
 263:	00 
 264:	49 8b 53 28          	mov    rdx,QWORD PTR [r11+0x28]
 268:	48 89 94 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rdx
 26f:	00 
 270:	45 0f b7 53 30       	movzx  r10d,WORD PTR [r11+0x30]
void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;
 275:	40 88 ac 24 e0 01 00 	mov    BYTE PTR [rsp+0x1e0],bpl
 27c:	00 
 27d:	66 44 89 94 24 10 02 	mov    WORD PTR [rsp+0x210],r10w
 284:	00 00 

	if(m->len == 0) {
 286:	0f 84 34 02 00 00    	je     4c0 <solve4._omp_fn.0+0x340>
		(*suc)++;
 28c:	4f 8d 0c a0          	lea    r9,[r8+r12*4]
 290:	48 8d 8c 24 e0 01 00 	lea    rcx,[rsp+0x1e0]
 297:	00 

		results[i] = 0;
		if(cm->v[i] != NULL) {
			memcpy(&mp,m,sizeof(matrix_t));
			memcpy(&vsp,vs,sizeof(vs));
			solveV3(&mp, cm, i, vsp, 0, &results[i]);
 298:	40 0f b6 d5          	movzx  edx,bpl
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 29c:	45 31 c0             	xor    r8d,r8d
 29f:	48 89 c6             	mov    rsi,rax
 2a2:	48 89 e7             	mov    rdi,rsp
 2a5:	e8 56 fd ff ff       	call   0 <solveV3.part.1>
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
 2aa:	83 c5 01             	add    ebp,0x1
 2ad:	4d 8d 6c 24 01       	lea    r13,[r12+0x1]
 2b2:	41 39 ef             	cmp    r15d,ebp
 2b5:	4c 63 e5             	movsxd r12,ebp
 2b8:	0f 8f fb 00 00 00    	jg     3b9 <solve4._omp_fn.0+0x239>
 2be:	e9 a1 01 00 00       	jmp    464 <solve4._omp_fn.0+0x2e4>
 2c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 2c8:	4f 8d 0c a8          	lea    r9,[r8+r13*4]
 2cc:	48 8d 8c 24 e0 01 00 	lea    rcx,[rsp+0x1e0]
 2d3:	00 

		results[i] = 0;
		if(cm->v[i] != NULL) {
			memcpy(&mp,m,sizeof(matrix_t));
			memcpy(&vsp,vs,sizeof(vs));
			solveV3(&mp, cm, i, vsp, 0, &results[i]);
 2d4:	40 0f b6 d5          	movzx  edx,bpl
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 2d8:	45 31 c0             	xor    r8d,r8d
 2db:	48 89 c6             	mov    rsi,rax
 2de:	48 89 e7             	mov    rdi,rsp
 2e1:	e8 1a fd ff ff       	call   0 <solveV3.part.1>
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
 2e6:	83 c5 01             	add    ebp,0x1
 2e9:	49 83 c5 01          	add    r13,0x1
 2ed:	41 39 ef             	cmp    r15d,ebp
 2f0:	0f 8e 6e 01 00 00    	jle    464 <solve4._omp_fn.0+0x2e4>
 2f6:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
 2fa:	48 63 d5             	movsxd rdx,ebp
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
 2fd:	4c 8b 43 18          	mov    r8,QWORD PTR [rbx+0x18]
		if(cm->v[i] != NULL) {
 301:	48 83 7c d0 08 00    	cmp    QWORD PTR [rax+rdx*8+0x8],0x0
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
 307:	41 c7 04 90 00 00 00 	mov    DWORD PTR [r8+rdx*4],0x0
 30e:	00 
		if(cm->v[i] != NULL) {
 30f:	0f 84 9a 00 00 00    	je     3af <solve4._omp_fn.0+0x22f>
 315:	48 8b 33             	mov    rsi,QWORD PTR [rbx]
 318:	4c 89 f7             	mov    rdi,r14
 31b:	b9 38 00 00 00       	mov    ecx,0x38
 320:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
 323:	4c 8b 5b 10          	mov    r11,QWORD PTR [rbx+0x10]
 327:	4d 8b 23             	mov    r12,QWORD PTR [r11]
 32a:	4c 89 a4 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],r12
 331:	00 
 332:	49 8b 7b 08          	mov    rdi,QWORD PTR [r11+0x8]
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 336:	44 8b 24 24          	mov    r12d,DWORD PTR [rsp]
 33a:	48 89 bc 24 e8 01 00 	mov    QWORD PTR [rsp+0x1e8],rdi
 341:	00 
 342:	49 8b 73 10          	mov    rsi,QWORD PTR [r11+0x10]
 346:	45 85 e4             	test   r12d,r12d
 349:	48 89 b4 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rsi
 350:	00 
 351:	49 8b 4b 18          	mov    rcx,QWORD PTR [r11+0x18]
 355:	48 89 8c 24 f8 01 00 	mov    QWORD PTR [rsp+0x1f8],rcx
 35c:	00 
 35d:	4d 8b 4b 20          	mov    r9,QWORD PTR [r11+0x20]
 361:	4c 89 8c 24 00 02 00 	mov    QWORD PTR [rsp+0x200],r9
 368:	00 
 369:	49 8b 53 28          	mov    rdx,QWORD PTR [r11+0x28]
 36d:	48 89 94 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rdx
 374:	00 
 375:	45 0f b7 53 30       	movzx  r10d,WORD PTR [r11+0x30]
void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;
 37a:	40 88 ac 24 e0 01 00 	mov    BYTE PTR [rsp+0x1e0],bpl
 381:	00 
 382:	66 44 89 94 24 10 02 	mov    WORD PTR [rsp+0x210],r10w
 389:	00 00 

	if(m->len == 0) {
 38b:	0f 84 1f 01 00 00    	je     4b0 <solve4._omp_fn.0+0x330>
		(*suc)++;
 391:	4f 8d 0c a8          	lea    r9,[r8+r13*4]
 395:	48 8d 8c 24 e0 01 00 	lea    rcx,[rsp+0x1e0]
 39c:	00 

		results[i] = 0;
		if(cm->v[i] != NULL) {
			memcpy(&mp,m,sizeof(matrix_t));
			memcpy(&vsp,vs,sizeof(vs));
			solveV3(&mp, cm, i, vsp, 0, &results[i]);
 39d:	40 0f b6 d5          	movzx  edx,bpl
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 3a1:	45 31 c0             	xor    r8d,r8d
 3a4:	48 89 c6             	mov    rsi,rax
 3a7:	48 89 e7             	mov    rdi,rsp
 3aa:	e8 51 fc ff ff       	call   0 <solveV3.part.1>
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
 3af:	83 c5 01             	add    ebp,0x1
 3b2:	49 83 c5 01          	add    r13,0x1
 3b6:	4c 63 e5             	movsxd r12,ebp
 3b9:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
 3bd:	4c 8b 43 18          	mov    r8,QWORD PTR [rbx+0x18]
		if(cm->v[i] != NULL) {
 3c1:	4a 83 7c e0 08 00    	cmp    QWORD PTR [rax+r12*8+0x8],0x0
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
 3c7:	43 c7 04 a0 00 00 00 	mov    DWORD PTR [r8+r12*4],0x0
 3ce:	00 
		if(cm->v[i] != NULL) {
 3cf:	0f 84 11 ff ff ff    	je     2e6 <solve4._omp_fn.0+0x166>
 3d5:	48 8b 33             	mov    rsi,QWORD PTR [rbx]
 3d8:	4c 89 f7             	mov    rdi,r14
 3db:	b9 38 00 00 00       	mov    ecx,0x38
 3e0:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
 3e3:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
 3e7:	4c 8b 0e             	mov    r9,QWORD PTR [rsi]
 3ea:	4c 89 8c 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],r9
 3f1:	00 
 3f2:	48 8b 56 08          	mov    rdx,QWORD PTR [rsi+0x8]
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 3f6:	44 8b 0c 24          	mov    r9d,DWORD PTR [rsp]
 3fa:	48 89 94 24 e8 01 00 	mov    QWORD PTR [rsp+0x1e8],rdx
 401:	00 
 402:	4c 8b 66 10          	mov    r12,QWORD PTR [rsi+0x10]
 406:	45 85 c9             	test   r9d,r9d
 409:	4c 89 a4 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],r12
 410:	00 
 411:	4c 8b 5e 18          	mov    r11,QWORD PTR [rsi+0x18]
 415:	4c 89 9c 24 f8 01 00 	mov    QWORD PTR [rsp+0x1f8],r11
 41c:	00 
 41d:	4c 8b 56 20          	mov    r10,QWORD PTR [rsi+0x20]
 421:	4c 89 94 24 00 02 00 	mov    QWORD PTR [rsp+0x200],r10
 428:	00 
 429:	48 8b 7e 28          	mov    rdi,QWORD PTR [rsi+0x28]
 42d:	48 89 bc 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rdi
 434:	00 
 435:	0f b7 4e 30          	movzx  ecx,WORD PTR [rsi+0x30]
void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;
 439:	40 88 ac 24 e0 01 00 	mov    BYTE PTR [rsp+0x1e0],bpl
 440:	00 
 441:	66 89 8c 24 10 02 00 	mov    WORD PTR [rsp+0x210],cx
 448:	00 

	if(m->len == 0) {
 449:	0f 85 79 fe ff ff    	jne    2c8 <solve4._omp_fn.0+0x148>
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
 44f:	83 c5 01             	add    ebp,0x1
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 452:	43 83 04 a8 01       	add    DWORD PTR [r8+r13*4],0x1
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
 457:	49 83 c5 01          	add    r13,0x1
 45b:	41 39 ef             	cmp    r15d,ebp
 45e:	0f 8f 92 fe ff ff    	jg     2f6 <solve4._omp_fn.0+0x176>
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
//#pragma omp parallel for private(i) schedule(static,1)
#pragma omp parallel for private(i) schedule(dynamic)
 464:	48 8d b4 24 d0 01 00 	lea    rsi,[rsp+0x1d0]
 46b:	00 
 46c:	48 8d bc 24 c0 01 00 	lea    rdi,[rsp+0x1c0]
 473:	00 
 474:	e8 00 00 00 00       	call   479 <solve4._omp_fn.0+0x2f9>
 479:	84 c0                	test   al,al
 47b:	0f 85 4f fd ff ff    	jne    1d0 <solve4._omp_fn.0+0x50>
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 481:	e8 00 00 00 00       	call   486 <solve4._omp_fn.0+0x306>
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
//#pragma omp parallel for private(i) schedule(static,1)
#pragma omp parallel for private(i) schedule(dynamic)
 486:	48 8b 84 24 18 02 00 	mov    rax,QWORD PTR [rsp+0x218]
 48d:	00 
 48e:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
 495:	00 00 
 497:	75 31                	jne    4ca <solve4._omp_fn.0+0x34a>
 499:	48 81 c4 28 02 00 00 	add    rsp,0x228
 4a0:	5b                   	pop    rbx
 4a1:	5d                   	pop    rbp
 4a2:	41 5c                	pop    r12
 4a4:	41 5d                	pop    r13
 4a6:	41 5e                	pop    r14
 4a8:	41 5f                	pop    r15
 4aa:	c3                   	ret    
 4ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 4b0:	43 83 04 a8 01       	add    DWORD PTR [r8+r13*4],0x1
 4b5:	e9 f5 fe ff ff       	jmp    3af <solve4._omp_fn.0+0x22f>
 4ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
 4c0:	43 83 04 a0 01       	add    DWORD PTR [r8+r12*4],0x1
 4c5:	e9 e0 fd ff ff       	jmp    2aa <solve4._omp_fn.0+0x12a>
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
//#pragma omp parallel for private(i) schedule(static,1)
#pragma omp parallel for private(i) schedule(dynamic)
 4ca:	e8 00 00 00 00       	call   4cf <solve4._omp_fn.0+0x34f>
 4cf:	90                   	nop

00000000000004d0 <edges2Matrix>:
#include "puzzler.h"

matrix_t * edges2Matrix(char **argv) {
 4d0:	41 55                	push   r13
	matrix_t * m;
	int i, l, r;
	char *ptr_l, *ptr_r, *arg;

	m = (matrix_t *) calloc(1,sizeof(matrix_t));
 4d2:	be c0 01 00 00       	mov    esi,0x1c0
#include "puzzler.h"

matrix_t * edges2Matrix(char **argv) {
 4d7:	41 54                	push   r12
 4d9:	55                   	push   rbp
 4da:	48 89 fd             	mov    rbp,rdi
	matrix_t * m;
	int i, l, r;
	char *ptr_l, *ptr_r, *arg;

	m = (matrix_t *) calloc(1,sizeof(matrix_t));
 4dd:	bf 01 00 00 00       	mov    edi,0x1
#include "puzzler.h"

matrix_t * edges2Matrix(char **argv) {
 4e2:	53                   	push   rbx
 4e3:	48 83 ec 08          	sub    rsp,0x8
	matrix_t * m;
	int i, l, r;
	char *ptr_l, *ptr_r, *arg;

	m = (matrix_t *) calloc(1,sizeof(matrix_t));
 4e7:	e8 00 00 00 00       	call   4ec <edges2Matrix+0x1c>
	if(!m) {
		return NULL;
	}
	*/

	for(i=2;argv[i]!=NULL;i++) {
 4ec:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
matrix_t * edges2Matrix(char **argv) {
	matrix_t * m;
	int i, l, r;
	char *ptr_l, *ptr_r, *arg;

	m = (matrix_t *) calloc(1,sizeof(matrix_t));
 4f0:	48 89 c3             	mov    rbx,rax
	if(!m) {
		return NULL;
	}
	*/

	for(i=2;argv[i]!=NULL;i++) {
 4f3:	48 85 ff             	test   rdi,rdi
 4f6:	0f 84 81 00 00 00    	je     57d <edges2Matrix+0xad>
 4fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
		arg = argv[i];
		ptr_l = strtok(arg, " ");
 500:	be 00 00 00 00       	mov    esi,0x0
 505:	e8 00 00 00 00       	call   50a <edges2Matrix+0x3a>
		if(!ptr_l) { err(1, "parse error"); }
 50a:	48 85 c0             	test   rax,rax
	}
	*/

	for(i=2;argv[i]!=NULL;i++) {
		arg = argv[i];
		ptr_l = strtok(arg, " ");
 50d:	49 89 c5             	mov    r13,rax
		if(!ptr_l) { err(1, "parse error"); }
 510:	74 79                	je     58b <edges2Matrix+0xbb>
		ptr_r = strtok(NULL, "");
 512:	31 ff                	xor    edi,edi
 514:	be 00 00 00 00       	mov    esi,0x0
 519:	e8 00 00 00 00       	call   51e <edges2Matrix+0x4e>
		if(!ptr_r) { err(1, "parse_error"); }
 51e:	48 85 c0             	test   rax,rax

	for(i=2;argv[i]!=NULL;i++) {
		arg = argv[i];
		ptr_l = strtok(arg, " ");
		if(!ptr_l) { err(1, "parse error"); }
		ptr_r = strtok(NULL, "");
 521:	49 89 c4             	mov    r12,rax
		if(!ptr_r) { err(1, "parse_error"); }
 524:	0f 84 83 00 00 00    	je     5ad <edges2Matrix+0xdd>
  return strtod (__nptr, (char **) NULL);
}
__extern_inline int
__NTH (atoi (__const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);
 52a:	31 f6                	xor    esi,esi
 52c:	4c 89 ef             	mov    rdi,r13
 52f:	ba 0a 00 00 00       	mov    edx,0xa
 534:	e8 00 00 00 00       	call   539 <edges2Matrix+0x69>
 539:	31 f6                	xor    esi,esi
 53b:	ba 0a 00 00 00       	mov    edx,0xa
 540:	4c 89 e7             	mov    rdi,r12
 543:	41 89 c5             	mov    r13d,eax
 546:	e8 00 00 00 00       	call   54b <edges2Matrix+0x7b>
		l = atoi(ptr_l);
		r = atoi(ptr_r);
		if(l > MAX_X || r > MAX_Y) { err(1, "too big"); }
 54b:	83 f8 14             	cmp    eax,0x14
 54e:	7f 4c                	jg     59c <edges2Matrix+0xcc>
 550:	41 83 fd 14          	cmp    r13d,0x14
 554:	7f 46                	jg     59c <edges2Matrix+0xcc>
		m->e[l][r] += 1;
 556:	4d 63 ed             	movsxd r13,r13d
 559:	48 98                	cdqe   
		m->len += 1;
 55b:	48 83 c5 08          	add    rbp,0x8
		ptr_r = strtok(NULL, "");
		if(!ptr_r) { err(1, "parse_error"); }
		l = atoi(ptr_l);
		r = atoi(ptr_r);
		if(l > MAX_X || r > MAX_Y) { err(1, "too big"); }
		m->e[l][r] += 1;
 55f:	4b 8d 4c ad 00       	lea    rcx,[r13+r13*4+0x0]
		m->len += 1;
 564:	83 03 01             	add    DWORD PTR [rbx],0x1
		ptr_r = strtok(NULL, "");
		if(!ptr_r) { err(1, "parse_error"); }
		l = atoi(ptr_l);
		r = atoi(ptr_r);
		if(l > MAX_X || r > MAX_Y) { err(1, "too big"); }
		m->e[l][r] += 1;
 567:	49 8d 54 8d 00       	lea    rdx,[r13+rcx*4+0x0]
 56c:	48 01 d0             	add    rax,rdx
 56f:	80 44 03 04 01       	add    BYTE PTR [rbx+rax*1+0x4],0x1
	if(!m) {
		return NULL;
	}
	*/

	for(i=2;argv[i]!=NULL;i++) {
 574:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
 578:	48 85 ff             	test   rdi,rdi
 57b:	75 83                	jne    500 <edges2Matrix+0x30>
		m->e[l][r] += 1;
		m->len += 1;
	}
	
	return m;
}
 57d:	48 83 c4 08          	add    rsp,0x8
 581:	48 89 d8             	mov    rax,rbx
 584:	5b                   	pop    rbx
 585:	5d                   	pop    rbp
 586:	41 5c                	pop    r12
 588:	41 5d                	pop    r13
 58a:	c3                   	ret    
	*/

	for(i=2;argv[i]!=NULL;i++) {
		arg = argv[i];
		ptr_l = strtok(arg, " ");
		if(!ptr_l) { err(1, "parse error"); }
 58b:	be 00 00 00 00       	mov    esi,0x0
 590:	bf 01 00 00 00       	mov    edi,0x1
 595:	31 c0                	xor    eax,eax
 597:	e8 00 00 00 00       	call   59c <edges2Matrix+0xcc>
		ptr_r = strtok(NULL, "");
		if(!ptr_r) { err(1, "parse_error"); }
		l = atoi(ptr_l);
		r = atoi(ptr_r);
		if(l > MAX_X || r > MAX_Y) { err(1, "too big"); }
 59c:	be 00 00 00 00       	mov    esi,0x0
 5a1:	bf 01 00 00 00       	mov    edi,0x1
 5a6:	31 c0                	xor    eax,eax
 5a8:	e8 00 00 00 00       	call   5ad <edges2Matrix+0xdd>
	for(i=2;argv[i]!=NULL;i++) {
		arg = argv[i];
		ptr_l = strtok(arg, " ");
		if(!ptr_l) { err(1, "parse error"); }
		ptr_r = strtok(NULL, "");
		if(!ptr_r) { err(1, "parse_error"); }
 5ad:	be 00 00 00 00       	mov    esi,0x0
 5b2:	bf 01 00 00 00       	mov    edi,0x1
 5b7:	31 c0                	xor    eax,eax
 5b9:	e8 00 00 00 00       	call   5be <edges2Matrix+0xee>
 5be:	66 90                	xchg   ax,ax

00000000000005c0 <create_companion>:
	
	return m;
}


cmatrix_t * create_companion(matrix_t *m) {
 5c0:	41 55                	push   r13
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
 5c2:	be b0 00 00 00       	mov    esi,0xb0
	
	return m;
}


cmatrix_t * create_companion(matrix_t *m) {
 5c7:	41 54                	push   r12
 5c9:	55                   	push   rbp
 5ca:	53                   	push   rbx
 5cb:	48 89 fb             	mov    rbx,rdi
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
 5ce:	bf 01 00 00 00       	mov    edi,0x1
	
	return m;
}


cmatrix_t * create_companion(matrix_t *m) {
 5d3:	48 83 ec 08          	sub    rsp,0x8
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
 5d7:	e8 00 00 00 00       	call   5dc <create_companion+0x1c>
	
	return m;
}


cmatrix_t * create_companion(matrix_t *m) {
 5dc:	48 8d 68 08          	lea    rbp,[rax+0x8]
 5e0:	4c 8d a8 a8 00 00 00 	lea    r13,[rax+0xa8]
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
 5e7:	49 89 c4             	mov    r12,rax
 5ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
	
	return m;
}


cmatrix_t * create_companion(matrix_t *m) {
 5f0:	31 c0                	xor    eax,eax
 5f2:	31 ff                	xor    edi,edi

	for(i = 0; i < MAX_X; i++) {
		cnt = 0;
		for(j = 0; j < MAX_Y; j++) {
			if(m->e[i][j] > 0) {
				cnt++;
 5f4:	80 7c 03 04 00       	cmp    BYTE PTR [rbx+rax*1+0x4],0x0
 5f9:	8d 57 01             	lea    edx,[rdi+0x1]
 5fc:	0f 44 d7             	cmove  edx,edi
 5ff:	80 7c 18 05 00       	cmp    BYTE PTR [rax+rbx*1+0x5],0x0
 604:	44 8d 5a 01          	lea    r11d,[rdx+0x1]
 608:	44 0f 44 da          	cmove  r11d,edx
 60c:	80 7c 18 06 00       	cmp    BYTE PTR [rax+rbx*1+0x6],0x0
 611:	45 8d 53 01          	lea    r10d,[r11+0x1]
 615:	45 0f 44 d3          	cmove  r10d,r11d
 619:	80 7c 18 07 00       	cmp    BYTE PTR [rax+rbx*1+0x7],0x0
 61e:	45 8d 4a 01          	lea    r9d,[r10+0x1]
 622:	45 0f 44 ca          	cmove  r9d,r10d
 626:	80 7c 18 08 00       	cmp    BYTE PTR [rax+rbx*1+0x8],0x0
 62b:	45 8d 41 01          	lea    r8d,[r9+0x1]
 62f:	45 0f 44 c1          	cmove  r8d,r9d
 633:	80 7c 18 09 00       	cmp    BYTE PTR [rax+rbx*1+0x9],0x0
 638:	41 8d 78 01          	lea    edi,[r8+0x1]
 63c:	41 0f 44 f8          	cmove  edi,r8d
 640:	80 7c 18 0a 00       	cmp    BYTE PTR [rax+rbx*1+0xa],0x0
 645:	8d 77 01             	lea    esi,[rdi+0x1]
 648:	0f 44 f7             	cmove  esi,edi
 64b:	80 7c 18 0b 00       	cmp    BYTE PTR [rax+rbx*1+0xb],0x0
 650:	8d 4e 01             	lea    ecx,[rsi+0x1]
 653:	0f 44 ce             	cmove  ecx,esi
 656:	80 7c 18 0c 00       	cmp    BYTE PTR [rax+rbx*1+0xc],0x0
 65b:	8d 51 01             	lea    edx,[rcx+0x1]
 65e:	0f 44 d1             	cmove  edx,ecx
 661:	80 7c 18 0d 00       	cmp    BYTE PTR [rax+rbx*1+0xd],0x0
 666:	8d 7a 01             	lea    edi,[rdx+0x1]
 669:	0f 44 fa             	cmove  edi,edx
 66c:	48 83 c0 0a          	add    rax,0xa
	}
	*/

	for(i = 0; i < MAX_X; i++) {
		cnt = 0;
		for(j = 0; j < MAX_Y; j++) {
 670:	48 83 f8 14          	cmp    rax,0x14
 674:	0f 85 7a ff ff ff    	jne    5f4 <create_companion+0x34>
			if(m->e[i][j] > 0) {
				cnt++;
			}
		}
		if(cnt > 0) {
 67a:	85 ff                	test   edi,edi
 67c:	0f 84 fe 00 00 00    	je     780 <create_companion+0x1c0>
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
 682:	83 c7 01             	add    edi,0x1
 685:	be 01 00 00 00       	mov    esi,0x1
			if(m->e[i][j] > 0) {
				cnt++;
			}
		}
		if(cnt > 0) {
			cm->vlen ++;
 68a:	41 83 44 24 04 01    	add    DWORD PTR [r12+0x4],0x1
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
 690:	48 63 ff             	movsxd rdi,edi
 693:	e8 00 00 00 00       	call   698 <create_companion+0xd8>
			cm->v[i]=vs;
 698:	31 c9                	xor    ecx,ecx
 69a:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
			for(k = 0, j = 0; j < MAX_Y; j++) {
 69e:	31 d2                	xor    edx,edx
				if(m->e[i][j] > 0) {
 6a0:	80 7c 0b 04 00       	cmp    BYTE PTR [rbx+rcx*1+0x4],0x0
 6a5:	74 09                	je     6b0 <create_companion+0xf0>
					vs[k] = j;
 6a7:	48 63 f2             	movsxd rsi,edx
					k++;
 6aa:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 6ad:	88 0c 30             	mov    BYTE PTR [rax+rsi*1],cl
					k++;
 6b0:	48 83 c1 01          	add    rcx,0x1
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 6b4:	80 7c 0b 04 00       	cmp    BYTE PTR [rbx+rcx*1+0x4],0x0
 6b9:	74 09                	je     6c4 <create_companion+0x104>
					vs[k] = j;
 6bb:	48 63 fa             	movsxd rdi,edx
					k++;
 6be:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 6c1:	88 0c 38             	mov    BYTE PTR [rax+rdi*1],cl
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 6c4:	80 7c 19 05 00       	cmp    BYTE PTR [rcx+rbx*1+0x5],0x0
					vs[k] = j;
					k++;
 6c9:	48 8d 71 01          	lea    rsi,[rcx+0x1]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 6cd:	74 0a                	je     6d9 <create_companion+0x119>
					vs[k] = j;
 6cf:	4c 63 c2             	movsxd r8,edx
					k++;
 6d2:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 6d5:	42 88 34 00          	mov    BYTE PTR [rax+r8*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 6d9:	80 7c 19 06 00       	cmp    BYTE PTR [rcx+rbx*1+0x6],0x0
					vs[k] = j;
					k++;
 6de:	48 8d 71 02          	lea    rsi,[rcx+0x2]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 6e2:	74 0a                	je     6ee <create_companion+0x12e>
					vs[k] = j;
 6e4:	4c 63 ca             	movsxd r9,edx
					k++;
 6e7:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 6ea:	42 88 34 08          	mov    BYTE PTR [rax+r9*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 6ee:	80 7c 19 07 00       	cmp    BYTE PTR [rcx+rbx*1+0x7],0x0
					vs[k] = j;
					k++;
 6f3:	48 8d 71 03          	lea    rsi,[rcx+0x3]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 6f7:	74 0a                	je     703 <create_companion+0x143>
					vs[k] = j;
 6f9:	4c 63 d2             	movsxd r10,edx
					k++;
 6fc:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 6ff:	42 88 34 10          	mov    BYTE PTR [rax+r10*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 703:	80 7c 19 08 00       	cmp    BYTE PTR [rcx+rbx*1+0x8],0x0
					vs[k] = j;
					k++;
 708:	48 8d 71 04          	lea    rsi,[rcx+0x4]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 70c:	74 0a                	je     718 <create_companion+0x158>
					vs[k] = j;
 70e:	4c 63 da             	movsxd r11,edx
					k++;
 711:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 714:	42 88 34 18          	mov    BYTE PTR [rax+r11*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 718:	80 7c 19 09 00       	cmp    BYTE PTR [rcx+rbx*1+0x9],0x0
					vs[k] = j;
					k++;
 71d:	48 8d 71 05          	lea    rsi,[rcx+0x5]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 721:	74 0a                	je     72d <create_companion+0x16d>
					vs[k] = j;
 723:	48 63 fa             	movsxd rdi,edx
					k++;
 726:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 729:	40 88 34 38          	mov    BYTE PTR [rax+rdi*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 72d:	80 7c 19 0a 00       	cmp    BYTE PTR [rcx+rbx*1+0xa],0x0
					vs[k] = j;
					k++;
 732:	48 8d 71 06          	lea    rsi,[rcx+0x6]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 736:	74 0a                	je     742 <create_companion+0x182>
					vs[k] = j;
 738:	4c 63 c2             	movsxd r8,edx
					k++;
 73b:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 73e:	42 88 34 00          	mov    BYTE PTR [rax+r8*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 742:	80 7c 19 0b 00       	cmp    BYTE PTR [rcx+rbx*1+0xb],0x0
					vs[k] = j;
					k++;
 747:	48 8d 71 07          	lea    rsi,[rcx+0x7]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 74b:	74 0a                	je     757 <create_companion+0x197>
					vs[k] = j;
 74d:	4c 63 ca             	movsxd r9,edx
					k++;
 750:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 753:	42 88 34 08          	mov    BYTE PTR [rax+r9*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 757:	80 7c 19 0c 00       	cmp    BYTE PTR [rcx+rbx*1+0xc],0x0
					vs[k] = j;
					k++;
 75c:	48 8d 71 08          	lea    rsi,[rcx+0x8]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 760:	74 0a                	je     76c <create_companion+0x1ac>
					vs[k] = j;
 762:	4c 63 d2             	movsxd r10,edx
					k++;
 765:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 768:	42 88 34 10          	mov    BYTE PTR [rax+r10*1],sil
					k++;
 76c:	48 83 c1 09          	add    rcx,0x9
		}
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
 770:	48 83 f9 14          	cmp    rcx,0x14
 774:	0f 85 26 ff ff ff    	jne    6a0 <create_companion+0xe0>
 77a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
 780:	48 83 c5 08          	add    rbp,0x8
 784:	48 83 c3 15          	add    rbx,0x15
	if(!cm) {
		return NULL;
	}
	*/

	for(i = 0; i < MAX_X; i++) {
 788:	4c 39 ed             	cmp    rbp,r13
 78b:	0f 85 5f fe ff ff    	jne    5f0 <create_companion+0x30>
			}
		}
	}

	return cm;
}
 791:	48 83 c4 08          	add    rsp,0x8
 795:	4c 89 e0             	mov    rax,r12
 798:	5b                   	pop    rbx
 799:	5d                   	pop    rbp
 79a:	41 5c                	pop    r12
 79c:	41 5d                	pop    r13
 79e:	c3                   	ret    
 79f:	90                   	nop

00000000000007a0 <solve3>:


void solve3(matrix_t *m, int *succ) {
 7a0:	41 57                	push   r15
 7a2:	41 56                	push   r14
 7a4:	49 89 f6             	mov    r14,rsi
 7a7:	41 55                	push   r13
 7a9:	41 54                	push   r12
 7ab:	55                   	push   rbp
 7ac:	48 89 fd             	mov    rbp,rdi
 7af:	53                   	push   rbx
 7b0:	48 83 ec 58          	sub    rsp,0x58
 7b4:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 7bb:	00 00 
 7bd:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
 7c2:	31 c0                	xor    eax,eax
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;
 7c4:	48 85 ff             	test   rdi,rdi
 7c7:	0f 84 13 04 00 00    	je     be0 <solve3+0x440>
cmatrix_t * create_companion(matrix_t *m) {
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
 7cd:	be b0 00 00 00       	mov    esi,0xb0
 7d2:	bf 01 00 00 00       	mov    edi,0x1
 7d7:	49 89 ec             	mov    r12,rbp
 7da:	e8 00 00 00 00       	call   7df <solve3+0x3f>

	return cm;
}


void solve3(matrix_t *m, int *succ) {
 7df:	4c 8d 68 08          	lea    r13,[rax+0x8]
 7e3:	4c 8d b8 a8 00 00 00 	lea    r15,[rax+0xa8]
cmatrix_t * create_companion(matrix_t *m) {
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
 7ea:	48 89 c3             	mov    rbx,rax
 7ed:	0f 1f 00             	nop    DWORD PTR [rax]

	return cm;
}


void solve3(matrix_t *m, int *succ) {
 7f0:	31 c0                	xor    eax,eax
 7f2:	31 ff                	xor    edi,edi

	for(i = 0; i < MAX_X; i++) {
		cnt = 0;
		for(j = 0; j < MAX_Y; j++) {
			if(m->e[i][j] > 0) {
				cnt++;
 7f4:	41 80 7c 04 04 00    	cmp    BYTE PTR [r12+rax*1+0x4],0x0
 7fa:	8d 57 01             	lea    edx,[rdi+0x1]
 7fd:	0f 44 d7             	cmove  edx,edi
 800:	41 80 7c 04 05 00    	cmp    BYTE PTR [r12+rax*1+0x5],0x0
 806:	44 8d 5a 01          	lea    r11d,[rdx+0x1]
 80a:	44 0f 44 da          	cmove  r11d,edx
 80e:	41 80 7c 04 06 00    	cmp    BYTE PTR [r12+rax*1+0x6],0x0
 814:	45 8d 53 01          	lea    r10d,[r11+0x1]
 818:	45 0f 44 d3          	cmove  r10d,r11d
 81c:	41 80 7c 04 07 00    	cmp    BYTE PTR [r12+rax*1+0x7],0x0
 822:	45 8d 4a 01          	lea    r9d,[r10+0x1]
 826:	45 0f 44 ca          	cmove  r9d,r10d
 82a:	41 80 7c 04 08 00    	cmp    BYTE PTR [r12+rax*1+0x8],0x0
 830:	45 8d 41 01          	lea    r8d,[r9+0x1]
 834:	45 0f 44 c1          	cmove  r8d,r9d
 838:	41 80 7c 04 09 00    	cmp    BYTE PTR [r12+rax*1+0x9],0x0
 83e:	41 8d 78 01          	lea    edi,[r8+0x1]
 842:	41 0f 44 f8          	cmove  edi,r8d
 846:	41 80 7c 04 0a 00    	cmp    BYTE PTR [r12+rax*1+0xa],0x0
 84c:	8d 77 01             	lea    esi,[rdi+0x1]
 84f:	0f 44 f7             	cmove  esi,edi
 852:	41 80 7c 04 0b 00    	cmp    BYTE PTR [r12+rax*1+0xb],0x0
 858:	8d 4e 01             	lea    ecx,[rsi+0x1]
 85b:	0f 44 ce             	cmove  ecx,esi
 85e:	41 80 7c 04 0c 00    	cmp    BYTE PTR [r12+rax*1+0xc],0x0
 864:	8d 51 01             	lea    edx,[rcx+0x1]
 867:	0f 44 d1             	cmove  edx,ecx
 86a:	41 80 7c 04 0d 00    	cmp    BYTE PTR [r12+rax*1+0xd],0x0
 870:	8d 7a 01             	lea    edi,[rdx+0x1]
 873:	0f 44 fa             	cmove  edi,edx
 876:	48 83 c0 0a          	add    rax,0xa
	}
	*/

	for(i = 0; i < MAX_X; i++) {
		cnt = 0;
		for(j = 0; j < MAX_Y; j++) {
 87a:	48 83 f8 14          	cmp    rax,0x14
 87e:	0f 85 70 ff ff ff    	jne    7f4 <solve3+0x54>
			if(m->e[i][j] > 0) {
				cnt++;
			}
		}
		if(cnt > 0) {
 884:	85 ff                	test   edi,edi
 886:	0f 84 04 01 00 00    	je     990 <solve3+0x1f0>
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
 88c:	83 c7 01             	add    edi,0x1
 88f:	be 01 00 00 00       	mov    esi,0x1
			if(m->e[i][j] > 0) {
				cnt++;
			}
		}
		if(cnt > 0) {
			cm->vlen ++;
 894:	83 43 04 01          	add    DWORD PTR [rbx+0x4],0x1
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
 898:	48 63 ff             	movsxd rdi,edi
 89b:	e8 00 00 00 00       	call   8a0 <solve3+0x100>
			cm->v[i]=vs;
 8a0:	31 c9                	xor    ecx,ecx
 8a2:	49 89 45 00          	mov    QWORD PTR [r13+0x0],rax
			for(k = 0, j = 0; j < MAX_Y; j++) {
 8a6:	31 d2                	xor    edx,edx
				if(m->e[i][j] > 0) {
 8a8:	41 80 7c 0c 04 00    	cmp    BYTE PTR [r12+rcx*1+0x4],0x0
 8ae:	74 09                	je     8b9 <solve3+0x119>
					vs[k] = j;
 8b0:	48 63 f2             	movsxd rsi,edx
					k++;
 8b3:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 8b6:	88 0c 30             	mov    BYTE PTR [rax+rsi*1],cl
					k++;
 8b9:	48 83 c1 01          	add    rcx,0x1
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 8bd:	41 80 7c 0c 04 00    	cmp    BYTE PTR [r12+rcx*1+0x4],0x0
 8c3:	74 09                	je     8ce <solve3+0x12e>
					vs[k] = j;
 8c5:	48 63 fa             	movsxd rdi,edx
					k++;
 8c8:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 8cb:	88 0c 38             	mov    BYTE PTR [rax+rdi*1],cl
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 8ce:	42 80 7c 21 05 00    	cmp    BYTE PTR [rcx+r12*1+0x5],0x0
					vs[k] = j;
					k++;
 8d4:	48 8d 71 01          	lea    rsi,[rcx+0x1]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 8d8:	74 0a                	je     8e4 <solve3+0x144>
					vs[k] = j;
 8da:	4c 63 c2             	movsxd r8,edx
					k++;
 8dd:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 8e0:	42 88 34 00          	mov    BYTE PTR [rax+r8*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 8e4:	42 80 7c 21 06 00    	cmp    BYTE PTR [rcx+r12*1+0x6],0x0
					vs[k] = j;
					k++;
 8ea:	48 8d 71 02          	lea    rsi,[rcx+0x2]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 8ee:	74 0a                	je     8fa <solve3+0x15a>
					vs[k] = j;
 8f0:	4c 63 ca             	movsxd r9,edx
					k++;
 8f3:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 8f6:	42 88 34 08          	mov    BYTE PTR [rax+r9*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 8fa:	42 80 7c 21 07 00    	cmp    BYTE PTR [rcx+r12*1+0x7],0x0
					vs[k] = j;
					k++;
 900:	48 8d 71 03          	lea    rsi,[rcx+0x3]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 904:	74 0a                	je     910 <solve3+0x170>
					vs[k] = j;
 906:	4c 63 d2             	movsxd r10,edx
					k++;
 909:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 90c:	42 88 34 10          	mov    BYTE PTR [rax+r10*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 910:	42 80 7c 21 08 00    	cmp    BYTE PTR [rcx+r12*1+0x8],0x0
					vs[k] = j;
					k++;
 916:	48 8d 71 04          	lea    rsi,[rcx+0x4]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 91a:	74 0a                	je     926 <solve3+0x186>
					vs[k] = j;
 91c:	4c 63 da             	movsxd r11,edx
					k++;
 91f:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 922:	42 88 34 18          	mov    BYTE PTR [rax+r11*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 926:	42 80 7c 21 09 00    	cmp    BYTE PTR [rcx+r12*1+0x9],0x0
					vs[k] = j;
					k++;
 92c:	48 8d 71 05          	lea    rsi,[rcx+0x5]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 930:	74 0a                	je     93c <solve3+0x19c>
					vs[k] = j;
 932:	48 63 fa             	movsxd rdi,edx
					k++;
 935:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 938:	40 88 34 38          	mov    BYTE PTR [rax+rdi*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 93c:	42 80 7c 21 0a 00    	cmp    BYTE PTR [rcx+r12*1+0xa],0x0
					vs[k] = j;
					k++;
 942:	48 8d 71 06          	lea    rsi,[rcx+0x6]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 946:	74 0a                	je     952 <solve3+0x1b2>
					vs[k] = j;
 948:	4c 63 c2             	movsxd r8,edx
					k++;
 94b:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 94e:	42 88 34 00          	mov    BYTE PTR [rax+r8*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 952:	42 80 7c 21 0b 00    	cmp    BYTE PTR [rcx+r12*1+0xb],0x0
					vs[k] = j;
					k++;
 958:	48 8d 71 07          	lea    rsi,[rcx+0x7]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 95c:	74 0a                	je     968 <solve3+0x1c8>
					vs[k] = j;
 95e:	4c 63 ca             	movsxd r9,edx
					k++;
 961:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 964:	42 88 34 08          	mov    BYTE PTR [rax+r9*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 968:	42 80 7c 21 0c 00    	cmp    BYTE PTR [rcx+r12*1+0xc],0x0
					vs[k] = j;
					k++;
 96e:	48 8d 71 08          	lea    rsi,[rcx+0x8]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 972:	74 0a                	je     97e <solve3+0x1de>
					vs[k] = j;
 974:	4c 63 d2             	movsxd r10,edx
					k++;
 977:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 97a:	42 88 34 10          	mov    BYTE PTR [rax+r10*1],sil
					k++;
 97e:	48 83 c1 09          	add    rcx,0x9
		}
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
 982:	48 83 f9 14          	cmp    rcx,0x14
 986:	0f 85 1c ff ff ff    	jne    8a8 <solve3+0x108>
 98c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 990:	49 83 c5 08          	add    r13,0x8
 994:	49 83 c4 15          	add    r12,0x15
	if(!cm) {
		return NULL;
	}
	*/

	for(i = 0; i < MAX_X; i++) {
 998:	4d 39 fd             	cmp    r13,r15
 99b:	0f 85 4f fe ff ff    	jne    7f0 <solve3+0x50>
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;
 9a1:	48 85 db             	test   rbx,rbx
 9a4:	0f 84 36 02 00 00    	je     be0 <solve3+0x440>

	return cm;
}


void solve3(matrix_t *m, int *succ) {
 9aa:	4c 8d 63 10          	lea    r12,[rbx+0x10]

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 9ae:	49 83 3c 24 00       	cmp    QWORD PTR [r12],0x0
 9b3:	74 2b                	je     9e0 <solve3+0x240>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 9b5:	8b 45 00             	mov    eax,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 9b8:	c6 44 24 10 01       	mov    BYTE PTR [rsp+0x10],0x1
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 9bd:	85 c0                	test   eax,eax
 9bf:	0f 84 3e 02 00 00    	je     c03 <solve3+0x463>
		(*suc)++;
 9c5:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 9ca:	4d 89 f1             	mov    r9,r14
 9cd:	45 31 c0             	xor    r8d,r8d
 9d0:	ba 01 00 00 00       	mov    edx,0x1
 9d5:	48 89 de             	mov    rsi,rbx
 9d8:	48 89 ef             	mov    rdi,rbp
 9db:	e8 20 f6 ff ff       	call   0 <solveV3.part.1>
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 9e0:	b8 02 00 00 00       	mov    eax,0x2
 9e5:	4d 8d 7c 24 08       	lea    r15,[r12+0x8]
 9ea:	e9 c8 01 00 00       	jmp    bb7 <solve3+0x417>
 9ef:	90                   	nop
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 9f0:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 9f5:	89 c2                	mov    edx,eax
 9f7:	4d 89 f1             	mov    r9,r14
 9fa:	45 31 c0             	xor    r8d,r8d
 9fd:	48 89 de             	mov    rsi,rbx
 a00:	48 89 ef             	mov    rdi,rbp
 a03:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
 a07:	e8 f4 f5 ff ff       	call   0 <solveV3.part.1>
 a0c:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 a10:	49 83 7f 08 00       	cmp    QWORD PTR [r15+0x8],0x0
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 a15:	44 8d 60 01          	lea    r12d,[rax+0x1]
 a19:	4d 8d 6f 08          	lea    r13,[r15+0x8]
		if(cm->v[i] != NULL) {
 a1d:	74 2b                	je     a4a <solve3+0x2aa>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 a1f:	44 8b 7d 00          	mov    r15d,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 a23:	44 88 64 24 10       	mov    BYTE PTR [rsp+0x10],r12b
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 a28:	45 85 ff             	test   r15d,r15d
 a2b:	0f 84 4f 02 00 00    	je     c80 <solve3+0x4e0>
		(*suc)++;
 a31:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 a36:	4d 89 f1             	mov    r9,r14
 a39:	45 31 c0             	xor    r8d,r8d
 a3c:	44 89 e2             	mov    edx,r12d
 a3f:	48 89 de             	mov    rsi,rbx
 a42:	48 89 ef             	mov    rdi,rbp
 a45:	e8 b6 f5 ff ff       	call   0 <solveV3.part.1>

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 a4a:	49 83 7d 08 00       	cmp    QWORD PTR [r13+0x8],0x0
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 a4f:	41 8d 54 24 01       	lea    edx,[r12+0x1]
		if(cm->v[i] != NULL) {
 a54:	74 25                	je     a7b <solve3+0x2db>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 a56:	8b 4d 00             	mov    ecx,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 a59:	88 54 24 10          	mov    BYTE PTR [rsp+0x10],dl
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 a5d:	85 c9                	test   ecx,ecx
 a5f:	0f 84 0b 02 00 00    	je     c70 <solve3+0x4d0>
		(*suc)++;
 a65:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 a6a:	4d 89 f1             	mov    r9,r14
 a6d:	45 31 c0             	xor    r8d,r8d
 a70:	48 89 de             	mov    rsi,rbx
 a73:	48 89 ef             	mov    rdi,rbp
 a76:	e8 85 f5 ff ff       	call   0 <solveV3.part.1>

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 a7b:	49 83 7d 10 00       	cmp    QWORD PTR [r13+0x10],0x0
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 a80:	41 8d 54 24 02       	lea    edx,[r12+0x2]
		if(cm->v[i] != NULL) {
 a85:	74 25                	je     aac <solve3+0x30c>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 a87:	8b 7d 00             	mov    edi,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 a8a:	88 54 24 10          	mov    BYTE PTR [rsp+0x10],dl
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 a8e:	85 ff                	test   edi,edi
 a90:	0f 84 ca 01 00 00    	je     c60 <solve3+0x4c0>
		(*suc)++;
 a96:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 a9b:	4d 89 f1             	mov    r9,r14
 a9e:	45 31 c0             	xor    r8d,r8d
 aa1:	48 89 de             	mov    rsi,rbx
 aa4:	48 89 ef             	mov    rdi,rbp
 aa7:	e8 54 f5 ff ff       	call   0 <solveV3.part.1>

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 aac:	49 83 7d 18 00       	cmp    QWORD PTR [r13+0x18],0x0
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 ab1:	41 8d 54 24 03       	lea    edx,[r12+0x3]
		if(cm->v[i] != NULL) {
 ab6:	74 27                	je     adf <solve3+0x33f>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 ab8:	44 8b 45 00          	mov    r8d,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 abc:	88 54 24 10          	mov    BYTE PTR [rsp+0x10],dl
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 ac0:	45 85 c0             	test   r8d,r8d
 ac3:	0f 84 87 01 00 00    	je     c50 <solve3+0x4b0>
		(*suc)++;
 ac9:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 ace:	4d 89 f1             	mov    r9,r14
 ad1:	45 31 c0             	xor    r8d,r8d
 ad4:	48 89 de             	mov    rsi,rbx
 ad7:	48 89 ef             	mov    rdi,rbp
 ada:	e8 21 f5 ff ff       	call   0 <solveV3.part.1>

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 adf:	49 83 7d 20 00       	cmp    QWORD PTR [r13+0x20],0x0
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 ae4:	41 8d 54 24 04       	lea    edx,[r12+0x4]
		if(cm->v[i] != NULL) {
 ae9:	74 27                	je     b12 <solve3+0x372>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 aeb:	44 8b 4d 00          	mov    r9d,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 aef:	88 54 24 10          	mov    BYTE PTR [rsp+0x10],dl
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 af3:	45 85 c9             	test   r9d,r9d
 af6:	0f 84 44 01 00 00    	je     c40 <solve3+0x4a0>
		(*suc)++;
 afc:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 b01:	4d 89 f1             	mov    r9,r14
 b04:	45 31 c0             	xor    r8d,r8d
 b07:	48 89 de             	mov    rsi,rbx
 b0a:	48 89 ef             	mov    rdi,rbp
 b0d:	e8 ee f4 ff ff       	call   0 <solveV3.part.1>

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 b12:	49 83 7d 28 00       	cmp    QWORD PTR [r13+0x28],0x0
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 b17:	41 8d 54 24 05       	lea    edx,[r12+0x5]
		if(cm->v[i] != NULL) {
 b1c:	74 27                	je     b45 <solve3+0x3a5>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 b1e:	44 8b 55 00          	mov    r10d,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 b22:	88 54 24 10          	mov    BYTE PTR [rsp+0x10],dl
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 b26:	45 85 d2             	test   r10d,r10d
 b29:	0f 84 01 01 00 00    	je     c30 <solve3+0x490>
		(*suc)++;
 b2f:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 b34:	4d 89 f1             	mov    r9,r14
 b37:	45 31 c0             	xor    r8d,r8d
 b3a:	48 89 de             	mov    rsi,rbx
 b3d:	48 89 ef             	mov    rdi,rbp
 b40:	e8 bb f4 ff ff       	call   0 <solveV3.part.1>

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 b45:	49 83 7d 30 00       	cmp    QWORD PTR [r13+0x30],0x0
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 b4a:	41 8d 54 24 06       	lea    edx,[r12+0x6]
		if(cm->v[i] != NULL) {
 b4f:	74 27                	je     b78 <solve3+0x3d8>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 b51:	44 8b 5d 00          	mov    r11d,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 b55:	88 54 24 10          	mov    BYTE PTR [rsp+0x10],dl
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 b59:	45 85 db             	test   r11d,r11d
 b5c:	0f 84 be 00 00 00    	je     c20 <solve3+0x480>
		(*suc)++;
 b62:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 b67:	4d 89 f1             	mov    r9,r14
 b6a:	45 31 c0             	xor    r8d,r8d
 b6d:	48 89 de             	mov    rsi,rbx
 b70:	48 89 ef             	mov    rdi,rbp
 b73:	e8 88 f4 ff ff       	call   0 <solveV3.part.1>

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
 b78:	49 83 7d 38 00       	cmp    QWORD PTR [r13+0x38],0x0
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 b7d:	41 8d 54 24 07       	lea    edx,[r12+0x7]
		if(cm->v[i] != NULL) {
 b82:	74 25                	je     ba9 <solve3+0x409>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 b84:	8b 75 00             	mov    esi,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 b87:	88 54 24 10          	mov    BYTE PTR [rsp+0x10],dl
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 b8b:	85 f6                	test   esi,esi
 b8d:	0f 84 7d 00 00 00    	je     c10 <solve3+0x470>
		(*suc)++;
 b93:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
 b98:	4d 89 f1             	mov    r9,r14
 b9b:	45 31 c0             	xor    r8d,r8d
 b9e:	48 89 de             	mov    rsi,rbx
 ba1:	48 89 ef             	mov    rdi,rbp
 ba4:	e8 57 f4 ff ff       	call   0 <solveV3.part.1>
	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
 ba9:	41 8d 44 24 08       	lea    eax,[r12+0x8]
 bae:	4d 8d 7d 40          	lea    r15,[r13+0x40]
 bb2:	83 f8 14             	cmp    eax,0x14
 bb5:	74 29                	je     be0 <solve3+0x440>
		if(cm->v[i] != NULL) {
 bb7:	49 83 3f 00          	cmp    QWORD PTR [r15],0x0
 bbb:	0f 84 4f fe ff ff    	je     a10 <solve3+0x270>
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 bc1:	44 8b 65 00          	mov    r12d,DWORD PTR [rbp+0x0]
	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
 bc5:	88 44 24 10          	mov    BYTE PTR [rsp+0x10],al
	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
 bc9:	45 85 e4             	test   r12d,r12d
 bcc:	0f 85 1e fe ff ff    	jne    9f0 <solve3+0x250>
		(*suc)++;
 bd2:	41 83 06 01          	add    DWORD PTR [r14],0x1
 bd6:	e9 35 fe ff ff       	jmp    a10 <solve3+0x270>
 bdb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
		}
	}
}
 be0:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
 be5:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
 bec:	00 00 
 bee:	0f 85 95 00 00 00    	jne    c89 <solve3+0x4e9>
 bf4:	48 83 c4 58          	add    rsp,0x58
 bf8:	5b                   	pop    rbx
 bf9:	5d                   	pop    rbp
 bfa:	41 5c                	pop    r12
 bfc:	41 5d                	pop    r13
 bfe:	41 5e                	pop    r14
 c00:	41 5f                	pop    r15
 c02:	c3                   	ret    
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 c03:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c07:	e9 d4 fd ff ff       	jmp    9e0 <solve3+0x240>
 c0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 c10:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c14:	eb 93                	jmp    ba9 <solve3+0x409>
 c16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 c1d:	00 00 00 
 c20:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c24:	e9 4f ff ff ff       	jmp    b78 <solve3+0x3d8>
 c29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 c30:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c34:	e9 0c ff ff ff       	jmp    b45 <solve3+0x3a5>
 c39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 c40:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c44:	e9 c9 fe ff ff       	jmp    b12 <solve3+0x372>
 c49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 c50:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c54:	e9 86 fe ff ff       	jmp    adf <solve3+0x33f>
 c59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 c60:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c64:	e9 43 fe ff ff       	jmp    aac <solve3+0x30c>
 c69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 c70:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c74:	e9 02 fe ff ff       	jmp    a7b <solve3+0x2db>
 c79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 c80:	41 83 06 01          	add    DWORD PTR [r14],0x1
 c84:	e9 c1 fd ff ff       	jmp    a4a <solve3+0x2aa>
	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
		}
	}
}
 c89:	e8 00 00 00 00       	call   c8e <solve3+0x4ee>
 c8e:	66 90                	xchg   ax,ax

0000000000000c90 <solveV3>:
void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;
 c90:	49 63 c0             	movsxd rax,r8d
 c93:	88 14 01             	mov    BYTE PTR [rcx+rax*1],dl

	if(m->len == 0) {
 c96:	44 8b 1f             	mov    r11d,DWORD PTR [rdi]
 c99:	45 85 db             	test   r11d,r11d
 c9c:	74 12                	je     cb0 <solveV3+0x20>
 c9e:	0f b6 d2             	movzx  edx,dl
		(*suc)++;
		return;
 ca1:	e9 5a f3 ff ff       	jmp    0 <solveV3.part.1>
 ca6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 cad:	00 00 00 
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
 cb0:	41 83 01 01          	add    DWORD PTR [r9],0x1
			m->e[i][k] = a;
		}
	}

	return;
}
 cb4:	c3                   	ret    
 cb5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
 cbc:	00 00 00 00 

0000000000000cc0 <solve4>:




void solve4(matrix_t *m, int *suc) {
 cc0:	41 57                	push   r15
 cc2:	49 89 ff             	mov    r15,rdi
 cc5:	41 56                	push   r14
 cc7:	41 55                	push   r13
 cc9:	41 54                	push   r12
 ccb:	55                   	push   rbp
 ccc:	53                   	push   rbx
 ccd:	48 89 f3             	mov    rbx,rsi
 cd0:	48 81 ec d8 00 00 00 	sub    rsp,0xd8
 cd7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 cde:	00 00 
 ce0:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
 ce7:	00 
 ce8:	31 c0                	xor    eax,eax
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;
 cea:	48 85 ff             	test   rdi,rdi
 ced:	0f 84 7b 02 00 00    	je     f6e <solve4+0x2ae>
cmatrix_t * create_companion(matrix_t *m) {
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
 cf3:	be b0 00 00 00       	mov    esi,0xb0
 cf8:	bf 01 00 00 00       	mov    edi,0x1
 cfd:	4c 89 fd             	mov    rbp,r15
 d00:	e8 00 00 00 00       	call   d05 <solve4+0x45>
}




void solve4(matrix_t *m, int *suc) {
 d05:	4c 8d 60 08          	lea    r12,[rax+0x8]
 d09:	4c 8d b0 a8 00 00 00 	lea    r14,[rax+0xa8]
cmatrix_t * create_companion(matrix_t *m) {
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
 d10:	49 89 c5             	mov    r13,rax
 d13:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
}




void solve4(matrix_t *m, int *suc) {
 d18:	31 c0                	xor    eax,eax
 d1a:	31 ff                	xor    edi,edi

	for(i = 0; i < MAX_X; i++) {
		cnt = 0;
		for(j = 0; j < MAX_Y; j++) {
			if(m->e[i][j] > 0) {
				cnt++;
 d1c:	80 7c 05 04 00       	cmp    BYTE PTR [rbp+rax*1+0x4],0x0
 d21:	8d 57 01             	lea    edx,[rdi+0x1]
 d24:	0f 44 d7             	cmove  edx,edi
 d27:	80 7c 05 05 00       	cmp    BYTE PTR [rbp+rax*1+0x5],0x0
 d2c:	44 8d 5a 01          	lea    r11d,[rdx+0x1]
 d30:	44 0f 44 da          	cmove  r11d,edx
 d34:	80 7c 05 06 00       	cmp    BYTE PTR [rbp+rax*1+0x6],0x0
 d39:	45 8d 53 01          	lea    r10d,[r11+0x1]
 d3d:	45 0f 44 d3          	cmove  r10d,r11d
 d41:	80 7c 05 07 00       	cmp    BYTE PTR [rbp+rax*1+0x7],0x0
 d46:	45 8d 4a 01          	lea    r9d,[r10+0x1]
 d4a:	45 0f 44 ca          	cmove  r9d,r10d
 d4e:	80 7c 05 08 00       	cmp    BYTE PTR [rbp+rax*1+0x8],0x0
 d53:	45 8d 41 01          	lea    r8d,[r9+0x1]
 d57:	45 0f 44 c1          	cmove  r8d,r9d
 d5b:	80 7c 05 09 00       	cmp    BYTE PTR [rbp+rax*1+0x9],0x0
 d60:	41 8d 78 01          	lea    edi,[r8+0x1]
 d64:	41 0f 44 f8          	cmove  edi,r8d
 d68:	80 7c 05 0a 00       	cmp    BYTE PTR [rbp+rax*1+0xa],0x0
 d6d:	8d 77 01             	lea    esi,[rdi+0x1]
 d70:	0f 44 f7             	cmove  esi,edi
 d73:	80 7c 05 0b 00       	cmp    BYTE PTR [rbp+rax*1+0xb],0x0
 d78:	8d 4e 01             	lea    ecx,[rsi+0x1]
 d7b:	0f 44 ce             	cmove  ecx,esi
 d7e:	80 7c 05 0c 00       	cmp    BYTE PTR [rbp+rax*1+0xc],0x0
 d83:	8d 51 01             	lea    edx,[rcx+0x1]
 d86:	0f 44 d1             	cmove  edx,ecx
 d89:	80 7c 05 0d 00       	cmp    BYTE PTR [rbp+rax*1+0xd],0x0
 d8e:	8d 7a 01             	lea    edi,[rdx+0x1]
 d91:	0f 44 fa             	cmove  edi,edx
 d94:	48 83 c0 0a          	add    rax,0xa
	}
	*/

	for(i = 0; i < MAX_X; i++) {
		cnt = 0;
		for(j = 0; j < MAX_Y; j++) {
 d98:	48 83 f8 14          	cmp    rax,0x14
 d9c:	0f 85 7a ff ff ff    	jne    d1c <solve4+0x5c>
			if(m->e[i][j] > 0) {
				cnt++;
			}
		}
		if(cnt > 0) {
 da2:	85 ff                	test   edi,edi
 da4:	0f 84 fe 00 00 00    	je     ea8 <solve4+0x1e8>
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
 daa:	83 c7 01             	add    edi,0x1
 dad:	be 01 00 00 00       	mov    esi,0x1
			if(m->e[i][j] > 0) {
				cnt++;
			}
		}
		if(cnt > 0) {
			cm->vlen ++;
 db2:	41 83 45 04 01       	add    DWORD PTR [r13+0x4],0x1
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
 db7:	48 63 ff             	movsxd rdi,edi
 dba:	e8 00 00 00 00       	call   dbf <solve4+0xff>
			cm->v[i]=vs;
 dbf:	31 c9                	xor    ecx,ecx
 dc1:	49 89 04 24          	mov    QWORD PTR [r12],rax
			for(k = 0, j = 0; j < MAX_Y; j++) {
 dc5:	31 d2                	xor    edx,edx
				if(m->e[i][j] > 0) {
 dc7:	80 7c 0d 04 00       	cmp    BYTE PTR [rbp+rcx*1+0x4],0x0
 dcc:	74 09                	je     dd7 <solve4+0x117>
					vs[k] = j;
 dce:	48 63 f2             	movsxd rsi,edx
					k++;
 dd1:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 dd4:	88 0c 30             	mov    BYTE PTR [rax+rsi*1],cl
					k++;
 dd7:	48 83 c1 01          	add    rcx,0x1
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 ddb:	80 7c 0d 04 00       	cmp    BYTE PTR [rbp+rcx*1+0x4],0x0
 de0:	74 09                	je     deb <solve4+0x12b>
					vs[k] = j;
 de2:	48 63 fa             	movsxd rdi,edx
					k++;
 de5:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 de8:	88 0c 38             	mov    BYTE PTR [rax+rdi*1],cl
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 deb:	80 7c 29 05 00       	cmp    BYTE PTR [rcx+rbp*1+0x5],0x0
					vs[k] = j;
					k++;
 df0:	48 8d 71 01          	lea    rsi,[rcx+0x1]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 df4:	74 0a                	je     e00 <solve4+0x140>
					vs[k] = j;
 df6:	4c 63 c2             	movsxd r8,edx
					k++;
 df9:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 dfc:	42 88 34 00          	mov    BYTE PTR [rax+r8*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e00:	80 7c 29 06 00       	cmp    BYTE PTR [rcx+rbp*1+0x6],0x0
					vs[k] = j;
					k++;
 e05:	48 8d 71 02          	lea    rsi,[rcx+0x2]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e09:	74 0a                	je     e15 <solve4+0x155>
					vs[k] = j;
 e0b:	4c 63 ca             	movsxd r9,edx
					k++;
 e0e:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 e11:	42 88 34 08          	mov    BYTE PTR [rax+r9*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e15:	80 7c 29 07 00       	cmp    BYTE PTR [rcx+rbp*1+0x7],0x0
					vs[k] = j;
					k++;
 e1a:	48 8d 71 03          	lea    rsi,[rcx+0x3]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e1e:	74 0a                	je     e2a <solve4+0x16a>
					vs[k] = j;
 e20:	4c 63 d2             	movsxd r10,edx
					k++;
 e23:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 e26:	42 88 34 10          	mov    BYTE PTR [rax+r10*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e2a:	80 7c 29 08 00       	cmp    BYTE PTR [rcx+rbp*1+0x8],0x0
					vs[k] = j;
					k++;
 e2f:	48 8d 71 04          	lea    rsi,[rcx+0x4]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e33:	74 0a                	je     e3f <solve4+0x17f>
					vs[k] = j;
 e35:	4c 63 da             	movsxd r11,edx
					k++;
 e38:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 e3b:	42 88 34 18          	mov    BYTE PTR [rax+r11*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e3f:	80 7c 29 09 00       	cmp    BYTE PTR [rcx+rbp*1+0x9],0x0
					vs[k] = j;
					k++;
 e44:	48 8d 71 05          	lea    rsi,[rcx+0x5]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e48:	74 0a                	je     e54 <solve4+0x194>
					vs[k] = j;
 e4a:	48 63 fa             	movsxd rdi,edx
					k++;
 e4d:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 e50:	40 88 34 38          	mov    BYTE PTR [rax+rdi*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e54:	80 7c 29 0a 00       	cmp    BYTE PTR [rcx+rbp*1+0xa],0x0
					vs[k] = j;
					k++;
 e59:	48 8d 71 06          	lea    rsi,[rcx+0x6]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e5d:	74 0a                	je     e69 <solve4+0x1a9>
					vs[k] = j;
 e5f:	4c 63 c2             	movsxd r8,edx
					k++;
 e62:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 e65:	42 88 34 00          	mov    BYTE PTR [rax+r8*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e69:	80 7c 29 0b 00       	cmp    BYTE PTR [rcx+rbp*1+0xb],0x0
					vs[k] = j;
					k++;
 e6e:	48 8d 71 07          	lea    rsi,[rcx+0x7]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e72:	74 0a                	je     e7e <solve4+0x1be>
					vs[k] = j;
 e74:	4c 63 ca             	movsxd r9,edx
					k++;
 e77:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 e7a:	42 88 34 08          	mov    BYTE PTR [rax+r9*1],sil
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e7e:	80 7c 29 0c 00       	cmp    BYTE PTR [rcx+rbp*1+0xc],0x0
					vs[k] = j;
					k++;
 e83:	48 8d 71 08          	lea    rsi,[rcx+0x8]
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
 e87:	74 0a                	je     e93 <solve4+0x1d3>
					vs[k] = j;
 e89:	4c 63 d2             	movsxd r10,edx
					k++;
 e8c:	83 c2 01             	add    edx,0x1
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
 e8f:	42 88 34 10          	mov    BYTE PTR [rax+r10*1],sil
					k++;
 e93:	48 83 c1 09          	add    rcx,0x9
		}
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
 e97:	48 83 f9 14          	cmp    rcx,0x14
 e9b:	0f 85 26 ff ff ff    	jne    dc7 <solve4+0x107>
 ea1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 ea8:	49 83 c4 08          	add    r12,0x8
 eac:	48 83 c5 15          	add    rbp,0x15
	if(!cm) {
		return NULL;
	}
	*/

	for(i = 0; i < MAX_X; i++) {
 eb0:	4d 39 f4             	cmp    r12,r14
 eb3:	0f 85 5f fe ff ff    	jne    d18 <solve4+0x58>
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;
 eb9:	4d 85 ed             	test   r13,r13
 ebc:	0f 84 ac 00 00 00    	je     f6e <solve4+0x2ae>

	int results[MAX_X];
	results[0] = 0;
//#pragma omp parallel for private(i) schedule(static,1)
#pragma omp parallel for private(i) schedule(dynamic)
 ec2:	48 8d 74 24 70       	lea    rsi,[rsp+0x70]
 ec7:	4c 8d a4 24 90 00 00 	lea    r12,[rsp+0x90]
 ece:	00 
 ecf:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
 ed4:	41 b9 01 00 00 00    	mov    r9d,0x1
 eda:	41 b8 14 00 00 00    	mov    r8d,0x14
 ee0:	b9 01 00 00 00       	mov    ecx,0x1
 ee5:	31 d2                	xor    edx,edx
 ee7:	bf 00 00 00 00       	mov    edi,0x0

	cm = create_companion(m);
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
 eec:	c7 44 24 20 00 00 00 	mov    DWORD PTR [rsp+0x20],0x0
 ef3:	00 
//#pragma omp parallel for private(i) schedule(static,1)
#pragma omp parallel for private(i) schedule(dynamic)
 ef4:	4c 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],r15
 ef9:	4c 89 6c 24 78       	mov    QWORD PTR [rsp+0x78],r13
 efe:	4c 89 a4 24 80 00 00 	mov    QWORD PTR [rsp+0x80],r12
 f05:	00 
 f06:	48 89 ac 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rbp
 f0d:	00 
 f0e:	48 c7 04 24 01 00 00 	mov    QWORD PTR [rsp],0x1
 f15:	00 
 f16:	e8 00 00 00 00       	call   f1b <solve4+0x25b>
 f1b:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
 f20:	e8 5b f2 ff ff       	call   180 <solve4._omp_fn.0>
 f25:	e8 00 00 00 00       	call   f2a <solve4+0x26a>
			solveV3(&mp, cm, i, vsp, 0, &results[i]);
		}
	}

	for(i = 0; i < MAX_X; i++) {
		*(suc)+=results[i];
 f2a:	66 0f 6f 44 24 20    	movdqa xmm0,XMMWORD PTR [rsp+0x20]
 f30:	66 0f fe 44 24 30    	paddd  xmm0,XMMWORD PTR [rsp+0x30]
 f36:	66 0f fe 44 24 40    	paddd  xmm0,XMMWORD PTR [rsp+0x40]
 f3c:	66 0f fe 44 24 50    	paddd  xmm0,XMMWORD PTR [rsp+0x50]
 f42:	66 0f fe 44 24 60    	paddd  xmm0,XMMWORD PTR [rsp+0x60]
 f48:	66 0f 6f d0          	movdqa xmm2,xmm0
 f4c:	66 0f 73 da 08       	psrldq xmm2,0x8
 f51:	66 0f fe c2          	paddd  xmm0,xmm2
 f55:	66 0f 6f c8          	movdqa xmm1,xmm0
 f59:	66 0f 73 d9 04       	psrldq xmm1,0x4
 f5e:	66 0f fe c1          	paddd  xmm0,xmm1
 f62:	66 0f 7e 44 24 1c    	movd   DWORD PTR [rsp+0x1c],xmm0
 f68:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
 f6c:	01 03                	add    DWORD PTR [rbx],eax
	}

	return;
}
 f6e:	48 8b 84 24 c8 00 00 	mov    rax,QWORD PTR [rsp+0xc8]
 f75:	00 
 f76:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
 f7d:	00 00 
 f7f:	75 12                	jne    f93 <solve4+0x2d3>
 f81:	48 81 c4 d8 00 00 00 	add    rsp,0xd8
 f88:	5b                   	pop    rbx
 f89:	5d                   	pop    rbp
 f8a:	41 5c                	pop    r12
 f8c:	41 5d                	pop    r13
 f8e:	41 5e                	pop    r14
 f90:	41 5f                	pop    r15
 f92:	c3                   	ret    
 f93:	e8 00 00 00 00       	call   f98 <solve4+0x2d8>
