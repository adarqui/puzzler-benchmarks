	.file	"main.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"./puzzler {0..} <EDGES>"
.LC1:
	.string	"edges error"
.LC2:
	.string	"index doesn't exist"
.LC3:
	.string	"successes: %i\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB56:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$2, %edi
	movl	$0, (%rsp)
	jle	.L29
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	cmpl	$4000, %eax
	movl	%eax, %r12d
	movq	%rbx, %rdi
	je	.L26
	cmpl	$40, %eax
	jne	.L3
.L26:
	call	edges2DMatrix
	testq	%rax, %rax
	.p2align 4,,2
	je	.L27
.L5:
	cmpl	$4, %r12d
	.p2align 4,,3
	je	.L11
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	solve3
	movl	(%rsp), %edx
	.p2align 4,,10
	.p2align 3
.L24:
	movl	$.LC3, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L3:
	.cfi_restore_state
	call	edges2Matrix
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	jne	.L5
.L27:
	movl	$.LC1, %esi
	movl	$1, %edi
	call	err
.L6:
	movl	$.LC2, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
.L11:
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	solve4
	movl	(%rsp), %edx
	jmp	.L24
.L29:
	movl	$.LC0, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
