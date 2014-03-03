	.file	"puzzler.c"
	.text
	.p2align 4,,15
	.type	solveV3.part.1, @function
solveV3.part.1:
.LFB62:
	.cfi_startproc
	# basic block 2
	pushq	%r15	# 207	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movzbl	%dl, %r15d	# 16	zero_extendqidi2	[length = 4]
	movq	%rsi, %r10	# 5	*movdi_internal_rex64/2	[length = 3]
	pushq	%r14	# 208	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	# 209	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	# 210	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	# 211	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# 4	*movdi_internal_rex64/2	[length = 3]
	pushq	%rbx	# 212	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp	# 213	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_def_cfa_offset 128
	movq	8(%rsi,%r15,8), %rsi	# 17	*movdi_internal_rex64/2	[length = 5]
	movq	%rcx, 32(%rsp)	# 8	*movdi_internal_rex64/4	[length = 5]
	movq	%r9, 40(%rsp)	# 10	*movdi_internal_rex64/4	[length = 5]
	testq	%rsi, %rsi	# 18	*cmpdi_ccno_1/1	[length = 3]
	je	.L1	# 19	*jcc_1	[length = 6]
	# basic block 3
	movzbl	(%rsi), %ecx	# 21	*movqi_internal/3	[length = 3]
	testb	%cl, %cl	# 22	*cmpqi_ccno_1/1	[length = 2]
	je	.L1	# 23	*jcc_1	[length = 6]
	# basic block 4
	leaq	(%r15,%r15,4), %rdi	# 30	*lea_1	[length = 4]
	addl	$1, %r8d	# 98	*addsi_1/1	[length = 4]
	movl	$1, %r13d	# 12	*movdi_internal_rex64/1	[length = 6]
	movslq	%r8d, %rbx	# 99	*extendsidi2_rex64/2	[length = 3]
	movl	%r8d, 60(%rsp)	# 194	*movsi_internal/2	[length = 5]
	movq	%r10, %r11	# 183	*movdi_internal_rex64/2	[length = 3]
	leaq	(%r15,%rdi,4), %rax	# 32	*lea_1	[length = 4]
	movq	%rbx, 48(%rsp)	# 195	*movdi_internal_rex64/4	[length = 5]
	movq	%rax, %rdx	# 184	*movdi_internal_rex64/2	[length = 3]
	movq	%r15, %rax	# 185	*movdi_internal_rex64/2	[length = 3]
	movq	%rdx, %r15	# 186	*movdi_internal_rex64/2	[length = 3]
	jmp	.L8	# 237	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L12:
	# basic block 5
	leal	-1(%r14), %r9d	# 203	*lea_2	[length = 4]
	subl	$2, %edi	# 76	*addsi_1/1	[length = 3]
	movl	%edi, 0(%rbp)	# 77	*movsi_internal/2	[length = 3]
	movb	%r9b, 4(%rsi)	# 75	*movqi_internal/7	[length = 4]
.L5:
	# basic block 6
	movq	32(%rsp), %rdi	# 196	*movdi_internal_rex64/2	[length = 5]
	movq	48(%rsp), %rsi	# 197	*movdi_internal_rex64/2	[length = 5]
	movb	%cl, (%rdi,%rsi)	# 100	*movqi_internal/7	[length = 3]
	movl	0(%rbp), %ecx	# 225	*movsi_internal/1	[length = 3]
	testl	%ecx, %ecx	# 226	*cmpsi_ccno_1/1	[length = 2]
	je	.L11	# 102	*jcc_1	[length = 6]
	# basic block 7
	movq	40(%rsp), %r9	# 109	*movdi_internal_rex64/2	[length = 5]
	movl	60(%rsp), %r8d	# 110	*movsi_internal/1	[length = 5]
	movq	%rdi, %rcx	# 201	*movdi_internal_rex64/2	[length = 3]
	movq	%r11, %rsi	# 113	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 114	*movdi_internal_rex64/2	[length = 3]
	movq	%rax, 8(%rsp)	# 188	*movdi_internal_rex64/4	[length = 5]
	movb	%r10b, 24(%rsp)	# 189	*movqi_internal/7	[length = 5]
	movq	%r11, 16(%rsp)	# 190	*movdi_internal_rex64/4	[length = 5]
	call	solveV3.part.1	# 115	*call_0	[length = 5]
	movzbl	24(%rsp), %r10d	# 192	*movqi_internal/3	[length = 6]
	movq	16(%rsp), %r11	# 193	*movdi_internal_rex64/2	[length = 5]
	movq	8(%rsp), %rax	# 191	*movdi_internal_rex64/2	[length = 5]
.L7:
	# basic block 8
	leaq	(%rbx,%rbx,4), %r8	# 122	*lea_1	[length = 4]
	movzbl	%r10b, %r10d	# 202	*zero_extendqisi2_movzbl	[length = 4]
	movl	%r10d, 0(%rbp)	# 129	*movsi_internal/2	[length = 4]
	leaq	(%rbx,%r8,4), %rdi	# 124	*lea_1	[length = 4]
	addq	%r15, %rbx	# 137	*adddi_1/3	[length = 3]
	addq	%rax, %rdi	# 125	*adddi_1/1	[length = 3]
	movb	%r14b, 4(%rbp,%rdi)	# 127	*movqi_internal/7	[length = 5]
	movb	%r12b, 4(%rbp,%rbx)	# 139	*movqi_internal/7	[length = 5]
	movq	8(%r11,%rax,8), %rsi	# 141	*movdi_internal_rex64/2	[length = 5]
.L3:
	# basic block 9
	testq	%rsi, %rsi	# 144	*cmpdi_ccno_1/1	[length = 3]
	je	.L1	# 145	*jcc_1	[length = 2]
	# basic block 10
	movzbl	(%rsi,%r13), %ecx	# 147	*movqi_internal/3	[length = 5]
	addq	$1, %r13	# 148	*adddi_1/1	[length = 4]
	testb	%cl, %cl	# 150	*cmpqi_ccno_1/1	[length = 2]
	je	.L1	# 151	*jcc_1	[length = 2]
.L8:
	# basic block 11
	movzbl	%cl, %edx	# 205	*zero_extendqisi2_movzbl	[length = 3]
	movslq	%edx, %rbx	# 26	*extendsidi2_rex64/2	[length = 3]
	leaq	(%r15,%rbx), %rdi	# 206	*lea_1	[length = 4]
	addq	%rbp, %rdi	# 34	*adddi_1/3	[length = 3]
	movzbl	4(%rdi), %r12d	# 35	*movqi_internal/3	[length = 5]
	testb	%r12b, %r12b	# 36	*cmpqi_ccno_1/1	[length = 3]
	je	.L3	# 37	*jcc_1	[length = 2]
	# basic block 12
	leaq	(%rbx,%rbx,4), %rsi	# 54	*lea_1	[length = 4]
	leal	-1(%r12), %r8d	# 204	*lea_2	[length = 5]
	leaq	(%rbx,%rsi,4), %rsi	# 56	*lea_1	[length = 4]
	movb	%r8b, 4(%rdi)	# 49	*movqi_internal/7	[length = 4]
	movl	0(%rbp), %edi	# 63	*movsi_internal/1	[length = 3]
	addq	%rax, %rsi	# 57	*adddi_1/1	[length = 3]
	addq	%rbp, %rsi	# 58	*adddi_1/3	[length = 3]
	movl	%edi, %r10d	# 64	*movqi_internal/1	[length = 3]
	movzbl	4(%rsi), %r14d	# 59	*movqi_internal/3	[length = 5]
	testb	%r14b, %r14b	# 60	*cmpqi_ccno_1/1	[length = 3]
	jne	.L12	# 61	*jcc_1	[length = 6]
	# basic block 13
	subl	$1, %edi	# 94	*addsi_1/1	[length = 3]
	movb	$0, 4(%rsi)	# 93	*movqi_internal/7	[length = 4]
	movl	%edi, 0(%rbp)	# 95	*movsi_internal/2	[length = 3]
	jmp	.L5	# 239	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L11:
	# basic block 14
	movq	40(%rsp), %rdx	# 198	*movdi_internal_rex64/2	[length = 5]
	addl	$1, (%rdx)	# 104	*addsi_1/2	[length = 3]
	jmp	.L7	# 241	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L1:
	# basic block 15
	addq	$72, %rsp	# 216	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_def_cfa_offset 56
	popq	%rbx	# 217	*popdi1	[length = 1]
	.cfi_def_cfa_offset 48
	popq	%rbp	# 218	*popdi1	[length = 1]
	.cfi_def_cfa_offset 40
	popq	%r12	# 219	*popdi1	[length = 2]
	.cfi_def_cfa_offset 32
	popq	%r13	# 220	*popdi1	[length = 2]
	.cfi_def_cfa_offset 24
	popq	%r14	# 221	*popdi1	[length = 2]
	.cfi_def_cfa_offset 16
	popq	%r15	# 222	*popdi1	[length = 2]
	.cfi_def_cfa_offset 8
	ret	# 223	return_internal	[length = 1]
	.cfi_endproc
.LFE62:
	.size	solveV3.part.1, .-solveV3.part.1
	.p2align 4,,15
	.type	solve4._omp_fn.0, @function
solve4._omp_fn.0:
.LFB61:
	.cfi_startproc
	# basic block 2
	pushq	%r15	# 318	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	# 319	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	# 320	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	# 321	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	# 322	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	# 323	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# 19	*movdi_internal_rex64/2	[length = 3]
	subq	$552, %rsp	# 324	pro_epilogue_adjust_stack_di_add/1	[length = 7]
	.cfi_def_cfa_offset 608
	leaq	464(%rsp), %rsi	# 26	*lea_1	[length = 8]
	leaq	448(%rsp), %rdi	# 27	*lea_1	[length = 8]
	movq	%fs:40, %rax	# 21	stack_tls_protect_set_di	[length = 16]
	movq	%rax, 536(%rsp)
	xorl	%eax, %eax
	call	GOMP_loop_dynamic_next	# 28	*call_value_0_rex64	[length = 5]
	testb	%al, %al	# 30	*cmpqi_ccno_1/1	[length = 2]
	je	.L14	# 31	*jcc_1	[length = 6]
	# basic block 3
	movq	%rsp, %r14	# 67	*movdi_internal_rex64/2	[length = 3]
	.p2align 4,,10
	.p2align 3
.L22:
	# basic block 4
	movl	448(%rsp), %ebp	# 34	*movsi_internal/1	[length = 7]
	movl	464(%rsp), %r15d	# 36	*movsi_internal/1	[length = 8]
	movl	%ebp, %eax	# 306	*movsi_internal/1	[length = 2]
	movslq	%ebp, %r12	# 37	*extendsidi2_rex64/2	[length = 3]
	notl	%eax	# 146	*one_cmplsi2_1	[length = 2]
	movq	%r12, %r13	# 132	*movdi_internal_rex64/2	[length = 3]
	addl	%r15d, %eax	# 147	*addsi_1/1	[length = 3]
	testb	$1, %al	# 317	*testqi_1_maybe_si/1	[length = 2]
	je	.L16	# 214	*jcc_1	[length = 6]
	# basic block 5
	movq	8(%rbx), %rax	# 153	*movdi_internal_rex64/2	[length = 4]
	movq	24(%rbx), %r8	# 151	*movdi_internal_rex64/2	[length = 4]
	cmpq	$0, 8(%rax,%r12,8)	# 154	*cmpdi_ccno_1/2	[length = 6]
	movl	$0, (%r8,%r12,4)	# 152	*movsi_internal/2	[length = 8]
	je	.L34	# 155	*jcc_1	[length = 6]
	# basic block 6
	movq	(%rbx), %rsi	# 159	*movdi_internal_rex64/2	[length = 3]
	movq	%r14, %rdi	# 309	*movdi_internal_rex64/2	[length = 3]
	movl	$56, %ecx	# 310	*movdi_internal_rex64/1	[length = 5]
	rep movsq	# 161	*rep_movdi_rex64	[length = 3]
	movq	16(%rbx), %r11	# 163	*movdi_internal_rex64/2	[length = 4]
	movq	(%r11), %r13	# 164	*movdi_internal_rex64/2	[length = 3]
	movq	%r13, 480(%rsp)	# 165	*movdi_internal_rex64/4	[length = 8]
	movq	8(%r11), %rdi	# 166	*movdi_internal_rex64/2	[length = 4]
	movl	(%rsp), %r13d	# 340	*movsi_internal/1	[length = 4]
	movq	%rdi, 488(%rsp)	# 167	*movdi_internal_rex64/4	[length = 8]
	movq	16(%r11), %rsi	# 168	*movdi_internal_rex64/2	[length = 4]
	testl	%r13d, %r13d	# 341	*cmpsi_ccno_1/1	[length = 3]
	movq	%rsi, 496(%rsp)	# 169	*movdi_internal_rex64/4	[length = 8]
	movq	24(%r11), %rcx	# 170	*movdi_internal_rex64/2	[length = 4]
	movq	%rcx, 504(%rsp)	# 171	*movdi_internal_rex64/4	[length = 8]
	movq	32(%r11), %r9	# 172	*movdi_internal_rex64/2	[length = 4]
	movq	%r9, 512(%rsp)	# 173	*movdi_internal_rex64/4	[length = 8]
	movq	40(%r11), %rdx	# 174	*movdi_internal_rex64/2	[length = 4]
	movq	%rdx, 520(%rsp)	# 175	*movdi_internal_rex64/4	[length = 8]
	movzwl	48(%r11), %r10d	# 176	*movhi_internal/3	[length = 5]
	movb	%bpl, 480(%rsp)	# 179	*movqi_internal/7	[length = 8]
	movw	%r10w, 528(%rsp)	# 177	*movhi_internal/4	[length = 9]
	je	.L35	# 181	*jcc_1	[length = 6]
	# basic block 7
	leaq	(%r8,%r12,4), %r9	# 187	*lea_1	[length = 4]
	leaq	480(%rsp), %rcx	# 189	*lea_1	[length = 8]
	movzbl	%bpl, %edx	# 315	*zero_extendqisi2_movzbl	[length = 4]
	xorl	%r8d, %r8d	# 339	*movdi_xor	[length = 3]
	movq	%rax, %rsi	# 191	*movdi_internal_rex64/2	[length = 3]
	movq	%rsp, %rdi	# 192	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 193	*call_0	[length = 5]
.L34:
	# basic block 8
	addl	$1, %ebp	# 199	*addsi_1/1	[length = 3]
	leaq	1(%r12), %r13	# 314	*lea_1	[length = 5]
	cmpl	%ebp, %r15d	# 201	*cmpsi_1/1	[length = 3]
	movslq	%ebp, %r12	# 205	*extendsidi2_rex64/2	[length = 3]
	jg	.L16	# 202	*jcc_1	[length = 6]
	# basic block 9
	jmp	.L32	# 361	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L18:
	# basic block 10
	leaq	(%r8,%r13,4), %r9	# 105	*lea_1	[length = 4]
	leaq	480(%rsp), %rcx	# 107	*lea_1	[length = 8]
	movzbl	%bpl, %edx	# 316	*zero_extendqisi2_movzbl	[length = 4]
	xorl	%r8d, %r8d	# 342	*movdi_xor	[length = 3]
	movq	%rax, %rsi	# 109	*movdi_internal_rex64/2	[length = 3]
	movq	%rsp, %rdi	# 110	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 111	*call_0	[length = 5]
.L19:
	# basic block 11
	addl	$1, %ebp	# 276	*addsi_1/1	[length = 3]
	addq	$1, %r13	# 277	*adddi_1/1	[length = 4]
	cmpl	%ebp, %r15d	# 50	*cmpsi_1/1	[length = 3]
	jle	.L32	# 51	*jcc_1	[length = 6]
.L37:
	# basic block 12
	movq	8(%rbx), %rax	# 219	*movdi_internal_rex64/2	[length = 4]
	movslq	%ebp, %rdx	# 129	*extendsidi2_rex64/2	[length = 3]
	movq	24(%rbx), %r8	# 217	*movdi_internal_rex64/2	[length = 4]
	cmpq	$0, 8(%rax,%rdx,8)	# 220	*cmpdi_ccno_1/2	[length = 6]
	movl	$0, (%r8,%rdx,4)	# 218	*movsi_internal/2	[length = 8]
	je	.L33	# 221	*jcc_1	[length = 6]
	# basic block 13
	movq	(%rbx), %rsi	# 225	*movdi_internal_rex64/2	[length = 3]
	movq	%r14, %rdi	# 311	*movdi_internal_rex64/2	[length = 3]
	movl	$56, %ecx	# 312	*movdi_internal_rex64/1	[length = 5]
	rep movsq	# 227	*rep_movdi_rex64	[length = 3]
	movq	16(%rbx), %r11	# 229	*movdi_internal_rex64/2	[length = 4]
	movq	(%r11), %r12	# 230	*movdi_internal_rex64/2	[length = 3]
	movq	%r12, 480(%rsp)	# 231	*movdi_internal_rex64/4	[length = 8]
	movq	8(%r11), %rdi	# 232	*movdi_internal_rex64/2	[length = 4]
	movl	(%rsp), %r12d	# 337	*movsi_internal/1	[length = 4]
	movq	%rdi, 488(%rsp)	# 233	*movdi_internal_rex64/4	[length = 8]
	movq	16(%r11), %rsi	# 234	*movdi_internal_rex64/2	[length = 4]
	testl	%r12d, %r12d	# 338	*cmpsi_ccno_1/1	[length = 3]
	movq	%rsi, 496(%rsp)	# 235	*movdi_internal_rex64/4	[length = 8]
	movq	24(%r11), %rcx	# 236	*movdi_internal_rex64/2	[length = 4]
	movq	%rcx, 504(%rsp)	# 237	*movdi_internal_rex64/4	[length = 8]
	movq	32(%r11), %r9	# 238	*movdi_internal_rex64/2	[length = 4]
	movq	%r9, 512(%rsp)	# 239	*movdi_internal_rex64/4	[length = 8]
	movq	40(%r11), %rdx	# 240	*movdi_internal_rex64/2	[length = 4]
	movq	%rdx, 520(%rsp)	# 241	*movdi_internal_rex64/4	[length = 8]
	movzwl	48(%r11), %r10d	# 242	*movhi_internal/3	[length = 5]
	movb	%bpl, 480(%rsp)	# 245	*movqi_internal/7	[length = 8]
	movw	%r10w, 528(%rsp)	# 243	*movhi_internal/4	[length = 9]
	je	.L36	# 247	*jcc_1	[length = 6]
	# basic block 14
	leaq	(%r8,%r13,4), %r9	# 253	*lea_1	[length = 4]
	leaq	480(%rsp), %rcx	# 255	*lea_1	[length = 8]
	movzbl	%bpl, %edx	# 313	*zero_extendqisi2_movzbl	[length = 4]
	xorl	%r8d, %r8d	# 336	*movdi_xor	[length = 3]
	movq	%rax, %rsi	# 257	*movdi_internal_rex64/2	[length = 3]
	movq	%rsp, %rdi	# 258	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 259	*call_0	[length = 5]
.L33:
	# basic block 15
	addl	$1, %ebp	# 265	*addsi_1/1	[length = 3]
	addq	$1, %r13	# 266	*adddi_1/1	[length = 4]
	movslq	%ebp, %r12	# 271	*extendsidi2_rex64/2	[length = 3]
.L16:
	# basic block 16
	movq	8(%rbx), %rax	# 42	*movdi_internal_rex64/2	[length = 4]
	movq	24(%rbx), %r8	# 39	*movdi_internal_rex64/2	[length = 4]
	cmpq	$0, 8(%rax,%r12,8)	# 44	*cmpdi_ccno_1/2	[length = 6]
	movl	$0, (%r8,%r12,4)	# 41	*movsi_internal/2	[length = 8]
	je	.L19	# 45	*jcc_1	[length = 6]
	# basic block 17
	movq	(%rbx), %rsi	# 68	*movdi_internal_rex64/2	[length = 3]
	movq	%r14, %rdi	# 307	*movdi_internal_rex64/2	[length = 3]
	movl	$56, %ecx	# 308	*movdi_internal_rex64/1	[length = 5]
	rep movsq	# 72	*rep_movdi_rex64	[length = 3]
	movq	16(%rbx), %rsi	# 74	*movdi_internal_rex64/2	[length = 4]
	movq	(%rsi), %r9	# 75	*movdi_internal_rex64/2	[length = 3]
	movq	%r9, 480(%rsp)	# 76	*movdi_internal_rex64/4	[length = 8]
	movq	8(%rsi), %rdx	# 77	*movdi_internal_rex64/2	[length = 4]
	movl	(%rsp), %r9d	# 343	*movsi_internal/1	[length = 4]
	movq	%rdx, 488(%rsp)	# 78	*movdi_internal_rex64/4	[length = 8]
	movq	16(%rsi), %r12	# 79	*movdi_internal_rex64/2	[length = 4]
	testl	%r9d, %r9d	# 344	*cmpsi_ccno_1/1	[length = 3]
	movq	%r12, 496(%rsp)	# 80	*movdi_internal_rex64/4	[length = 8]
	movq	24(%rsi), %r11	# 81	*movdi_internal_rex64/2	[length = 4]
	movq	%r11, 504(%rsp)	# 82	*movdi_internal_rex64/4	[length = 8]
	movq	32(%rsi), %r10	# 83	*movdi_internal_rex64/2	[length = 4]
	movq	%r10, 512(%rsp)	# 84	*movdi_internal_rex64/4	[length = 8]
	movq	40(%rsi), %rdi	# 85	*movdi_internal_rex64/2	[length = 4]
	movq	%rdi, 520(%rsp)	# 86	*movdi_internal_rex64/4	[length = 8]
	movzwl	48(%rsi), %ecx	# 87	*movhi_internal/3	[length = 4]
	movb	%bpl, 480(%rsp)	# 90	*movqi_internal/7	[length = 8]
	movw	%cx, 528(%rsp)	# 88	*movhi_internal/4	[length = 8]
	jne	.L18	# 92	*jcc_1	[length = 6]
	# basic block 18
	addl	$1, %ebp	# 346	*addsi_1/1	[length = 3]
	addl	$1, (%r8,%r13,4)	# 94	*addsi_1/2	[length = 5]
	addq	$1, %r13	# 347	*adddi_1/1	[length = 4]
	cmpl	%ebp, %r15d	# 348	*cmpsi_1/1	[length = 3]
	jg	.L37	# 349	*jcc_1	[length = 6]
.L32:
	# basic block 19
	leaq	464(%rsp), %rsi	# 55	*lea_1	[length = 8]
	leaq	448(%rsp), %rdi	# 56	*lea_1	[length = 8]
	call	GOMP_loop_dynamic_next	# 57	*call_value_0_rex64	[length = 5]
	testb	%al, %al	# 60	*cmpqi_ccno_1/1	[length = 2]
	jne	.L22	# 61	*jcc_1	[length = 6]
.L14:
	# basic block 20
	call	GOMP_loop_end_nowait	# 116	*call_0	[length = 5]
	movq	536(%rsp), %rax	# 118	stack_tls_protect_test_di	[length = 16]
	xorq	%fs:40, %rax
	.p2align 4,,4
	jne	.L38	# 119	*jcc_1	[length = 2]
	# basic block 21
	addq	$552, %rsp	# 327	pro_epilogue_adjust_stack_di_add/1	[length = 7]
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	# 328	*popdi1	[length = 1]
	.cfi_def_cfa_offset 48
	popq	%rbp	# 329	*popdi1	[length = 1]
	.cfi_def_cfa_offset 40
	popq	%r12	# 330	*popdi1	[length = 2]
	.cfi_def_cfa_offset 32
	popq	%r13	# 331	*popdi1	[length = 2]
	.cfi_def_cfa_offset 24
	popq	%r14	# 332	*popdi1	[length = 2]
	.cfi_def_cfa_offset 16
	popq	%r15	# 333	*popdi1	[length = 2]
	.cfi_def_cfa_offset 8
	ret	# 334	return_internal	[length = 1]
	.p2align 4,,10
	.p2align 3
.L36:
	# basic block 22
	.cfi_restore_state
	addl	$1, (%r8,%r13,4)	# 262	*addsi_1/2	[length = 5]
	jmp	.L33	# 363	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L35:
	# basic block 23
	addl	$1, (%r8,%r12,4)	# 196	*addsi_1/2	[length = 5]
	jmp	.L34	# 365	jump	[length = 5]
.L38:
	# basic block 24
	call	__stack_chk_fail	# 120	*call_0	[length = 5]
	.cfi_endproc
.LFE61:
	.size	solve4._omp_fn.0, .-solve4._omp_fn.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" "
.LC1:
	.string	"parse error"
.LC2:
	.string	""
.LC3:
	.string	"parse_error"
.LC4:
	.string	"too big"
	.text
	.p2align 4,,15
	.globl	edges2Matrix
	.type	edges2Matrix, @function
edges2Matrix:
.LFB56:
	.cfi_startproc
	# basic block 2
	pushq	%r13	# 131	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$448, %esi	# 18	*movdi_internal_rex64/1	[length = 5]
	pushq	%r12	# 132	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	# 133	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp	# 14	*movdi_internal_rex64/2	[length = 3]
	movl	$1, %edi	# 19	*movdi_internal_rex64/1	[length = 5]
	pushq	%rbx	# 134	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	# 135	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_def_cfa_offset 48
	call	calloc	# 20	*call_value_0_rex64	[length = 5]
	movq	16(%rbp), %rdi	# 23	*movdi_internal_rex64/2	[length = 4]
	movq	%rax, %rbx	# 21	*movdi_internal_rex64/2	[length = 3]
	testq	%rdi, %rdi	# 24	*cmpdi_ccno_1/1	[length = 3]
	je	.L40	# 25	*jcc_1	[length = 6]
	.p2align 4,,10
	.p2align 3
.L45:
	# basic block 3
	movl	$.LC0, %esi	# 29	*movdi_internal_rex64/1	[length = 5]
	call	strtok	# 31	*call_value_0_rex64	[length = 5]
	testq	%rax, %rax	# 33	*cmpdi_ccno_1/1	[length = 3]
	movq	%rax, %r13	# 32	*movdi_internal_rex64/2	[length = 3]
	je	.L48	# 34	*jcc_1	[length = 2]
	# basic block 4
	xorl	%edi, %edi	# 149	*movdi_xor	[length = 2]
	movl	$.LC2, %esi	# 43	*movdi_internal_rex64/1	[length = 5]
	call	strtok	# 45	*call_value_0_rex64	[length = 5]
	testq	%rax, %rax	# 47	*cmpdi_ccno_1/1	[length = 3]
	movq	%rax, %r12	# 46	*movdi_internal_rex64/2	[length = 3]
	je	.L49	# 48	*jcc_1	[length = 6]
	# basic block 5
	xorl	%esi, %esi	# 146	*movdi_xor	[length = 2]
	movq	%r13, %rdi	# 59	*movdi_internal_rex64/2	[length = 3]
	movl	$10, %edx	# 57	*movsi_internal/1	[length = 5]
	call	strtol	# 60	*call_value_0_rex64	[length = 5]
	xorl	%esi, %esi	# 147	*movdi_xor	[length = 2]
	movl	$10, %edx	# 63	*movsi_internal/1	[length = 5]
	movq	%r12, %rdi	# 65	*movdi_internal_rex64/2	[length = 3]
	movl	%eax, %r13d	# 62	*movsi_internal/1	[length = 3]
	call	strtol	# 66	*call_value_0_rex64	[length = 5]
	cmpl	$20, %eax	# 71	*cmpsi_1/1	[length = 3]
	jg	.L46	# 72	*jcc_1	[length = 2]
	# basic block 6
	cmpl	$20, %r13d	# 75	*cmpsi_1/1	[length = 4]
	jg	.L46	# 76	*jcc_1	[length = 2]
	# basic block 7
	movslq	%r13d, %r13	# 87	*extendsidi2_rex64/2	[length = 3]
	cltq	# 86	*extendsidi2_rex64/1	[length = 2]
	addq	$8, %rbp	# 108	*adddi_1/1	[length = 4]
	leaq	0(%r13,%r13,4), %rcx	# 90	*lea_1	[length = 5]
	addl	$1, (%rbx)	# 107	*addsi_1/2	[length = 3]
	leaq	0(%r13,%rcx,4), %rdx	# 92	*lea_1	[length = 5]
	addq	%rdx, %rax	# 93	*adddi_1/3	[length = 3]
	addb	$1, 4(%rbx,%rax)	# 106	*addqi_1_lea/2	[length = 5]
	movq	16(%rbp), %rdi	# 109	*movdi_internal_rex64/2	[length = 4]
	testq	%rdi, %rdi	# 111	*cmpdi_ccno_1/1	[length = 3]
	jne	.L45	# 112	*jcc_1	[length = 2]
.L40:
	# basic block 8
	addq	$8, %rsp	# 138	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax	# 119	*movdi_internal_rex64/2	[length = 3]
	popq	%rbx	# 139	*popdi1	[length = 1]
	.cfi_def_cfa_offset 32
	popq	%rbp	# 140	*popdi1	[length = 1]
	.cfi_def_cfa_offset 24
	popq	%r12	# 141	*popdi1	[length = 2]
	.cfi_def_cfa_offset 16
	popq	%r13	# 142	*popdi1	[length = 2]
	.cfi_def_cfa_offset 8
	ret	# 143	return_internal	[length = 1]
.L48:
	# basic block 9
	.cfi_restore_state
	movl	$.LC1, %esi	# 36	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 37	*movsi_internal/1	[length = 5]
	xorl	%eax, %eax	# 150	*movdi_xor	[length = 2]
	call	err	# 39	*call_0	[length = 5]
.L46:
	# basic block 10
	movl	$.LC4, %esi	# 79	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 80	*movsi_internal/1	[length = 5]
	xorl	%eax, %eax	# 145	*movdi_xor	[length = 2]
	call	err	# 82	*call_0	[length = 5]
.L49:
	# basic block 11
	movl	$.LC3, %esi	# 50	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 51	*movsi_internal/1	[length = 5]
	xorl	%eax, %eax	# 148	*movdi_xor	[length = 2]
	call	err	# 53	*call_0	[length = 5]
	.cfi_endproc
.LFE56:
	.size	edges2Matrix, .-edges2Matrix
	.p2align 4,,15
	.globl	create_companion
	.type	create_companion, @function
create_companion:
.LFB57:
	.cfi_startproc
	# basic block 2
	pushq	%r13	# 516	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$176, %esi	# 99	*movdi_internal_rex64/1	[length = 5]
	pushq	%r12	# 517	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	# 518	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	# 519	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# 91	*movdi_internal_rex64/2	[length = 3]
	movl	$1, %edi	# 100	*movdi_internal_rex64/1	[length = 5]
	subq	$8, %rsp	# 520	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_def_cfa_offset 48
	call	calloc	# 101	*call_value_0_rex64	[length = 5]
	leaq	8(%rax), %rbp	# 514	*lea_1	[length = 4]
	leaq	168(%rax), %r13	# 515	*lea_1	[length = 7]
	movq	%rax, %r12	# 102	*movdi_internal_rex64/2	[length = 3]
	.p2align 4,,10
	.p2align 3
.L51:
	# basic block 3
	xorl	%eax, %eax	# 530	*movdi_xor	[length = 2]
	xorl	%edi, %edi	# 531	*movdi_xor	[length = 2]
.L54:
	# basic block 4
	cmpb	$0, 4(%rbx,%rax)	# 176	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rdi), %edx	# 504	*lea_2	[length = 3]
	cmove	%edi, %edx	# 177	*movsicc_noc/1	[length = 3]
	cmpb	$0, 5(%rax,%rbx)	# 360	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rdx), %r11d	# 505	*lea_2	[length = 4]
	cmove	%edx, %r11d	# 361	*movsicc_noc/1	[length = 4]
	cmpb	$0, 6(%rax,%rbx)	# 373	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%r11), %r10d	# 506	*lea_2	[length = 4]
	cmove	%r11d, %r10d	# 374	*movsicc_noc/1	[length = 4]
	cmpb	$0, 7(%rax,%rbx)	# 386	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%r10), %r9d	# 507	*lea_2	[length = 4]
	cmove	%r10d, %r9d	# 387	*movsicc_noc/1	[length = 4]
	cmpb	$0, 8(%rax,%rbx)	# 399	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%r9), %r8d	# 508	*lea_2	[length = 4]
	cmove	%r9d, %r8d	# 400	*movsicc_noc/1	[length = 4]
	cmpb	$0, 9(%rax,%rbx)	# 412	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%r8), %edi	# 509	*lea_2	[length = 4]
	cmove	%r8d, %edi	# 413	*movsicc_noc/1	[length = 4]
	cmpb	$0, 10(%rax,%rbx)	# 425	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rdi), %esi	# 510	*lea_2	[length = 3]
	cmove	%edi, %esi	# 426	*movsicc_noc/1	[length = 3]
	cmpb	$0, 11(%rax,%rbx)	# 438	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rsi), %ecx	# 511	*lea_2	[length = 3]
	cmove	%esi, %ecx	# 439	*movsicc_noc/1	[length = 3]
	cmpb	$0, 12(%rax,%rbx)	# 451	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rcx), %edx	# 512	*lea_2	[length = 3]
	cmove	%ecx, %edx	# 452	*movsicc_noc/1	[length = 3]
	cmpb	$0, 13(%rax,%rbx)	# 464	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rdx), %edi	# 513	*lea_2	[length = 3]
	cmove	%edx, %edi	# 465	*movsicc_noc/1	[length = 3]
	addq	$10, %rax	# 467	*adddi_1/1	[length = 4]
	cmpq	$20, %rax	# 468	*cmpdi_1/1	[length = 4]
	jne	.L54	# 469	*jcc_1	[length = 6]
	# basic block 5
	testl	%edi, %edi	# 126	*cmpsi_ccno_1/1	[length = 2]
	je	.L55	# 127	*jcc_1	[length = 6]
	# basic block 6
	addl	$1, %edi	# 130	*addsi_1/1	[length = 3]
	movl	$1, %esi	# 132	*movdi_internal_rex64/1	[length = 5]
	addl	$1, 4(%r12)	# 129	*addsi_1/2	[length = 6]
	movslq	%edi, %rdi	# 131	*extendsidi2_rex64/2	[length = 3]
	call	calloc	# 134	*call_value_0_rex64	[length = 5]
	xorl	%ecx, %ecx	# 532	*movdi_xor	[length = 2]
	movq	%rax, 0(%rbp)	# 137	*movdi_internal_rex64/4	[length = 4]
	xorl	%edx, %edx	# 533	*movdi_xor	[length = 2]
.L57:
	# basic block 7
	cmpb	$0, 4(%rbx,%rcx)	# 139	*cmpqi_ccno_1/2	[length = 5]
	je	.L56	# 140	*jcc_1	[length = 2]
	# basic block 8
	movslq	%edx, %rsi	# 142	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 144	*addsi_1/1	[length = 3]
	movb	%cl, (%rax,%rsi)	# 143	*movqi_internal/7	[length = 3]
.L56:
	# basic block 9
	addq	$1, %rcx	# 346	*adddi_1/1	[length = 4]
	cmpb	$0, 4(%rbx,%rcx)	# 185	*cmpqi_ccno_1/2	[length = 5]
	je	.L61	# 186	*jcc_1	[length = 2]
	# basic block 10
	movslq	%edx, %rdi	# 189	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 191	*addsi_1/1	[length = 3]
	movb	%cl, (%rax,%rdi)	# 190	*movqi_internal/7	[length = 3]
.L61:
	# basic block 11
	cmpb	$0, 5(%rcx,%rbx)	# 203	*cmpqi_ccno_1/2	[length = 5]
	leaq	1(%rcx), %rsi	# 503	*lea_1	[length = 4]
	je	.L63	# 204	*jcc_1	[length = 2]
	# basic block 12
	movslq	%edx, %r8	# 207	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 209	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r8)	# 208	*movqi_internal/7	[length = 4]
.L63:
	# basic block 13
	cmpb	$0, 6(%rcx,%rbx)	# 221	*cmpqi_ccno_1/2	[length = 5]
	leaq	2(%rcx), %rsi	# 502	*lea_1	[length = 4]
	je	.L65	# 222	*jcc_1	[length = 2]
	# basic block 14
	movslq	%edx, %r9	# 225	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 227	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r9)	# 226	*movqi_internal/7	[length = 4]
.L65:
	# basic block 15
	cmpb	$0, 7(%rcx,%rbx)	# 239	*cmpqi_ccno_1/2	[length = 5]
	leaq	3(%rcx), %rsi	# 501	*lea_1	[length = 4]
	je	.L67	# 240	*jcc_1	[length = 2]
	# basic block 16
	movslq	%edx, %r10	# 243	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 245	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r10)	# 244	*movqi_internal/7	[length = 4]
.L67:
	# basic block 17
	cmpb	$0, 8(%rcx,%rbx)	# 257	*cmpqi_ccno_1/2	[length = 5]
	leaq	4(%rcx), %rsi	# 500	*lea_1	[length = 4]
	je	.L69	# 258	*jcc_1	[length = 2]
	# basic block 18
	movslq	%edx, %r11	# 261	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 263	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r11)	# 262	*movqi_internal/7	[length = 4]
.L69:
	# basic block 19
	cmpb	$0, 9(%rcx,%rbx)	# 275	*cmpqi_ccno_1/2	[length = 5]
	leaq	5(%rcx), %rsi	# 499	*lea_1	[length = 4]
	je	.L71	# 276	*jcc_1	[length = 2]
	# basic block 20
	movslq	%edx, %rdi	# 279	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 281	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%rdi)	# 280	*movqi_internal/7	[length = 4]
.L71:
	# basic block 21
	cmpb	$0, 10(%rcx,%rbx)	# 293	*cmpqi_ccno_1/2	[length = 5]
	leaq	6(%rcx), %rsi	# 498	*lea_1	[length = 4]
	je	.L73	# 294	*jcc_1	[length = 2]
	# basic block 22
	movslq	%edx, %r8	# 297	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 299	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r8)	# 298	*movqi_internal/7	[length = 4]
.L73:
	# basic block 23
	cmpb	$0, 11(%rcx,%rbx)	# 311	*cmpqi_ccno_1/2	[length = 5]
	leaq	7(%rcx), %rsi	# 497	*lea_1	[length = 4]
	je	.L75	# 312	*jcc_1	[length = 2]
	# basic block 24
	movslq	%edx, %r9	# 315	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 317	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r9)	# 316	*movqi_internal/7	[length = 4]
.L75:
	# basic block 25
	cmpb	$0, 12(%rcx,%rbx)	# 329	*cmpqi_ccno_1/2	[length = 5]
	leaq	8(%rcx), %rsi	# 496	*lea_1	[length = 4]
	je	.L77	# 330	*jcc_1	[length = 2]
	# basic block 26
	movslq	%edx, %r10	# 333	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 335	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r10)	# 334	*movqi_internal/7	[length = 4]
.L77:
	# basic block 27
	addq	$9, %rcx	# 338	*adddi_1/1	[length = 4]
	cmpq	$20, %rcx	# 339	*cmpdi_1/1	[length = 4]
	jne	.L57	# 340	*jcc_1	[length = 6]
	.p2align 4,,10
	.p2align 3
.L55:
	# basic block 28
	addq	$8, %rbp	# 154	*adddi_1/1	[length = 4]
	addq	$21, %rbx	# 153	*adddi_1/1	[length = 4]
	cmpq	%r13, %rbp	# 155	*cmpdi_1/1	[length = 3]
	jne	.L51	# 156	*jcc_1	[length = 6]
	# basic block 29
	addq	$8, %rsp	# 523	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_def_cfa_offset 40
	movq	%r12, %rax	# 167	*movdi_internal_rex64/2	[length = 3]
	popq	%rbx	# 524	*popdi1	[length = 1]
	.cfi_def_cfa_offset 32
	popq	%rbp	# 525	*popdi1	[length = 1]
	.cfi_def_cfa_offset 24
	popq	%r12	# 526	*popdi1	[length = 2]
	.cfi_def_cfa_offset 16
	popq	%r13	# 527	*popdi1	[length = 2]
	.cfi_def_cfa_offset 8
	ret	# 528	return_internal	[length = 1]
	.cfi_endproc
.LFE57:
	.size	create_companion, .-create_companion
	.p2align 4,,15
	.globl	solve3
	.type	solve3, @function
solve3:
.LFB58:
	.cfi_startproc
	# basic block 2
	pushq	%r15	# 921	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	# 922	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14	# 89	*movdi_internal_rex64/2	[length = 3]
	pushq	%r13	# 923	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	# 924	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	# 925	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# 88	*movdi_internal_rex64/2	[length = 3]
	pushq	%rbx	# 926	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp	# 927	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax	# 91	stack_tls_protect_set_di	[length = 16]
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi	# 99	*cmpdi_ccno_1/1	[length = 3]
	je	.L89	# 100	*jcc_1	[length = 6]
	# basic block 3
	movl	$176, %esi	# 102	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 103	*movdi_internal_rex64/1	[length = 5]
	movq	%rbp, %r12	# 107	*movdi_internal_rex64/2	[length = 3]
	call	calloc	# 104	*call_value_0_rex64	[length = 5]
	leaq	8(%rax), %r13	# 919	*lea_1	[length = 4]
	leaq	168(%rax), %r15	# 920	*lea_1	[length = 7]
	movq	%rax, %rbx	# 105	*movdi_internal_rex64/2	[length = 3]
	.p2align 4,,10
	.p2align 3
.L91:
	# basic block 4
	xorl	%eax, %eax	# 969	*movdi_xor	[length = 2]
	xorl	%edi, %edi	# 970	*movdi_xor	[length = 2]
.L94:
	# basic block 5
	cmpb	$0, 4(%r12,%rax)	# 212	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%rdi), %edx	# 909	*lea_2	[length = 3]
	cmove	%edi, %edx	# 213	*movsicc_noc/1	[length = 3]
	cmpb	$0, 5(%r12,%rax)	# 708	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%rdx), %r11d	# 910	*lea_2	[length = 4]
	cmove	%edx, %r11d	# 709	*movsicc_noc/1	[length = 4]
	cmpb	$0, 6(%r12,%rax)	# 721	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%r11), %r10d	# 911	*lea_2	[length = 4]
	cmove	%r11d, %r10d	# 722	*movsicc_noc/1	[length = 4]
	cmpb	$0, 7(%r12,%rax)	# 734	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%r10), %r9d	# 912	*lea_2	[length = 4]
	cmove	%r10d, %r9d	# 735	*movsicc_noc/1	[length = 4]
	cmpb	$0, 8(%r12,%rax)	# 747	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%r9), %r8d	# 913	*lea_2	[length = 4]
	cmove	%r9d, %r8d	# 748	*movsicc_noc/1	[length = 4]
	cmpb	$0, 9(%r12,%rax)	# 760	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%r8), %edi	# 914	*lea_2	[length = 4]
	cmove	%r8d, %edi	# 761	*movsicc_noc/1	[length = 4]
	cmpb	$0, 10(%r12,%rax)	# 773	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%rdi), %esi	# 915	*lea_2	[length = 3]
	cmove	%edi, %esi	# 774	*movsicc_noc/1	[length = 3]
	cmpb	$0, 11(%r12,%rax)	# 786	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%rsi), %ecx	# 916	*lea_2	[length = 3]
	cmove	%esi, %ecx	# 787	*movsicc_noc/1	[length = 3]
	cmpb	$0, 12(%r12,%rax)	# 799	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%rcx), %edx	# 917	*lea_2	[length = 3]
	cmove	%ecx, %edx	# 800	*movsicc_noc/1	[length = 3]
	cmpb	$0, 13(%r12,%rax)	# 812	*cmpqi_ccno_1/2	[length = 6]
	leal	1(%rdx), %edi	# 918	*lea_2	[length = 3]
	cmove	%edx, %edi	# 813	*movsicc_noc/1	[length = 3]
	addq	$10, %rax	# 815	*adddi_1/1	[length = 4]
	cmpq	$20, %rax	# 816	*cmpdi_1/1	[length = 4]
	jne	.L94	# 817	*jcc_1	[length = 6]
	# basic block 6
	testl	%edi, %edi	# 129	*cmpsi_ccno_1/1	[length = 2]
	je	.L95	# 130	*jcc_1	[length = 6]
	# basic block 7
	addl	$1, %edi	# 133	*addsi_1/1	[length = 3]
	movl	$1, %esi	# 135	*movdi_internal_rex64/1	[length = 5]
	addl	$1, 4(%rbx)	# 132	*addsi_1/2	[length = 4]
	movslq	%edi, %rdi	# 134	*extendsidi2_rex64/2	[length = 3]
	call	calloc	# 137	*call_value_0_rex64	[length = 5]
	xorl	%ecx, %ecx	# 971	*movdi_xor	[length = 2]
	movq	%rax, 0(%r13)	# 140	*movdi_internal_rex64/4	[length = 4]
	xorl	%edx, %edx	# 972	*movdi_xor	[length = 2]
.L97:
	# basic block 8
	cmpb	$0, 4(%r12,%rcx)	# 142	*cmpqi_ccno_1/2	[length = 6]
	je	.L96	# 143	*jcc_1	[length = 2]
	# basic block 9
	movslq	%edx, %rsi	# 145	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 147	*addsi_1/1	[length = 3]
	movb	%cl, (%rax,%rsi)	# 146	*movqi_internal/7	[length = 3]
.L96:
	# basic block 10
	addq	$1, %rcx	# 694	*adddi_1/1	[length = 4]
	cmpb	$0, 4(%r12,%rcx)	# 533	*cmpqi_ccno_1/2	[length = 6]
	je	.L133	# 534	*jcc_1	[length = 2]
	# basic block 11
	movslq	%edx, %rdi	# 537	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 539	*addsi_1/1	[length = 3]
	movb	%cl, (%rax,%rdi)	# 538	*movqi_internal/7	[length = 3]
.L133:
	# basic block 12
	cmpb	$0, 5(%rcx,%r12)	# 551	*cmpqi_ccno_1/2	[length = 6]
	leaq	1(%rcx), %rsi	# 895	*lea_1	[length = 4]
	je	.L135	# 552	*jcc_1	[length = 2]
	# basic block 13
	movslq	%edx, %r8	# 555	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 557	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r8)	# 556	*movqi_internal/7	[length = 4]
.L135:
	# basic block 14
	cmpb	$0, 6(%rcx,%r12)	# 569	*cmpqi_ccno_1/2	[length = 6]
	leaq	2(%rcx), %rsi	# 894	*lea_1	[length = 4]
	je	.L137	# 570	*jcc_1	[length = 2]
	# basic block 15
	movslq	%edx, %r9	# 573	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 575	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r9)	# 574	*movqi_internal/7	[length = 4]
.L137:
	# basic block 16
	cmpb	$0, 7(%rcx,%r12)	# 587	*cmpqi_ccno_1/2	[length = 6]
	leaq	3(%rcx), %rsi	# 893	*lea_1	[length = 4]
	je	.L139	# 588	*jcc_1	[length = 2]
	# basic block 17
	movslq	%edx, %r10	# 591	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 593	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r10)	# 592	*movqi_internal/7	[length = 4]
.L139:
	# basic block 18
	cmpb	$0, 8(%rcx,%r12)	# 605	*cmpqi_ccno_1/2	[length = 6]
	leaq	4(%rcx), %rsi	# 892	*lea_1	[length = 4]
	je	.L141	# 606	*jcc_1	[length = 2]
	# basic block 19
	movslq	%edx, %r11	# 609	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 611	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r11)	# 610	*movqi_internal/7	[length = 4]
.L141:
	# basic block 20
	cmpb	$0, 9(%rcx,%r12)	# 623	*cmpqi_ccno_1/2	[length = 6]
	leaq	5(%rcx), %rsi	# 891	*lea_1	[length = 4]
	je	.L143	# 624	*jcc_1	[length = 2]
	# basic block 21
	movslq	%edx, %rdi	# 627	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 629	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%rdi)	# 628	*movqi_internal/7	[length = 4]
.L143:
	# basic block 22
	cmpb	$0, 10(%rcx,%r12)	# 641	*cmpqi_ccno_1/2	[length = 6]
	leaq	6(%rcx), %rsi	# 890	*lea_1	[length = 4]
	je	.L145	# 642	*jcc_1	[length = 2]
	# basic block 23
	movslq	%edx, %r8	# 645	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 647	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r8)	# 646	*movqi_internal/7	[length = 4]
.L145:
	# basic block 24
	cmpb	$0, 11(%rcx,%r12)	# 659	*cmpqi_ccno_1/2	[length = 6]
	leaq	7(%rcx), %rsi	# 889	*lea_1	[length = 4]
	je	.L147	# 660	*jcc_1	[length = 2]
	# basic block 25
	movslq	%edx, %r9	# 663	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 665	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r9)	# 664	*movqi_internal/7	[length = 4]
.L147:
	# basic block 26
	cmpb	$0, 12(%rcx,%r12)	# 677	*cmpqi_ccno_1/2	[length = 6]
	leaq	8(%rcx), %rsi	# 888	*lea_1	[length = 4]
	je	.L149	# 678	*jcc_1	[length = 2]
	# basic block 27
	movslq	%edx, %r10	# 681	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 683	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r10)	# 682	*movqi_internal/7	[length = 4]
.L149:
	# basic block 28
	addq	$9, %rcx	# 686	*adddi_1/1	[length = 4]
	cmpq	$20, %rcx	# 687	*cmpdi_1/1	[length = 4]
	jne	.L97	# 688	*jcc_1	[length = 6]
	.p2align 4,,10
	.p2align 3
.L95:
	# basic block 29
	addq	$8, %r13	# 157	*adddi_1/1	[length = 4]
	addq	$21, %r12	# 156	*adddi_1/1	[length = 4]
	cmpq	%r15, %r13	# 158	*cmpdi_1/1	[length = 3]
	jne	.L91	# 159	*jcc_1	[length = 6]
	# basic block 30
	testq	%rbx, %rbx	# 166	*cmpdi_ccno_1/1	[length = 3]
	je	.L89	# 167	*jcc_1	[length = 6]
	# basic block 31
	leaq	16(%rbx), %r12	# 908	*lea_1	[length = 4]
	cmpq	$0, (%r12)	# 224	*cmpdi_ccno_1/2	[length = 5]
	je	.L106	# 225	*jcc_1	[length = 2]
	# basic block 32
	movl	0(%rbp), %eax	# 964	*movsi_internal/1	[length = 3]
	movb	$1, 16(%rsp)	# 228	*movqi_internal/7	[length = 5]
	testl	%eax, %eax	# 965	*cmpsi_ccno_1/1	[length = 2]
	je	.L163	# 230	*jcc_1	[length = 6]
	# basic block 33
	leaq	16(%rsp), %rcx	# 236	*lea_1	[length = 5]
	movq	%r14, %r9	# 234	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 963	*movdi_xor	[length = 3]
	movl	$1, %edx	# 237	*movsi_internal/1	[length = 5]
	movq	%rbx, %rsi	# 238	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 239	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 240	*call_0	[length = 5]
.L106:
	# basic block 34
	movl	$2, %eax	# 246	*movsi_internal/1	[length = 5]
	leaq	8(%r12), %r15	# 905	*lea_1	[length = 5]
	jmp	.L101	# 996	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L100:
	# basic block 35
	leaq	16(%rsp), %rcx	# 186	*lea_1	[length = 5]
	movl	%eax, %edx	# 187	*movsi_internal/1	[length = 2]
	movq	%r14, %r9	# 184	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 966	*movdi_xor	[length = 3]
	movq	%rbx, %rsi	# 188	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 189	*movdi_internal_rex64/2	[length = 3]
	movl	%eax, 8(%rsp)	# 886	*movsi_internal/2	[length = 4]
	call	solveV3.part.1	# 190	*call_0	[length = 5]
	movl	8(%rsp), %eax	# 887	*movsi_internal/1	[length = 4]
.L99:
	# basic block 36
	cmpq	$0, 8(%r15)	# 257	*cmpdi_ccno_1/2	[length = 5]
	leal	1(%rax), %r12d	# 906	*lea_2	[length = 4]
	leaq	8(%r15), %r13	# 907	*lea_1	[length = 4]
	je	.L109	# 258	*jcc_1	[length = 2]
	# basic block 37
	movl	0(%rbp), %r15d	# 961	*movsi_internal/1	[length = 4]
	movb	%r12b, 16(%rsp)	# 261	*movqi_internal/7	[length = 5]
	testl	%r15d, %r15d	# 962	*cmpsi_ccno_1/1	[length = 3]
	je	.L164	# 263	*jcc_1	[length = 6]
	# basic block 38
	leaq	16(%rsp), %rcx	# 269	*lea_1	[length = 5]
	movq	%r14, %r9	# 267	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 960	*movdi_xor	[length = 3]
	movl	%r12d, %edx	# 270	*movsi_internal/1	[length = 3]
	movq	%rbx, %rsi	# 271	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 272	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 273	*call_0	[length = 5]
.L109:
	# basic block 39
	cmpq	$0, 8(%r13)	# 290	*cmpdi_ccno_1/2	[length = 5]
	leal	1(%r12), %edx	# 904	*lea_2	[length = 5]
	je	.L112	# 291	*jcc_1	[length = 2]
	# basic block 40
	movl	0(%rbp), %ecx	# 958	*movsi_internal/1	[length = 3]
	movb	%dl, 16(%rsp)	# 294	*movqi_internal/7	[length = 4]
	testl	%ecx, %ecx	# 959	*cmpsi_ccno_1/1	[length = 2]
	je	.L165	# 296	*jcc_1	[length = 6]
	# basic block 41
	leaq	16(%rsp), %rcx	# 302	*lea_1	[length = 5]
	movq	%r14, %r9	# 300	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 957	*movdi_xor	[length = 3]
	movq	%rbx, %rsi	# 304	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 305	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 306	*call_0	[length = 5]
.L112:
	# basic block 42
	cmpq	$0, 16(%r13)	# 323	*cmpdi_ccno_1/2	[length = 5]
	leal	2(%r12), %edx	# 903	*lea_2	[length = 5]
	je	.L115	# 324	*jcc_1	[length = 2]
	# basic block 43
	movl	0(%rbp), %edi	# 955	*movsi_internal/1	[length = 3]
	movb	%dl, 16(%rsp)	# 327	*movqi_internal/7	[length = 4]
	testl	%edi, %edi	# 956	*cmpsi_ccno_1/1	[length = 2]
	je	.L166	# 329	*jcc_1	[length = 6]
	# basic block 44
	leaq	16(%rsp), %rcx	# 335	*lea_1	[length = 5]
	movq	%r14, %r9	# 333	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 954	*movdi_xor	[length = 3]
	movq	%rbx, %rsi	# 337	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 338	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 339	*call_0	[length = 5]
.L115:
	# basic block 45
	cmpq	$0, 24(%r13)	# 356	*cmpdi_ccno_1/2	[length = 5]
	leal	3(%r12), %edx	# 902	*lea_2	[length = 5]
	je	.L118	# 357	*jcc_1	[length = 2]
	# basic block 46
	movl	0(%rbp), %r8d	# 952	*movsi_internal/1	[length = 4]
	movb	%dl, 16(%rsp)	# 360	*movqi_internal/7	[length = 4]
	testl	%r8d, %r8d	# 953	*cmpsi_ccno_1/1	[length = 3]
	je	.L167	# 362	*jcc_1	[length = 6]
	# basic block 47
	leaq	16(%rsp), %rcx	# 368	*lea_1	[length = 5]
	movq	%r14, %r9	# 366	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 951	*movdi_xor	[length = 3]
	movq	%rbx, %rsi	# 370	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 371	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 372	*call_0	[length = 5]
.L118:
	# basic block 48
	cmpq	$0, 32(%r13)	# 389	*cmpdi_ccno_1/2	[length = 5]
	leal	4(%r12), %edx	# 901	*lea_2	[length = 5]
	je	.L121	# 390	*jcc_1	[length = 2]
	# basic block 49
	movl	0(%rbp), %r9d	# 949	*movsi_internal/1	[length = 4]
	movb	%dl, 16(%rsp)	# 393	*movqi_internal/7	[length = 4]
	testl	%r9d, %r9d	# 950	*cmpsi_ccno_1/1	[length = 3]
	je	.L168	# 395	*jcc_1	[length = 6]
	# basic block 50
	leaq	16(%rsp), %rcx	# 401	*lea_1	[length = 5]
	movq	%r14, %r9	# 399	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 948	*movdi_xor	[length = 3]
	movq	%rbx, %rsi	# 403	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 404	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 405	*call_0	[length = 5]
.L121:
	# basic block 51
	cmpq	$0, 40(%r13)	# 422	*cmpdi_ccno_1/2	[length = 5]
	leal	5(%r12), %edx	# 900	*lea_2	[length = 5]
	je	.L124	# 423	*jcc_1	[length = 2]
	# basic block 52
	movl	0(%rbp), %r10d	# 946	*movsi_internal/1	[length = 4]
	movb	%dl, 16(%rsp)	# 426	*movqi_internal/7	[length = 4]
	testl	%r10d, %r10d	# 947	*cmpsi_ccno_1/1	[length = 3]
	je	.L169	# 428	*jcc_1	[length = 6]
	# basic block 53
	leaq	16(%rsp), %rcx	# 434	*lea_1	[length = 5]
	movq	%r14, %r9	# 432	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 945	*movdi_xor	[length = 3]
	movq	%rbx, %rsi	# 436	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 437	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 438	*call_0	[length = 5]
.L124:
	# basic block 54
	cmpq	$0, 48(%r13)	# 455	*cmpdi_ccno_1/2	[length = 5]
	leal	6(%r12), %edx	# 899	*lea_2	[length = 5]
	je	.L127	# 456	*jcc_1	[length = 2]
	# basic block 55
	movl	0(%rbp), %r11d	# 943	*movsi_internal/1	[length = 4]
	movb	%dl, 16(%rsp)	# 459	*movqi_internal/7	[length = 4]
	testl	%r11d, %r11d	# 944	*cmpsi_ccno_1/1	[length = 3]
	je	.L170	# 461	*jcc_1	[length = 6]
	# basic block 56
	leaq	16(%rsp), %rcx	# 467	*lea_1	[length = 5]
	movq	%r14, %r9	# 465	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 942	*movdi_xor	[length = 3]
	movq	%rbx, %rsi	# 469	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 470	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 471	*call_0	[length = 5]
.L127:
	# basic block 57
	cmpq	$0, 56(%r13)	# 488	*cmpdi_ccno_1/2	[length = 5]
	leal	7(%r12), %edx	# 898	*lea_2	[length = 5]
	je	.L130	# 489	*jcc_1	[length = 2]
	# basic block 58
	movl	0(%rbp), %esi	# 940	*movsi_internal/1	[length = 3]
	movb	%dl, 16(%rsp)	# 492	*movqi_internal/7	[length = 4]
	testl	%esi, %esi	# 941	*cmpsi_ccno_1/1	[length = 2]
	je	.L171	# 494	*jcc_1	[length = 6]
	# basic block 59
	leaq	16(%rsp), %rcx	# 500	*lea_1	[length = 5]
	movq	%r14, %r9	# 498	*movdi_internal_rex64/2	[length = 3]
	xorl	%r8d, %r8d	# 939	*movdi_xor	[length = 3]
	movq	%rbx, %rsi	# 502	*movdi_internal_rex64/2	[length = 3]
	movq	%rbp, %rdi	# 503	*movdi_internal_rex64/2	[length = 3]
	call	solveV3.part.1	# 504	*call_0	[length = 5]
.L130:
	# basic block 60
	leal	8(%r12), %eax	# 896	*lea_2	[length = 5]
	leaq	64(%r13), %r15	# 897	*lea_1	[length = 4]
	cmpl	$20, %eax	# 512	*cmpsi_1/1	[length = 3]
	je	.L89	# 513	*jcc_1	[length = 2]
.L101:
	# basic block 61
	cmpq	$0, (%r15)	# 171	*cmpdi_ccno_1/2	[length = 4]
	je	.L99	# 172	*jcc_1	[length = 6]
	# basic block 62
	movl	0(%rbp), %r12d	# 967	*movsi_internal/1	[length = 4]
	movb	%al, 16(%rsp)	# 174	*movqi_internal/7	[length = 4]
	testl	%r12d, %r12d	# 968	*cmpsi_ccno_1/1	[length = 3]
	jne	.L100	# 176	*jcc_1	[length = 6]
	# basic block 63
	addl	$1, (%r14)	# 178	*addsi_1/2	[length = 4]
	jmp	.L99	# 998	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L89:
	# basic block 64
	movq	72(%rsp), %rax	# 201	stack_tls_protect_test_di	[length = 16]
	xorq	%fs:40, %rax
	jne	.L172	# 202	*jcc_1	[length = 6]
	# basic block 65
	addq	$88, %rsp	# 930	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	# 931	*popdi1	[length = 1]
	.cfi_def_cfa_offset 48
	popq	%rbp	# 932	*popdi1	[length = 1]
	.cfi_def_cfa_offset 40
	popq	%r12	# 933	*popdi1	[length = 2]
	.cfi_def_cfa_offset 32
	popq	%r13	# 934	*popdi1	[length = 2]
	.cfi_def_cfa_offset 24
	popq	%r14	# 935	*popdi1	[length = 2]
	.cfi_def_cfa_offset 16
	popq	%r15	# 936	*popdi1	[length = 2]
	.cfi_def_cfa_offset 8
	ret	# 937	return_internal	[length = 1]
.L163:
	# basic block 66
	.cfi_restore_state
	addl	$1, (%r14)	# 243	*addsi_1/2	[length = 4]
	jmp	.L106	# 1000	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L171:
	# basic block 67
	addl	$1, (%r14)	# 507	*addsi_1/2	[length = 4]
	jmp	.L130	# 1002	jump	[length = 2]
	.p2align 4,,10
	.p2align 3
.L170:
	# basic block 68
	addl	$1, (%r14)	# 474	*addsi_1/2	[length = 4]
	jmp	.L127	# 1004	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L169:
	# basic block 69
	addl	$1, (%r14)	# 441	*addsi_1/2	[length = 4]
	jmp	.L124	# 1006	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L168:
	# basic block 70
	addl	$1, (%r14)	# 408	*addsi_1/2	[length = 4]
	jmp	.L121	# 1008	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L167:
	# basic block 71
	addl	$1, (%r14)	# 375	*addsi_1/2	[length = 4]
	jmp	.L118	# 1010	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L166:
	# basic block 72
	addl	$1, (%r14)	# 342	*addsi_1/2	[length = 4]
	jmp	.L115	# 1012	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L165:
	# basic block 73
	addl	$1, (%r14)	# 309	*addsi_1/2	[length = 4]
	jmp	.L112	# 1014	jump	[length = 5]
	.p2align 4,,10
	.p2align 3
.L164:
	# basic block 74
	addl	$1, (%r14)	# 276	*addsi_1/2	[length = 4]
	jmp	.L109	# 1016	jump	[length = 5]
.L172:
	# basic block 75
	call	__stack_chk_fail	# 203	*call_0	[length = 5]
	.cfi_endproc
.LFE58:
	.size	solve3, .-solve3
	.p2align 4,,15
	.globl	solveV3
	.type	solveV3, @function
solveV3:
.LFB59:
	.cfi_startproc
	# basic block 2
	movslq	%r8d, %rax	# 12	*extendsidi2_rex64/2	[length = 3]
	movb	%dl, (%rcx,%rax)	# 13	*movqi_internal/7	[length = 3]
	movl	(%rdi), %r11d	# 42	*movsi_internal/1	[length = 3]
	testl	%r11d, %r11d	# 43	*cmpsi_ccno_1/1	[length = 3]
	je	.L176	# 15	*jcc_1	[length = 2]
	# basic block 3
	movzbl	%dl, %edx	# 36	*zero_extendqisi2_movzbl	[length = 3]
	jmp	solveV3.part.1	# 29	*call_0	[length = 5]
	.p2align 4,,10
	.p2align 3
.L176:
	# basic block 4
	addl	$1, (%r9)	# 17	*addsi_1/2	[length = 4]
	ret	# 39	return_internal	[length = 1]
	.cfi_endproc
.LFE59:
	.size	solveV3, .-solveV3
	.p2align 4,,15
	.globl	solve4
	.type	solve4, @function
solve4:
.LFB60:
	.cfi_startproc
	# basic block 2
	pushq	%r15	# 553	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15	# 74	*movdi_internal_rex64/2	[length = 3]
	pushq	%r14	# 554	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	# 555	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	# 556	*pushdi2_rex64/1	[length = 2]
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	# 557	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	# 558	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# 75	*movdi_internal_rex64/2	[length = 3]
	subq	$216, %rsp	# 559	pro_epilogue_adjust_stack_di_add/1	[length = 7]
	.cfi_def_cfa_offset 272
	movq	%fs:40, %rax	# 77	stack_tls_protect_set_di	[length = 16]
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi	# 84	*cmpdi_ccno_1/1	[length = 3]
	je	.L177	# 85	*jcc_1	[length = 6]
	# basic block 3
	movl	$176, %esi	# 87	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 88	*movdi_internal_rex64/1	[length = 5]
	movq	%r15, %rbp	# 92	*movdi_internal_rex64/2	[length = 3]
	call	calloc	# 89	*call_value_0_rex64	[length = 5]
	leaq	8(%rax), %r12	# 551	*lea_1	[length = 4]
	leaq	168(%rax), %r14	# 552	*lea_1	[length = 7]
	movq	%rax, %r13	# 90	*movdi_internal_rex64/2	[length = 3]
	.p2align 4,,10
	.p2align 3
.L179:
	# basic block 4
	xorl	%eax, %eax	# 572	*movdi_xor	[length = 2]
	xorl	%edi, %edi	# 573	*movdi_xor	[length = 2]
.L182:
	# basic block 5
	cmpb	$0, 4(%rbp,%rax)	# 205	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rdi), %edx	# 541	*lea_2	[length = 3]
	cmove	%edi, %edx	# 206	*movsicc_noc/1	[length = 3]
	cmpb	$0, 5(%rbp,%rax)	# 389	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rdx), %r11d	# 542	*lea_2	[length = 4]
	cmove	%edx, %r11d	# 390	*movsicc_noc/1	[length = 4]
	cmpb	$0, 6(%rbp,%rax)	# 402	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%r11), %r10d	# 543	*lea_2	[length = 4]
	cmove	%r11d, %r10d	# 403	*movsicc_noc/1	[length = 4]
	cmpb	$0, 7(%rbp,%rax)	# 415	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%r10), %r9d	# 544	*lea_2	[length = 4]
	cmove	%r10d, %r9d	# 416	*movsicc_noc/1	[length = 4]
	cmpb	$0, 8(%rbp,%rax)	# 428	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%r9), %r8d	# 545	*lea_2	[length = 4]
	cmove	%r9d, %r8d	# 429	*movsicc_noc/1	[length = 4]
	cmpb	$0, 9(%rbp,%rax)	# 441	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%r8), %edi	# 546	*lea_2	[length = 4]
	cmove	%r8d, %edi	# 442	*movsicc_noc/1	[length = 4]
	cmpb	$0, 10(%rbp,%rax)	# 454	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rdi), %esi	# 547	*lea_2	[length = 3]
	cmove	%edi, %esi	# 455	*movsicc_noc/1	[length = 3]
	cmpb	$0, 11(%rbp,%rax)	# 467	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rsi), %ecx	# 548	*lea_2	[length = 3]
	cmove	%esi, %ecx	# 468	*movsicc_noc/1	[length = 3]
	cmpb	$0, 12(%rbp,%rax)	# 480	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rcx), %edx	# 549	*lea_2	[length = 3]
	cmove	%ecx, %edx	# 481	*movsicc_noc/1	[length = 3]
	cmpb	$0, 13(%rbp,%rax)	# 493	*cmpqi_ccno_1/2	[length = 5]
	leal	1(%rdx), %edi	# 550	*lea_2	[length = 3]
	cmove	%edx, %edi	# 494	*movsicc_noc/1	[length = 3]
	addq	$10, %rax	# 496	*adddi_1/1	[length = 4]
	cmpq	$20, %rax	# 497	*cmpdi_1/1	[length = 4]
	jne	.L182	# 498	*jcc_1	[length = 6]
	# basic block 6
	testl	%edi, %edi	# 114	*cmpsi_ccno_1/1	[length = 2]
	je	.L183	# 115	*jcc_1	[length = 6]
	# basic block 7
	addl	$1, %edi	# 118	*addsi_1/1	[length = 3]
	movl	$1, %esi	# 120	*movdi_internal_rex64/1	[length = 5]
	addl	$1, 4(%r13)	# 117	*addsi_1/2	[length = 5]
	movslq	%edi, %rdi	# 119	*extendsidi2_rex64/2	[length = 3]
	call	calloc	# 122	*call_value_0_rex64	[length = 5]
	xorl	%ecx, %ecx	# 574	*movdi_xor	[length = 2]
	movq	%rax, (%r12)	# 125	*movdi_internal_rex64/4	[length = 4]
	xorl	%edx, %edx	# 575	*movdi_xor	[length = 2]
.L185:
	# basic block 8
	cmpb	$0, 4(%rbp,%rcx)	# 127	*cmpqi_ccno_1/2	[length = 5]
	je	.L184	# 128	*jcc_1	[length = 2]
	# basic block 9
	movslq	%edx, %rsi	# 130	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 132	*addsi_1/1	[length = 3]
	movb	%cl, (%rax,%rsi)	# 131	*movqi_internal/7	[length = 3]
.L184:
	# basic block 10
	addq	$1, %rcx	# 375	*adddi_1/1	[length = 4]
	cmpb	$0, 4(%rbp,%rcx)	# 214	*cmpqi_ccno_1/2	[length = 5]
	je	.L190	# 215	*jcc_1	[length = 2]
	# basic block 11
	movslq	%edx, %rdi	# 218	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 220	*addsi_1/1	[length = 3]
	movb	%cl, (%rax,%rdi)	# 219	*movqi_internal/7	[length = 3]
.L190:
	# basic block 12
	cmpb	$0, 5(%rcx,%rbp)	# 232	*cmpqi_ccno_1/2	[length = 5]
	leaq	1(%rcx), %rsi	# 537	*lea_1	[length = 4]
	je	.L192	# 233	*jcc_1	[length = 2]
	# basic block 13
	movslq	%edx, %r8	# 236	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 238	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r8)	# 237	*movqi_internal/7	[length = 4]
.L192:
	# basic block 14
	cmpb	$0, 6(%rcx,%rbp)	# 250	*cmpqi_ccno_1/2	[length = 5]
	leaq	2(%rcx), %rsi	# 536	*lea_1	[length = 4]
	je	.L194	# 251	*jcc_1	[length = 2]
	# basic block 15
	movslq	%edx, %r9	# 254	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 256	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r9)	# 255	*movqi_internal/7	[length = 4]
.L194:
	# basic block 16
	cmpb	$0, 7(%rcx,%rbp)	# 268	*cmpqi_ccno_1/2	[length = 5]
	leaq	3(%rcx), %rsi	# 535	*lea_1	[length = 4]
	je	.L196	# 269	*jcc_1	[length = 2]
	# basic block 17
	movslq	%edx, %r10	# 272	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 274	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r10)	# 273	*movqi_internal/7	[length = 4]
.L196:
	# basic block 18
	cmpb	$0, 8(%rcx,%rbp)	# 286	*cmpqi_ccno_1/2	[length = 5]
	leaq	4(%rcx), %rsi	# 534	*lea_1	[length = 4]
	je	.L198	# 287	*jcc_1	[length = 2]
	# basic block 19
	movslq	%edx, %r11	# 290	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 292	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r11)	# 291	*movqi_internal/7	[length = 4]
.L198:
	# basic block 20
	cmpb	$0, 9(%rcx,%rbp)	# 304	*cmpqi_ccno_1/2	[length = 5]
	leaq	5(%rcx), %rsi	# 533	*lea_1	[length = 4]
	je	.L200	# 305	*jcc_1	[length = 2]
	# basic block 21
	movslq	%edx, %rdi	# 308	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 310	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%rdi)	# 309	*movqi_internal/7	[length = 4]
.L200:
	# basic block 22
	cmpb	$0, 10(%rcx,%rbp)	# 322	*cmpqi_ccno_1/2	[length = 5]
	leaq	6(%rcx), %rsi	# 532	*lea_1	[length = 4]
	je	.L202	# 323	*jcc_1	[length = 2]
	# basic block 23
	movslq	%edx, %r8	# 326	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 328	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r8)	# 327	*movqi_internal/7	[length = 4]
.L202:
	# basic block 24
	cmpb	$0, 11(%rcx,%rbp)	# 340	*cmpqi_ccno_1/2	[length = 5]
	leaq	7(%rcx), %rsi	# 531	*lea_1	[length = 4]
	je	.L204	# 341	*jcc_1	[length = 2]
	# basic block 25
	movslq	%edx, %r9	# 344	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 346	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r9)	# 345	*movqi_internal/7	[length = 4]
.L204:
	# basic block 26
	cmpb	$0, 12(%rcx,%rbp)	# 358	*cmpqi_ccno_1/2	[length = 5]
	leaq	8(%rcx), %rsi	# 530	*lea_1	[length = 4]
	je	.L206	# 359	*jcc_1	[length = 2]
	# basic block 27
	movslq	%edx, %r10	# 362	*extendsidi2_rex64/2	[length = 3]
	addl	$1, %edx	# 364	*addsi_1/1	[length = 3]
	movb	%sil, (%rax,%r10)	# 363	*movqi_internal/7	[length = 4]
.L206:
	# basic block 28
	addq	$9, %rcx	# 367	*adddi_1/1	[length = 4]
	cmpq	$20, %rcx	# 368	*cmpdi_1/1	[length = 4]
	jne	.L185	# 369	*jcc_1	[length = 6]
	.p2align 4,,10
	.p2align 3
.L183:
	# basic block 29
	addq	$8, %r12	# 142	*adddi_1/1	[length = 4]
	addq	$21, %rbp	# 141	*adddi_1/1	[length = 4]
	cmpq	%r14, %r12	# 143	*cmpdi_1/1	[length = 3]
	jne	.L179	# 144	*jcc_1	[length = 6]
	# basic block 30
	testq	%r13, %r13	# 151	*cmpdi_ccno_1/1	[length = 3]
	je	.L177	# 152	*jcc_1	[length = 6]
	# basic block 31
	leaq	112(%rsp), %rsi	# 167	*lea_1	[length = 5]
	leaq	144(%rsp), %r12	# 538	*lea_1	[length = 8]
	leaq	32(%rsp), %rbp	# 539	*lea_1	[length = 5]
	movl	$1, %r9d	# 163	*movdi_internal_rex64/1	[length = 6]
	movl	$20, %r8d	# 164	*movdi_internal_rex64/1	[length = 6]
	movl	$1, %ecx	# 165	*movdi_internal_rex64/1	[length = 5]
	xorl	%edx, %edx	# 571	*movdi_xor	[length = 2]
	movl	$solve4._omp_fn.0, %edi	# 168	*movdi_internal_rex64/1	[length = 5]
	movl	$0, 32(%rsp)	# 154	*movsi_internal/2	[length = 8]
	movq	%r15, 112(%rsp)	# 155	*movdi_internal_rex64/4	[length = 5]
	movq	%r13, 120(%rsp)	# 156	*movdi_internal_rex64/4	[length = 5]
	movq	%r12, 128(%rsp)	# 158	*movdi_internal_rex64/4	[length = 8]
	movq	%rbp, 136(%rsp)	# 160	*movdi_internal_rex64/4	[length = 8]
	movq	$1, (%rsp)	# 162	*movdi_internal_rex64/4	[length = 8]
	call	GOMP_parallel_loop_dynamic_start	# 169	*call_0	[length = 5]
	leaq	112(%rsp), %rdi	# 171	*lea_1	[length = 5]
	call	solve4._omp_fn.0	# 172	*call_0	[length = 5]
	call	GOMP_parallel_end	# 173	*call_0	[length = 5]
	movdqa	32(%rsp), %xmm0	# 176	*movv4si_internal/2	[length = 6]
	paddd	48(%rsp), %xmm0	# 178	*addv4si3	[length = 6]
	paddd	64(%rsp), %xmm0	# 180	*addv4si3	[length = 6]
	paddd	80(%rsp), %xmm0	# 182	*addv4si3	[length = 6]
	paddd	96(%rsp), %xmm0	# 184	*addv4si3	[length = 6]
	movdqa	%xmm0, %xmm2	# 525	*movv1ti_internal/2	[length = 4]
	psrldq	$8, %xmm2	# 185	sse2_lshrv1ti3	[length = 5]
	paddd	%xmm2, %xmm0	# 186	*addv4si3	[length = 4]
	movdqa	%xmm0, %xmm1	# 527	*movv1ti_internal/2	[length = 4]
	psrldq	$4, %xmm1	# 187	sse2_lshrv1ti3	[length = 5]
	paddd	%xmm1, %xmm0	# 188	*addv4si3	[length = 4]
	movd	%xmm0, 28(%rsp)	# 540	*movsi_internal/10	[length = 6]
	movl	28(%rsp), %eax	# 529	*movsi_internal/1	[length = 4]
	addl	%eax, (%rbx)	# 190	*addsi_1/2	[length = 2]
.L177:
	# basic block 32
	movq	200(%rsp), %rax	# 194	stack_tls_protect_test_di	[length = 16]
	xorq	%fs:40, %rax
	jne	.L218	# 195	*jcc_1	[length = 2]
	# basic block 33
	addq	$216, %rsp	# 562	pro_epilogue_adjust_stack_di_add/1	[length = 7]
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	# 563	*popdi1	[length = 1]
	.cfi_def_cfa_offset 48
	popq	%rbp	# 564	*popdi1	[length = 1]
	.cfi_def_cfa_offset 40
	popq	%r12	# 565	*popdi1	[length = 2]
	.cfi_def_cfa_offset 32
	popq	%r13	# 566	*popdi1	[length = 2]
	.cfi_def_cfa_offset 24
	popq	%r14	# 567	*popdi1	[length = 2]
	.cfi_def_cfa_offset 16
	popq	%r15	# 568	*popdi1	[length = 2]
	.cfi_def_cfa_offset 8
	ret	# 569	return_internal	[length = 1]
.L218:
	# basic block 34
	.cfi_restore_state
	call	__stack_chk_fail	# 196	*call_0	[length = 5]
	.cfi_endproc
.LFE60:
	.size	solve4, .-solve4
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
