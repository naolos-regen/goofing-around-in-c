	.file	"main.c"
# GNU C17 (GCC) version 14.2.1 20240910 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 14.2.1 20240910, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# main.c:3: 	short int x = 10;	
	movw	$10, -2(%rbp)	#, x
# main.c:7: 	return (0);		since nothing happens when we use +x
	movl	$0, %eax	#, _3	he doesn't do any operator on it 
# main.c:8: }				this would happen only in case we use
				#	- operator twice to flip the minus to plus
				#	or use ~ NOT operator (see not_O0.asm)
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 14.2.1 20240910"
	.section	.note.GNU-stack,"",@progbits
