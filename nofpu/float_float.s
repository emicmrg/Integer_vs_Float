	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.global	__aeabi_fadd
	.global	__aeabi_fsub
	.global	__aeabi_fmul
	.global	__aeabi_fdiv
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	mov	r3, #1065353216
	str	r3, [fp, #-8]	@ float
	mov	r3, #1073741824
	str	r3, [fp, #-12]	@ float
	mov	r3, #0
	str	r3, [fp, #-16]	@ float
	mov	r3, #0
	str	r3, [fp, #-20]	@ float
	mov	r3, #0
	str	r3, [fp, #-24]	@ float
	mov	r3, #0
	str	r3, [fp, #-28]	@ float
	ldr	r1, [fp, #-12]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-16]	@ float
	ldr	r1, [fp, #-12]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-20]	@ float
	ldr	r1, [fp, #-12]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	str	r3, [fp, #-24]	@ float
	ldr	r1, [fp, #-12]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fdiv
	mov	r3, r0
	str	r3, [fp, #-28]	@ float
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	main, .-main
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
