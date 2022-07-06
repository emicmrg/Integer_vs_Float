	.cpu arm7tdmi
	.eabi_attribute 28, 1
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
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
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
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-16]
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-20]
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [fp, #-24]
	vldr.32	s13, [fp, #-8]
	vldr.32	s14, [fp, #-12]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-28]
	mov	r3, #0
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	main, .-main
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
