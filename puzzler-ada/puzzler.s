	.file	"puzzler.adb"
	.text
	.p2align 4,,15
	.type	puzzler__parse_args__L_3__B25b___clean.2568, @function
puzzler__parse_args__L_3__B25b___clean.2568:
.LFB6:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%r10, %rbx
	call	*system__soft_links__abort_defer(%rip)
	movq	80(%rbx), %rdi
	call	system__finalization_implementation__finalize_list
	movq	64(%rbx), %rdi
	movq	72(%rbx), %rsi
	call	system__secondary_stack__ss_release
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	system__soft_links__abort_undefer(%rip), %rax
	jmp	*%rax
	.cfi_endproc
.LFE6:
	.size	puzzler__parse_args__L_3__B25b___clean.2568, .-puzzler__parse_args__L_3__B25b___clean.2568
	.section	.rodata
.LC3:
	.ascii	" \t"
.LC4:
	.ascii	"puzzler.adb"
	.zero	1
	.align 4
.LC1:
	.long	1
	.long	2
	.align 4
.LC0:
	.long	1
	.long	11
	.align 4
.LC2:
	.long	1
	.long	4
	.text
	.p2align 4,,15
	.type	puzzler__parse_args.2267.constprop.0, @function
puzzler__parse_args.2267.constprop.0:
.LFB33:
	.cfi_startproc
	.cfi_personality 0x3,__gnat_personality_v0
	.cfi_lsda 0x3,.LLSDA33
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$1, %esi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
.LEHB0:
	subq	$4136, %rsp
.LEHE0:
	movq	%rdi, -4160(%rbp)
	leaq	-368(%rbp), %rdi
	movq	$0, -472(%rbp)
.LEHB1:
	.cfi_offset 3, -56
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	call	ada__strings__unbounded__unbounded_stringIP
.LEHE1:
.LEHB2:
	call	*system__soft_links__abort_defer(%rip)
	leaq	-368(%rbp), %rdi
	call	ada__strings__unbounded__initialize__2
	movq	-472(%rbp), %rdi
	leaq	-368(%rbp), %rsi
	movl	$1, %edx
	call	system__finalization_implementation__attach_to_final_list
.LEHE2:
	movq	%rax, -472(%rbp)
.LEHB3:
	call	system__standard_library__abort_undefer_direct
	leaq	-464(%rbp), %rdi
	movl	$1, %esi
	call	gnat__string_split__slice_setIP
.LEHE3:
.LEHB4:
	call	*system__soft_links__abort_defer(%rip)
	leaq	-464(%rbp), %rdi
	call	gnat__string_split__initialize__2
	movq	-472(%rbp), %rdi
	leaq	-464(%rbp), %rsi
	movl	$1, %edx
	call	system__finalization_implementation__attach_to_final_list
.LEHE4:
	movq	%rax, -472(%rbp)
.LEHB5:
	call	system__standard_library__abort_undefer_direct
.LEHE5:
	leaq	-2336(%rbp), %r14
	pxor	%xmm0, %xmm0
	xorl	%r9d, %r9d
	leaq	1764(%r14), %r10
	movq	%r14, %rsi
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%rsi, %rdx
	andl	$15, %edx
	shrq	$2, %rdx
	negl	%edx
	movq	%rdx, %r12
	andl	$3, %r12d
	andl	$3, %edx
	je	.L32
	xorl	%eax, %eax
	movl	$21, %ecx
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%eax, %edi
.LEHB6:
	movl	$0, (%rsi,%rax,4)
	addq	$1, %rax
	subl	$1, %ecx
	cmpl	%eax, %edx
	ja	.L4
.L3:
	movl	$21, %ebx
	subl	%edx, %ebx
	movl	%ebx, %r8d
	shrl	$2, %r8d
	leal	0(,%r8,4), %r11d
	testl	%r11d, %r11d
	je	.L5
	leaq	(%r12,%r9), %rax
	leaq	(%r14,%rax,4), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L6:
	addl	$1, %eax
	movdqa	%xmm0, (%rdx)
	addq	$16, %rdx
	cmpl	%r8d, %eax
	jb	.L6
	addl	%r11d, %edi
	subl	%r11d, %ecx
	cmpl	%r11d, %ebx
	je	.L7
.L5:
	movslq	%edi, %rdi
	subl	$1, %ecx
	xorl	%eax, %eax
	addq	%r9, %rdi
	leaq	4(,%rcx,4), %rcx
	leaq	(%r14,%rdi,4), %rdx
	.p2align 4,,10
	.p2align 3
.L8:
	movl	$0, 4(%rdx,%rax)
.LEHE6:
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L8
.L7:
	addq	$84, %rsi
	addq	$21, %r9
	cmpq	%r10, %rsi
	jne	.L9
.LEHB7:
	call	ada__command_line__argument_count
	testl	%eax, %eax
	movl	%eax, -4144(%rbp)
	jle	.L33
	leaq	-128(%rbp), %rbx
	leaq	-80(%rbp), %r13
	movl	$0, -4132(%rbp)
	.p2align 4,,10
	.p2align 3
.L20:
	call	system__secondary_stack__ss_mark
.LEHE7:
	addl	$1, -4132(%rbp)
	movq	%rax, -496(%rbp)
	movl	-4132(%rbp), %edi
	movq	%rdx, -488(%rbp)
	movq	$0, -480(%rbp)
.LEHB8:
	call	ada__command_line__argument
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rax, -4128(%rbp)
	movq	%rdx, -4120(%rbp)
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	call	ada__strings__unbounded__to_unbounded_string
	movq	-480(%rbp), %rdi
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rax, %r12
	call	system__finalization_implementation__deep_tag_attach
.LEHE8:
	movq	%rax, -480(%rbp)
.LEHB9:
	call	*system__soft_links__abort_defer(%rip)
	leaq	-368(%rbp), %rdi
	movq	%r12, %rsi
	call	ada__strings__unbounded___assign__2
.LEHE9:
.LEHB10:
	call	system__standard_library__abort_undefer_direct
.LEHE10:
	leaq	-560(%rbp), %r10
.LEHB11:
	call	puzzler__parse_args__L_3__B25b___clean.2568
	call	system__secondary_stack__ss_mark
.LEHE11:
	leaq	-368(%rbp), %rdi
	movq	%rax, -512(%rbp)
	movq	%rdx, -504(%rbp)
	movq	$.LC3, -160(%rbp)
	movq	$.LC1, -152(%rbp)
.LEHB12:
	call	ada__strings__unbounded__to_string
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %r8
	leaq	-464(%rbp), %rdi
	movl	$1, %r9d
	movq	%rax, %rsi
	movq	%rax, -4128(%rbp)
	movq	%rdx, -4120(%rbp)
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	call	gnat__string_split__create
.LEHE12:
	movq	-512(%rbp), %rdi
	movq	-504(%rbp), %rsi
.LEHB13:
	call	system__secondary_stack__ss_release
	leaq	-464(%rbp), %rdi
	call	gnat__string_split__slice_count
	testl	%eax, %eax
	movl	%eax, %r15d
	jle	.L11
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L13:
	call	system__secondary_stack__ss_mark
.LEHE13:
	addl	$1, %r12d
	leaq	-464(%rbp), %rdi
	movq	%rax, -528(%rbp)
	movl	%r12d, %esi
	movq	%rdx, -520(%rbp)
.LEHB14:
	call	gnat__string_split__slice
	movq	%rax, -4128(%rbp)
	movq	%rdx, -4120(%rbp)
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movl	(%rdx), %eax
	movl	4(%rdx), %edx
	cmpl	%edx, %eax
	jg	.L12
	testl	%eax, %eax
	jle	.L55
.L12:
	movq	%rbx, %rsi
	movl	$.LC0, %edx
	movl	%r12d, %edi
	movq	%rbx, -208(%rbp)
	movq	$.LC0, -200(%rbp)
	call	system__img_int__image_integer
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbx, -224(%rbp)
	movl	$1, -80(%rbp)
	movl	%eax, -76(%rbp)
	movq	%r13, -216(%rbp)
	call	ada__text_io__put_line__2
.LEHE14:
	movq	-528(%rbp), %rdi
	movq	-520(%rbp), %rsi
.LEHB15:
	call	system__secondary_stack__ss_release
	cmpl	%r12d, %r15d
	jne	.L13
.L11:
	call	system__secondary_stack__ss_mark
.LEHE15:
	leaq	-464(%rbp), %rdi
	movl	$1, %esi
	movq	%rax, -544(%rbp)
	movq	%rdx, -536(%rbp)
.LEHB16:
	call	gnat__string_split__slice
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rax, -4128(%rbp)
	movq	%rdx, -4120(%rbp)
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	call	system__val_int__value_integer
.LEHE16:
	leal	128(%rax), %edx
	cmpl	$255, %edx
	ja	.L56
	movb	%al, -4137(%rbp)
	subl	$1, %eax
	cmpb	$19, %al
	ja	.L57
	movq	-544(%rbp), %rdi
	movq	-536(%rbp), %rsi
.LEHB17:
	call	system__secondary_stack__ss_release
	call	system__secondary_stack__ss_mark
.LEHE17:
	leaq	-464(%rbp), %rdi
	movl	$2, %esi
	movq	%rax, -560(%rbp)
	movq	%rdx, -552(%rbp)
.LEHB18:
	call	gnat__string_split__slice
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rax, -4128(%rbp)
	movq	%rdx, -4120(%rbp)
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	call	system__val_int__value_integer
.LEHE18:
	leal	128(%rax), %edx
	cmpl	$255, %edx
	ja	.L58
	movb	%al, -4138(%rbp)
	subl	$1, %eax
	cmpb	$19, %al
	ja	.L59
	movq	-560(%rbp), %rdi
	movq	-552(%rbp), %rsi
.LEHB19:
	call	system__secondary_stack__ss_release
.LEHE19:
	movzbl	-4137(%rbp), %edi
	movq	%rbx, %rsi
	movl	$.LC2, %edx
	movq	%rsp, -4152(%rbp)
	movq	%rbx, -272(%rbp)
	movq	$.LC2, -264(%rbp)
.LEHB20:
	call	system__img_int__image_integer
	movzbl	-4138(%rbp), %edi
	movl	%eax, %r12d
	leaq	-64(%rbp), %rax
	movl	$.LC2, %edx
	movq	$.LC2, -280(%rbp)
	movq	%rax, %rsi
	movq	%rax, -288(%rbp)
	call	system__img_int__image_integer
	xorl	%edx, %edx
	testl	%r12d, %r12d
	cmovs	%edx, %r12d
	testl	%eax, %eax
	leal	8(%r12), %ecx
	cmovs	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, -4136(%rbp)
	cmovs	%edx, %eax
	cltq
	addq	$30, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	15(%rsp), %r15
	andq	$-16, %r15
	movw	$15704, (%r15)
	movb	$32, 2(%r15)
	leal	3(%r12), %eax
	movb	$3, %dl
	leaq	3(%r15), %rdi
	movq	%rbx, %rsi
	movl	%ecx, -4168(%rbp)
	cmpl	$3, %eax
	cmovl	%edx, %eax
	cltq
	leaq	-3(%rax), %rdx
	call	memcpy
	leal	4(%r12), %eax
	cltq
	movl	$1029251116, -1(%r15,%rax)
	movl	-4168(%rbp), %ecx
	movb	$32, 3(%r15,%rax)
	xorl	%edx, %edx
	cmpl	-4136(%rbp), %ecx
	leal	9(%r12), %eax
	cltq
	jge	.L19
	movslq	-4136(%rbp), %rcx
	movl	$1, %edx
	subq	%rax, %rdx
	addq	%rcx, %rdx
.L19:
	leaq	-1(%r15,%rax), %rdi
	leaq	-64(%rbp), %rsi
	call	memcpy
	movl	-4136(%rbp), %eax
	leaq	-96(%rbp), %rsi
	movq	%r15, %rdi
	movq	%r15, -304(%rbp)
	movl	$1, -96(%rbp)
	movq	%rsi, -296(%rbp)
	movl	%eax, -92(%rbp)
	call	ada__text_io__put_line__2
.LEHE20:
.LEHB21:
.LEHE21:
	movzbl	-4137(%rbp), %eax
	movzbl	-4138(%rbp), %edx
	movq	%rbx, %rsi
	movq	-4152(%rbp), %rsp
	movq	%rbx, -320(%rbp)
	movq	$.LC0, -312(%rbp)
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rax,%rcx,4), %rax
	addq	%rdx, %rax
	movl	-2336(%rbp,%rax,4), %edi
	leal	1(%rdi), %edx
	movl	%edx, -2336(%rbp,%rax,4)
	movl	$.LC0, %edx
.LEHB22:
	call	system__img_int__image_integer
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%edx, %r15d
	cmovns	%eax, %r15d
	movl	%edx, %eax
	addl	$3, %r15d
	cmovns	%r15d, %eax
	cltq
	addq	$30, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	15(%rsp), %r12
	andq	$-16, %r12
	movw	$15706, (%r12)
	movb	$32, 2(%r12)
	cmpl	$3, %r15d
	movl	$3, %eax
	leaq	3(%r12), %rdi
	cmovge	%r15d, %eax
	movq	%rbx, %rsi
	cltq
	leaq	-3(%rax), %rdx
	call	memcpy
	leaq	-112(%rbp), %rsi
	movq	%r12, %rdi
	movq	%r12, -336(%rbp)
	movl	$1, -112(%rbp)
	movl	%r15d, -108(%rbp)
	movq	%rsi, -328(%rbp)
	call	ada__text_io__put_line__2
.LEHE22:
.LEHB23:
	movl	-4132(%rbp), %r12d
	cmpl	%r12d, -4144(%rbp)
	movq	-4152(%rbp), %rsp
	jne	.L20
.L10:
	leaq	-4112(%rbp), %rdi
	movq	%r14, %rsi
	movl	$220, %ecx
	rep movsq
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	call	*system__soft_links__abort_defer(%rip)
	movq	-472(%rbp), %rdi
	call	system__finalization_implementation__finalize_list
	call	*system__soft_links__abort_undefer(%rip)
	leaq	-4112(%rbp), %rsi
	movq	-4160(%rbp), %rdi
	movl	$220, %ecx
	rep movsq
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movq	-4160(%rbp), %rax
	movl	%r12d, 1764(%rax)
	leaq	-40(%rbp), %rsp
.LEHE23:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L33:
	.cfi_restore_state
	xorl	%r12d, %r12d
	jmp	.L10
.L41:
	movq	%rax, %rbx
.L25:
	leaq	-560(%rbp), %r10
.LEHB24:
	call	puzzler__parse_args__L_3__B25b___clean.2568
.LEHE24:
.L22:
.LEHB25:
	call	*system__soft_links__abort_defer(%rip)
	movq	-472(%rbp), %rdi
	call	system__finalization_implementation__finalize_list
	call	*system__soft_links__abort_undefer(%rip)
	movq	%rbx, %rdi
	call	_Unwind_Resume
.LEHE25:
.L32:
	movl	$21, %ecx
	movl	$-1, %edi
	jmp	.L3
.L43:
.L53:
	movq	%rax, %rbx
.LEHB26:
	call	system__standard_library__abort_undefer_direct
.LEHE26:
	jmp	.L22
.L44:
.LEHB27:
	.p2align 4,,5
	jmp	.L53
.L34:
	movq	%rax, %rbx
	.p2align 4,,8
	jmp	.L22
.L35:
.L51:
.LEHE27:
	movq	%rax, %rbx
	movq	-4152(%rbp), %rsp
	jmp	.L22
.L36:
	jmp	.L51
.L59:
	movl	$91, %esi
	movl	$.LC4, %edi
.LEHB28:
	call	__gnat_rcheck_12
.L58:
	movl	$91, %esi
	movl	$.LC4, %edi
	call	__gnat_rcheck_12
.LEHE28:
.L37:
	movq	-560(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	%rax, %rbx
.LEHB29:
	call	system__secondary_stack__ss_release
.LEHE29:
	jmp	.L22
.L57:
	movl	$90, %esi
	movl	$.LC4, %edi
.LEHB30:
	call	__gnat_rcheck_12
.L56:
	movl	$90, %esi
	movl	$.LC4, %edi
	call	__gnat_rcheck_12
.LEHE30:
.L38:
	movq	-544(%rbp), %rdi
	movq	-536(%rbp), %rsi
	movq	%rax, %rbx
.LEHB31:
	call	system__secondary_stack__ss_release
.LEHE31:
	jmp	.L22
.L55:
	movl	$84, %esi
	movl	$.LC4, %edi
.LEHB32:
	call	__gnat_rcheck_12
.LEHE32:
.L39:
	movq	-528(%rbp), %rdi
	movq	-520(%rbp), %rsi
	movq	%rax, %rbx
.LEHB33:
	call	system__secondary_stack__ss_release
	jmp	.L22
.L40:
	movq	-512(%rbp), %rdi
	movq	-504(%rbp), %rsi
	movq	%rax, %rbx
	call	system__secondary_stack__ss_release
.LEHE33:
	jmp	.L22
.L42:
	movq	%rax, %rbx
.LEHB34:
	call	system__standard_library__abort_undefer_direct
.LEHE34:
.LEHB35:
	.p2align 4,,5
.LEHE35:
	jmp	.L25
	.cfi_endproc
.LFE33:
	.globl	__gnat_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA33:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE33-.LLSDACSB33
.LLSDACSB33:
	.uleb128 .LEHB0-.LFB33
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB33
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB2-.LFB33
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L44-.LFB33
	.uleb128 0
	.uleb128 .LEHB3-.LFB33
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB4-.LFB33
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L43-.LFB33
	.uleb128 0
	.uleb128 .LEHB5-.LFB33
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB6-.LFB33
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB33
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB8-.LFB33
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L41-.LFB33
	.uleb128 0
	.uleb128 .LEHB9-.LFB33
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L42-.LFB33
	.uleb128 0
	.uleb128 .LEHB10-.LFB33
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L41-.LFB33
	.uleb128 0
	.uleb128 .LEHB11-.LFB33
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB12-.LFB33
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L40-.LFB33
	.uleb128 0
	.uleb128 .LEHB13-.LFB33
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB14-.LFB33
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L39-.LFB33
	.uleb128 0
	.uleb128 .LEHB15-.LFB33
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB16-.LFB33
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L38-.LFB33
	.uleb128 0
	.uleb128 .LEHB17-.LFB33
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB18-.LFB33
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L37-.LFB33
	.uleb128 0
	.uleb128 .LEHB19-.LFB33
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB20-.LFB33
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L36-.LFB33
	.uleb128 0
	.uleb128 .LEHB21-.LFB33
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB33
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L35-.LFB33
	.uleb128 0
	.uleb128 .LEHB23-.LFB33
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB33
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB25-.LFB33
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB33
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB27-.LFB33
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB33
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L37-.LFB33
	.uleb128 0
	.uleb128 .LEHB29-.LFB33
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB30-.LFB33
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L38-.LFB33
	.uleb128 0
	.uleb128 .LEHB31-.LFB33
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB32-.LFB33
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L39-.LFB33
	.uleb128 0
	.uleb128 .LEHB33-.LFB33
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L34-.LFB33
	.uleb128 0
	.uleb128 .LEHB34-.LFB33
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L41-.LFB33
	.uleb128 0
	.uleb128 .LEHB35-.LFB33
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE33:
	.text
	.size	puzzler__parse_args.2267.constprop.0, .-puzzler__parse_args.2267.constprop.0
	.section	.rodata
.LC5:
	.ascii	"Hi"
	.text
	.p2align 4,,15
	.globl	_ada_puzzler
	.type	_ada_puzzler, @function
_ada_puzzler:
.LFB1:
	.cfi_startproc
	.cfi_personality 0x3,__gnat_personality_v0
	.cfi_lsda 0x3,.LLSDA1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	leaq	-1936(%rbp), %r12
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	pushq	%rbx
	leaq	-3712(%rbp), %rbx
	.cfi_offset 3, -56
.LEHB36:
	subq	$3672, %rsp
	movq	%rbx, %rdi
	call	puzzler__parse_args.2267.constprop.0
.LEHE36:
	movq	%rbx, %rsi
	movl	$220, %ecx
	movq	%r12, %rdi
	rep movsq
	movl	-1948(%rbp), %eax
	leaq	-80(%rbp), %rbx
	movq	%rsp, %r13
	movq	$.LC0, -152(%rbp)
	movq	%rbx, -160(%rbp)
	movl	(%rsi), %edx
	movq	%rbx, %rsi
	movl	%edx, (%rdi)
	movl	$.LC0, %edx
	movl	%eax, %edi
.LEHB37:
	call	system__img_int__image_integer
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%edx, %r15d
	cmovns	%eax, %r15d
	movl	%edx, %eax
	addl	$5, %r15d
	cmovns	%r15d, %eax
	cltq
	addq	$30, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	15(%rsp), %r14
	andq	$-16, %r14
	movl	$980313420, (%r14)
	movb	$32, 4(%r14)
	cmpl	$5, %r15d
	movl	$5, %eax
	leaq	5(%r14), %rdi
	cmovge	%r15d, %eax
	movq	%rbx, %rsi
	cltq
	leaq	-5(%rax), %rdx
	call	memcpy
	leaq	-64(%rbp), %rsi
	movq	%r14, %rdi
	movq	%r14, -144(%rbp)
	movl	$1, -64(%rbp)
	movl	%r15d, -60(%rbp)
	movq	%rsi, -136(%rbp)
	call	ada__text_io__put_line__2
.LEHE37:
.LEHB38:
	leaq	84(%r12), %r14
	addq	$1764, %r12
	movq	%r13, %rsp
	.p2align 4,,10
	.p2align 3
.L63:
	movl	$.LC5, %edi
	movl	$.LC1, %esi
	xorl	%ebx, %ebx
	movq	$.LC5, -96(%rbp)
	movq	$.LC1, -88(%rbp)
	call	ada__text_io__put__4
	.p2align 4,,10
	.p2align 3
.L62:
	movl	$.LC5, %edi
	movl	$.LC1, %esi
	movq	$.LC5, -112(%rbp)
	movq	$.LC1, -104(%rbp)
	call	ada__text_io__put__4
	movl	4(%r14,%rbx), %r13d
	testl	%r13d, %r13d
	jle	.L61
	movl	$.LC5, %edi
	movl	$.LC1, %esi
	subl	$1, %r13d
	movq	$.LC5, -128(%rbp)
	movq	$.LC1, -120(%rbp)
	call	ada__text_io__put__4
	movl	%r13d, 4(%r14,%rbx)
.L61:
	addq	$4, %rbx
	cmpq	$80, %rbx
	jne	.L62
	addq	$84, %r14
	cmpq	%r12, %r14
	jne	.L63
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L65:
	.cfi_restore_state
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE38:
	.cfi_endproc
.LFE1:
	.section	.gcc_except_table
.LLSDA1:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1-.LLSDACSB1
.LLSDACSB1:
	.uleb128 .LEHB36-.LFB1
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB1
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L65-.LFB1
	.uleb128 0
	.uleb128 .LEHB38-.LFB1
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE1:
	.text
	.size	_ada_puzzler, .-_ada_puzzler
	.ident	"GCC: (Ubuntu 4.6.3-1ubuntu4) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
