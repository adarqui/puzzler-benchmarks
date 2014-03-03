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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$2, %edi
	movl	$0, (%rsp)
	jle	.L10
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rbx, %rdi
	movq	%rax, %rbp
	call	edges2Matrix
	testq	%rax, %rax
	je	.L11
	cmpl	$3, %ebp
	je	.L5
	cmpl	$4, %ebp
	.p2align 4,,2
	je	.L12
	movl	$.LC2, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
.L5:
	movq	%rsp, %rsi
	movq	%rax, %rdi
	call	solve3
.L7:
	movl	(%rsp), %edx
	movl	$.LC3, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore_state
	movq	%rsp, %rsi
	movq	%rax, %rdi
	call	solve4
	jmp	.L7
.L11:
	movl	$.LC1, %esi
	movl	$1, %edi
	call	err
.L10:
	movl	$.LC0, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	err
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
