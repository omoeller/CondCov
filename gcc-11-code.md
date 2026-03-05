# Assembler from gcc (GCC) 11.3.0 (build from scratch on Centos-7)

This is the `minicond.s` gcc output for comparison.

## NO coverage flags : 34 Lines
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
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
```

## --coverage : 123 Lines
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
	.string	"/home/build/Workspace/CondCov/minicond.gcda"
	.data
	.align 32
	.type	.LPBX0, @object
	.size	.LPBX0, 112
.LPBX0:
	.long	1110520618
	.zero	4
	.quad	0
	.long	-1125002463
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
	.long	1
	.zero	4
	.quad	.LPBX1
	.align 8
	.type	.LPBX1, @object
	.size	.LPBX1, 8
.LPBX1:
	.quad	__gcov_.minicond
	.text
	.type	_sub_I_00100_0, @function
_sub_I_00100_0:
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
	.size	_sub_I_00100_0, .-_sub_I_00100_0
	.section	.init_array.00100,"aw"
	.align 8
	.quad	_sub_I_00100_0
	.text
	.type	_sub_D_00100_1, @function
_sub_D_00100_1:
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
	.size	_sub_D_00100_1, .-_sub_D_00100_1
	.section	.fini_array.00100,"aw"
	.align 8
	.quad	_sub_D_00100_1
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
```

## --coverage -fcondition-coverage : NA
**NOT SUPPORTED:**
```
gcc: error: unrecognized command-line option ‘-fcondition-coverage’; did you mean ‘-fsanitize-coverage=’?
```

