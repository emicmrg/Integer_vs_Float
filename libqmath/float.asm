	.file	"main-float.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L3:
	movss	-20(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$1, -16(%rbp)
.L2:
	cmpl	$99, -16(%rbp)
	jle	.L3
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	movss	-20(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$1, -12(%rbp)
.L4:
	cmpl	$99, -12(%rbp)
	jle	.L5
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1084919644
	.align 4
.LC1:
	.long	1087016796
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
