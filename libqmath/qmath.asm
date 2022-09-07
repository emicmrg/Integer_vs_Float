	.file	"main-qmath.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$89422561, -16(%rbp)
	movq	$106199777, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -24(%rbp)
	addl	$1, -32(%rbp)
.L2:
	cmpl	$99, -32(%rbp)
	jle	.L3
	movl	$0, -28(%rbp)
	jmp	.L4
.L5:
	movq	-24(%rbp), %rax
	imulq	-8(%rbp), %rax
	sarq	$24, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$24, %rax
	cqto
	idivq	-8(%rbp)
	movq	%rax, -24(%rbp)
	addl	$1, -28(%rbp)
.L4:
	cmpl	$99, -28(%rbp)
	jle	.L5
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
