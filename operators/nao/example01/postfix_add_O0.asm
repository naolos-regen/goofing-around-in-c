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
# main.c:3: 	unsigned short int  x = 1;
	movw	$1, -2(%rbp)	#, x
# main.c:5: 	x++;				Keep in mind it has 0 optimalization
	movzwl	-2(%rbp), %eax	# x, x.0_1	As in Charlies video C 24 : i++ vs ++i 
	addl	$1, %eax	#, tmp101	It first creates a "copy" and than it adds 
	movw	%ax, -2(%rbp)	# tmp101, x	later which makes sense
# main.c:7: 	return (0);
	movl	$0, %eax	#, _4
# main.c:8: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 14.2.1 20240910"
	.section	.note.GNU-stack,"",@progbits
