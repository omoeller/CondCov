# Assembler from arm-none-eabi-gcc (Fedora 12.4.0-1.el8) 12.4.0

This is the `minicond.s` gcc output for comparison.

## NO coverage flags : 29 Lines
```
	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"minicond.c"
	.text
	.align	2
	.global	minicond
	.syntax unified
	.arm
	.type	minicond, %function
minicond:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	ble	.L2
	mov	r3, #17
	b	.L3
.L2:
	mov	r3, #4
.L3:
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	minicond, .-minicond
	.ident	"GCC: (Fedora 12.4.0-1.el8) 12.4.0"
```

## --coverage : 154 Lines
```
	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"minicond.c"
	.text
	.align	2
	.global	minicond
	.syntax unified
	.arm
	.type	minicond, %function
minicond:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, fp}
	add	fp, sp, #16
	sub	sp, sp, #20
	str	r0, [fp, #-32]
	ldr	r3, .L5
	ldmia	r3, {r2-r3}
	adds	r6, r2, #1
	adc	r7, r3, #0
	ldr	r3, .L5
	stm	r3, {r6-r7}
	ldr	r3, [fp, #-32]
	cmp	r3, #1
	ble	.L2
	ldr	r3, .L5
	add	r3, r3, #8
	ldmia	r3, {r2-r3}
	adds	r4, r2, #1
	adc	r5, r3, #0
	ldr	r3, .L5
	str	r4, [r3, #8]
	str	r5, [r3, #12]
	mov	r3, #17
	b	.L3
.L2:
	mov	r3, #4
.L3:
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, fp}
	bx	lr
.L6:
	.align	2
.L5:
	.word	__gcov0.minicond
	.size	minicond, .-minicond
	.bss
	.align	3
__gcov0.minicond:
	.space	16
	.size	__gcov0.minicond, 16
	.data
	.align	2
	.type	__gcov_.minicond, %object
	.size	__gcov_.minicond, 24
__gcov_.minicond:
	.word	.LPBX0
	.word	401291011
	.word	2108729006
	.word	-350120682
	.word	2
	.word	__gcov0.minicond
	.section	.rodata
	.align	2
.LC0:
	.ascii	"/<Path>/CondCov/minicon"
	.ascii	"d.gcda\000"
	.data
	.align	2
	.type	.LPBX0, %object
	.size	.LPBX0, 60
.LPBX0:
	.word	1110586410
	.word	0
	.word	-1123374333
	.word	880274154
	.word	.LC0
	.word	__gcov_merge_add
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	.LPBX1
	.align	2
	.type	.LPBX1, %object
	.size	.LPBX1, 4
.LPBX1:
	.word	__gcov_.minicond
	.text
	.align	2
	.syntax unified
	.arm
	.type	_sub_I_00100_0, %function
_sub_I_00100_0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r0, .L8
	bl	__gcov_init
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LPBX0
	.size	_sub_I_00100_0, .-_sub_I_00100_0
	.section	.init_array.00100,"aw"
	.align	2
	.word	_sub_I_00100_0(target1)
	.text
	.align	2
	.syntax unified
	.arm
	.type	_sub_D_00100_1, %function
_sub_D_00100_1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	__gcov_exit
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	_sub_D_00100_1, .-_sub_D_00100_1
	.section	.fini_array.00100,"aw"
	.align	2
	.word	_sub_D_00100_1(target1)
	.ident	"GCC: (Fedora 12.4.0-1.el8) 12.4.0"
```

## --coverage -fcondition-coverage : NA
**NOT SUPPORTED:**
```
arm-none-eabi-gcc: error: unrecognized command-line option '-fcondition-coverage'; did you mean '-fsanitize-coverage='?
```
