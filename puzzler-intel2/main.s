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
	# basic block 2
	pushq	%rbp	# 96	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	# 97	*pushdi2_rex64/1	[length = 1]
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx	# 3	*movdi_internal_rex64/2	[length = 3]
	subq	$24, %rsp	# 98	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_def_cfa_offset 48
	cmpl	$2, %edi	# 8	*cmpsi_1/1	[length = 3]
	movl	$0, (%rsp)	# 7	*movsi_internal/2	[length = 7]
	jle	.L10	# 9	*jcc_1	[length = 6]
	# basic block 3
	movq	8(%rsi), %rdi	# 18	*movdi_internal_rex64/2	[length = 4]
	movl	$10, %edx	# 19	*movsi_internal/1	[length = 5]
	xorl	%esi, %esi	# 109	*movdi_xor	[length = 2]
	call	strtol	# 22	*call_value_0_rex64	[length = 5]
	movq	%rbx, %rdi	# 24	*movdi_internal_rex64/2	[length = 3]
	movq	%rax, %rbp	# 23	*movdi_internal_rex64/2	[length = 3]
	call	edges2Matrix	# 25	*call_value_0_rex64	[length = 5]
	testq	%rax, %rax	# 27	*cmpdi_ccno_1/1	[length = 3]
	je	.L11	# 28	*jcc_1	[length = 2]
	# basic block 4
	cmpl	$3, %ebp	# 37	*cmpsi_1/1	[length = 3]
	je	.L5	# 38	*jcc_1	[length = 2]
	# basic block 5
	cmpl	$4, %ebp	# 39	*cmpsi_1/1	[length = 3]
	.p2align 4,,2
	je	.L12	# 40	*jcc_1	[length = 2]
	# basic block 6
	movl	$.LC2, %esi	# 61	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 62	*movsi_internal/1	[length = 5]
	xorl	%eax, %eax	# 108	*movdi_xor	[length = 2]
	call	err	# 64	*call_0	[length = 5]
.L5:
	# basic block 7
	movq	%rsp, %rsi	# 46	*movdi_internal_rex64/2	[length = 3]
	movq	%rax, %rdi	# 47	*movdi_internal_rex64/2	[length = 3]
	call	solve3	# 48	*call_0	[length = 5]
.L7:
	# basic block 8
	movl	(%rsp), %edx	# 69	*movsi_internal/1	[length = 3]
	movl	$.LC3, %esi	# 70	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 71	*movsi_internal/1	[length = 5]
	xorl	%eax, %eax	# 106	*movdi_xor	[length = 2]
	call	__printf_chk	# 73	*call_value_0_rex64	[length = 5]
	addq	$24, %rsp	# 101	pro_epilogue_adjust_stack_di_add/1	[length = 4]
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax	# 107	*movdi_xor	[length = 2]
	popq	%rbx	# 102	*popdi1	[length = 1]
	.cfi_def_cfa_offset 16
	popq	%rbp	# 103	*popdi1	[length = 1]
	.cfi_def_cfa_offset 8
	ret	# 104	return_internal	[length = 1]
.L12:
	# basic block 9
	.cfi_restore_state
	movq	%rsp, %rsi	# 54	*movdi_internal_rex64/2	[length = 3]
	movq	%rax, %rdi	# 55	*movdi_internal_rex64/2	[length = 3]
	call	solve4	# 56	*call_0	[length = 5]
	jmp	.L7	# 119	jump	[length = 2]
.L11:
	# basic block 10
	movl	$.LC1, %esi	# 30	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 31	*movsi_internal/1	[length = 5]
	call	err	# 33	*call_0	[length = 5]
.L10:
	# basic block 11
	movl	$.LC0, %esi	# 11	*movdi_internal_rex64/1	[length = 5]
	movl	$1, %edi	# 12	*movsi_internal/1	[length = 5]
	xorl	%eax, %eax	# 110	*movdi_xor	[length = 2]
	call	err	# 14	*call_0	[length = 5]
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
