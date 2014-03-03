	.file	"puzzler.c"
	.text
	.p2align 4,,15
	.type	solveV3.part.1, @function
solveV3.part.1:
.LFB62:
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
	je	.L1
	movzbl	(%rsi), %ecx
	testb	%cl, %cl
	je	.L1
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
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L12:
	leal	-1(%r14), %r9d
	subl	$2, %edi
	movl	%edi, 0(%rbp)
	movb	%r9b, 4(%rsi)
.L5:
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	movb	%cl, (%rdi,%rsi)
	movl	0(%rbp), %ecx
	testl	%ecx, %ecx
	je	.L11
	movq	40(%rsp), %r9
	movl	60(%rsp), %r8d
	movq	%rdi, %rcx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	movq	%rax, 8(%rsp)
	movb	%r10b, 24(%rsp)
	movq	%r11, 16(%rsp)
	call	solveV3.part.1
	movzbl	24(%rsp), %r10d
	movq	16(%rsp), %r11
	movq	8(%rsp), %rax
.L7:
	leaq	(%rbx,%rbx,4), %r8
	movzbl	%r10b, %r10d
	movl	%r10d, 0(%rbp)
	leaq	(%rbx,%r8,4), %rdi
	addq	%r15, %rbx
	addq	%rax, %rdi
	movb	%r14b, 4(%rbp,%rdi)
	movb	%r12b, 4(%rbp,%rbx)
	movq	8(%r11,%rax,8), %rsi
.L3:
	testq	%rsi, %rsi
	je	.L1
	movzbl	(%rsi,%r13), %ecx
	addq	$1, %r13
	testb	%cl, %cl
	je	.L1
.L8:
	movzbl	%cl, %edx
	movslq	%edx, %rbx
	leaq	(%r15,%rbx), %rdi
	addq	%rbp, %rdi
	movzbl	4(%rdi), %r12d
	testb	%r12b, %r12b
	je	.L3
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
	jne	.L12
	subl	$1, %edi
	movb	$0, 4(%rsi)
	movl	%edi, 0(%rbp)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L11:
	movq	40(%rsp), %rdx
	addl	$1, (%rdx)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L1:
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
.LFE62:
	.size	solveV3.part.1, .-solveV3.part.1
	.p2align 4,,15
	.type	solve4._omp_fn.0, @function
solve4._omp_fn.0:
.LFB61:
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
	je	.L14
	movq	%rsp, %r14
	.p2align 4,,10
	.p2align 3
.L22:
	movl	448(%rsp), %ebp
	movl	464(%rsp), %r15d
	movl	%ebp, %eax
	movslq	%ebp, %r12
	notl	%eax
	movq	%r12, %r13
	addl	%r15d, %eax
	testb	$1, %al
	je	.L16
	movq	8(%rbx), %rax
	movq	24(%rbx), %r8
	cmpq	$0, 8(%rax,%r12,8)
	movl	$0, (%r8,%r12,4)
	je	.L34
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movl	$56, %ecx
	rep movsq
	movq	16(%rbx), %r11
	movq	(%r11), %r13
	movq	%r13, 480(%rsp)
	movq	8(%r11), %rdi
	movl	(%rsp), %r13d
	movq	%rdi, 488(%rsp)
	movq	16(%r11), %rsi
	testl	%r13d, %r13d
	movq	%rsi, 496(%rsp)
	movq	24(%r11), %rcx
	movq	%rcx, 504(%rsp)
	movq	32(%r11), %r9
	movq	%r9, 512(%rsp)
	movq	40(%r11), %rdx
	movq	%rdx, 520(%rsp)
	movzwl	48(%r11), %r10d
	movb	%bpl, 480(%rsp)
	movw	%r10w, 528(%rsp)
	je	.L35
	leaq	(%r8,%r12,4), %r9
	leaq	480(%rsp), %rcx
	movzbl	%bpl, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	movq	%rsp, %rdi
	call	solveV3.part.1
.L34:
	addl	$1, %ebp
	leaq	1(%r12), %r13
	cmpl	%ebp, %r15d
	movslq	%ebp, %r12
	jg	.L16
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L18:
	leaq	(%r8,%r13,4), %r9
	leaq	480(%rsp), %rcx
	movzbl	%bpl, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	movq	%rsp, %rdi
	call	solveV3.part.1
.L19:
	addl	$1, %ebp
	addq	$1, %r13
	cmpl	%ebp, %r15d
	jle	.L32
.L37:
	movq	8(%rbx), %rax
	movslq	%ebp, %rdx
	movq	24(%rbx), %r8
	cmpq	$0, 8(%rax,%rdx,8)
	movl	$0, (%r8,%rdx,4)
	je	.L33
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movl	$56, %ecx
	rep movsq
	movq	16(%rbx), %r11
	movq	(%r11), %r12
	movq	%r12, 480(%rsp)
	movq	8(%r11), %rdi
	movl	(%rsp), %r12d
	movq	%rdi, 488(%rsp)
	movq	16(%r11), %rsi
	testl	%r12d, %r12d
	movq	%rsi, 496(%rsp)
	movq	24(%r11), %rcx
	movq	%rcx, 504(%rsp)
	movq	32(%r11), %r9
	movq	%r9, 512(%rsp)
	movq	40(%r11), %rdx
	movq	%rdx, 520(%rsp)
	movzwl	48(%r11), %r10d
	movb	%bpl, 480(%rsp)
	movw	%r10w, 528(%rsp)
	je	.L36
	leaq	(%r8,%r13,4), %r9
	leaq	480(%rsp), %rcx
	movzbl	%bpl, %edx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	movq	%rsp, %rdi
	call	solveV3.part.1
.L33:
	addl	$1, %ebp
	addq	$1, %r13
	movslq	%ebp, %r12
.L16:
	movq	8(%rbx), %rax
	movq	24(%rbx), %r8
	cmpq	$0, 8(%rax,%r12,8)
	movl	$0, (%r8,%r12,4)
	je	.L19
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movl	$56, %ecx
	rep movsq
	movq	16(%rbx), %rsi
	movq	(%rsi), %r9
	movq	%r9, 480(%rsp)
	movq	8(%rsi), %rdx
	movl	(%rsp), %r9d
	movq	%rdx, 488(%rsp)
	movq	16(%rsi), %r12
	testl	%r9d, %r9d
	movq	%r12, 496(%rsp)
	movq	24(%rsi), %r11
	movq	%r11, 504(%rsp)
	movq	32(%rsi), %r10
	movq	%r10, 512(%rsp)
	movq	40(%rsi), %rdi
	movq	%rdi, 520(%rsp)
	movzwl	48(%rsi), %ecx
	movb	%bpl, 480(%rsp)
	movw	%cx, 528(%rsp)
	jne	.L18
	addl	$1, %ebp
	addl	$1, (%r8,%r13,4)
	addq	$1, %r13
	cmpl	%ebp, %r15d
	jg	.L37
.L32:
	leaq	464(%rsp), %rsi
	leaq	448(%rsp), %rdi
	call	GOMP_loop_dynamic_next
	testb	%al, %al
	jne	.L22
.L14:
	call	GOMP_loop_end_nowait
	movq	536(%rsp), %rax
	xorq	%fs:40, %rax
	.p2align 4,,4
	jne	.L38
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
.L36:
	.cfi_restore_state
	addl	$1, (%r8,%r13,4)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L35:
	addl	$1, (%r8,%r12,4)
	jmp	.L34
.L38:
	call	__stack_chk_fail
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
	je	.L40
	.p2align 4,,10
	.p2align 3
.L45:
	movl	$.LC0, %esi
	call	strtok
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L48
	xorl	%edi, %edi
	movl	$.LC2, %esi
	call	strtok
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L49
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
	jg	.L46
	cmpl	$20, %r13d
	jg	.L46
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
	jne	.L45
.L40:
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
.L48:
	.cfi_restore_state
	movl	$.LC1, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
.L46:
	movl	$.LC4, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
.L49:
	movl	$.LC3, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
	.cfi_endproc
.LFE56:
	.size	edges2Matrix, .-edges2Matrix
	.p2align 4,,15
	.globl	create_companion
	.type	create_companion, @function
create_companion:
.LFB57:
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
.L51:
	xorl	%eax, %eax
	xorl	%edi, %edi
.L54:
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
	jne	.L54
	testl	%edi, %edi
	je	.L55
	addl	$1, %edi
	movl	$1, %esi
	addl	$1, 4(%r12)
	movslq	%edi, %rdi
	call	calloc
	xorl	%ecx, %ecx
	movq	%rax, 0(%rbp)
	xorl	%edx, %edx
.L57:
	cmpb	$0, 4(%rbx,%rcx)
	je	.L56
	movslq	%edx, %rsi
	addl	$1, %edx
	movb	%cl, (%rax,%rsi)
.L56:
	addq	$1, %rcx
	cmpb	$0, 4(%rbx,%rcx)
	je	.L61
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%cl, (%rax,%rdi)
.L61:
	cmpb	$0, 5(%rcx,%rbx)
	leaq	1(%rcx), %rsi
	je	.L63
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L63:
	cmpb	$0, 6(%rcx,%rbx)
	leaq	2(%rcx), %rsi
	je	.L65
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L65:
	cmpb	$0, 7(%rcx,%rbx)
	leaq	3(%rcx), %rsi
	je	.L67
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L67:
	cmpb	$0, 8(%rcx,%rbx)
	leaq	4(%rcx), %rsi
	je	.L69
	movslq	%edx, %r11
	addl	$1, %edx
	movb	%sil, (%rax,%r11)
.L69:
	cmpb	$0, 9(%rcx,%rbx)
	leaq	5(%rcx), %rsi
	je	.L71
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%sil, (%rax,%rdi)
.L71:
	cmpb	$0, 10(%rcx,%rbx)
	leaq	6(%rcx), %rsi
	je	.L73
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L73:
	cmpb	$0, 11(%rcx,%rbx)
	leaq	7(%rcx), %rsi
	je	.L75
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L75:
	cmpb	$0, 12(%rcx,%rbx)
	leaq	8(%rcx), %rsi
	je	.L77
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L77:
	addq	$9, %rcx
	cmpq	$20, %rcx
	jne	.L57
	.p2align 4,,10
	.p2align 3
.L55:
	addq	$8, %rbp
	addq	$21, %rbx
	cmpq	%r13, %rbp
	jne	.L51
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
.LFE57:
	.size	create_companion, .-create_companion
	.p2align 4,,15
	.globl	solve3
	.type	solve3, @function
solve3:
.LFB58:
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
	je	.L89
	movl	$176, %esi
	movl	$1, %edi
	movq	%rbp, %r12
	call	calloc
	leaq	8(%rax), %r13
	leaq	168(%rax), %r15
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L91:
	xorl	%eax, %eax
	xorl	%edi, %edi
.L94:
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
	jne	.L94
	testl	%edi, %edi
	je	.L95
	addl	$1, %edi
	movl	$1, %esi
	addl	$1, 4(%rbx)
	movslq	%edi, %rdi
	call	calloc
	xorl	%ecx, %ecx
	movq	%rax, 0(%r13)
	xorl	%edx, %edx
.L97:
	cmpb	$0, 4(%r12,%rcx)
	je	.L96
	movslq	%edx, %rsi
	addl	$1, %edx
	movb	%cl, (%rax,%rsi)
.L96:
	addq	$1, %rcx
	cmpb	$0, 4(%r12,%rcx)
	je	.L133
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%cl, (%rax,%rdi)
.L133:
	cmpb	$0, 5(%rcx,%r12)
	leaq	1(%rcx), %rsi
	je	.L135
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L135:
	cmpb	$0, 6(%rcx,%r12)
	leaq	2(%rcx), %rsi
	je	.L137
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L137:
	cmpb	$0, 7(%rcx,%r12)
	leaq	3(%rcx), %rsi
	je	.L139
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L139:
	cmpb	$0, 8(%rcx,%r12)
	leaq	4(%rcx), %rsi
	je	.L141
	movslq	%edx, %r11
	addl	$1, %edx
	movb	%sil, (%rax,%r11)
.L141:
	cmpb	$0, 9(%rcx,%r12)
	leaq	5(%rcx), %rsi
	je	.L143
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%sil, (%rax,%rdi)
.L143:
	cmpb	$0, 10(%rcx,%r12)
	leaq	6(%rcx), %rsi
	je	.L145
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L145:
	cmpb	$0, 11(%rcx,%r12)
	leaq	7(%rcx), %rsi
	je	.L147
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L147:
	cmpb	$0, 12(%rcx,%r12)
	leaq	8(%rcx), %rsi
	je	.L149
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L149:
	addq	$9, %rcx
	cmpq	$20, %rcx
	jne	.L97
	.p2align 4,,10
	.p2align 3
.L95:
	addq	$8, %r13
	addq	$21, %r12
	cmpq	%r15, %r13
	jne	.L91
	testq	%rbx, %rbx
	je	.L89
	leaq	16(%rbx), %r12
	cmpq	$0, (%r12)
	je	.L106
	movl	0(%rbp), %eax
	movb	$1, 16(%rsp)
	testl	%eax, %eax
	je	.L163
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L106:
	movl	$2, %eax
	leaq	8(%r12), %r15
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L100:
	leaq	16(%rsp), %rcx
	movl	%eax, %edx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movl	%eax, 8(%rsp)
	call	solveV3.part.1
	movl	8(%rsp), %eax
.L99:
	cmpq	$0, 8(%r15)
	leal	1(%rax), %r12d
	leaq	8(%r15), %r13
	je	.L109
	movl	0(%rbp), %r15d
	movb	%r12b, 16(%rsp)
	testl	%r15d, %r15d
	je	.L164
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L109:
	cmpq	$0, 8(%r13)
	leal	1(%r12), %edx
	je	.L112
	movl	0(%rbp), %ecx
	movb	%dl, 16(%rsp)
	testl	%ecx, %ecx
	je	.L165
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L112:
	cmpq	$0, 16(%r13)
	leal	2(%r12), %edx
	je	.L115
	movl	0(%rbp), %edi
	movb	%dl, 16(%rsp)
	testl	%edi, %edi
	je	.L166
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L115:
	cmpq	$0, 24(%r13)
	leal	3(%r12), %edx
	je	.L118
	movl	0(%rbp), %r8d
	movb	%dl, 16(%rsp)
	testl	%r8d, %r8d
	je	.L167
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L118:
	cmpq	$0, 32(%r13)
	leal	4(%r12), %edx
	je	.L121
	movl	0(%rbp), %r9d
	movb	%dl, 16(%rsp)
	testl	%r9d, %r9d
	je	.L168
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L121:
	cmpq	$0, 40(%r13)
	leal	5(%r12), %edx
	je	.L124
	movl	0(%rbp), %r10d
	movb	%dl, 16(%rsp)
	testl	%r10d, %r10d
	je	.L169
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L124:
	cmpq	$0, 48(%r13)
	leal	6(%r12), %edx
	je	.L127
	movl	0(%rbp), %r11d
	movb	%dl, 16(%rsp)
	testl	%r11d, %r11d
	je	.L170
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L127:
	cmpq	$0, 56(%r13)
	leal	7(%r12), %edx
	je	.L130
	movl	0(%rbp), %esi
	movb	%dl, 16(%rsp)
	testl	%esi, %esi
	je	.L171
	leaq	16(%rsp), %rcx
	movq	%r14, %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	solveV3.part.1
.L130:
	leal	8(%r12), %eax
	leaq	64(%r13), %r15
	cmpl	$20, %eax
	je	.L89
.L101:
	cmpq	$0, (%r15)
	je	.L99
	movl	0(%rbp), %r12d
	movb	%al, 16(%rsp)
	testl	%r12d, %r12d
	jne	.L100
	addl	$1, (%r14)
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L89:
	movq	72(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L172
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
.L163:
	.cfi_restore_state
	addl	$1, (%r14)
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L171:
	addl	$1, (%r14)
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L170:
	addl	$1, (%r14)
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L169:
	addl	$1, (%r14)
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L168:
	addl	$1, (%r14)
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L167:
	addl	$1, (%r14)
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L166:
	addl	$1, (%r14)
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L165:
	addl	$1, (%r14)
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L164:
	addl	$1, (%r14)
	jmp	.L109
.L172:
	call	__stack_chk_fail
	.cfi_endproc
.LFE58:
	.size	solve3, .-solve3
	.p2align 4,,15
	.globl	solveV3
	.type	solveV3, @function
solveV3:
.LFB59:
	.cfi_startproc
	movslq	%r8d, %rax
	movb	%dl, (%rcx,%rax)
	movl	(%rdi), %r11d
	testl	%r11d, %r11d
	je	.L176
	movzbl	%dl, %edx
	jmp	solveV3.part.1
	.p2align 4,,10
	.p2align 3
.L176:
	addl	$1, (%r9)
	ret
	.cfi_endproc
.LFE59:
	.size	solveV3, .-solveV3
	.p2align 4,,15
	.globl	solve4
	.type	solve4, @function
solve4:
.LFB60:
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
	je	.L177
	movl	$176, %esi
	movl	$1, %edi
	movq	%r15, %rbp
	call	calloc
	leaq	8(%rax), %r12
	leaq	168(%rax), %r14
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L179:
	xorl	%eax, %eax
	xorl	%edi, %edi
.L182:
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
	jne	.L182
	testl	%edi, %edi
	je	.L183
	addl	$1, %edi
	movl	$1, %esi
	addl	$1, 4(%r13)
	movslq	%edi, %rdi
	call	calloc
	xorl	%ecx, %ecx
	movq	%rax, (%r12)
	xorl	%edx, %edx
.L185:
	cmpb	$0, 4(%rbp,%rcx)
	je	.L184
	movslq	%edx, %rsi
	addl	$1, %edx
	movb	%cl, (%rax,%rsi)
.L184:
	addq	$1, %rcx
	cmpb	$0, 4(%rbp,%rcx)
	je	.L190
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%cl, (%rax,%rdi)
.L190:
	cmpb	$0, 5(%rcx,%rbp)
	leaq	1(%rcx), %rsi
	je	.L192
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L192:
	cmpb	$0, 6(%rcx,%rbp)
	leaq	2(%rcx), %rsi
	je	.L194
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L194:
	cmpb	$0, 7(%rcx,%rbp)
	leaq	3(%rcx), %rsi
	je	.L196
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L196:
	cmpb	$0, 8(%rcx,%rbp)
	leaq	4(%rcx), %rsi
	je	.L198
	movslq	%edx, %r11
	addl	$1, %edx
	movb	%sil, (%rax,%r11)
.L198:
	cmpb	$0, 9(%rcx,%rbp)
	leaq	5(%rcx), %rsi
	je	.L200
	movslq	%edx, %rdi
	addl	$1, %edx
	movb	%sil, (%rax,%rdi)
.L200:
	cmpb	$0, 10(%rcx,%rbp)
	leaq	6(%rcx), %rsi
	je	.L202
	movslq	%edx, %r8
	addl	$1, %edx
	movb	%sil, (%rax,%r8)
.L202:
	cmpb	$0, 11(%rcx,%rbp)
	leaq	7(%rcx), %rsi
	je	.L204
	movslq	%edx, %r9
	addl	$1, %edx
	movb	%sil, (%rax,%r9)
.L204:
	cmpb	$0, 12(%rcx,%rbp)
	leaq	8(%rcx), %rsi
	je	.L206
	movslq	%edx, %r10
	addl	$1, %edx
	movb	%sil, (%rax,%r10)
.L206:
	addq	$9, %rcx
	cmpq	$20, %rcx
	jne	.L185
	.p2align 4,,10
	.p2align 3
.L183:
	addq	$8, %r12
	addq	$21, %rbp
	cmpq	%r14, %r12
	jne	.L179
	testq	%r13, %r13
	je	.L177
	leaq	112(%rsp), %rsi
	leaq	144(%rsp), %r12
	leaq	32(%rsp), %rbp
	movl	$1, %r9d
	movl	$20, %r8d
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	$solve4._omp_fn.0, %edi
	movl	$0, 32(%rsp)
	movq	%r15, 112(%rsp)
	movq	%r13, 120(%rsp)
	movq	%r12, 128(%rsp)
	movq	%rbp, 136(%rsp)
	movq	$1, (%rsp)
	call	GOMP_parallel_loop_dynamic_start
	leaq	112(%rsp), %rdi
	call	solve4._omp_fn.0
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
.L177:
	movq	200(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L218
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
.L218:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE60:
	.size	solve4, .-solve4
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
