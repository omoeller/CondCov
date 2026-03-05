# Assembler from gcc (GCC) 8.5.0 20210514 (Red Hat 8.5.0-28)

This is the `minicond.s` gcc output for comparison.

## NO coverage flags : 30 Lines
```
	.file	"minicond.c"
	.text
	.globl	minicond
	.type	minicond, @function
minicond:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jle	.L2
	movl	$17, %eax
	jmp	.L3
.L2:
	movl	$4, %eax
.L3:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	minicond, .-minicond
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-28)"
	.section	.note.GNU-stack,"",@progbits
```

## --coverage : 124 Lines
```
	.file	"minicond.c"
	.text
	.globl	minicond
	.type	minicond, @function
minicond:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	__gcov0.minicond(%rip), %rax
	addq	$1, %rax
	movq	%rax, __gcov0.minicond(%rip)
	cmpl	$1, -20(%rbp)
	jle	.L2
	movq	__gcov0.minicond+8(%rip), %rax
	addq	$1, %rax
	movq	%rax, __gcov0.minicond+8(%rip)
	movl	$17, %eax
	jmp	.L3
.L2:
	movl	$4, %eax
.L3:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	minicond, .-minicond
	.local	__gcov0.minicond
	.comm	__gcov0.minicond,16,16
	.data
	.align 32
	.type	__gcov_.minicond, @object
	.size	__gcov_.minicond, 40
__gcov_.minicond:
	.quad	.LPBX0
	.long	401291011
	.long	2108729006
	.long	-350120682
	.zero	4
	.long	2
	.zero	4
	.quad	__gcov0.minicond
	.section	.rodata
	.align 8
.LC0:
	.string	"/<Path>/CondCov/minicond.gcda"
	.data
	.align 32
	.type	.LPBX0, @object
	.size	.LPBX0, 120
.LPBX0:
	.long	1094202706
	.zero	4
	.quad	0
	.long	-1125598814
	.zero	4
	.quad	.LC0
	.quad	__gcov_merge_add
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LPBX1
	.align 8
	.type	.LPBX1, @object
	.size	.LPBX1, 8
.LPBX1:
	.quad	__gcov_.minicond
	.text
	.type	_GLOBAL__sub_I_00100_0_minicond, @function
_GLOBAL__sub_I_00100_0_minicond:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LPBX0, %edi
	call	__gcov_init
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_GLOBAL__sub_I_00100_0_minicond, .-_GLOBAL__sub_I_00100_0_minicond
	.section	.init_array.00100,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_00100_0_minicond
	.text
	.type	_GLOBAL__sub_D_00100_1_minicond, @function
_GLOBAL__sub_D_00100_1_minicond:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__gcov_exit
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_GLOBAL__sub_D_00100_1_minicond, .-_GLOBAL__sub_D_00100_1_minicond
	.section	.fini_array.00100,"aw"
	.align 8
	.quad	_GLOBAL__sub_D_00100_1_minicond
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-28)"
	.section	.note.GNU-stack,"",@progbits
```


## --coverage -fcondition-coverage : NA
**NOT SUPPORTED:** 
```
gcc: error: unrecognized command line option ‘-fcondition-coverage’; did you mean ‘-fsanitize-coverage=’?
```
