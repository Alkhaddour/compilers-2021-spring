	.global	main
	.data
global_n:	.int	0
global_s:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
# READ
	call	Lread
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# CONST 1
	movl	$1,	%ebx
# ST s
	movl	%ebx,	global_s
# LABEL L0
L0:
# LD s
	movl	global_s,	%ebx
# LD n
	movl	global_n,	%ecx
# BINOP *
	movl	%ecx,	%eax
	imull	%ebx,	%eax
	movl	%eax,	%ebx
# ST s
	movl	%ebx,	global_s
# LD n
	movl	global_n,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP -
	movl	%ecx,	%eax
	subl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# LD n
	movl	global_n,	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP !=
	movl	%ecx,	%eax
	cmpl	%eax,	%ebx
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ebx
# CJMP nz, L0
	cmpl	$0,	%ebx
	jnz	L0
# LD s
	movl	global_s,	%ebx
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret