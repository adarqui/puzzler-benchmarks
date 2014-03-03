	.file	"puzzler.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"DEPTH: %i, V: %i, L=%i, i=%i, j=%i\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"LEN=0: DEPTH=%i, SUC=%i\n"
	.text
#	.p2align 4,,15
.LFE106:
	#.size	solveP._omp_fn.8, .-solveP._omp_fn.8
	.p2align 4,,15
	.type	solveV3.part.11, @function
solveV3.part.11:
.LFB109:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movzbl	%dl, %r15d
	movq	%rsi, %r10
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	8(%rsi,%r15,8), %rsi
	movq	%rcx, 32(%rsp)
	movq	%r9, 40(%rsp)
	testq	%rsi, %rsi
	je	.L114
	movzbl	(%rsi), %ecx
	testb	%cl, %cl
	je	.L114
	leaq	(%r15,%r15,4), %rdi
	addl	$1, %r8d
	movl	$1, %r13d
	movslq	%r8d, %rbx
	movl	%r8d, 60(%rsp)
	movq	%r10, %r11
	leaq	(%r15,%rdi,4), %rax
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdx
	movq	%r15, %rax
	movq	%rdx, %r15
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L124:
	leal	-1(%r14), %r9d
	subl	$2, %edi
	movl	%edi, 0(%rbp)
	movb	%r9b, 4(%rsi)
.L118:
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	movb	%cl, (%rdi,%rsi)
	movl	0(%rbp), %ecx
	testl	%ecx, %ecx
	je	.L123
	movq	40(%rsp), %r9
	movl	60(%rsp), %r8d
	movq	%rdi, %rcx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	movq	%rax, 8(%rsp)
	movb	%r10b, 24(%rsp)
	movq	%r11, 16(%rsp)
	call	solveV3.part.11
	movzbl	24(%rsp), %r10d
	movq	16(%rsp), %r11
	movq	8(%rsp), %rax
.L120:
	leaq	(%rbx,%rbx,4), %r8
	movzbl	%r10b, %r10d
	movl	%r10d, 0(%rbp)
	leaq	(%rbx,%r8,4), %rdi
	addq	%r15, %rbx
	addq	%rax, %rdi
	movb	%r14b, 4(%rbp,%rdi)
	movb	%r12b, 4(%rbp,%rbx)
	movq	8(%r11,%rax,8), %rsi
.L116:
	testq	%rsi, %rsi
	je	.L114
	movzbl	(%rsi,%r13), %ecx
	addq	$1, %r13
	testb	%cl, %cl
	je	.L114
.L121:
	movzbl	%cl, %edx
	movslq	%edx, %rbx
	leaq	(%r15,%rbx), %rdi
	addq	%rbp, %rdi
	movzbl	4(%rdi), %r12d
	testb	%r12b, %r12b
	je	.L116
	leaq	(%rbx,%rbx,4), %rsi
	leal	-1(%r12), %r8d
	leaq	(%rbx,%rsi,4), %rsi
	movb	%r8b, 4(%rdi)
	movl	0(%rbp), %edi
	addq	%rax, %rsi
	addq	%rbp, %rsi
	movl	%edi, %r10d
	movzbl	4(%rsi), %r14d
	testb	%r14b, %r14b
	jne	.L124
	subl	$1, %edi
	movb	$0, 4(%rsi)
	movl	%edi, 0(%rbp)
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L123:
	movq	40(%rsp), %rdx
	addl	$1, (%rdx)
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L114:
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	solveV3.part.11, .-solveV3.part.11
	.p2align 4,,15
	.type	solve4._omp_fn.6, @function
solve4._omp_fn.6:
.LFB104:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$552, %rsp
	.cfi_def_cfa_offset 608
	leaq	464(%rsp), %rsi
	leaq	448(%rsp), %rdi
	movq	%fs:40, %rax
	movq	%rax, 536(%rsp)
	xorl	%eax, %eax
	call	GOMP_loop_dynamic_next
	testb	%al, %al
	je	.L169
	movq	%rsp, %r14
	.p2align 4,,10
	.p2align 3
.L177:
	movl	448(%rsp), %ebp
	movl	464(%rsp), %r15d
	movl	%ebp, %eax
	movslq	%ebp, %r12
	notl	%eax
	movq	%r12, %r13
	addl	%r15d, %eax
	testb	$1, %al
	je	.L171
	movq	8(%rbx), %rax
	movq	24(%rbx), %r8
	cmpq	$0, 8(%rax,%r12,8)
	movl	$0, (%r8,%r12,4)
	je	.L189
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movl	$56, %ecx
	rep movsq
	movq	16(%rbx), %r10
	movq	(%r10), %r13
	movq	%r13, 480(%rsp)
	movq	8(%r10), %rdi
	movl	(%rsp), %r13d
	movq	%rdi, 488(%rsp)
	movq	16(%r10), %rsi
	testl	%r13d, %r13d
	movq	%rsi, 496(%rsp)
	movq	24(%r10), %rcx
	movq	%rcx, 504(%rsp)
	movq	32(%r10), %rdx
	movq	%rdx, 512(%rsp)
	movq	40(%r10), %r11
	movq	%r11, 520(%rsp)
	movzwl	48(%r10), %r9d
	movb	%bpl, 480(%rsp)
	movw	%r9w, 528(%rsp)
	je	.L190
	leaq	(%r8,%r12,4), %r9
	leaq	480(%rsp), %rcx
	movzbl	%bpl, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	movq	%rsp, %rdi
	call	solveV3.part.11
.L189:
	addl	$1, %ebp
	leaq	1(%r12), %r13
	cmpl	%ebp, %r15d
	movslq	%ebp, %r12
	jg	.L171
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L173:
	leaq	(%r8,%r13,4), %r9
	leaq	480(%rsp), %rcx
	movzbl	%bpl, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	movq	%rsp, %rdi
	call	solveV3.part.11
.L174:
	addl	$1, %ebp
	addq	$1, %r13
	cmpl	%ebp, %r15d
	jle	.L187
.L192:
	movq	8(%rbx), %rax
	movslq	%ebp, %rdx
	movq	24(%rbx), %r8
	cmpq	$0, 8(%rax,%rdx,8)
	movl	$0, (%r8,%rdx,4)
	je	.L188
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movl	$56, %ecx
	rep movsq
	movq	16(%rbx), %r10
	movq	(%r10), %r12
	movq	%r12, 480(%rsp)
	movq	8(%r10), %rdi
	movl	(%rsp), %r12d
	movq	%rdi, 488(%rsp)
	movq	16(%r10), %rsi
	testl	%r12d, %r12d
	movq	%rsi, 496(%rsp)
	movq	24(%r10), %rcx
	movq	%rcx, 504(%rsp)
	movq	32(%r10), %rdx
	movq	%rdx, 512(%rsp)
	movq	40(%r10), %r11
	movq	%r11, 520(%rsp)
	movzwl	48(%r10), %r9d
	movb	%bpl, 480(%rsp)
	movw	%r9w, 528(%rsp)
	je	.L191
	leaq	(%r8,%r13,4), %r9
	leaq	480(%rsp), %rcx
	movzbl	%bpl, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	movq	%rsp, %rdi
	call	solveV3.part.11
.L188:
	addl	$1, %ebp
	addq	$1, %r13
	movslq	%ebp, %r12
.L171:
	movq	8(%rbx), %rax
	movq	24(%rbx), %r8
	cmpq	$0, 8(%rax,%r12,8)
	movl	$0, (%r8,%r12,4)
	je	.L174
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movl	$56, %ecx
	rep movsq
	movq	16(%rbx), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, 480(%rsp)
	movq	8(%rsi), %rdx
	movl	(%rsp), %edi
	movq	%rdx, 488(%rsp)
	movq	16(%rsi), %r12
	testl	%edi, %edi
	movq	%r12, 496(%rsp)
	movq	24(%rsi), %r11
	movq	%r11, 504(%rsp)
	movq	32(%rsi), %r10
	movq	%r10, 512(%rsp)
	movq	40(%rsi), %r9
	movq	%r9, 520(%rsp)
	movzwl	48(%rsi), %ecx
	movb	%bpl, 480(%rsp)
	movw	%cx, 528(%rsp)
	jne	.L173
	addl	$1, %ebp
	addl	$1, (%r8,%r13,4)
	addq	$1, %r13
	cmpl	%ebp, %r15d
	jg	.L192
.L187:
	leaq	464(%rsp), %rsi
	leaq	448(%rsp), %rdi
	call	GOMP_loop_dynamic_next
	testb	%al, %al
	jne	.L177
.L169:
	call	GOMP_loop_end_nowait
	movq	536(%rsp), %rax
	xorq	%fs:40, %rax
	.p2align 4,,4
	jne	.L193
	addq	$552, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	.cfi_restore_state
	addl	$1, (%r8,%r13,4)
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L190:
	addl	$1, (%r8,%r12,4)
	jmp	.L189
.L193:
	call	__stack_chk_fail
	.cfi_endproc
.LFE104:
	.size	solve4._omp_fn.6, .-solve4._omp_fn.6
	.p2align 4,,15
	.globl	parse_str2edges
	.type	parse_str2edges, @function
parse_str2edges:
.LFB56:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	movl	$16, %esi
	addl	$1, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	movl	$1, %edi
	call	calloc
	movslq	%ebx, %rdi
	movl	%ebx, (%rax)
	movl	$2, %esi
	movq	%rax, %r15
	call	calloc
	testl	%ebx, %ebx
	movq	%rax, %rbp
	movq	%rax, 8(%r15)
	jle	.L195
	movq	8(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, %r12
	addq	$1, %r12
	je	.L195
	xorl	%r13d, %r13d
	testq	%rax, %rax
	movl	$2, %ebx
	jne	.L196
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L198:
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	call	strtol
	leaq	1(%r14), %rdi
	xorl	%esi, %esi
	movb	%al, 0(%rbp)
	movl	$10, %edx
	addl	$1, %r13d
	call	strtol
	movb	%al, 1(%rbp)
	cmpl	%r13d, (%r15)
	jle	.L195
	movq	8(%rsp), %rax
	movq	%rbx, %rbp
	addq	8(%r15), %rbp
	movq	(%rax,%rbx,4), %rax
	addq	$2, %rbx
	movq	%rax, %r12
	addq	$1, %r12
	je	.L195
	testq	%rax, %rax
	je	.L195
.L196:
	movl	$44, %esi
	movq	%r12, %rdi
	call	strchr
	testq	%rax, %rax
	movq	%rax, %r14
	jne	.L198
.L195:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movq	%r15, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	parse_str2edges, .-parse_str2edges
	.section	.rodata.str1.1
.LC2:
	.string	"%i %i\n"
	.text
	.p2align 4,,15
	.globl	print_edges
	.type	print_edges, @function
print_edges:
.LFB57:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.L199
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L201:
	movq	%rbp, %rax
	addq	8(%r12), %rax
	movl	$.LC2, %esi
	movl	$1, %edi
	addl	$1, %ebx
	addq	$2, %rbp
	movzbl	1(%rax), %ecx
	movzbl	(%rax), %edx
	xorl	%eax, %eax
	call	__printf_chk
	cmpl	%ebx, (%r12)
	jg	.L201
.L199:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE57:
	.size	print_edges, .-print_edges
	.p2align 4,,15
	.globl	edges2adjMatrix
	.type	edges2adjMatrix, @function
edges2adjMatrix:
.LFB58:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rdi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	je	.L204
	movl	$404, %esi
	movl	$1, %edi
	call	calloc
	movl	(%rbx), %esi
	testl	%esi, %esi
	jle	.L205
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L206:
	movq	%rcx, %r10
	addq	8(%rbx), %r10
	addl	$1, %edx
	addq	$2, %rcx
	movzbl	(%r10), %r9d
	movzbl	1(%r10), %edi
	leaq	(%r9,%r9,4), %r8
	leaq	(%rdi,%r8,4), %rsi
	addb	$1, 4(%rax,%rsi)
	movl	(%rbx), %esi
	cmpl	%edx, %esi
	jg	.L206
.L205:
	movl	%esi, (%rax)
.L204:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE58:
	.size	edges2adjMatrix, .-edges2adjMatrix
	.section	.rodata.str1.1
.LC3:
	.string	" "
.LC4:
	.string	"parse error"
.LC5:
	.string	""
.LC6:
	.string	"parse_error"
.LC7:
	.string	"too big"
	.text
	.p2align 4,,15
	.globl	edges2Matrix
	.type	edges2Matrix, @function
edges2Matrix:
.LFB59:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$448, %esi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	movl	$1, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	calloc
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	.L210
	.p2align 4,,10
	.p2align 3
.L215:
	movl	$.LC3, %esi
	call	strtok
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L218
	xorl	%edi, %edi
	movl	$.LC5, %esi
	call	strtok
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L219
	xorl	%esi, %esi
	movq	%r13, %rdi
	movl	$10, %edx
	call	strtol
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	movl	%eax, %r13d
	call	strtol
	cmpl	$20, %eax
	jg	.L216
	cmpl	$20, %r13d
	jg	.L216
	movslq	%r13d, %r13
	cltq
	addq	$8, %rbp
	leaq	0(%r13,%r13,4), %rcx
	addl	$1, (%rbx)
	leaq	0(%r13,%rcx,4), %rdx
	addq	%rdx, %rax
	addb	$1, 4(%rbx,%rax)
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L215
.L210:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L218:
	.cfi_restore_state
	movl	$.LC4, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
.L216:
	movl	$.LC7, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
.L219:
	movl	$.LC6, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
	.cfi_endproc
.LFE59:
	.size	edges2Matrix, .-edges2Matrix
	.p2align 4,,15
	.globl	create_companion
	.type	create_companion, @function
create_companion:
.LFB60:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$176, %esi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movl	$1, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	calloc
	leaq	8(%rax), %rbp
	leaq	168(%rax), %r13
	movq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L221:
	xorl	%eax, %eax
	xorl	%edi, %edi
.L224:
	cmpb	$0, 4(%rbx,%rax)
	leal	1(%rdi), %edx
	cmove	%edi, %edx
	cmpb	$0, 5(%rax,%rbx)
	leal	1(%rdx), %r11d
	cmove	%edx, %r11d
	cmpb	$0, 6(%rax,%rbx)
	leal	1(%r11), %r10d
	cmove	%r11d, %r10d
	cmpb	$0, 7(%rax,%rbx)
	leal	1(%r10), %r9d
	cmove	%r10d, %r9d
	cmpb	$0, 8(%rax,%rbx)
	leal	1(%r9), %r8d
	cmove	%r9d, %r8d
	cmpb	$0, 9(%rax,%rbx)
	leal	1(%r8), %edi
	cmove	%r8d, %edi
	cmpb	$0, 10(%rax,%rbx)
	leal	1(%rdi), %esi
	cmove	%edi, %esi
	cmpb	$0, 11(%rax,%rbx)
	leal	1(%rsi), %ecx
	cmove	%esi, %ecx
	cmpb	$0, 12(%rax,%rbx)
	leal	1(%rcx), %edx
	cmove	%ecx, %edx
	cmpb	$0, 13(%rax,%rbx)
	leal	1(%rdx), %edi
	cmove	%edx, %edi
	addq	$10, %rax
	cmpq	$20, %rax
	jne	.L224
	testl	%edi, %edi
	je	.L225
	addl	$1, %edi
	movl	$1, %esi
	addl	$1, 4(%r12)
	movslq	%edi, %rdi
	call	calloc
	xorl	%ecx, %ecx
	movq	%rax, 0(%rbp)
	xorl	%edx, %edx
.L227:
	cmpb	$0, 4(%rbx,%rcx)
	je	.L226
	movslq	%edx, %rsi
	addl	$1, %edx
	movb	%cl, (%rax,%rsi)
.L226:
	addq	$1, %rcx
	cmpb	$0, 4(%rbx,%rcx)
	je	.L231
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%cl, (%rax,%rdi)
.L231:
	cmpb	$0, 5(%rcx,%rbx)
	leaq	1(%rcx), %rsi
	je	.L233
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L233:
	cmpb	$0, 6(%rcx,%rbx)
	leaq	2(%rcx), %rsi
	je	.L235
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L235:
	cmpb	$0, 7(%rcx,%rbx)
	leaq	3(%rcx), %rsi
	je	.L237
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L237:
	cmpb	$0, 8(%rcx,%rbx)
	leaq	4(%rcx), %rsi
	je	.L239
	movslq	%edx, %r11
	addl	$1, %edx
	movb	%sil, (%rax,%r11)
.L239:
	cmpb	$0, 9(%rcx,%rbx)
	leaq	5(%rcx), %rsi
	je	.L241
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%sil, (%rax,%rdi)
.L241:
	cmpb	$0, 10(%rcx,%rbx)
	leaq	6(%rcx), %rsi
	je	.L243
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L243:
	cmpb	$0, 11(%rcx,%rbx)
	leaq	7(%rcx), %rsi
	je	.L245
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L245:
	cmpb	$0, 12(%rcx,%rbx)
	leaq	8(%rcx), %rsi
	je	.L247
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L247:
	addq	$9, %rcx
	cmpq	$20, %rcx
	jne	.L227
	.p2align 4,,10
	.p2align 3
.L225:
	addq	$8, %rbp
	addq	$21, %rbx
	cmpq	%r13, %rbp
	jne	.L221
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	create_companion, .-create_companion
	.section	.rodata.str1.1
.LC8:
	.string	"%d %d"
.LC9:
	.string	"don't use 0"
	.text
	.p2align 4,,15
	.globl	edges2DMatrix
	.type	edges2DMatrix, @function
edges2DMatrix:
.LFB61:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$24, %esi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	movl	$1, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	calloc
	movq	%rax, %rbx
.L260:
	movq	16(%r13), %rdi
	testq	%rdi, %rdi
	je	.L272
	testl	%r12d, %r12d
	movq	%r13, %rbp
	je	.L265
	.p2align 4,,10
	.p2align 3
.L275:
	leaq	16(%rsp), %rcx
	leaq	28(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC8, %esi
	movl	$0, 16(%rsp)
	movl	$0, 28(%rsp)
	call	__isoc99_sscanf
	movl	28(%rsp), %eax
	testl	%eax, %eax
	je	.L261
	movl	16(%rsp), %edx
	testl	%edx, %edx
	je	.L261
	cmpl	4(%rbx), %eax
	jg	.L274
	cmpl	8(%rbx), %edx
	jg	.L274
	movq	16(%rbx), %rcx
	cltq
	movslq	%edx, %rsi
	addq	$8, %rbp
	addq	(%rcx,%rax,8), %rsi
	addb	$1, (%rsi)
	movq	16(%rbp), %rdi
	addl	$1, (%rbx)
	testq	%rdi, %rdi
	jne	.L275
.L267:
	addl	$1, %r12d
	cmpl	$2, %r12d
	jne	.L260
	addl	$1, 12(%rbx)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L265:
	.cfi_restore_state
	leaq	16(%rsp), %rcx
	leaq	28(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC8, %esi
	movl	$0, 16(%rsp)
	movl	$0, 28(%rsp)
	call	__isoc99_sscanf
	movl	28(%rsp), %eax
	testl	%eax, %eax
	je	.L261
	movl	16(%rsp), %edx
	testl	%edx, %edx
	je	.L261
	cmpl	4(%rbx), %eax
	jle	.L263
	movl	%eax, 4(%rbx)
.L263:
	cmpl	8(%rbx), %edx
	jle	.L264
	movl	%edx, 8(%rbx)
.L264:
	addq	$8, %rbp
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L265
.L266:
	movl	4(%rbx), %ebp
	movl	8(%rbx), %r15d
	addl	$2, %ebp
	addl	$2, %r15d
	cmpl	%r15d, %ebp
	movl	%ebp, 4(%rbx)
	movl	%r15d, 8(%rbx)
	jl	.L306
	movl	%ebp, 8(%rbx)
	movl	%ebp, %r15d
.L269:
	leal	1(%rbp), %edi
	movl	$8, %esi
	movslq	%edi, %rdi
	call	calloc
	testl	%ebp, %ebp
	movq	%rax, %r14
	movq	%rax, 16(%rbx)
	jle	.L267
	leal	-1(%rbp), %edx
	addl	$1, %r15d
	xorl	%ebp, %ebp
	movslq	%r15d, %r15
	leaq	8(,%rdx,8), %rax
	andl	$7, %edx
	movq	%rax, 8(%rsp)
	je	.L270
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rdx, (%rsp)
	call	calloc
	movq	(%rsp), %rdx
	movq	%rax, (%r14)
	movl	$8, %ebp
	movq	16(%rbx), %r14
	cmpq	$1, %rdx
	je	.L270
	cmpq	$2, %rdx
	je	.L300
	cmpq	$3, %rdx
	je	.L301
	cmpq	$4, %rdx
	je	.L302
	cmpq	$5, %rdx
	je	.L303
	cmpq	$6, %rdx
	je	.L304
	movl	$1, %esi
	movq	%r15, %rdi
	movb	$16, %bpl
	call	calloc
	movq	%rax, 8(%r14)
	movq	16(%rbx), %r14
.L304:
	movl	$1, %esi
	movq	%r15, %rdi
	call	calloc
	movq	%rax, (%r14,%rbp)
	movq	16(%rbx), %r14
	addq	$8, %rbp
.L303:
	movl	$1, %esi
	movq	%r15, %rdi
	call	calloc
	movq	%rax, (%r14,%rbp)
	movq	16(%rbx), %r14
	addq	$8, %rbp
.L302:
	movl	$1, %esi
	movq	%r15, %rdi
	call	calloc
	movq	%rax, (%r14,%rbp)
	movq	16(%rbx), %r14
	addq	$8, %rbp
.L301:
	movl	$1, %esi
	movq	%r15, %rdi
	call	calloc
	movq	%rax, (%r14,%rbp)
	movq	16(%rbx), %r14
	addq	$8, %rbp
.L300:
	movl	$1, %esi
	movq	%r15, %rdi
	call	calloc
	movq	%rax, (%r14,%rbp)
	addq	$8, %rbp
	movq	16(%rbx), %r14
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L307:
	movq	16(%rbx), %r14
	movl	$1, %esi
	movq	%r15, %rdi
	call	calloc
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, 8(%r14,%rbp)
	movq	16(%rbx), %r14
	call	calloc
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, 16(%r14,%rbp)
	movq	16(%rbx), %r14
	call	calloc
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, 24(%r14,%rbp)
	movq	16(%rbx), %r14
	call	calloc
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, 32(%r14,%rbp)
	movq	16(%rbx), %r14
	call	calloc
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, 40(%r14,%rbp)
	movq	16(%rbx), %r14
	call	calloc
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, 48(%r14,%rbp)
	movq	16(%rbx), %r14
	call	calloc
	movq	%rax, 56(%r14,%rbp)
	movq	16(%rbx), %r14
	addq	$64, %rbp
.L270:
	movl	$1, %esi
	movq	%r15, %rdi
	call	calloc
	leaq	8(%rbp), %rdx
	cmpq	8(%rsp), %rdx
	movq	%rax, (%r14,%rbp)
	jne	.L307
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L306:
	movl	%r15d, 4(%rbx)
	movl	%r15d, %ebp
	jmp	.L269
.L272:
	testl	%r12d, %r12d
	jne	.L267
	jmp	.L266
.L261:
	movl	$.LC9, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	errx
.L274:
	movl	$.LC7, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
	.cfi_endproc
.LFE61:
	.size	edges2DMatrix, .-edges2DMatrix
	.p2align 4,,15
	.globl	create_dcompanion
	.type	create_dcompanion, @function
create_dcompanion:
.LFB62:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$24, %esi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	movl	$1, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	calloc
	movl	4(%r13), %r15d
	movl	$8, %esi
	movq	%rax, %r14
	leal	1(%r15), %edi
	movl	%r15d, 8(%rax)
	movslq	%edi, %rdi
	call	calloc
	testl	%r15d, %r15d
	movq	%rax, 16(%r14)
	jle	.L309
	movl	8(%r13), %ebx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L310:
	testl	%ebx, %ebx
	jle	.L314
	movq	16(%r13), %rdi
	leal	-1(%rbx), %esi
	xorl	%edx, %edx
	leaq	0(,%r12,8), %rbp
	movl	$1, %eax
	andl	$7, %esi
	movq	(%rdi,%r12,8), %rcx
	cmpb	$0, (%rcx)
	setne	%dl
	cmpl	$1, %ebx
	movl	%edx, %edi
	jle	.L348
	testl	%esi, %esi
	je	.L313
	cmpl	$1, %esi
	je	.L342
	cmpl	$2, %esi
	.p2align 4,,3
	je	.L343
	cmpl	$3, %esi
	.p2align 4,,2
	je	.L344
	cmpl	$4, %esi
	.p2align 4,,2
	je	.L345
	cmpl	$5, %esi
	.p2align 4,,2
	je	.L346
	cmpl	$6, %esi
	.p2align 4,,2
	je	.L347
	cmpb	$0, 1(%rcx)
	leal	1(%rdx), %esi
	movl	$2, %eax
	cmovne	%esi, %edx
.L347:
	cmpb	$0, (%rcx,%rax)
	leal	1(%rdx), %r9d
	cmovne	%r9d, %edx
	addq	$1, %rax
.L346:
	cmpb	$0, (%rcx,%rax)
	leal	1(%rdx), %r10d
	cmovne	%r10d, %edx
	addq	$1, %rax
.L345:
	cmpb	$0, (%rcx,%rax)
	leal	1(%rdx), %r11d
	cmovne	%r11d, %edx
	addq	$1, %rax
.L344:
	cmpb	$0, (%rcx,%rax)
	leal	1(%rdx), %r8d
	cmovne	%r8d, %edx
	addq	$1, %rax
.L343:
	cmpb	$0, (%rcx,%rax)
	leal	1(%rdx), %edi
	cmovne	%edi, %edx
	addq	$1, %rax
.L342:
	cmpb	$0, (%rcx,%rax)
	leal	1(%rdx), %edi
	cmove	%edx, %edi
	addq	$1, %rax
	cmpl	%eax, %ebx
	jle	.L348
.L313:
	cmpb	$0, (%rcx,%rax)
	leal	1(%rdi), %edx
	cmove	%edi, %edx
	cmpb	$0, 1(%rcx,%rax)
	leal	1(%rdx), %r11d
	cmove	%edx, %r11d
	cmpb	$0, 2(%rcx,%rax)
	leal	1(%r11), %r10d
	cmove	%r11d, %r10d
	cmpb	$0, 3(%rcx,%rax)
	leal	1(%r10), %r9d
	cmove	%r10d, %r9d
	cmpb	$0, 4(%rcx,%rax)
	leal	1(%r9), %r8d
	cmove	%r9d, %r8d
	cmpb	$0, 5(%rcx,%rax)
	leal	1(%r8), %esi
	cmove	%r8d, %esi
	cmpb	$0, 6(%rcx,%rax)
	leal	1(%rsi), %edx
	cmove	%esi, %edx
	cmpb	$0, 7(%rcx,%rax)
	leal	1(%rdx), %edi
	cmove	%edx, %edi
	addq	$8, %rax
	cmpl	%eax, %ebx
	jg	.L313
.L348:
	testl	%edi, %edi
	je	.L314
	addl	$1, %edi
	movl	$1, %esi
	addl	$1, 4(%r14)
	movslq	%edi, %rdi
	call	calloc
	movq	16(%r14), %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, (%rcx,%rbp)
	movq	16(%r13), %rdi
	.p2align 4,,10
	.p2align 3
.L316:
	movq	(%rdi,%rbp), %r15
	cmpb	$0, (%r15,%rdx)
	je	.L315
	movslq	%esi, %rbx
	addl	$1, %esi
	movb	%dl, (%rax,%rbx)
	movl	8(%r13), %ebx
.L315:
	leal	1(%rdx), %r8d
	addq	$1, %rdx
	cmpl	%ebx, %r8d
	jl	.L316
	movl	4(%r13), %r15d
.L314:
	leal	1(%r12), %eax
	addq	$1, %r12
	cmpl	%r15d, %eax
	jl	.L310
.L309:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE62:
	.size	create_dcompanion, .-create_dcompanion
	.section	.rodata.str1.1
.LC10:
	.string	"   "
.LC11:
	.string	"%.2i "
	.text
	.p2align 4,,15
	.globl	print_adjMatrix
	.type	print_adjMatrix, @function
print_adjMatrix:
.LFB63:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	testq	%rdi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	je	.L349
	movl	$.LC10, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	__printf_chk
.L351:
	movl	%ebx, %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	1(%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	2(%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	3(%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	4(%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	5(%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	6(%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	7(%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	8(%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	leal	9(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC11, %esi
	movl	$1, %edi
	addl	$10, %ebx
	call	__printf_chk
	cmpl	$20, %ebx
	jne	.L351
	movl	$.LC5, %edi
	xorl	%r12d, %r12d
	call	puts
	.p2align 4,,10
	.p2align 3
.L353:
	movl	%r12d, %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	__printf_chk
.L352:
	movzbl	4(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	5(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	6(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	7(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	8(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	9(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	10(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	11(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	12(%rbp,%rbx), %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	13(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC11, %esi
	movl	$1, %edi
	addq	$10, %rbx
	call	__printf_chk
	cmpq	$20, %rbx
	jne	.L352
	movl	$.LC5, %edi
	addl	$1, %r12d
	addq	$20, %rbp
	call	puts
	cmpl	$20, %r12d
	jne	.L353
.L349:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	print_adjMatrix, .-print_adjMatrix
	.p2align 4,,15
	.globl	print_dmatrix
	.type	print_dmatrix, @function
print_dmatrix:
.LFB64:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rdi, %rdi
	je	.L375
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	4(%rbp), %r11d
	testl	%r11d, %r11d
	jle	.L377
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L378:
	movl	%ebx, %edx
	xorl	%eax, %eax
	movl	$.LC11, %esi
	movl	$1, %edi
	addl	$1, %ebx
	call	__printf_chk
	cmpl	%ebx, 4(%rbp)
	jg	.L378
.L377:
	movl	$.LC5, %edi
	call	puts
	movl	4(%rbp), %r10d
	testl	%r10d, %r10d
	jle	.L375
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L381:
	xorl	%eax, %eax
	movl	%r13d, %edx
	movl	$.LC11, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	8(%rbp), %r9d
	testl	%r9d, %r9d
	jle	.L379
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L380:
	movq	16(%rbp), %rcx
	xorl	%eax, %eax
	movl	$.LC11, %esi
	movl	$1, %edi
	movq	(%rcx,%r12), %rdx
	movzbl	(%rdx,%rbx), %edx
	call	__printf_chk
	leal	1(%rbx), %eax
	addq	$1, %rbx
	cmpl	%eax, 8(%rbp)
	jg	.L380
.L379:
	movl	$.LC5, %edi
	addl	$1, %r13d
	addq	$8, %r12
	call	puts
	cmpl	%r13d, 4(%rbp)
	jg	.L381
.L375:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.size	print_dmatrix, .-print_dmatrix
	.p2align 4,,15
	.globl	solveV
	.type	solveV, @function
solveV:
.LFB66:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4136, %rsp
	.cfi_def_cfa_offset 4192
	movl	4192(%rsp), %eax
	movq	%rsi, 504(%rsp)
	movl	%edx, 592(%rsp)
	testl	%eax, %eax
	jle	.L385
	movslq	592(%rsp), %r10
	movl	592(%rsp), %ecx
	leaq	800(%rsp), %r8
	movq	$0, 640(%rsp)
	movq	%r8, %rbp
	movq	%r8, 432(%rsp)
	addl	$1, %ecx
	addq	$20, %rbp
	movb	%dil, (%rsi,%r10)
	movzbl	%dil, %edi
	leaq	1216(%rsp), %rsi
	leaq	(%rdi,%rdi,4), %rbx
	leaq	4216(%rsp,%rdi), %r9
	movslq	%ecx, %rdx
	movq	%rbp, 688(%rsp)
	movq	%rdx, 792(%rsp)
	salq	$2, %rbx
	movq	%r9, 712(%rsp)
	movq	%rsi, 424(%rsp)
	movq	%rbx, 784(%rsp)
.L429:
	leaq	4192(%rsp), %r12
	addq	784(%rsp), %r12
	movq	640(%rsp), %r11
	movzbl	5(%r12,%r11), %ecx
	movq	%r12, 728(%rsp)
	testb	%cl, %cl
	movb	%cl, 722(%rsp)
	je	.L387
	movq	640(%rsp), %rsi
	movq	728(%rsp), %r15
	movl	%ecx, %r14d
	movq	712(%rsp), %r13
	subl	$1, %r14d
	movb	%r14b, 5(%r15,%rsi)
	movzbl	0(%r13), %esi
	testb	%sil, %sil
	movb	%sil, 723(%rsp)
	je	.L388
	movl	%esi, %edx
	movb	%al, 743(%rsp)
	subl	$2, %eax
	subl	$1, %edx
.L430:
	movq	712(%rsp), %rbx
	movl	$50, %ecx
	movq	432(%rsp), %rdi
	leaq	4192(%rsp), %rsi
	movl	640(%rsp), %r8d
	movb	%dl, (%rbx)
	movl	%eax, 4192(%rsp)
	rep movsq
	movzbl	640(%rsp), %edx
	addl	$1, %r8d
	addl	$1, %edx
	testl	%eax, %eax
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	jle	.L389
	movl	592(%rsp), %r9d
	movl	592(%rsp), %ebp
	movslq	%r8d, %r12
	movq	504(%rsp), %r13
	movq	792(%rsp), %r14
	leaq	824(%rsp,%r12), %r11
	leaq	1236(%rsp), %r10
	movq	$0, 632(%rsp)
	addl	$2, %r9d
	addl	$3, %ebp
	movq	%r11, 704(%rsp)
	movb	%dl, 0(%r13,%r14)
	movslq	%r9d, %r8
	movslq	%ebp, %rdx
	movq	%r10, 672(%rsp)
	movq	%r8, 768(%rsp)
	movq	%rdx, 776(%rsp)
.L428:
	movq	688(%rsp), %rcx
	movq	632(%rsp), %r15
	movzbl	5(%rcx,%r15), %edx
	testb	%dl, %dl
	movb	%dl, 724(%rsp)
	je	.L390
	movq	632(%rsp), %rsi
	movq	704(%rsp), %rdi
	subl	$1, %edx
	movb	%dl, 5(%rcx,%rsi)
	movzbl	(%rdi), %edx
	testb	%dl, %dl
	movb	%dl, 725(%rsp)
	je	.L391
	movb	%al, 742(%rsp)
	subl	$1, %edx
	subl	$2, %eax
.L392:
	movq	704(%rsp), %rbx
	movl	$50, %ecx
	movq	424(%rsp), %rdi
	movq	432(%rsp), %rsi
	movl	632(%rsp), %r8d
	movb	%dl, (%rbx)
	movl	%eax, 800(%rsp)
	rep movsq
	movzbl	632(%rsp), %edx
	addl	$1, %r8d
	addl	$1, %edx
	testl	%eax, %eax
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	jle	.L393
	movl	592(%rsp), %ebp
	leaq	1632(%rsp), %r9
	movq	504(%rsp), %r12
	movq	768(%rsp), %r13
	movslq	%r8d, %r11
	movq	$0, 624(%rsp)
	leaq	1240(%rsp,%r11), %r10
	movq	%r9, %r8
	movq	%r9, 456(%rsp)
	addl	$4, %ebp
	addq	$20, %r8
	movb	%dl, (%r12,%r13)
	movslq	%ebp, %rdx
	movq	%r10, 680(%rsp)
	movq	%r8, 696(%rsp)
	movq	%rdx, 760(%rsp)
.L427:
	movq	672(%rsp), %rsi
	movq	624(%rsp), %r14
	movzbl	5(%rsi,%r14), %ecx
	testb	%cl, %cl
	movb	%cl, 726(%rsp)
	je	.L394
	movl	%ecx, %edi
	movq	680(%rsp), %r15
	movq	624(%rsp), %rcx
	subl	$1, %edi
	movb	%dil, 5(%rsi,%rcx)
	movzbl	(%r15), %esi
	testb	%sil, %sil
	movb	%sil, 727(%rsp)
	je	.L395
	movl	%esi, %edx
	movb	%al, 740(%rsp)
	subl	$2, %eax
	subl	$1, %edx
.L396:
	movq	680(%rsp), %rbx
	movl	$50, %ecx
	movq	456(%rsp), %rdi
	movq	424(%rsp), %rsi
	movl	624(%rsp), %r8d
	movb	%dl, (%rbx)
	movl	%eax, 1216(%rsp)
	rep movsq
	movzbl	624(%rsp), %edx
	addl	$1, %r8d
	addl	$1, %edx
	testl	%eax, %eax
	movl	(%rsi), %esi
	movl	%esi, (%rdi)
	jle	.L397
	movl	592(%rsp), %ebp
	leaq	2048(%rsp), %r9
	movq	504(%rsp), %r12
	movq	776(%rsp), %r13
	movslq	%r8d, %r11
	movq	$0, 616(%rsp)
	leaq	1656(%rsp,%r11), %r10
	movq	%r9, %r8
	movq	%r9, 440(%rsp)
	addl	$5, %ebp
	addq	$20, %r8
	movb	%dl, (%r12,%r13)
	movslq	%ebp, %rdx
	movq	%r10, 664(%rsp)
	movq	%r8, 656(%rsp)
	movq	%rdx, 752(%rsp)
.L426:
	movq	696(%rsp), %rsi
	movq	616(%rsp), %r14
	movzbl	5(%rsi,%r14), %ecx
	testb	%cl, %cl
	movb	%cl, 736(%rsp)
	je	.L398
	movl	%ecx, %edi
	movq	664(%rsp), %r15
	movq	616(%rsp), %rcx
	subl	$1, %edi
	movb	%dil, 5(%rsi,%rcx)
	movzbl	(%r15), %esi
	testb	%sil, %sil
	movb	%sil, 737(%rsp)
	je	.L399
	movl	%esi, %edx
	movb	%al, 741(%rsp)
	subl	$2, %eax
	subl	$1, %edx
.L400:
	movq	664(%rsp), %rbx
	movl	$50, %ecx
	movq	440(%rsp), %rdi
	movq	456(%rsp), %rsi
	movl	616(%rsp), %r8d
	movb	%dl, (%rbx)
	movl	%eax, 1632(%rsp)
	rep movsq
	movzbl	616(%rsp), %edx
	addl	$1, %r8d
	addl	$1, %edx
	testl	%eax, %eax
	movl	(%rsi), %esi
	movl	%esi, (%rdi)
	jle	.L401
	movl	592(%rsp), %ebp
	leaq	2464(%rsp), %r9
	movq	504(%rsp), %r12
	movq	760(%rsp), %r13
	movslq	%r8d, %r11
	movq	$0, 600(%rsp)
	leaq	2072(%rsp,%r11), %r10
	movq	%r9, %r8
	movq	%r9, 472(%rsp)
	addl	$6, %ebp
	addq	$20, %r8
	movb	%dl, (%r12,%r13)
	movslq	%ebp, %rdx
	movq	%r10, 648(%rsp)
	movq	%r8, 584(%rsp)
	movq	%rdx, 744(%rsp)
.L425:
	movq	656(%rsp), %rsi
	movq	600(%rsp), %r14
	movzbl	5(%rsi,%r14), %ecx
	testb	%cl, %cl
	movb	%cl, 721(%rsp)
	je	.L402
	movl	%ecx, %edi
	movq	648(%rsp), %r15
	movq	600(%rsp), %rcx
	subl	$1, %edi
	movb	%dil, 5(%rsi,%rcx)
	movzbl	(%r15), %esi
	testb	%sil, %sil
	movb	%sil, 738(%rsp)
	je	.L403
	movl	%esi, %edx
	movb	%al, 739(%rsp)
	subl	$2, %eax
	subl	$1, %edx
.L404:
	movq	648(%rsp), %rbx
	movl	$50, %ecx
	movq	472(%rsp), %rdi
	movq	440(%rsp), %rsi
	movl	600(%rsp), %r8d
	movb	%dl, (%rbx)
	movl	%eax, 2048(%rsp)
	rep movsq
	movzbl	600(%rsp), %edx
	addl	$1, %r8d
	addl	$1, %edx
	testl	%eax, %eax
	movl	(%rsi), %esi
	movl	%esi, (%rdi)
	jle	.L405
	movl	592(%rsp), %ebp
	leaq	2880(%rsp), %r9
	movq	504(%rsp), %r12
	movq	752(%rsp), %r13
	movslq	%r8d, %r11
	movq	$0, 560(%rsp)
	leaq	2488(%rsp,%r11), %r10
	movq	%r9, %r8
	movq	%r9, 464(%rsp)
	addl	$7, %ebp
	addq	$20, %r8
	movb	%dl, (%r12,%r13)
	movslq	%ebp, %rdx
	movq	%r10, 576(%rsp)
	movq	%r8, 544(%rsp)
	movq	%rdx, 608(%rsp)
	.p2align 4,,10
	.p2align 3
.L424:
	movq	584(%rsp), %rsi
	movq	560(%rsp), %r14
	movzbl	5(%rsi,%r14), %ecx
	testb	%cl, %cl
	movb	%cl, 598(%rsp)
	je	.L406
	movl	%ecx, %edi
	movq	576(%rsp), %r15
	movq	560(%rsp), %rcx
	subl	$1, %edi
	movb	%dil, 5(%rsi,%rcx)
	movzbl	(%r15), %esi
	testb	%sil, %sil
	movb	%sil, 599(%rsp)
	je	.L407
	movl	%esi, %edx
	movb	%al, 720(%rsp)
	subl	$2, %eax
	subl	$1, %edx
.L408:
	movq	576(%rsp), %rbp
	movl	$50, %ecx
	movq	464(%rsp), %rdi
	movq	472(%rsp), %rsi
	movzbl	560(%rsp), %ebx
	movb	%dl, 0(%rbp)
	movl	%eax, 2464(%rsp)
	rep movsq
	movl	560(%rsp), %edx
	addl	$1, %ebx
	addl	$1, %edx
	testl	%eax, %eax
	movl	(%rsi), %esi
	movl	%esi, (%rdi)
	jle	.L409
	movl	592(%rsp), %r8d
	leaq	3296(%rsp), %r10
	movslq	%edx, %r12
	movq	504(%rsp), %r14
	movq	744(%rsp), %r13
	leaq	2904(%rsp,%r12), %r11
	movq	%r10, %r9
	movq	%r10, 448(%rsp)
	movq	$0, 520(%rsp)
	addl	$8, %r8d
	addq	$20, %r9
	movq	%r11, 528(%rsp)
	movslq	%r8d, %rdx
	movb	%bl, (%r14,%r13)
	movq	%r9, 512(%rsp)
	movq	%rdx, 568(%rsp)
	.p2align 4,,10
	.p2align 3
.L423:
	movq	544(%rsp), %rsi
	movq	520(%rsp), %r15
	movzbl	5(%rsi,%r15), %ecx
	testb	%cl, %cl
	movb	%cl, 543(%rsp)
	je	.L410
	movl	%ecx, %ebx
	movq	528(%rsp), %rdi
	movq	520(%rsp), %rcx
	subl	$1, %ebx
	movb	%bl, 5(%rsi,%rcx)
	movzbl	(%rdi), %esi
	testb	%sil, %sil
	movb	%sil, 596(%rsp)
	je	.L411
	movl	%esi, %edx
	movb	%al, 597(%rsp)
	subl	$2, %eax
	subl	$1, %edx
.L412:
	movq	528(%rsp), %r8
	movl	$50, %ecx
	movq	448(%rsp), %rdi
	movq	464(%rsp), %rsi
	movzbl	520(%rsp), %ebp
	movb	%dl, (%r8)
	movl	%eax, 2880(%rsp)
	rep movsq
	movl	520(%rsp), %edx
	addl	$1, %ebp
	addl	$1, %edx
	testl	%eax, %eax
	movl	(%rsi), %esi
	movl	%esi, (%rdi)
	jle	.L413
	movslq	%edx, %r11
	movl	592(%rsp), %edx
	movq	504(%rsp), %r13
	leaq	3712(%rsp), %r9
	movq	608(%rsp), %r12
	leaq	3320(%rsp,%r11), %r10
	movq	%r9, %rbx
	addl	$9, %edx
	movq	%r10, 488(%rsp)
	movb	%bpl, 0(%r13,%r12)
	movq	%r9, 480(%rsp)
	addq	$20, %rbx
	xorl	%r13d, %r13d
	movl	%edx, 536(%rsp)
	.p2align 4,,10
	.p2align 3
.L422:
	movq	512(%rsp), %r14
	movzbl	5(%r14,%r13), %ecx
	testb	%cl, %cl
	movb	%cl, 540(%rsp)
	je	.L414
	movq	512(%rsp), %rsi
	movq	488(%rsp), %r15
	movl	%ecx, %edi
	subl	$1, %edi
	movb	%dil, 5(%rsi,%r13)
	movzbl	(%r15), %edx
	testb	%dl, %dl
	movb	%dl, 541(%rsp)
	je	.L415
	movb	%al, 542(%rsp)
	subl	$1, %edx
	subl	$2, %eax
.L416:
	movq	488(%rsp), %rbp
	movl	$50, %ecx
	movq	480(%rsp), %rdi
	movq	448(%rsp), %rsi
	testl	%eax, %eax
	leal	1(%r13), %r8d
	movb	%dl, 0(%rbp)
	leal	1(%r13), %edx
	rep movsq
	movl	%eax, 3712(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	jle	.L417
	movq	504(%rsp), %r9
	movq	568(%rsp), %r10
	movzbl	5(%rbx), %r12d
	movb	%r8b, (%r9,%r10)
	movslq	%edx, %r8
	leaq	3732(%rsp,%r8), %rbp
	testb	%r12b, %r12b
	leaq	4(%rbp), %r15
	je	.L440
	leal	-1(%r12), %edx
	movb	%dl, 5(%rbx)
	movzbl	4(%rbp), %r14d
	testb	%r14b, %r14b
	je	.L441
	leal	-1(%r14), %edx
	movb	%al, 503(%rsp)
	subl	$2, %eax
.L461:
	movb	%dl, 4(%rbp)
	movq	480(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 3712(%rsp)
	movq	%rsp, %rdi
	rep movsq
	movl	(%rsi), %r11d
	movl	%r11d, (%rdi)
	movl	536(%rsp), %edx
	movl	$1, %edi
	movq	504(%rsp), %rsi
	call	solveV
	movzbl	503(%rsp), %eax
	movb	%r14b, 4(%rbp)
	movb	%r12b, 5(%rbx)
.L440:
	movl	$1, %r12d
	leaq	20(%r15), %r14
	movq	%r13, 552(%rsp)
	jmp	.L421
	.p2align 4,,10
	.p2align 3
.L473:
	leal	-1(%r13), %edx
	movl	%eax, %r15d
	subl	$2, %eax
.L420:
	movb	%dl, (%r14)
	movq	480(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 3712(%rsp)
	movq	%rsp, %rdi
	leal	1(%r12), %eax
	rep movsq
	movl	(%rsi), %r11d
	movl	%r11d, (%rdi)
	movl	536(%rsp), %edx
	movl	%eax, %edi
	movq	504(%rsp), %rsi
	call	solveV
	movb	%r13b, (%r14)
	movzbl	%r15b, %eax
	movb	%bpl, 5(%rbx,%r12)
.L418:
	addq	$1, %r12
	leaq	20(%r14), %rbp
	movzbl	5(%rbx,%r12), %r13d
	testb	%r13b, %r13b
	je	.L443
	leal	-1(%r13), %r15d
	movb	%r15b, 5(%rbx,%r12)
	movzbl	20(%r14), %r14d
	testb	%r14b, %r14b
	je	.L444
	leal	-1(%r14), %edx
	movl	%eax, %r15d
	subl	$2, %eax
.L463:
	movb	%dl, 0(%rbp)
	movq	480(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 3712(%rsp)
	movq	%rsp, %rdi
	leal	1(%r12), %eax
	rep movsq
	movl	(%rsi), %r8d
	movl	%r8d, (%rdi)
	movl	536(%rsp), %edx
	movl	%eax, %edi
	movq	504(%rsp), %rsi
	call	solveV
	movb	%r14b, 0(%rbp)
	movzbl	%r15b, %eax
	movb	%r13b, 5(%rbx,%r12)
.L443:
	leaq	1(%r12), %r13
	movzbl	5(%rbx,%r13), %r14d
	testb	%r14b, %r14b
	je	.L446
	leal	-1(%r14), %r9d
	movb	%r9b, 5(%rbx,%r13)
	movzbl	20(%rbp), %r15d
	testb	%r15b, %r15b
	je	.L447
	leal	-1(%r15), %edx
	movb	%al, 503(%rsp)
	subl	$2, %eax
.L465:
	movb	%dl, 20(%rbp)
	movq	480(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 3712(%rsp)
	movq	%rsp, %rdi
	leal	1(%r13), %r10d
	rep movsq
	movl	(%rsi), %edx
	movl	%edx, (%rdi)
	movl	536(%rsp), %edx
	movl	%r10d, %edi
	movq	504(%rsp), %rsi
	call	solveV
	movzbl	503(%rsp), %eax
	movb	%r15b, 20(%rbp)
	movb	%r14b, 5(%rbx,%r13)
.L446:
	leaq	2(%r12), %r13
	movzbl	5(%rbx,%r13), %r14d
	testb	%r14b, %r14b
	je	.L449
	leal	-1(%r14), %r11d
	movb	%r11b, 5(%rbx,%r13)
	movzbl	40(%rbp), %r15d
	testb	%r15b, %r15b
	je	.L450
	leal	-1(%r15), %edx
	movb	%al, 503(%rsp)
	subl	$2, %eax
.L467:
	movb	%dl, 40(%rbp)
	movq	480(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 3712(%rsp)
	movq	%rsp, %rdi
	leal	1(%r13), %eax
	rep movsq
	movl	(%rsi), %r8d
	movl	%r8d, (%rdi)
	movl	536(%rsp), %edx
	movl	%eax, %edi
	movq	504(%rsp), %rsi
	call	solveV
	movzbl	503(%rsp), %eax
	movb	%r15b, 40(%rbp)
	movb	%r14b, 5(%rbx,%r13)
.L449:
	leaq	3(%r12), %r13
	movzbl	5(%rbx,%r13), %r14d
	testb	%r14b, %r14b
	je	.L452
	leal	-1(%r14), %r15d
	movb	%r15b, 5(%rbx,%r13)
	movzbl	60(%rbp), %r15d
	testb	%r15b, %r15b
	je	.L453
	leal	-1(%r15), %edx
	movb	%al, 503(%rsp)
	subl	$2, %eax
.L469:
	movb	%dl, 60(%rbp)
	movq	480(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 3712(%rsp)
	movq	%rsp, %rdi
	leal	1(%r13), %r9d
	rep movsq
	movl	(%rsi), %r10d
	movl	%r10d, (%rdi)
	movl	536(%rsp), %edx
	movl	%r9d, %edi
	movq	504(%rsp), %rsi
	call	solveV
	movzbl	503(%rsp), %eax
	movb	%r15b, 60(%rbp)
	movb	%r14b, 5(%rbx,%r13)
.L452:
	leaq	4(%r12), %r13
	movzbl	5(%rbx,%r13), %r14d
	testb	%r14b, %r14b
	je	.L455
	leal	-1(%r14), %edx
	movb	%dl, 5(%rbx,%r13)
	movzbl	80(%rbp), %r15d
	testb	%r15b, %r15b
	je	.L456
	leal	-1(%r15), %edx
	movb	%al, 503(%rsp)
	subl	$2, %eax
.L471:
	movb	%dl, 80(%rbp)
	movq	480(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 3712(%rsp)
	movq	%rsp, %rdi
	leal	1(%r13), %r11d
	rep movsq
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	536(%rsp), %edx
	movl	%r11d, %edi
	movq	504(%rsp), %rsi
	call	solveV
	movzbl	503(%rsp), %eax
	movb	%r15b, 80(%rbp)
	movb	%r14b, 5(%rbx,%r13)
.L455:
	addq	$5, %r12
	leaq	100(%rbp), %r14
	cmpq	$19, %r12
	je	.L472
.L421:
	movzbl	5(%rbx,%r12), %ebp
	testb	%bpl, %bpl
	je	.L418
	leal	-1(%rbp), %edx
	movb	%dl, 5(%rbx,%r12)
	movzbl	(%r14), %r13d
	testb	%r13b, %r13b
	jne	.L473
	movl	%eax, %r15d
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L420
	.p2align 4,,10
	.p2align 3
.L472:
	movq	552(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L417:
	movzbl	541(%rsp), %r15d
	movzbl	540(%rsp), %r12d
	movq	488(%rsp), %rbp
	movq	512(%rsp), %r14
	movzbl	542(%rsp), %eax
	movb	%r15b, 0(%rbp)
	movb	%r12b, 5(%r14,%r13)
.L414:
	addq	$1, %r13
	addq	$20, 488(%rsp)
	addq	$20, %rbx
	cmpq	$19, %r13
	jne	.L422
.L413:
	movzbl	596(%rsp), %r9d
	movzbl	543(%rsp), %r13d
	movq	528(%rsp), %r10
	movq	544(%rsp), %rbx
	movq	520(%rsp), %r8
	movzbl	597(%rsp), %eax
	movb	%r9b, (%r10)
	movb	%r13b, 5(%rbx,%r8)
.L410:
	addq	$1, 520(%rsp)
	addq	$20, 528(%rsp)
	addq	$20, 512(%rsp)
	cmpq	$19, 520(%rsp)
	jne	.L423
.L409:
	movzbl	599(%rsp), %eax
	movq	576(%rsp), %rsi
	movzbl	598(%rsp), %r11d
	movq	584(%rsp), %rdx
	movq	560(%rsp), %rdi
	movb	%al, (%rsi)
	movzbl	720(%rsp), %eax
	movb	%r11b, 5(%rdx,%rdi)
.L406:
	addq	$1, 560(%rsp)
	addq	$20, 576(%rsp)
	addq	$20, 544(%rsp)
	cmpq	$19, 560(%rsp)
	jne	.L424
.L405:
	movzbl	738(%rsp), %r15d
	movzbl	721(%rsp), %ecx
	movq	648(%rsp), %rbp
	movq	656(%rsp), %r12
	movq	600(%rsp), %r14
	movzbl	739(%rsp), %eax
	movb	%r15b, 0(%rbp)
	movb	%cl, 5(%r12,%r14)
.L402:
	addq	$1, 600(%rsp)
	addq	$20, 648(%rsp)
	addq	$20, 584(%rsp)
	cmpq	$19, 600(%rsp)
	jne	.L425
.L401:
	movzbl	737(%rsp), %r9d
	movzbl	736(%rsp), %r13d
	movq	664(%rsp), %r10
	movq	696(%rsp), %rbx
	movq	616(%rsp), %r8
	movzbl	741(%rsp), %eax
	movb	%r9b, (%r10)
	movb	%r13b, 5(%rbx,%r8)
.L398:
	addq	$1, 616(%rsp)
	addq	$20, 664(%rsp)
	addq	$20, 656(%rsp)
	cmpq	$19, 616(%rsp)
	jne	.L426
.L397:
	movzbl	727(%rsp), %eax
	movq	680(%rsp), %rsi
	movzbl	726(%rsp), %r11d
	movq	672(%rsp), %rdx
	movq	624(%rsp), %rdi
	movb	%al, (%rsi)
	movzbl	740(%rsp), %eax
	movb	%r11b, 5(%rdx,%rdi)
.L394:
	addq	$1, 624(%rsp)
	addq	$20, 680(%rsp)
	addq	$20, 696(%rsp)
	cmpq	$19, 624(%rsp)
	jne	.L427
.L393:
	movzbl	725(%rsp), %r15d
	movzbl	724(%rsp), %ecx
	movq	704(%rsp), %rbp
	movq	688(%rsp), %r12
	movq	632(%rsp), %r14
	movzbl	742(%rsp), %eax
	movb	%r15b, 0(%rbp)
	movb	%cl, 5(%r12,%r14)
.L390:
	addq	$1, 632(%rsp)
	addq	$20, 704(%rsp)
	addq	$20, 672(%rsp)
	cmpq	$19, 632(%rsp)
	jne	.L428
.L389:
	movzbl	723(%rsp), %r9d
	movzbl	722(%rsp), %r13d
	movq	712(%rsp), %r10
	movq	728(%rsp), %rbx
	movq	640(%rsp), %r8
	movzbl	743(%rsp), %eax
	movb	%r9b, (%r10)
	movb	%r13b, 5(%rbx,%r8)
.L387:
	addq	$1, 640(%rsp)
	addq	$20, 712(%rsp)
	addq	$20, 688(%rsp)
	cmpq	$19, 640(%rsp)
	jne	.L429
.L385:
	addq	$4136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L415:
	.cfi_restore_state
	movb	%al, 542(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L416
	.p2align 4,,10
	.p2align 3
.L444:
	movl	%eax, %r15d
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L463
	.p2align 4,,10
	.p2align 3
.L447:
	movb	%al, 503(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L465
	.p2align 4,,10
	.p2align 3
.L450:
	movb	%al, 503(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L467
	.p2align 4,,10
	.p2align 3
.L453:
	movb	%al, 503(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L469
	.p2align 4,,10
	.p2align 3
.L456:
	movb	%al, 503(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L441:
	movb	%al, 503(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L461
	.p2align 4,,10
	.p2align 3
.L411:
	movb	%al, 597(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L412
	.p2align 4,,10
	.p2align 3
.L407:
	movb	%al, 720(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L408
.L403:
	movb	%al, 739(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L404
.L399:
	movb	%al, 741(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L400
.L395:
	movb	%al, 740(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L396
.L391:
	movb	%al, 742(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L392
.L388:
	movb	%al, 743(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L430
	.cfi_endproc
.LFE66:
	.size	solveV, .-solveV
	.p2align 4,,15
	.globl	solve
	.type	solve, @function
solve:
.LFB65:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$936, %rsp
	.cfi_def_cfa_offset 992
	movq	%fs:40, %rax
	movq	%rax, 920(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	%rdi, 440(%rsp)
	je	.L474
	leaq	448(%rsp), %rdx
	movl	$1, 436(%rsp)
	movq	%rdx, %rbx
	movq	%rdx, 424(%rsp)
	addq	$20, %rbx
	.p2align 4,,10
	.p2align 3
.L481:
	movl	$50, %ecx
	movq	424(%rsp), %rdi
	movq	440(%rsp), %rsi
	rep movsq
	movq	440(%rsp), %rax
	movl	(%rax), %eax
	movl	(%rsi), %ecx
	testl	%eax, %eax
	movl	%ecx, (%rdi)
	jle	.L476
	movslq	436(%rsp), %rbp
	movzbl	5(%rbx), %r12d
	movzbl	436(%rsp), %r8d
	leaq	468(%rsp,%rbp), %rbp
	testb	%r12b, %r12b
	movb	%r8b, 864(%rsp)
	leaq	4(%rbp), %r13
	je	.L485
	leal	-1(%r12), %r14d
	movb	%r14b, 5(%rbx)
	movzbl	4(%rbp), %r14d
	testb	%r14b, %r14b
	je	.L486
	leal	-1(%r14), %edx
	movl	%eax, %r15d
	subl	$2, %eax
.L506:
	movb	%dl, 4(%rbp)
	movq	424(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 448(%rsp)
	movq	%rsp, %rdi
	rep movsq
	movl	(%rsi), %edx
	leaq	864(%rsp), %rsi
	movl	%edx, (%rdi)
	movl	$1, %edx
	movl	$1, %edi
	call	solveV
	movb	%r14b, 4(%rbp)
	movzbl	%r15b, %eax
	movb	%r12b, 5(%rbx)
.L485:
	movl	$1, %r12d
	addq	$20, %r13
	jmp	.L480
	.p2align 4,,10
	.p2align 3
.L517:
	leal	-1(%r14), %edx
	movl	%eax, %r15d
	subl	$2, %eax
.L479:
	movb	%dl, 0(%r13)
	movq	424(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 448(%rsp)
	movq	%rsp, %rdi
	leal	1(%r12), %r10d
	rep movsq
	movl	$1, %edx
	movl	(%rsi), %r11d
	leaq	864(%rsp), %rsi
	movl	%r11d, (%rdi)
	movl	%r10d, %edi
	call	solveV
	movb	%r14b, 0(%r13)
	movzbl	%r15b, %eax
	movb	%bpl, 5(%rbx,%r12)
.L477:
	addq	$1, %r12
	leaq	20(%r13), %rbp
	movzbl	5(%rbx,%r12), %r14d
	testb	%r14b, %r14b
	je	.L488
	leal	-1(%r14), %r15d
	movb	%r15b, 5(%rbx,%r12)
	movzbl	20(%r13), %r13d
	testb	%r13b, %r13b
	je	.L489
	leal	-1(%r13), %edx
	movl	%eax, %r15d
	subl	$2, %eax
.L508:
	movb	%dl, 0(%rbp)
	movq	424(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 448(%rsp)
	movq	%rsp, %rdi
	leal	1(%r12), %eax
	rep movsq
	movl	$1, %edx
	movl	(%rsi), %r8d
	leaq	864(%rsp), %rsi
	movl	%r8d, (%rdi)
	movl	%eax, %edi
	call	solveV
	movb	%r13b, 0(%rbp)
	movzbl	%r15b, %eax
	movb	%r14b, 5(%rbx,%r12)
.L488:
	leaq	1(%r12), %r13
	movzbl	5(%rbx,%r13), %r14d
	testb	%r14b, %r14b
	je	.L491
	leal	-1(%r14), %r9d
	movb	%r9b, 5(%rbx,%r13)
	movzbl	20(%rbp), %r15d
	testb	%r15b, %r15b
	je	.L492
	leal	-1(%r15), %edx
	movb	%al, 435(%rsp)
	subl	$2, %eax
.L510:
	movb	%dl, 20(%rbp)
	movq	424(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 448(%rsp)
	movq	%rsp, %rdi
	leal	1(%r13), %r10d
	rep movsq
	movl	$1, %edx
	movl	(%rsi), %r11d
	leaq	864(%rsp), %rsi
	movl	%r11d, (%rdi)
	movl	%r10d, %edi
	call	solveV
	movzbl	435(%rsp), %eax
	movb	%r15b, 20(%rbp)
	movb	%r14b, 5(%rbx,%r13)
.L491:
	leaq	2(%r12), %r13
	movzbl	5(%rbx,%r13), %r14d
	testb	%r14b, %r14b
	je	.L494
	leal	-1(%r14), %edx
	movb	%dl, 5(%rbx,%r13)
	movzbl	40(%rbp), %r15d
	testb	%r15b, %r15b
	je	.L495
	leal	-1(%r15), %edx
	movb	%al, 435(%rsp)
	subl	$2, %eax
.L512:
	movb	%dl, 40(%rbp)
	movq	424(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 448(%rsp)
	movq	%rsp, %rdi
	leal	1(%r13), %eax
	rep movsq
	movl	$1, %edx
	movl	(%rsi), %r8d
	leaq	864(%rsp), %rsi
	movl	%r8d, (%rdi)
	movl	%eax, %edi
	call	solveV
	movzbl	435(%rsp), %eax
	movb	%r15b, 40(%rbp)
	movb	%r14b, 5(%rbx,%r13)
.L494:
	leaq	3(%r12), %r13
	movzbl	5(%rbx,%r13), %r14d
	testb	%r14b, %r14b
	je	.L497
	leal	-1(%r14), %r15d
	movb	%r15b, 5(%rbx,%r13)
	movzbl	60(%rbp), %r15d
	testb	%r15b, %r15b
	je	.L498
	leal	-1(%r15), %edx
	movb	%al, 435(%rsp)
	subl	$2, %eax
.L514:
	movb	%dl, 60(%rbp)
	movq	424(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 448(%rsp)
	movq	%rsp, %rdi
	leal	1(%r13), %r9d
	rep movsq
	movl	$1, %edx
	movl	(%rsi), %r10d
	leaq	864(%rsp), %rsi
	movl	%r10d, (%rdi)
	movl	%r9d, %edi
	call	solveV
	movzbl	435(%rsp), %eax
	movb	%r15b, 60(%rbp)
	movb	%r14b, 5(%rbx,%r13)
.L497:
	leaq	4(%r12), %r13
	movzbl	5(%rbx,%r13), %r14d
	testb	%r14b, %r14b
	je	.L500
	leal	-1(%r14), %r11d
	movb	%r11b, 5(%rbx,%r13)
	movzbl	80(%rbp), %r15d
	testb	%r15b, %r15b
	je	.L501
	leal	-1(%r15), %edx
	movb	%al, 435(%rsp)
	subl	$2, %eax
.L516:
	movb	%dl, 80(%rbp)
	movq	424(%rsp), %rsi
	movl	$50, %ecx
	movl	%eax, 448(%rsp)
	movq	%rsp, %rdi
	leal	1(%r13), %eax
	rep movsq
	movl	(%rsi), %edx
	leaq	864(%rsp), %rsi
	movl	%edx, (%rdi)
	movl	%eax, %edi
	movl	$1, %edx
	call	solveV
	movzbl	435(%rsp), %eax
	movb	%r15b, 80(%rbp)
	movb	%r14b, 5(%rbx,%r13)
.L500:
	addq	$5, %r12
	leaq	100(%rbp), %r13
	cmpq	$19, %r12
	je	.L476
.L480:
	movzbl	5(%rbx,%r12), %ebp
	testb	%bpl, %bpl
	je	.L477
	leal	-1(%rbp), %r9d
	movb	%r9b, 5(%rbx,%r12)
	movzbl	0(%r13), %r14d
	testb	%r14b, %r14b
	jne	.L517
	movl	%eax, %r15d
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L476:
	addl	$1, 436(%rsp)
	addq	$20, %rbx
	cmpl	$20, 436(%rsp)
	jne	.L481
.L474:
	movq	920(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L518
	addq	$936, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L501:
	.cfi_restore_state
	movb	%al, 435(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L516
	.p2align 4,,10
	.p2align 3
.L489:
	movl	%eax, %r15d
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L492:
	movb	%al, 435(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L510
	.p2align 4,,10
	.p2align 3
.L495:
	movb	%al, 435(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L512
	.p2align 4,,10
	.p2align 3
.L498:
	movb	%al, 435(%rsp)
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L514
	.p2align 4,,10
	.p2align 3
.L486:
	movl	%eax, %r15d
	xorl	%edx, %edx
	subl	$1, %eax
	jmp	.L506
.L518:
	call	__stack_chk_fail
	.cfi_endproc
.LFE65:
	.size	solve, .-solve
	.section	.rodata.str1.1
.LC12:
	.string	"%i "
.LC13:
	.string	"%i\n"
	.text
	.p2align 4,,15
	.globl	print_vResult
	.type	print_vResult, @function
print_vResult:
.LFB67:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	testl	%edx, %edx
	movl	%edi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%edx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	jle	.L520
	movzbl	(%rsi), %edx
	leal	-1(%r13), %r12d
	xorl	%eax, %eax
	movl	$.LC12, %esi
	movl	$1, %edi
	movl	$1, %ebx
	andl	$7, %r12d
	call	__printf_chk
	cmpl	$1, %r13d
	jle	.L520
	testl	%r12d, %r12d
	je	.L521
	cmpl	$1, %r12d
	je	.L546
	cmpl	$2, %r12d
	je	.L547
	cmpl	$3, %r12d
	je	.L548
	cmpl	$4, %r12d
	je	.L549
	cmpl	$5, %r12d
	je	.L550
	cmpl	$6, %r12d
	je	.L551
	movzbl	1(%rbp), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	movl	$2, %ebx
	call	__printf_chk
.L551:
	movzbl	0(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk
.L550:
	movzbl	0(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk
.L549:
	movzbl	0(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk
.L548:
	movzbl	0(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk
.L547:
	movzbl	0(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk
.L546:
	movzbl	0(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC12, %esi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk
	cmpl	%ebx, %r13d
	jle	.L520
.L521:
	movzbl	0(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	1(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	2(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	3(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	4(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	5(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	6(%rbp,%rbx), %edx
	movl	$.LC12, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movzbl	7(%rbp,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC12, %esi
	movl	$1, %edi
	addq	$8, %rbx
	call	__printf_chk
	cmpl	%ebx, %r13d
	jg	.L521
.L520:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	movzbl	%r14b, %edx
	movl	$.LC13, %esi
	movl	$1, %edi
	popq	%r14
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	jmp	__printf_chk
	.cfi_endproc
.LFE67:
	.size	print_vResult, .-print_vResult
	.p2align 4,,15
	.globl	solve3
	.type	solve3, @function
solve3:
.LFB76:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L878
	movl	$176, %esi
	movl	$1, %edi
	movq	%rbp, %r12
	call	calloc
	leaq	8(%rax), %r13
	leaq	168(%rax), %r15
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L880:
	xorl	%eax, %eax
	xorl	%edi, %edi
.L883:
	cmpb	$0, 4(%r12,%rax)
	leal	1(%rdi), %edx
	cmove	%edi, %edx
	cmpb	$0, 5(%r12,%rax)
	leal	1(%rdx), %r11d
	cmove	%edx, %r11d
	cmpb	$0, 6(%r12,%rax)
	leal	1(%r11), %r10d
	cmove	%r11d, %r10d
	cmpb	$0, 7(%r12,%rax)
	leal	1(%r10), %r9d
	cmove	%r10d, %r9d
	cmpb	$0, 8(%r12,%rax)
	leal	1(%r9), %r8d
	cmove	%r9d, %r8d
	cmpb	$0, 9(%r12,%rax)
	leal	1(%r8), %edi
	cmove	%r8d, %edi
	cmpb	$0, 10(%r12,%rax)
	leal	1(%rdi), %esi
	cmove	%edi, %esi
	cmpb	$0, 11(%r12,%rax)
	leal	1(%rsi), %ecx
	cmove	%esi, %ecx
	cmpb	$0, 12(%r12,%rax)
	leal	1(%rcx), %edx
	cmove	%ecx, %edx
	cmpb	$0, 13(%r12,%rax)
	leal	1(%rdx), %edi
	cmove	%edx, %edi
	addq	$10, %rax
	cmpq	$20, %rax
	jne	.L883
	testl	%edi, %edi
	je	.L884
	addl	$1, %edi
	movl	$1, %esi
	addl	$1, 4(%rbx)
	movslq	%edi, %rdi
	call	calloc
	xorl	%ecx, %ecx
	movq	%rax, 0(%r13)
	xorl	%edx, %edx
.L886:
	cmpb	$0, 4(%r12,%rcx)
	je	.L885
	movslq	%edx, %rsi
	addl	$1, %edx
	movb	%cl, (%rax,%rsi)
.L885:
	addq	$1, %rcx
	cmpb	$0, 4(%r12,%rcx)
	je	.L922
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%cl, (%rax,%rdi)
.L922:
	cmpb	$0, 5(%rcx,%r12)
	leaq	1(%rcx), %rsi
	je	.L924
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L924:
	cmpb	$0, 6(%rcx,%r12)
	leaq	2(%rcx), %rsi
	je	.L926
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L926:
	cmpb	$0, 7(%rcx,%r12)
	leaq	3(%rcx), %rsi
	je	.L928
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L928:
	cmpb	$0, 8(%rcx,%r12)
	leaq	4(%rcx), %rsi
	je	.L930
	movslq	%edx, %r11
	addl	$1, %edx
	movb	%sil, (%rax,%r11)
.L930:
	cmpb	$0, 9(%rcx,%r12)
	leaq	5(%rcx), %rsi
	je	.L932
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%sil, (%rax,%rdi)
.L932:
	cmpb	$0, 10(%rcx,%r12)
	leaq	6(%rcx), %rsi
	je	.L934
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L934:
	cmpb	$0, 11(%rcx,%r12)
	leaq	7(%rcx), %rsi
	je	.L936
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L936:
	cmpb	$0, 12(%rcx,%r12)
	leaq	8(%rcx), %rsi
	je	.L938
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L938:
	addq	$9, %rcx
	cmpq	$20, %rcx
	jne	.L886
	.p2align 4,,10
	.p2align 3
.L884:
	addq	$8, %r13
	addq	$21, %r12
	cmpq	%r15, %r13
	jne	.L880
	testq	%rbx, %rbx
	je	.L878
	leaq	16(%rbx), %r12
	cmpq	$0, (%r12)
	je	.L895
	movl	0(%rbp), %eax
	movb	$1, 16(%rsp)
	testl	%eax, %eax
	je	.L952
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L895:
	movl	$2, %eax
	leaq	8(%r12), %r15
	jmp	.L890
	.p2align 4,,10
	.p2align 3
.L889:
	leaq	16(%rsp), %rcx
	movl	%eax, %edx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movl	%eax, 8(%rsp)
	call	solveV3.part.11
	movl	8(%rsp), %eax
.L888:
	cmpq	$0, 8(%r15)
	leal	1(%rax), %r12d
	leaq	8(%r15), %r13
	je	.L898
	movl	0(%rbp), %r15d
	movb	%r12b, 16(%rsp)
	testl	%r15d, %r15d
	je	.L953
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L898:
	cmpq	$0, 8(%r13)
	leal	1(%r12), %edx
	je	.L901
	movl	0(%rbp), %ecx
	movb	%dl, 16(%rsp)
	testl	%ecx, %ecx
	je	.L954
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L901:
	cmpq	$0, 16(%r13)
	leal	2(%r12), %edx
	je	.L904
	movl	0(%rbp), %edi
	movb	%dl, 16(%rsp)
	testl	%edi, %edi
	je	.L955
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L904:
	cmpq	$0, 24(%r13)
	leal	3(%r12), %edx
	je	.L907
	movl	0(%rbp), %r8d
	movb	%dl, 16(%rsp)
	testl	%r8d, %r8d
	je	.L956
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L907:
	cmpq	$0, 32(%r13)
	leal	4(%r12), %edx
	je	.L910
	movl	0(%rbp), %r9d
	movb	%dl, 16(%rsp)
	testl	%r9d, %r9d
	je	.L957
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L910:
	cmpq	$0, 40(%r13)
	leal	5(%r12), %edx
	je	.L913
	movl	0(%rbp), %r10d
	movb	%dl, 16(%rsp)
	testl	%r10d, %r10d
	je	.L958
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L913:
	cmpq	$0, 48(%r13)
	leal	6(%r12), %edx
	je	.L916
	movl	0(%rbp), %r11d
	movb	%dl, 16(%rsp)
	testl	%r11d, %r11d
	je	.L959
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L916:
	cmpq	$0, 56(%r13)
	leal	7(%r12), %edx
	je	.L919
	movl	0(%rbp), %esi
	movb	%dl, 16(%rsp)
	testl	%esi, %esi
	je	.L960
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.11
.L919:
	leal	8(%r12), %eax
	leaq	64(%r13), %r15
	cmpl	$20, %eax
	je	.L878
.L890:
	cmpq	$0, (%r15)
	je	.L888
	movl	0(%rbp), %r12d
	movb	%al, 16(%rsp)
	testl	%r12d, %r12d
	jne	.L889
	addl	$1, (%r14)
	jmp	.L888
	.p2align 4,,10
	.p2align 3
.L878:
	movq	72(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L961
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L952:
	.cfi_restore_state
	addl	$1, (%r14)
	jmp	.L895
	.p2align 4,,10
	.p2align 3
.L960:
	addl	$1, (%r14)
	jmp	.L919
	.p2align 4,,10
	.p2align 3
.L959:
	addl	$1, (%r14)
	jmp	.L916
	.p2align 4,,10
	.p2align 3
.L958:
	addl	$1, (%r14)
	jmp	.L913
	.p2align 4,,10
	.p2align 3
.L957:
	addl	$1, (%r14)
	jmp	.L910
	.p2align 4,,10
	.p2align 3
.L956:
	addl	$1, (%r14)
	jmp	.L907
	.p2align 4,,10
	.p2align 3
.L955:
	addl	$1, (%r14)
	jmp	.L904
	.p2align 4,,10
	.p2align 3
.L954:
	addl	$1, (%r14)
	jmp	.L901
	.p2align 4,,10
	.p2align 3
.L953:
	addl	$1, (%r14)
	jmp	.L898
.L961:
	call	__stack_chk_fail
	.cfi_endproc
.LFE76:
	.size	solve3, .-solve3
	.p2align 4,,15
	.globl	solveV3
	.type	solveV3, @function
solveV3:
.LFB77:
	.cfi_startproc
	movslq	%r8d, %rax
	movb	%dl, (%rcx,%rax)
	movl	(%rdi), %r11d
	testl	%r11d, %r11d
	je	.L965
	movzbl	%dl, %edx
	jmp	solveV3.part.11
	.p2align 4,,10
	.p2align 3
.L965:
	addl	$1, (%r9)
	ret
	.cfi_endproc
.LFE77:
	.size	solveV3, .-solveV3
	.p2align 4,,15
	.globl	solve4
	.type	solve4, @function
solve4:
.LFB78:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L966
	movl	$176, %esi
	movl	$1, %edi
	movq	%r15, %rbp
	call	calloc
	leaq	8(%rax), %r12
	leaq	168(%rax), %r14
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L968:
	xorl	%eax, %eax
	xorl	%edi, %edi
.L971:
	cmpb	$0, 4(%rbp,%rax)
	leal	1(%rdi), %edx
	cmove	%edi, %edx
	cmpb	$0, 5(%rbp,%rax)
	leal	1(%rdx), %r11d
	cmove	%edx, %r11d
	cmpb	$0, 6(%rbp,%rax)
	leal	1(%r11), %r10d
	cmove	%r11d, %r10d
	cmpb	$0, 7(%rbp,%rax)
	leal	1(%r10), %r9d
	cmove	%r10d, %r9d
	cmpb	$0, 8(%rbp,%rax)
	leal	1(%r9), %r8d
	cmove	%r9d, %r8d
	cmpb	$0, 9(%rbp,%rax)
	leal	1(%r8), %edi
	cmove	%r8d, %edi
	cmpb	$0, 10(%rbp,%rax)
	leal	1(%rdi), %esi
	cmove	%edi, %esi
	cmpb	$0, 11(%rbp,%rax)
	leal	1(%rsi), %ecx
	cmove	%esi, %ecx
	cmpb	$0, 12(%rbp,%rax)
	leal	1(%rcx), %edx
	cmove	%ecx, %edx
	cmpb	$0, 13(%rbp,%rax)
	leal	1(%rdx), %edi
	cmove	%edx, %edi
	addq	$10, %rax
	cmpq	$20, %rax
	jne	.L971
	testl	%edi, %edi
	je	.L972
	addl	$1, %edi
	movl	$1, %esi
	addl	$1, 4(%r13)
	movslq	%edi, %rdi
	call	calloc
	xorl	%ecx, %ecx
	movq	%rax, (%r12)
	xorl	%edx, %edx
.L974:
	cmpb	$0, 4(%rbp,%rcx)
	je	.L973
	movslq	%edx, %rsi
	addl	$1, %edx
	movb	%cl, (%rax,%rsi)
.L973:
	addq	$1, %rcx
	cmpb	$0, 4(%rbp,%rcx)
	je	.L979
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%cl, (%rax,%rdi)
.L979:
	cmpb	$0, 5(%rcx,%rbp)
	leaq	1(%rcx), %rsi
	je	.L981
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L981:
	cmpb	$0, 6(%rcx,%rbp)
	leaq	2(%rcx), %rsi
	je	.L983
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L983:
	cmpb	$0, 7(%rcx,%rbp)
	leaq	3(%rcx), %rsi
	je	.L985
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L985:
	cmpb	$0, 8(%rcx,%rbp)
	leaq	4(%rcx), %rsi
	je	.L987
	movslq	%edx, %r11
	addl	$1, %edx
	movb	%sil, (%rax,%r11)
.L987:
	cmpb	$0, 9(%rcx,%rbp)
	leaq	5(%rcx), %rsi
	je	.L989
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%sil, (%rax,%rdi)
.L989:
	cmpb	$0, 10(%rcx,%rbp)
	leaq	6(%rcx), %rsi
	je	.L991
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L991:
	cmpb	$0, 11(%rcx,%rbp)
	leaq	7(%rcx), %rsi
	je	.L993
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L993:
	cmpb	$0, 12(%rcx,%rbp)
	leaq	8(%rcx), %rsi
	je	.L995
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L995:
	addq	$9, %rcx
	cmpq	$20, %rcx
	jne	.L974
	.p2align 4,,10
	.p2align 3
.L972:
	addq	$8, %r12
	addq	$21, %rbp
	cmpq	%r14, %r12
	jne	.L968
	testq	%r13, %r13
	je	.L966
	leaq	112(%rsp), %rsi
	leaq	144(%rsp), %r12
	leaq	32(%rsp), %rbp
	movl	$1, %r9d
	movl	$20, %r8d
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	$solve4._omp_fn.6, %edi
	movl	$0, 32(%rsp)
	movq	%r15, 112(%rsp)
	movq	%r13, 120(%rsp)
	movq	%r12, 128(%rsp)
	movq	%rbp, 136(%rsp)
	movq	$1, (%rsp)
	call	GOMP_parallel_loop_dynamic_start
	leaq	112(%rsp), %rdi
	call	solve4._omp_fn.6
	call	GOMP_parallel_end
	movdqa	32(%rsp), %xmm0
	paddd	48(%rsp), %xmm0
	paddd	64(%rsp), %xmm0
	paddd	80(%rsp), %xmm0
	paddd	96(%rsp), %xmm0
	movdqa	%xmm0, %xmm2
	psrldq	$8, %xmm2
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, 28(%rsp)
	movl	28(%rsp), %eax
	addl	%eax, (%rbx)
.L966:
	movq	200(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L1007
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1007:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE78:
	.size	solve4, .-solve4
	.p2align 4,,15
	.globl	dmatrix_dup
	.type	dmatrix_dup, @function
dmatrix_dup:
.LFB81:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$24, %esi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	movl	$1, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	calloc
	movl	4(%r13), %r15d
	movl	0(%r13), %edx
	movq	%rax, %rbx
	movl	8(%r13), %ebp
	movl	$8, %esi
	movl	%edx, (%rax)
	movl	%r15d, 4(%rax)
	leal	1(%r15), %edi
	movl	%ebp, 8(%rax)
	movl	12(%r13), %eax
	movslq	%edi, %rdi
	movl	%eax, 12(%rbx)
	call	calloc
	testl	%r15d, %r15d
	movq	%rax, %rdx
	movq	%rax, 16(%rbx)
	jle	.L1081
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L1084:
	leal	1(%rbp), %esi
	movq	%rdx, 8(%rsp)
	leaq	0(,%r14,8), %r12
	movslq	%esi, %rdi
	movl	$1, %esi
	call	calloc
	movq	8(%rsp), %rcx
	testl	%ebp, %ebp
	movq	%rax, (%rcx,%r14,8)
	jle	.L1082
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1083:
	movq	16(%r13), %r15
	movq	16(%rbx), %r10
	leal	1(%rax), %r8d
	movq	(%r15,%r12), %r11
	movq	(%r10,%r12), %rbp
	movzbl	(%r11,%rax), %r9d
	movb	%r9b, 0(%rbp,%rax)
	movl	8(%rbx), %ebp
	addq	$1, %rax
	cmpl	%ebp, %r8d
	jl	.L1083
	movl	4(%rbx), %r15d
.L1082:
	leal	1(%r14), %r12d
	addq	$1, %r14
	cmpl	%r15d, %r12d
	jge	.L1081
	movq	16(%rbx), %rdx
	jmp	.L1084
.L1081:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:
	.size	dmatrix_dup, .-dmatrix_dup
	.p2align 4,,15
#	.size	solveV900, .-solveV900
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
