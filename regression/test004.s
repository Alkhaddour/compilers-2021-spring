	.global	main
	.data
global_x:	.int	0
global_y:	.int	0
global_z:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
# READ
	call	Lread
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# READ
	call	Lread
	movl	%eax,	%ebx
# ST y
	movl	%ebx,	global_y
# LD x
	movl	global_x,	%ebx
# LD y
	movl	global_y,	%ecx
# BINOP +
	movl	%ecx,	%eax
	addl	%eax,	%ebx
# LD x
	movl	global_x,	%ecx
# LD y
	movl	global_y,	%esi
# BINOP -
	movl	%esi,	%eax
	subl	%eax,	%ecx
# BINOP +
	movl	%ecx,	%eax
	addl	%eax,	%ebx
# LD x
	movl	global_x,	%ecx
# LD y
	movl	global_y,	%esi
# BINOP -
	movl	%esi,	%eax
	subl	%eax,	%ecx
# LD x
	movl	global_x,	%esi
# LD y
	movl	global_y,	%edi
# BINOP +
	movl	%edi,	%eax
	addl	%eax,	%esi
# BINOP -
	movl	%esi,	%eax
	subl	%eax,	%ecx
# BINOP +
	movl	%ecx,	%eax
	addl	%eax,	%ebx
# ST z
	movl	%ebx,	global_z
# LD z
	movl	global_z,	%ebx
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret