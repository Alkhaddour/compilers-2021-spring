	.global	main
	.data
global_x0:	.int	0
global_x1:	.int	0
global_y:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
# READ
	call	Lread
	movl	%eax,	%ebx
# ST x0
	movl	%ebx,	global_x0
# READ
	call	Lread
	movl	%eax,	%ebx
# ST x1
	movl	%ebx,	global_x1
# CONST 22
	movl	$22,	%ebx
# CONST 23
	movl	$23,	%ecx
# BINOP +
	movl	%ecx,	%eax
	addl	%eax,	%ebx
# CONST 29
	movl	$29,	%ecx
# BINOP +
	movl	%ecx,	%eax
	addl	%eax,	%ebx
# CONST 40
	movl	$40,	%ecx
# BINOP +
	movl	%ecx,	%eax
	addl	%eax,	%ebx
# CONST 41
	movl	$41,	%ecx
# BINOP +
	movl	%ecx,	%eax
	addl	%eax,	%ebx
# LD x1
	movl	global_x1,	%ecx
# BINOP -
	movl	%ecx,	%eax
	subl	%eax,	%ebx
# ST y
	movl	%ebx,	global_y
# LD y
	movl	global_y,	%ebx
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret